--=============================================================================
-- Library — Biblioteca de Guias: lista agrupada à esquerda (faixas de nível no
-- leveling, a sua classe primeiro, raides à parte) e o detalhe do guia escolhido à
-- direita. Um só "recomendado": o mesmo que o autopilot escolheria.
-- Exposto também como ns.GuideMenu (compat).
--=============================================================================
local ADDON, ns = ...
local LB = {}
ns.Library = LB
ns.GuideMenu = LB          -- alias: referências antigas continuam funcionando
local UI = ns.UI

local CAT_ORDER = { "Leveling", "Class", "Dungeons", "Attunements", "Reputation", "Events" }
local RAIDS = { ["Molten Core"] = true, ["Onyxia's Lair"] = true, ["Blackwing Lair"] = true,
	["Zul'Gurub"] = true, ["Ruins of Ahn'Qiraj"] = true, ["Temple of Ahn'Qiraj"] = true, ["Naxxramas"] = true }
local W, H, HEAD_H, PILLS_H, LIST_W = 860, 580, 52, 44, 480
local ROW_H, GROUP_H = 32, 26
local COLS = { 0, 222, 284, 344 }       -- x das colunas: guia · nível · quests · progresso

local frame, scroll, content, rows, pills, detail
local curCat, search, selected = "Leveling", "", nil

--------------------------------------------------------------------------------
-- modelo (sem interface: os testes usam)
--------------------------------------------------------------------------------
-- números do guia pelo guia aberto (o parse fica em cache no próprio guia): contar
-- "\nstep" no texto deixava o primeiro passo de fora
local function meta(guide)
	if guide._lib then return guide._lib end
	local steps = ns.ensureParsed(guide)
	local quests = 0
	for _, st in ipairs(steps) do
		for _, g in ipairs(st.goals) do if g.verb == "accept" then quests = quests + 1 end end
	end
	local title = guide.key:match("[^/]+$") or guide.key
	local lo, hi = title:match("%((%d+)%s*%-%s*(%d+)%)")
	local zona = title:gsub("%s*%(.-%)%s*$", "")
	guide._lib = {
		key = guide.key, category = guide.key:match("^([^/]+)"), faction = guide.meta and guide.meta.faction,
		title = zona, lo = tonumber(lo), hi = tonumber(hi), steps = #steps, quests = quests,
		name = (guide.key:match("^Leveling/") and ns.LocalizedZone and ns.LocalizedZone(zona)) or zona,
	}
	return guide._lib
end

local function progresso(key, total)
	local idx = (ns.char.currentGuide == key and ns.char.currentStep) or (ns.char.steps and ns.char.steps[key])
	if not idx or idx <= 1 or total <= 0 then return nil end
	return math.min(1, (idx - 1) / total)
end

