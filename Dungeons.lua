--=============================================================================
-- Dungeons — as Masmorras do Lodestar 3 (specs/lodestar-3): por nível, a que cabe em você agora, as quests para
-- pegar antes (do guia de masmorra da sua facção), a entrada (aprendida quando você entra; antes disso, a aproximada
-- do roteiro) e, por chefe, o loot que melhora a sua spec. Dados: DungeonData.lua (tools/gen_dungeons.py, pfQuest).
--
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo e a página da Central.
--=============================================================================
local ADDON, ns = ...
local D = {}
ns.Dungeons = D

-- Quão bem a faixa cabe no nível: 0 dentro (melhor no meio), cresce fora; raide só no 60.
function D.Fit(level, lo, hi, raid)
	if raid then return level >= 60 and 5 or math.huge end
	if level < lo - 2 then return 100 + (lo - level) end
	if level > hi then return 100 + (level - hi) * 2 end
	return math.abs(level - (lo + hi) / 2) / 10
end

-- A que cabe agora entre as que valem para o personagem: { key, lo, hi, raid } -> a de menor Fit (nil se nenhuma).
function D.Best(list, level)
	local best, bs
	for _, d in ipairs(list or {}) do
		local f = D.Fit(level, d.lo, d.hi, d.raid)
		if f < 100 and (not bs or f < bs) then best, bs = d, f end
	end
	return best
end

-- As quests do guia de masmorra: aceites, ordem do guia, sem repetir. `active(step, goal)` filtra o personagem.
function D.Quests(steps, active)
	local out, seen = {}, {}
	for _, st in ipairs(steps or {}) do
		for _, g in ipairs(st.goals or {}) do
			if g.verb == "accept" and g.id and not seen[g.id] and (not active or active(st, g)) then
				seen[g.id] = true
				out[#out + 1] = { id = g.id, text = g.text, zone = g.goto_ and g.goto_.zone, x = g.goto_ and g.goto_.x,
					y = g.goto_ and g.goto_.y }
			end
		end
	end
	return out
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI
local unpackc = UI.unpackc

local function faction() return UnitFactionGroup("player") end

-- o guia de masmorra da facção (as chaves do roteiro são as dos guias)
function D:Guide(d)
	return ns.guides["Dungeons/" .. (faction() or "") .. "/" .. d.key]
end

function D:QuestsFor(d)
	local g = D:Guide(d)
	if not g then return {} end
	return D.Quests(ns.ensureParsed(g), ns.QuestState and ns.QuestState.IsActive)
end

-- a entrada: a aprendida (ns.db.dungeonDoors[instância]) vale mais que a do roteiro
function D:Door(d)
	local learned = ns.db.dungeonDoors[d.instance]
	if learned then return { map = learned.map, x = learned.x, y = learned.y, learned = true } end
	return { zone = d.zone, x = d.x, y = d.y }
end

function D:GoToDoor(d)
	local door = D:Door(d)
	ns.Waypoint:SetCustom(door.zone, door.x, door.y, ns.L.V3_DUNGEON_DOOR:format(d.key), door.map)
	if ns.Toast then ns.Toast:Show({ title = d.key, text = ns.L.V3_DUNGEON_DOOR:format(d.key), color = UI.COL.tip, hold = 4 }) end
end

function D:List()
	return ns.dungeonData or {}
end

