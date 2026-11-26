--=============================================================================
-- Hub — a Central do Lodestar 3 (specs/lodestar-3). Uma janela, menu à esquerda, uma página por vez:
--
--   Início · Leveling · Masmorras · Equipamento · Colecionáveis · Legado · Classe · Reputação · Sintonias · Eventos
--
-- As páginas se registram (Hub:RegisterPage); Masmorras, Equipamento, Colecionáveis e Legado moram nos próprios
-- módulos. Aqui ficam o Início e as listas de guias (o modelo é o da Biblioteca: ns.GuideMenu:Model). A Central
-- substitui a Biblioteca: ns.GuideMenu passa a abrir aqui.
--=============================================================================
local ADDON, ns = ...
local H = {}
ns.Hub = H
local UI = ns.UI
local unpackc = UI.unpackc

local W, HGT, NAV_W, PAD = 1000, 640, 212, 24
local pages, order = {}, {}
local frame, current

-- id, def = { label, glyph, order, build(page, H), refresh(page, H), count() -> número, kind }
function H:RegisterPage(id, def)
	pages[id] = def
	def.id = id
	order[#order + 1] = def
	table.sort(order, function(a, b) return (a.order or 99) < (b.order or 99) end)
	if frame then H:BuildNav() end
end

function H:ContentWidth() return W - NAV_W - 2 * PAD end

--------------------------------------------------------------------------------
-- Peças comuns das páginas
--------------------------------------------------------------------------------
-- título da página com subtítulo opcional; devolve a altura usada
function H.PageTitle(page, text, sub)
	local C = UI.COL
	page.titleFS = page.titleFS or UI.Text(page, 22, C.active, { bold = true })
	page.titleFS:SetPoint("TOPLEFT", 0, 0); page.titleFS:SetText(text)
	page.subFS = page.subFS or UI.Text(page, 13, C.dim)
	page.subFS:SetPoint("LEFT", page.titleFS, "RIGHT", 10, -2); page.subFS:SetText(sub or "")
	return 40
end

-- rótulo de seção em caixa alta
function H.Label(parent, text)
	local fs = UI.Text(parent, 11, UI.COL.dim, { num = true })
	fs:SetText((text or ""):upper())
	return fs
end

-- cartão do Início: rótulo, título grande, texto, link de ação
function H.InfoCard(parent, onClick)
	local C = UI.COL
	local c = UI.Card(parent, { color = C.card })
	c.label = H.Label(c, ""); c.label:SetPoint("TOPLEFT", 16, -14)
	c.title = UI.Text(c, 17, C.active, { bold = true, wrap = false })
	c.title:SetPoint("TOPLEFT", c.label, "BOTTOMLEFT", 0, -6); c.title:SetPoint("RIGHT", c, "RIGHT", -16, 0)
	c.text = UI.Text(c, 12.5, C.muted, { wrap = true })
	c.text:SetPoint("TOPLEFT", c.title, "BOTTOMLEFT", 0, -6); c.text:SetPoint("RIGHT", c, "RIGHT", -16, 0)
	c.bar = UI.Bar(c, C.accentBright); c.bar:SetHeight(6)
	c.bar:SetPoint("TOPLEFT", c.text, "BOTTOMLEFT", 0, -8); c.bar:SetPoint("RIGHT", c, "RIGHT", -16, 0); c.bar:Hide()
	c.link = CreateFrame("Button", nil, c)
	c.link:SetPoint("BOTTOMLEFT", 16, 12); c.link:SetHeight(18)
	c.linkFS = UI.Text(c.link, 13, C.tip, { bold = true }); c.linkFS:SetPoint("LEFT")
	c.link:SetScript("OnClick", function() if onClick then onClick() end end)
	c.link:SetScript("OnEnter", function() c.linkFS:SetTextColor(unpackc(C.accent)) end)
	c.link:SetScript("OnLeave", function() c.linkFS:SetTextColor(unpackc(C.tip)) end)
	function c:SetLink(t) self.linkFS:SetText(t or ""); self.link:SetWidth(self.linkFS:GetStringWidth() + 4) end
	return c
end

--------------------------------------------------------------------------------
-- Janela
--------------------------------------------------------------------------------
function H:BuildNav()
	local C = UI.COL
	frame.navItems = frame.navItems or {}
	for _, it in pairs(frame.navItems) do it:Hide() end
	local y = 64
	for i, def in ipairs(order) do
		if def.sep then y = y + 12 end
		local it = frame.navItems[def.id]
		if not it then
			it = UI.NavItem(frame.nav, def.label, def.glyph, function() H:Show(def.id) end)
			frame.navItems[def.id] = it
		end
		it:ClearAllPoints(); it:SetPoint("TOPLEFT", frame.nav, "TOPLEFT", 10, -y); it:SetPoint("RIGHT", frame.nav, "RIGHT", -10, 0)
		it:Show()
		y = y + 34
		def._i = i
	end
end

local function build()
	if frame then return frame end
	local C, L = UI.COL, ns.L
	frame = UI.Window("LodestarHub", W, HGT, { strata = "HIGH" })

	frame.nav = CreateFrame("Frame", nil, frame)
	frame.nav:SetPoint("TOPLEFT"); frame.nav:SetPoint("BOTTOMLEFT"); frame.nav:SetWidth(NAV_W)
	local navBg = UI.dark and UI.Rect(frame.nav, "BACKGROUND", { 0, 0, 0, 0.22 })
		or UI.Slice(frame.nav, "round-12", "BACKGROUND", C.header)
	navBg:SetPoint("TOPLEFT", 1, -1); navBg:SetPoint("BOTTOMRIGHT", 0, 1)
	local navEdge = UI.Rect(frame.nav, "BORDER", C.border); navEdge:SetWidth(1)
	navEdge:SetPoint("TOPRIGHT"); navEdge:SetPoint("BOTTOMRIGHT")
	-- o cartão da página cobre a curva do lado direito do menu
	local navFill = UI.Rect(frame.nav, "BACKGROUND", C.header); navFill:SetPoint("TOPRIGHT", -1, -1)
	navFill:SetPoint("BOTTOMRIGHT", -1, 1); navFill:SetWidth(14)
	if UI.dark then navFill:Hide() end

	local star = UI.Icon(frame.nav, "logo-estrela", "ARTWORK", 128); star:SetSize(24, 24)
	star:SetPoint("TOPLEFT", 18, -18); star:SetVertexColor(unpackc(C.accentBright))
	local word = UI.Text(frame.nav, 16, C.active, { title = true }); word:SetPoint("LEFT", star, "RIGHT", 8, 0)
	word:SetText("LODESTAR")

	frame.footer = CreateFrame("Frame", nil, frame.nav)
	frame.footer:SetPoint("BOTTOMLEFT", 10, 12); frame.footer:SetPoint("BOTTOMRIGHT", -10, 12); frame.footer:SetHeight(68)
	local cfg = UI.NavItem(frame.footer, L.SET_TITLE, "config", function() SlashCmdList.LODESTAR("config") end)
	cfg:SetPoint("TOPLEFT"); cfg:SetPoint("TOPRIGHT")
	local rep = UI.NavItem(frame.footer, L.ACT_REPORT, "buscar", function() SlashCmdList.LODESTAR("report") end)
	rep:SetPoint("TOPLEFT", cfg, "BOTTOMLEFT", 0, -2); rep:SetPoint("TOPRIGHT", cfg, "BOTTOMRIGHT", 0, -2)

	local close = UI.IconButton(frame, "fechar", 28, nil, function() frame:Hide() end)
	close:SetPoint("TOPRIGHT", -14, -14)

	frame.content = CreateFrame("Frame", nil, frame)
	frame.content:SetPoint("TOPLEFT", NAV_W + PAD, -PAD); frame.content:SetPoint("BOTTOMRIGHT", -PAD, PAD)

	H:BuildNav()
	frame:Hide()
	return frame
end

function H:Show(id)
	build()
	id = pages[id] and id or current or "home"
	if not pages[id] then id = order[1] and order[1].id end
	if not id then return end
	current = id
	for pid, def in pairs(pages) do
		if def.page then def.page:SetShown(pid == id) end
		local it = frame.navItems and frame.navItems[pid]
		if it then it:SetActive(pid == id) end
	end
	local def = pages[id]
	if not def.page then
		def.page = CreateFrame("Frame", nil, frame.content)
		def.page:SetAllPoints()
		if def.build then def.build(def.page, H) end
	end
	def.page:Show()
	if def.refresh then
		local ok, err = pcall(def.refresh, def.page, H)
		if not ok then ns:Debug("Hub", id, err) end
	end
	frame:Show()
	H:UpdateCounts()
end

function H:UpdateCounts()
	if not (frame and frame.navItems) then return end
	for id, def in pairs(pages) do
		local it = frame.navItems[id]
		if it and def.count then
			local ok, n, kind = pcall(def.count)
			it:SetCount(ok and n or nil, kind)
		end
	end
end

function H:Open(id) H:Show(id or "leveling") end
function H:Toggle() build(); if frame:IsShown() then frame:Hide() else H:Show(current or "home") end end
function H:Hide() if frame then frame:Hide() end end
function H:IsShown() return frame and frame:IsShown() end
function H:Refresh() if frame and frame:IsShown() and current then H:Show(current) end end

--------------------------------------------------------------------------------
-- Listas de guias (Leveling, Classe, Reputação, Sintonias, Eventos), do modelo da Biblioteca
--------------------------------------------------------------------------------
local function guideRow(parent)
	local C = UI.COL
	local r = CreateFrame("Button", nil, parent)
	r:SetHeight(48)
	r.bg = UI.Card(r, { color = C.card }); r.bg:SetAllPoints(); r.bg:SetFrameLevel(r:GetFrameLevel())
	r.name = UI.Text(r, 14, C.active, { bold = true, wrap = false })
	r.name:SetPoint("TOPLEFT", 14, -8); r.name:SetPoint("RIGHT", r, "RIGHT", -230, 0)
	r.sub = UI.Text(r, 11.5, C.dim, { num = true, wrap = false })
	r.sub:SetPoint("TOPLEFT", r.name, "BOTTOMLEFT", 0, -3); r.sub:SetPoint("RIGHT", r, "RIGHT", -230, 0)
	r.badge = UI.Badge(r, "", "ok"); r.badge:SetPoint("RIGHT", r, "RIGHT", -212, 0); r.badge:Hide()
	r.bar = UI.Bar(r, C.accentBright); r.bar:SetSize(90, 6); r.bar:SetPoint("RIGHT", r, "RIGHT", -104, 0)
	r.open = UI.Button(r, ns.L.V3_OPEN, 82, 28); r.open:SetPoint("RIGHT", -12, 0)
	r:SetScript("OnEnter", function() r.bg:SetLine(C.borderHi) end)
	r:SetScript("OnLeave", function() r.bg:SetLine(C.border) end)
	return r
end

local function headRow(parent)
	local fs = H.Label(parent, "")
	return fs
end

local function guideListPage(cat, label, glyph, ord, sep)
	local P = { label = label, glyph = glyph, order = ord, sep = sep }
	P.build = function(page)
		local C = UI.COL
		H.PageTitle(page, label)
		page.search = CreateFrame("EditBox", nil, page)
		page.search:SetSize(280, 32); page.search:SetPoint("TOPRIGHT", -40, 2)
		page.search:SetFontObject(ChatFontNormal); page.search:SetAutoFocus(false); page.search:SetTextInsets(12, 12, 0, 0)
		if page.search.SetTextColor then page.search:SetTextColor(unpackc(C.active)) end
		local sbg = UI.Card(page.search, { radius = 6, color = C.card }); sbg:SetAllPoints()
		sbg:SetFrameLevel(page.search:GetFrameLevel())
		page.searchHint = UI.Text(page.search, 13, C.faded); page.searchHint:SetPoint("LEFT", 12, 0)
		page.searchHint:SetText(ns.L.V3_SEARCH)
		page.search:SetScript("OnTextChanged", function(self)
			page.searchHint:SetShown(self:GetText() == "")
			P.refresh(page)
		end)
		page.search:SetScript("OnEscapePressed", page.search.ClearFocus)
		page.scroll, page.list = UI.Scroll(page)
		page.scroll:SetPoint("TOPLEFT", 0, -52); page.scroll:SetPoint("BOTTOMRIGHT", -8, 0)
		page.rows, page.heads = {}, {}
	end
	P.refresh = function(page)
		local LB = ns.Library
		if not LB then return end
		local model = LB:Model(cat, page.search:GetText())
		for _, r in ipairs(page.rows) do r:Hide() end
		for _, h in ipairs(page.heads) do h:Hide() end
		local y, ri, hi = 0, 0, 0
		local L = ns.L
		for _, g in ipairs(model.groups) do
			hi = hi + 1
			local h = page.heads[hi] or headRow(page.list); page.heads[hi] = h
			h:ClearAllPoints(); h:SetPoint("TOPLEFT", page.list, "TOPLEFT", 2, -y)
			h:SetText((g.label or ""):upper() .. (g.mine and ("  ·  " .. L.V3_YOUR_LEVEL:upper()) or ""))
			h:SetTextColor(unpackc(g.mine and UI.COL.accent or UI.COL.dim))
			h:Show()
			y = y + 20
			for _, it in ipairs(g.items) do
				ri = ri + 1
				local r = page.rows[ri] or guideRow(page.list); page.rows[ri] = r
				r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.list, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.list, "RIGHT", -6, 0)
				r.name:SetText(it.name or it.title)
				local lv = it.lo and ("%d–%d · "):format(it.lo, it.hi or it.lo) or ""
				r.sub:SetText(lv .. L.V3_GUIDE_META:format(it.quests or 0, it.steps or 0))
				if it.reco then r.badge:Set(L.V3_RECOMMENDED, "gold"); r.badge:Show()
				elseif it.mine then r.badge:Set(L.LIB_YOUR_CLASS, "info"); r.badge:Show()
				elseif ns:IsGuideOpen(it.key) then r.badge:Set(L.V3_OPEN_TAB, "ok"); r.badge:Show()
				else r.badge:Hide() end
				r.bar:SetShown(it.progress ~= nil); if it.progress then r.bar:SetProgress(it.progress) end
				local key = it.key
				-- abrir retoma do passo salvo; "Do início" (clique direito) recomeça, como a Biblioteca fazia
				local function open(fromStart)
					ns.char.manualPick = key
					if fromStart then ns.char.steps[key] = nil end
					ns:LoadGuide(key, not fromStart and ns.char.steps[key] ~= nil)
					if ns.Viewer then ns.Viewer:Show() end
					H:Refresh()
				end
				r.open:SetScript("OnClick", function() open(false) end)
				r:RegisterForClicks("LeftButtonUp", "RightButtonUp")
				r:SetScript("OnClick", function(self, button)
					if button == "RightButton" then
						UI.Menu(self, { { L.V3_OPEN, function() open(false) end }, { L.V3_FROM_START, function() open(true) end } })
					else
						open(false)
					end
				end)
				r:Show()
				y = y + 54
			end
			y = y + 10
		end
		page.list:SetHeight(math.max(1, y))
		page.scroll.Sync()
		page.subFS:SetText(L.V3_N_GUIDES:format(model.count))
	end
	P.count = function() return nil end
	return P
