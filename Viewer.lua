--=============================================================================
-- Viewer — janela principal, visual clean e didático.
-- Cabeçalho + abas de guias | barra de progresso | card "AGORA" | prévia "A SEGUIR".
-- Sem guia aberto: estado vazio com CTA p/ abrir o navegador de guias.
--=============================================================================
local ADDON, ns = ...
local V = {}
ns.Viewer = V
local UI = ns.UI
local unpackc = UI.unpackc

local TAB_H   = 22        -- altura da tira de abas
local EMPTY_H = 214       -- altura da janela no estado vazio

local function verbLabel(verb)
	if verb == "note" then return "" end
	return ns.L["VERB_" .. (verb == "goto_" and "goto" or verb)] or verb
end

-- nome localizado da zona (p/ casar com GetZoneText do client)
local function localizedZone(engZone)
	if ns.zoneUiMap and ns.zoneUiMap[engZone] and C_Map and C_Map.GetMapInfo then
		local info = C_Map.GetMapInfo(ns.zoneUiMap[engZone])
		if info and info.name then return info.name end
	end
	return engZone
end

-- Texto de viagem p/ o passo atual quando o alvo está fora da zona (ou nil).
local function travelHint()
	local tgt = ns.Waypoint and ns.Waypoint:PickTarget()
	if not (tgt and tgt.goto_ and tgt.goto_.zone) then return nil end
	local tz = tgt.goto_.zone
	local TP = ns.TravelPlanner
	if not TP or TP:InZone(tz) then return nil end                       -- já na zona (via mapa)
	return TP:Plan(tz) or ns.L.OUT_OF_ZONE:format(localizedZone(tz))
end

-- Nome de exibição: quests usam o nome localizado do client quando possível.
local function displayName(goal)
	if (goal.verb == "accept" or goal.verb == "turnin") and goal.id
		and C_QuestLog and C_QuestLog.GetTitleForQuestID then
		local n = C_QuestLog.GetTitleForQuestID(goal.id)
		if n and n ~= "" then return n end
	end
	return goal.text or ""
end

local frame, rowPool, distRows = nil, {}, {}
local tabPool = {}

-- Nome curto do guia (última parte da chave "Categoria/Nome").
local function shortName(key) return key and (key:match("[^/]+$") or key) or "" end

-- Encurta o texto com reticências até caber em maxW pixels (respeita UTF-8).
local function fitText(fs, text, maxW)
	fs:SetText(text)
	if (fs:GetStringWidth() or 0) <= maxW then return end
	local n = #text
	while n > 1 do
		-- não corta no meio de um caractere UTF-8 (bytes de continuação 0x80..0xBF)
		while n > 1 and text:byte(n) and text:byte(n) >= 0x80 and text:byte(n) < 0xC0 do
			n = n - 1
		end
		n = n - 1
		fs:SetText(text:sub(1, n) .. "…")
		if (fs:GetStringWidth() or 0) <= maxW then return end
	end
	fs:SetText("…")
end

--------------------------------------------------------------------------------
-- Botão "+" (adicionar guia): abre o navegador de guias.
--------------------------------------------------------------------------------
local function makeAddButton(parent)
	local C = UI.COL
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(20, TAB_H - 4)
	local g = UI.Glyph(b, "mais", "OVERLAY", 64)
	g:SetSize(12, 12); g:SetPoint("CENTER"); g:SetVertexColor(unpackc(C.muted))
	b:SetScript("OnEnter", function()
		g:SetVertexColor(unpackc(C.accent))
		GameTooltip:SetOwner(b, "ANCHOR_TOP")
		GameTooltip:SetText(ns.L.ADD_GUIDE); GameTooltip:Show()
	end)
	b:SetScript("OnLeave", function() g:SetVertexColor(unpackc(C.muted)); GameTooltip:Hide() end)
	b:SetScript("OnClick", function() if ns.GuideMenu then ns.GuideMenu:Open() end end)
	return b
end

