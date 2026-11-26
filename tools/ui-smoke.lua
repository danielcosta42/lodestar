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
	GetMountInfoByID = function(id) return "Montaria " .. id, 100 + id, 132226, false, true, 3, false, false, nil, false, id == 1, id end,
	GetMountInfoExtraByID = function() return nil, "", "|cFFFFD200Vendedor: |rKatie Hunter|n|cFFFFD200Zona: |rFloresta de Elwynn" end,
}
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
local function loadFirst(pattern)
	local p = io.popen('ls ' .. ROOT .. '/' .. pattern .. ' 2>/dev/null')
	local f = p and p:read("*l"); if p then p:close() end
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
for _, id in ipairs({ "home", "leveling", "dungeons", "gear", "collections", "legacy", "class", "reputation",
	"attunements", "events" }) do
	step("Hub:" .. id, function() ns.Hub:Show(id); ns.Hub:Show(id) end)
end
step("GuideMenu = Hub", function() assert(ns.GuideMenu == ns.Hub, "ns.GuideMenu aponta a Central") end)
step("Dungeons:GoToDoor", function() ns.Dungeons:GoToDoor(ns.dungeonData[3]) end)
step("Collections:GuideTo", function() ns.Collections:GuideTo(ns.Collections:Mounts()[2]) end)
step("Tidy", function() ns.QuestLogTidy:Toggle() end)
step("Report", function() ns.Report:Show() end)
step("Settings", function() ns.Settings:Toggle() end)
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
