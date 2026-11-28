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
function M:CreateLine() return new("Line", nil, self) end
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
-- a altura do texto segue a fonte e quebra em linhas como no jogo (~68 letras por linha na largura dos painéis)
function M:SetFont(_, size) self._fs = size end
function M:GetStringHeight()
	local n = #(self._text or "")
	return (self._fs or 14) * (n > 70 and math.ceil(n / 68) or 1)
end
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
function M:SetAttribute(k, v) self._attr = self._attr or {}; self._attr[k] = v end
function M:GetAttribute(k) return self._attr and self._attr[k] end
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
-- o que sai em mensagem de addon fica em _G._sent quando um passo quer conferir
G.C_ChatInfo = { RegisterAddonMessagePrefix = noop,
	SendAddonMessage = function(p, m, c) if G._sent then G._sent[#G._sent + 1] = { p, m, c } end end }
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
-- partyTell = false: o padrão antigo gravado num save de antes do #127 (vira ligado uma vez no ADDON_LOADED)
_G.LodestarDB = { theme = THEME, debug = true, partyTell = false }   -- debug: o erro de ticker e de página vai ao "chat"
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
	local pw, w, shift, repair = T.PlayerWorld, T.World, _G.IsShiftKeyDown, _G.CanMerchantRepair
	local eu = { c = 0, x = -10500, y = 1050 }
	UIParent:SetHeight(1080)              -- tela alta: a linha do tempo inteira cabe (a de 768 é o passo seguinte)
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
		-- o mesmo serviço de novo: nada entra e não se avisa como se tivesse entrado (#117)
		local foi, msg = ns.Services:GoTo("repair", nil, true)
		assert(not foi and #D:Stops() == 1 and msg == ns.L.STOP_ALREADY:format(s1.label),
			"o serviço repetido virou parada (ou avisou que entrou): " .. tostring(msg))
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
		_G.CanMerchantRepair = function() return false end
		ns.fire("MERCHANT_SHOW")
		assert(#D:Stops() == 1, "o vendedor que não conserta concluiu a parada do reparo")
		_G.CanMerchantRepair = function() return true end
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
		-- chegar à parada: a rota nova herda o caminho já calculado do trecho seguinte (não refaz a busca do zero)
		do
			eu.x, eu.y = -10500, 1050
			WP:Way("20 20")
			local rt = T:Route()
			local marca = { 1, 2, 3 }
			rt.legs[2].path, rt.legs[2].pathFail, rt.legs[2].pathAt = false, true, marca
			local w1 = T.World(nil, 20, 20)
			eu.x, eu.y = w1.x + 3, w1.y
			upd(ns.eventFrame, 1.01)
			local nr = T:Route()
			assert(#D:Stops() == 0 and nr and nr.legs[1].pathAt == marca, "depois da parada, o caminho seguinte foi perdido")
			D:ClearStops()
		end
		-- passar antes pela segunda parada também a conclui (#117): ela sai, a primeira fica e a rota volta a ela
		eu.x, eu.y = -10500, 1050
		WP:Way("20 20"); WP:Way("35 35")
		local p1 = D:Stops()[1]
		local w2 = T.World(nil, 35, 35)
		eu.x, eu.y = w2.x + 4, w2.y
		upd(ns.eventFrame, 1.01)
		assert(#D:Stops() == 1 and D:Stops()[1] == p1, "passar pela segunda parada antes da primeira não a concluiu")
		r = T:Route()
		assert(r and #r.stops == 1 and r.stops[1].dest == p1, "a rota não voltou para a primeira parada")
		-- em voo (ou a bordo), mexer na fila não refaz a rota do meio do ar: ela se refaz ao pousar (#117)
		_G.UnitOnTaxi = function() return true end
		local noAr = T:Route()
		WP:Way("45 50")
		assert(#D:Stops() == 2 and T:Route() == noAr and #noAr.stops == 1, "em voo, a parada nova refez a rota")
		upd(ns.eventFrame, 1.01)
		assert(T:Route() == noAr, "em voo, o relógio refez a rota")
		_G.UnitOnTaxi = nil
		upd(ns.eventFrame, 1.01)
		r = T:Route()
		assert(r ~= noAr and #r.stops == 2, "pousou e a rota não passou pela parada nova")
		-- zona que não se conhece: a parada não entra (nem trava a rota) e o chat diz por quê; a caixa não importa
		local fake, say, said = T.World, _G.print, nil
		T.World = function(z, ...) if z == "Lugar Nenhum" then return nil end return fake(z, ...) end
		_G.print = function(...) said = table.concat({ ... }, " "); say(...) end
		local entrou, disse = WP:Way("45 30 Lugar Nenhum")
		_G.print, T.World = say, fake
		assert(not entrou and disse and #D:Stops() == 2 and said and said:find("Lugar Nenhum", 1, true),
			"a parada fora do mapa entrou (ou o chat não disse): " .. tostring(said))
		assert(WP.ZoneKey("westfall") == "Westfall", "a zona digitada em minúsculas não achou o mapa")
		D:ClearStops()
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
	_G.IsShiftKeyDown, _G.CanMerchantRepair, _G.UnitOnTaxi = shift, repair, nil
	UIParent:SetHeight(0)
	D:ClearStops(); D:Clear("manual"); D:Clear("corpse")
	T.PlayerWorld, T.World = pw, w
	assert(ok, err)
end)
-- altura da Navegação (#117): muitas paradas e pernas encolhem a lista (até 4 e "+N a mais") e a linha do tempo (o
-- trecho atual, "+N" e o destino), e a janela cabe numa tela de 768. Antes: 6 paradas e 7 pernas davam 1120 px e o
-- 13º item (a perna até o destino) sumia calado.
step("TravelPanel height", function()
	local T, D = ns.Travel, ns.Destinations
	local savedRoute, savedPW = T.Route, T.PlayerWorld
	local fr = _G.LodestarTravel
	if not fr:IsShown() then ns.TravelPanel:Toggle() end
	UIParent:SetHeight(768)
	local route
	T.Route = function() return route end
	T.PlayerWorld = function() return { c = 0, x = 0, y = 0 } end
	-- nStops paradas, uma em cada uma das primeiras pernas a pé; nLegs pernas (a pé e voo alternados depois delas)
	local function monta(nStops, nLegs, atual)
		D:ClearStops()
		local legs, stops, a = {}, {}, { c = 0, x = 0, y = 0 }
		for i = 1, nLegs do
			local b = { c = 0, x = i * 100, y = 0 }
			legs[i] = { k = (i > nStops and (i - nStops) % 2 == 0) and "flight" or "walk", a = a, b = b, s = 30,
				name = "Voo " .. i }
			a = b
		end
		legs[nLegs].k = "walk"                                  -- a última perna chega a pé ao destino
		for j = 1, nStops do
			D:AddStop({ zone = "Westfall", x = j, y = j, label = "Parada " .. j, short = "P" .. j })
			local sj = D:Stops()[j]
			legs[j].parada = sj
			stops[j] = { leg = j, dest = sj }
		end
		route = { leg = atual or 1, legs = legs, stops = stops, kind = "manual", dest = { label = "Destino final" } }
		ns.TravelPanel.Refresh()
	end
	-- as linhas mostradas, de cima para baixo (a ordem de criação não é a da tela: o "+N" nasce depois)
	local function visiveis()
		local out = {}
		for _, k in ipairs(fr.timeline._kids or {}) do if k._shown then out[#out + 1] = k end end
		local function topo(k) local a = k._ptargs.TOPLEFT; return -a[#a] end
		table.sort(out, function(x, y) return topo(x) < topo(y) end)
		return out
	end
	local ok, err = pcall(function()
		for _, caso in ipairs({ { 6, 7 }, { 2, 3 }, { 0, 9 }, { 1, 3 }, { 1, 5 }, { 2, 6 }, { 6, 7, 3 }, { 9, 12 } }) do
			local nS, nL, atual = caso[1], caso[2], caso[3]
			monta(nS, nL, atual)
			local nome = ("%d paradas, %d pernas%s"):format(nS, nL, atual and (", na perna " .. atual) or "")
			assert(fr._h <= 768 - 64, nome .. ": a janela passou da tela (" .. fr._h .. " px)")
			local vis = visiveis()
			local fim = vis[#vis]
			assert(fim and fim.text._text == "Destino final", nome .. ": o destino final sumiu da linha do tempo ("
				.. tostring(fim and fim.text._text) .. ")")
			local itens = nL + nS - (atual and (atual - 1) + math.min(nS, atual - 1) or 0)
			if #vis < itens then
				local mais = false
				for _, k in ipairs(vis) do
					if k.text._text and k.text._text:find("^%+%d") then mais = true end
					assert(table.concat(k._pts or {}, " ") == "TOPLEFT TOPRIGHT", nome .. ": linha mal ancorada")
				end
				assert(mais, nome .. ": a linha do tempo encolheu sem o \"+N\"")
				for _, k in ipairs(vis) do
					assert(not (k.text._text or ""):find("^%+1 "), nome .. ": \"+1\" no lugar de um item só")
				end
			end
			local linhas = 0
			for _, k in ipairs(fr.stops._kids or {}) do if k._shown and k.remove then linhas = linhas + 1 end end
			assert(linhas <= 4 and (nS == 0 or linhas >= 1), nome .. ": paradas na lista: " .. linhas)
			if linhas < nS then
				assert(fr.stopsMore:IsShown() and fr.stopsMore._text == ns.L.V3_NAV_STOPS_MORE:format(nS - linhas),
					nome .. ": a lista encolheu sem o \"+N a mais\"")
			else
				assert(not fr.stopsMore:IsShown(), nome .. ": \"+N a mais\" com todas as paradas na lista")
			end
		end
		-- poucas: tudo aparece, como antes (as feitas também)
		monta(1, 2)
		assert(#visiveis() == 3 and not fr.stopsMore:IsShown(), "1 parada e 2 pernas: a linha do tempo encolheu")
	end)
	T.Route, T.PlayerWorld = savedRoute, savedPW
	route = nil
	D:ClearStops()
	UIParent:SetHeight(0)
	ns.TravelPanel.Refresh()
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
-- a marca vai na macro do clique (#119: o SetRaidTarget é protegido): limpa o alvo, mira e marca com o ~ (só sem
-- marca); a macro roda ao soltar, e o PostClick da borda de apertar não mexe nela; em combate só mira; desligada, só mira
step("TargetButton mark", function()
	local sGet, sSet = ns.GetStep, _G.SetRaidTarget
	local chamou = false
	_G.SetRaidTarget = function() chamou = true end
	local passo = { goals = { { verb = "kill", id = 7777, text = "Javali Teste" } } }
	ns.GetStep = function() return passo end
	local ok, err = pcall(function()
		ns.TargetButton.Apply()
		local b = _G.LodestarTarget
		local marca = "/cleartarget\n/targetexact Javali Teste\n/tm [@target,exists,nodead] ~8"
		assert(b:GetAttribute("macrotext") == marca, "macro sem a marca: " .. tostring(b:GetAttribute("macrotext")))
		assert(b:GetAttribute("useOnKeyDown") == false, "a macro não roda na borda de soltar")
		b:GetScript("PostClick")(b, "LeftButton", true)      -- apertar: antes da macro, não mexe
		assert(b:GetAttribute("macrotext") == marca, "o PostClick de apertar tirou a marca antes da macro")
		b:GetScript("PostClick")(b, "LeftButton", false)
		assert(b:GetAttribute("macrotext") == marca, "um alvo só: a macro muda depois do clique")
		assert(not chamou, "chamou o SetRaidTarget (protegido) fora da macro")
		ns.fire("PLAYER_REGEN_DISABLED")
		assert(b:GetAttribute("macrotext") == "/targetexact Javali Teste", "em combate a macro ainda limpa/marca")
		ns.TargetButton.Apply()
		ns.db.markTarget = false
		ns.TargetButton.Apply()
		assert(b:GetAttribute("macrotext") == "/targetexact Javali Teste", "marca desligada e a macro marca")
		ns.db.markTarget = nil
	end)
	ns.GetStep, _G.SetRaidTarget = sGet, sSet
	ns.TargetButton.Apply()
	assert(ok, err)
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
		local upd = ns.eventFrame:GetScript("OnUpdate")
		ns.Destinations:Set("manual", { zone = "Westfall", x = 50, y = 50, label = "X" })
		upd(ns.eventFrame, 1.01)                           -- o jogador já está aqui (sem salto no tique seguinte, #123)
		local r1 = T:Route()
		assert(r1 and r1.legs[1], "sem rota")
		r1.legs[1].path, r1.legs[1].pathFail, r1.legs[1].pathAt = false, true, { c = 0, x = -10500, y = 1050 }
		assert(T:Describe():find("fail"), "o relatório não mostra a falha do caminho")
		-- tela de carregamento comum (masmorra, pedra, barco entre continentes): não refaz
		ns.fire("PLAYER_ENTERING_WORLD", false, false); ns.fire("LOADING_SCREEN_DISABLED")
		for _ = 1, 4 do upd(ns.eventFrame, 1.01) end
		assert(T:Route() == r1, "refez a rota numa tela de carregamento comum")
		-- login: refaz do zero
		ns.fire("PLAYER_ENTERING_WORLD", true, false)
		for _ = 1, 4 do upd(ns.eventFrame, 1.01) end
		local r2 = T:Route()
		assert(r2 and r2 ~= r1 and not r2.legs[1].pathFail, "a rota não foi refeita do zero ao entrar no mundo")
		-- /reload a bordo: a perna de barco fica
		r2.legs[1].k, r2.legs[1].boarded = "ship", 1
		ns.fire("PLAYER_ENTERING_WORLD", false, true)
		for _ = 1, 4 do upd(ns.eventFrame, 1.01) end
		assert(T:Route() == r2, "refez a rota a bordo")
		r2.legs[1].k, r2.legs[1].boarded = "walk", nil
		assert(ns.Report.ReportText(ns.Report.Context(), "x"):find("Route: dest manual"), "relatório sem a rota")
	end)
	ns.Destinations:Clear("manual")
	T.PlayerWorld, T.World = pw, w
	assert(ok, err)
end)
-- horário dividido com a guilda e o grupo (#116): a observação própria sai; a de outro entra; o eco e o lixo não;
-- a pergunta tem resposta
step("TransitShare", function()
	local sent, guild, after = {}, _G.IsInGuild, _G.C_Timer.After
	_G._sent, _G.IsInGuild = sent, function() return true end
	_G.C_Timer.After = function(_, f) f() end
	local ok, err = pcall(function()
		local ship = ns.travel.ships[1]
		local now = GetServerTime()
		local store = ns.Travel:Transit()
		store[ship.id] = nil
		ns.Travel:Observe(ship.id, 1, "arr", now - 50)
		local foi = false
		for _, m in ipairs(sent) do
			if m[1] == "LSTransit" and m[3] == "GUILD" and m[2]:find("^o|" .. ship.id .. "|1|a|") then foi = true end
		end
		assert(foi, "a observação própria não foi para a guilda")
		assert(store[ship.id].own == now - 50, "a própria não ficou marcada")
		store[ship.id] = nil
		ns.fire("CHAT_MSG_ADDON", "LSTransit", ("o|%d|2|d|%d"):format(ship.id, now - 30), "GUILD", "Outro")
		assert(store[ship.id] and store[ship.id].last == now - 30 and not store[ship.id].own,
			"a observação da guilda não entrou")
		ns.fire("CHAT_MSG_ADDON", "LSTransit", ("o|%d|1|a|%d"):format(ship.id, now - 10), "GUILD", "Teste")
		assert(store[ship.id].last == now - 30, "o eco da própria mensagem entrou")
		ns.fire("CHAT_MSG_ADDON", "LSTransit", ("o|%d|1|a|%d"):format(ship.id, now - 10), "WHISPER", "Outro")
		assert(store[ship.id].last == now - 30, "sussurro entrou (só guilda e grupo)")
		ns.fire("CHAT_MSG_ADDON", "LSTransit", ("o|%d|1|a|%d"):format(ship.id, now - 10), "GUILD", "Alguem-OutroReino")
		assert(store[ship.id].last == now - 30, "horário de outro reino entrou")
		ns.fire("CHAT_MSG_ADDON", "LSTransit", "o|999999|1|a|5", "GUILD", "Outro")
		assert(store[999999] == nil, "transporte desconhecido entrou")
		-- de fora só move a fase: o período aprendido fica
		store[ship.id].T = 999
		ns.fire("CHAT_MSG_ADDON", "LSTransit", ("o|%d|1|a|%d"):format(ship.id, now - 20), "GUILD", "Outro")
		assert(store[ship.id].last == now - 20 and store[ship.id].T == 999, "a de fora mexeu no período aprendido")
		store[ship.id].T = nil
		-- pergunta sem nada a dizer não trava o canal: a seguinte, com horário, tem resposta (numa mensagem só)
		local guarda = store[ship.id]
		for _, sh in ipairs(ns.travel.ships) do store[sh.id] = nil end
		local antes = #sent
		ns.fire("CHAT_MSG_ADDON", "LSTransit", "q", "GUILD", "Outro")
		assert(#sent == antes, "respondeu sem ter horário")
		store[ship.id] = guarda
		ns.fire("CHAT_MSG_ADDON", "LSTransit", "q", "GUILD", "Outro")
		local resp = 0
		for i = antes + 1, #sent do
			if sent[i][3] == "GUILD" and sent[i][2]:find(("%d|1|a|%d"):format(ship.id, now - 20), 1, true) then
				resp = resp + 1
			end
		end
		assert(resp == 1, "a pergunta ficou sem resposta (ou foi em várias)")
		-- ao entrar num grupo, pergunta só ao grupo
		local ig = _G.IsInGroup
		_G.IsInGroup = function() return true end
		antes = #sent
		ns.TransitShare:Ask(true)
		_G.IsInGroup = ig
		for i = antes + 1, #sent do assert(sent[i][3] ~= "GUILD", "a pergunta do grupo acordou a guilda") end
		assert(#sent > antes, "a pergunta do grupo não saiu")
		ns.db.transitShare = false
		antes = #sent
		ns.Travel:Observe(ship.id, 1, "arr", now - 5)
		assert(#sent == antes, "desligado e ainda manda")
		ns.db.transitShare = nil
	end)
	_G._sent, _G.IsInGuild, _G.C_Timer.After = nil, guild, after
	assert(ok, err)
end)
-- o que o guia não cita (#118): quest pronta com a entrega perto e livros na cidade do bibliotecário — na lista do
-- "Enquanto está aqui" e um aviso só
step("Nearby off-guide", function()
	local N, WP, TP, QL = ns.Nearby, ns.Waypoint, ns.TravelPlanner, _G.C_QuestLog
	local sDist, sIn, sNum, sInfo, sComp = WP.DistanceTo, TP.InZone, QL.GetNumQuestLogEntries, QL.GetInfo, QL.IsComplete
	local sCount, sShow = ns.ItemCount, ns.Toast.Show
	local toasts = {}
	local ok, err = pcall(function()
		local gq = N.Excluded(N.GuideTurnins(ns.currentGuide.steps, function(g) return ns.QuestState.QuestOf(g) end),
			ns.char.currentStep, ns.char.skipped)
		local fora
		for q in pairs(ns.questEnd) do if not gq[q] then fora = q; break end end
		local livro = ns.Collect:Lists().books[1]
		assert(fora and livro, "sem quest fora do guia ou sem livro nos dados")
		-- só os pontos de fora do guia ficam perto (os do guia têm verbo): o limite de 3 linhas não os esconde
		WP.DistanceTo = function(_, g) return (g and not g.verb) and 40 or nil end
		TP.InZone = function() return true end
		QL.GetNumQuestLogEntries = function() return 1 end
		QL.GetInfo = function() return { questID = fora } end
		QL.IsComplete = function(q) return q == fora end
		ns.ItemCount = function(id) return id == livro.item and 1 or 0 end
		ns.Toast.Show = function(_, t) toasts[#toasts + 1] = t end
		N.Scan()
		local temQ, temL = false, false
		for _, c in ipairs(N:List()) do
			if c.offGuide and c.q == fora then temQ = true end
			if c.kind == "books" and c.n == 1 then temL = true end
		end
		assert(temQ, "a quest pronta fora do guia não apareceu")
		assert(temL, "os livros na cidade do bibliotecário não apareceram")
		assert(#toasts == 2, "avisos: " .. #toasts)
		N.Scan()
		assert(#toasts == 2, "avisou de novo")
		ns.Viewer:Refresh()
	end)
	WP.DistanceTo, TP.InZone, QL.GetNumQuestLogEntries, QL.GetInfo, QL.IsComplete = sDist, sIn, sNum, sInfo, sComp
	ns.ItemCount, ns.Toast.Show = sCount, sShow
	ns.Nearby.Scan()
	assert(ok, err)
end)
-- áreas de nascimento (#121): o passo com um mob em 3+ áreas da mesma zona desenha as manchas no mapa aberto; a seta
-- fica no ponto do guia (onde quer que o jogador esteja), o clique leva às outras áreas (e dá a volta, com o tooltip
-- seguindo), o arrasto não; goal sem `goto` não vira alvo; desligado, o mapa limpa. O mundo de mentira: a zona vira
-- um quadrado de 1000 jd.
step("SpawnAreas", function()
	local SA, D, T, WP, TP = ns.SpawnAreas, ns.Destinations, ns.Travel, ns.Waypoint, ns.TravelPlanner
	local ids = {}
	for q in pairs(ns.spawnQuest) do ids[#ids + 1] = q end
	table.sort(ids)
	local qid, obj, zone, mesma
	for _, q in ipairs(ids) do
		local o = SA.For(q)[1]
		local z = o.areas[1] and o.areas[1].zone
		mesma = {}
		for _, a in ipairs(o.areas) do if a.zone == z then mesma[#mesma + 1] = a end end
		if o.kind == "c" and #mesma >= 3 and ns.zoneUiMap[z] then qid, obj, zone = q, o, z; break end
	end
	assert(qid, "sem quest com um mob em 3 áreas da mesma zona")
	-- o guia manda à área maior; o jogador está em cima da última (a mais perto dele): a seta fica no guia
	local alvoGuia, longe = mesma[1], mesma[#mesma]
	local goal = { verb = "kill", id = obj.id, text = "Mob Teste", q = { id = qid },
		goto_ = { zone = zone, x = alvoGuia.x, y = alvoGuia.y } }
	local passo = { goals = { goal } }
	local sGet, sPW, sW, sRoute, sDist, sIn = ns.GetStep, T.PlayerWorld, T.World, T.Route, WP.DistanceTo, TP.InZone
	local sGrey, sOwner, sAdd, canvas = ns.greySkip, GameTooltip.GetOwner, GameTooltip.AddLine, CreateFrame("Frame")
	canvas:SetSize(1000, 667)
	ns.GetStep = function() return passo end
	ns.greySkip = {}
	T.World = function(_, x, y) return { c = 0, x = (x or 0) * 10, y = (y or 0) * 10 } end
	T.PlayerWorld = function() return { c = 0, x = longe.x * 10, y = longe.y * 10 } end
	T.Route = function() return nil end
	WP.DistanceTo = function() return 50, 1, 1 end
	TP.InZone = function() return true end
	WorldMapFrame.GetMapID = function() return ns.zoneUiMap[zone] end
	WorldMapFrame.GetCanvas = function() return canvas end
	WorldMapFrame:Show()
	D:ClearStops(); D:Clear("manual")
	ns.db.arrow.enabled, ns.db.spawnAreas = true, true
	local ok, err = pcall(function()
		local alvo = D.GuideTarget()
		assert(alvo and alvo.x == goal.goto_.x and alvo.y == goal.goto_.y and alvo.goal.goto_ == goal.goto_,
			"a seta saiu do ponto do guia")
		assert(alvo.area == alvoGuia, "o ponto do guia não ficou com a área dele")
		local n = #mesma                       -- as da zona do passo
		assert(alvo.label:find("1/" .. n, 1, true), "o rótulo não diz a área: " .. tostring(alvo.label))
		SA.Update()
		local nF, nL = SA.Drawn()
		assert(_G.LodestarSpawnMap and _G.LodestarSpawnMap:IsShown() and nF > 0 and nL > 0,
			("manchas no mapa: %d faixas, %d linhas"):format(nF, nL))
		ns.Waypoint:Update()
		local ar = _G.LodestarArrow
		assert(ar and ar:IsShown() and ar.name._text:find("1/" .. n, 1, true),
			"a seta não diz a área: " .. tostring(ar and ar.name._text))
		-- arrastar não troca a área
		ar:GetScript("OnMouseDown")(ar, "LeftButton")
		ar:GetScript("OnDragStart")(ar)
		ar:GetScript("OnDragStop")(ar)
		ar:GetScript("OnMouseUp")(ar, "LeftButton")
		assert(D.GuideTarget().area == alvoGuia, "o arrasto trocou a área")
		-- clicar leva às outras áreas da zona, e dá a volta; o tooltip aberto segue
		local dica
		GameTooltip.GetOwner = function() return ar end
		GameTooltip.AddLine = function(_, t) dica = t end
		local vistas = { [alvoGuia] = true }
		for i = 2, n do
			ar:GetScript("OnMouseDown")(ar, "LeftButton")
			ar:GetScript("OnMouseUp")(ar, "LeftButton")
			local a = D.GuideTarget().area
			assert(a and not vistas[a] and a.zone == zone, "o clique " .. (i - 1) .. " não foi a uma área nova da zona")
			assert(D.GuideTarget().x == a.x, "a seta não foi ao ponto da área")
			vistas[a] = true
			assert(ar.name._text:find(i .. "/" .. n, 1, true), "a seta não seguiu: " .. tostring(ar.name._text))
			assert(dica and dica:find(i .. " de " .. n, 1, true), "o tooltip ficou na área de antes: " .. tostring(dica))
		end
		ar:GetScript("OnMouseDown")(ar, "LeftButton")
		ar:GetScript("OnMouseUp")(ar, "LeftButton")
		assert(D.GuideTarget().x == goal.goto_.x and D.GuideTarget().area == alvoGuia,
			"depois da última, a volta ao ponto do guia")
		GameTooltip.GetOwner, GameTooltip.AddLine = sOwner, sAdd
		assert(SA.ArrowHint(), "sem a dica do clique")
		ar:GetScript("OnEnter")(ar); ar:GetScript("OnLeave")(ar)
		local perto = SA.NearPlayer({ qid }, 30)
		assert(perto[1] and perto[1].area == longe and perto[1].d == 0 and perto[1].q == qid and perto[1].obj == 1,
			"perto do jogador (#122): a área onde ele está")
		-- o goal sem goto, mesmo com área, não vira alvo; o mapa ainda desenha as áreas dele
		local semGoto = { verb = "kill", id = obj.id, text = "Mob Teste", q = { id = qid } }
		passo.goals = { semGoto }
		assert(D.GuideTarget() == nil, "o goal sem goto ganhou um alvo")
		SA.Update()
		assert(_G.LodestarSpawnMap:IsShown() and SA.Drawn() > 0, "o goal sem goto não desenhou as áreas")
		passo.goals = { goal }
		-- desligado, o mapa limpa e a seta fica no ponto do passo (sem a volta)
		ns.db.spawnAreas = false
		SA.Refresh(); SA.Update()
		assert(not _G.LodestarSpawnMap:IsShown(), "desligado e a mancha ficou no mapa")
		local g = D.GuideTarget()
		assert(g and not g.spawn and g.x == goal.goto_.x and g.goal == goal, "desligado e a seta não voltou ao passo")
		assert(not SA.Click(), "desligado, o clique fez algo")
	end)
	ns.db.spawnAreas = true
	ns.GetStep, T.PlayerWorld, T.World, T.Route, WP.DistanceTo, TP.InZone = sGet, sPW, sW, sRoute, sDist, sIn
	ns.greySkip, GameTooltip.GetOwner, GameTooltip.AddLine = sGrey, sOwner, sAdd
	WorldMapFrame.GetMapID, WorldMapFrame.GetCanvas = nil, nil
	SA.Refresh(); SA.Update()
	T:Replan(true)
	assert(ok, err)
end)
-- nesta área (#122): um diário de mentira com 3 quests e 5 objetivos numa área só (o jogador dentro de todas): os
-- abertos aparecem, os da quest do passo primeiro, com a contagem; o feito não; o do cartão do passo não repete; o
-- clique guia à área; fora da área a lista esvazia; desligado, some. O mundo: a zona vira um quadrado de 1000 jd.
step("AreaGoals", function()
	local AG, SA, D, T, TP, WP, QL = ns.AreaGoals, ns.SpawnAreas, ns.Destinations, ns.Travel, ns.TravelPlanner,
		ns.Waypoint, _G.C_QuestLog
	local DIG = "0123456789abcdefghijklmnopqrstuvwxyz"
	local function b36(v)
		v = math.floor(v + 0.5)
		local hi = math.floor(v / 36)
		return DIG:sub(hi + 1, hi + 1) .. DIG:sub(v % 36 + 1, v % 36 + 1)
	end
	local zi
	for i, z in ipairs(ns.spawnZones) do if z == "Westfall" then zi = i end end
	assert(zi, "Westfall fora do SpawnAreas")
	local function area(cx, cy, hull)
		local t = b36(zi) .. b36(cx * 10) .. b36(cy * 10) .. b36(6)
		for _, v in ipairs(hull) do t = t .. b36(v * 10) end
		return t
	end
	local sq = function(x0, y0, x1, y1) return { x0, y0, x1, y0, x1, y1, x0, y1 } end
	local A, B, C = 990001, 990002, 990003
	-- A: dois mobs (o 1º também nasce longe, e numa área vizinha a leste); B: o objeto e o item na ordem do banco (o
	-- diário tem o item antes); C: um mob
	ns.spawnQuest[A] = { "c9001;" .. area(52, 48, sq(45, 45, 55, 55)) .. ";" .. area(80, 80, sq(78, 78, 82, 82))
		.. ";" .. area(58, 50, sq(55.5, 45, 62, 55)), "c9002;" .. area(51, 50, sq(48, 46, 58, 56)) }
	ns.spawnQuest[B] = { "o9003;" .. area(50, 50, sq(44, 44, 56, 56)), "i9004;" .. area(49, 51, sq(46, 47, 54, 57)) }
	ns.spawnQuest[C] = { "c9005;" .. area(47, 52, { 40, 40, 60, 40, 50, 60 }) }
	local function ob(t, text, have, need, done)
		return { type = t, text = text, numFulfilled = have, numRequired = need, finished = done or false }
	end
	local log = {
		[A] = { ob("monster", "Lobo Alfa slain: 2/10", 2, 10), ob("monster", "Lobo Beta slain: 0/6", 0, 6) },
		[B] = { ob("item", "Caixa de suprimentos: 2/8", 2, 8), ob("object", "Totem: 1/1", 1, 1, true) },
		[C] = { ob("monster", "Coruja Selvagem slain: 0/20", 0, 20) },
	}
	local ids = { A, B, C }
	local passo = { goals = { { verb = "goto_", text = "Lá", q = { id = A } } } }
	local sGet, sPW, sW, sRoute, sDist, sIn = ns.GetStep, T.PlayerWorld, T.World, T.Route, WP.DistanceTo, TP.InZone
	local sNum, sInfo, sObj, sIdx = QL.GetNumQuestLogEntries, QL.GetInfo, QL.GetQuestObjectives, QL.GetLogIndexForQuestID
	local px, py = 500, 500
	ns.GetStep = function() return passo end
	T.World = function(_, x, y) return { c = 0, x = (x or 0) * 10, y = (y or 0) * 10 } end
	T.PlayerWorld = function() return px and { c = 0, x = px, y = py } or nil end
	T.Route = function() return nil end
	WP.DistanceTo = function() return 50, 1, 1 end
	TP.InZone = function() return true end
	QL.GetNumQuestLogEntries = function() return #ids end
	QL.GetInfo = function(i) return ids[i] and { questID = ids[i] } end
	QL.GetQuestObjectives = function(q) return log[q] or sObj(q) end
	QL.GetLogIndexForQuestID = function(q) if log[q] then return 1 end return sIdx(q) end
	D:ClearStops(); D:Clear("manual")
	ns.db.areaGoals = true
	local canvas = CreateFrame("Frame"); canvas:SetSize(1000, 667)
	local ok, err = pcall(function()
		AG.Scan(true)
		local rows = AG.List()
		local got = {}
		for _, r in ipairs(rows) do got[#got + 1] = r.q .. ":" .. r.log end
		assert(table.concat(got, ",") == ("%d:1,%d:2,%d:1,%d:1"):format(A, A, B, C),
			"nesta área: os abertos, os da quest do passo primeiro: " .. table.concat(got, ","))
		assert(rows[1].name == "Lobo Alfa" and AG.Count(rows[1]) == "2/10" and rows[3].name == "Caixa de suprimentos"
			and AG.Count(rows[3]) == "2/8" and rows[3].kind == "i", "nome e contagem do diário")
		local f = ns.Viewer:GetFrame()
		assert(f.areaLabel:IsShown() and f.areaCard:IsShown() and not f.areaMore:IsShown(), "o bloco não apareceu")
		for i = 1, 4 do assert(f.areaRows[i]:IsShown(), "linha " .. i .. " não apareceu") end
		assert(not f.areaRows[5]:IsShown(), "linha a mais")
		assert(f.areaRows[1].text._text == "Lobo Alfa" and f.areaRows[3].count._text == "2/8",
			"a linha: " .. tostring(f.areaRows[1].text._text) .. " / " .. tostring(f.areaRows[3].count._text))
		f.areaRows[3]:GetScript("OnEnter")(f.areaRows[3]); f.areaRows[3]:GetScript("OnLeave")(f.areaRows[3])
		-- o clique guia à área de onde ele está (o ponto-alvo dela)
		f.areaRows[3]:Click()
		local m = D:Get("manual")
		assert(m and m.zone == "Westfall" and math.abs(m.x - 49) < 0.01 and math.abs(m.y - 51) < 0.01,
			"o clique não guiou à área: " .. tostring(m and m.x))
		D:Clear("manual")
		f.areaRows[1]:Click()
		m = D:Get("manual")
		assert(m and math.abs(m.x - 52) < 0.01, "o objetivo com duas áreas: a de onde ele está, não a longe")
		D:Clear("manual")
		-- andou para a área vizinha do mesmo objetivo: o clique na linha (ainda a velha) vai à área nova, e a janela
		-- segue (a área entra na assinatura)
		local velha = f.areaRows[1]._row
		px, py = 590, 500
		f.areaRows[1]:Click()
		m = D:Get("manual")
		assert(m and math.abs(m.x - 58) < 0.01,
			"a área vizinha do mesmo objetivo: o clique foi à velha " .. tostring(m and m.x))
		assert(f.areaRows[1]._row ~= velha and f.areaRows[1]._row.area.k == 3, "a janela não seguiu a área nova")
		D:Clear("manual")
		px, py = 500, 500
		AG.Scan()
		assert(#AG.List() == 4 and AG.List()[1].area.k == 1, "de volta: a área de antes")
		local rel = ns.Report.ReportText(ns.Report.Context(), "x")
		assert(rel:find("In this area: 4 lines · unmapped objectives: 0 now", 1, true), "o relatório sem o Nesta área")
		-- o Enquanto está aqui não repete o objetivo que está aqui
		assert(AG.Covers({ verb = "kill", id = 9005, q = { id = C } }) and not AG.Covers({ verb = "kill", q = { id = 7 } }),
			"Covers: o objetivo da lista")
		-- o mapa: as áreas deles, mais suaves (o passo não tem área)
		WorldMapFrame.GetMapID = function() return ns.zoneUiMap.Westfall end
		WorldMapFrame.GetCanvas = function() return canvas end
		WorldMapFrame:Show()
		SA.Update()
		local nF, nL = SA.Drawn()
		assert(_G.LodestarSpawnMap and _G.LodestarSpawnMap:IsShown() and nF > 0 and nL > 0,
			("nesta área no mapa: %d faixas, %d linhas"):format(nF, nL))
		-- o objetivo que o cartão do passo mostra sai da lista
		passo.goals = { { verb = "kill", id = 9001, text = "Lobo Alfa", q = { id = A, obj = 1 } } }
		AG.Scan(true)
		assert(#AG.List() == 3 and AG.List()[1].q == A and AG.List()[1].log == 2, "o do cartão repetiu na lista")
		-- a contagem muda: a linha segue
		log[C][1] = ob("monster", "Coruja Selvagem slain: 5/20", 5, 20)
		ns.fire("QUEST_LOG_UPDATE")
		AG.Scan()
		local cnt
		for _, r in ipairs(AG.List()) do if r.q == C then cnt = AG.Count(r) end end
		assert(cnt == "5/20", "a contagem não seguiu o diário: " .. tostring(cnt))
		-- fora da área: a lista esvazia
		px, py = 950, 950
		AG.Scan()
		assert(#AG.List() == 0 and not f.areaCard:IsShown() and not f.areaRows[1]:IsShown(), "fora da área e a lista ficou")
		px, py = 500, 500
		AG.Scan()
		assert(#AG.List() == 3, "de volta à área: a lista voltou")
		-- sem posição (masmorra, tela de carga): a lista esvazia
		px = nil
		AG.Scan()
		assert(#AG.List() == 0 and not f.areaCard:IsShown(), "sem posição e a lista ficou")
		px, py = 500, 500
		AG.Scan()
		assert(#AG.List() == 3, "com posição de novo: a lista voltou")
		-- desligado, some (a janela e o mapa; o passo de novo sem área própria)
		passo.goals = { { verb = "goto_", text = "Lá", q = { id = A } } }
		AG.Scan(true); SA.Update()
		assert(_G.LodestarSpawnMap:IsShown(), "as áreas de nesta área sumiram do mapa")
		ns.db.areaGoals = false
		AG.Refresh()
		assert(#AG.List() == 0 and not f.areaCard:IsShown(), "desligado e a lista ficou")
		assert(not _G.LodestarSpawnMap:IsShown(), "desligado e as áreas ficaram no mapa")
	end)
	ns.db.areaGoals = true
	ns.GetStep, T.PlayerWorld, T.World, T.Route, WP.DistanceTo, TP.InZone = sGet, sPW, sW, sRoute, sDist, sIn
	QL.GetNumQuestLogEntries, QL.GetInfo, QL.GetQuestObjectives, QL.GetLogIndexForQuestID = sNum, sInfo, sObj, sIdx
	ns.spawnQuest[A], ns.spawnQuest[B], ns.spawnQuest[C] = nil, nil, nil
	WorldMapFrame.GetMapID, WorldMapFrame.GetCanvas = nil, nil
	D:Clear("manual")
	AG.Refresh()
	assert(ok, err)
end)
-- voo que passa por outros (#124): a linha diz por onde, depois do " · " (a linha de baixo na Navegação)
step("LegText via", function()
	local t = ns.Waypoint.LegText({ leg = 1, legs = { { k = "flight", name = "Hammerfall, Arathi", s = 250,
		via = { "Tarren Mill, Hillsbrad" } } } }, 1)
	local head, tail = t:match("^(.-) · (.+)$")
	assert(head and head:find("Hammerfall", 1, true) and tail:find("Tarren Mill", 1, true)
		and not tail:find("Hillsbrad", 1, true), "voo sem o via: " .. t)
	-- a linha de baixo da Navegação: só os do meio (o tempo já está à direita)
	local v = ns.Waypoint.ViaText({ k = "flight", via = { "Tarren Mill, Hillsbrad" } })
	assert(v and v:find("Tarren Mill", 1, true) and not v:find(":%d"), "via: " .. tostring(v))
	assert(ns.Waypoint.ViaText({ k = "flight" }) == nil and ns.Waypoint.ViaText({ k = "walk", via = { "X" } }) == nil,
		"via sem os do meio")
end)
-- desvio do terreno (#125): a perna a pé que ainda não começou, bem mais longa pelo terreno, corrige a rota
step("Terrain detour", function()
	local T, TR = ns.Travel, ns.Terrain
	local pw, w0, ctx0, path0 = T.PlayerWorld, T.World, T.Context, TR.Path
	local sw, sh
	for _, v in pairs(ns.travel.nodes) do
		if v.n:find("^Stormwind") then sw = v elseif v.n:find("^Sentinel Hill") then sh = v end
	end
	local eu = { c = sw.c, x = sw.x + 15, y = sw.y }
	T.PlayerWorld = function() return { c = eu.c, x = eu.x, y = eu.y } end
	T.World = function() return { c = sh.c, x = sh.x - 400, y = sh.y } end          -- 400 jd ao sul de Sentinel Hill
	T.Context = function(self)
		local c = ctx0(self)
		c.known = {}
		for id, v in pairs(ns.travel.nodes) do if v.f:find("A", 1, true) then c.known[id] = true end end
		return c
	end
	local desvio = 0
	TR.Path = function(_, de, para)
		if math.abs(de.x - eu.x) < 1 and math.abs(de.y - eu.y) < 1 then return { de, para } end
		desvio = desvio + 1                                -- do mestre de voo: dá a volta (3000 jd para o lado)
		return { de, { c = de.c, x = de.x + 3000, y = de.y }, para }
	end
	local ok, err = pcall(function()
		local upd = ns.eventFrame:GetScript("OnUpdate")
		ns.Destinations:Set("manual", { zone = "Westfall", x = 62, y = 60, label = "X" })
		T:Fresh()
		local r1 = T:Route()
		local ks = {}
		for _, l in ipairs(r1 and r1.legs or {}) do ks[#ks + 1] = l.k end
		assert(r1 and #r1.legs >= 3 and r1.legs[#r1.legs].k == "walk", "sem voo e a pé no fim: " .. table.concat(ks, ","))
		local fim, s1 = r1.legs[#r1.legs], r1.legs[#r1.legs].s
		for _ = 1, 10 do upd(ns.eventFrame, 0.06) end
		assert(desvio >= 1, "o caminho da perna seguinte não foi calculado")
		assert(#T:Context().desvios >= 1, "o desvio não voltou ao planejador")
		assert(T:Route() ~= r1 or fim.s > s1 * 2, "a rota não viu o desvio")
	end)
	ns.Destinations:Clear("manual")
	T.PlayerWorld, T.World, T.Context, TR.Path = pw, w0, ctx0, path0
	T:ResetPaths()
	assert(ok, err)
end)
-- desvio na perna atual (#125): fica guardado de onde o caminho saiu (a rota nova não volta à reta e alterna)
step("Terrain detour current leg", function()
	local T, TR = ns.Travel, ns.Terrain
	local pw, w0, path0 = T.PlayerWorld, T.World, TR.Path
	local eu = { c = 0, x = -10500, y = 1050 }
	T.PlayerWorld = function() return { c = eu.c, x = eu.x, y = eu.y } end
	T.World = function() return { c = 0, x = -10500 - 600, y = 1050 } end             -- 600 jd ao sul, a pé
	TR.Path = function(_, de, para) return { de, { c = de.c, x = de.x, y = de.y + 3000 }, para } end
	local ok, err = pcall(function()
		local upd = ns.eventFrame:GetScript("OnUpdate")
		T:ResetPaths()
		ns.Destinations:Set("manual", { zone = "Westfall", x = 50, y = 50, label = "X" })
		T:Fresh()
		local r1 = T:Route()
		assert(r1 and r1.legs[1].k == "walk", "sem rota a pé")
		for _ = 1, 10 do upd(ns.eventFrame, 0.06) end
		local achou
		for _, dv in ipairs(T:Context().desvios) do
			if math.abs(dv.a.x - eu.x) < 1 and math.abs(dv.a.y - eu.y) < 1 and dv.f > 5 then achou = true end
		end
		assert(achou, "o desvio da perna atual não ficou guardado")
	end)
	ns.Destinations:Clear("manual")
	T.PlayerWorld, T.World, TR.Path = pw, w0, path0
	T:ResetPaths()
	assert(ok, err)
end)
-- andando até o mestre de voo (#125): a rota a pé que a reta acha melhor, sem medida daqui e com desvio medido para o
-- mesmo fim, só entra depois de medir — a rota não alterna
step("Terrain detour measure first", function()
	local T, TR = ns.Travel, ns.Terrain
	local pw, w0, ctx0, path0, dados = T.PlayerWorld, T.World, T.Context, TR.Path, ns.travel
	local eu = { c = 0, x = 0, y = 0 }
	local alvo = { c = 0, x = 600, y = 0 }
	ns.travel = { nodes = { [1] = { n = "Perto", c = 0, x = 0, y = 50, f = "A" }, [2] = { n = "Lá", c = 0, x = 600, y = 50, f = "A" } },
		flights = { [1] = { [2] = { s = 80, p = { 0, 50, 600, 50 } } } }, ships = {} }
	T.PlayerWorld = function() return { c = eu.c, x = eu.x, y = eu.y } end
	T.World = function() return { c = alvo.c, x = alvo.x, y = alvo.y } end
	T.Context = function(self)
		local c = ctx0(self)
		c.known, c.hearth, c.teleports, c.speed = { [1] = true, [2] = true }, nil, {}, 7
		return c
	end
	local medidas = {}
	TR.Path = function(_, de, para)
		medidas[#medidas + 1] = de
		-- daqui até o alvo, a pé dá a volta (bem mais longo); do lado de lá (o voo pousa ali) e até o voo, reto
		if de.x > 300 or para.x < 300 then return { de, para } end
		return { de, { c = de.c, x = de.x, y = de.y + 1500 }, para }
	end
	local ok, err = pcall(function()
		local upd = ns.eventFrame:GetScript("OnUpdate")
		T:ResetPaths()
		ns.Destinations:Set("manual", { zone = "Westfall", x = 50, y = 50, label = "X" })
		T:Fresh()
		assert(T:Route() and T:Route().legs[1].k == "walk" and #T:Route().legs == 1, "começa a pé (a reta)")
		for _ = 1, 10 do upd(ns.eventFrame, 0.06) end                -- mede a perna atual: desvio, voa
		local function voa()
			for _, l in ipairs(T:Route() and T:Route().legs or {}) do if l.k == "flight" then return true end end
			return false
		end
		assert(voa(), "o desvio medido não trocou para o voo")
		for _ = 1, 4 do eu.y = eu.y - 100; upd(ns.eventFrame, 1.01) end   -- andou 400 jd: fora do raio da medida
		assert(voa(), "andar trocou a rota")
		local n0 = #medidas
		T:Replan(false)                                            -- a reta daqui acha a pé melhor (103 s contra 161)
		assert(voa(), "trocou para a pé sem medir daqui")
		for _ = 1, 10 do upd(ns.eventFrame, 0.06) end
		local daqui = false
		for i = n0 + 1, #medidas do daqui = daqui or (math.abs(medidas[i].y + 400) < 1 and medidas[i].x == 0) end
		assert(daqui, "não mediu daqui")
		T:Replan(false)
		assert(voa(), "a medida daqui (desvio) não segurou a rota")
		for _ = 1, 3 do eu.y = eu.y - 100; upd(ns.eventFrame, 1.01) end   -- mais 300 jd: sem medida de novo
		T:Replan(true)                                             -- forçado com o mesmo destino (mapa de voo aberto)
		assert(voa(), "o replanejar forçado trocou para a pé sem medir")
	end)
	ns.Destinations:Clear("manual")
	ns.travel, T.PlayerWorld, T.World, T.Context, TR.Path = dados, pw, w0, ctx0, path0
	T:ResetPaths()
	assert(ok, err)
end)
-- salto (#123): portal/teleporte refaz a rota no tique seguinte; no barco (perna de barco atual), não
step("Route after teleport", function()
	local T = ns.Travel
	local pw, w = T.PlayerWorld, T.World
	local eu = { c = 0, x = -10500, y = 1050 }
	T.PlayerWorld = function() return { c = eu.c, x = eu.x, y = eu.y } end
	T.World = function() return { c = 0, x = -10560, y = 1010 } end
	local ok, err = pcall(function()
		local upd = ns.eventFrame:GetScript("OnUpdate")
		ns.Destinations:Set("manual", { zone = "Westfall", x = 50, y = 50, label = "X" })
		upd(ns.eventFrame, 1.01)
		local r1 = T:Route()
		assert(r1, "sem rota")
		eu.x = eu.x + 600                                  -- portal: 600 jd num tique
		upd(ns.eventFrame, 1.01)
		local r2 = T:Route()
		assert(r2 and r2 ~= r1, "o salto não refez a rota")
		local l1 = r2.legs[1]
		local k0, b0 = l1.k, l1.boarded
		l1.k, l1.boarded = "ship", GetServerTime()         -- a bordo: a tela de carregamento salta, mas não refaz
		eu.c, eu.x = 1, 2000
		upd(ns.eventFrame, 1.01)
		assert(T:Route() == r2, "refez a rota no meio do barco")
		l1.k, l1.boarded = "tram", nil                     -- dentro do bonde (instância própria): não refaz
		eu.c = 369
		upd(ns.eventFrame, 1.01)
		assert(T:Route() == r2, "refez a rota dentro do bonde")
		l1.k, l1.boarded = k0, b0
		eu.c = 1
		upd(ns.eventFrame, 1.01)                           -- de volta: salto que a perna a pé não explica
		local r3 = T:Route()
		assert(r3 and r3 ~= r2, "saiu do bonde sem refazer")
		upd(ns.eventFrame, 1.01)                           -- parado: sem salto, sem refazer
		assert(T:Route() == r3, "refez sem salto")
		local semPos = T.PlayerWorld
		T.PlayerWorld = function() return nil end          -- um tique sem posição (tela de carregamento)
		upd(ns.eventFrame, 1.01)
		T.PlayerWorld = semPos
		eu.c, eu.x = 0, -10500
		upd(ns.eventFrame, 1.01)
		assert(T:Route() ~= r3, "o tique sem posição desligou o salto")
	end)
	ns.Destinations:Clear("manual")
	T.PlayerWorld, T.World = pw, w
	assert(ok, err)
end)
-- faixa de XP (#126): a XP das quests do diário entra na previsão
step("XP bar quests", function()
	local QL, rx, db, shown, gt, ux = _G.C_QuestLog, _G.GetQuestLogRewardXP, ns.db.xpHud, ns.UIShown, _G.GetTime, _G.UnitXP
	local n, get, done = QL.GetNumQuestLogEntries, QL.GetInfo, QL.IsComplete
	local add = GameTooltip.AddLine
	QL.GetNumQuestLogEntries = function() return 3 end
	QL.GetInfo = function(i) return i == 1 and { isHeader = true } or { questID = 100 + i } end
	QL.IsComplete = function(id) return id == 102 end
	ns.db.xpHud = true
	ns.UIShown = function() return true end
	local dicas = {}
	GameTooltip.AddLine = function(_, t) dicas[#dicas + 1] = t end
	local ok, err = pcall(function()
		local f
		_G.GetQuestLogRewardXP = function() return 2000 end            -- 4000 de XP no diário; faltam 3800
		ns.XPHud:Update()
		f = ns.XPHud:GetFrame()
		assert(f and f:IsShown(), "faixa escondida")
		assert(f.l2:GetText():find(ns.L.ETA_QUESTS, 1, true), "as quests bastam e a faixa não disse: " .. f.l2:GetText())
		f:GetScript("OnEnter")(f)
		assert(dicas[1] and dicas[1]:find("4k", 1, true) and dicas[1]:find("2k", 1, true), "dica sem a XP das quests: "
			.. tostring(dicas[1]))
		-- meia hora de sessão com 1000 de monstro (2000/h); quests de 1000: faltam 2800, 2000 no diário -> 800 a 2000/h
		_G.GetQuestLogRewardXP = function() return 1000 end
		_G.GetTime = function() return gt() + 1800 end
		_G.UnitXP = function() return 2200 end
		ns.fire("PLAYER_XP_UPDATE")
		assert(f.l2:GetText():find("24m", 1, true), "previsão sem descontar as quests: " .. f.l2:GetText())
		-- entrega a pronta (1000, já descontada): a previsão não encurta
		ns.fire("QUEST_TURNED_IN", 102, 1000, 0)
		_G.UnitXP = function() return 3200 end
		ns.fire("PLAYER_XP_UPDATE")
		assert(f.l2:GetText():find("24m", 1, true), "a entrega já descontada contou de novo: " .. f.l2:GetText())
		_G.GetQuestLogRewardXP = nil                                    -- sem a função: como antes
		ns.XPHud:Update()
		assert(not f.l2:GetText():find(ns.L.ETA_QUESTS, 1, true), "sem a função e a faixa disse que sobe")
	end)
	QL.GetNumQuestLogEntries, QL.GetInfo, QL.IsComplete = n, get, done
	_G.GetQuestLogRewardXP, ns.db.xpHud, ns.UIShown, _G.GetTime, _G.UnitXP = rx, db, shown, gt, ux
	GameTooltip.AddLine = add
	if ns.XPHud:GetFrame() then ns.XPHud:Update() end
	assert(ok, err)
end)
-- avisar o grupo (#127): ligado por padrão; objetivo que fecha e quest que fica pronta, uma linha cada, uma vez
step("Party tell", function()
	local QL, ig, scm, cci = _G.C_QuestLog, _G.IsInGroup, _G.SendChatMessage, _G.C_ChatInfo
	local n, get, done, objs = QL.GetNumQuestLogEntries, QL.GetInfo, QL.IsComplete, QL.GetQuestObjectives
	-- quest 77 com dois objetivos; quest 78 com quatro (para o limite de 3 linhas)
	local feito = { [77] = { false, false }, [78] = { false, false, false, false, true } }   -- o 5º de 78 já feito
	local semTexto = false
	QL.GetNumQuestLogEntries = function() return 2 end
	QL.GetInfo = function(i) return { questID = 76 + i } end
	QL.IsComplete = function(q)
		for _, f in ipairs(feito[q]) do if not f then return false end end
		return true
	end
	QL.GetQuestObjectives = function(q)
		local out = {}
		for j, f in ipairs(feito[q]) do
			-- sem os dados do servidor: linha vazia e "por fazer" (o objetivo já feito não pode parecer recém-fechado)
			local vazio = semTexto and q == 78
			out[j] = { text = vazio and "" or ((f and "8/8" or "3/8") .. " Alvo " .. q .. "." .. j), finished = f and not vazio }
		end
		return out
	end
	_G.IsInGroup = function() return true end
	local ditas = {}
	_G.SendChatMessage = function(msg, canal) ditas[#ditas + 1] = canal .. "|" .. msg end
	_G.C_ChatInfo = { SendChatMessage = _G.SendChatMessage }
	local ok, err = pcall(function()
		assert(ns.db.partyTell == true, "o save antigo com o padrão desligado não virou ligado")
		ns.fire("GROUP_JOINED")                                     -- o retrato de quando entrou no grupo
		feito[77][1] = true                                         -- fechou o primeiro objetivo
		ns.PartyTell:Check()
		assert(#ditas == 1 and ditas[1]:find("^PARTY|{rt1} Lodestar %- %[Quest 77%] 8/8 Alvo 77%.1$"),
			"objetivo: " .. table.concat(ditas, " / "))
		feito[77][1] = false; ns.PartyTell:Check()                  -- perdeu o item e recuperou: não repete
		feito[77][1] = true; ns.PartyTell:Check()
		assert(#ditas == 1, "o objetivo que voltou falou de novo: " .. table.concat(ditas, " / "))
		feito[77][2] = true                                         -- o último fecha e a quest fica pronta: só a de pronta
		ns.PartyTell:Check()
		assert(#ditas == 2 and ditas[2] == "PARTY|{rt1} Lodestar - [Quest 77] pronta para entregar!" and not ditas[2]:find("Alvo 77.2", 1, true),
			"pronta: " .. table.concat(ditas, " / "))
		feito[77] = { false, false }; ns.PartyTell:Check()           -- já avisada pronta, perdeu os itens dos dois
		feito[77][2] = true; ns.PartyTell:Check()                   -- recuperou um (nunca avisado): não fala
		feito[77][1] = true; ns.PartyTell:Check()                   -- pronta de novo: não repete
		assert(#ditas == 2, "objetivo de quest já pronta falou: " .. table.concat(ditas, " / "))
		semTexto = true; ns.PartyTell:Check()                       -- os dados do servidor somem por um instante
		semTexto = false; ns.PartyTell:Check()                      -- e voltam: nada acabou de fechar
		assert(#ditas == 2, "objetivo sem texto virou objetivo fechado: " .. table.concat(ditas, " / "))
		feito[78] = { true, true, true, true, false }               -- quatro de uma vez: só 3 linhas
		ns.PartyTell:Check()
		assert(#ditas == 5, "quatro objetivos de uma vez: " .. #ditas)
		feito[78] = { false, false, false, false, false }; ns.PartyTell:Check()
		feito[78] = { true, true, true, true, false }               -- de novo: os 3 avisados não repetem; o 4º sai
		ns.PartyTell:Check()
		assert(#ditas == 6 and ditas[6]:find("Alvo 78.4", 1, true), "repetiu ou perdeu: " .. table.concat(ditas, " / "))
	end)
	QL.GetNumQuestLogEntries, QL.GetInfo, QL.IsComplete, QL.GetQuestObjectives = n, get, done, objs
	_G.IsInGroup, _G.SendChatMessage, _G.C_ChatInfo = ig, scm, cci
	assert(ok, err)
end)
-- cartão de voo (#129): o voo marcado no mapa de voo, em voo com destino, zona, tempo e barra; pousou, some
step("Flight card", function()
	local taxi, tnn, gat, early, gt, gst = _G.UnitOnTaxi, _G.TaxiNodeName, C_TaxiMap.GetAllTaxiNodes,
		_G.TaxiRequestEarlyLanding, _G.GetTime, _G.GetServerTime
	local rota0, hsf = ns.Travel.Route, _G.hooksecurefunc
	local ucId, hfId, tmId
	for id, v in pairs(ns.travel.nodes) do
		if v.n:find("^Undercity") then ucId = id elseif v.n:find("^Hammerfall") then hfId = id
		elseif v.n:find("^Tarren Mill") and v.f:find("H", 1, true) then tmId = id end
	end
	local voando, pediu, t = false, 0, 5000
	local rota
	_G.UnitOnTaxi = function() return voando end
	_G.TaxiNodeName = function() return "Hammerfall, Arathi" end
	-- sem slotIndex (casa pelo nome) e um nó de isca depois do destino; `comSlot`: o slot clicado manda, com outro nome
	local comSlot, vazio = false, false
	C_TaxiMap.GetAllTaxiNodes = function()
		if vazio then return {} end
		if comSlot then
			return { { nodeID = ucId, name = "Undercity, Tirisfal", state = 0, slotIndex = 1 },
				{ nodeID = hfId, name = "Hammerfall, Arathi", state = 1, slotIndex = 3 },
				{ nodeID = tmId, name = "Tarren Mill, Hillsbrad", state = 1, slotIndex = 2 } }
		end
		return { { nodeID = ucId, name = "Undercity, Tirisfal", state = 0 }, { nodeID = hfId, name = "Hammerfall, Arathi", state = 1 },
			{ nodeID = tmId, name = "Tarren Mill, Hillsbrad", state = 1 } }
	end
	_G.TaxiRequestEarlyLanding = function() pediu = pediu + 1 end
	_G.GetTime = function() return t end
	_G.GetServerTime = function() return t end
	ns.Travel.Route = function() return rota end
	local function voa(v) voando = v; ns.FlightCard:Update() end
	local ok, err = pcall(function()
		local FC = ns.FlightCard
		ns.char.voo = nil
		-- o timer de voo do OneForAll (#133): some com o cartão à mostra e volta como estava
		local function falso(alfa, mouse)
			local q = { a = alfa, m = mouse, kids = {} }
			function q:SetAlpha(v) self.a = v end
			function q:GetAlpha() return self.a end
			function q:EnableMouse(v) self.m = v end
			function q:IsMouseEnabled() return self.m end
			function q:IsProtected() return false end
			function q:GetChildren() return unpack(self.kids) end
			return q
		end
		-- um hooksecurefunc que funciona (o da fumaça é noop): (tabela, método, fn) chama o original e depois fn
		_G.hooksecurefunc = function(t, k, fn)
			if type(t) ~= "table" or type(t[k]) ~= "function" then return end
			local orig = t[k]
			t[k] = function(...) local r = orig(...); fn(...); return r end
		end
		local ofa, filho, filho2, protegido = falso(0.9, true), falso(1, true), falso(1, true), falso(1, true)
		function protegido:IsProtected() return true end
		ofa.kids = { filho, filho2, protegido }
		_G.OneForAllFlightTimer = ofa
		FC:Marcou(2)                                                -- marcou Hammerfall (direto de Undercity)
		voa(true)
		assert(ofa.a == 0 and ofa.m == false and filho.m == false and filho2.m == false,
			"o timer do OneForAll (ou um filho) ficou à mostra ou com mouse")
		assert(protegido.m == true, "mexeu no mouse de um filho protegido")
		ofa:SetAlpha(1)                                             -- o OneForAll esmaece de volta: o gancho zera
		assert(ofa.a == 0, "o SetAlpha do OneForAll em voo não voltou a zero")
		ofa.a = 1; ofa.m = true; FC:Update()
		assert(ofa.a == 0 and ofa.m == false, "o OneForAll mostrou de novo e o cartão não reaplicou")
		local trocado = falso(0.8, true)                            -- o OneForAll recriou o frame no meio do voo
		_G.OneForAllFlightTimer = trocado; FC:Update()
		assert(trocado.a == 0, "o frame novo do OneForAll ficou à mostra")
		local c = _G.LodestarFlightCard
		assert(c and c:IsShown(), "o cartão não abriu em voo")
		assert(c.title:GetText() == "Hammerfall" and c.sub:GetText() == "Arathi", "destino: " .. tostring(c.title:GetText()))
		local s = ns.travel.flights[ucId][hfId].s
		assert(c.time:GetText() == "~" .. FC.Fmt(s), "tempo do direto: " .. tostring(c.time:GetText()) .. " (" .. s .. " s)")
		assert(not c.land:IsShown(), "direto não tem onde pousar antes e o botão apareceu")
		t = t + 60; FC:Update()
		assert(c.time:GetText() == "~" .. FC.Fmt(s - 60), "o tempo não andou: " .. tostring(c.time:GetText()))
		voa(false)
		assert(not c:IsShown() and ns.char.voo == nil, "pousou e o cartão (ou o voo salvo) ficou")
		assert(ofa.a == 0.9 and ofa.m == true and filho.m == true and filho2.m == true and trocado.a == 0.8,
			"pousou e o timer do OneForAll (o velho ou o novo) não voltou como estava")
		ofa.a = 0.5; trocado.a = 0.5; FC:Update()                   -- depois de devolver, o Lodestar não mexe mais
		assert(ofa.a == 0.5 and trocado.a == 0.5, "o Lodestar seguiu mexendo no timer do OneForAll depois de pousar")
		ofa:SetAlpha(0.7)
		assert(ofa.a == 0.7, "o gancho seguiu zerando o SetAlpha do OneForAll depois de pousar")
		_G.OneForAllFlightTimer = ofa; ofa.a = 0.9
		comSlot = true; FC:Marcou(2)                                -- o slot 2 é Tarren Mill, mesmo com o nome do 3
		voa(true)
		assert(c.title:GetText() == "Tarren Mill", "o slot clicado não mandou: " .. tostring(c.title:GetText()))
		voa(false); comSlot = false
		vazio = true; FC:Marcou(2); vazio = false                   -- o mapa já fechou: nada marcado
		voa(true)
		assert(c.title:GetText() == ns.L.IN_FLIGHT, "marcou sem o nó: " .. tostring(c.title:GetText()))
		voa(false)
		ns.char.voo = { nome = "Velho", s = 600, t0 = t }           -- salvo de um pouso com o addon fora
		FC:Update()
		assert(ns.char.voo == nil, "o voo salvo ficou fora de voo")
		-- /reload em voo: o voo salvo (decolou há 50 s) volta, sem marcar nem rota
		ns.char.voo = { nome = "Tarren Mill, Hillsbrad", s = 200, t0 = t - 50 }
		voa(true)
		assert(c.title:GetText() == "Tarren Mill" and c.time:GetText() == "~2:30", "voo salvo: " .. tostring(c.title:GetText())
			.. " " .. tostring(c.time:GetText()))
		voa(false)
		-- marcado há mais de 2 min não vale: a perna de voo da rota (dois trechos, 299 s com a decolagem)
		FC:Marcou(2)
		t = t + 121
		rota = { leg = 1, legs = { { k = "flight", name = "Revantusk Village, The Hinterlands", s = 299,
			via = { "Tarren Mill, Hillsbrad" } } } }
		voa(true)
		assert(c.title:GetText() == "Revantusk Village" and c.time:GetText() == "~4:49", "perna da rota: "
			.. tostring(c.title:GetText()) .. " " .. tostring(c.time:GetText()))
		assert(c.land:IsShown(), "com mestre de voo no meio e sem o botão de pousar")
		c.land:GetScript("OnClick")(c.land)
		assert(pediu == 1 and not c.land:IsShown() and c.time:GetText() == ns.L.FLIGHT_LANDING and not c.bar:IsShown(),
			"pousar antes: " .. tostring(c.time:GetText()))
		assert(ns.char.voo and ns.char.voo.pousando, "o pedido de pousar não ficou salvo para o /reload")
		local salvo = ns.char.voo
		voa(false); ns.char.voo = salvo; voa(true)                 -- /reload depois do pedido: segue pousando
		assert(c.time:GetText() == ns.L.FLIGHT_LANDING and not c.land:IsShown(), "o pedido de pousar não voltou do /reload")
		voa(false); voa(true)                                       -- pousou e voou de novo: o botão volta
		assert(c.land:IsShown(), "o botão não voltou no voo seguinte")
		voa(false)
		rota = { leg = 1, legs = { { k = "flight", name = "Hammerfall, Arathi", s = 289 } } }   -- perna direta, sem via
		voa(true)
		assert(c.time:GetText() == "~4:39" and not c.land:IsShown(), "perna direta da rota: " .. tostring(c.time:GetText()))
		rota = { leg = 1, legs = { { k = "flight", name = "Revantusk Village, The Hinterlands", s = 299,
			via = { "Tarren Mill, Hillsbrad" } } } }
		voa(false); voa(true)
		_G.TaxiRequestEarlyLanding = nil; FC:Update()
		assert(not c.land:IsShown(), "sem a função no cliente e o botão apareceu")
		ns.db.flightCard = false; FC:Update()
		assert(not c:IsShown(), "desligado e o cartão ficou")
		assert(ofa.a == 0.9 and ofa.m == true, "cartão desligado e o timer do OneForAll ficou escondido")
		ns.db.flightCard = true
		voa(false); rota = nil; ns.char.voo = nil
		voa(true)                                                   -- sem marcar, sem salvo, sem rota: conta para cima
		assert(c:IsShown() and c.title:GetText() == ns.L.IN_FLIGHT and c.time:GetText() == "+0:00", "sem dados: "
			.. tostring(c.title:GetText()) .. " " .. tostring(c.time:GetText()))
		voa(false)
	end)
	_G.UnitOnTaxi, _G.TaxiNodeName, C_TaxiMap.GetAllTaxiNodes, _G.TaxiRequestEarlyLanding = taxi, tnn, gat, early
	_G.GetTime, _G.GetServerTime, ns.Travel.Route = gt, gst, rota0
	ns.db.flightCard, ns.char.voo, _G.OneForAllFlightTimer, _G.hooksecurefunc = true, nil, nil, hsf
	assert(ok, err)
end)
-- compras do guia (#134): a lista pelo vínculo e pela bolsa, a linha na janela do guia e o painel na casa de leilões
step("Guide shopping", function()
	local SH = ns.Shopping
	local info, inst, count, icon, rl = ns.ItemInfo, ns.ItemInfoInstant, ns.ItemCount, ns.ItemIcon, C_Item.RequestLoadItemDataByID
	local guia, passo, refresh, goto0, atr = ns.currentGuide, ns.char.currentStep, ns.Viewer.Refresh, ns.Services.GoTo, _G.Auctionator
	local ahf, modo = _G.AuctionHouseFrame, _G.AuctionHouseFrameDisplayMode
	-- Linen e carne sem vínculo; a pena presa ao pegar; o 777 ainda fora do cache; 1001-1012 negociáveis (o "+N")
	local vinc = { [2589] = 0, [769] = 0, [4589] = 1 }
	for k = 1001, 1012 do vinc[k] = 0 end
	local naBolsa, pedidos, refreshes = { [2589] = 4 }, {}, 0
	ns.ItemInfoInstant = function(id) return id, nil, nil, nil, nil, 7, 0 end
	ns.ItemInfo = function(id)
		if vinc[id] == nil then return nil end
		return id == 2589 and "Tecido de Linho" or "Item " .. id, nil, 1, 1, 1, "", "", 20, "", 134400, 1, 7, 0, vinc[id]
	end
	ns.ItemCount = function(id) return naBolsa[id] or 0 end
	ns.ItemIcon = function() return 134400 end
	C_Item.RequestLoadItemDataByID = function(id) pedidos[id] = true end
	local idaLeilao
	ns.Services.GoTo = function(_, kind) idaLeilao = kind end
	ns.Viewer.Refresh = function() refreshes = refreshes + 1 end
	local muitos = {}
	for k = 1001, 1012 do muitos[#muitos + 1] = { verb = "collect", id = k, count = 1, text = "Zz " .. k, q = { id = 50 } } end
	ns.currentGuide = { key = "Teste", steps = {
		{ goals = { { verb = "collect", id = 2589, count = 10, text = "Linen Cloth", q = { id = 11 } } } },
		{ goals = { { verb = "collect", id = 4589, count = 10, text = "Long Elegant Feather", q = { id = 12 } } } },
		{ goals = { { verb = "collect", id = 769, count = 3, text = "Chunk of Boar Meat", q = { id = 13 } },
			{ verb = "collect", id = 777, count = 1, text = "Fora do cache", q = { id = 14 } } } },
		{ goals = muitos },
	} }
	ns.char.currentStep = 1
	local upd = ns.eventFrame:GetScript("OnUpdate")
	local buscou, iniciou, termos, modoPedido, convertidos
	local ok, err = pcall(function()
		SH:Dirty(); upd(ns.eventFrame, 1.01)
		local l = SH:List()
		assert(#l == 14 and l[1].id == 769 and l[1].falta == 3, "lista: " .. #l .. " itens")
		local linho
		for _, it in ipairs(l) do if it.id == 2589 then linho = it end end
		assert(linho and linho.falta == 6, "Linen: tira o que está na bolsa")
		assert(pedidos[777], "o item fora do cache não foi pedido ao servidor")
		assert(refreshes > 0, "a lista mudou e a janela do guia não foi redesenhada")
		SH:GoTo()
		assert(idaLeilao == "auction", "a linha não levou à casa de leilões")
		-- a bolsa muda: o evento refaz a lista e a janela acompanha
		local r0 = refreshes
		naBolsa[769] = 3; ns.fire("BAG_UPDATE_DELAYED"); upd(ns.eventFrame, 1.01)
		assert(#SH:List() == 13 and refreshes > r0, "a bolsa mudou e a lista não acompanhou")
		-- o passo muda (sem avisar): a lista é refeita do passo novo
		ns.char.currentStep = 4; upd(ns.eventFrame, 1.01)
		assert(#SH:List() == 12, "o passo mudou e a lista não acompanhou: " .. #SH:List())
		ns.char.currentStep = 1; upd(ns.eventFrame, 1.01)
		-- a quest da carne no diário pede 8 (o guia diz 3): vale o diário; entregue, sai da lista
		local inlog, done, gc = ns.IsQuestInLog, ns.IsQuestDone, ns.QuestState.Objectives
		ns.IsQuestInLog = function(q) return q == 13 end
		ns.QuestState.Objectives = function(q)               -- |q 13 sozinho: a quest inteira (carne 8 e lobos 5)
			if q == 13 then
				return { { type = "item", text = "Chunk of Boar Meat: 3/8", numRequired = 8, numFulfilled = 3 },
					{ type = "monster", text = "Wolf slain: 0/5", numRequired = 5 } }
			end
			return gc(q)
		end
		SH:Dirty(); upd(ns.eventFrame, 1.01)
		local carne
		for _, it in ipairs(SH:List()) do if it.id == 769 then carne = it end end
		ns.IsQuestDone = function(q) return q == 13 or done(q) end
		SH:Dirty(); upd(ns.eventFrame, 1.01)
		local carne2
		for _, it in ipairs(SH:List()) do if it.id == 769 then carne2 = it end end
		ns.IsQuestInLog, ns.IsQuestDone, ns.QuestState.Objectives = inlog, done, gc
		SH:Dirty(); upd(ns.eventFrame, 1.01)
		assert(carne and carne.falta == 5, "o pedido do diário não valeu: " .. tostring(carne and carne.falta))
		assert(not carne2, "a quest entregue seguiu na lista")
		-- a casa de leilões aberta: o painel, a busca exata pelo nome do cliente e o Auctionator
		_G.AuctionHouseFrameDisplayMode = { Buy = "buy" }
		_G.AuctionHouseFrame = CreateFrame("Frame", "AuctionHouseFrame", UIParent)
		_G.AuctionHouseFrame.SetDisplayMode = function(_, m) modoPedido = m end
		_G.AuctionHouseFrame.SearchBar = { SearchBox = { SetText = function(_, t) buscou = t end },
			StartSearch = function() iniciou = true end }
		_G.Auctionator = { API = { v1 = {
			CreateShoppingList = function(_, nome, lista) termos = { nome, lista } end,
			ConvertToSearchString = function(_, t) convertidos = (convertidos or 0) + 1; return t.searchString .. "|" .. tostring(t.isExact) .. "|" .. tostring(t.quantity) end,
		} } }
		SH:ShowPanel(true)
		local p = _G.LodestarShopping
		assert(p and p:IsShown() and p.rows[10]:IsShown() and p.more:IsShown(), "painel com 10 linhas e o +N")
		local rl2
		for _, r in ipairs(p.rows) do if r.btn._it and r.btn._it.id == 2589 then rl2 = r end end
		assert(rl2 and rl2.name:GetText() == "Tecido de Linho" and rl2.count:GetText() == ns.L.SHOP_MISSING:format("6"),
			"linha do painel do Linen")
		rl2.btn:GetScript("OnClick")(rl2.btn)
		assert(buscou == '"Tecido de Linho"' and iniciou and modoPedido == "buy", "busca: " .. tostring(buscou))
		assert(p.atr:IsShown(), "sem o botão do Auctionator")
		p.atr:GetScript("OnClick")(p.atr)
		assert(termos and termos[1] == "Lodestar" and #termos[2] == #SH:List() and convertidos == #SH:List(),
			"Auctionator sem a lista")
		local temLinho
		for _, t in ipairs(termos[2]) do temLinho = temLinho or t == "Tecido de Linho|true|6" end
		assert(temLinho, "o termo do Auctionator sem busca exata e quantidade")
		ns.fire("AUCTION_HOUSE_CLOSED")
		assert(not p:IsShown(), "o painel ficou com a casa de leilões fechada")
		-- nada a comprar: o painel não abre
		for k, _ in pairs(vinc) do naBolsa[k] = 99 end
		naBolsa[777] = 99; vinc[777] = 0
		SH:ShowPanel(true)
		assert(#SH:List() == 0 and not p:IsShown(), "sem nada a comprar e o painel abriu")
		ns.db.shopping = false; SH:Dirty(); upd(ns.eventFrame, 1.01)
		assert(#SH:List() == 0, "desligado e a lista ficou")
	end)
	ns.db.shopping = true
	ns.ItemInfo, ns.ItemInfoInstant, ns.ItemCount, ns.ItemIcon, C_Item.RequestLoadItemDataByID = info, inst, count, icon, rl
	ns.currentGuide, ns.char.currentStep, ns.Viewer.Refresh, ns.Services.GoTo, _G.Auctionator = guia, passo, refresh, goto0, atr
	_G.AuctionHouseFrame, _G.AuctionHouseFrameDisplayMode = ahf, modo
	SH:Dirty(); upd(ns.eventFrame, 1.01)
	assert(ok, err)
	-- a linha na janela do guia aparece com itens a comprar
	local list0 = SH.List
	SH.List = function() return { { id = 2589, nome = "Linen Cloth", falta = 6 } } end
	local ok2, err2 = pcall(function()
		ns.Viewer:Refresh()
		local vf = ns.Viewer:GetFrame()
		assert(vf.shop:IsShown() and vf.shop.text:GetText() == ns.L.SHOP_LINE:format(1), "linha das compras no guia")
		vf.shop:GetScript("OnEnter")(vf.shop); vf.shop:GetScript("OnLeave")(vf.shop)
	end)
	SH.List = list0
	ns.Viewer:Refresh()
	assert(not ns.Viewer:GetFrame().shop:IsShown() or #SH:List() > 0, "a linha ficou sem itens")
	assert(ok2, err2)
end)
-- cavernas (#135): o Maltorius no Slag Pit — a rota vai à entrada e desce pela caverna; "por cima" tira a caverna
step("Cave route", function()
	local T, CV = ns.Travel, ns.Cavernas
	local pw, w0, act0, indoors = T.PlayerWorld, T.World, ns.Destinations.Active, _G.IsIndoors
	local alvo = { c = 0, x = -6634.4, y = -1232.3 }
	local eu = { c = 0, x = -6640, y = -1250 }                          -- em cima, a uns 20 jd do ponto
	local dest = { zone = "Searing Gorge", x = 40.77, y = 35.89, label = "Overseer Maltorius" }
	local fechado = false
	T.PlayerWorld = function() return { c = eu.c, x = eu.x, y = eu.y } end
	T.World = function() return { c = alvo.c, x = alvo.x, y = alvo.y } end
	_G.IsIndoors = function() return fechado end
	local upd = ns.eventFrame:GetScript("OnUpdate")
	local ok, err = pcall(function()
		ns.char.caves = {}
		ns.Destinations:Set("manual", dest)
		T:Fresh()
		local r = T:Route()
		local ult, pen = r and r.legs[#r.legs], r and r.legs[#r.legs - 1]
		assert(ult and ult.cave == "The Slag Pit" and ult.path and #ult.path >= 2, "a última perna não é a caverna")
		assert(pen and math.abs(pen.b.x + 6767.7) < 10 and math.abs(pen.b.y + 1426.0) < 10, "a rota não vai à entrada")
		local txt = ns.Waypoint.LegText(r, #r.legs - 1)
		assert(txt:find("Slag Pit", 1, true), "o texto da perna até a entrada: " .. txt)
		-- com destino manual, a linha da janela do guia não fala da caverna (é do guia)
		ns.Viewer:Refresh()
		local vf = ns.Viewer:GetFrame()
		assert(not vf.cave:IsShown(), "a linha da caverna apareceu com destino manual")
		-- o guia é o destino: a linha, e o clique troca para "por cima"
		ns.Destinations.Active = function() return dest, "guide" end
		ns.Viewer:Refresh()
		assert(vf.cave:IsShown() and vf.cave.text:GetText() == ns.L.CAVE_IN:format("The Slag Pit"), "linha da caverna")
		vf.cave:GetScript("OnEnter")(vf.cave); vf.cave:GetScript("OnLeave")(vf.cave)
		vf.cave:GetScript("OnClick")(vf.cave)
		local r2 = T:Route()
		assert(r2 and not r2.legs[#r2.legs].cave, "por cima e a rota seguiu pela caverna")
		assert(vf.cave.text:GetText() == ns.L.CAVE_TOP:format("The Slag Pit"), "a linha não mostrou 'por cima'")
		vf.cave:GetScript("OnClick")(vf.cave)
		assert(T:Route().legs[#T:Route().legs].cave, "pela entrada de novo e a caverna não voltou")
		CV:Watch()                                                     -- o vigia guarda o estado de agora
		-- entrou (lugar fechado, a 30 jd do caminho): o vigia refaz e fica só o resto, de onde está
		eu = { c = 0, x = -6660, y = -1290 }
		fechado = true
		CV:Watch()
		local r3 = T:Route()
		assert(#r3.legs == 1 and r3.legs[1].cave and r3.legs[1].path[1].x == -6660, "entrou e a rota não seguiu o resto")
		-- quem entrou fica dentro numa câmara grande (55 jd do caminho), até sair para lugar aberto
		local e = CV.Of(dest, ns.caves)
		assert(CV:Inside(e, { c = 0, x = -6590, y = -1310 }) == true, "na câmara a 55 jd do caminho deixou de estar dentro")
		fechado = false; CV:Inside(e, { c = 0, x = -6590, y = -1310 }); fechado = true      -- saiu e voltou fechado
		-- para entrar: a 30 jd do caminho, em lugar fechado, é "dentro"; a 55 jd, não
		assert(CV:Inside(e, { c = 0, x = -6590, y = -1310 }) == false, "a 55 jd do caminho entrou sem passar perto")
		assert(CV:Inside(e, { c = 0, x = -6606.5, y = -1280.2 }) == true, "a 30 jd do caminho não contou como dentro")
		assert(CV:Inside(e, { c = 0, x = -6590, y = -1310 }) == true, "depois de entrar, a câmara a 55 jd não contou")
		eu = { c = 0, x = -6660, y = -1290 }; CV:Inside(e, eu)
		local seg2 = CV:Route(dest, { c = 0, x = -6660, y = -1290 }, false)
		assert(seg2 and not seg2.dentro, "trecho depois de uma parada usou o \"dentro\" do jogador")
		-- em voo ou a bordo, a troca não refaz a rota (sairia do meio do ar)
		local busy0, rantes = T.Busy, T:Route()
		T.Busy = function() return true end
		CV:Toggle()
		assert(T:Route() == rantes, "em voo e a troca refez a rota")
		T.Busy = busy0
		CV:Toggle()
		CV:Watch()
		-- o terreno não recalcula a perna da caverna, nem com o jogador a mais de 40 jd dela, nem ao gravar passagem
		assert(T:Route().legs[1].cave, "depois das trocas, a rota não voltou à caverna")
		local path0 = T:Route().legs[1].path
		eu = { c = 0, x = -6560, y = -1300 }
		for _ = 1, 5 do upd(ns.eventFrame, 0.06) end
		assert(T:Route().legs[1].path == path0, "o terreno recalculou o caminho da caverna")
		T:ResetPaths()
		assert(T:Route().legs[1].path == path0, "gravar passagem apagou o caminho da caverna")
		-- "por cima" na perna da caverna: a perna a pé nova não herda o caminho de dentro
		CV:Toggle()
		local rt = T:Route()
		assert(rt and not rt.legs[1].cave and rt.legs[1].path ~= path0, "a perna por cima herdou o caminho da caverna")
		CV:Toggle()
		CV:Watch()
		-- saiu (lugar aberto, longe da entrada e do caminho): o vigia refaz e volta a ir até a entrada
		fechado = false
		CV:Watch(); CV:Watch()
		local r4 = T:Route()
		assert(#r4.legs >= 2 and r4.legs[#r4.legs].cave and not r4.legs[1].cave, "saiu e a rota seguiu pela caverna de longe")
	end)
	ns.Destinations:Clear("manual")
	T.PlayerWorld, T.World, ns.Destinations.Active, _G.IsIndoors = pw, w0, act0, indoors
	ns.char.caves = {}
	T:ResetPaths()
	ns.Viewer:Refresh()
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