--------------------------------------------------------------------------------
-- Aba (pill) de um guia aberto: clicar troca; "×" fecha.
--------------------------------------------------------------------------------
local function getTab(i)
	if tabPool[i] then return tabPool[i] end
	local C = UI.COL
	local t = CreateFrame("Button", nil, frame.tabStrip)
	t:SetHeight(TAB_H - 4)
	local bg = UI.Rect(t, "BACKGROUND", { 0, 0, 0, 0.30 }); bg:SetAllPoints(); t.bg = bg
	local top = UI.Rect(t, "ARTWORK", C.accent)                 -- linha superior (aba ativa)
	top:SetPoint("TOPLEFT"); top:SetPoint("TOPRIGHT"); top:SetHeight(2); top:Hide(); t.top = top
	local label = t:CreateFontString(nil, "OVERLAY")
	UI.SetFont(label, 11.5, { color = C.muted })
	label:SetPoint("LEFT", 8, 0); label:SetPoint("RIGHT", -18, 0)
	label:SetJustifyH("LEFT"); label:SetWordWrap(false); t.label = label

	local x = CreateFrame("Button", nil, t)
	x:SetSize(14, 14); x:SetPoint("RIGHT", -3, 0)
	local xg = UI.Glyph(x, "fechar", "OVERLAY", 64); xg:SetAllPoints(); xg:SetVertexColor(unpackc(C.dim))
	x:SetScript("OnEnter", function() xg:SetVertexColor(unpackc(C.accent)) end)
	x:SetScript("OnLeave", function() xg:SetVertexColor(unpackc(t._active and C.muted or C.dim)) end)
	x:SetScript("OnClick", function() if t._key then ns:CloseGuide(t._key) end end)
	t.x = x

	t:SetScript("OnClick", function() if t._key then ns:SwitchGuide(t._key) end end)
	t:SetScript("OnEnter", function()
		if not t._active then
			bg:SetColorTexture(unpackc(C.panel)); label:SetTextColor(unpackc(C.active)); x:Show()
		end
	end)
	t:SetScript("OnLeave", function()
		if not t._active then
			bg:SetColorTexture(0, 0, 0, 0.30); label:SetTextColor(unpackc(C.muted)); x:Hide()
		end
	end)
	tabPool[i] = t
	return t
end

