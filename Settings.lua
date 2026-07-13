--=============================================================================
-- Settings — janela de configurações (abas + switches + sliders), ao vivo.
--=============================================================================
local ADDON, ns = ...
local S = {}
ns.Settings = S
local UI = ns.UI

local W = 460
local frame, tabs, pages, curTab

--------------------------------------------------------------------------------
-- linhas de opção
--------------------------------------------------------------------------------
-- Retorna (título, alturaDaDescrição). A descrição tem LARGURA FIXA + quebra de
-- linha, então nunca invade o switch nem vaza pra fora do painel.
local function labelPair(page, title, desc)
	local y = page._y or 14
	local t = page:CreateFontString(nil, "OVERLAY")
	UI.SetFont(t, 13, { color = UI.COL.active })
	t:SetPoint("TOPLEFT", 22, -y)
	t:SetText(title)
	local dh = 0
	if desc and desc ~= "" then
		local d = page:CreateFontString(nil, "OVERLAY")
		UI.SetFont(d, 11, { color = UI.COL.muted })
		d:SetPoint("TOPLEFT", 22, -y - 17)
		d:SetWidth(W - 108)                          -- reserva a faixa do switch à direita
		d:SetJustifyH("LEFT"); d:SetWordWrap(true)
		d:SetText(desc)
		-- altura por estimativa (independe do layout ter sido calculado ainda)
		local perLine = math.max(1, math.floor((W - 108) / 7))
		dh = math.max(1, math.ceil(#desc / perLine)) * 13
	end
	return t, dh
end

local function switchRow(page, title, desc, get, set, optin)
	local t, dh = labelPair(page, title, desc)
	if optin then   -- marca amarela "opt-in": desligado por padrão de propósito
		local b = page:CreateFontString(nil, "OVERLAY")
		UI.SetFont(b, 9.5, { num = true, color = UI.COL.amber })
		b:SetPoint("LEFT", t, "RIGHT", 6, 1)
		b:SetText("• " .. ns.L.SET_OPTIN)
	end
	local sw = UI.Switch(page, function(on) set(on) end)
	sw:SetPoint("TOPRIGHT", -22, -page._y - 2)
	sw:SetOn(get())
	page._y = page._y + (dh > 0 and (27 + dh) or 34)
	return sw
end

local function sliderRow(page, title, desc, minV, maxV, step, get, set, fmt)
	labelPair(page, title, desc)
	local val = page:CreateFontString(nil, "OVERLAY")
	UI.SetFont(val, 12, { num = true, color = UI.COL.accent })
	val:SetPoint("TOPRIGHT", -22, -page._y)
	local sl = UI.Slider(page, minV, maxV, step, function(v)
		val:SetText((fmt or "%d"):format(v))
		set(v)
	end)
	sl:SetPoint("TOPLEFT", 22, -page._y - 24)
	sl:SetPoint("RIGHT", page, "RIGHT", -22, 0)
	sl:SetValue(get())
	val:SetText((fmt or "%d"):format(get()))
	page._y = page._y + 48
end

local function buttonRow(page, title, desc, btnText, onClick)
	labelPair(page, title, desc)
	local b = UI.Button(page, btnText, 92, 22)
	b:SetPoint("TOPRIGHT", -22, -page._y - 2)
	b:SetScript("OnClick", onClick)
	page._y = page._y + 44
end

--------------------------------------------------------------------------------
-- páginas
--------------------------------------------------------------------------------
local function fillGeneral(p)
	local L = ns.L
	switchRow(p, L.SET_ACCEPT, L.SET_ACCEPT_D,
		function() return ns.db.autoAccept end, function(v) ns.db.autoAccept = v end)
	switchRow(p, L.SET_TURNIN, L.SET_TURNIN_D,
		function() return ns.db.autoTurnin end, function(v) ns.db.autoTurnin = v end)
	switchRow(p, L.SET_REWARD, L.SET_REWARD_D,
		function() return ns.db.autoReward end, function(v) ns.db.autoReward = v end, true)
	switchRow(p, L.SET_GOSSIP, L.SET_GOSSIP_D,
		function() return ns.db.autoGossip end, function(v) ns.db.autoGossip = v end)
	switchRow(p, L.SET_REPAIR, L.SET_REPAIR_D,
		function() return ns.db.autoRepair end, function(v) ns.db.autoRepair = v end)
	switchRow(p, L.SET_SELL, L.SET_SELL_D,
		function() return ns.db.autoSell end, function(v) ns.db.autoSell = v end)
	switchRow(p, L.SET_GEAR, L.SET_GEAR_D,
		function() return ns.db.gearAdvisor end, function(v) ns.db.gearAdvisor = v end)
	switchRow(p, L.SET_SHARE, L.SET_SHARE_D,
		function() return ns.db.autoShareQuest end, function(v) ns.db.autoShareQuest = v end, true)
	switchRow(p, L.SET_MOBWARN, L.SET_MOBWARN_D,
		function() return ns.db.mobWarning end, function(v) ns.db.mobWarning = v end)
	buttonRow(p, L.SET_LIBRARY, L.SET_LIBRARY_D,
		L.SET_OPEN, function() if ns.GuideMenu then ns.GuideMenu:Open() end end)
	buttonRow(p, L.SET_RAIDS, L.SET_RAIDS_D,
		L.SET_OPEN, function() if ns.Attunements then ns.Attunements:Toggle() end end)
	buttonRow(p, L.SET_SQUAD, L.SET_SQUAD_D,
		L.SET_OPEN, function() if ns.Squad then ns.Squad:Toggle() end end)
	buttonRow(p, L.SET_GATHER, L.SET_GATHER_D,
		L.SET_OPEN, function() if ns.Gather then ns.Gather:Open() end end)
	buttonRow(p, L.SET_CONS, L.SET_CONS_D,
		L.SET_OPEN, function() if ns.Consumables then ns.Consumables:Toggle() end end)
end

local function fillAppearance(p)
	local L = ns.L
	switchRow(p, L.SET_ARROW, L.SET_ARROW_D,
		function() return ns.db.arrow.enabled end,
		function(v) ns.db.arrow.enabled = v; if ns.Waypoint then ns.Waypoint:Update() end end)
	switchRow(p, L.SET_TRAIL, L.SET_TRAIL_D,
		function() return ns.db.trail end, function(v) ns.db.trail = v end)
	switchRow(p, L.SET_XPHUD, L.SET_XPHUD_D,
		function() return ns.db.xpHud end,
		function(v) ns.db.xpHud = v; if ns.XPHud then ns.XPHud:Update() end end)
	switchRow(p, L.SET_TALENTS, L.SET_TALENTS_D,
		function() return ns.db.talents end,
		function(v) ns.db.talents = v; if ns.Talents then ns.Talents:Update() end end)
	switchRow(p, L.SET_CARD, L.SET_CARD_D,
		function() return ns.db.reportCard end, function(v) ns.db.reportCard = v end)
	switchRow(p, L.SET_MARK, L.SET_MARK_D,
		function() return ns.db.markTargets end,
		function(v) ns.db.markTargets = v; if not v and ns.TargetMarker then ns.TargetMarker:RefreshPlates() end end)
	switchRow(p, L.SET_COORDS, L.SET_COORDS_D,
		function() return ns.db.coords end,
		function(v) ns.db.coords = v; if ns.Coords then ns.Coords.Update() end end)
	switchRow(p, L.SET_MAPPINS, L.SET_MAPPINS_D,
		function() return ns.db.guideMap end, function(v) ns.db.guideMap = v end)
	sliderRow(p, L.SET_SCALE, "", 70, 140, 5,
		function() return (ns.db.viewer.scale or 1) * 100 end,
		function(v) ns.db.viewer.scale = v / 100; if ns.Viewer then ns.Viewer:ApplyDisplay() end end, "%d%%")
	sliderRow(p, L.SET_ALPHA, "", 30, 100, 5,
		function() return (ns.db.viewer.alpha or 1) * 100 end,
		function(v) ns.db.viewer.alpha = v / 100; if ns.Viewer then ns.Viewer:ApplyDisplay() end end, "%d%%")
end

local function fillAlerts(p)
	switchRow(p, ns.L.SET_TOASTS, ns.L.SET_TOASTS_D,
		function() return ns.db.toastsEnabled end, function(v) ns.db.toastsEnabled = v end)
end

local PAGES = {
	{ key = "geral", label = ns.L.SET_TAB_GENERAL, fill = fillGeneral },
	{ key = "aparencia", label = ns.L.SET_TAB_LOOK, fill = fillAppearance },
	{ key = "alertas", label = ns.L.SET_TAB_ALERTS, fill = fillAlerts },
}

--------------------------------------------------------------------------------
local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarSettings" })
	frame:SetSize(W, 340)
	frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	UI.CornerFlourish(frame)

	-- cabeçalho
	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(46)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", C.accent)
	line:SetPoint("TOPLEFT"); line:SetPoint("TOPRIGHT"); line:SetHeight(2)

	local gemGlow = UI.Media(header, "glow", "BACKGROUND"); gemGlow:SetSize(32, 32)
	gemGlow:SetPoint("LEFT", 12, 0); gemGlow:SetVertexColor(0.88, 0.66, 0.31, 1); gemGlow:SetAlpha(0.45)
	local gem = UI.Icon(header, "icone-gema", "ARTWORK", 128); gem:SetSize(24, 24)
	gem:SetPoint("CENTER", gemGlow, "CENTER")

	local title = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(title, 17, { title = true, color = C.active })
	title:SetPoint("LEFT", gemGlow, "RIGHT", 8, 4); title:SetText("LODESTAR")
	local sub = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(sub, 10, { num = true, color = C.muted })
	sub:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 1, -1)
	sub:SetText(("%s · v%s"):format(ns.L.SET_TITLE, ns.version or "?"))

	local close = UI.CloseButton(header, function() S:Hide() end)
	close:SetPoint("RIGHT", -8, 0)

	-- abas
	local tabbar = CreateFrame("Frame", nil, frame)
	tabbar:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 16, -6)
	tabbar:SetPoint("RIGHT", frame, "RIGHT", -16, 0); tabbar:SetHeight(28)
	local underline = UI.Rect(frame, "ARTWORK", { 1, 1, 1, 0.07 })
	underline:SetPoint("TOPLEFT", tabbar, "BOTTOMLEFT", -4, 0)
	underline:SetPoint("RIGHT", frame, "RIGHT", -16, 0); underline:SetHeight(1)

	tabs, pages = {}, {}
	local tx = 0
	for i, def in ipairs(PAGES) do
		local page = CreateFrame("Frame", nil, frame)
		page:SetPoint("TOPLEFT", tabbar, "BOTTOMLEFT", -12, -8)
		page:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -8, 8)
		page._y = 14
		def.fill(page)
		page:Hide()
		pages[i] = page

		local tab = UI.Tab(tabbar, def.label, function() S:SelectTab(i) end)
		tab:SetPoint("LEFT", tx, 0)
		tx = tx + tab:GetWidth() + 6
		tabs[i] = tab
	end

	S:SelectTab(1)
	-- ajusta altura para caber a maior página
	local maxY = 60
	for _, p in ipairs(pages) do maxY = math.max(maxY, p._y) end
	frame:SetHeight(46 + 34 + maxY + 8)
	return frame
end

function S:SelectTab(i)
	curTab = i
	for j, p in ipairs(pages) do p:SetShown(j == i) end
	for j, t in ipairs(tabs) do t:SetActive(j == i) end
end

function S:Show() build(); frame:Show() end
function S:Hide() if frame then frame:Hide() end end
function S:Toggle() build(); if frame:IsShown() then frame:Hide() else frame:Show() end end
