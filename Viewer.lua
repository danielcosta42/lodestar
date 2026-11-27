--=============================================================================
-- Viewer — a janela do guia (Lodestar 3, specs/lodestar-3). Clara por padrão, com sombra para ler sobre o mundo.
--
--   cabeçalho (o guia e a faixa de níveis; Central, Navegação, ··· , recolher, fechar)
--   abas em pílula · progresso (passo e porcentagem)
--   avisos (quest abandonada / pulo com Desfazer, grupo para elite, a perna de viagem clicável)
--   o passo como cartão: quem e onde, a distância, os objetivos com contagem, barra e tempo
--   Nesta área (AreaGoals.lua, #122) · Enquanto está aqui (Nearby.lua)
--   ações rápidas (treinador, reparo, estalagem, diário) · A seguir · Voltar / Pular passo
--
-- Sem guia aberto: estado vazio com o convite para a Central. O que cada linha faz ao clique (pular a quest, marcar à
-- mão) mora em RowClick; a contagem, o tempo e a falha vêm do QuestState.
--=============================================================================
local ADDON, ns = ...
local V = {}
ns.Viewer = V
local UI = ns.UI
local unpackc = UI.unpackc

local HEAD_H, TAB_H, PAD = 44, 28, 12
local EMPTY_H = 236

local frame
local rowPool, distRows, timedRows, previewPool, tabPool = {}, {}, {}, {}, {}

local function verbLabel(verb)
	if verb == "note" then return "" end
	return ns.L["VERB_" .. (verb == "goto_" and "goto" or verb)] or verb
end

local localizedZone = ns.LocalizedZone

-- Nome de exibição: quests usam o nome localizado do cliente quando possível.
local function displayName(goal)
	if (goal.verb == "accept" or goal.verb == "turnin") and goal.id
		and C_QuestLog and C_QuestLog.GetTitleForQuestID then
		local n = C_QuestLog.GetTitleForQuestID(goal.id)
		if n and n ~= "" then return n end
	end
	return goal.text or ""
end

-- Nome curto do guia ("Categoria/Facção/Nome (lo-hi)" -> "Nome") e a faixa ("lo–hi").
local function shortName(key)
	local n = key and (key:match("[^/]+$") or key) or ""
	return (n:gsub("%s*%(.-%)%s*$", ""))
end
local function levelRange(key)
	local lo, hi = (key or ""):match("%((%d+)%s*%-%s*(%d+)%)")
	return lo and ("%s–%s"):format(lo, hi) or nil
end
local function guideTitle(key)
	local name = shortName(key)
	if key and key:match("^Leveling/") then name = localizedZone(name) end
	return name
end

-- Encurta o texto com reticências até caber em maxW pixels (respeita UTF-8).
local function fitText(fs, text, maxW)
	fs:SetText(text)
	if (fs:GetStringWidth() or 0) <= maxW then return end
	local n = #text
	while n > 1 do
		while n > 1 and text:byte(n) and text:byte(n) >= 0x80 and text:byte(n) < 0xC0 do n = n - 1 end
		n = n - 1
		fs:SetText(text:sub(1, n) .. "…")
		if (fs:GetStringWidth() or 0) <= maxW then return end
	end
	fs:SetText("…")
end

-- Texto de viagem para o passo atual: a perna atual da rota (antes da última, a pé); sem rota e com o alvo fora da
-- zona, "Vá para <zona>".
local function travelHint()
	local route = ns.Travel and ns.Travel:Route()
	if route then
		if route.leg < #route.legs then return ns.Waypoint.LegText(route, route.leg) end
		return nil
	end
	local tgt = ns.Waypoint and ns.Waypoint:PickTarget()
	local tz = tgt and tgt.goto_ and tgt.goto_.zone
	local TP = ns.TravelPlanner
	if not tz or not TP or TP:InZone(tz) then return nil end
	return ns.L.OUT_OF_ZONE:format(localizedZone(tz))
end

--------------------------------------------------------------------------------
-- Texto do objetivo
--------------------------------------------------------------------------------
local function goalText(goal)
	if goal.verb == "note" then
		return ("|cff%s%s|r"):format(UI.Hex("dim"), ns:LocalizeText(goal.text or ""))
	end
	local C = UI.COL
	local col = goal.verb == "accept" and C.accent or goal.verb == "turnin" and C.done or C.muted
	local qty = goal.count and (goal.count .. " ") or ""
	local base = ("|cff%s%s|r |cff%s%s%s|r"):format(UI.Hex(col), verbLabel(goal.verb), UI.Hex("active"), qty,
		displayName(goal))
	if goal.elite or goal.raid then
		local lbl = goal.raid and ns.L.GROUP_TAG_RAID or ns.L.GROUP_TAG_ELITE
		base = base .. ("  |cff%s[%s]|r"):format(UI.Hex(goal.raid and "danger" or "amber"), lbl)
	end
	return base
end

-- O texto inteiro da linha (a contagem vai à direita): o objetivo, o tempo, a falha e as dicas. Devolve também se a
-- quest tem tempo (a linha entra no ticker de 1 s).
local function rowText(goal, done)
	local QS = ns.QuestState
	local suffix, failed, timed = "", false, false
	if QS and goal.verb ~= "note" then suffix, failed, timed = QS.GoalSuffix(goal, done, true) end
	local txt = goalText(goal)
	if done or failed then
		txt = ("|cff%s%s|r"):format(UI.Hex("faded"), (txt:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")))
	end
	txt = txt .. (suffix or "")
	if failed then txt = txt .. ("\n|cff%s• %s|r"):format(UI.Hex("danger"), ns.L.Q_FAILED_TIP) end
	if goal.tips then
		for _, tip in ipairs(goal.tips) do
			txt = txt .. ("\n|cff%s• %s|r"):format(UI.Hex("tip"), ns:LocalizeText(tip))
		end
	end
	-- o grupo (PartySync): a contagem de cada membro que usa o Lodestar nesta quest
	local q = QS and goal.verb ~= "note" and QS.QuestOf(goal)
	local PS = ns.PartySync
	if q and PS then
		local line = PS.Line(PS:For(q), ns.L)
		if line ~= "" then txt = txt .. ("\n|cff%s%s|r"):format(UI.Hex("tip"), line) end
	end
	return txt, timed
end

--------------------------------------------------------------------------------
-- Montagem
--------------------------------------------------------------------------------
StaticPopupDialogs["LODESTAR_RESET"] = {
	text = ns.L.ACT_RESET_CONFIRM, button1 = YES, button2 = NO,
	OnAccept = function() SlashCmdList.LODESTAR("reset") end,
	timeout = 0, whileDead = true, hideOnEscape = true, preferredIndex = 3,
}

local function actionsMenu(anchor)
	local L, run = ns.L, SlashCmdList.LODESTAR
	UI.Menu(anchor, {
		{ L.V3_HUB, function() if ns.Hub then ns.Hub:Open() end end },
		{ L.TRAVEL_TIP, function() run("travel") end },
		{ L.ACT_TIDY, function() run("diario") end },
		{ L.RACE_TITLE, function() run("race") end },
		{ L.SET_TITLE, function() run("config") end },
		{ L.ACT_REPORT, function() run("report") end },
		{ L.ACT_RESCAN, function() run("rescan") end },
		{ L.ACT_RESET, function() StaticPopup_Show("LODESTAR_RESET") end },
		{ L.ACT_EXPORT, function() run("export") end },
		{ L.ACT_IMPORT, function() run("import") end },
		{ L.ACT_RECORD, function() run("record") end },
		{ L.ACT_SCAN_START, function() run("scan") end },
		{ L.ACT_SCAN_STATUS, function() run("scan status") end },
		{ L.ACT_SCAN_STOP, function() run("scan stop") end },
		{ L.ACT_SCAN_CLEAR, function() run("scan clear") end },
	})
end

-- um aviso de cima: cartão suave com texto e até dois botões
local function makeBanner(parent, kind)
	local C = UI.COL
	local soft = { info = C.tipSoft, warn = C.amberSoft, gold = C.accentSoft, ok = C.doneSoft }
	local line = { info = C.tip, warn = C.amber, gold = C.accent, ok = C.done }
	local b = UI.Card(parent, { color = soft[kind], lineColor = UI.dark and line[kind] or soft[kind], radius = 6 })
	b.icon = UI.Glyph(b, kind == "warn" and "alvo" or kind == "info" and "seta-rota" or "estrela", "OVERLAY", 64)
	b.icon:SetSize(16, 16); b.icon:SetPoint("TOPLEFT", 10, -9); b.icon:SetVertexColor(unpackc(line[kind]))
	b.text = UI.Text(b, 12.5, UI.dark and line[kind] or C.active, { bold = true, wrap = true })
	b.text:SetPoint("TOPLEFT", b.icon, "TOPRIGHT", 8, 1); b.text:SetPoint("RIGHT", b, "RIGHT", -28, 0)
	b.sub = UI.Text(b, 11.5, UI.dark and C.muted or line[kind], { num = true, wrap = true })
	b.sub:SetPoint("TOPLEFT", b.text, "BOTTOMLEFT", 0, -2); b.sub:SetPoint("RIGHT", b, "RIGHT", -28, 0)
	b.chev = UI.Glyph(b, "chevron-dir", "OVERLAY", 64); b.chev:SetSize(10, 10)
	b.chev:SetPoint("RIGHT", -10, 0); b.chev:SetVertexColor(unpackc(line[kind])); b.chev:Hide()
	b.a = UI.Button(b, "", 112, 22); b.b = UI.Button(b, "", 112, 22)
	b.a:Hide(); b.b:Hide()
	b:Hide()
	-- mede e posiciona; devolve a altura
	function b:Layout(width, buttons)
		self:SetWidth(width)
		local h = 10 + self.text:GetStringHeight()
		if (self.sub:GetText() or "") ~= "" then h = h + 2 + self.sub:GetStringHeight() end
		h = h + 9
		if buttons then
			self.a:ClearAllPoints(); self.a:SetPoint("TOPLEFT", self, "TOPLEFT", 34, -h + 2)
			self.b:ClearAllPoints(); self.b:SetPoint("LEFT", self.a, "RIGHT", 6, 0)
			h = h + 28
		end
		self:SetHeight(math.max(34, h))
		return self:GetHeight()
	end
	return b
end

-- um objetivo: glifo, texto, contagem à direita, barra fina e a distância
local function getRow(i)
	if rowPool[i] then return rowPool[i] end
	local C = UI.COL
	local row = CreateFrame("Frame", nil, frame.stepCard)
	row.glyph = row:CreateTexture(nil, "OVERLAY"); row.glyph:SetSize(14, 14); row.glyph:SetPoint("TOPLEFT", 0, -1)
	row.text = UI.Text(row, 13, C.active, { wrap = true })
	row.text:SetPoint("TOPLEFT", row.glyph, "TOPRIGHT", 8, 1); row.text:SetPoint("RIGHT", row, "RIGHT", -52, 0)
	row.count = UI.Text(row, 13, C.muted, { num = true, justify = "RIGHT" })
	row.count:SetPoint("TOPRIGHT", row, "TOPRIGHT", 0, 0)
	row.bar = UI.Bar(row, C.accentBright); row.bar:SetHeight(4)
	row.dist = UI.Badge(row, "", "gold"); row.dist:SetPoint("TOPRIGHT", row, "TOPRIGHT", 0, 1); row.dist:Hide()
	row:EnableMouse(true)
	row:SetScript("OnMouseUp", function(self, button) V:RowClick(self, button) end)
	row:SetScript("OnEnter", function(self) V:RowEnter(self) end)
	row:SetScript("OnLeave", function() GameTooltip:Hide() end)
	rowPool[i] = row
	return row
end

local function rowQuest(row)
	local QS = ns.QuestState
	return row._goal and QS and QS.QuestOf(row._goal)
end

function V:RowClick(row, button)
	local goal = row._goal
	if not goal then return end
	local L, QS, qid = ns.L, ns.QuestState, rowQuest(row)
	if button == "RightButton" and qid and QS then
		local items = { { L.Q_MENU_SKIP, function() QS:SkipQuest(qid) end } }
		if ns.PartySync and ns.PartySync:CanShare(qid) then
			items[#items + 1] = { L.PS_SHARE, function() ns.PartySync.Share(qid) end }
		end
		if ns.IsQuestInLog(qid) then
			items[#items + 1] = { L.Q_MENU_LOG, function() QS.ShowInLog(qid) end }
			items[#items + 1] = { L.Q_MENU_ABANDON, function() QS.Abandon(qid) end }
		end
		UI.Menu(row, items)
	elseif button == "LeftButton" and goal.complete and ns.Collect and ns.Collect:ToggleFromGoal(goal) then
		-- colecionável (issue #94): marca ou desmarca como pego (o Collect atualiza a janela)
	elseif button == "LeftButton" and goal._gkey and goal.verb ~= "note" and not ns:IsGoalTrackable(goal) then
		local cg = ns.char.completedGoals
		cg[goal._gkey] = not cg[goal._gkey] or nil
		ns:CheckProgress()
		V:Refresh()
	end
end

function V:RowEnter(row)
	local goal = row._goal
	if not goal or goal.verb == "note" then return end
	local L, qid = ns.L, rowQuest(row)
	local hint = qid and L.Q_ROW_HINT or (not ns:IsGoalTrackable(goal) and L.Q_ROW_MANUAL)
	if not hint then return end
	GameTooltip:SetOwner(row, "ANCHOR_LEFT")
	if qid then GameTooltip:SetText(ns.QuestState.Title(qid), 1, 1, 1) end
	GameTooltip:AddLine(hint, 0.62, 0.66, 0.72, true)
	GameTooltip:Show()
end

local function getTab(i)
	if tabPool[i] then return tabPool[i] end
	local C = UI.COL
	local t = CreateFrame("Button", nil, frame.tabStrip)
	t:SetHeight(TAB_H)
	t.card = UI.Card(t, { radius = 6, color = C.card }); t.card:SetAllPoints(); t.card:SetFrameLevel(t:GetFrameLevel())
	t.label = UI.Text(t, 12.5, C.muted, { bold = true, wrap = false })
	t.label:SetPoint("LEFT", 10, 0)
	t.meta = UI.Text(t, 11, C.dim, { num = true, justify = "RIGHT" })
	t.meta:SetPoint("RIGHT", -22, 0)
	t.x = CreateFrame("Button", nil, t); t.x:SetSize(16, 16); t.x:SetPoint("RIGHT", -4, 0)
	local xg = UI.Glyph(t.x, "fechar", "OVERLAY", 64); xg:SetAllPoints(); xg:SetVertexColor(unpackc(C.dim))
	t.x:SetScript("OnEnter", function() xg:SetVertexColor(unpackc(C.danger)) end)
	t.x:SetScript("OnLeave", function() xg:SetVertexColor(unpackc(C.dim)) end)
	t.x:SetScript("OnClick", function() if t._key then ns:CloseGuide(t._key) end end)
	t:SetScript("OnClick", function()
		if not t._key then return end
		if not (ns.currentGuide and ns.currentGuide.key == t._key) then ns.char.manualPick = t._key end
		ns:SwitchGuide(t._key)
	end)
	tabPool[i] = t
	return t
end

local function build()
	if frame then return frame end
	local dbv = ns.db.viewer
	local C = UI.COL
	local L = ns.L

	frame = UI.Card(UIParent, { name = "LodestarViewer", shadow = true, color = C.bg })
	frame:SetSize(math.max(340, dbv.width or 360), 320)
	frame:SetPoint(dbv.point or "RIGHT", UIParent, dbv.point or "RIGHT", dbv.x or -24, dbv.y or 0)
	frame:SetClampedToScreen(true)
	frame:SetMovable(true); frame:EnableMouse(true)
	frame:SetFrameStrata("MEDIUM")
	frame:SetToplevel(true)

	-- Cabeçalho -----------------------------------------------------------
	local header = CreateFrame("Frame", nil, frame)
	header:SetPoint("TOPLEFT"); header:SetPoint("TOPRIGHT"); header:SetHeight(HEAD_H)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function()
		frame:StopMovingOrSizing()
		local p, _, _, x, y = frame:GetPoint()
		dbv.point, dbv.x, dbv.y = p, x, y
	end)
	local sep = UI.Rect(header, "ARTWORK", C.line); sep:SetPoint("BOTTOMLEFT", 1, 0); sep:SetPoint("BOTTOMRIGHT", -1, 0)
	sep:SetHeight(1)
	frame.header = header

	local star = UI.Icon(header, "logo-estrela", "ARTWORK", 128); star:SetSize(22, 22)
	star:SetPoint("LEFT", 12, 0); star:SetVertexColor(unpackc(C.accentBright))
	frame.title = UI.Text(header, 15, C.active, { bold = true, wrap = false })
	frame.title:SetPoint("LEFT", star, "RIGHT", 8, 0)
	frame.range = UI.Badge(header, "", "gold"); frame.range:SetPoint("LEFT", frame.title, "RIGHT", 8, 0)

	local close = UI.IconButton(header, "fechar", 24, nil, function() V:Hide() end)
	close:SetPoint("RIGHT", -10, 0)
	frame.collapseBtn = UI.IconButton(header, "chevron-baixo", 24, nil, function() V:ToggleCollapse() end)
	frame.collapseBtn:SetPoint("RIGHT", close, "LEFT", -4, 0)
	local more = UI.IconButton(header, "mais", 28, L.ACT_TIP, function(self) actionsMenu(self) end)
	more:SetPoint("RIGHT", frame.collapseBtn, "LEFT", -6, 0)
	local nav = UI.IconButton(header, "seta-rota", 28, L.TRAVEL_TIP,
		function() if ns.TravelPanel then ns.TravelPanel:Toggle() end end)
	nav:SetPoint("RIGHT", more, "LEFT", -4, 0)
	local hub = UI.IconButton(header, "livro", 28, L.V3_HUB, function() if ns.Hub then ns.Hub:Toggle() end end)
	hub:SetPoint("RIGHT", nav, "LEFT", -4, 0)

	-- Abas ----------------------------------------------------------------
	frame.tabStrip = CreateFrame("Frame", nil, frame)
	frame.tabStrip:SetPoint("TOPLEFT", header, "BOTTOMLEFT", PAD, -8)
	frame.tabStrip:SetPoint("TOPRIGHT", header, "BOTTOMRIGHT", -PAD, -8)
	frame.tabStrip:SetHeight(TAB_H)
	frame.addTab = CreateFrame("Button", nil, frame.tabStrip)
	frame.addTab:SetSize(TAB_H, TAB_H); frame.addTab:SetPoint("RIGHT")
	-- o fundo é um quadro filho: no nível do botão, senão cobre o + desenhado no botão
	local addBg = UI.Card(frame.addTab, { radius = 6, color = C.bg, lineColor = C.borderHi }); addBg:SetAllPoints()
	addBg:SetFrameLevel(frame.addTab:GetFrameLevel())
	local plus = UI.Glyph(frame.addTab, "mais", "OVERLAY", 64); plus:SetSize(12, 12); plus:SetPoint("CENTER")
	plus:SetVertexColor(unpackc(C.accent))
	frame.addTab:SetScript("OnClick", function() if ns.GuideMenu then ns.GuideMenu:Open() end end)
	frame.addTab:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP"); GameTooltip:SetText(L.ADD_GUIDE); GameTooltip:Show()
	end)
	frame.addTab:SetScript("OnLeave", function() GameTooltip:Hide() end)

	-- Progresso -----------------------------------------------------------
	frame.bar = UI.Bar(frame, C.accentBright)
	frame.bar:SetHeight(6)
	frame.stepLabel = UI.Text(frame, 11.5, C.dim, { num = true })
	frame.pctLabel = UI.Text(frame, 11.5, C.dim, { num = true, justify = "RIGHT" })

	-- Corpo (avisos, cartão do passo, ações, a seguir) ---------------------
	frame.body = CreateFrame("Frame", nil, frame)
	frame.notice = makeBanner(frame.body, "gold")
	frame.group = makeBanner(frame.body, "warn")
	frame.group.a:SetScript("OnClick", function() ns:FindGroup(frame._groupRaid) end)
	frame.grind = makeBanner(frame.body, "ok")          -- passo de grind: a masmorra que cabe agora (issue #92)
	frame.grind.a:SetScript("OnClick", function() if ns.Hub then ns.Hub:Show("dungeons") end end)
	frame.travel = makeBanner(frame.body, "info")
	frame.travel:EnableMouse(true)
	frame.travel:SetScript("OnMouseUp", function() if ns.TravelPanel then ns.TravelPanel:Toggle() end end)
	frame.travel.chev:Show()

	frame.stepCard = UI.Card(frame.body, { color = C.card })
	frame.who = UI.Text(frame.stepCard, 14, C.active, { bold = true, wrap = false })
	frame.where = UI.Text(frame.stepCard, 11.5, C.dim, { num = true, wrap = false })
	frame.whoDist = UI.Badge(frame.stepCard, "", "gold")
	frame.whoSep = UI.Rect(frame.stepCard, "ARTWORK", C.line); frame.whoSep:SetHeight(1)

	-- ações rápidas: uma rota em um clique (não são botões seguros: a janela muda de altura em combate)
	frame.quick = CreateFrame("Frame", nil, frame.body)
	frame.quick:SetHeight(46)
	frame.quickBtns = {}
	-- o serviço entra como parada antes do passo (#117); Shift+clique vai direto
	local function svc(kind)
		return function() if ns.Services then ns.Services:GoTo(kind, nil, nil, IsShiftKeyDown and IsShiftKeyDown()) end end
	end
	local QUICK = {
		{ "treinador", L.V3_Q_TRAIN, svc("classtrainer") },
		{ "martelo", L.V3_Q_REPAIR, svc("repair") },
		{ "estrela", L.V3_Q_INN, svc("inn") },
		{ "livro", L.ACT_TIDY, function() SlashCmdList.LODESTAR("diario") end },
	}
	for i, q in ipairs(QUICK) do
		local b = CreateFrame("Button", nil, frame.quick)
		local bg = UI.Card(b, { radius = 6, color = C.card }); bg:SetAllPoints(); bg:SetFrameLevel(b:GetFrameLevel())
		local g = UI.Glyph(b, q[1], "OVERLAY", 64); g:SetSize(16, 16); g:SetPoint("TOP", 0, -7)
		g:SetVertexColor(unpackc(C.accent))
		local t = UI.Text(b, 11.5, C.muted, { num = true, justify = "CENTER", wrap = false })
		t:SetPoint("BOTTOM", 0, 6); t:SetPoint("LEFT", 2, 0); t:SetPoint("RIGHT", -2, 0); t:SetText(q[2])
		b:SetScript("OnClick", q[3])
		b:SetScript("OnEnter", function() bg:SetLine(C.borderHi); t:SetTextColor(unpackc(C.active)) end)
		b:SetScript("OnLeave", function() bg:SetLine(C.border); t:SetTextColor(unpackc(C.muted)) end)
		frame.quickBtns[i] = b
	end

	-- compras do guia na casa de leilões (Shopping.lua, #134): uma linha quando há o que comprar; leva à mais perto
	frame.shop = CreateFrame("Button", nil, frame.body)
	frame.shop:SetHeight(30)
	do
		local bg = UI.Card(frame.shop, { radius = 6, color = C.card }); bg:SetAllPoints()
		bg:SetFrameLevel(frame.shop:GetFrameLevel())
		local g = UI.Glyph(frame.shop, "moeda", "OVERLAY", 64); g:SetSize(14, 14); g:SetPoint("LEFT", 10, 0)
		g:SetVertexColor(unpackc(C.accent))
		local t = UI.Text(frame.shop, 11.5, C.muted, { num = true, wrap = false })
		t:SetPoint("LEFT", g, "RIGHT", 8, 0); t:SetPoint("RIGHT", -10, 0)
		frame.shop.text = t
		frame.shop:SetScript("OnClick", function() if ns.Shopping then ns.Shopping:GoTo() end end)
		frame.shop:SetScript("OnEnter", function(self)
			bg:SetLine(C.borderHi); t:SetTextColor(unpackc(C.active))
			if not GameTooltip then return end
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:AddLine(L.SHOP_TITLE, 1, 1, 1)
			for _, it in ipairs(ns.Shopping and ns.Shopping:List() or {}) do
				GameTooltip:AddDoubleLine(it.nome or tostring(it.id), L.SHOP_MISSING:format(it.falta), 0.9, 0.9, 0.9, 0.7, 0.7, 0.7)
			end
			GameTooltip:AddLine(L.SHOP_TIP, 0.7, 0.7, 0.7, true)
			GameTooltip:Show()
		end)
		frame.shop:SetScript("OnLeave", function()
			bg:SetLine(C.border); t:SetTextColor(unpackc(C.muted))
			if GameTooltip then GameTooltip:Hide() end
		end)
	end

	frame.nextLabel = UI.Text(frame.body, 11, C.dim, { num = true })
	frame.nextLabel:SetText(L.NEXT)

	-- Nesta área (AreaGoals.lua, #122): os objetivos das quests do diário que dá para fazer onde você está, um por
	-- linha num cartão só (azul, como as áreas deles no mapa), com o "+N" do que não coube à direita do rótulo
	frame.areaLabel = UI.Text(frame.body, 11, C.dim, { num = true })
	frame.areaLabel:SetText(L.NA_TITLE)
	frame.areaMore = UI.Text(frame.body, 11, C.dim, { num = true, justify = "RIGHT" })
	frame.areaCard = UI.Card(frame.body, { radius = 6, color = C.tipSoft, lineColor = UI.dark and C.tip or C.tipSoft })
	frame.areaRows = {}
	local ICON = { c = "combate", i = "losango", o = "buscar" }
	for i = 1, ns.AreaGoals and ns.AreaGoals.MAX or 5 do
		local r = CreateFrame("Button", nil, frame.areaCard)
		r:SetHeight(22)
		r.hl = UI.Slice(r, "round-6", "BACKGROUND", C.hover); r.hl:SetAllPoints(); r.hl:Hide()
		r.icon = r:CreateTexture(nil, "OVERLAY"); r.icon:SetSize(13, 13); r.icon:SetPoint("LEFT", 8, 0)
		r.text = UI.Text(r, 12.5, C.active, { wrap = false })
		r.text:SetPoint("LEFT", r.icon, "RIGHT", 7, 0); r.text:SetPoint("RIGHT", r, "RIGHT", -52, 0)
		r.count = UI.Text(r, 12, C.muted, { num = true, justify = "RIGHT" }); r.count:SetPoint("RIGHT", -8, 0)
		function r:Set(row)
			self._row = row
			self.icon:SetTexture(UI.GLYPH .. (ICON[row.kind] or "alvo") .. "-64")
			-- as quests do passo atual em ouro (o passo), as outras em azul (as áreas no mapa)
			self.icon:SetVertexColor(unpackc(row.tier == 1 and C.accentBright or C.tip))
			self.text:SetText(row.name)
			self.count:SetText(ns.AreaGoals.Count(row))
		end
		r:SetScript("OnClick", function(self) if self._row and ns.AreaGoals then ns.AreaGoals.GoTo(self._row) end end)
		r:SetScript("OnEnter", function(self)
			self.hl:Show()
			local row = self._row
			if not row then return end
			GameTooltip:SetOwner(self, "ANCHOR_LEFT")
			GameTooltip:SetText(ns.QuestState and ns.QuestState.Title(row.q) or tostring(row.q), 1, 1, 1)
			if row.text and row.text ~= "" then GameTooltip:AddLine(row.text, 0.86, 0.88, 0.92, true) end
			local tip = row.tier == 1 and L.NA_TIP_STEP or row.tier == 2 and L.NA_TIP_AHEAD:format(row.step or 0)
				or L.NA_TIP_OFF
			GameTooltip:AddLine(tip, 0.62, 0.66, 0.72, true)
			GameTooltip:Show()
		end)
		r:SetScript("OnLeave", function(self) self.hl:Hide(); GameTooltip:Hide() end)
		frame.areaRows[i] = r
	end

	-- Enquanto está aqui (Nearby.lua): o que dos passos à frente dá para fazer perto de você
	frame.nearLabel = UI.Text(frame.body, 11, C.dim, { num = true })
	frame.nearLabel:SetText(L.NB_TITLE)
	frame.nearRows = {}
	for i = 1, 3 do
		local r = CreateFrame("Button", nil, frame.body)
		r:SetHeight(30)
		local bg = UI.Card(r, { radius = 6, color = C.doneSoft, lineColor = UI.dark and C.done or C.doneSoft })
		bg:SetAllPoints(); bg:SetFrameLevel(r:GetFrameLevel())
		r.icon = UI.Glyph(r, "estrela", "OVERLAY", 64); r.icon:SetSize(13, 13); r.icon:SetPoint("LEFT", 9, 0)
		r.icon:SetVertexColor(unpackc(C.done))
		r.text = UI.Text(r, 12.5, C.active, { wrap = false })
		r.text:SetPoint("LEFT", r.icon, "RIGHT", 7, 0); r.text:SetPoint("RIGHT", r, "RIGHT", -56, 0)
		r.dist = UI.Badge(r, "", "ok"); r.dist:SetPoint("RIGHT", -6, 0)
		r:SetScript("OnClick", function(self) if self._c and ns.Nearby then ns.Nearby:GoTo(self._c) end end)
		r:SetScript("OnEnter", function(self)
			if not self._c then return end
			GameTooltip:SetOwner(self, "ANCHOR_LEFT")
			GameTooltip:SetText(ns.Nearby.Label(self._c), 1, 1, 1)
			local c = self._c
			local tip = c.kind == "books" and L.NB_TIP_BOOKS or c.offGuide and L.NB_TIP_OFF or L.NB_TIP:format(c.step or 0)
			GameTooltip:AddLine(tip, 0.62, 0.66, 0.72, true)
			GameTooltip:Show()
		end)
		r:SetScript("OnLeave", function() GameTooltip:Hide() end)
		frame.nearRows[i] = r
	end

	-- Rodapé --------------------------------------------------------------
	frame.prev = UI.Button(frame, L.BACK, 84, 30)
	frame.prev:SetPoint("BOTTOMLEFT", PAD, PAD)
	frame.prev:SetScript("OnClick", function() ns:AdvanceStep(-1) end)
	frame.next = UI.Button(frame, L.V3_SKIP_STEP, 112, 30, "primary")
	frame.next:SetPoint("BOTTOMRIGHT", -PAD, PAD)
	frame.next:SetScript("OnClick", function() ns:AdvanceStep(1) end)

	return frame
end

--------------------------------------------------------------------------------
-- Estado vazio (nenhum guia aberto): estrela, convite e a Central.
--------------------------------------------------------------------------------
local function buildEmpty()
	if frame.empty then return frame.empty end
	local C = UI.COL
	local e = CreateFrame("Frame", nil, frame)
	e:SetPoint("TOPLEFT", frame.header, "BOTTOMLEFT", 0, 0)
	e:SetPoint("TOPRIGHT", frame.header, "BOTTOMRIGHT", 0, 0)
	e:SetHeight(EMPTY_H - HEAD_H)
	local logo = UI.Icon(e, "logo-estrela", "ARTWORK", 128)
	logo:SetSize(44, 44); logo:SetPoint("TOP", 0, -20); logo:SetVertexColor(unpackc(C.accentBright))
	local ttl = UI.Text(e, 16, C.active, { bold = true, justify = "CENTER" })
	ttl:SetPoint("TOP", logo, "BOTTOM", 0, -10); ttl:SetText(ns.L.EMPTY_TITLE)
	local body = UI.Text(e, 12.5, C.muted, { justify = "CENTER", wrap = true })
	body:SetPoint("TOP", ttl, "BOTTOM", 0, -6)
	body:SetPoint("LEFT", e, "LEFT", 28, 0); body:SetPoint("RIGHT", e, "RIGHT", -28, 0)
	body:SetText(ns.L.EMPTY_BODY)
	local cta = UI.Button(e, ns.L.V3_OPEN_HUB, 170, 32, "primary")
	cta:SetPoint("TOP", body, "BOTTOM", 0, -16)
	cta:SetScript("OnClick", function() if ns.Hub then ns.Hub:Open() elseif ns.GuideMenu then ns.GuideMenu:Open() end end)
	frame.empty = e
	return e
end

local BODY_PARTS = { "tabStrip", "bar", "stepLabel", "pctLabel", "body", "prev", "next" }

function V:ShowEmpty()
	buildEmpty()
	frame.title:SetText("Lodestar"); frame.range:Hide()
	for _, k in ipairs(BODY_PARTS) do frame[k]:Hide() end
	frame.empty:Show()
	frame:SetHeight(EMPTY_H)
end

function V:HideEmpty()
	if frame.empty then frame.empty:Hide() end
	for _, k in ipairs(BODY_PARTS) do frame[k]:Show() end
end

--------------------------------------------------------------------------------
-- Abas
--------------------------------------------------------------------------------
function V:RefreshTabs()
	if not frame then return end
	local C = UI.COL
	local list = ns.char.openGuides or {}
	local n = #list
	local stripW = frame.tabStrip:GetWidth()
	if stripW <= 0 then stripW = frame:GetWidth() - 2 * PAD end
	local gap = 6
	local avail = stripW - TAB_H - gap
	local pillW = n > 0 and math.floor((avail - (n - 1) * gap) / n) or avail
	pillW = math.max(28, math.min(190, pillW))
	local x = 0
	for i = 1, n do
		local key = list[i]
		local tab = getTab(i)
		tab._key = key
		local active = (ns.currentGuide and ns.currentGuide.key == key) or false
		tab.card:SetColor(active and C.card or C.bg)
		tab.card:SetLine(active and C.borderHi or C.border)
		tab.label:SetTextColor(unpackc(active and C.active or C.muted))
		local g = ns.guides[key]
		local total = g and g.steps and #g.steps or nil
		local cur = active and ns.char.currentStep or ns.char.steps[key]
		tab.meta:SetText(total and cur and pillW > 110 and ("%d/%d"):format(cur, total) or "")
		tab.x:SetShown(active and pillW > 60)
		tab:SetWidth(pillW)
		fitText(tab.label, guideTitle(key), pillW - (tab.meta:GetStringWidth() or 0) - 34)
		tab:ClearAllPoints()
		tab:SetPoint("LEFT", frame.tabStrip, "LEFT", x, 0)
		tab:Show()
		x = x + pillW + gap
	end
	for i = n + 1, #tabPool do tabPool[i]:Hide() end
end

--------------------------------------------------------------------------------
-- O passo: quem, onde e a que distância
--------------------------------------------------------------------------------
local WHO = { talk = true, click = true, kill = true, collect = true, use = true }
local function stepHead(step)
	local who, whereGoal
	for _, g in ipairs(step.goals) do
		if ns:IsGoalActive(g) and not ns:IsGoalComplete(g) then
			if not who and WHO[g.verb] and g.text then who = g.text end
			if not whereGoal and g.goto_ and g.goto_.zone then whereGoal = g end
		end
	end
	if not who then
		for _, g in ipairs(step.goals) do
			if ns:IsGoalActive(g) and (g.verb == "talk" or g.verb == "kill") and g.text then who = g.text; break end
		end
	end
	local where
	if whereGoal then
		local gt = whereGoal.goto_
		where = ("%s · %s %s"):format(localizedZone(gt.zone),
			(("%.1f"):format(gt.x or 0)):gsub("%.", ","), (("%.1f"):format(gt.y or 0)):gsub("%.", ","))
	end
	return who, where, whereGoal
end

--------------------------------------------------------------------------------
function V:Refresh()
	if not frame or not frame:IsShown() then return end
	if ns.db.viewer.collapsed then return end
	local C, L = UI.COL, ns.L
	local guide = ns.currentGuide
	for _, r in pairs(rowPool) do r:Hide() end
	for _, p in pairs(previewPool) do p:Hide() end
	wipe(distRows)
	wipe(timedRows)

	if not guide then return V:ShowEmpty() end
	V:HideEmpty()
	V:RefreshTabs()

	local W = frame:GetWidth()
	local inner = W - 2 * PAD

	-- cabeçalho
	local range = levelRange(guide.key)
	fitText(frame.title, guideTitle(guide.key), W - 12 - 22 - 8 - 160 - (range and 50 or 0))
	if range then frame.range:Set(range); frame.range:Show() else frame.range:Hide() end

	-- progresso
	local total, cur = #guide.steps, ns.char.currentStep
	local y = HEAD_H + 8 + TAB_H + 10
	frame.bar:ClearAllPoints()
	frame.bar:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD, -y); frame.bar:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -PAD, -y)
	frame.bar:SetProgress(cur / math.max(1, total))
	frame.stepLabel:ClearAllPoints(); frame.stepLabel:SetPoint("TOPLEFT", frame.bar, "BOTTOMLEFT", 0, -5)
	frame.stepLabel:SetText(L.V3_STEP_OF:format(cur, total))
	frame.pctLabel:ClearAllPoints(); frame.pctLabel:SetPoint("TOPRIGHT", frame.bar, "BOTTOMRIGHT", 0, -5)
	frame.pctLabel:SetText(("%d%%"):format(math.floor(cur / math.max(1, total) * 100)))
	y = y + 6 + 5 + 14 + 10

	frame.body:ClearAllPoints()
	frame.body:SetPoint("TOPLEFT", frame, "TOPLEFT", PAD, -y); frame.body:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -PAD, -y)
	local by = 0
	local step = ns:GetStep()

	-- aviso de cima: quest abandonada que o guia ainda usa, ou o último pulo (Desfazer)
	local notice = ns.QuestState and ns.QuestState:Notice()
	local nb = frame.notice
	if notice then
		local QS = ns.QuestState
		nb.sub:SetText("")
		if notice.kind == "abandoned" then
			nb.text:SetText(L.Q_ABANDONED:format(notice.title))
			nb.a.text:SetText(L.Q_GO_BACK); nb.b.text:SetText(L.Q_MENU_SKIP)
			nb.a:SetScript("OnClick", function()
				if notice.back then ns:GoToStep(notice.back) else ns:Print(L.Q_NO_BACK) end
				if ns.char.abandoned then ns.char.abandoned[notice.q] = nil end
				V:Refresh()
			end)
			nb.b:SetScript("OnClick", function() QS:SkipQuest(notice.q) end)
			nb.a:Show(); nb.b:Show()
		else
			nb.text:SetText(notice.extra > 0 and L.Q_SKIPPED_N:format(notice.title, notice.extra)
				or L.Q_SKIPPED:format(notice.title))
			nb.a.text:SetText(L.Q_UNDO)
			nb.a:SetScript("OnClick", function() QS:Undo() end)
			nb.a:Show(); nb.b:Hide()
		end
		nb:ClearAllPoints(); nb:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
		by = by + nb:Layout(inner, true) + 8
		nb:Show()
	else
		nb:Hide()
	end

	-- grupo: objetivo elite/chefe por fazer
	local needRaid, needGroup = false, false
	if step then
		for _, goal in ipairs(step.goals) do
			if (goal.elite or goal.raid) and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
				if goal.raid then needRaid = true else needGroup = true end
			end
		end
	end
	local gb = frame.group
	if needRaid or needGroup then
		frame._groupRaid = needRaid
		gb.text:SetText(needRaid and L.GROUP_RAID or L.GROUP_ELITE)
		gb.sub:SetText("")
		gb.a.text:SetText(L.GROUP_FIND); gb.a:Show(); gb.b:Hide()
		gb:ClearAllPoints(); gb:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
		by = by + gb:Layout(inner, true) + 8
		gb:Show()
	else
		gb:Hide()
	end

	-- passo de grind: a masmorra que cabe agora, como alternativa
	local gr = frame.grind
	local grindGoal
	for _, goal in ipairs(step and step.goals or {}) do
		if goal.verb == "ding" and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then grindGoal = goal end
	end
	local dun = grindGoal and ns.Dungeons and ns.Dungeons:BestNow()
	if dun then
		local quests = ns.Dungeons:QuestsFor(dun)
		local todo = 0
		for _, q in ipairs(quests) do
			if not ns.IsQuestDone(q.id) and not ns.IsQuestInLog(q.id) then todo = todo + 1 end
		end
		gr.text:SetText(L.NB_GRIND:format(dun.key, dun.lo, dun.hi))
		gr.sub:SetText(todo > 0 and L.NB_GRIND_Q:format(todo) or "")
		gr.a.text:SetText(L.V3_SEE_DUNGEON); gr.a:Show(); gr.b:Hide()
		gr:ClearAllPoints(); gr:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
		by = by + gr:Layout(inner, true) + 8
		gr:Show()
	else
		gr:Hide()
	end

	-- a perna de viagem (clicável: abre a Navegação)
	local thint = travelHint()
	local tb = frame.travel
	if thint then
		tb.text:SetText(thint)
		tb.sub:SetText(L.V3_TRAVEL_SUB)
		tb:ClearAllPoints(); tb:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
		by = by + tb:Layout(inner) + 8
		tb:Show()
	else
		tb:Hide()
	end

	-- o cartão do passo
	local card = frame.stepCard
	card:ClearAllPoints(); card:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
	card:SetWidth(inner)
	local cy = 12
	local who, where, whereGoal
	if step then who, where, whereGoal = stepHead(step) end
	if who or where then
		frame.who:ClearAllPoints(); frame.who:SetPoint("TOPLEFT", card, "TOPLEFT", 12, -cy)
		fitText(frame.who, who or where or "", inner - 24 - 70)
		frame.who:Show()
		cy = cy + 18
		if where and who then
			frame.where:ClearAllPoints(); frame.where:SetPoint("TOPLEFT", card, "TOPLEFT", 12, -cy)
			frame.where:SetText(where); frame.where:Show()
			cy = cy + 15
		else
			frame.where:Hide()
		end
		frame.whoDist:ClearAllPoints(); frame.whoDist:SetPoint("TOPRIGHT", card, "TOPRIGHT", -12, -12)
		frame.whoDist:Hide()
		if whereGoal then distRows[#distRows + 1] = { chip = frame.whoDist, goal = whereGoal } end
		frame.whoSep:ClearAllPoints()
		frame.whoSep:SetPoint("TOPLEFT", card, "TOPLEFT", 12, -(cy + 6)); frame.whoSep:SetPoint("RIGHT", card, "RIGHT", -12, 0)
		frame.whoSep:Show()
		cy = cy + 14
	else
		frame.who:Hide(); frame.where:Hide(); frame.whoDist:Hide(); frame.whoSep:Hide()
	end

	local i = 0
	local QS = ns.QuestState
	if step then
		for _, goal in ipairs(step.goals) do
			if ns:IsGoalActive(goal) then
				i = i + 1
				local row = getRow(i)
				row:ClearAllPoints()
				row:SetPoint("TOPLEFT", card, "TOPLEFT", 12, -cy); row:SetPoint("RIGHT", card, "RIGHT", -12, 0)
				local done = ns:IsGoalComplete(goal)
				if goal.verb == "note" then
					row.glyph:Hide()
				else
					row.glyph:Show()
					if done then
						row.glyph:SetTexture(UI.GLYPH .. "check-64"); row.glyph:SetVertexColor(unpackc(C.done))
					else
						row.glyph:SetTexture(UI.MEDIA .. "ring")
						row.glyph:SetVertexColor(unpackc(ns:IsGoalTrackable(goal) and C.accentBright or C.soft))
					end
				end
				local txt, timed = rowText(goal, done)
				row.text:SetText(txt)
				row._goal, row._done = goal, done
				if timed then timedRows[#timedRows + 1] = row end
				-- contagem e barra (do diário; collect sem quest, da bolsa)
				local have, need
				if QS and QS.GoalCounts then have, need = QS.GoalCounts(goal) end
				local counted = not done and have and need and need > 1
				local wantDist = goal.goto_ and not done and goal ~= whereGoal and not counted
				row.count:SetShown(counted and true or false)
				if counted then row.count:SetText(("%d/%d"):format(have, need)) end
				row.text:SetPoint("RIGHT", row, "RIGHT", (counted or wantDist) and -52 or 0, 0)
				local h = math.max(16, row.text:GetStringHeight() + 2)
				if counted then
					row.bar:ClearAllPoints()
					row.bar:SetPoint("TOPLEFT", row.text, "BOTTOMLEFT", 0, -5)
					row.bar:SetPoint("RIGHT", row, "RIGHT", 0, 0)
					row.bar:Show(); row.bar:SetProgress(have / need)
					h = h + 9
				else
					row.bar:Hide()
				end
				-- distância por linha só quando o passo tem mais de um lugar
				row.dist:Hide()
				if wantDist and ns.Waypoint then distRows[#distRows + 1] = { chip = row.dist, goal = goal } end
				row:SetHeight(h)
				row:Show()
				cy = cy + h + 9
			end
		end
	end
	card:SetHeight(math.max(40, cy + 4))
	by = by + card:GetHeight() + 10

	-- nesta área (#122): os do passo atual primeiro; o que não coube vira "+N" no rótulo
	local here = ns.AreaGoals and ns.AreaGoals.List() or {}
	local hn = math.min(#here, #frame.areaRows)
	frame.areaLabel:SetShown(hn > 0); frame.areaMore:SetShown(#here > hn); frame.areaCard:SetShown(hn > 0)
	if hn > 0 then
		frame.areaLabel:ClearAllPoints(); frame.areaLabel:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
		frame.areaMore:ClearAllPoints(); frame.areaMore:SetPoint("TOPRIGHT", frame.body, "TOPRIGHT", 0, -by)
		frame.areaMore:SetText(L.NA_MORE:format(#here - hn))
		by = by + 16
		local ac = frame.areaCard
		ac:ClearAllPoints(); ac:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by); ac:SetWidth(inner)
		ac:SetHeight(hn * 22 + 8)
		by = by + hn * 22 + 8 + 10
	end
	for ri, r in ipairs(frame.areaRows) do
		if ri <= hn then
			r:Set(here[ri])
			r:ClearAllPoints()
			r:SetPoint("TOPLEFT", frame.areaCard, "TOPLEFT", 2, -(4 + (ri - 1) * 22))
			r:SetPoint("RIGHT", frame.areaCard, "RIGHT", -2, 0)
			r:Show()
		else
			r._row = nil
			r:Hide()
		end
	end

	-- enquanto está aqui
	local near = ns.Nearby and ns.Nearby:List() or {}
	frame.nearLabel:SetShown(#near > 0)
	if #near > 0 then
		frame.nearLabel:ClearAllPoints(); frame.nearLabel:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
		by = by + 16
	end
	for ni, r in ipairs(frame.nearRows) do
		local c = near[ni]
		r._c = c
		if c then
			r.text:SetText(ns.Nearby.Label(c))
			r.icon:SetTexture(UI.GLYPH .. (c.kind == "turnin" and "check" or c.kind == "accept" and "bandeira"
				or c.kind == "books" and "livro" or "alvo") .. "-64")
			r.dist:Set(L.V3_YARDS:format(c.dist))
			r:ClearAllPoints(); r:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by); r:SetWidth(inner)
			distRows[#distRows + 1] = { chip = r.dist, goal = c.goal }
			r:Show()
			by = by + 34
		else
			r:Hide()
		end
	end
	if #near > 0 then by = by + 6 end

	-- ações rápidas
	frame.quick:ClearAllPoints(); frame.quick:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
	frame.quick:SetWidth(inner)
	local qn = #frame.quickBtns
	local qw = math.floor((inner - (qn - 1) * 6) / qn)
	for qi, b in ipairs(frame.quickBtns) do
		b:ClearAllPoints(); b:SetSize(qw, 46); b:SetPoint("LEFT", frame.quick, "LEFT", (qi - 1) * (qw + 6), 0)
	end
	by = by + 46 + 12

	-- compras do guia na casa de leilões
	local compras = ns.Shopping and ns.Shopping:List() or {}
	frame.shop:SetShown(#compras > 0)
	if #compras > 0 then
		frame.shop:ClearAllPoints(); frame.shop:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
		frame.shop:SetWidth(inner)
		frame.shop.text:SetText(L.SHOP_LINE:format(#compras))
		by = by + 30 + 10
	end

	-- a seguir
	local shown = 0
	local idx = cur + 1
	local py = by + 16
	while shown < 2 and guide.steps[idx] do
		local s = guide.steps[idx]
		if ns:IsStepActive(s) then
			shown = shown + 1
			local p = previewPool[shown]
			if not p then
				p = CreateFrame("Frame", nil, frame.body)
				p.dot = UI.Rect(p, "ARTWORK", C.accentBright); p.dot:SetSize(6, 6); p.dot:SetPoint("LEFT", 2, 0)
				p.text = UI.Text(p, 12.5, C.muted, { wrap = false })
				p.text:SetPoint("LEFT", p.dot, "RIGHT", 9, 0); p.text:SetPoint("RIGHT", p, "RIGHT", -44, 0)
				p.count = UI.Text(p, 12, C.dim, { num = true, justify = "RIGHT" }); p.count:SetPoint("RIGHT")
				previewPool[shown] = p
			end
			p.dot:SetColorTexture(unpackc(shown == 1 and C.accentBright or C.borderHi))
			local summary, cnt = "...", ""
			for _, g in ipairs(s.goals) do
				if g.verb ~= "note" and ns:IsGoalActive(g) then
					summary = verbLabel(g.verb) .. " " .. displayName(g)
					if QS and QS.GoalCounts and g.verb ~= "accept" and not ns:IsGoalComplete(g) then
						local h2, n2 = QS.GoalCounts(g)
						if h2 and n2 and n2 > 1 then cnt = ("%d/%d"):format(h2, n2) end
					end
					break
				end
			end
			p.text:SetText(summary); p.count:SetText(cnt)
			p:ClearAllPoints(); p:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -py); p:SetPoint("RIGHT", frame.body, "RIGHT")
			p:SetHeight(18); p:Show()
			py = py + 20
		end
		idx = idx + 1
	end
	frame.nextLabel:ClearAllPoints(); frame.nextLabel:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, -by)
	frame.nextLabel:SetShown(shown > 0)
	if shown > 0 then by = py + 4 end

	frame.body:SetHeight(math.max(1, by))
	frame:SetHeight(math.min(760, y + by + 12 + 30 + PAD))
	V:UpdateDistances()
end

-- Só os chips de distância (barato, roda em timer)
function V:UpdateDistances()
	if not (frame and frame:IsShown()) then return end
	for _, r in ipairs(distRows) do
		local d = ns.Waypoint and ns.Waypoint:DistanceTo(r.goal)
		if d then r.chip:Set(ns.L.V3_YARDS:format(d)); r.chip:Show() else r.chip:Hide() end
	end
end

-- Só as linhas de quest com tempo, a cada segundo (QuestState): o texto muda, a altura não.
function V:UpdateTimers()
	if not (frame and frame:IsShown()) or #timedRows == 0 then return end
	for _, row in ipairs(timedRows) do
		if row:IsShown() and row._goal then row.text:SetText((rowText(row._goal, row._done))) end
	end
end

--------------------------------------------------------------------------------
function V:ApplyCollapsed()
	if not frame then return end
	if ns.db.viewer.collapsed then
		for _, k in ipairs(BODY_PARTS) do frame[k]:Hide() end
		if frame.empty then frame.empty:Hide() end
		frame:SetHeight(HEAD_H)
		frame.collapseBtn.glyph:SetTexture(UI.GLYPH .. "chevron-dir-64")
	else
		frame.collapseBtn.glyph:SetTexture(UI.GLYPH .. "chevron-baixo-64")
		V:Refresh()
	end
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
function V:Show()
	build()
	-- pedir a janela dentro da masmorra (/ls, atalho, minimapa) a traz de volta (Instance.lua)
	if ns.Instance then ns.Instance:ShownByPlayer() end
	ns.db.viewer.hidden = false
	frame:Show(); V:ApplyDisplay(); V:ApplyCollapsed(); ns:RefreshHUDs()
end
function V:Hide()
	if frame then frame:Hide() end
	ns.db.viewer.hidden = true
	-- fechar o guia some com a seta (issue #93): o destino avulso ("Guiar", /way) e as paradas saem junto; o do corpo fica
	if ns.Destinations and ns.Destinations:Get("manual") then ns.Destinations:Clear("manual") end
	if ns.Destinations and ns.Destinations.ClearStops then ns.Destinations:ClearStops() end
	ns:RefreshHUDs()
end
function V:Toggle() build(); if frame:IsShown() then V:Hide() else V:Show() end end

ns:On("_GUIDE_LOADED", function()
	build()
	if not ns.db.viewer.hidden and not ns.instanceHidden then V:Show() end
end)

-- mudou de zona: atualiza o aviso de viagem (ex.: chegou no hub de transporte)
ns:On("ZONE_CHANGED_NEW_AREA", function() if ns.Viewer then ns.Viewer:Refresh() end end)

-- timer leve p/ distâncias
ns:Every(0.25, function() if ns.Viewer then ns.Viewer:UpdateDistances() end end)