--------------------------------------------------------------------------------
local function build()
	if frame then return frame end
	local dbv = ns.db.viewer
	local C = UI.COL

	frame = UI.Panel(UIParent, { name = "LodestarViewer" })
	frame:SetSize(dbv.width or 340, 320)
	frame:SetPoint(dbv.point or "RIGHT", UIParent, dbv.point or "RIGHT",
		dbv.x or -24, dbv.y or 0)
	frame:SetClampedToScreen(true)
	frame:SetMovable(true); frame:EnableMouse(true)
	frame:SetFrameStrata("MEDIUM")
	frame:SetToplevel(true)

	-- Cabeçalho -----------------------------------------------------------
	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT"); header:SetPoint("TOPRIGHT"); header:SetHeight(30)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function()
		frame:StopMovingOrSizing()
		local p, _, _, x, y = frame:GetPoint()
		dbv.point, dbv.x, dbv.y = p, x, y
	end)
	local accentLine = UI.Rect(header, "ARTWORK", C.accent)
	accentLine:SetPoint("TOPLEFT"); accentLine:SetPoint("TOPRIGHT"); accentLine:SetHeight(2)

	local dot = UI.Icon(header, "icone-gema", "ARTWORK", 128); dot:SetSize(16, 16)
	dot:SetPoint("LEFT", 9, 0)
	frame.title = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.title, 13, { color = C.active })
	frame.title:SetPoint("LEFT", dot, "RIGHT", 7, 0)
	frame.title:SetPoint("RIGHT", header, "RIGHT", -92, 0)
	frame.title:SetJustifyH("LEFT"); frame.title:SetText("Lodestar")

	local close = UI.CloseButton(header, function() V:Hide() end)
	close:SetPoint("RIGHT", -6, 0)
	frame.collapseBtn = CreateFrame("Button", nil, header)
	frame.collapseBtn:SetSize(18, 18)
	frame.collapseBtn:SetPoint("RIGHT", close, "LEFT", -2, 0)
	local chev = UI.Glyph(frame.collapseBtn, "chevron-baixo", "OVERLAY", 64)
	chev:SetSize(12, 12); chev:SetPoint("CENTER"); chev:SetVertexColor(UI.unpackc(C.muted))
	frame.collapseChev = chev
	frame.collapseBtn:SetScript("OnClick", function() V:ToggleCollapse() end)

	local menuBtn = CreateFrame("Button", nil, header)
	menuBtn:SetSize(20, 18)
	menuBtn:SetPoint("RIGHT", frame.collapseBtn, "LEFT", -2, 0)
	local micon = UI.Glyph(menuBtn, "livro", "OVERLAY", 64)
	micon:SetSize(13, 13); micon:SetPoint("CENTER"); micon:SetVertexColor(UI.unpackc(C.muted))
	menuBtn:SetScript("OnEnter", function() micon:SetVertexColor(UI.unpackc(C.accent)) end)
	menuBtn:SetScript("OnLeave", function() micon:SetVertexColor(UI.unpackc(C.muted)) end)
	menuBtn:SetScript("OnClick", function() if ns.GuideMenu then ns.GuideMenu:Toggle() end end)

	-- engrenagem: abre a tela de configurações
	local cfgBtn = CreateFrame("Button", nil, header)
	cfgBtn:SetSize(20, 18)
	cfgBtn:SetPoint("RIGHT", menuBtn, "LEFT", -2, 0)
	local cicon = UI.Glyph(cfgBtn, "config", "OVERLAY", 64)
	cicon:SetSize(13, 13); cicon:SetPoint("CENTER"); cicon:SetVertexColor(UI.unpackc(C.muted))
	cfgBtn:SetScript("OnEnter", function() cicon:SetVertexColor(UI.unpackc(C.accent)) end)
	cfgBtn:SetScript("OnLeave", function() cicon:SetVertexColor(UI.unpackc(C.muted)) end)
	cfgBtn:SetScript("OnClick", function() if ns.Settings then ns.Settings:Toggle() end end)

	-- Tira de abas (guias abertos) ----------------------------------------
	frame.tabStrip = CreateFrame("Frame", nil, frame)
	frame.tabStrip:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, 0)
	frame.tabStrip:SetPoint("TOPRIGHT", header, "BOTTOMRIGHT", 0, 0)
	frame.tabStrip:SetHeight(TAB_H)
	local stripBg = UI.Rect(frame.tabStrip, "BACKGROUND", { 0, 0, 0, 0.22 }); stripBg:SetAllPoints()
	frame.addTab = makeAddButton(frame.tabStrip)
	frame.addTab:SetPoint("RIGHT", frame.tabStrip, "RIGHT", -4, 0)

	-- Progresso -----------------------------------------------------------
	frame.bar = UI.Bar(frame)
	frame.bar:SetPoint("TOPLEFT", frame.tabStrip, "BOTTOMLEFT", 0, 0)
	frame.bar:SetPoint("TOPRIGHT", frame.tabStrip, "BOTTOMRIGHT", 0, 0)
	frame.bar:SetHeight(3)

	frame.stepLabel = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.stepLabel, 10, { num = true, color = C.muted })
	frame.stepLabel:SetPoint("TOPRIGHT", frame.bar, "BOTTOMRIGHT", -8, -4)

	frame.nowLabel = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.nowLabel, 10, { num = true, color = C.accent, outline = "" })
	frame.nowLabel:SetPoint("TOPLEFT", frame.bar, "BOTTOMLEFT", 10, -4)
	frame.nowLabel:SetText(ns.L.NOW)

	-- Card do passo atual -------------------------------------------------
	frame.card = UI.Panel(frame, { color = C.panel, accentStripe = true })
	frame.card:SetPoint("TOPLEFT", frame.nowLabel, "BOTTOMLEFT", -2, -5)
	frame.card:SetPoint("RIGHT", frame, "RIGHT", -8, 0)
	frame.content = CreateFrame("Frame", nil, frame.card)
	frame.content:SetPoint("TOPLEFT", 12, -8)
	frame.content:SetPoint("RIGHT", -8, 0)

	-- "Guard" de viagem: painel destacado no topo do card quando o alvo está fora
	-- da zona — mostra o MELHOR caminho (voo/barco/portal) ANTES dos objetivos.
	frame.travel = UI.Panel(frame.content, { color = { 0.20, 0.14, 0.05, 0.9 }, borderColor = C.amber })
	local tstripe = UI.Rect(frame.travel, "ARTWORK", C.amber)
	tstripe:SetPoint("TOPLEFT"); tstripe:SetPoint("BOTTOMLEFT"); tstripe:SetWidth(3)
	frame.travelIcon = UI.Glyph(frame.travel, "seta-rota", "OVERLAY", 128)
	frame.travelIcon:SetSize(15, 15); frame.travelIcon:SetPoint("TOPLEFT", 9, -8)
	frame.travelIcon:SetVertexColor(UI.unpackc(C.amber))
	frame.travelText = frame.travel:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.travelText, 12, { color = C.amber })
	frame.travelText:SetPoint("TOPLEFT", frame.travelIcon, "TOPRIGHT", 7, 1)
	frame.travelText:SetPoint("RIGHT", frame.travel, "RIGHT", -8, 0)
	frame.travelText:SetJustifyH("LEFT"); frame.travelText:SetWordWrap(true)
	frame.travel:Hide()

	-- Banner de PRÉ-REQUISITO: quest travada por prereq de outro guia -> abre em aba
	frame.prereq = UI.Panel(frame.content, { color = { 0.05, 0.11, 0.18, 0.92 }, borderColor = C.tip })
	local pstripe = UI.Rect(frame.prereq, "ARTWORK", C.tip)
	pstripe:SetPoint("TOPLEFT"); pstripe:SetPoint("BOTTOMLEFT"); pstripe:SetWidth(3)
	frame.prereqText = frame.prereq:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.prereqText, 11.5, { color = C.tip })
	frame.prereqText:SetPoint("TOPLEFT", 10, -8)
	frame.prereqText:SetPoint("RIGHT", frame.prereq, "RIGHT", -70, 0)
	frame.prereqText:SetJustifyH("LEFT"); frame.prereqText:SetWordWrap(true)
	frame.prereqBtn = UI.Button(frame.prereq, ns.L.SET_OPEN, 58, 20)
	frame.prereqBtn:SetPoint("RIGHT", -8, 0)
	frame.prereqBtn:SetScript("OnClick", function()
		if frame._prereqGuide then ns:LoadGuide(frame._prereqGuide) end
	end)
	frame.prereq:Hide()

	-- Prévia "a seguir" ---------------------------------------------------
	frame.nextLabel = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.nextLabel, 10, { num = true, color = C.muted })
	frame.nextLabel:SetPoint("TOPLEFT", frame.card, "BOTTOMLEFT", 12, -8)
	frame.nextLabel:SetText(ns.L.NEXT)
	frame.preview = CreateFrame("Frame", nil, frame)
	frame.preview:SetPoint("TOPLEFT", frame.nextLabel, "BOTTOMLEFT", 0, -4)
	frame.preview:SetPoint("RIGHT", frame, "RIGHT", -10, 0)

	-- Rodapé --------------------------------------------------------------
	frame.prev = UI.Button(frame, ns.L.BACK, 78)
	frame.prev:SetPoint("BOTTOMLEFT", 8, 8)
	frame.prev:SetScript("OnClick", function() ns:AdvanceStep(-1) end)
	frame.next = UI.Button(frame, ns.L.SKIP, 78)
	frame.next:SetPoint("BOTTOMRIGHT", -8, 8)
	frame.next:SetScript("OnClick", function() ns:AdvanceStep(1) end)

	return frame