-- a que cabe agora entre as que têm guia para a sua facção (Ragefire não é para a Aliança, Deadmines não é para a Horda)
function D:BestNow()
	local mine = {}
	for _, d in ipairs(D:List()) do if D:Guide(d) then mine[#mine + 1] = d end end
	return D.Best(mine, UnitLevel("player") or 1)
end

-- itens do chefe que melhoram a spec (nota do GearPlan contra o equipado; até 5 níveis acima do seu)
function D:Upgrades(d)
	local GP = ns.GearPlan
	if not GP then return {} end
	local out = {}
	for _, b in ipairs(d.bosses) do
		for _, it in ipairs(b.loot) do
			local gain = GP:GainOf(it[1], 5)
			if gain then out[#out + 1] = { boss = b.name, id = it[1], gain = gain, chance = it[2] } end
		end
	end
	return out
end

function D:Summary()
	local d = D:BestNow()
	if not d then return nil end
	local L = ns.L
	local quests = D:QuestsFor(d)
	local todo = 0
	for _, q in ipairs(quests) do if not ns.IsQuestDone(q.id) and not ns.IsQuestInLog(q.id) then todo = todo + 1 end end
	local ups = #D:Upgrades(d)
	return { title = ("%s  |cff%s%d–%d|r"):format(d.key, UI.Hex("dim"), d.lo, d.hi),
		text = L.V3_DUNGEON_SUM:format(todo, ups), link = L.V3_SEE_DUNGEON }
end

-- a entrada aprendida: o último ponto do mundo antes de entrar na instância
local lastOutside
ns:Every(3, function()
	if IsInInstance and IsInInstance() then return end
	local map = C_Map.GetBestMapForUnit("player")
	local pos = map and C_Map.GetPlayerMapPosition(map, "player")
	if pos then
		local x, y = pos:GetXY()
		if x and x > 0 then lastOutside = { map = map, x = x * 100, y = y * 100, t = GetTime() } end
	end
end)
-- sumonado (pedra de encontro, bruxo): o último ponto é de onde o sumonador estava, não a porta
local summonedAt
ns:On("CONFIRM_SUMMON", function() summonedAt = GetTime() end)

-- o ponto cai na zona da entrada (o próprio mapa ou um acima dele, até o continente)?
local function inZone(map, zone)
	local want = zone and ns.zoneUiMap and ns.zoneUiMap[zone]
	if not want then return true end            -- masmorra fora do roteiro: não há com o que comparar
	local guard = 0
	while map and map ~= 0 and guard < 4 do
		if map == want then return true end
		local info = C_Map.GetMapInfo(map)
		map, guard = info and info.parentMapID, guard + 1
	end
	return false
end

ns:On("PLAYER_ENTERING_WORLD", function()
	C_Timer.After(1, function()
		if not (IsInInstance and IsInInstance() and GetInstanceInfo) then return end
		local _, kind, _, _, _, _, _, instanceID = GetInstanceInfo()
		if not (kind == "party" or kind == "raid") or not instanceID then return end
		-- só um ponto recente conta (um /reload lá dentro não pode gravar a porta de onde se estava ontem), e não
		-- depois de um sumonar
		if not lastOutside or GetTime() - lastOutside.t >= 30 then return end
		if summonedAt and GetTime() - summonedAt < 120 then return end
		local d
		for _, e in ipairs(ns.dungeonData or {}) do if e.instance == instanceID then d = e end end
		if d and not inZone(lastOutside.map, d.zone) then return end
		ns.db.dungeonDoors[instanceID] = { map = lastOutside.map, x = lastOutside.x, y = lastOutside.y }
	end)
end)

--------------------------------------------------------------------------------
-- A página da Central
--------------------------------------------------------------------------------
local PAGE = { label = ns.L.V3_DUNGEONS, glyph = "combate", order = 3 }
local selected

local function listRow(parent)
	local C = UI.COL
	local r = CreateFrame("Button", nil, parent)
	r:SetHeight(30)
	r.sel = UI.dark and UI.Rect(r, "BACKGROUND", C.hover) or UI.Slice(r, "round-6", "BACKGROUND", C.accentSoft)
	r.sel:SetAllPoints(); r.sel:Hide()
	r.name = UI.Text(r, 13, C.muted, { wrap = false }); r.name:SetPoint("LEFT", 10, 0); r.name:SetPoint("RIGHT", -52, 0)
	r.range = UI.Text(r, 11.5, C.dim, { num = true, justify = "RIGHT" }); r.range:SetPoint("RIGHT", -8, 0)
	return r
end

PAGE.build = function(page, H)
	local C, L = UI.COL, ns.L
	local cw = H:ContentWidth() - 8
	-- lista à esquerda
	page.listCard = UI.Card(page, { color = C.card })
	page.listCard:SetPoint("TOPLEFT", 0, 0); page.listCard:SetSize(232, 580)
	page.listLabel = H.Label(page.listCard, L.V3_BY_LEVEL); page.listLabel:SetPoint("TOPLEFT", 14, -14)
	page.lscroll, page.list = UI.Scroll(page.listCard)
	page.lscroll:SetPoint("TOPLEFT", 6, -32); page.lscroll:SetPoint("BOTTOMRIGHT", -10, 8)
	page.lrows = {}
	-- detalhe à direita
	local dx = 232 + 16
	local dw = cw - dx
	page.title = UI.Text(page, 22, C.active, { bold = true }); page.title:SetPoint("TOPLEFT", dx, 0)
	page.fit = UI.Badge(page, "", "ok"); page.fit:SetPoint("LEFT", page.title, "RIGHT", 10, 0)
	page.sub = UI.Text(page, 13, C.muted); page.sub:SetPoint("TOPLEFT", dx, -30)
	page.door = UI.Button(page, L.V3_GUIDE_TO_DOOR, 160, 34, "primary"); page.door:SetPoint("TOPRIGHT", -36, 0)
	page.qguide = UI.Button(page, L.V3_QUEST_GUIDE, 130, 34); page.qguide:SetPoint("RIGHT", page.door, "LEFT", -8, 0)
	local half = math.floor((dw - 14) / 2)
	page.qCard = UI.Card(page, { color = C.card }); page.qCard:SetPoint("TOPLEFT", dx, -62); page.qCard:SetSize(half - 40, 518)
	page.qLabel = H.Label(page.qCard, ""); page.qLabel:SetPoint("TOPLEFT", 14, -14)
	page.qscroll, page.qlist = UI.Scroll(page.qCard)
	page.qscroll:SetPoint("TOPLEFT", 10, -34); page.qscroll:SetPoint("BOTTOMRIGHT", -12, 10)
	page.qrows = {}
	page.bCard = UI.Card(page, { color = C.card }); page.bCard:SetPoint("TOPLEFT", page.qCard, "TOPRIGHT", 14, 0)
	page.bCard:SetSize(dw - half + 26, 518)
	page.bLabel = H.Label(page.bCard, ""); page.bLabel:SetPoint("TOPLEFT", 14, -14)
	page.bscroll, page.blist = UI.Scroll(page.bCard)
	page.bscroll:SetPoint("TOPLEFT", 10, -34); page.bscroll:SetPoint("BOTTOMRIGHT", -12, 10)
	page.brows = {}
end

local function questRow(parent)
	local C = UI.COL
	local r = CreateFrame("Frame", nil, parent); r:SetHeight(40)
	r.glyph = r:CreateTexture(nil, "OVERLAY"); r.glyph:SetSize(15, 15); r.glyph:SetPoint("TOPLEFT", 2, -3)
	r.name = UI.Text(r, 13, C.active, { bold = true, wrap = false }); r.name:SetPoint("TOPLEFT", 24, -2)
	r.name:SetPoint("RIGHT", r, "RIGHT", -4, 0)
	r.sub = UI.Text(r, 11.5, C.dim, { num = true, wrap = false }); r.sub:SetPoint("TOPLEFT", r.name, "BOTTOMLEFT", 0, -3)
	r.sub:SetPoint("RIGHT", r, "RIGHT", -50, 0)
	r.go = CreateFrame("Button", nil, r); r.go:SetSize(46, 16); r.go:SetPoint("BOTTOMRIGHT", 0, 6)
	r.goFS = UI.Text(r.go, 12, C.tip, { bold = true, justify = "RIGHT" }); r.goFS:SetAllPoints(); r.goFS:SetText(ns.L.V3_GO)
	return r
end

local function bossRow(parent)
	local C = UI.COL
	local r = CreateFrame("Frame", nil, parent); r:SetHeight(26)
	r.name = UI.Text(r, 13, C.active, { bold = true, wrap = false }); r.name:SetPoint("TOPLEFT", 2, -4); r.name:SetWidth(150)
	r.items = UI.Text(r, 12.5, C.muted, { wrap = true }); r.items:SetPoint("TOPLEFT", 160, -4); r.items:SetPoint("RIGHT", r, "RIGHT", -4, 0)
	r.sep = UI.Rect(r, "ARTWORK", C.line); r.sep:SetHeight(1); r.sep:SetPoint("BOTTOMLEFT"); r.sep:SetPoint("BOTTOMRIGHT")
	return r
end

PAGE.refresh = function(page, H)
	local C, L = UI.COL, ns.L
	local list = {}
	for _, d in ipairs(D:List()) do list[#list + 1] = d end
	table.sort(list, function(a, b) if a.raid ~= b.raid then return not a.raid end return a.lo < b.lo or (a.lo == b.lo and a.key < b.key) end)
	local level = UnitLevel("player") or 1
	selected = selected or D:BestNow() or list[1]
	-- lista
	local y = 0
	for i, d in ipairs(list) do
		local r = page.lrows[i] or listRow(page.list); page.lrows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.list, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.list, "RIGHT")
		local on = d == selected
		local fits = D.Fit(level, d.lo, d.hi, d.raid) < 100
		r.sel:SetShown(on)
		r.name:SetText(d.key)
		r.name:SetTextColor(unpackc(on and C.active or fits and C.muted or C.faded))
		r.range:SetText(d.raid and L.V3_RAID or ("%d–%d"):format(d.lo, d.hi))
		r.range:SetTextColor(unpackc(on and C.accent or C.dim))
		r:SetScript("OnClick", function() selected = d; PAGE.refresh(page, H) end)
		r:Show()
		y = y + 31
	end
	page.list:SetHeight(y); page.lscroll.Sync()
	local d = selected
	if not d then return end
	-- detalhe
	page.title:SetText(d.key)
	local fits = D.Fit(level, d.lo, d.hi, d.raid) < 100
	if fits then page.fit:Set(L.V3_FITS_NOW, "ok"); page.fit:Show()
	elseif level < d.lo then page.fit:Set(L.V3_OPENS_AT:format(d.lo), "plain"); page.fit:Show()
	else page.fit:Hide() end
	local door = D:Door(d)
	page.sub:SetText(L.V3_DUNGEON_SUB:format(d.raid and L.V3_RAID or ("%d–%d"):format(d.lo, d.hi),
		ns.LocalizedZone(d.zone), #d.bosses, door.learned and L.V3_DOOR_LEARNED or L.V3_DOOR_APPROX))
	page.door:SetScript("OnClick", function() D:GoToDoor(d) end)
	local g = D:Guide(d)
	page.qguide:SetShown(g ~= nil)
	page.qguide:SetScript("OnClick", function()
		if g then ns.char.manualPick = g.key; ns:LoadGuide(g.key, true); if ns.Viewer then ns.Viewer:Show() end end
	end)
	-- quests para pegar antes
	local quests = D:QuestsFor(d)
	page.qLabel:SetText(L.V3_BEFORE_ENTER:format(#quests):upper())
	for _, r in ipairs(page.qrows) do r:Hide() end
	y = 0
	for i, q in ipairs(quests) do
		local r = page.qrows[i] or questRow(page.qlist); page.qrows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.qlist, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.qlist, "RIGHT")
		local done, inLog = ns.IsQuestDone(q.id), ns.IsQuestInLog(q.id)
		r.glyph:SetTexture(done and (UI.GLYPH .. "check-64") or (UI.MEDIA .. "ring"))
		r.glyph:SetVertexColor(unpackc(done and C.done or inLog and C.done or C.accentBright))
		r.name:SetText(ns.QuestState and ns.QuestState.Title(q.id) or q.text or "?")
		r.name:SetTextColor(unpackc(done and C.faded or C.active))
		local where = q.zone and ("%s %.0f, %.0f"):format(ns.LocalizedZone(q.zone), q.x or 0, q.y or 0) or ""
		r.sub:SetText(done and L.V3_Q_DONE or inLog and L.V3_Q_INLOG or where)
		r.sub:SetTextColor(unpackc(inLog and C.done or C.dim))
		r.go:SetShown(not done and not inLog and q.zone ~= nil)
		r.go:SetScript("OnClick", function() ns.Waypoint:SetCustom(q.zone, q.x, q.y, r.name:GetText()) end)
		r:Show()
		y = y + 44
	end
	if #quests == 0 then
		local r = page.qrows[1] or questRow(page.qlist); page.qrows[1] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.qlist, "TOPLEFT", 0, 0); r:SetPoint("RIGHT", page.qlist, "RIGHT")
		r.glyph:Hide(); r.go:Hide(); r.name:SetText(L.V3_NO_DUNGEON_QUESTS); r.name:SetTextColor(unpackc(C.dim)); r.sub:SetText("")
		r:Show(); y = 44
	else
		for _, r in ipairs(page.qrows) do r.glyph:Show() end
	end
	page.qlist:SetHeight(y); page.qscroll.Sync()
	-- chefes e o que melhora
	local ups = {}
	for _, u in ipairs(D:Upgrades(d)) do ups[u.id] = u end
	local spec = ns.GearPlan and ns.GearPlan.SpecLabel(ns.GearPlan:Spec()) or ""
	page.bLabel:SetText(L.V3_BOSSES_FOR:format(spec):upper())
	for _, r in ipairs(page.brows) do r:Hide() end
	y = 0
	for i, b in ipairs(d.bosses) do
		local r = page.brows[i] or bossRow(page.blist); page.brows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.blist, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.blist, "RIGHT")
		r.name:SetText(b.name)
		local parts = {}
		for _, it in ipairs(b.loot) do
			local u = ups[it[1]]
			if u then
				local _, link = ns.ItemInfo(it[1])
				parts[#parts + 1] = ("%s |cff%s+%d%%|r |cff%s%d%%|r"):format(link or ("item:" .. it[1]), UI.Hex("done"),
					math.floor(u.gain * 100 + 0.5), UI.Hex("dim"), math.floor(it[2] + 0.5))
			end
		end
		r.items:SetText(#parts > 0 and table.concat(parts, "\n") or ("|cff%s%s|r"):format(UI.Hex("faded"), L.V3_NOTHING_FOR_YOU))
		local h = math.max(26, r.items:GetStringHeight() + 12)
		r:SetHeight(h)
		r:Show()
		y = y + h
	end
	page.blist:SetHeight(y); page.bscroll.Sync()
end

PAGE.count = function()
	local d = D:BestNow()
	return d and 1 or nil, "gold"
end

if ns.Hub then ns.Hub:RegisterPage("dungeons", PAGE) end