end

--------------------------------------------------------------------------------
-- Início
--------------------------------------------------------------------------------
local HOME = { label = ns.L.V3_HOME, glyph = "estrela", order = 1 }
HOME.build = function(page)
	local C, L = UI.COL, ns.L
	H.PageTitle(page, L.V3_HOME)
	local cw = W - NAV_W - 2 * PAD - 8

	-- continuar
	local cont = UI.Card(page, { color = C.card })
	cont:SetPoint("TOPLEFT", 0, -52); cont:SetSize(cw, 118)
	cont.label = H.Label(cont, L.V3_CONTINUE); cont.label:SetPoint("TOPLEFT", 18, -16)
	cont.label:SetTextColor(unpackc(C.accent))
	cont.title = UI.Text(cont, 19, C.active, { bold = true, wrap = false })
	cont.title:SetPoint("TOPLEFT", cont.label, "BOTTOMLEFT", 0, -6); cont.title:SetWidth(cw - 420)
	cont.text = UI.Text(cont, 13, C.muted, { wrap = false })
	cont.text:SetPoint("TOPLEFT", cont.title, "BOTTOMLEFT", 0, -6); cont.text:SetWidth(cw - 420)
	cont.bar = UI.Bar(cont, C.accentBright); cont.bar:SetHeight(6)
	cont.bar:SetPoint("TOPLEFT", cont.text, "BOTTOMLEFT", 0, -10); cont.bar:SetWidth(cw - 420)
	cont.lvl = UI.Text(cont, 30, C.active, { num = true }); cont.lvl:SetPoint("TOPLEFT", cw - 370, -22)
	cont.lvlSub = UI.Text(cont, 12, C.dim, { num = true, wrap = true }); cont.lvlSub:SetWidth(190)
	cont.lvlSub:SetPoint("TOPLEFT", cont.lvl, "BOTTOMLEFT", 0, -4)
	cont.open = UI.Button(cont, L.V3_OPEN_GUIDE, 140, 38, "primary"); cont.open:SetPoint("RIGHT", -18, 0)
	cont.open:SetScript("OnClick", function()
		if ns.currentGuide then if ns.Viewer then ns.Viewer:Show() end else H:Show("leveling") end
	end)
	page.cont = cont

	-- os quatro cartões
	local gw = math.floor((cw - 12) / 2)
	local function card(i, target)
		local c = H.InfoCard(page, function() H:Show(target) end)
		c:SetSize(gw, 136)
		c:SetPoint("TOPLEFT", ((i - 1) % 2) * (gw + 12), -(52 + 118 + 14 + math.floor((i - 1) / 2) * 148))
		return c
	end
	page.cDungeon = card(1, "dungeons")
	page.cGear = card(2, "gear")
	page.cLegacy = card(3, "legacy")
	page.cCollect = card(4, "collections")