end

--------------------------------------------------------------------------------
-- Estado vazio (nenhum guia aberto): logo + mensagem + CTA "Abrir guias".
--------------------------------------------------------------------------------
local function buildEmpty()
	if frame.empty then return frame.empty end
	local C = UI.COL
	local e = CreateFrame("Frame", nil, frame)
	e:SetPoint("TOPLEFT", frame.tabStrip, "TOPLEFT", 0, 0)   -- ocupa a área do corpo
	e:SetPoint("TOPRIGHT", frame.tabStrip, "TOPRIGHT", 0, 0)
	e:SetHeight(EMPTY_H - 30)

	local logo = UI.Icon(e, "logo-estrela", "ARTWORK", 128)
	logo:SetSize(46, 46); logo:SetPoint("TOP", 0, -16)
	logo:SetVertexColor(unpackc(C.accent)); logo:SetAlpha(0.9)

	local ttl = e:CreateFontString(nil, "OVERLAY")
	UI.SetFont(ttl, 15, { color = C.active }); ttl:SetPoint("TOP", logo, "BOTTOM", 0, -10)
	ttl:SetText(ns.L.EMPTY_TITLE)

	local body = e:CreateFontString(nil, "OVERLAY")
	UI.SetFont(body, 12, { color = C.muted })
	body:SetPoint("TOP", ttl, "BOTTOM", 0, -6)
	body:SetPoint("LEFT", e, "LEFT", 24, 0); body:SetPoint("RIGHT", e, "RIGHT", -24, 0)
	body:SetJustifyH("CENTER"); body:SetWordWrap(true); body:SetText(ns.L.EMPTY_BODY)

	local cta = UI.Button(e, ns.L.OPEN_GUIDES, 150, 26)
	cta:SetPoint("TOP", body, "BOTTOM", 0, -16)
	cta:SetScript("OnClick", function() if ns.GuideMenu then ns.GuideMenu:Open() end end)

	frame.empty = e
	return e
