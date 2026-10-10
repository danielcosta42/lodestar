--=============================================================================
-- Settings — janela de configurações: menu de seções à esquerda, conteúdo com
-- rolagem à direita. Tamanho fixo (cabe em qualquer tela); tudo vale ao vivo.
--=============================================================================
local ADDON, ns = ...
local S = {}
ns.Settings = S
local UI = ns.UI

local W, H = 640, 520
local NAV_W = 168                         -- coluna do menu
local HEAD_H = 52
local CONTENT_W = W - NAV_W - 52          -- largura útil do conteúdo (sobra a barra de rolagem)
local CTRL_W = 110                        -- faixa do controle à direita de cada linha
local VIEW_H = H - HEAD_H - 28            -- altura visível do conteúdo

local frame, scroll, thumb, navBtns, pages, cur

--------------------------------------------------------------------------------
-- linhas de opção
--------------------------------------------------------------------------------
-- altura de um texto com quebra de linha: a da fonte; sem ela (ainda sem layout),
-- uma estimativa por caractere — não por byte, que contava acento em dobro
local function alturaTexto(fs, texto, largura, porLinha)
	local h = fs.GetStringHeight and fs:GetStringHeight()
	if h and h > 0 then return h end
	local chars = select(2, texto:gsub("[^\128-\191]", ""))
	return math.max(1, math.ceil(chars * 6 / largura)) * porLinha
end

-- título + descrição; devolve o título e a altura ocupada
local function labelPair(page, title, desc)
	local y = page._y
	local t = page:CreateFontString(nil, "OVERLAY")
	UI.SetFont(t, 13, { color = UI.COL.active })
	t:SetPoint("TOPLEFT", 0, -y)
	t:SetText(title)
	local h = 17
	if desc and desc ~= "" then
		local d = page:CreateFontString(nil, "OVERLAY")
		UI.SetFont(d, 11, { color = UI.COL.muted })
		d:SetPoint("TOPLEFT", 0, -y - 19)
		d:SetWidth(CONTENT_W - CTRL_W)            -- nunca invade o controle
		d:SetJustifyH("LEFT"); d:SetWordWrap(true)
		d:SetText(desc)
		h = 19 + alturaTexto(d, desc, CONTENT_W - CTRL_W, 13)
	end
	return t, h
end

-- fecha a linha: espaço embaixo e um fio separando da próxima
local function fimDeLinha(page, h)
	page._y = page._y + math.max(h, 26) + 10
	local sep = UI.Rect(page, "ARTWORK", { 1, 1, 1, 0.06 })
	sep:SetPoint("TOPLEFT", 0, -page._y); sep:SetSize(CONTENT_W, 1)
	page._y = page._y + 11
end

local function switchRow(page, title, desc, get, set, optin)
	local t, h = labelPair(page, title, desc)
	if optin then   -- selo "opcional": desligado por padrão de propósito
		local b = page:CreateFontString(nil, "OVERLAY")
		UI.SetFont(b, 10, { num = true, color = UI.COL.amber })
		b:SetPoint("LEFT", t, "RIGHT", 8, 0)
		b:SetText("• " .. ns.L.SET_OPTIN)
	end
	local sw = UI.Switch(page, function(on) set(on) end)
	sw:SetPoint("TOPRIGHT", page, "TOPLEFT", CONTENT_W, -page._y)
	sw:SetOn(get())
	fimDeLinha(page, h)
	return sw
end

local function buttonRow(page, title, desc, btnText, onClick)
	local _, h = labelPair(page, title, desc)
	local b = UI.Button(page, btnText, 96, 24)
	b:SetPoint("TOPRIGHT", page, "TOPLEFT", CONTENT_W, -page._y)
	b:SetScript("OnClick", onClick)
	fimDeLinha(page, h)
end

