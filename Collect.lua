--=============================================================================
-- Collect — os colecionáveis do Forever (issue #94): as missões que dão colecionável (saco de dormir, tocha...),
-- os livros da biblioteca escondidos pelo mundo e os pets raros de caçador.
--
--   * Cada tipo vira um guia carregável na janela do guia ("Collectibles/..."), montado dos dados (CollectData.lua,
--     tools/gen_collect.py) em ordem de rota: o que é de coletar pelo mundo, num guia só.
--   * O que já foi pego sai: quest feita, item na bolsa, brinquedo/mascote no diário, ou marcado à mão (clique na
--     linha da janela ou na página). A condição `collected(tipo:id)` dos guias lê daqui.
--   * Perto de um ponto que falta (no mapa-múndi e no minimapa), o ponto aparece; bem perto, um aviso.
--   * Página "Segredos" na Central: progresso de cada tipo, a lista e o guia.
--
-- No topo, o núcleo puro (testado fora do jogo, tools/lodestar3-tests.lua). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local C = {}
ns.Collect = C

C.KINDS = { "quests", "books", "pets" }
C.NEAR = 300          -- jardas: o ponto aparece no minimapa
C.ALERT = 60          -- jardas: o aviso de que tem um aqui

function C.Key(kind, id) return kind .. ":" .. tostring(id) end

-- quantos da lista já foram (isDone(e) -> bool)
function C.Progress(list, isDone)
	local done = 0
	for _, e in ipairs(list or {}) do if isDone(e) then done = done + 1 end end
	return done, #(list or {})
end

-- Ordem de rota: as zonas na ordem em que aparecem; dentro da zona, o vizinho mais perto a partir do primeiro.
function C.Route(points)
	local zones, byZone = {}, {}
	for _, p in ipairs(points or {}) do
		local z = p.zone or "?"
		if not byZone[z] then byZone[z] = {}; zones[#zones + 1] = z end
		table.insert(byZone[z], p)
	end
	local out = {}
	for _, z in ipairs(zones) do
		local left = byZone[z]
		local cur = table.remove(left, 1)
		while cur do
			out[#out + 1] = cur
			local best, bi
			for i, p in ipairs(left) do
				local d = ((p.x or 0) - (cur.x or 0)) ^ 2 + ((p.y or 0) - (cur.y or 0)) ^ 2
				if not best or d < best then best, bi = d, i end
			end
			cur = bi and table.remove(left, bi)
		end
	end
	return out
end

-- texto da DSL do guia: sem quebra de linha nem barra (a barra abre um modificador)
local function clean(s) return (tostring(s or ""):gsub("[\r\n|]", " ")) end
local function at(e)
	if not (e.zone and e.x and e.y) then return "" end
	return (" |goto %s %.1f,%.1f"):format(e.zone, e.x, e.y)
end
local function only(e) return e.faction and (" |only " .. e.faction) or "" end

local ACT = { accept = "accept", turnin = "turnin", talk = "talk", click = "click", use = "use", kill = "kill",
	collect = "collect", ["goto"] = "goto", buy = "buy" }

-- O guia de uma missão de colecionável: os passos dos dados, um por linha.
function C.QuestBody(q)
	local out = {}
	if q.lvl then out[#out + 1] = ("step\n  ding %d"):format(q.lvl) end
	for _, s in ipairs(q.steps or {}) do
		local verb = ACT[s.act]
		local target = clean(s.target or s.note or "")
		local line
		if verb == "goto" then
			line = ("  goto%s"):format(at(s):gsub("^ |goto", ""))
		elseif verb then
			line = ("  %s %s%s%s"):format(verb, target, s.id and ("##" .. s.id) or "", at(s))
		else                                   -- emote e o que não tem verbo: nota com o ponto
			line = ("  note %s%s"):format(target, at(s))
		end
		out[#out + 1] = "step" .. (s.faction and ("\n  only " .. s.faction) or "") .. "\n" .. line
			.. (s.note and verb and ("\n  |tip " .. clean(s.note)) or "")
	end
	return table.concat(out, "\n")
end

-- O guia dos livros: todos, em ordem de rota, cada um fecha quando é pego; no fim, a entrega por facção.
function C.BooksBody(books, turnin)
	local out = {}
	for _, b in ipairs(C.Route(books or {})) do
		out[#out + 1] = ("step\n  click %s%s |complete collected(books:%s)%s%s"):format(clean(b.name), at(b), b.id,
			only(b), b.note and ("\n  |tip " .. clean(b.note)) or "")
	end
	for fac, t in pairs(turnin or {}) do
		out[#out + 1] = ("step\n  only %s\n  talk %s%s%s"):format(fac, clean(t.name), t.npc and ("##" .. t.npc) or "", at(t))
			.. (t.note and ("\n  |tip " .. clean(t.note)) or "")
	end
	return table.concat(out, "\n")
end

-- O guia dos pets raros de caçador: um passo por pet (o ponto mais perto do anterior), fecha quando marcado.
function C.PetsBody(pets, L)
	local pts = {}
	for _, p in ipairs(pets or {}) do
		local first = p.pts and p.pts[1]
		pts[#pts + 1] = { pet = p, zone = p.zone, x = first and first[1], y = first and first[2] }
	end
	local out = {}
	for _, it in ipairs(C.Route(pts)) do
		local p = it.pet
		local tip = (L and L.COL_TAME or "Tame %s (%s, level %s)"):format(clean(p.name), clean(p.family or "?"),
			tostring(p.lvl or "?"))
		out[#out + 1] = ("step\n  only HUNTER\n  goto%s |complete collected(pets:%s)\n  |tip %s%s"):format(
			at(it):gsub("^ |goto", ""), p.id, tip, p.note and (" — " .. clean(p.note)) or "")
	end
	return table.concat(out, "\n")
end

-- Os pontos que faltam perto: list = { e (com zone, x, y ou pts) }, dist(zone, x, y) -> jardas ou nil.
-- Devolve { { e, dist, x, y } } do mais perto, até `limit`.
function C.Near(list, dist, radius, isDone, limit)
	local out = {}
	for _, e in ipairs(list or {}) do
		if not (isDone and isDone(e)) then
			local pts = e.pts or { { e.x, e.y } }
			local best, bx, by
			for _, p in ipairs(pts) do
				if p[1] and p[2] then
					local d = dist(e.zone, p[1], p[2])
					if d and (not best or d < best) then best, bx, by = d, p[1], p[2] end
				end
			end
			if best and best <= radius then out[#out + 1] = { e = e, dist = best, x = bx, y = by } end
		end
	end
	table.sort(out, function(a, b) return a.dist < b.dist end)
	for i = #out, (limit or #out) + 1, -1 do out[i] = nil end
	return out
end

--------------------------------------------------------------------------------
-- Os guias (registrados já no carregamento: a janela e a Central os acham pela chave)
--------------------------------------------------------------------------------
C.GUIDE_BOOKS = "Collectibles/Library Books"
C.GUIDE_PETS = "Collectibles/Rare Hunter Pets"
function C.QuestGuideKey(q) return "Collectibles/" .. q.name end

local function data() return ns.collectData or {} end

if ns.RegisterGuide then
	local d = data()
	if d.books and d.books.list and #d.books.list > 0 then
		ns:RegisterGuide(C.GUIDE_BOOKS, { author = "Lodestar" }, C.BooksBody(d.books.list, d.books.turnin))
	end
	for _, q in ipairs(d.quests or {}) do
		ns:RegisterGuide(C.QuestGuideKey(q), { author = "Lodestar", faction = q.faction }, C.QuestBody(q))
	end
	if d.pets and #d.pets > 0 then
		ns:RegisterGuide(C.GUIDE_PETS, { author = "Lodestar" }, C.PetsBody(d.pets, ns.L))
	end
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI

local function store()
	ns.char.collect = ns.char.collect or {}
	return ns.char.collect
end

local function hasItem(id) return id and ns.ItemCount and ns.ItemCount(id) > 0 end
local function hasToy(id) return id and PlayerHasToy and PlayerHasToy(id) end

-- já foi? (o que o jogo sabe vale primeiro; o marcado à mão vale sempre)
function C:IsDone(kind, e)
	if not e then return false end
	if store()[C.Key(kind, e.id)] then return true end
	if kind == "books" then
		return (e.quest and ns.IsQuestDone(e.quest)) or hasItem(e.item) or false
	elseif kind == "quests" then
		if e.item and (hasToy(e.item) or hasItem(e.item)) then return true end
		local last = e.doneQuest
		return last and ns.IsQuestDone(last) or false
	end
	return false
end

function C:Find(kind, id)
	local d = data()
	local list = kind == "books" and (d.books and d.books.list) or d[kind]
	for _, e in ipairs(list or {}) do if tostring(e.id) == tostring(id) then return e end end
end

function C:IsDoneKey(kind, id) return C:IsDone(kind, C:Find(kind, id) or { id = id }) end

function C:Mark(kind, id, on)
	store()[C.Key(kind, id)] = on and true or nil
	ns:CheckProgress()
	if ns.Viewer then ns.Viewer:Refresh() end
	if ns.Hub then ns.Hub:Refresh() end
end

-- a linha da janela com `|complete collected(tipo:id)`: clicar marca ou desmarca
function C:ToggleFromGoal(goal)
	local kind, id = tostring(goal.complete or ""):match("collected%((%a+):([%w_]+)%)")
	if not kind then return false end
	C:Mark(kind, id, not store()[C.Key(kind, id)])
	return true
end

function C:Lists()
	local d = data()
	return { quests = d.quests or {}, books = d.books and d.books.list or {}, pets = d.pets or {} }
end

function C:KindProgress(kind)
	return C.Progress(C:Lists()[kind], function(e) return C:IsDone(kind, e) end)
end

function C:OpenGuide(key)
	if not (key and ns.guides[key]) then return end
	ns.char.manualPick = key
	ns:LoadGuide(key, true)
	if ns.Viewer then ns.Viewer:Show() end
end

function C:GoTo(e, x, y, label)
	local p = e.pts and e.pts[1]
	ns.Waypoint:SetCustom(e.zone, x or e.x or (p and p[1]), y or e.y or (p and p[2]), label or e.name)
end

local function isHunter() return select(2, UnitClass("player")) == "HUNTER" end
local function factionOK(e) return not e.faction or e.faction == UnitFactionGroup("player") end

-- o que aparece no mapa: livros (e os pets raros, para caçador) que faltam
function C:MapPoints()
	local out = {}
	if ns.db.collectPins == false then return out end
	for _, b in ipairs(C:Lists().books) do
		if factionOK(b) and not C:IsDone("books", b) then out[#out + 1] = { kind = "books", e = b } end
	end
	if isHunter() then
		for _, p in ipairs(C:Lists().pets) do
			if not C:IsDone("pets", p) then out[#out + 1] = { kind = "pets", e = p } end
		end
	end
	return out
end

-- ganhou o item de um livro: marca (o que o jogo não diz, a bolsa diz)
ns:On("BAG_UPDATE_DELAYED", function()
	for _, b in ipairs(C:Lists().books) do
		if b.item and not store()[C.Key("books", b.id)] and hasItem(b.item) then store()[C.Key("books", b.id)] = true end
	end
end)

--------------------------------------------------------------------------------
-- Pinos: mapa-múndi (os que faltam no mapa aberto) e minimapa (os que estão perto); bem perto, um aviso
--------------------------------------------------------------------------------
local GLYPH = { books = "livro", pets = "alvo" }
local TINT = { books = "tip", pets = "epic" }

local function pinFrame(parent)
	local p = CreateFrame("Frame", nil, parent)
	p:SetSize(18, 18)
	p.bg = UI.Media(p, "dot", "ARTWORK"); p.bg:SetAllPoints()
	p.icon = UI.Glyph(p, "livro", "OVERLAY", 64); p.icon:SetPoint("CENTER"); p.icon:SetSize(11, 11)
	p.icon:SetVertexColor(1, 1, 1, 1)
	p:EnableMouse(true)
	p:SetScript("OnEnter", function(self)
		if not self._e then return end
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(self._e.name or "?", 1, 1, 1)
		if self._e.note then GameTooltip:AddLine(self._e.note, 0.8, 0.8, 0.8, true) end
		GameTooltip:AddLine(ns.L.COL_PIN_TIP, 0.5, 0.7, 0.9, true)
		GameTooltip:Show()
	end)
	p:SetScript("OnLeave", function() GameTooltip:Hide() end)
	p:SetScript("OnMouseUp", function(self, button)
		if not self._e then return end
		if button == "RightButton" then C:Mark(self._kind, self._e.id, true) else C:GoTo(self._e, self._x, self._y) end
	end)
	return p
end

local function style(p, it, x, y)
	p._e, p._kind, p._x, p._y = it.e, it.kind, x, y
	p.bg:SetVertexColor(UI.unpackc(UI.HUD[TINT[it.kind]] or UI.HUD.accent))
	p.icon:SetTexture(UI.GLYPH .. (GLYPH[it.kind] or "losango") .. "-64")
end

local function points(it)
	local e = it.e
	return e.pts or { { e.x, e.y } }
end

-- mapa-múndi
local worldPool, worldActive = {}, {}
local function worldRelease() for _, p in ipairs(worldActive) do p:Hide(); worldPool[#worldPool + 1] = p end; wipe(worldActive) end
local function worldUpdate()
	local WMF = WorldMapFrame
	worldRelease()
	if not (WMF and WMF:IsShown() and WMF.GetCanvas) then return end
	local shown = WMF.GetMapID and WMF:GetMapID()
	local ok, canvas = pcall(WMF.GetCanvas, WMF)
	if not (shown and ok and canvas) then return end
	local w, h = canvas:GetSize()
	if not w or w == 0 then return end
	for _, it in ipairs(C:MapPoints()) do
		for _, pt in ipairs(points(it)) do
			local x, y = ns.Waypoint:MapPos(it.e.zone, pt[1], pt[2], shown)
			if x and x >= 0 and x <= 1 and y >= 0 and y <= 1 then
				local p = table.remove(worldPool) or pinFrame(canvas)
				p:SetParent(canvas); p:SetFrameStrata("TOOLTIP")
				style(p, it, pt[1], pt[2])
				p:ClearAllPoints(); p:SetPoint("CENTER", canvas, "TOPLEFT", x * w, -y * h)
				p:Show()
				worldActive[#worldActive + 1] = p
			end
		end
	end
end

-- minimapa (perto) e o aviso
local miniPool, miniActive, overlay = {}, {}, nil
local function miniRelease() for _, p in ipairs(miniActive) do p:Hide(); miniPool[#miniPool + 1] = p end; wipe(miniActive) end
local alerted = {}
local function distFn(zone, x, y) return ns.Waypoint and ns.Waypoint:DistanceTo({ goto_ = { zone = zone, x = x, y = y } }) end

local function miniUpdate()
	miniRelease()
	local G, T = ns.RouteGeom, ns.Travel
	if not (Minimap and G and T and T.World) or (IsInInstance and IsInInstance()) then return end
	local me = T.PlayerWorld()
	if not me then return end
	local list = C:MapPoints()
	if #list == 0 then return end
	local flat = {}
	for _, it in ipairs(list) do flat[#flat + 1] = it.e; it.e._kind = it.kind end
	local near = C.Near(flat, distFn, C.NEAR, nil, 12)
	if #near == 0 then return end
	if not overlay then
		overlay = CreateFrame("Frame", "LodestarCollectMinimap", Minimap)
		overlay:SetAllPoints(Minimap); overlay:SetFrameStrata("HIGH")
		overlay:SetFrameLevel((Minimap:GetFrameLevel() or 3) + 9)
	end
	local radius = Minimap:GetWidth() / 2 * 0.92
	local zoom = Minimap.GetZoom and Minimap:GetZoom() or 3
	local range = G.MinimapRange(zoom, IsIndoors and IsIndoors() or false) * ((ns.db.minimap and ns.db.minimap.rangeMult) or 1)
	local ydPerPx = range / (Minimap:GetWidth() / 2)
	local facing = GetPlayerFacing and GetPlayerFacing() or 0
	local rotate = GetCVar and GetCVar("rotateMinimap") == "1"
	for _, n in ipairs(near) do
		local wp = T.World(n.e.zone, n.x, n.y)
		if wp and wp.c == me.c then
			local rx, ry = G.ToMinimap(me.x, me.y, wp.x, wp.y, facing, rotate, ydPerPx, radius)
			local p = table.remove(miniPool) or pinFrame(overlay)
			p:SetParent(overlay); p:SetSize(14, 14)
			style(p, { kind = n.e._kind, e = n.e }, n.x, n.y)
			p:ClearAllPoints(); p:SetPoint("CENTER", overlay, "CENTER", rx, ry)
			p:Show()
			miniActive[#miniActive + 1] = p
		end
		if n.dist <= C.ALERT and not alerted[n.e] and ns.Toast and ns.db.collectPins ~= false then
			alerted[n.e] = true
			local e, kind, x, y = n.e, n.e._kind, n.x, n.y
			ns.Toast:Show({ title = kind == "books" and ns.L.COL_BOOK_NEAR or ns.L.COL_PET_NEAR,
				text = ("%s · %s"):format(e.name or "?", ns.L.V3_YARDS:format(n.dist)), color = UI.COL.tip, hold = 8,
				glyph = GLYPH[kind], onClick = function() C:GoTo(e, x, y) end })
		end
	end
end

ns:Every(0.3, function() if WorldMapFrame and WorldMapFrame:IsShown() then pcall(worldUpdate) elseif #worldActive > 0 then worldRelease() end end)
ns:Every(1, function() local ok, err = pcall(miniUpdate); if not ok then ns:Debug("Collect", err) end end)
C.WorldUpdate, C.MiniUpdate = worldUpdate, miniUpdate

--------------------------------------------------------------------------------
-- A página da Central: Segredos (missões, livros, pets raros)
--------------------------------------------------------------------------------
local PAGE = { label = ns.L.COL_PAGE, glyph = "livro", order = 5.5 }
local tab = "quests"

local function tabs()
	local L = ns.L
	local t = { { L.COL_TAB_QUESTS, "quests" }, { L.COL_TAB_BOOKS, "books" } }
	if isHunter() then t[#t + 1] = { L.COL_TAB_PETS, "pets" } end
	return t
end

PAGE.build = function(page, H)
	local Cc, L = UI.COL, ns.L
	H.PageTitle(page, L.COL_PAGE)
	page.tabs = UI.Segmented(page, tabs(), function(v) tab = v; PAGE.refresh(page, H) end)
	page.tabs:SetPoint("TOPRIGHT", -40, 2)
	page.hero = UI.Card(page, { color = Cc.card }); page.hero:SetPoint("TOPLEFT", 0, -52); page.hero:SetPoint("RIGHT", page, "RIGHT", -8, 0)
	page.hero:SetHeight(74)
	page.heroLabel = H.Label(page.hero, ""); page.heroLabel:SetPoint("TOPLEFT", 18, -14)
	page.heroTitle = UI.Text(page.hero, 20, Cc.active, { bold = true }); page.heroTitle:SetPoint("TOPLEFT", page.heroLabel, "BOTTOMLEFT", 0, -4)
	page.heroBar = UI.Bar(page.hero, Cc.tip); page.heroBar:SetHeight(8)
	page.heroBar:SetPoint("LEFT", page.hero, "LEFT", 220, -4); page.heroBar:SetPoint("RIGHT", page.hero, "RIGHT", -200, -4)
	page.heroSub = UI.Text(page.hero, 12, Cc.dim, { num = true }); page.heroSub:SetPoint("TOPLEFT", page.heroBar, "BOTTOMLEFT", 0, -6)
	page.open = UI.Button(page.hero, L.COL_OPEN_GUIDE, 160, 32, "primary"); page.open:SetPoint("RIGHT", -16, 0)
	page.open:Fit(150)
	page.card = UI.Card(page, { color = Cc.card }); page.card:SetPoint("TOPLEFT", 0, -140); page.card:SetPoint("BOTTOMRIGHT", -8, 0)
	page.scroll, page.list = UI.Scroll(page.card)
	page.scroll:SetPoint("TOPLEFT", 10, -12); page.scroll:SetPoint("BOTTOMRIGHT", -14, 10)
	page.rows = {}
	page.none = UI.Text(page.card, 13, Cc.dim, { wrap = true }); page.none:SetPoint("TOPLEFT", 18, -18)
	page.none:SetPoint("RIGHT", page.card, "RIGHT", -18, 0); page.none:SetText(L.COL_NONE)
end

local function rowsFor(kind)
	local L, Cc = ns.L, UI.COL
	local out = {}
	local lists = C:Lists()
	if kind == "quests" then
		for _, q in ipairs(lists.quests) do
			local done = C:IsDone("quests", q)
			local key = C.QuestGuideKey(q)
			out[#out + 1] = {
				glyph = done and "check" or (q.kind == "pet" and "falar" or q.kind == "mount" and "seta-rota" or "estrela"),
				tone = done and "ok" or "gold", title = q.name, titleColor = done and Cc.faded or Cc.active,
				sub = L.COL_QUEST_SUB:format(L["COL_KIND_" .. (q.kind or "item")] or q.kind or "", q.lvl or 1,
					q.where or ""),
				value = done and L.V3_COLLECTED or nil, valueColor = Cc.done,
				action = not done and L.COL_OPEN or nil, onAction = function() C:OpenGuide(key) end,
			}
		end
	else
		local list = lists[kind]
		for _, e in ipairs(list) do
			if kind ~= "books" or factionOK(e) then
				local done = C:IsDone(kind, e)
				local kindKey = kind
				out[#out + 1] = {
					glyph = done and "check" or GLYPH[kind], tone = done and "ok" or (kind == "pets" and "epic" or "info"),
					title = e.name, titleColor = done and Cc.faded or Cc.active,
					sub = kind == "pets" and L.COL_PET_SUB:format(e.family or "?", tostring(e.lvl or "?"), ns.LocalizedZone(e.zone or ""))
						or ("%s · %s"):format(ns.LocalizedZone(e.zone or ""), e.note or ""),
					value = done and L.V3_COLLECTED or nil, valueColor = Cc.done,
					action = not done and L.V3_GO or nil, onAction = function() C:GoTo(e) end,
					onClick = function() C:Mark(kindKey, e.id, not C:IsDone(kindKey, e)) end,
				}
			end
		end
	end
	return out
end

PAGE.refresh = function(page, H)
	local L = ns.L
	if tab == "pets" and not isHunter() then tab = "quests" end
	page.tabs:Select(tab)
	local done, total = C:KindProgress(tab)
	page.heroLabel:SetText(L["COL_TAB_" .. tab:upper()]:upper())
	page.heroTitle:SetText(("%d / %d"):format(done, total))
	page.heroBar:SetProgress(done / math.max(1, total))
	local sub = ""
	if tab == "books" then
		local d = data().books or {}
		for _, r in ipairs(d.rewards or {}) do
			if done < r.n then sub = L.COL_NEXT_REWARD:format(r.n, r.text or ""); break end
		end
	end
	page.heroSub:SetText(sub)
	local key = tab == "books" and C.GUIDE_BOOKS or tab == "pets" and C.GUIDE_PETS or nil
	page.open:SetShown(key ~= nil and ns.guides[key] ~= nil)
	page.open:SetScript("OnClick", function() C:OpenGuide(key) end)
	local rows = rowsFor(tab)
	for _, r in ipairs(page.rows) do r:Hide() end
	page.none:SetShown(#rows == 0)
	local y = 0
	for i, t in ipairs(rows) do
		local r = page.rows[i] or UI.ListRow(page.list, 50); page.rows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.list, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.list, "RIGHT")
		r:Set(t)
		r:Show()
		y = y + 50
	end
	page.list:SetHeight(math.max(1, y)); page.scroll.Sync()
end

PAGE.count = function()
	local done, total = C:KindProgress("books")
	return total > 0 and done < total and (total - done) or nil, "info"
end

if ns.Hub then ns.Hub:RegisterPage("secrets", PAGE) end