end

--------------------------------------------------------------------------------
-- Linha de goal
--------------------------------------------------------------------------------
local function getRow(i)
	if rowPool[i] then return rowPool[i] end
	local row = CreateFrame("Frame", nil, frame.content)
	row:SetPoint("LEFT"); row:SetPoint("RIGHT")
	row.glyph = UI.Media(row, "ring", "OVERLAY")
	row.glyph:SetSize(12, 12)
	row.glyph:SetPoint("TOPLEFT", 0, -2)
	row.text = row:CreateFontString(nil, "OVERLAY")
	UI.SetFont(row.text, 13, { color = UI.COL.active })
	row.text:SetPoint("TOPLEFT", row.glyph, "TOPRIGHT", 7, 2)
	row.text:SetPoint("RIGHT", row, "RIGHT", -46, 0)
	row.text:SetJustifyH("LEFT"); row.text:SetWordWrap(true)
	row.dist = UI.Chip(row, { 0, 0, 0, 0.35 }, UI.COL.accent)
	row.dist:SetPoint("TOPRIGHT", 0, -1)
	row.dist:Hide()
	-- chip de "corridas" (spam de dungeon): N/M no mesmo canto (goal de ding, sem dist)
	row.runs = UI.Chip(row, { 0, 0, 0, 0.35 }, UI.COL.amber)
	row.runs:SetPoint("TOPRIGHT", 0, -1)
	row.runs:Hide()
	rowPool[i] = row
	return row
end

local function goalText(goal)
	if goal.verb == "note" then
		return ("|cff%s%s|r"):format("aab0bf", ns:LocalizeText(goal.text or ""))
	end
	local C = UI.COL
	local col = goal.verb == "accept" and C.accent
		or goal.verb == "turnin" and C.done
		or C.active
	local hex = ("%02x%02x%02x"):format(col[1] * 255, col[2] * 255, col[3] * 255)
	local qty = goal.count and (goal.count .. " ") or ""
	return ("|cff%s%s|r %s%s"):format(hex, verbLabel(goal.verb), qty, displayName(goal))
end

