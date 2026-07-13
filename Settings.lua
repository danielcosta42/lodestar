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
local function labelPair(page, title, desc)
	page._y = (page._y or 14) + 0
	local t = page:CreateFontString(nil, "OVERLAY")
	UI.SetFont(t, 13, { color = UI.COL.active })
	t:SetPoint("TOPLEFT", 22, -page._y)
	t:SetText(title)
	local d = page:CreateFontString(nil, "OVERLAY")
	UI.SetFont(d, 11, { color = UI.COL.muted })
	d:SetPoint("TOPLEFT", 22, -page._y - 17)
	d:SetText(desc or "")
	return t, d
end

local function switchRow(page, title, desc, get, set)
	labelPair(page, title, desc)
	local sw = UI.Switch(page, function(on) set(on) end)
	sw:SetPoint("TOPRIGHT", -22, -page._y - 2)
	sw:SetOn(get())
	page._y = page._y + (desc ~= "" and 44 or 34)
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
	switchRow(p, "Auto-aceitar missões", "Aceita a missão do passo automaticamente.",
		function() return ns.db.autoAccept end, function(v) ns.db.autoAccept = v end)
	switchRow(p, "Auto-entregar missões", "Entrega quando não há recompensa a escolher.",
		function() return ns.db.autoTurnin end, function(v) ns.db.autoTurnin = v end)
	switchRow(p, "Escolher recompensa", "Pega a melhor recompensa (equipável de maior nível).",
		function() return ns.db.autoReward end, function(v) ns.db.autoReward = v end)
	switchRow(p, "Diálogo automático", "Seleciona a quest/opção certa no gossip do NPC.",
		function() return ns.db.autoGossip end, function(v) ns.db.autoGossip = v end)
	switchRow(p, "Reparar automático", "Repara tudo ao abrir o vendedor (guilda primeiro).",
		function() return ns.db.autoRepair end, function(v) ns.db.autoRepair = v end)
	switchRow(p, "Vender lixo", "Vende itens cinza ao abrir o vendedor.",
		function() return ns.db.autoSell end, function(v) ns.db.autoSell = v end)
	switchRow(p, "Avisar upgrades", "Avisa quando um item da bolsa é melhoria.",
		function() return ns.db.gearAdvisor end, function(v) ns.db.gearAdvisor = v end)
	switchRow(p, "Compartilhar quest", "Compartilha a missão no grupo ao aceitar.",
		function() return ns.db.autoShareQuest end, function(v) ns.db.autoShareQuest = v end)
	switchRow(p, "Aviso de mob perigoso", "Alerta ao mirar inimigo muito acima do nível.",
		function() return ns.db.mobWarning end, function(v) ns.db.mobWarning = v end)
	buttonRow(p, "Biblioteca de guias", "Escolha ou troque o guia ativo.",
		"Abrir ›", function() if ns.GuideMenu then ns.GuideMenu:Open() end end)
end

local function fillAppearance(p)
	switchRow(p, "Seta de rota no mundo", "Seta flutuante apontando o objetivo.",
		function() return ns.db.arrow.enabled end,
		function(v) ns.db.arrow.enabled = v; if ns.Waypoint then ns.Waypoint:Update() end end)
	switchRow(p, "Caminho de formiga", "Trilha até o objetivo no minimapa e mapa.",
		function() return ns.db.trail end, function(v) ns.db.trail = v end)
	switchRow(p, "Painel de ritmo/XP", "XP/hora, tempo pro nível e adiantado/atrasado.",
		function() return ns.db.xpHud end,
		function(v) ns.db.xpHud = v; if ns.XPHud then ns.XPHud:Update() end end)
	switchRow(p, "Guia de talentos", "Sugere o próximo talento e aprende com 1 clique.",
		function() return ns.db.talents end,
		function(v) ns.db.talents = v; if ns.Talents then ns.Talents:Update() end end)
	switchRow(p, "Boletim de leveling", "Card com nota (S/A/B/C) e ritmo a cada marco.",
		function() return ns.db.reportCard end, function(v) ns.db.reportCard = v end)
	switchRow(p, "Marcar alvos", "Destaca NPCs/mobs do passo (tooltip e nameplate).",
		function() return ns.db.markTargets end,
		function(v) ns.db.markTargets = v; if not v and ns.TargetMarker then ns.TargetMarker:RefreshPlates() end end)
	switchRow(p, "Coordenadas", "Mostra suas coordenadas no minimapa e no mapa.",
		function() return ns.db.coords end,
		function(v) ns.db.coords = v; if ns.Coords then ns.Coords.Update() end end)
	switchRow(p, "Pontos no mapa", "Marca os próximos passos do guia no mapa-múndi.",
		function() return ns.db.guideMap end, function(v) ns.db.guideMap = v end)
	sliderRow(p, "Escala do painel", "", 70, 140, 5,
		function() return (ns.db.viewer.scale or 1) * 100 end,
		function(v) ns.db.viewer.scale = v / 100; if ns.Viewer then ns.Viewer:ApplyDisplay() end end, "%d%%")
	sliderRow(p, "Opacidade do painel", "", 30, 100, 5,
		function() return (ns.db.viewer.alpha or 1) * 100 end,
		function(v) ns.db.viewer.alpha = v / 100; if ns.Viewer then ns.Viewer:ApplyDisplay() end end, "%d%%")
end

local function fillAlerts(p)
	switchRow(p, "Toasts de evento", "Avisos de missão e nível, sem poluir a tela.",
		function() return ns.db.toastsEnabled end, function(v) ns.db.toastsEnabled = v end)
end

local PAGES = {
	{ key = "geral", label = "Geral", fill = fillGeneral },
	{ key = "aparencia", label = "Aparência", fill = fillAppearance },
	{ key = "alertas", label = "Alertas", fill = fillAlerts },
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
	sub:SetText(("CONFIGURAÇÕES · v%s"):format(ns.version or "?"))

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
