-- Fumaça da interface (specs/lodestar-3): carrega o addon inteiro na ordem do .toc sob um cliente falso — frames
-- que guardam tamanho, pontos, texto e scripts — dispara o login e monta e atualiza cada janela: o guia, a
-- Navegação, a Central e todas as páginas, o diário, o relatório, as configurações. Nos dois temas. Não prova
-- layout (não há pixel aqui); prova que nada estoura: campo nil, função que não existe, conta com texto.
--
--   luajit tools/ui-smoke.lua [light|dark]
--
-- Sai com 1 no primeiro erro.
local ROOT = (arg and arg[0] or ""):gsub("[^/\\]*$", "") .. ".."
local THEME = arg and arg[1] or "light"

local function noop() end
local Obj = {}
local function new(kind, name, parent)
	local o = setmetatable({ _kind = kind, _shown = true, _w = 0, _h = 0, _scripts = {}, _parent = parent, _name = name },
		Obj)
	if name then _G[name] = o end
	if parent and type(parent) == "table" then parent._kids = parent._kids or {}; parent._kids[#parent._kids + 1] = o end
	return o
end
local M = {}
Obj.__index = function(t, k)
	if M[k] then return M[k] end
	if type(k) == "string" and k:match("^%u") then return noop end
	return nil
end
function M:CreateTexture() return new("Texture", nil, self) end
function M:CreateFontString() return new("FontString", nil, self) end
function M:CreateAnimationGroup() return new("AnimationGroup", nil, self) end
function M:CreateAnimation() return new("Animation", nil, self) end
function M:SetSize(w, h) self._w, self._h = w or 0, h or 0 end
function M:SetWidth(w) self._w = w or 0 end
function M:SetHeight(h) self._h = h or 0 end
function M:GetWidth() return self._w > 0 and self._w or 300 end
function M:GetHeight() return self._h end
function M:GetSize() return self:GetWidth(), self._h end
function M:Show() self._shown = true end
function M:Hide() self._shown = false end
function M:SetShown(v) self._shown = v and true or false end
function M:IsShown() return self._shown end
function M:IsVisible() return self._shown end
function M:SetText(t) self._text = t end
function M:SetFormattedText(f, ...) self._text = f:format(...) end
function M:GetText() return self._text or "" end
function M:GetStringWidth() return #(self._text or "") * 6 end
function M:GetStringHeight() return 14 end
function M:GetFont() return "font", 12, "" end
function M:SetScript(k, f) self._scripts[k] = f end
function M:HookScript(k, f) self._scripts[k] = f end
function M:GetScript(k) return self._scripts[k] end
function M:GetPoint() return "CENTER", nil, "CENTER", 0, 0 end
function M:SetPoint(p, ...)
	self._pts = self._pts or {}; self._pts[#self._pts + 1] = p
	self._ptargs = self._ptargs or {}; self._ptargs[p] = { ... }
end
function M:ClearAllPoints() self._pts, self._ptargs = {}, {} end
function M:GetParent() return self._parent end
function M:GetName() return self._name end
function M:GetFrameLevel() return 1 end
function M:GetVerticalScroll() return 0 end
function M:GetValue() return self._value or 0 end
function M:SetValue(v) self._value = v end
function M:GetMinMaxValues() return 0, 1 end
function M:IsMouseOver() return false end
function M:GetNumPoints() return 1 end
function M:GetCenter() return 100, 100 end
function M:GetEffectiveScale() return 1 end
function M:GetScale() return 1 end
function M:GetAlpha() return 1 end
function M:GetTexture() return self._tex end
function M:SetTexture(t) self._tex = t end
function M:GetCursorPosition() return 0 end
function M:Click() local f = self._scripts.OnClick; if f then f(self, "LeftButton") end end
function M:GetObjectType() return self._kind end
function M:GetAttribute() return nil end
function M:IsObjectType() return false end
function M:GetChildren() return end
function M:GetRegions() return end
function M:GetLeft() return 0 end
function M:GetTop() return 0 end
function M:GetRight() return 0 end
function M:GetBottom() return 0 end

-- ── a API do jogo que o addon toca ───────────────────────────────────────────
local G = _G
G.CreateFrame = function(kind, name, parent) return new(kind, name, parent) end
G.UIParent = new("Frame", "UIParent")
G.Minimap = new("Frame", "Minimap")
G.WorldMapFrame = new("Frame", "WorldMapFrame"); WorldMapFrame.ScrollContainer = new("Frame")
G.GameTooltip = new("GameTooltip", "GameTooltip")
G.ItemRefTooltip = new("GameTooltip", "ItemRefTooltip")
G.ChatFontNormal, G.GameFontHighlightSmall, G.GameFontNormal = {}, {}, {}
G.UISpecialFrames, G.StaticPopupDialogs = {}, {}
G.StaticPopup_Show = noop
G.SlashCmdList = {}
G.STANDARD_TEXT_FONT = "Fonts\\FRIZQT__.TTF"
G.YES, G.NO, G.OKAY, G.CANCEL = "Yes", "No", "Okay", "Cancel"
G.tinsert, G.tremove = table.insert, table.remove
G.wipe = function(t) for k in pairs(t) do t[k] = nil end return t end
G.hooksecurefunc = noop
G.strsplit = function(sep, s)
	local out = {}
	for p in (s .. sep):gmatch("([^" .. sep .. "]*)" .. sep) do out[#out + 1] = p end
	return unpack(out)
end
G.strtrim = function(s) return (s:gsub("^%s+", ""):gsub("%s+$", "")) end
G.tostringall = function(...) local t = {} for i = 1, select("#", ...) do t[i] = tostring((select(i, ...))) end return unpack(t) end
-- o Core embrulha cada evento em pcall e manda o erro ao chat em vermelho: aqui, isso é falha
G.print = function(...)
	local parts = {}
	for i = 1, select("#", ...) do parts[i] = tostring((select(i, ...))) end
	local line = table.concat(parts, " ")
	if line:find("ff5555", 1, true) or line:find("attempt to", 1, true) or line:find("%.lua:%d+:") then
		io.stderr:write("ERROR (chat/debug): " .. line .. "\n"); os.exit(1)
	end
end
G.issecretvalue = function() return false end
G.GetLocale = function() return "ptBR" end
G.GetBuildInfo = function() return "1.60.1", "71139", "Nov 25 2026", 16001 end
G.GetTime = function() return 1000 end
G.GetServerTime = function() return os.time() end
G.time, G.date = os.time, os.date
G.debugprofilestop = function() return 0 end
G.GetMaxPlayerLevel = function() return 60 end
G.GetMaxLevelForPlayerExpansion = G.GetMaxPlayerLevel
G.UnitLevel = function() return 18 end
G.UnitClass = function() return "Guerreiro", "WARRIOR", 1 end
G.UnitRace = function() return "Humano", "HUMAN", 1 end
G.UnitFactionGroup = function() return "Alliance", "Aliança" end
G.UnitName = function() return "Teste" end
G.UnitFullName = function() return "Teste", "Reino" end
G.GetRealmName = function() return "Reino" end
G.UnitGUID = function() return nil end
G.UnitXP, G.UnitXPMax = function() return 1200 end, function() return 5000 end
G.GetXPExhaustion = function() return nil end
G.UnitIsDeadOrGhost, G.UnitIsGhost = function() return false end, function() return false end
G.UnitExists = function() return false end
G.UnitAffectingCombat = function() return false end
G.UnitOnTaxi = function() return false end
G.UnitPosition = function() return -10500, 1000, 0, 0 end
G.GetPlayerFacing = function() return 0 end
G.IsInInstance = function() return false, "none" end
G.GetInstanceInfo = function() return "Azeroth", "none", 0, "", 5, 0, false, 0 end
G.IsInGroup, G.IsInRaid = function() return false end, function() return false end
G.InCombatLockdown = function() return false end
G.IsShiftKeyDown = function() return false end
G.IsControlKeyDown, G.IsAltKeyDown = G.IsShiftKeyDown, G.IsShiftKeyDown
G.GetZoneText = function() return "Westfall" end
G.GetSubZoneText = function() return "" end
G.GetMinimapZoneText = G.GetZoneText
G.GetMoney = function() return 12345 end
G.GetInventoryItemLink = function() return nil end
G.GetBindLocation = function() return "Sentinel Hill" end
G.GetCVar = function() return "0" end
G.GetCVarBool = function() return false end
G.PlaySound = noop
G.GetNumTalentTabs = function() return 3 end
G.GetTalentTabInfo = function(i) return "Tree" .. i, nil, i == 1 and 11 or 0 end
G.GetCategoryList = function() return {} end
G.GetCategoryInfo = function() return nil, -1 end
G.GetCategoryNumAchievements = function() return 0 end
G.GetAchievementInfo = function() return nil end
G.NumTaxiNodes = function() return 0 end
G.C_Timer = { After = noop, NewTicker = function() return new("Ticker") end, NewTimer = function() return new("Ticker") end }
G.C_Map = {
	GetBestMapForUnit = function() return 1436 end,
	GetMapInfo = function(id) return { mapID = id, name = "Westfall", parentMapID = 1415, mapType = 3 } end,
	GetPlayerMapPosition = function() return { GetXY = function() return 0.52, 0.47 end, x = 0.52, y = 0.47 } end,
	GetWorldPosFromMapPos = function() return nil end,
	GetMapWorldSize = function() return 1000, 1000 end,
	GetMapRectOnMap = function() return 0, 1, 0, 1 end,
}
G.C_QuestLog = {
	IsQuestFlaggedCompleted = function() return false end, GetLogIndexForQuestID = function() return nil end,
	GetQuestObjectives = function() return {} end, GetNumQuestLogEntries = function() return 0 end,
	GetInfo = function() return nil end, GetTitleForQuestID = function(id) return "Quest " .. id end,
	IsComplete = function() return false end, IsFailed = function() return false end,
	GetTimeAllowed = function() return nil end, GetQuestWatchType = noop,
}
G.C_Item = {
	GetItemInfo = function() return nil end, GetItemInfoInstant = function(id) return id, nil, nil, nil end,
	GetItemCount = function() return 0 end, RequestLoadItemDataByID = noop, GetItemStats = function() return nil end,
	IsEquippableItem = function() return false end, GetItemIconByID = function() return 134400 end,
	IsEquippedItem = function() return false end,
}
G.C_Container = { GetContainerNumSlots = function() return 0 end, GetContainerItemLink = function() return nil end }
G.C_MountJournal = {
	GetMountIDs = function() return { 1, 2 } end,
	-- tipo de origem 0, como neste cliente (issue #109): a origem sai do texto
	GetMountInfoByID = function(id) return "Montaria " .. id, 100 + id, 132226, false, true, 0, false, false, nil, false, id == 1, id end,
	GetMountInfoExtraByID = function() return nil, "", "|cFFFFD200Vendedor: |rKatie Hunter|n|cFFFFD200Zona: |rFloresta de Elwynn" end,
}
-- caixa de brinquedos com os filtros do jogador: só mostra tudo com coletados, não coletados e busca vazia
local toyState = { coll = false, unc = true, filter = "x" }
G.C_ToyBox = {
	GetCollectedShown = function() return toyState.coll end, GetUncollectedShown = function() return toyState.unc end,
	SetCollectedShown = function(v) toyState.coll = v end, SetUncollectedShown = function(v) toyState.unc = v end,
	SetFilterString = function(v) toyState.filter = v end, ForceToyRefilter = noop,
	GetNumFilteredToys = function() return (toyState.coll and toyState.unc and toyState.filter == "") and 2 or 0 end,
	GetToyFromIndex = function(i) return 900 + i end,
	GetToyInfo = function(id) return id, "Brinquedo " .. id, 134400, false, false end,
}
G.ToyBox = { searchString = "x" }
G.PlayerHasToy = function(id) return id == 901 end
G.C_PetJournal = {
	GetNumPets = function() return 1 end,
	GetPetInfoByIndex = function() return "pet1", 7, false, nil, 1, false, false, "Galinha", 132834, 1, 0, "|cFFFFD200Missão: |rUma Galinha", "" end,
	IsFilterChecked = function() return true end, SetFilterChecked = noop, SetAllPetSourcesChecked = noop,
	SetAllPetTypesChecked = noop, ClearSearchFilter = noop,
}
G.C_AddOns = { GetAddOnMetadata = function() return "@project-version@" end, IsAddOnLoaded = function() return false end,
	GetNumAddOns = function() return 0 end, GetAddOnEnableState = function() return 0 end, LoadAddOn = noop }
G.C_SkillInfo = { GetNumSkillLines = function() return 0 end }
G.C_Spell = { GetSpellInfo = function() return nil end, GetSpellCooldown = function() return nil end }
G.C_SpellBook = { IsSpellKnown = function() return false end }
G.C_CurrencyInfo = { GetCoinTextureString = function(c) return tostring(c) end }
G.C_ChatInfo = { RegisterAddonMessagePrefix = noop, SendAddonMessage = noop }
G.C_GossipInfo = {}
G.C_NamePlate = { GetNamePlates = function() return {} end, GetNamePlateForUnit = function() return nil end }
G.C_TaxiMap = { GetAllTaxiNodes = function() return {} end }
G.Enum = { TooltipDataType = { Unit = 1, Item = 0 } }
G.TooltipDataProcessor = { AddTooltipPostCall = noop }
G.TooltipUtil = { GetDisplayedUnit = noop, GetDisplayedItem = noop }
G.LE_PARTY_CATEGORY_HOME = 1
G.SOUNDKIT = {}

-- o que faltar: uma função que não faz nada para nome que começa maiúsculo (API), nil para o resto
setmetatable(G, { __index = function(_, k)
	if type(k) == "string" and k:match("^C_") then return setmetatable({}, { __index = function() return noop end }) end
	if type(k) ~= "string" then return nil end
	for _, pre in ipairs({ "Get", "Is", "Unit", "Has", "Can", "Set", "Send", "Take", "Select", "Accept", "Complete",
		"Abandon", "Toggle", "Show", "Hide", "Play", "Request", "Load", "Num", "Clear", "Close", "Open" }) do
		if k:sub(1, #pre) == pre then return noop end
	end
	return nil
end })

-- ── carrega o addon ──────────────────────────────────────────────────────────
local ns = {}
for line in io.lines(ROOT .. "/Lodestar.toc") do
	local f = line:match("^([%w_\\/%.%-]+%.lua)%s*$")
	if f then
		f = f:gsub("\\", "/")
		local chunk, err = loadfile(ROOT .. "/" .. f)
		if not chunk then io.stderr:write("LOAD " .. f .. ": " .. tostring(err) .. "\n"); os.exit(1) end
		local ok, e = pcall(chunk, "Lodestar", ns)
		if not ok then io.stderr:write("RUN " .. f .. ": " .. tostring(e) .. "\n"); os.exit(1) end
	end
end
local Guides = { "Guides/Leveling/Alliance/Westfall_10-20.lua" }
for _, gf in ipairs(Guides) do
	local chunk = loadfile(ROOT .. "/" .. gf)
	if chunk then chunk("Lodestar", ns) end
end
-- um guia de verdade da pasta (o primeiro de Westfall que existir), e um de masmorra
-- (no Windows o cmd.exe não tem `ls` nem `2>/dev/null`: `dir /b` lista só o nome, e o caminho vem da pasta)
local WIN = package.config:sub(1, 1) == "\\"
local function loadFirst(pattern)
	local f
	if WIN then
		local full = (ROOT .. "/" .. pattern):gsub("/", "\\")
		local dir = full:match("^(.*)\\[^\\]*$") or "."
		local p = io.popen('dir /b "' .. full .. '" 2>NUL')
		local name = p and p:read("*l"); if p then p:close() end
		f = name and name ~= "" and (dir .. "\\" .. name) or nil
	else
		local p = io.popen('ls ' .. ROOT .. '/' .. pattern .. ' 2>/dev/null')
		f = p and p:read("*l"); if p then p:close() end
	end
	if f then local c = loadfile(f); if c then c("Lodestar", ns) end end
end
loadFirst("Guides/Leveling/Alliance/Westfall*.lua")
loadFirst("Guides/Dungeons/Alliance/The_Deadmines.lua")

local function step(what, fn)
	local ok, err = pcall(fn)
	if not ok then io.stderr:write("FAIL " .. what .. ": " .. tostring(err) .. "\n"); os.exit(1) end
end

-- login (o tema vale no ADDON_LOADED)
_G.LodestarDB = { theme = THEME, debug = true }   -- debug: o erro de ticker e de página vai ao "chat" (falha)
step("ADDON_LOADED", function() ns.fire("ADDON_LOADED", "Lodestar") end)
step("PLAYER_LOGIN", function() ns.fire("PLAYER_LOGIN") end)
step("PLAYER_ENTERING_WORLD", function() ns.fire("PLAYER_ENTERING_WORLD") end)
assert(ns.UI.theme == (THEME == "dark" and "dark" or "light"), "o tema salvo vale")

-- um guia aberto: o primeiro de leveling que houver
if not ns.currentGuide then
	for k in pairs(ns.guides) do if k:match("^Leveling/") then step("LoadGuide", function() ns:LoadGuide(k) end); break end end
end
step("Viewer:Show", function() ns.Viewer:Show() end)
step("Viewer:Refresh", function() ns.Viewer:Refresh() end)
step("Viewer:UpdateTimers", function() ns.Viewer:UpdateTimers() end)
step("Viewer collapse", function() ns.Viewer:ToggleCollapse(); ns.Viewer:ToggleCollapse() end)
step("AdvanceStep", function() ns:AdvanceStep(1); ns:AdvanceStep(-1) end)
step("SkipQuest + Undo", function()
	local step1 = ns:GetStep()
	for _, g in ipairs(step1 and step1.goals or {}) do
		local q = ns.QuestState.QuestOf(g)
		if q then ns.QuestState:SkipQuest(q); ns.Viewer:Refresh(); ns.QuestState:Undo(); break end
	end
end)
step("Viewer empty", function() local k = ns.currentGuide.key; ns:CloseGuide(k); ns.Viewer:Refresh(); ns:LoadGuide(k, true) end)
step("TravelPanel", function() ns.TravelPanel:Toggle(); ns.TravelPanel.Refresh(); ns.TravelPanel.MeasureServices() end)
-- espera do barco (issue #110): na perna de barco, a animação no lugar da seta; na perna a pé, a seta de volta
step("Arrow wait", function()
	local T = ns.Travel
	local savedRoute, savedPW = T.Route, T.PlayerWorld
	local a, b, c = { c = 0, x = 0, y = 0 }, { c = 0, x = 100, y = 0 }, { c = 1, x = 900, y = 0 }
	local route = { leg = 2, kind = "manual", dest = { label = "Grom'gol" }, legs = {
		{ k = "walk", a = a, b = b, s = 20 },
		{ k = "ship", ship = "zeppelin", a = b, b = c, s = 240, name = "Grom'gol" },
		{ k = "walk", a = c, b = c, s = 10 } } }
	T.Route = function() return route end
	T.PlayerWorld = function() return { c = 0, x = 100, y = 0 } end
	ns.db.arrow.enabled = true
	local ok, err = pcall(function()
		ns.Waypoint:Update()
		local ar = _G.LodestarArrow
		assert(ar and ar._shown, "seta escondida")
		assert(ar.wait and ar.wait._shown, "sem a animação de espera na perna de barco")
		assert(not ar.tex._shown, "a agulha continua na perna de barco")
		local upd = ar.wait:GetScript("OnUpdate")
		for _ = 1, 30 do upd(ar.wait, 0.05) end
		-- o tique seguinte não esconde e mostra de novo (o OnHide devolveria o brilho cheio: piscaria)
		local hides, hide = 0, ar.wait.Hide
		ar.wait.Hide = function(self) hides = hides + 1; hide(self) end
		ns.Waypoint:Update()
		ar.wait.Hide = nil
		assert(ar.wait._shown and hides == 0, "a espera piscou no tique")
		route.legs[2].boarded = 1
		ns.Waypoint:Update()
		assert(ar.wait._shown and ar.wait.period == 2.4, "a bordo: giro mais lento")
		route.leg = 3; route.legs[3].b = { c = 1, x = 950, y = 40 }
		T.PlayerWorld = function() return { c = 1, x = 900, y = 0 } end
		ns.Waypoint:Update()
		assert(not ar.wait._shown, "a animação ficou na perna a pé")
	end)
	T.Route, T.PlayerWorld = savedRoute, savedPW
	assert(ok, err)
end)
-- Navegação com rota (issue #108): cada perna aparece, ancorada só pelo topo, e a linha do tempo tem altura
step("TravelPanel route", function()
	local T = ns.Travel
	local savedRoute, savedPW = T.Route, T.PlayerWorld
	local a, b, c = { c = 0, x = 0, y = 0 }, { c = 0, x = 100, y = 0 }, { c = 0, x = 900, y = 0 }
	local route = { leg = 2, kind = "guide", dest = { label = "Silvermane Stalker" }, legs = {
		{ k = "walk", a = a, b = b, s = 20, name = "Revantusk Village" },
		{ k = "flight", a = b, b = c, s = 120, name = "Aerie Peak" },
		{ k = "walk", a = c, b = c, s = 10 } } }
	T.Route = function() return route end
	T.PlayerWorld = function() return { c = 0, x = 100, y = 0 } end
	local ok, err = pcall(ns.TravelPanel.Refresh)
	T.Route, T.PlayerWorld = savedRoute, savedPW
	assert(ok, err)
	local tl = _G.LodestarTravel.timeline
	assert(tl._h >= 3 * 46, "linha do tempo sem altura: " .. tl._h)
	local shown = 0
	for _, r in ipairs(tl._kids or {}) do
		if r._shown then
			shown = shown + 1
			local pts = table.concat(r._pts or {}, " ")
			assert(pts == "TOPLEFT TOPRIGHT", "perna " .. shown .. " ancorada por " .. pts)
			assert(r.text._text and r.text._text ~= "", "perna " .. shown .. " sem texto")
		end
	end
	assert(shown == 3, "pernas na linha do tempo: " .. shown)
	-- o cartão começa abaixo do cabeçalho (#113): da linha da zona e da coluna da direita, com e sem o Limpar
	local fr = _G.LodestarTravel
	local function topo()
		local a = fr.timelineCard._ptargs.TOPLEFT
		return -a[#a]
	end
	-- o fundo do cabeçalho pelos pontos que o build() pôs (não pelas contas do Refresh): mover um rótulo sem ajustar o
	-- Refresh tem de falhar aqui
	local function off(f, pt) local a = f._ptargs[pt]; return -a[#a] end
	local function fundo()
		local esq = off(fr.dest, "TOPLEFT") + fr.dest:GetStringHeight() + off(fr.destSub, "TOPLEFT")
			+ fr.destSub:GetStringHeight()
		local dir = off(fr.total, "TOPRIGHT") + fr.total:GetStringHeight() + off(fr.eta, "TOPRIGHT")
			+ fr.eta:GetStringHeight()
		if fr.clear:IsShown() then dir = dir + off(fr.clear, "TOPRIGHT") + fr.clear:GetHeight() end
		return math.max(esq, dir)
	end
	ns.TravelPanel.Refresh()
	assert(topo() >= fundo() + 8, ("cartão em cima do cabeçalho: %d < %d"):format(topo(), fundo() + 8))
	ns.Waypoint:SetCustom("The Hinterlands", 68, 52.9, "Silvermane Stalker")
	ns.TravelPanel.Refresh()
	assert(fr.clear:IsShown() and topo() >= fundo() + 8, "com o Limpar, o cartão em cima do cabeçalho")
	ns.Waypoint:ClearCustom()
	ns.TravelPanel.Refresh()
end)
-- paradas (#117): o serviço e a coordenada entram antes do destino, Shift vai direto, × tira, chegar ou abrir a janela
-- do serviço conclui, Limpar tira tudo. O mundo de mentira: o mapa vira um quadrado de 200 jd em volta do jogador.
step("TravelPanel stops", function()
	local T, D, WP = ns.Travel, ns.Destinations, ns.Waypoint
	local pw, w, shift = T.PlayerWorld, T.World, _G.IsShiftKeyDown
	local eu = { c = 0, x = -10500, y = 1050 }
	T.PlayerWorld = function() return { c = eu.c, x = eu.x, y = eu.y } end
	T.World = function(_, x, y) return { c = 0, x = -10500 + (x or 0) * 2, y = 1000 + (y or 0) * 2 } end
	local ok, err = pcall(function()
		local fr = _G.LodestarTravel
		if not fr:IsShown() then ns.TravelPanel:Toggle() end
		D:Set("manual", { zone = "Westfall", x = 60, y = 60, label = "Silvermane Stalker" })
		local function svc(kind)
			for _, b in ipairs(fr.svc._kids or {}) do if b.kind == kind then return b end end
		end
		-- clique num serviço: parada, o destino fica
		svc("repair"):GetScript("OnClick")(svc("repair"))
		local s1 = D:Stops()[1]
		assert(#D:Stops() == 1 and s1.service == "repair" and s1.short and s1.npc, "o serviço não virou parada")
		assert(D:Get("manual").label == "Silvermane Stalker", "a parada trocou o destino")
		local r = T:Route()
		assert(r and r.kind == "manual" and r.stops and #r.stops == 1, "a rota não passa pela parada")
		assert(r.stops[1].leg < #r.legs and r.legs[r.stops[1].leg].parada == s1, "a parada não fica antes do destino")
		-- coordenada no campo (Ir): segunda parada, depois da primeira
		fr.box:SetText("30 40")
		fr.box:GetScript("OnEnterPressed")(fr.box)
		local s2 = D:Stops()[2]
		assert(#D:Stops() == 2 and s2.x == 30 and s2.y == 40 and s2.label:find("30.0, 40.0", 1, true),
			"a coordenada não virou parada")
		r = T:Route()
		assert(#r.stops == 2 and r.stops[1].dest == s1 and r.stops[2].dest == s2 and r.stops[2].leg < #r.legs,
			"a rota não vai parada 1 -> parada 2 -> destino")
		-- a seta: a parada e o que vem depois
		local goal = WP:PickTarget()
		assert(goal and goal.text:find(ns.L.STOP_THEN:format(s1.short, s2.short), 1, true),
			"a seta não diz a parada e o depois: " .. tostring(goal and goal.text))
		-- a Navegação: a lista com o ×, o marcador na linha do tempo, o tempo total com o desvio
		ns.TravelPanel.Refresh()
		assert(fr.stops:IsShown() and fr.clear:IsShown(), "a lista de paradas (ou o Limpar) não apareceu")
		local rows, marks = {}, 0
		for _, k in ipairs(fr.stops._kids or {}) do if k._shown then rows[#rows + 1] = k end end
		assert(#rows == 2 and rows[1].text._text == s1.label and rows[1].remove, "a lista não mostra as duas paradas")
		for _, k in ipairs(fr.timeline._kids or {}) do
			if k._shown and k.text._text == s1.label then marks = marks + 1 end
			if k._shown then assert(table.concat(k._pts or {}, " ") == "TOPLEFT TOPRIGHT", "linha mal ancorada") end
		end
		assert(marks == 1, "o marcador da parada não está na linha do tempo")
		assert(fr.total._text ~= "" and fr.eta._text ~= "", "sem o tempo total")
		-- Shift: vai direto (troca o destino, sem parada nova), no serviço e na coordenada
		_G.IsShiftKeyDown = function() return true end
		svc("vendor"):GetScript("OnClick")(svc("vendor"))
		assert(#D:Stops() == 2 and D:Get("manual").service == "vendor", "Shift+clique no serviço não foi direto")
		fr.box:SetText("70 70")
		fr.box:GetScript("OnEnterPressed")(fr.box)
		assert(#D:Stops() == 2 and D:Get("manual").x == 70, "Shift+Ir não foi direto")
		_G.IsShiftKeyDown = shift
		-- o × tira a parada
		rows[2].remove:GetScript("OnClick")(rows[2].remove)
		assert(#D:Stops() == 1 and D:Stops()[1] == s1 and #T:Route().stops == 1, "o × não tirou a parada")
		-- a janela do serviço: longe da parada não conta; perto, conclui
		local ws = T.World(s1.zone, s1.x, s1.y, s1.map)
		eu.x, eu.y = ws.x + 400, ws.y
		ns.fire("MERCHANT_SHOW")
		assert(#D:Stops() == 1, "vendedor aberto longe concluiu a parada")
		eu.x, eu.y = ws.x + 5, ws.y
		ns.fire("BANKFRAME_OPENED")
		assert(#D:Stops() == 1, "o banco concluiu a parada do reparo")
		ns.fire("MERCHANT_SHOW")
		assert(#D:Stops() == 0, "abrir o vendedor perto da parada não a concluiu")
		r = T:Route()
		assert(r and r.kind == "manual" and #r.stops == 0, "sem a parada, a rota não seguiu para o destino")
		-- chegar perto conclui (o relógio da rota avança a perna) e a seta segue para o destino
		eu.x, eu.y = -10500, 1050
		WP:Way("20 20")
		local s3 = D:Stops()[1]
		assert(s3 and T:Route().stops[1].dest == s3, "/ls way não virou parada")
		local w3 = T.World(nil, 20, 20)
		eu.x, eu.y = w3.x + 3, w3.y
		local upd = ns.eventFrame:GetScript("OnUpdate")
		upd(ns.eventFrame, 1.01)
		assert(#D:Stops() == 0, "chegar à parada não a concluiu")
		r = T:Route()
		assert(r and #r.stops == 0 and r.kind == "manual", "depois da parada, a rota não foi ao destino")
		-- o corpo passa na frente: as paradas esperam e voltam ao reviver
		WP:Way("25 25")
		D:Set("corpse", { map = 1436, x = 10, y = 10, label = "corpo", red = true })
		r = T:Route()
		assert(r and r.kind == "corpse" and #r.stops == 0 and #D:Stops() == 1, "o corpo não passou na frente da parada")
		ns.TravelPanel.Refresh()
		assert(fr.stopsLabel._text == ns.L.V3_NAV_STOPS_WAIT, "a lista não diz que as paradas esperam o corpo")
		D:Clear("corpse")
		assert(#T:Route().stops == 1, "reviveu: a parada não voltou")
		-- Shift+clique no mapa: parada; em cima dela, tira
		WP:ClickDest(1436, 33, 33)
		assert(#D:Stops() == 2, "Shift+clique no mapa não pôs parada")
		WP:ClickDest(1436, 0, 0, { dest = D:Stops()[2], kind = "stop" })
		assert(#D:Stops() == 1, "Shift+clique em cima da parada não a tirou")
		-- Limpar: o destino manual e as paradas
		fr.clear:GetScript("OnClick")(fr.clear)
		assert(#D:Stops() == 0 and D:Get("manual") == nil, "Limpar não tirou tudo")
		-- fechar o guia leva as paradas junto (#93)
		WP:Way("40 40")
		ns.Viewer:Hide()
		assert(#D:Stops() == 0, "fechar o guia deixou a parada")
		ns.Viewer:Show()
	end)
	_G.IsShiftKeyDown = shift
	D:ClearStops(); D:Clear("manual"); D:Clear("corpse")
	T.PlayerWorld, T.World = pw, w
	assert(ok, err)
end)
for _, id in ipairs({ "home", "leveling", "dungeons", "gear", "collections", "legacy", "rares", "characters",
	"class", "dungeonguides", "reputation",
	"attunements", "events" }) do
	step("Hub:" .. id, function() ns.Hub:Show(id); ns.Hub:Show(id) end)
end
step("GuideMenu = Hub", function() assert(ns.GuideMenu == ns.Hub, "ns.GuideMenu aponta a Central") end)
step("Dungeons:GoToDoor", function() ns.Dungeons:GoToDoor(ns.dungeonData[3]) end)
step("Collections:GuideTo", function() ns.Collections:GuideTo(ns.Collections:Mounts()[2]) end)
-- issue #109: origens pelo texto (o tipo do jogo não vem), "Todas" uma vez cada, e a aba de brinquedos
step("Collections:sources+toys", function()
	ns.Hub:Show("collections")
	local pg = ns.Collections.Page.page
	local function rows()
		local out = {}
		for _, r in ipairs(pg.srcRows) do
			if r._shown then out[#out + 1] = r.fs._text .. "=" .. (r.count.text._text or "") end
		end
		return table.concat(out, " ")
	end
	pg.tabs.buttons[1]:GetScript("OnClick")()
	assert(rows() == ns.L.V3_ALL .. "=1 Vendedor=1", "origens das montarias: " .. rows())
	pg.tabs.buttons[3]:GetScript("OnClick")()
	assert(rows() == ns.L.V3_ALL .. "=1", "brinquedos: " .. rows())
	local toys = ns.Collections:Toys()
	assert(#toys == 2 and toys[1].collected and not toys[2].collected, "brinquedos lidos")
	assert(toyState.coll == false and toyState.unc == true and toyState.filter == "x", "filtros da caixa não voltaram")
	pg.tabs.buttons[1]:GetScript("OnClick")()
end)
step("Tidy", function() ns.QuestLogTidy:Toggle() end)
-- os passos à frente perto de você: o harness não tem mundo, então a distância é fixa e as linhas têm de aparecer
step("Nearby", function()
	local WP, dist = ns.Waypoint, ns.Waypoint.DistanceTo
	WP.DistanceTo = function() return 50 end
	ns.Nearby.Scan(); ns.Viewer:Refresh()
	WP.DistanceTo = dist
	assert(#ns.Nearby:List() > 0, "enquanto está aqui: nada à frente")
	assert(ns.Viewer:GetFrame().nearRows[1]:IsShown(), "enquanto está aqui: a linha não apareceu")
	-- fora do diário o jogo pode não saber o nome da quest: o rótulo usa o do guia
	local title = C_QuestLog.GetTitleForQuestID
	C_QuestLog.GetTitleForQuestID = function() return nil end
	for _, c in ipairs(ns.Nearby:List()) do
		local s = ns.Nearby.Label(c)
		assert(not s:find("Quest #") and not s:find("%d%d+$"), "rótulo sem o nome: " .. s)
	end
	C_QuestLog.GetTitleForQuestID = title
end)
-- fechar o guia some com a seta, mesmo com um destino avulso (issue #93)
step("Arrow", function()
	ns.Waypoint:SetCustom("Westfall", 50, 50, "x")
	assert(_G.LodestarArrow and _G.LodestarArrow:IsShown(), "seta não apareceu para o destino avulso")
	ns.Viewer:Hide()
	assert(not (_G.LodestarArrow and _G.LodestarArrow:IsShown()), "seta com o guia fechado")
	ns.Viewer:Show()
end)
step("TargetButton", function()
	ns.TargetButton.Apply()
	ns.Viewer:Hide(); ns.TargetButton.Apply()
	assert(not (_G.LodestarTarget and _G.LodestarTarget:IsShown()), "botão de alvo com o guia fechado")
	ns.Viewer:Show()
end)
-- em grupo: a contagem de quem também usa o Lodestar sob a quest do passo
step("PartySync", function()
	local q
	for _, g in ipairs(ns:GetStep().goals) do q = q or ns.QuestState.QuestOf(g) end
	assert(q, "passo sem quest")
	local inGroup, inParty = _G.IsInGroup, _G.UnitInParty
	_G.IsInGroup, _G.UnitInParty = function() return true end, function() return true end
	ns.fire("CHAT_MSG_ADDON", "LSParty", "LS3|S|" .. q .. ":x,153:3/15", "PARTY", "Ana Silva-Reino")
	local who = ns.PartySync:For(q)
	assert(#who == 1 and who[1].name == "Ana" and who[1].state == "x", "grupo: a mensagem não chegou")
	ns.PartySync.Broadcast(true); ns.Viewer:Refresh(); ns.PartySync:CanShare(q)
	_G.IsInGroup, _G.UnitInParty = inGroup, inParty
end)
step("Rares", function() ns.Rares:GoTo(ns.rareData["Elwynn Forest"][1], "Elwynn Forest") end)
-- os colecionáveis (issue #94): os guias gerados carregam, a página passa pelas abas, marcar fecha o passo, pinos
step("Secrets", function()
	local CO, back = ns.Collect, ns.currentGuide.key
	assert(ns.guides[CO.GUIDE_BOOKS] and ns.guides[CO.GUIDE_PETS], "guias dos livros e dos pets")
	local n = 0
	for key, g in pairs(ns.guides) do
		if key:find("^Collectibles/") then n = n + 1; assert(#ns.ensureParsed(g) > 0, "guia vazio: " .. key) end
	end
	assert(n >= 3, "poucos guias de colecionável")
	ns.Hub:Show("secrets")
	assert(ns.Hub:Current() == "secrets", "página Segredos")
	for _, v in ipairs({ "books", "quests" }) do
		for _, b in ipairs(ns.Collect.PageTabs().buttons) do if b.value == v then b:GetScript("OnClick")(b) end end
	end
	CO:OpenGuide(CO.GUIDE_BOOKS)
	assert(ns.currentGuide.key == CO.GUIDE_BOOKS, "o guia dos livros não abriu")
	local step = ns:GetStep()
	local goal = step.goals[1]
	local kind, id = goal.complete:match("collected%((%a+):([%w_]+)%)")
	assert(kind == "books" and not ns:IsStepComplete(step), "passo do livro já feito")
	CO:Mark(kind, id, true)
	assert(ns:IsStepComplete(step) and CO:IsDoneKey(kind, id), "marcar não fecha o passo")
	CO:Mark(kind, id, false)
	assert(#CO:MapPoints() > 0, "nada no mapa")
	CO.WorldUpdate(); CO.MiniUpdate()
	ns.char.manualPick = nil
	ns:LoadGuide(back, true)
end)
-- aceite e entrega automáticos valem para as quests do guia mais adiante, não só do passo (issue #100)
step("AutoAcceptAhead", function()
	local step = ns:GetStep()
	local here = {}
	for _, g in ipairs(step.goals) do if g.id then here[g.id] = true end end
	local qid
	for id in pairs(ns.GuideQuestGoals("accept")) do if not here[id] then qid = id; break end end
	assert(qid, "nenhuma quest mais adiante no guia")
	local saved = { _G.GetQuestID, _G.AcceptQuest, _G.IsShiftKeyDown }
	local accepted
	_G.GetQuestID, _G.AcceptQuest, _G.IsShiftKeyDown = function() return qid end, function() accepted = qid end,
		function() return false end
	ns.db.autoAccept = true
	ns.fire("QUEST_DETAIL")
	assert(accepted == qid, "não aceitou a quest que o guia pega mais adiante")
	accepted = nil
	_G.GetQuestID = function() return 999999 end
	ns.fire("QUEST_DETAIL")
	assert(accepted == nil, "aceitou quest fora do guia")
	_G.GetQuestID, _G.AcceptQuest, _G.IsShiftKeyDown = saved[1], saved[2], saved[3]
end)
-- diário de mascotes vazio (a interface de Coleções do jogo ainda não carregou): pede a carga e mostra os
-- companheiros que o personagem tem, em vez de "0 de 0" (issue #100)
step("PetsEmptyJournal", function()
	local PJ = _G.C_PetJournal
	local savedPJ, savedN, savedI, savedAddOns = PJ, _G.GetNumCompanions, _G.GetCompanionInfo, _G.C_AddOns
	local loaded
	_G.C_PetJournal = { GetNumPets = function() return 0, 0 end, GetPetInfoByIndex = function() end }
	_G.C_AddOns = { LoadAddOn = function(n) loaded = n end }
	_G.GetNumCompanions = function(kind) return kind == "CRITTER" and 2 or 0 end
	_G.GetCompanionInfo = function(_, i) return 100 + i, i == 1 and "Cat" or "Owl", 200 + i, 1 end
	local pets = ns.Collections:Pets()
	assert(#pets == 2 and pets[1].name == "Cat" and pets[1].collected, "diário vazio: sem os companheiros")
	assert(loaded == "Blizzard_Collections", "diário vazio: não pediu a carga das Coleções")
	_G.C_PetJournal, _G.GetNumCompanions, _G.GetCompanionInfo, _G.C_AddOns = savedPJ, savedN, savedI, savedAddOns
end)
-- gravar passagem (issue #99): anda, grava, a busca recebe, o relatório leva
step("Passages", function()
	local T, pw = ns.Travel, ns.Travel.PlayerWorld
	local pos = { c = 0, x = -635, y = -4720 }
	T.PlayerWorld = function() return { c = pos.c, x = pos.x, y = pos.y } end
	ns.db.passages = {}
	ns.Passages:Command("")
	assert(ns.Passages:Recording(), "não começou a gravar")
	local upd = ns.eventFrame and ns.eventFrame:GetScript("OnUpdate")
	for _ = 1, 10 do pos.x = pos.x + 5; if upd then upd(ns.eventFrame, 0.25) end end
	ns.Passages:Command("")
	T.PlayerWorld = pw
	assert(#ns.db.passages == 1, "passagem não foi gravada")
	assert(ns.terrain.passages and #ns.terrain.passages >= #(ns.passagesData or {}) + 1, "a busca não recebeu a passagem")
	local txt = ns.Report.ReportText(ns.Report.Context(), "x")
	assert(txt:find("Recorded passages"), "o relatório não leva as passagens")
	ns.Passages:Command("limpar")
	assert(#ns.db.passages == 0, "limpar não apagou")
end)
-- entrou no mundo (#114): a rota velha (com caminho que falhou) é refeita do zero alguns tiques depois, como fechar
-- e abrir o guia; o relatório leva o estado da rota
step("Fresh route after entering world", function()
	local T = ns.Travel
	local pw, w = T.PlayerWorld, T.World
	T.PlayerWorld = function() return { c = 0, x = -10500, y = 1050 } end
	T.World = function() return { c = 0, x = -10560, y = 1010 } end
	local ok, err = pcall(function()
		ns.Destinations:Set("manual", { zone = "Westfall", x = 50, y = 50, label = "X" })
		local r1 = T:Route()
		assert(r1 and r1.legs[1], "sem rota")
		r1.legs[1].path, r1.legs[1].pathFail, r1.legs[1].pathAt = false, true, { c = 0, x = -10500, y = 1050 }
		assert(T:Describe():find("fail"), "o relatório não mostra a falha do caminho")
		ns.fire("PLAYER_ENTERING_WORLD")
		local upd = ns.eventFrame:GetScript("OnUpdate")
		for _ = 1, 4 do upd(ns.eventFrame, 1.01) end
		local r2 = T:Route()
		assert(r2 and r2 ~= r1 and not r2.legs[1].pathFail, "a rota não foi refeita do zero ao entrar no mundo")
		assert(ns.Report.ReportText(ns.Report.Context(), "x"):find("Route: dest manual"), "relatório sem a rota")
	end)
	ns.Destinations:Clear("manual")
	T.PlayerWorld, T.World = pw, w
	assert(ok, err)
end)
step("Report", function() ns.Report:Show() end)
-- as Configurações moram na Central (issue #93): abrem lá, passam por todas as seções, e o tema recarrega
step("Settings", function()
	ns.Settings:Toggle()
	assert(ns.Hub:IsShown() and ns.Hub:Current() == "settings", "Configurações fora da Central")
	for i = 1, 6 do ns.Settings:SelectSection(i) end
	-- clicar no outro tema recarrega e grava; clicar no mesmo, não
	local reloads, theme = 0, ns.db.theme or "light"
	local other = theme == "dark" and "light" or "dark"
	local cui, rui = _G.C_UI, _G.ReloadUI
	_G.C_UI, _G.ReloadUI = { Reload = function() reloads = reloads + 1 end }, function() reloads = reloads + 1 end
	local function click(v)
		for _, b in ipairs(ns.Settings.themeSeg.buttons) do if b.value == v then b:GetScript("OnClick")(b) end end
	end
	click(theme)
	assert(reloads == 0, "o mesmo tema recarregou")
	click(other)
	assert(reloads == 1 and ns.db.theme == other, "trocar o tema não recarrega")
	ns.db.theme = theme
	_G.C_UI, _G.ReloadUI = cui, rui
	ns.Settings:Toggle()
	assert(not ns.Hub:IsShown(), "Configurações: o atalho de novo fecha")
end)
-- quest cinza (issue #93): no 60, as do Westfall saem do guia; no 5, nenhuma
-- guia renomeado (issue #97): no empate de sobreposição, a faixa que começa mais perto da velha, sempre a mesma
step("RenamedGuide", function()
	local keys = { ["Leveling/Alliance/Alterac Mountains (34-34)"] = 1, ["Leveling/Alliance/Alterac Mountains (40-53)"] = 1,
		["Leveling/Alliance/Wetlands (30-33)"] = 1 }
	for _ = 1, 5 do
		assert(ns.RenamedGuideKey("Leveling/Alliance/Alterac Mountains (34-40)", keys)
			== "Leveling/Alliance/Alterac Mountains (34-34)", "renomeado: escolheu a faixa errada")
	end
	assert(ns.RenamedGuideKey("Leveling/Alliance/Silverpine Forest (11-20)",
		{ ["Leveling/Alliance/Silverpine Forest (11-18)"] = 1 }) == "Leveling/Alliance/Silverpine Forest (11-18)")
	assert(ns.RenamedGuideKey("Leveling/Alliance/Duskwood (20-25)", keys) == nil, "renomeado: outra zona")
end)
step("Grey", function()
	local lvl = _G.UnitLevel
	_G.UnitQuestTrivialLevelRange = function() return 3 end
	_G.UnitLevel = function() return 60 end
	ns.QuestState:RefreshGrey(60)
	assert(next(ns.greySkip) ~= nil, "cinza: nada saiu no 60")
	ns.Viewer:Refresh()
	_G.UnitLevel = function() return 5 end
	ns.QuestState:RefreshGrey(5)
	assert(next(ns.greySkip) == nil, "cinza: no 5 ainda tinha quest fora")
	_G.UnitLevel = lvl
	ns.QuestState:RefreshGrey(18)
	assert(ns:BestGuideForPlayer(), "escolha automática do guia")
end)
step("Menu", function() ns.UI.Menu(ns.Viewer:GetFrame(), { { "a", noop }, { "b", noop } }) end)
step("events", function()
	for _, ev in ipairs({ "QUEST_LOG_UPDATE", "BAG_UPDATE_DELAYED", "PLAYER_LEVEL_UP", "ZONE_CHANGED_NEW_AREA",
		"PLAYER_EQUIPMENT_CHANGED", "QUEST_ACCEPTED", "QUEST_REMOVED", "GET_ITEM_INFO_RECEIVED" }) do
		ns.fire(ev, 1)
	end
end)
-- os tickers (seta, distâncias, tempo, painel de viagem): alguns quadros
step("tickers", function()
	local upd = ns.eventFrame and ns.eventFrame:GetScript("OnUpdate")
	for _ = 1, 5 do if upd then upd(ns.eventFrame, 1.1) end end
end)
io.write(("ok: interface montada no tema %s\n"):format(ns.UI.theme))