--------------------------------------------------------------------------------
-- Tira de abas: uma pill por guia aberto + botão "+".
--------------------------------------------------------------------------------
function V:RefreshTabs()
	if not frame then return end
	local C = UI.COL
	local list = ns.char.openGuides or {}
	local n = #list
	local stripW = frame.tabStrip:GetWidth()
	if stripW <= 0 then stripW = (ns.db.viewer.width or 340) end
	local addW, gap = 22, 3
	local avail = stripW - addW - 8 - gap           -- 4px margens laterais + folga do "+"
	local pillW = (n > 0) and math.floor((avail - (n - 1) * gap) / n) or avail
	-- piso baixo (16) para caber muitas abas dentro de `avail` sem cobrir o "+"
	-- nem vazar da janela; teto 150 evita abas gigantes com 1-2 guias.
	pillW = math.max(16, math.min(150, pillW))

	local x = 4
	for i = 1, n do
		local key = list[i]
		local tab = getTab(i)
		tab._key = key
		local active = (ns.currentGuide and ns.currentGuide.key == key) or false
		tab._active = active
		tab.top:SetShown(active)
		tab.bg:SetColorTexture(unpackc(active and C.header or { 0, 0, 0, 0.30 }))
		tab.label:SetTextColor(unpackc(active and C.active or C.muted))
		tab.x:SetShown(active)                        -- × sempre na ativa; hover mostra nas outras
		tab:SetWidth(pillW)
		fitText(tab.label, shortName(key), pillW - 24)
		tab:ClearAllPoints()
		tab:SetPoint("LEFT", frame.tabStrip, "LEFT", x, 0)
		tab:Show()
		x = x + pillW + gap
	end
	for i = n + 1, #tabPool do tabPool[i]:Hide() end
end

--------------------------------------------------------------------------------
-- Estado vazio: mostra/oculta o corpo normal x o painel de empty state.
--------------------------------------------------------------------------------
function V:ShowEmpty()
	buildEmpty()
	frame.title:SetText("Lodestar")
	frame.tabStrip:Hide()
	frame.bar:Hide(); frame.stepLabel:Hide(); frame.nowLabel:Hide()
	frame.card:Hide(); frame.nextLabel:Hide(); frame.preview:Hide()
	frame.prev:Hide(); frame.next:Hide()
	if frame.previewFS then for _, fs in ipairs(frame.previewFS) do fs:Hide() end end
	for _, r in pairs(rowPool) do r:Hide() end
	frame.empty:Show()
	frame:SetHeight(EMPTY_H)
end

function V:HideEmpty()
	if frame.empty then frame.empty:Hide() end
	frame.tabStrip:Show()
	frame.bar:Show(); frame.stepLabel:Show(); frame.nowLabel:Show()
	frame.card:Show(); frame.prev:Show(); frame.next:Show()
	-- nextLabel/preview têm visibilidade definida no fluxo normal do Refresh
end