end

HOME.refresh = function(page)
	local C, L = UI.COL, ns.L
	local g = ns.currentGuide
	local cont = page.cont
	if g then
		local name = (g.key:match("[^/]+$") or g.key):gsub("%s*%(.-%)%s*$", "")
		if g.key:match("^Leveling/") then name = ns.LocalizedZone(name) end
		cont.title:SetText(name .. ("  |cff%s%s|r"):format(UI.Hex("dim"),
			L.V3_STEP_OF:format(ns.char.currentStep, #g.steps)))
		local step = ns:GetStep()
		local now
		for _, goal in ipairs(step and step.goals or {}) do
			if goal.verb ~= "note" and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
				now = (ns.L["VERB_" .. (goal.verb == "goto_" and "goto" or goal.verb)] or goal.verb) .. " " .. (goal.text or "")
				break
			end
		end
		cont.text:SetText(now and L.V3_NOW_PREFIX:format(now) or "")
		cont.bar:SetProgress(ns.char.currentStep / math.max(1, #g.steps)); cont.bar:Show()
		cont.open.text:SetText(L.V3_OPEN_GUIDE)
	else
		cont.title:SetText(L.EMPTY_TITLE); cont.text:SetText(L.EMPTY_BODY); cont.bar:Hide()
		cont.open.text:SetText(L.V3_CHOOSE_GUIDE)
	end
	local lvl = UnitLevel("player") or 1
	local xp, maxXp = UnitXP("player") or 0, UnitXPMax("player") or 1
	cont.lvl:SetText(("%d  |cff%s%d%%|r"):format(lvl, UI.Hex("dim"), math.floor(xp / math.max(1, maxXp) * 100)))
	cont.lvlSub:SetText(L.V3_LEVEL_SUB:format(lvl + 1, maxXp - xp))

	local function fill(c, sum, label, empty)
		c.label:SetText(label:upper())
		if sum then
			c.title:SetText(sum.title or ""); c.text:SetText(sum.text or "")
			if sum.progress then c.bar:SetProgress(sum.progress); c.bar:Show() else c.bar:Hide() end
			c:SetLink(sum.link)
		else
			c.title:SetText(empty or ""); c.text:SetText(""); c.bar:Hide(); c:SetLink("")
		end
	end
	local function sum(mod)
		if not (mod and mod.Summary) then return nil end
		local ok, s = pcall(mod.Summary, mod)
		return ok and s or nil
	end
	fill(page.cDungeon, sum(ns.Dungeons), L.V3_CARD_DUNGEON, L.V3_NOTHING_YET)
	fill(page.cGear, sum(ns.GearPlan), L.V3_CARD_GEAR, L.V3_NOTHING_YET)
	fill(page.cLegacy, sum(ns.Legacy), L.V3_CARD_LEGACY, L.V3_NOTHING_YET)
	fill(page.cCollect, sum(ns.Collections), L.V3_CARD_COLLECT, L.V3_NOTHING_YET)
end

H:RegisterPage("home", HOME)
H:RegisterPage("leveling", guideListPage("Leveling", ns.L.CAT_Leveling, "seta-rota", 2))
H:RegisterPage("class", guideListPage("Class", ns.L.CAT_Class, "treinador", 20, true))
-- os guias de quest de masmorra (inclusive as do Forever que o DungeonData ainda não tem: Dalaran, Hall of Thanes...)
H:RegisterPage("dungeonguides", guideListPage("Dungeons", ns.L.V3_DUNGEON_GUIDES, "livro", 21))
H:RegisterPage("reputation", guideListPage("Reputation", ns.L.CAT_Reputation, "bandeira", 22))
H:RegisterPage("attunements", guideListPage("Attunements", ns.L.CAT_Attunements, "alvo", 23))
H:RegisterPage("events", guideListPage("Events", ns.L.CAT_Events, "relogio", 24))

-- a Biblioteca antiga cede o lugar: quem chama ns.GuideMenu abre a Central
ns:On("_INIT", function()
	if ns.GuideMenu and ns.GuideMenu ~= H then
		ns.Library = ns.GuideMenu
		ns.GuideMenu = H
	end
end)

-- o Início acompanha o jogo enquanto está aberto
local pending
local function later()
	if pending or not H:IsShown() then return end
	pending = true
	C_Timer.After(0.5, function() pending = nil; H:Refresh() end)
end
for _, ev in ipairs({ "QUEST_LOG_UPDATE", "PLAYER_LEVEL_UP", "PLAYER_EQUIPMENT_CHANGED", "BAG_UPDATE_DELAYED" }) do
	ns:On(ev, later)
end