local function sliderRow(page, title, desc, minV, maxV, step, get, set, fmt)
	local _, h = labelPair(page, title, desc)
	local val = page:CreateFontString(nil, "OVERLAY")
	UI.SetFont(val, 13, { num = true, color = UI.COL.accent })
	val:SetPoint("TOPRIGHT", page, "TOPLEFT", CONTENT_W, -page._y)
	local sl = UI.Slider(page, minV, maxV, step, function(v)
		val:SetText((fmt or "%d"):format(v))
		set(v)
	end)
	sl:SetPoint("TOPLEFT", 0, -page._y - h - 8)
	sl:SetWidth(CONTENT_W)
	local function sync()
		local v = get()
		if sl:GetValue() ~= v then sl:SetValue(v) end
		val:SetText((fmt or "%d"):format(v))
	end
	sync()
	sl:HookScript("OnShow", sync)                  -- valor atual, não o de quando a página nasceu
	fimDeLinha(page, h + 26)
end

--------------------------------------------------------------------------------
-- seções
--------------------------------------------------------------------------------
local function fillAuto(p)
	local L = ns.L
	switchRow(p, L.SET_ACCEPT, L.SET_ACCEPT_D,
		function() return ns.db.autoAccept end, function(v) ns.db.autoAccept = v end)
	switchRow(p, L.SET_TURNIN, L.SET_TURNIN_D,
		function() return ns.db.autoTurnin end, function(v) ns.db.autoTurnin = v end)
	switchRow(p, L.SET_REWARD, L.SET_REWARD_D,
		function() return ns.db.autoReward end, function(v) ns.db.autoReward = v end, true)
	switchRow(p, L.SET_GOSSIP, L.SET_GOSSIP_D,
		function() return ns.db.autoGossip end, function(v) ns.db.autoGossip = v end)
	switchRow(p, L.SET_SKIP, L.SET_SKIP_D,
		function() return ns.db.autoSkip ~= false end, function(v) ns.db.autoSkip = v end)
	switchRow(p, L.SET_REPAIR, L.SET_REPAIR_D,
		function() return ns.db.autoRepair end, function(v) ns.db.autoRepair = v end)
	switchRow(p, L.SET_SELL, L.SET_SELL_D,
		function() return ns.db.autoSell end, function(v) ns.db.autoSell = v end)
end

local function fillNav(p)
	local L = ns.L
	switchRow(p, L.SET_ARROW, L.SET_ARROW_D,
		function() return ns.db.arrow.enabled end,
		function(v) ns.db.arrow.enabled = v; if ns.Waypoint then ns.Waypoint:Update() end end)
	switchRow(p, L.SET_TRAIL, L.SET_TRAIL_D,
		function() return ns.db.trail end, function(v) ns.db.trail = v end)
	switchRow(p, L.SET_COMPASS, L.SET_COMPASS_D,
		function() return ns.db.compass.enabled end, function(v) ns.db.compass.enabled = v end)
	switchRow(p, L.SET_COMPASS_LOCK, L.SET_COMPASS_LOCK_D,
		function() return ns.db.compass.locked end,
		function(v) ns.db.compass.locked = v; if ns.Compass then ns.Compass:ApplyDisplay() end end)
	sliderRow(p, L.SET_COMPASS_SCALE, "", 50, 200, 5,
		function() return (ns.db.compass.scale or 1) * 100 end,
		function(v) ns.db.compass.scale = v / 100; if ns.Compass then ns.Compass:ApplyDisplay() end end, "%d%%")
	switchRow(p, L.SET_MAPPINS, L.SET_MAPPINS_D,
		function() return ns.db.guideMap end, function(v) ns.db.guideMap = v end)
	switchRow(p, L.SET_CORPSE, L.SET_CORPSE_D,
		function() return ns.db.corpseRoute ~= false end,
		function(v) ns.db.corpseRoute = v; if ns.Destinations.Sync then ns.Destinations.Sync() end end)
	sliderRow(p, L.SET_MMRANGE, L.SET_MMRANGE_D, 50, 200, 5,
		function() return (ns.db.minimap.rangeMult or 1) * 100 end,
		function(v) ns.db.minimap.rangeMult = v / 100 end, "%d%%")
