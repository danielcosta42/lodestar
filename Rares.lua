--=============================================================================
-- Rares — os raros (issue #92): um aviso quando um raro conhecido costuma nascer perto de você (uma vez por raro a
-- cada 15 min; clique guia até o ponto) e a página Raros da Central com os da zona onde você está, nível e Guiar.
-- O Lodestar não sabe se ele está vivo: diz onde costuma nascer. Dados: RareData.lua (tools/gen_rares.py, pfQuest).
--
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo e a página.
--=============================================================================
local ADDON, ns = ...
local R = {}
ns.Rares = R

R.RADIUS = 160          -- jardas
R.COOLDOWN = 900        -- s entre dois avisos do mesmo raro

-- Os raros cujo ponto mais perto está dentro do raio: list = { {id, name, pts} }, dist(x, y) -> jardas ou nil.
-- Devolve { { rare, dist, x, y } } do mais perto para o mais longe.
function R.Near(list, dist, radius)
	local out = {}
	for _, r in ipairs(list or {}) do
		local best, bx, by
		for _, p in ipairs(r.pts or {}) do
			local d = dist(p[1], p[2])
			if d and (not best or d < best) then best, bx, by = d, p[1], p[2] end
		end
		if best and best <= (radius or R.RADIUS) then out[#out + 1] = { rare = r, dist = best, x = bx, y = by } end
	end
	table.sort(out, function(a, b) return a.dist < b.dist end)
	return out
end

-- Pode avisar de novo? last = { [id] = quando }.
function R.ShouldAlert(last, id, now, cooldown)
	local t = last[id]
	if t and now - t < (cooldown or R.COOLDOWN) then return false end
	last[id] = now
	return true
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI

-- a zona onde o jogador está, na chave dos dados (inglês)
local function myZone()
	local map = C_Map.GetBestMapForUnit("player")
	local guard = 0
	while map and guard < 4 do
		for eng, id in pairs(ns.zoneUiMap or {}) do if id == map then return eng end end
		local info = C_Map.GetMapInfo(map)
		map, guard = info and info.parentMapID, guard + 1
	end
end
R.MyZone = myZone

function R:InZone(zone)
	return (ns.rareData or {})[zone or myZone() or ""] or {}
end

local function distFn(zone)
	return function(x, y) return ns.Waypoint and ns.Waypoint:DistanceTo({ goto_ = { zone = zone, x = x, y = y } }) end
end

function R:GoTo(rare, zone, x, y)
	if not (x and y) then
		local near = R.Near({ rare }, distFn(zone), math.huge)[1]
		if near then x, y = near.x, near.y else x, y = rare.pts[1][1], rare.pts[1][2] end
	end
	ns.Waypoint:SetCustom(zone, x, y, ("%s (%s)"):format(rare.name, rare.lvl))
end

local alerted = {}
ns:Every(5, function()
	if ns.db.rareAlerts == false or (IsInInstance and IsInInstance()) or (UnitOnTaxi and UnitOnTaxi("player")) then return end
	local zone = myZone()
	if not zone then return end
	local near = R.Near(R:InZone(zone), distFn(zone), R.RADIUS)
	for _, n in ipairs(near) do
		if R.ShouldAlert(alerted, n.rare.id, GetTime()) and ns.Toast then
			local rare, x, y = n.rare, n.x, n.y
			ns.Toast:Show({ title = ns.L.RARE_T, text = ("%s (%s) · %s"):format(rare.name, rare.lvl, ns.L.V3_YARDS:format(n.dist)),
				color = UI.COL.epic, hold = 8, glyph = "alvo", onClick = function() R:GoTo(rare, zone, x, y) end })
			break                              -- um aviso por vez
		end
	end
end)

--------------------------------------------------------------------------------
-- A página da Central
--------------------------------------------------------------------------------
local PAGE = { label = ns.L.RARE_PAGE, glyph = "alvo", order = 7 }

local function row(parent)
	local C = UI.COL
	local r = CreateFrame("Button", nil, parent)
	r:SetHeight(44)
	r.bg = UI.Card(r, { color = C.card }); r.bg:SetAllPoints(); r.bg:SetFrameLevel(r:GetFrameLevel())
	r.name = UI.Text(r, 14, C.active, { bold = true, wrap = false }); r.name:SetPoint("TOPLEFT", 14, -7)
	r.name:SetPoint("RIGHT", r, "RIGHT", -150, 0)
	r.sub = UI.Text(r, 11.5, C.dim, { num = true, wrap = false }); r.sub:SetPoint("TOPLEFT", r.name, "BOTTOMLEFT", 0, -3)
	r.dist = UI.Badge(r, "", "epic"); r.dist:SetPoint("RIGHT", -100, 0)
	r.go = UI.Button(r, ns.L.V3_GO, 80, 28); r.go:SetPoint("RIGHT", -12, 0)
	return r
end

PAGE.build = function(page, H)
	H.PageTitle(page, ns.L.RARE_PAGE)
	page.scroll, page.list = UI.Scroll(page)
	page.scroll:SetPoint("TOPLEFT", 0, -52); page.scroll:SetPoint("BOTTOMRIGHT", -8, 0)
	page.rows = {}
	page.none = UI.Text(page, 13, UI.COL.dim, { wrap = true }); page.none:SetPoint("TOPLEFT", 0, -56)
	page.none:SetText(ns.L.RARE_NONE)
end

PAGE.refresh = function(page)
	local L = ns.L
	local zone = myZone()
	local list = R:InZone(zone)
	page.subFS:SetText(zone and ns.LocalizedZone(zone) or "")
	local dist = zone and distFn(zone)
	local sorted = {}
	for _, r in ipairs(list) do
		local n = dist and R.Near({ r }, dist, math.huge)[1]
		sorted[#sorted + 1] = { rare = r, dist = n and n.dist, x = n and n.x, y = n and n.y }
	end
	table.sort(sorted, function(a, b) return (a.dist or math.huge) < (b.dist or math.huge) end)
	for _, r in ipairs(page.rows) do r:Hide() end
	page.none:SetShown(#sorted == 0)
	local y = 0
	for i, s in ipairs(sorted) do
		local r = page.rows[i] or row(page.list); page.rows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.list, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.list, "RIGHT", -6, 0)
		r.name:SetText(s.rare.name)
		r.sub:SetText(L.RARE_SUB:format(s.rare.lvl, #s.rare.pts))
		if s.dist then r.dist:Set(L.V3_YARDS:format(s.dist)); r.dist:Show() else r.dist:Hide() end
		r.go:SetScript("OnClick", function() R:GoTo(s.rare, zone, s.x, s.y) end)
		r:Show()
		y = y + 50
	end
	page.list:SetHeight(math.max(1, y)); page.scroll.Sync()
end

PAGE.count = function()
	local n = #R:InZone()
	return n > 0 and n or nil, "epic"
end

if ns.Hub then ns.Hub:RegisterPage("rares", PAGE) end