--------------------------------------------------------------------------------
function V:Refresh()
	if not frame or not frame:IsShown() then return end
	if ns.db.viewer.collapsed then return end   -- recolhido não redesenha nem reexpande
	local C = UI.COL
	local guide = ns.currentGuide
	for _, r in pairs(rowPool) do r:Hide() end
	wipe(distRows)

	if not guide then
		V:ShowEmpty()
		return
	end
	V:HideEmpty()
	V:RefreshTabs()

	frame.title:SetText(shortName(guide.key))
	local total, cur = #guide.steps, ns.char.currentStep
	frame.bar:SetProgress(cur / total)
	frame.stepLabel:SetFormattedText("%d / %d", cur, total)

	local step = ns:GetStep()
	local y, i = 0, 0
	local w = frame.content:GetWidth()
	if w <= 0 then w = (ns.db.viewer.width or 340) - 40 end

	-- Banner de PRÉ-REQUISITO: prereq de outro guia (botão "Abrir" a aba) OU gate de
	-- cadeia sem guia (só avisa "faça isto antes", sem botão).
	local block = ns.PrereqBlock and ns:PrereqBlock(step)
	if block then
		frame._prereqGuide = block.guide
		frame.prereqText:SetText(ns.L.PREREQ_NEEDED:format(block.quest))
		frame.prereqText:ClearAllPoints()
		frame.prereqText:SetPoint("TOPLEFT", 10, -8)
		frame.prereqText:SetPoint("RIGHT", frame.prereq, "RIGHT", block.guide and -70 or -10, 0)
		frame.prereqBtn:SetShown(block.guide ~= nil)
		frame.prereq:ClearAllPoints()
		frame.prereq:SetPoint("TOPLEFT", frame.content, "TOPLEFT", 0, -y)
		frame.prereq:SetPoint("RIGHT", frame.content, "RIGHT", -4, 0)
		local ph = math.max(28, frame.prereqText:GetStringHeight() + 16)
		frame.prereq:SetHeight(ph)
		frame.prereq:Show()
		y = y + ph + 8
	else
		frame.prereq:Hide()
	end

	-- "Guard" de viagem: como chegar (voo/barco/portal) quando o alvo está fora da zona
	local thint = travelHint()
	if thint then
		frame.travel:ClearAllPoints()
		frame.travel:SetPoint("TOPLEFT", frame.content, "TOPLEFT", 0, -y)
		frame.travel:SetPoint("RIGHT", frame.content, "RIGHT", -4, 0)
		frame.travelText:SetText(thint)
		local th = math.max(24, frame.travelText:GetStringHeight() + 15)
		frame.travel:SetHeight(th)
		frame.travel:Show()
		y = y + th + 8
	else
		frame.travel:Hide()
	end

	if step then
		for _, goal in ipairs(step.goals) do
			if ns:IsGoalActive(goal) then
				i = i + 1
				local row = getRow(i)
				row:SetWidth(w)
				local done = ns:IsGoalComplete(goal)

				-- glyph de estado
				if goal.verb == "note" then
					row.glyph:Hide()
				else
					row.glyph:Show()
					if done then
						row.glyph:SetTexture(UI.GLYPH .. "check-64")
						row.glyph:SetVertexColor(UI.unpackc(C.done))
					else
						row.glyph:SetTexture(UI.GLYPH .. "losango-64")
						row.glyph:SetVertexColor(UI.unpackc(
							ns:IsGoalTrackable(goal) and C.accent or C.soft))
					end
				end

				-- texto + tips
				local txt = goalText(goal)
				if done then txt = "|cff5f6b73" .. txt:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "") .. "|r" end
				if goal.tips then
					local th = ("%02x%02x%02x"):format(C.tip[1]*255, C.tip[2]*255, C.tip[3]*255)
					for _, tip in ipairs(goal.tips) do
						txt = txt .. ("\n|cff%s• %s|r"):format(th, ns:LocalizeText(tip))
					end
				end
				row.text:SetText(txt)

				-- chip de distância (alvo do goal)
				row.dist:Hide()
				if goal.goto_ and not done and ns.Waypoint then
					distRows[#distRows + 1] = { chip = row.dist, goal = goal }
				end

				-- chip de "corridas" (spam de dungeon): quantas você já limpou / meta
				row.runs:Hide()
				if goal.runs and goal.dungeon then
					local n = ns.DungeonRuns and ns.DungeonRuns:CountFor(goal.dungeon) or 0
					row.runs:Set(("%d/%s"):format(n, goal.runs))
					row.runs:Show()
				end

				local h = math.max(16, row.text:GetStringHeight() + 4)
				row:SetHeight(h)
				row:ClearAllPoints()
				row:SetPoint("TOPLEFT", frame.content, "TOPLEFT", 0, -y)
				row:SetPoint("RIGHT", frame.content, "RIGHT", 0, 0)
				row:Show()
				y = y + h + 6
			end
		end
	end
	frame.content:SetHeight(math.max(10, y))
	frame.card:SetHeight(y + 18)

	-- prévia dos próximos passos
	frame.previewFS = frame.previewFS or {}
	for _, fs in ipairs(frame.previewFS) do fs:Hide() end
	local py, shown = 0, 0
	local idx = cur + 1
	while shown < 2 and guide.steps[idx] do
		local s = guide.steps[idx]
		if ns:IsStepActive(s) then
			shown = shown + 1
			local fs = frame.previewFS[shown]
			if not fs then
				fs = frame.preview:CreateFontString(nil, "OVERLAY")
				UI.SetFont(fs, 11, { color = C.muted })
				fs:SetJustifyH("LEFT"); fs:SetWordWrap(false)
				fs:SetPoint("TOPLEFT", 0, -py)
				fs:SetPoint("RIGHT", 0, 0)
				frame.previewFS[shown] = fs
			end
			fs:ClearAllPoints()
			fs:SetPoint("TOPLEFT", frame.preview, "TOPLEFT", 0, -py)
			fs:SetPoint("RIGHT", frame.preview, "RIGHT", 0, 0)
			-- primeiro goal significativo do próximo passo
			local summary = "..."
			for _, g in ipairs(s.goals) do
				if g.verb ~= "note" and ns:IsGoalActive(g) then
					summary = verbLabel(g.verb) .. " " .. displayName(g)
					break
				end
			end
			fs:SetText("|cff6b7684›|r " .. summary)
			fs:Show()
			py = py + 16
		end
		idx = idx + 1
	end
	frame.nextLabel:SetShown(shown > 0)
	frame.preview:SetShown(shown > 0)
	frame.preview:SetHeight(math.max(1, py))

	-- altura total da janela (inclui a tira de abas)
	local hgt = 30 + TAB_H + 3 + 18 + (y + 18) + (shown > 0 and (18 + py) or 0) + 40
	frame:SetHeight(math.min(620, hgt))
	V:UpdateDistances()
end

-- Atualiza só os chips de distância (barato, roda em timer)
function V:UpdateDistances()
	if not (frame and frame:IsShown()) then return end
	for _, r in ipairs(distRows) do
		local d = ns.Waypoint and ns.Waypoint:DistanceTo(r.goal)
		if d then
			r.chip:Set(("%dy"):format(d))
			r.chip:Show()
		else
			r.chip:Hide()
		end
	end
end

--------------------------------------------------------------------------------
function V:ApplyCollapsed()
	if not frame then return end
	local col = ns.db.viewer.collapsed
	frame.tabStrip:SetShown(not col)
	frame.bar:SetShown(not col)
	frame.stepLabel:SetShown(not col)
	frame.nowLabel:SetShown(not col)
	frame.card:SetShown(not col)
	frame.nextLabel:SetShown(not col)
	frame.preview:SetShown(not col)
	frame.prev:SetShown(not col)
	frame.next:SetShown(not col)
	if frame.empty then frame.empty:SetShown(false) end
	if col then frame:SetHeight(30) else V:Refresh() end
end

function V:ToggleCollapse()
	build()
	ns.db.viewer.collapsed = not ns.db.viewer.collapsed
	V:ApplyCollapsed()
end

function V:ApplyDisplay()
	if not frame then return end
	frame:SetScale(ns.db.viewer.scale or 1)
	frame:SetAlpha(ns.db.viewer.alpha or 1)
end

function V:GetFrame() return frame end
function V:Show() build(); ns.db.viewer.hidden = false; frame:Show(); V:ApplyDisplay(); V:ApplyCollapsed(); ns:RefreshHUDs() end
function V:Hide() if frame then frame:Hide() end; ns.db.viewer.hidden = true; ns:RefreshHUDs() end
function V:Toggle() build(); if frame:IsShown() then V:Hide() else V:Show() end end

ns:On("_GUIDE_LOADED", function()
	build()
	if not ns.db.viewer.hidden then V:Show() end
end)

-- mudou de zona: atualiza o banner de viagem (ex.: chegou no hub de transporte)
ns:On("ZONE_CHANGED_NEW_AREA", function() if ns.Viewer then ns.Viewer:Refresh() end end)

-- timer leve p/ distâncias
ns:Every(0.25, function() if ns.Viewer then ns.Viewer:UpdateDistances() end end)