end

local function fillHud(p)
	local L = ns.L
	sliderRow(p, L.SET_SCALE, "", 70, 140, 5,
		function() return (ns.db.viewer.scale or 1) * 100 end,
		function(v) ns.db.viewer.scale = v / 100; if ns.Viewer then ns.Viewer:ApplyDisplay() end end, "%d%%")
	sliderRow(p, L.SET_ALPHA, "", 30, 100, 5,
		function() return (ns.db.viewer.alpha or 1) * 100 end,
		function(v) ns.db.viewer.alpha = v / 100; if ns.Viewer then ns.Viewer:ApplyDisplay() end end, "%d%%")
	switchRow(p, L.SET_XPHUD, L.SET_XPHUD_D,
		function() return ns.db.xpHud end,
		function(v) ns.db.xpHud = v; if ns.XPHud then ns.XPHud:Update() end end)
	switchRow(p, L.SET_SPLITS, L.SET_SPLITS_D,
		function() return ns.db.splits.enabled end,
		function(v) if v ~= ns.db.splits.enabled and ns.Splits then ns.Splits:Toggle() end end)
	sliderRow(p, L.SET_SPLITS_SCALE, "", 70, 160, 5,
		function() return (ns.db.splits.scale or 1) * 100 end,
		function(v) ns.db.splits.scale = v / 100; if ns.Splits then ns.Splits:ApplyScale() end end, "%d%%")
	switchRow(p, L.SET_COORDS, L.SET_COORDS_D,
		function() return ns.db.coords end,
		function(v) ns.db.coords = v; if ns.Coords then ns.Coords.Update() end end)
	switchRow(p, L.SET_MARK, L.SET_MARK_D,
		function() return ns.db.markTargets end,
		function(v) ns.db.markTargets = v; if not v and ns.TargetMarker then ns.TargetMarker:RefreshPlates() end end)
	switchRow(p, L.SET_QITEM, L.SET_QITEM_D,
		function() return ns.db.questItem end,
		function(v) ns.db.questItem = v; if ns.QuestItem then ns.QuestItem.Update() end end)
	switchRow(p, L.SET_MOBWARN, L.SET_MOBWARN_D,
		function() return ns.db.mobWarning end, function(v) ns.db.mobWarning = v end)
	switchRow(p, L.SET_GEAR, L.SET_GEAR_D,
		function() return ns.db.gearAdvisor end, function(v) ns.db.gearAdvisor = v end)
	switchRow(p, L.SET_TOASTS, L.SET_TOASTS_D,
		function() return ns.db.toastsEnabled end, function(v) ns.db.toastsEnabled = v end)
end

local function fillGroup(p)
	local L = ns.L
	switchRow(p, L.SET_SHARE, L.SET_SHARE_D,
		function() return ns.db.autoShareQuest end, function(v) ns.db.autoShareQuest = v end, true)
	switchRow(p, L.SET_SHAREQ, L.SET_SHAREQ_D,
		function() return ns.db.shareQuests end, function(v) ns.db.shareQuests = v end, true)
	switchRow(p, L.SET_CARD, L.SET_CARD_D,
		function() return ns.db.reportCard end, function(v) ns.db.reportCard = v end)
	switchRow(p, L.SET_CARD_EVERY, L.SET_CARD_EVERY_D,
		function() return ns.db.cardEvery end, function(v) ns.db.cardEvery = v end)
	switchRow(p, L.SET_CARD_GUILD, L.SET_CARD_GUILD_D,
		function() return ns.db.cardAskGuild ~= false end, function(v) ns.db.cardAskGuild = v end)
	switchRow(p, L.SET_RACE_CHAT, L.SET_RACE_CHAT_D,
		function() return ns.db.raceChat ~= false end, function(v) ns.db.raceChat = v end)
	switchRow(p, L.SET_RACE_TOAST, L.SET_RACE_TOAST_D,
		function() return ns.db.raceToasts ~= false end, function(v) ns.db.raceToasts = v end)