local function visiveis(cat)
	local fac = UnitFactionGroup("player")
	local out = {}
	for key, guide in pairs(ns.guides) do
		local f = guide.meta and guide.meta.faction
		if key:match("^([^/]+)") == cat and (not f or f == fac) then out[#out + 1] = guide end
	end
	return out
end

-- quantos guias cada categoria tem para este personagem (as pílulas)
function LB:Counts()
	local n = {}
	for _, cat in ipairs(CAT_ORDER) do n[cat] = #visiveis(cat) end
	return n
end

local function ordem(a, b)
	if (a.lo or 999) ~= (b.lo or 999) then return (a.lo or 999) < (b.lo or 999) end
	if (a.hi or 999) ~= (b.hi or 999) then return (a.hi or 999) < (b.hi or 999) end
	return a.title < b.title
end

-- grupos da categoria, já filtrados pela busca
function LB:Model(cat, query)
	local q = (query or ""):lower()
	local reco = cat == "Leveling" and ns.BestGuideForPlayer and ns:BestGuideForPlayer() or nil
	local _, classe = UnitClass("player")
	local lvl = UnitLevel("player") or 1
	local itens = {}
	for _, guide in ipairs(visiveis(cat)) do
		local m = meta(guide)
		if q == "" or m.title:lower():find(q, 1, true) or m.name:lower():find(q, 1, true) then
			itens[#itens + 1] = {
				key = m.key, title = m.title, name = m.name, faction = m.faction, lo = m.lo, hi = m.hi,
				steps = m.steps, quests = m.quests, progress = progresso(m.key, m.steps), reco = m.key == reco,
				mine = cat == "Class" and m.title:upper():gsub("%s", "") == classe,
			}
		end
	end
	table.sort(itens, ordem)

	local groups, porRotulo = {}, {}
	local function grupo(label, lo, mine)
		if not porRotulo[label] then
			porRotulo[label] = { label = label, lo = lo, mine = mine, items = {} }
			groups[#groups + 1] = porRotulo[label]
		end
		return porRotulo[label]
	end
	for _, it in ipairs(itens) do
		local g
		if cat == "Leveling" and it.lo then
			local b = math.floor((it.lo - 1) / 10) * 10
			g = grupo(("%d – %d"):format(b + 1, b + 10), b + 1, lvl > b and lvl <= b + 10)
		elseif cat == "Class" then
			g = it.mine and grupo(ns.L.LIB_YOUR_CLASS, 0, true) or grupo(ns.L.LIB_OTHER_CLASSES, 1)
		elseif cat == "Dungeons" then
			g = RAIDS[it.title] and grupo(ns.L.LIB_RAIDS, 2) or grupo(ns.L.CAT_Dungeons, 1)
		else
			g = grupo(ns.L["CAT_" .. cat] or cat, 1)
		end
		g.items[#g.items + 1] = it
	end
	table.sort(groups, function(a, b) return a.lo < b.lo end)
	return { groups = groups, count = #itens, reco = reco }
end

-- o detalhe do guia: as duas primeiras quests que este personagem pega, a cadeia
function LB:Detail(key)
	local guide = ns.guides[key]
	if not guide then return nil end
	local m = meta(guide)
	local steps = ns.ensureParsed(guide)
	local starts, ate = {}, 0
	for i, st in ipairs(steps) do
		if #starts >= 2 then break end
		if ns:IsStepActive(st) then
			for _, g in ipairs(st.goals) do
				if g.verb == "accept" and g.text and #starts < 2 then
					local onde = g.goto_ and g.goto_.zone and ("%s %d, %d"):format(
						ns.LocalizedZone and ns.LocalizedZone(g.goto_.zone) or g.goto_.zone, g.goto_.x or 0, g.goto_.y or 0)
					starts[#starts + 1] = { name = g.text, where = onde }
					ate = i
				end
			end
		end
	end
	local nextKey = ns.NextGuideKey and ns:NextGuideKey(guide)
	local prev
	for _, g in pairs(ns.guides) do
		if g.meta and g.meta.next == key and (not g.meta.faction or g.meta.faction == UnitFactionGroup("player")) then
			local pm = meta(g)
			if not prev or ordem(pm, prev) then prev = pm end
		end
	end
	return {
		key = key, title = m.title, name = m.name, category = m.category, faction = m.faction, lo = m.lo, hi = m.hi,
		steps = m.steps, quests = m.quests, progress = progresso(key, m.steps), starts = starts,
		more = math.max(0, m.steps - ate), prev = prev and prev.title, prevName = prev and prev.name,
		next = nextKey and ns.guides[nextKey] and meta(ns.guides[nextKey]).title or nil,
		nextName = nextKey and ns.guides[nextKey] and meta(ns.guides[nextKey]).name or nil,
	}
end

--------------------------------------------------------------------------------
-- interface
--------------------------------------------------------------------------------
local function cor(fac)
	if fac == "Alliance" then return UI.COL.factionA end
	if fac == "Horde" then return UI.COL.factionH end
	return UI.COL.accent
end

local function abrir(key, doInicio)
	ns.char.manualPick = key
	if doInicio then ns.char.steps[key] = nil end
	ns:LoadGuide(key, not doInicio and ns.char.steps[key] ~= nil)
	if ns.Viewer then ns.Viewer:Show() end
	LB:Hide()
end

local function texto(parent, size, color, opts)
	local fs = parent:CreateFontString(nil, "OVERLAY")
	opts = opts or {}; opts.color = color
	UI.SetFont(fs, size, opts)
	return fs
end

-- linha da lista: cabeçalho de grupo ou guia
local function linha(i)
	if rows[i] then return rows[i] end
	local C = UI.COL
	local r = CreateFrame("Button", nil, content)
	r:SetHeight(ROW_H)
	r.bg = UI.Rect(r, "BACKGROUND", { 0.165, 0.141, 0.094, 1 }); r.bg:SetAllPoints(); r.bg:Hide()
	r.bar = UI.Rect(r, "ARTWORK", C.accent)
	r.bar:SetPoint("TOPLEFT"); r.bar:SetPoint("BOTTOMLEFT"); r.bar:SetWidth(3); r.bar:Hide()
	r.dot = UI.Media(r, "dot", "ARTWORK"); r.dot:SetSize(7, 7); r.dot:SetPoint("LEFT", 12, 0)
	r.star = UI.Glyph(r, "estrela", "ARTWORK", 64); r.star:SetSize(12, 12); r.star:SetPoint("CENTER", r.dot, "CENTER")
	r.star:SetVertexColor(UI.unpackc(C.accent))
	r.name = texto(r, 14, C.active, { title = true }); r.name:SetPoint("LEFT", 26, 0)
	r.name:SetWidth(COLS[2] - 30); r.name:SetJustifyH("LEFT"); r.name:SetWordWrap(false)
	r.range = texto(r, 12.5, C.muted, { num = true }); r.range:SetPoint("LEFT", COLS[2], 0)
	r.quests = texto(r, 12.5, C.muted, { num = true }); r.quests:SetPoint("LEFT", COLS[3], 0)
	r.prog = UI.Bar(r); r.prog:SetHeight(4); r.prog:SetWidth(54); r.prog:SetPoint("LEFT", COLS[4], 0)
	r.status = texto(r, 11.5, C.accent, { num = true }); r.status:SetPoint("LEFT", COLS[4], 0)
	r.pct = texto(r, 11, C.accent, { num = true }); r.pct:SetPoint("LEFT", r.prog, "RIGHT", 6, 0)
	-- cabeçalho de grupo
	r.glabel = texto(r, 13, C.muted, { title = true }); r.glabel:SetPoint("LEFT", 12, -2)
	r.gtag = texto(r, 9.5, C.accent, { num = true }); r.gtag:SetPoint("LEFT", r.glabel, "RIGHT", 10, 0)
	r.gline = UI.Rect(r, "ARTWORK", { C.accent[1], C.accent[2], C.accent[3], 0.25 }); r.gline:SetHeight(1)
	r.gline:SetPoint("LEFT", r.gtag, "RIGHT", 10, 0); r.gline:SetPoint("RIGHT", -14, 0)
	r:SetScript("OnEnter", function(self)
		if self._key and self._key ~= selected then self.bg:Show(); self.bg:SetAlpha(0.5) end
	end)
	r:SetScript("OnLeave", function(self) if self._key ~= selected then self.bg:Hide() end end)
	r:SetScript("OnClick", function(self) if self._key then selected = self._key; LB:Render() end end)
	r:SetScript("OnDoubleClick", function(self) if self._key then abrir(self._key) end end)
	rows[i] = r
	return r
end

local function pintaGrupo(r, g)
	r._key = nil
	r:SetHeight(GROUP_H)
	for _, k in ipairs({ "bg", "bar", "dot", "star", "name", "range", "quests", "prog", "status", "pct" }) do
		r[k]:Hide()
	end
	r.glabel:SetText(g.label); r.glabel:Show()
	r.glabel:SetTextColor(UI.unpackc(g.mine and UI.COL.accent or UI.COL.muted))
	r.gtag:SetText(g.mine and (curCat == "Class" and "" or ns.L.LIB_YOUR_BAND) or "")
	r.gtag:SetShown(g.mine and true or false)
	r.gline:SetShown(g.mine and true or false)
end

local function pintaGuia(r, it)
	local C = UI.COL
	r._key = it.key
	r:SetHeight(ROW_H)
	r.glabel:Hide(); r.gtag:Hide(); r.gline:Hide()
	local sel = it.key == selected
	r.bg:SetShown(sel); r.bg:SetAlpha(1); r.bar:SetShown(sel)
	r.dot:SetVertexColor(UI.unpackc(cor(it.faction))); r.dot:SetShown(not it.reco); r.star:SetShown(it.reco)
	r.name:SetText(it.name); r.name:Show()
	r.range:SetText(it.lo and ("%d–%d"):format(it.lo, it.hi) or "—"); r.range:Show()
	r.quests:SetText(tostring(it.quests)); r.quests:Show()
	r.range:SetTextColor(UI.unpackc(sel and C.active or C.muted))
	r.quests:SetTextColor(UI.unpackc(sel and C.active or C.muted))
	if it.progress then
		r.prog:Show(); r.prog:SetProgress(it.progress)
		r.pct:SetText(("%d%%"):format(it.progress * 100)); r.pct:Show(); r.status:Hide()
	else
		r.prog:Hide(); r.pct:Hide()
		r.status:SetText(it.reco and ns.L.LIB_RECO_ROW or "—")
		r.status:SetTextColor(UI.unpackc(it.reco and C.accent or C.dim)); r.status:Show()
	end
end

local function pintaDetalhe(d)
	local C, L = UI.COL, ns.L
	if not d then detail:Hide(); return end
	detail:Show()
	local lvl = UnitLevel("player") or 1
	local tag, tcor = L["CAT_" .. d.category] or d.category, C.soft
	if d.key == LB._reco then tag, tcor = L.LIB_TAG_RECO:format(lvl), C.accent
	elseif d.progress then tag, tcor = L.LIB_TAG_PROGRESS:format(d.progress * 100), C.accent end
	detail.tag:SetText(tag:upper()); detail.tag:SetTextColor(UI.unpackc(tcor))
	detail.title:SetText(d.name)
	local cont = d.category == "Leveling" and ns.TravelPlanner and ns.TravelPlanner.ZoneContinent
		and ns.TravelPlanner:ZoneContinent(d.title)
	detail.sub:SetText(cont and L.LIB_SUB_LEVEL:format(L["CONT_" .. cont] or cont) or (L["CAT_" .. d.category] or d.category))

	-- régua 1–60 com a faixa e você
	if d.lo then
		detail.ruler:Show()
		local w = detail.ruler:GetWidth(); if not w or w <= 0 then w = 330 end
		detail.span:ClearAllPoints()
		detail.span:SetPoint("TOPLEFT", detail.ruler, "TOPLEFT", (d.lo - 1) / 59 * w, 0)
		detail.span:SetSize(math.max(3, (d.hi - d.lo) / 59 * w), 8)
		detail.you:ClearAllPoints(); detail.you:SetPoint("TOP", detail.ruler, "TOPLEFT", (lvl - 1) / 59 * w, 4)
		detail.youTxt:SetText(L.LIB_YOU:format(lvl))
	else
		detail.ruler:Hide()
	end
	detail.stat[1]:SetText(d.lo and ("%d–%d"):format(d.lo, d.hi) or "—")
	detail.stat[2]:SetText(tostring(d.quests)); detail.stat[3]:SetText(tostring(d.steps))

	for i = 1, 2 do
		local s = d.starts[i]
		detail.start[i]:SetText(s and L.LIB_TAKE:format(s.name, s.where or "") or "")
	end
	detail.more:SetText(d.more > 0 and L.LIB_MORE:format(d.more) or "")
	local chain = {}
	if d.prevName then chain[#chain + 1] = "|cff9a917f" .. d.prevName .. "|r" end
	chain[#chain + 1] = "|cfff0e6d2" .. d.name .. "|r"
	if d.nextName then chain[#chain + 1] = "|cff9a917f" .. d.nextName .. "|r" end
	detail.chain:SetText(table.concat(chain, "  |cff6b665c›|r  "))
	detail.chainHead:SetShown(#chain > 1); detail.chain:SetShown(#chain > 1)

	detail.go.text:SetText(d.progress and L.CONTINUE or L.LIB_START)
	detail.go:SetScript("OnClick", function() abrir(d.key) end)
	detail.restart:SetShown(d.progress and true or false)
	detail.restart:SetScript("OnClick", function() abrir(d.key, true) end)
end

function LB:Render()
	if not frame or not frame:IsShown() then return end
	local C = UI.COL
	local m = self:Model(curCat, search)
	LB._reco = m.reco
	-- seleção: a que estava, senão a recomendada, senão a atual, senão a primeira
	local existe = {}
	for _, g in ipairs(m.groups) do for _, it in ipairs(g.items) do existe[it.key] = true end end
	if not existe[selected] then
		selected = (m.reco and existe[m.reco] and m.reco)
			or (existe[ns.char.currentGuide or ""] and ns.char.currentGuide)
			or (m.groups[1] and m.groups[1].items[1] and m.groups[1].items[1].key)
	end

	for _, r in ipairs(rows) do r:Hide() end
	local y, i = 0, 0
	for _, g in ipairs(m.groups) do
		i = i + 1
		local r = linha(i); pintaGrupo(r, g)
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", 0, -y); r:SetPoint("RIGHT", content, "RIGHT"); r:Show()
		y = y + GROUP_H
		for _, it in ipairs(g.items) do
			i = i + 1
			local rr = linha(i); pintaGuia(rr, it)
			rr:ClearAllPoints(); rr:SetPoint("TOPLEFT", 0, -y); rr:SetPoint("RIGHT", content, "RIGHT"); rr:Show()
			y = y + ROW_H
		end
		y = y + 6
	end
	content:SetHeight(math.max(1, y))
	frame.empty:SetShown(m.count == 0)

	local n = self:Counts()
	for _, p in ipairs(pills) do
		local on = p._cat == curCat
		p.fs:SetText(("%s  |cff%s%d|r"):format(ns.L["CAT_" .. p._cat] or p._cat, on and "e0a84e" or "8a8272", n[p._cat] or 0))
		p:SetWidth(p.fs:GetStringWidth() + 26)
		p.bg:SetColorTexture(C.accent[1], C.accent[2], C.accent[3], on and 0.14 or 0)
		for _, t in pairs(p._border) do t:SetColorTexture(UI.unpackc(on and C.accent or { 1, 1, 1, 0.08 })) end
		p.fs:SetTextColor(UI.unpackc(on and C.active or C.muted))
	end
	pintaDetalhe(selected and self:Detail(selected))
end

--------------------------------------------------------------------------------
-- construção
--------------------------------------------------------------------------------
local function buildDetail(parent)
	local C, L = UI.COL, ns.L
	local d = UI.Panel(parent, { color = { 0.102, 0.094, 0.075, 1 }, border = false })
	d:SetPoint("TOPLEFT", parent, "TOPLEFT", LIST_W, -(HEAD_H + PILLS_H))
	d:SetPoint("BOTTOMRIGHT", -1, 1)
	local X = 20
	d.tagIcon = UI.Glyph(d, "estrela", "ARTWORK", 64); d.tagIcon:SetSize(12, 12); d.tagIcon:SetPoint("TOPLEFT", X, -20)
	d.tagIcon:SetVertexColor(UI.unpackc(C.accent))
	d.tag = texto(d, 10.5, C.accent, { num = true }); d.tag:SetPoint("LEFT", d.tagIcon, "RIGHT", 7, 0)
	d.title = texto(d, 26, C.active, { title = true }); d.title:SetPoint("TOPLEFT", X, -42)
	d.title:SetPoint("RIGHT", -X, 0); d.title:SetJustifyH("LEFT"); d.title:SetWordWrap(false)
	d.sub = texto(d, 12.5, C.muted); d.sub:SetPoint("TOPLEFT", X, -74)

	d.ruler = UI.Rect(d, "ARTWORK", { 0, 0, 0, 0.45 }); d.ruler:SetPoint("TOPLEFT", X, -100); d.ruler:SetPoint("RIGHT", -X, 0)
	d.ruler:SetHeight(8)
	d.span = UI.Rect(d, "OVERLAY", { C.accent[1], C.accent[2], C.accent[3], 0.6 })
	d.you = UI.Rect(d, "OVERLAY", C.active); d.you:SetSize(2, 16)
	d.youTxt = texto(d, 10.5, C.muted, { num = true }); d.youTxt:SetPoint("TOP", d.ruler, "BOTTOM", 0, -4)
	local um = texto(d, 10.5, C.dim, { num = true }); um:SetPoint("TOPLEFT", d.ruler, "BOTTOMLEFT", 0, -4); um:SetText("1")
	local sessenta = texto(d, 10.5, C.dim, { num = true }); sessenta:SetPoint("TOPRIGHT", d.ruler, "BOTTOMRIGHT", 0, -4)
	sessenta:SetText(tostring(ns.Client and ns.Client.maxLevel or 60))

	d.stat = {}
	local rotulos = { L.LIB_STAT_LEVEL, L.LIB_STAT_QUESTS, L.LIB_STAT_STEPS }
	local tw = (W - LIST_W - 2 * X - 16) / 3
	for i = 1, 3 do
		local t = UI.Panel(d, { color = { 0, 0, 0, 0.28 }, border = false })
		t:SetSize(tw, 46); t:SetPoint("TOPLEFT", X + (i - 1) * (tw + 8), -132)
		local lab = texto(t, 10, C.muted, { num = true }); lab:SetPoint("TOPLEFT", 10, -8); lab:SetText(rotulos[i])
		d.stat[i] = texto(t, 18, C.active, { num = true }); d.stat[i]:SetPoint("BOTTOMLEFT", 10, 7)
	end

	local h1 = texto(d, 10.5, C.soft, { num = true }); h1:SetPoint("TOPLEFT", X, -196); h1:SetText(L.LIB_STARTS)
	d.start = {}
	for i = 1, 2 do
		d.start[i] = texto(d, 12.5, { 0.847, 0.812, 0.741, 1 })
		d.start[i]:SetPoint("TOPLEFT", X, -196 - 20 * i); d.start[i]:SetPoint("RIGHT", -X, 0)
		d.start[i]:SetJustifyH("LEFT"); d.start[i]:SetWordWrap(false)
	end
	d.more = texto(d, 12, C.muted); d.more:SetPoint("TOPLEFT", X, -258)

	d.chainHead = texto(d, 10.5, C.soft, { num = true }); d.chainHead:SetPoint("TOPLEFT", X, -290); d.chainHead:SetText(L.LIB_CHAIN)
	d.chain = texto(d, 12.5, C.active); d.chain:SetPoint("TOPLEFT", X, -310); d.chain:SetPoint("RIGHT", -X, 0)
	d.chain:SetJustifyH("LEFT"); d.chain:SetWordWrap(true)

	d.go = UI.Button(d, L.LIB_START, 10, 36)
	d.go:SetPoint("BOTTOMLEFT", X, 16); d.go:SetPoint("RIGHT", -X - 108, 0)
	if d.go.text then UI.SetFont(d.go.text, 14, { num = true, color = { 0.07, 0.067, 0.051, 1 } }) end
	local goBg = UI.Rect(d.go, "ARTWORK", C.accent); goBg:SetAllPoints()
	d.go:SetScript("OnEnter", nil); d.go:SetScript("OnLeave", nil)
	d.restart = UI.Button(d, L.LIB_RESTART, 100, 36); d.restart:SetPoint("BOTTOMRIGHT", -X, 16)
	return d
end

local function build()
	if frame then return frame end
	local C, L = UI.COL, ns.L
	rows, pills = {}, {}
	frame = UI.Panel(UIParent, { name = "LodestarLibrary" })
	frame:SetSize(W, H); frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	UI.CornerFlourish(frame)

	-- cabeçalho: quem é você, busca, fechar
	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(HEAD_H)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", C.accent); line:SetPoint("TOPLEFT"); line:SetPoint("TOPRIGHT"); line:SetHeight(2)
	local gem = UI.Icon(header, "icone-gema", "ARTWORK", 128); gem:SetSize(24, 24); gem:SetPoint("LEFT", 14, 0)
	local ttl = texto(header, 17, C.active, { title = true }); ttl:SetPoint("LEFT", gem, "RIGHT", 10, 6)
	ttl:SetText(L.LIB_TITLE:upper())
	frame.who = texto(header, 11.5, C.muted, { num = true }); frame.who:SetPoint("TOPLEFT", ttl, "BOTTOMLEFT", 1, -2)
	UI.CloseButton(header, function() LB:Hide() end):SetPoint("RIGHT", -10, 0)

	local box = UI.Panel(header, { color = { 0, 0, 0, 0.4 } })
	box:SetPoint("RIGHT", -44, 0); box:SetSize(230, 28)
	local sicon = UI.Glyph(box, "buscar", "OVERLAY", 64); sicon:SetSize(13, 13)
	sicon:SetPoint("LEFT", 8, 0); sicon:SetVertexColor(UI.unpackc(C.muted))
	local edit = CreateFrame("EditBox", nil, box)
	edit:SetPoint("TOPLEFT", 27, -1); edit:SetPoint("BOTTOMRIGHT", -8, 1); edit:SetAutoFocus(false)
	UI.SetFont(edit, 12.5, { color = C.active })
	local hint = texto(box, 12.5, C.dim); hint:SetPoint("LEFT", 27, 0); hint:SetText(L.LIB_SEARCH)
	edit:SetScript("OnTextChanged", function(self) search = self:GetText() or ""; hint:SetShown(search == ""); LB:Render() end)
	edit:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	frame.edit = edit

	-- categorias em pílulas
	local bar = CreateFrame("Frame", nil, frame)
	bar:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 16, 0); bar:SetPoint("RIGHT", -16, 0); bar:SetHeight(PILLS_H)
	local sep = UI.Rect(frame, "ARTWORK", { 1, 1, 1, 0.06 }); sep:SetHeight(1)
	sep:SetPoint("TOPLEFT", bar, "BOTTOMLEFT", -16, 0); sep:SetPoint("RIGHT", frame, "RIGHT")
	local prev
	for _, cat in ipairs(CAT_ORDER) do
		local p = CreateFrame("Button", nil, bar)
		p:SetHeight(28)
		p.bg = UI.Rect(p, "BACKGROUND", { 0, 0, 0, 0 }); p.bg:SetAllPoints()
		UI.AddBorder(p, { 1, 1, 1, 0.08 })
		p.fs = texto(p, 13, C.muted); p.fs:SetPoint("CENTER")
		p._cat = cat
		if prev then p:SetPoint("LEFT", prev, "RIGHT", 6, 0) else p:SetPoint("LEFT", 0, 0) end
		p:SetScript("OnClick", function() curCat = cat; selected = nil; LB:Render(); scroll:SetVerticalScroll(0) end)
		pills[#pills + 1] = p
		prev = p
	end

	-- lista: cabeçalho das colunas + rolagem
	local list = CreateFrame("Frame", nil, frame)
	list:SetPoint("TOPLEFT", 0, -(HEAD_H + PILLS_H)); list:SetPoint("BOTTOMLEFT", 0, 1); list:SetWidth(LIST_W)
	local div = UI.Rect(frame, "ARTWORK", { 1, 1, 1, 0.06 }); div:SetWidth(1)
	div:SetPoint("TOPLEFT", list, "TOPRIGHT", -1, 0); div:SetPoint("BOTTOMLEFT", list, "BOTTOMRIGHT", -1, 0)
	local heads = { L.LIB_COL_GUIDE, L.LIB_COL_LEVEL, L.LIB_COL_QUESTS, L.LIB_COL_PROGRESS }
	for c = 1, 4 do
		local h = texto(list, 10, C.dim, { num = true }); h:SetPoint("TOPLEFT", 18 + COLS[c] + (c == 1 and 26 or 0), -12)
		h:SetText(heads[c])
	end
	scroll = CreateFrame("ScrollFrame", "LodestarLibraryScroll", list)
	scroll:SetPoint("TOPLEFT", 18, -30); scroll:SetPoint("BOTTOMRIGHT", -14, 10)
	content = CreateFrame("Frame", nil, scroll)
	content:SetSize(LIST_W - 32, 10); scroll:SetScrollChild(content)
	scroll:EnableMouseWheel(true)
	scroll:SetScript("OnMouseWheel", function(self, delta)
		local max = math.max(0, (content:GetHeight() or 0) - (self:GetHeight() or 0))
		self:SetVerticalScroll(math.max(0, math.min(max, self:GetVerticalScroll() - delta * ROW_H * 3)))
	end)
	frame.empty = texto(list, 13, C.muted); frame.empty:SetPoint("CENTER", scroll, "CENTER")
	frame.empty:SetText(L.LIB_EMPTY); frame.empty:Hide()

	detail = buildDetail(frame)
	return frame
end

--------------------------------------------------------------------------------
function LB:Open()
	build()
	local raca, classe = UnitRace("player") or "", UnitClass("player") or ""
	local fac = select(2, UnitFactionGroup("player")) or UnitFactionGroup("player") or ""
	frame.who:SetText(ns.L.LIB_WHO:format(raca, classe, UnitLevel("player") or 1, fac))
	frame:Show(); self:Render(); frame.edit:SetFocus()
end
function LB:Hide() if frame then frame:Hide() end end
function LB:Toggle() build(); if frame:IsShown() then frame:Hide() else self:Open() end end
-- compat com o navegador antigo
LB.Rebuild = LB.Render
