--=============================================================================
-- Library — Biblioteca de Guias (grid de cards, brasões, chips, filtros, banner).
-- Substitui o navegador simples; exposto também como ns.GuideMenu (compat).
--=============================================================================
local ADDON, ns = ...
local LB = {}
ns.Library = LB
ns.GuideMenu = LB          -- alias: referências antigas continuam funcionando
local UI = ns.UI

local CAT_ORDER = { "Leveling", "Class", "Dungeons", "Attunements", "Reputation", "Dailies", "Events" }
local COLS, GAP, CARD_H = 3, 12, 118

local frame, scroll, content, cards, catTabs
local curCat, curFac, search = "Leveling", nil, ""

--------------------------------------------------------------------------------
-- metadados derivados (cache no objeto do guia)
--------------------------------------------------------------------------------
local function fmtTime(min)
	if min >= 90 then return ("~%dh"):format(math.floor(min / 60 + 0.5)) end
	return ("~%dm"):format(min)
end

local function guideMeta(guide)
	if guide._lib then return guide._lib end
	local body = guide.body or ""
	local steps = guide.steps and #guide.steps or select(2, body:gsub("\nstep", ""))
	local _, quests = body:gsub("accept ", "")
	local lo, hi = guide.key:match("%((%d+)%s*%-%s*(%d+)%)")
	guide._lib = {
		category = guide.key:match("^([^/]+)"),
		faction = guide.meta and guide.meta.faction,
		title = guide.key:match("[^/]+$"),
		steps = steps, quests = quests,
		lo = tonumber(lo), hi = tonumber(hi),
		minutes = math.max(3, math.floor(steps * 4)),
	}
	return guide._lib
end

local function crestOf(fac) -- retorna (letra/tex, cor)
	if fac == "Alliance" then return "A", UI.COL.factionA end
	if fac == "Horde" then return "H", UI.COL.factionH end
	return nil, UI.COL.accent   -- neutro = gema
end

--------------------------------------------------------------------------------
-- lista filtrada
--------------------------------------------------------------------------------
local function computeList()
	local pf = UnitFactionGroup("player")
	local plvl = UnitLevel("player")
	local q = search:lower()
	local out = {}
	for key, guide in pairs(ns.guides) do
		local m = guideMeta(guide)
		if m.category == curCat
			and (not m.faction or m.faction == curFac)   -- só facção do player + neutros
			and (q == "" or key:lower():find(q, 1, true))
		then
			m.key = key
			-- badge "Recomendado": leveling da faixa e facção do jogador
			m.reco = (curCat == "Leveling" and (not m.faction or m.faction == pf)
				and m.lo and m.hi and plvl >= m.lo and plvl <= m.hi)
			out[#out + 1] = m
		end
	end
	table.sort(out, function(a, b)
		if (a.lo or 999) ~= (b.lo or 999) then return (a.lo or 999) < (b.lo or 999) end
		return a.title < b.title
	end)
	return out
end

--------------------------------------------------------------------------------
-- card
--------------------------------------------------------------------------------
local function makeCard(i)
	if cards[i] then return cards[i] end
	local C = UI.COL
	local card = CreateFrame("Button", nil, content)
	card:SetHeight(CARD_H)
	local bg = UI.Rect(card, "BACKGROUND", C.panel); bg:SetAllPoints()
	UI.AddBorder(card, { 1, 1, 1, 0.07 })
	local stripe = UI.Rect(card, "ARTWORK", C.accent)
	stripe:SetPoint("TOPLEFT"); stripe:SetPoint("TOPRIGHT"); stripe:SetHeight(3)
	card.stripe = stripe

	-- brasão (emblema de facção ou gema neutra)
	local crest = CreateFrame("Frame", nil, card)
	crest:SetSize(38, 38); crest:SetPoint("TOPLEFT", 12, -12)
	local cbg = UI.Rect(crest, "BACKGROUND", { 1, 1, 1, 0.06 }); cbg:SetAllPoints()
	UI.AddBorder(crest, C.border)
	local emblem = crest:CreateTexture(nil, "OVERLAY"); emblem:SetSize(26, 26); emblem:SetPoint("CENTER")
	card.crest = { frame = crest, bg = cbg, emblem = emblem }

	card.title = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.title, 14, { title = true, color = C.active })
	card.title:SetPoint("LEFT", crest, "RIGHT", 11, 1)   -- centralizado no brasão
	card.title:SetPoint("RIGHT", card, "RIGHT", -10, 0)
	card.title:SetJustifyH("LEFT"); card.title:SetWordWrap(false)

	-- chips
	card.chips = {}
	for c = 1, 3 do
		local chip = UI.Chip(card, { 0, 0, 0, 0.35 }, C.muted)
		if c == 1 then chip:SetPoint("TOPLEFT", crest, "BOTTOMLEFT", 0, -10)
		else chip:SetPoint("LEFT", card.chips[c - 1], "RIGHT", 5, 0) end
		card.chips[c] = chip
	end
	card.chips[1]:SetIcon("losango", C.soft)   -- nível
	card.chips[2]:SetIcon("bandeira", C.soft)  -- quests
	card.chips[3]:SetIcon("relogio", C.soft)   -- tempo

	-- badge
	card.badge = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.badge, 9.5, { num = true, color = { 0.10, 0.09, 0.06 } })
	card.badge:SetPoint("TOPRIGHT", -8, -9)
	card.badgeBg = UI.Rect(card, "ARTWORK", C.accent)
	card.badgeBg:SetPoint("TOPRIGHT", card.badge, "TOPRIGHT", 5, 3)
	card.badgeBg:SetPoint("BOTTOMLEFT", card.badge, "BOTTOMLEFT", -5, -2)

	-- rodapé: progresso ou botão
	card.bar = UI.Bar(card)
	card.bar:SetPoint("BOTTOMLEFT", 12, 12); card.bar:SetPoint("RIGHT", card, "RIGHT", -100, 0)
	card.bar:SetHeight(5)
	card.pct = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.pct, 10, { num = true, color = C.accent })
	card.pct:SetPoint("LEFT", card.bar, "RIGHT", 6, 0)
	card.action = UI.Button(card, "", 82, 22)
	card.action:SetPoint("BOTTOMRIGHT", -10, 9)
	card.action:SetScript("OnClick", function()
		if card._key then ns:LoadGuide(card._key); if ns.Viewer then ns.Viewer:Show() end; LB:Hide() end
	end)

	card:SetScript("OnEnter", function(self)
		for _, t in pairs(self._border) do t:SetColorTexture(UI.unpackc(C.borderHi)) end
		bg:SetColorTexture(0.15, 0.14, 0.10, 1)
	end)
	card:SetScript("OnLeave", function(self)
		for _, t in pairs(self._border) do t:SetColorTexture(1, 1, 1, 0.07) end
		bg:SetColorTexture(UI.unpackc(C.panel))
	end)
	card:SetScript("OnClick", function(self)
		if self._key then ns:LoadGuide(self._key); if ns.Viewer then ns.Viewer:Show() end; LB:Hide() end
	end)
	cards[i] = card
	return card