end

-- as janelas que só abriam pelo /ls
local function fillTools(p)
	local L = ns.L
	buttonRow(p, L.SET_LIBRARY, L.SET_LIBRARY_D,
		L.SET_OPEN, function() if ns.GuideMenu then ns.GuideMenu:Open() end end)
	buttonRow(p, L.SET_RETRO, L.SET_RETRO_D,
		L.SET_OPEN, function() if ns.Retro then ns.Retro:Show() end end)
	buttonRow(p, L.SET_RACE, L.SET_RACE_D,
		L.SET_OPEN, function() if ns.RacePanel then ns.RacePanel:Toggle() end end)
	buttonRow(p, L.SET_GATHER, L.SET_GATHER_D,
		L.SET_OPEN, function() if ns.Gather then ns.Gather:Open() end end)
	buttonRow(p, L.SET_CONS, L.SET_CONS_D,
		L.SET_OPEN, function() if ns.Consumables then ns.Consumables:Toggle() end end)
	buttonRow(p, L.SET_CARDNOW, L.SET_CARDNOW_D, L.SET_OPEN, function() SlashCmdList.LODESTAR("card") end)
	buttonRow(p, L.SET_TOUR, L.SET_TOUR_D, L.SET_OPEN, function() SlashCmdList.LODESTAR("intro") end)
end

local function fillAdvanced(p)
	local L = ns.L
	switchRow(p, L.SET_DEBUG, L.SET_DEBUG_D,
		function() return ns.db.debug end, function(v) ns.db.debug = v end)
	buttonRow(p, L.SET_TDEBUG, L.SET_TDEBUG_D, L.SET_RUN, function() SlashCmdList.LODESTAR("tdebug") end)
end

local SECOES = {
	{ label = ns.L.SET_SEC_AUTO, glyph = "check", fill = fillAuto },
	{ label = ns.L.SET_SEC_NAV, glyph = "seta-rota", fill = fillNav },
	{ label = ns.L.SET_SEC_HUD, glyph = "losango", fill = fillHud },
	{ label = ns.L.SET_SEC_GROUP, glyph = "estrela", fill = fillGroup },
	{ label = ns.L.SET_SEC_TOOLS, glyph = "livro", fill = fillTools },
	{ label = ns.L.SET_TAB_ADV, glyph = "config", fill = fillAdvanced },
}

--------------------------------------------------------------------------------
-- rolagem
--------------------------------------------------------------------------------
local function alcance()
	return math.max(0, (pages[cur] and pages[cur]._y or 0) - VIEW_H)
end

local function rolar(v)
	local max = alcance()
	v = math.max(0, math.min(max, v))
	scroll:SetVerticalScroll(v)
	if max <= 0 then thumb:Hide(); return end
	local th = math.max(24, VIEW_H * VIEW_H / (VIEW_H + max))
	thumb:SetHeight(th)
	thumb:ClearAllPoints()
	thumb:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -8, -HEAD_H - 14 - (VIEW_H - th) * v / max)
	thumb:Show()
end

--------------------------------------------------------------------------------
local function navButton(parent, i, def)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(NAV_W, 36)
	b:SetPoint("TOPLEFT", 0, -10 - (i - 1) * 38)
	local hl = UI.Rect(b, "BACKGROUND", { 1, 1, 1, 0.05 }); hl:SetAllPoints(); hl:Hide()
	local bar = UI.Rect(b, "ARTWORK", UI.COL.accent); bar:SetPoint("TOPLEFT"); bar:SetPoint("BOTTOMLEFT")
	bar:SetWidth(3); bar:Hide()
	local ic = UI.Glyph(b, def.glyph, "ARTWORK", 64); ic:SetSize(16, 16); ic:SetPoint("LEFT", 16, 0)
	local fs = b:CreateFontString(nil, "OVERLAY")
	UI.SetFont(fs, 13, { color = UI.COL.muted })
	fs:SetPoint("LEFT", ic, "RIGHT", 10, 0); fs:SetText(def.label)
	function b:SetActive(on)
		hl:SetShown(on); bar:SetShown(on)
		fs:SetTextColor(UI.unpackc(on and UI.COL.active or UI.COL.muted))
		ic:SetVertexColor(UI.unpackc(on and UI.COL.accent or UI.COL.muted))
	end
	b:SetScript("OnEnter", function() if not bar:IsShown() then fs:SetTextColor(UI.unpackc(UI.COL.active)) end end)
	b:SetScript("OnLeave", function() if not bar:IsShown() then fs:SetTextColor(UI.unpackc(UI.COL.muted)) end end)
	b:SetScript("OnClick", function() S:SelectSection(i) end)
	return b
end

local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarSettings" })
	frame:SetSize(W, H)
	frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	UI.CornerFlourish(frame)

	-- cabeçalho
	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(HEAD_H)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", C.accent)
	line:SetPoint("TOPLEFT"); line:SetPoint("TOPRIGHT"); line:SetHeight(2)
	local gemGlow = UI.Media(header, "glow", "BACKGROUND"); gemGlow:SetSize(32, 32)
	gemGlow:SetPoint("LEFT", 14, 0); gemGlow:SetVertexColor(0.88, 0.66, 0.31, 1); gemGlow:SetAlpha(0.45)
	local gem = UI.Icon(header, "icone-gema", "ARTWORK", 128); gem:SetSize(24, 24)
	gem:SetPoint("CENTER", gemGlow, "CENTER")
	local title = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(title, 17, { title = true, color = C.active })
	title:SetPoint("LEFT", gemGlow, "RIGHT", 8, 5); title:SetText("LODESTAR")
	local sub = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(sub, 10, { num = true, color = C.muted })
	sub:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 1, -2)
	sub:SetText(("%s · v%s"):format(ns.L.SET_TITLE, ns.version or "?"))
	local close = UI.CloseButton(header, function() S:Hide() end)
	close:SetPoint("RIGHT", -10, 0)

	-- menu de seções
	local nav = UI.Panel(frame, { color = { 0, 0, 0, 0.22 }, border = false })
	nav:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, 0)
	nav:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 1, 1); nav:SetWidth(NAV_W)

	-- conteúdo com rolagem
	scroll = CreateFrame("ScrollFrame", "LodestarSettingsScroll", frame)
	scroll:SetPoint("TOPLEFT", nav, "TOPRIGHT", 22, -14)
	scroll:SetSize(CONTENT_W, VIEW_H)
	scroll:EnableMouseWheel(true)
	scroll:SetScript("OnMouseWheel", function(_, delta) rolar(scroll:GetVerticalScroll() - delta * 48) end)
	thumb = UI.Rect(frame, "OVERLAY", { C.accent[1], C.accent[2], C.accent[3], 0.5 })
	thumb:SetWidth(3); thumb:Hide()

	navBtns, pages = {}, {}
	for i, def in ipairs(SECOES) do
		local page = CreateFrame("Frame", nil, scroll)
		page:SetWidth(CONTENT_W)
		local head = page:CreateFontString(nil, "OVERLAY")
		UI.SetFont(head, 16, { title = true, color = C.accent })
		head:SetPoint("TOPLEFT", 0, 0); head:SetText(def.label)
		page._y = 34
		def.fill(page)
		page:SetHeight(page._y)
		page:Hide()
		pages[i] = page
		navBtns[i] = navButton(nav, i, def)
	end

	S:SelectSection(1)
	return frame
end

function S:SelectSection(i)
	cur = i
	for j, p in ipairs(pages) do p:SetShown(j == i) end
	for j, b in ipairs(navBtns) do b:SetActive(j == i) end
	scroll:SetScrollChild(pages[i])
	rolar(0)
end

function S:Show() build(); frame:Show() end
function S:Hide() if frame then frame:Hide() end end
function S:Toggle() build(); if frame:IsShown() then frame:Hide() else frame:Show() end end