end

local function fillCard(card, m)
	local C = UI.COL
	card._key = m.key
	local _, col = crestOf(m.faction)
	card.stripe:SetColorTexture(UI.unpackc(col))
	card.crest.bg:SetColorTexture(col[1], col[2], col[3], 0.14)
	local em = card.crest.emblem
	if m.faction == "Alliance" then em:SetTexture(UI.GLYPH .. "faccao-alianca-64")
	elseif m.faction == "Horde" then em:SetTexture(UI.GLYPH .. "faccao-horda-64")
	else em:SetTexture(UI.ICON .. "icone-gema-64") end
	em:SetVertexColor(1, 1, 1, 1)

	card.title:SetText((m.title:gsub("%s*%(.-%)%s*$", "")))

	-- chips: nível (só se houver faixa) · passos · tempo — re-ancorados p/ não deixar buraco
	local shown = {}
	if m.lo then card.chips[1]:Set(("%d-%d"):format(m.lo, m.hi)); shown[#shown + 1] = card.chips[1]
	else card.chips[1]:Hide() end
	card.chips[2]:Set(("%d"):format(m.steps)); shown[#shown + 1] = card.chips[2]
	card.chips[3]:Set(fmtTime(m.minutes)); shown[#shown + 1] = card.chips[3]
	for i, ch in ipairs(shown) do
		ch:ClearAllPoints()
		if i == 1 then ch:SetPoint("TOPLEFT", card.crest.frame, "BOTTOMLEFT", 0, -10)
		else ch:SetPoint("LEFT", shown[i - 1], "RIGHT", 5, 0) end
		ch:Show()
	end

	if m.reco then
		card.badge:SetText(ns.L.BADGE_RECO); card.badge:Show(); card.badgeBg:Show()
	else
		card.badge:Hide(); card.badgeBg:Hide()
	end

	-- progresso vs seleção: qualquer guia com passo salvo (aba aberta ou fechada
	-- com progresso) mostra a barra + "Continuar"; os demais mostram "Selecionar".
	local cur = (ns.char.steps and ns.char.steps[m.key])
		or (ns.char.currentGuide == m.key and ns.char.currentStep) or 0
	if cur > 0 and m.steps > 0 then
		local frac = math.min(1, cur / m.steps)
		card.bar:Show(); card.bar:SetProgress(frac)
		card.pct:SetText(("%d%%"):format(frac * 100)); card.pct:Show()
		card.action.text:SetText(ns.L.CONTINUE)
	else
		card.bar:Hide(); card.pct:Hide()
		card.action.text:SetText(ns.L.SELECT)
	end
	card:Show()
end

--------------------------------------------------------------------------------
-- layout / render
--------------------------------------------------------------------------------
function LB:Render()
	if not frame or not frame:IsShown() then return end
	for _, c in ipairs(cards) do c:Hide() end
	local list = computeList()
	frame.section:SetText(ns.L.N_GUIDES:format(ns.L["CAT_" .. curCat] or curCat, #list))
	frame.empty:SetShown(#list == 0)

	local w = content:GetWidth(); if w <= 0 then w = 760 end
	local cardW = (w - GAP * (COLS - 1)) / COLS
	for i, m in ipairs(list) do
		local card = makeCard(i)
		card:SetWidth(cardW)
		local col = (i - 1) % COLS
		local rowi = math.floor((i - 1) / COLS)
		card:ClearAllPoints()
		card:SetPoint("TOPLEFT", content, "TOPLEFT", col * (cardW + GAP), -rowi * (CARD_H + GAP))
		fillCard(card, m)
	end
	local rows = math.ceil(#list / COLS)
	content:SetHeight(math.max(1, rows * (CARD_H + GAP)))
	scroll:SetVerticalScroll(0)

	for _, t in ipairs(catTabs) do t:SetActive(t._cat == curCat) end

	-- banner "continuar"
	local g = ns.char.currentGuide and ns.guides[ns.char.currentGuide]
	if g then
		local m = guideMeta(g)
		frame.banner:Show()
		if m.faction == "Alliance" then frame.banner.crest:SetTexture(UI.GLYPH .. "faccao-alianca-64")
		elseif m.faction == "Horde" then frame.banner.crest:SetTexture(UI.GLYPH .. "faccao-horda-64")
		else frame.banner.crest:SetTexture(UI.ICON .. "icone-gema-64") end
		frame.banner.crest:SetVertexColor(1, 1, 1, 1)
		frame.banner.title:SetText((m.title:gsub("%s*%(.-%)%s*$", "")))
		local frac = m.steps > 0 and math.min(1, ns.char.currentStep / m.steps) or 0
		frame.banner.bar:SetProgress(frac)
		frame.banner.pct:SetText(("%d%%  ·  %s"):format(frac * 100, m.category))
	else
		frame.banner:Hide()
	end
end

--------------------------------------------------------------------------------
-- construção
--------------------------------------------------------------------------------
local function build()
	if frame then return frame end
	local C = UI.COL
	cards, catTabs = {}, {}
	curFac = UnitFactionGroup("player")

	frame = UI.Panel(UIParent, { name = "LodestarLibrary" })
	frame:SetSize(820, 560)
	frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	UI.CornerFlourish(frame)

	-- cabeçalho
	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(48)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", C.accent); line:SetPoint("TOPLEFT"); line:SetPoint("TOPRIGHT"); line:SetHeight(2)
	local gem = UI.Icon(header, "icone-gema", "ARTWORK", 128); gem:SetSize(24, 24); gem:SetPoint("LEFT", 12, 0)
	local ttl = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(ttl, 16, { title = true, color = C.active }); ttl:SetPoint("LEFT", gem, "RIGHT", 8, 4); ttl:SetText(ns.L.LIB_TITLE)
	local sub = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(sub, 10, { num = true, color = C.muted }); sub:SetPoint("TOPLEFT", ttl, "BOTTOMLEFT", 1, -1); sub:SetText(ns.L.LIB_SUBTITLE)
	UI.CloseButton(header, function() LB:Hide() end):SetPoint("RIGHT", -8, 0)

	-- busca
	local box = UI.Panel(header, { color = { 0, 0, 0, 0.4 } })
	box:SetPoint("RIGHT", -36, 0); box:SetSize(240, 24)
	local sicon = UI.Glyph(box, "buscar", "OVERLAY", 64); sicon:SetSize(13, 13)
	sicon:SetPoint("LEFT", 7, 0); sicon:SetVertexColor(UI.unpackc(C.muted))
	local edit = CreateFrame("EditBox", nil, box)
	edit:SetPoint("TOPLEFT", 25, -1); edit:SetPoint("BOTTOMRIGHT", -8, 1); edit:SetAutoFocus(false)
	UI.SetFont(edit, 12, { color = C.active })
	local hint = box:CreateFontString(nil, "OVERLAY")
	UI.SetFont(hint, 12, { color = C.dim }); hint:SetPoint("LEFT", 25, 0); hint:SetText(ns.L.LIB_SEARCH)
	edit:SetScript("OnTextChanged", function(self) search = self:GetText() or ""; hint:SetShown(search == ""); LB:Render() end)
	edit:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	frame.edit = edit

	-- barra de filtros
	local fbar = CreateFrame("Frame", nil, frame)
	fbar:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 16, -8); fbar:SetPoint("RIGHT", -16, 0); fbar:SetHeight(26)
	local tx = 0
	for _, cat in ipairs(CAT_ORDER) do
		local tab = UI.Tab(fbar, ns.L["CAT_" .. cat] or cat, function() curCat = cat; LB:Render() end)
		tab._cat = cat; tab:SetPoint("LEFT", tx, 0); tx = tx + tab:GetWidth() + 4
		catTabs[#catTabs + 1] = tab
	end
	-- (sem segmento de facção: a Biblioteca mostra só a facção do personagem + neutros)

	-- banner "continuar"
	local banner = UI.Panel(frame, { color = { 0.16, 0.13, 0.07, 0.6 }, accentStripe = true })
	banner:SetPoint("TOPLEFT", fbar, "BOTTOMLEFT", 0, -8); banner:SetPoint("RIGHT", frame, "RIGHT", -16, 0); banner:SetHeight(62)
	banner.crest = banner:CreateTexture(nil, "ARTWORK"); banner.crest:SetSize(30, 30)
	banner.crest:SetPoint("LEFT", 15, 0)
	local resume = UI.Button(banner, ns.L.RESUME, 104, 26); resume:SetPoint("RIGHT", -14, 0)
	resume:SetScript("OnClick", function()
		if ns.char.currentGuide then ns:LoadGuide(ns.char.currentGuide, true); if ns.Viewer then ns.Viewer:Show() end; LB:Hide() end
	end)
	-- pilha ancorada no TOPO do banner (o brasão é centralizado à parte)
	local blab = banner:CreateFontString(nil, "OVERLAY"); UI.SetFont(blab, 10, { num = true, color = C.accent })
	blab:SetPoint("TOPLEFT", banner, "TOPLEFT", 59, -10); blab:SetText(ns.L.CONTINUE_TITLE:upper())
	banner.pct = banner:CreateFontString(nil, "OVERLAY"); UI.SetFont(banner.pct, 11, { num = true, color = C.muted })
	banner.pct:SetPoint("RIGHT", resume, "LEFT", -14, 0)
	banner.pct:SetPoint("TOP", banner, "TOP", 0, -10)
	banner.title = banner:CreateFontString(nil, "OVERLAY"); UI.SetFont(banner.title, 15, { title = true, color = C.active })
	banner.title:SetPoint("TOPLEFT", blab, "BOTTOMLEFT", 0, -3)
	banner.bar = UI.Bar(banner); banner.bar:SetHeight(6)
	banner.bar:SetPoint("TOPLEFT", banner.title, "BOTTOMLEFT", 0, -6)
	banner.bar:SetPoint("RIGHT", resume, "LEFT", -14, 0)
	frame.banner = banner

	-- título de seção
	frame.section = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.section, 11, { title = true, color = C.muted })
	frame.section:SetPoint("TOPLEFT", banner, "BOTTOMLEFT", 2, -10)

	-- scroll + grid
	scroll = CreateFrame("ScrollFrame", nil, frame)
	scroll:SetPoint("TOPLEFT", frame.section, "BOTTOMLEFT", -2, -8)
	scroll:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -16, 14)
	content = CreateFrame("Frame", nil, scroll)
	content:SetSize(760, 10); scroll:SetScrollChild(content)
	scroll:EnableMouseWheel(true)
	scroll:SetScript("OnMouseWheel", function(self, delta)
		local max = math.max(0, content:GetHeight() - self:GetHeight())
		self:SetVerticalScroll(math.max(0, math.min(max, self:GetVerticalScroll() - delta * (CARD_H + GAP))))
	end)
	scroll:SetScript("OnSizeChanged", function(_, w) content:SetWidth(w) end)

	frame.empty = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.empty, 13, { color = C.muted }); frame.empty:SetPoint("CENTER", scroll, "CENTER"); frame.empty:SetText(ns.L.LIB_EMPTY); frame.empty:Hide()

	return frame
end

--------------------------------------------------------------------------------
function LB:Open() build(); frame:Show(); self:Render(); frame.edit:SetFocus() end
function LB:Hide() if frame then frame:Hide() end end
function LB:Toggle() build(); if frame:IsShown() then frame:Hide() else self:Open() end end
-- compat com o navegador antigo
LB.Rebuild = LB.Render
