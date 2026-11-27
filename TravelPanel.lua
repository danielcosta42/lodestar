--=============================================================================
-- TravelPanel — a Navegação (Lodestar 3, specs/lodestar-3; bússola no cabeçalho do guia, /ls travel).
--
--   o destino (do guia, manual ou o corpo) com o tempo total e a hora de chegada; Limpar o manual e as paradas
--   as paradas (#117), na ordem, cada uma com × para tirar
--   a viagem como linha do tempo: cada perna com ícone, texto e tempo; a atual destacada, as feitas riscadas; um
--   marcador em cada parada. Não cabendo (muitas paradas ou pernas), a lista e a linha do tempo encolhem (TP.Fit): o
--   trecho atual, "+N a mais no caminho" e o destino, até 4 paradas e "+N a mais" — a janela cabe na tela
--   os serviços mais perto em TEMPO de viagem (medidos ao abrir, um por vez), profissão abre a lista; o clique
--   põe uma parada, Shift+clique vai direto
--   coordenada digitada (Ir põe uma parada, Shift+Ir vai direto)
--=============================================================================
local ADDON, ns = ...
if not ns.On then return end
local TP = {}
ns.TravelPanel = TP
local UI = ns.UI
local unpackc = UI.unpackc

local W, PAD = 400, 14
local LEG_H, MARK_H, STOP_H = 46, 38, 28
local MORE_H = 28                  -- o "+N a mais no caminho" da linha do tempo (#117)
local STOPS_HEAD = 26              -- o rótulo da lista de paradas (18) e o respiro depois dela (8)
local STOPS_MAX = 4                -- paradas na lista; as outras num "+N a mais" da altura de uma linha
local MAX_H = 640                  -- a janela não passa disto (ou de 80% da tela, se maior): cabe numa tela de 768
local frame, legRows, markRows, stopRows, svcButtons, profList, status

-- nome da profissão: a tradução, se houver; o ns.L devolve "[CHAVE]" para o que falta
function TP.ProfLabel(prof)
	return rawget(ns.L, "PROF_" .. (prof:upper():gsub("%s+", "_"))) or prof
end

-- O que cabe em `avail` px (#117): a lista de paradas e a linha do tempo dividem a altura que sobra na janela. `h[k]` =
-- altura do item k da linha do tempo (perna ou marcador de parada), `isStop[k]` = é marcador, `cur` = o item da perna
-- atual, `nStops` = paradas na fila. Cabendo tudo, tudo (as pernas feitas também). Senão, nesta ordem e enquanto
-- couber: a perna atual e o último item (o destino nunca some), com um "+N" no lugar do que fica no meio, e uma parada
-- na lista (com "+N a mais"); o resto do trecho até a próxima parada; mais paradas na lista (até STOPS_MAX); o resto
-- da viagem. Sem rota (`h` vazio), o cartão tem `empty` px e a lista fica com o resto.
-- -> first, upto, rows: os itens first..upto e, se upto < #h, o "+N" (havendo item no meio) e o último; `rows` paradas
function TP.Fit(h, isStop, cur, nStops, avail, empty)
	local n = #h
	local function list(r)
		if nStops == 0 then return 0 end
		return STOPS_HEAD + r * STOP_H + (r < nStops and STOP_H or 0)
	end
	local maxRows = math.min(nStops, STOPS_MAX)
	if n == 0 then
		local rows = nStops
		if list(rows) > avail - (empty or 0) then
			rows = math.min(1, nStops)
			while rows < maxRows and list(rows + 1) <= avail - (empty or 0) do rows = rows + 1 end
		end
		return 1, 0, rows
	end
	local total = list(nStops)
	for k = 1, n do total = total + h[k] end
	if total <= avail then return 1, n, nStops end
	local first = math.max(1, math.min(cur or 1, n))
	local function line(u)
		local t = 0
		for k = first, u do t = t + h[k] end
		if u < n then t = t + h[n] + (u < n - 1 and MORE_H or 0) end
		return t
	end
	local function fits(u, r) return line(u) + list(r) <= avail end
	local upto, rows = first, math.min(1, nStops)
	while upto < n and not isStop[upto] and fits(upto + 1, rows) do upto = upto + 1 end
	while rows < maxRows and fits(upto, rows + 1) do rows = rows + 1 end
	while upto < n and fits(upto + 1, rows) do upto = upto + 1 end
	return first, upto, rows
end

-- nome do serviço na grade (3 colunas de 120 px): o curto, se houver; senão o de sempre
function TP.SvcLabel(kind)
	local k = kind:upper()
	return rawget(ns.L, "V3_NAV_SVC_" .. k) or rawget(ns.L, "SERVICE_" .. k) or kind
end

-- serviço pedido pelo painel: a falha aparece aqui, não no chat
local function say(msg)
	status:SetText(msg or ""); status:Show()
	C_Timer.After(6, function() if status:GetText() == msg then status:Hide() end end)
end
-- Shift no clique (serviço, Ir) vai direto: troca o destino, como antes do #117
local function shift() return IsShiftKeyDown and IsShiftKeyDown() or false end

-- o clique põe uma parada antes do destino (#117); Shift+clique troca o destino, como antes
local function goService(kind, sub)
	local ok, msg = ns.Services:GoTo(kind, sub, true, shift())
	if not ok then say(msg) end
	TP.Refresh()
end

local function toggleProfList(anchor)
	if profList and profList:IsShown() then return profList:Hide() end
	if not profList then
		profList = UI.Card(frame, { color = UI.COL.bg, shadow = true })
		profList:SetFrameStrata("DIALOG")
		local names = {}
		for prof in pairs(ns.profTrainers or {}) do names[#names + 1] = prof end
		table.sort(names)
		for i, prof in ipairs(names) do
			local b = UI.Button(profList, TP.ProfLabel(prof), 140, 24)
			b:SetPoint("TOPLEFT", 8, -8 - (i - 1) * 28)
			b:SetScript("OnClick", function() profList:Hide(); goService("proftrainer", prof) end)
		end
		profList:SetSize(156, 16 + #names * 28 - 4)
	end
	profList:ClearAllPoints(); profList:SetPoint("TOPLEFT", anchor, "TOPRIGHT", 8, 0)
	profList:Show()
end

-- o ícone de cada tipo de perna (glifo do Lodestar)
local LEG_GLYPH = { walk = "passo-atual", flight = "seta-rota", ship = "bandeira", tram = "seta-rota",
	hearth = "estrela", teleport = "estrela" }

local function legRow(i)
	if legRows[i] then return legRows[i] end
	local C = UI.COL
	local r = CreateFrame("Frame", nil, frame.timeline)
	r:SetHeight(42)
	-- bolinha redonda
	r.dot = UI.Media(r, "dot", "ARTWORK"); r.dot:SetVertexColor(unpackc(C.chip))
	r.dot:SetSize(26, 26); r.dot:SetPoint("TOPLEFT", 0, -2)
	r.icon = UI.Glyph(r, "seta-rota", "OVERLAY", 64); r.icon:SetSize(13, 13); r.icon:SetPoint("CENTER", r.dot, "CENTER")
	r.tex = r:CreateTexture(nil, "OVERLAY"); r.tex:SetSize(16, 16); r.tex:SetPoint("CENTER", r.dot, "CENTER")
	r.line = UI.Rect(r, "BACKGROUND", C.line); r.line:SetWidth(2)
	-- o fio desce do meio da bolinha (x = 13): os dois pontos no mesmo x, senão um deles vence e o fio corta o texto
	r.line:SetPoint("TOP", r.dot, "BOTTOM", 0, 0); r.line:SetPoint("BOTTOM", r, "BOTTOMLEFT", 13, -2)
	-- texto ancorado só pelo topo (TOPLEFT + TOPRIGHT): a largura vem dos dois, a altura da fonte
	r.text = UI.Text(r, 13, C.active, { bold = true, wrap = false })
	r.text:SetPoint("TOPLEFT", r, "TOPLEFT", 38, -3); r.text:SetPoint("TOPRIGHT", r, "TOPRIGHT", -64, -3)
	r.sub = UI.Text(r, 11.5, C.dim, { num = true, wrap = false })
	r.sub:SetPoint("TOPLEFT", r.text, "BOTTOMLEFT", 0, -2); r.sub:SetPoint("TOPRIGHT", r.text, "BOTTOMRIGHT", 0, -2)
	r.time = UI.Text(r, 13, C.muted, { num = true, justify = "RIGHT" }); r.time:SetPoint("TOPRIGHT", r, "TOPRIGHT", 0, -2)
	legRows[i] = r
	return r
end

-- marcador de parada na linha do tempo (#117): bolinha cheia com o alvo, o nome e "parada N · em 1m20s"
local function markRow(i)
	if markRows[i] then return markRows[i] end
	local C = UI.COL
	local r = CreateFrame("Frame", nil, frame.timeline)
	r:SetHeight(MARK_H - 4)
	r.dot = UI.Media(r, "dot", "ARTWORK"); r.dot:SetVertexColor(unpackc(C.amber))
	r.dot:SetSize(26, 26); r.dot:SetPoint("TOPLEFT", 0, -2)
	r.icon = UI.Glyph(r, "alvo", "OVERLAY", 64); r.icon:SetSize(13, 13); r.icon:SetPoint("CENTER", r.dot, "CENTER")
	r.icon:SetVertexColor(unpackc(C.onInk))
	r.line = UI.Rect(r, "BACKGROUND", C.line); r.line:SetWidth(2)
	r.line:SetPoint("TOP", r.dot, "BOTTOM", 0, 0); r.line:SetPoint("BOTTOM", r, "BOTTOMLEFT", 13, -6)
	r.text = UI.Text(r, 13, C.amber, { bold = true, wrap = false })
	r.text:SetPoint("TOPLEFT", r, "TOPLEFT", 38, -3); r.text:SetPoint("TOPRIGHT", r, "TOPRIGHT", 0, -3)
	r.sub = UI.Text(r, 11.5, C.dim, { num = true, wrap = false })
	r.sub:SetPoint("TOPLEFT", r.text, "BOTTOMLEFT", 0, -2); r.sub:SetPoint("TOPRIGHT", r.text, "BOTTOMRIGHT", 0, -2)
	markRows[i] = r
	return r
end

-- o "+N a mais no caminho" da linha do tempo (#117): o que não coube entre o trecho atual e o destino, com o tempo
local function moreRow()
	if frame.more then return frame.more end
	local C = UI.COL
	local r = CreateFrame("Frame", nil, frame.timeline)
	r:SetHeight(MORE_H - 4)
	r.dot = UI.Media(r, "dot", "ARTWORK"); r.dot:SetVertexColor(unpackc(C.chip))
	r.dot:SetSize(10, 10); r.dot:SetPoint("TOPLEFT", 8, -4)            -- centro em x = 13, como as bolinhas grandes
	r.line = UI.Rect(r, "BACKGROUND", C.line); r.line:SetWidth(2)
	r.line:SetPoint("TOP", r.dot, "BOTTOM", 0, 0); r.line:SetPoint("BOTTOM", r, "BOTTOMLEFT", 13, -6)
	r.text = UI.Text(r, 12, C.dim, { wrap = false })
	r.text:SetPoint("TOPLEFT", r, "TOPLEFT", 38, -2); r.text:SetPoint("TOPRIGHT", r, "TOPRIGHT", -64, -2)
	r.time = UI.Text(r, 12, C.muted, { num = true, justify = "RIGHT" }); r.time:SetPoint("TOPRIGHT", r, "TOPRIGHT", 0, -2)
	frame.more = r
	return r
end

-- linha da lista de paradas: número, nome, onde, e o × que tira
local function stopRow(i)
	if stopRows[i] then return stopRows[i] end
	local C = UI.COL
	local r = CreateFrame("Frame", nil, frame.stops)
	r:SetHeight(STOP_H - 4)
	r.dot = UI.Media(r, "dot", "ARTWORK"); r.dot:SetVertexColor(unpackc(C.amberSoft))
	r.dot:SetSize(20, 20); r.dot:SetPoint("LEFT", 0, 0)
	r.num = UI.Text(r, 11, C.amber, { num = true, bold = true, justify = "CENTER" })
	r.num:SetPoint("CENTER", r.dot, "CENTER", 0, 0)
	r.remove = UI.IconButton(r, "fechar", 20, ns.L.V3_NAV_STOP_REMOVE, function()
		local s = r.stop
		if s then ns.Destinations:RemoveStop(s); ns.Waypoint:Update(); TP.Refresh() end
	end)
	r.remove:SetPoint("RIGHT", 0, 0)
	r.text = UI.Text(r, 12.5, C.active, { bold = true, wrap = false })
	r.text:SetPoint("LEFT", r.dot, "RIGHT", 8, 0); r.text:SetPoint("RIGHT", r.remove, "LEFT", -96, 0)
	r.where = UI.Text(r, 11, C.dim, { num = true, wrap = false, justify = "RIGHT" })
	r.where:SetPoint("LEFT", r.text, "RIGHT", 6, 0); r.where:SetPoint("RIGHT", r.remove, "LEFT", -6, 0)
	stopRows[i] = r
	return r
end

-- onde fica um destino: a zona (no idioma do cliente) ou o nome do mapa
local function whereOf(dest)
	return dest.zone and ns.LocalizedZone(dest.zone)
		or dest.map and C_Map.GetMapInfo(dest.map) and C_Map.GetMapInfo(dest.map).name
end

local function build()
	if frame then return frame end
	local C, L = UI.COL, ns.L
	legRows, markRows, stopRows, svcButtons = {}, {}, {}, {}
	frame = UI.Window("LodestarTravel", W, 520, { strata = "HIGH" })
	frame:ClearAllPoints(); frame:SetPoint("CENTER", 240, 40)

	local icon = UI.Glyph(frame, "seta-rota", "ARTWORK", 64); icon:SetSize(18, 18)
	icon:SetPoint("TOPLEFT", PAD, -14); icon:SetVertexColor(unpackc(C.tip))
	local title = UI.Text(frame, 16, C.active, { bold = true }); title:SetPoint("LEFT", icon, "RIGHT", 8, 0)
	title:SetText(L.V3_NAV_TITLE)
	local close = UI.IconButton(frame, "fechar", 26, nil, function() frame:Hide() end)
	close:SetPoint("TOPRIGHT", -10, -10)
	local sep = UI.Rect(frame, "ARTWORK", C.line); sep:SetHeight(1)
	sep:SetPoint("TOPLEFT", 1, -46); sep:SetPoint("TOPRIGHT", -1, -46)

	-- destino
	frame.kind = UI.Text(frame, 11, C.dim, { num = true }); frame.kind:SetPoint("TOPLEFT", PAD, -58)
	frame.dest = UI.Text(frame, 17, C.active, { bold = true, wrap = false })
	frame.dest:SetPoint("TOPLEFT", PAD, -74); frame.dest:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -120, -74)
	frame.destSub = UI.Text(frame, 12, C.dim, { num = true, wrap = false })
	frame.destSub:SetPoint("TOPLEFT", frame.dest, "BOTTOMLEFT", 0, -3)
	frame.destSub:SetPoint("TOPRIGHT", frame.dest, "BOTTOMRIGHT", 0, -3)
	frame.total = UI.Text(frame, 24, C.active, { num = true, justify = "RIGHT" }); frame.total:SetPoint("TOPRIGHT", -PAD, -62)
	frame.eta = UI.Text(frame, 11.5, C.dim, { num = true, justify = "RIGHT" })
	frame.eta:SetPoint("TOPRIGHT", frame.total, "BOTTOMRIGHT", 0, -2)
	frame.clear = UI.Button(frame, L.TRAVEL_CLEAR, 70, 22)
	frame.clear:SetPoint("TOPRIGHT", frame.eta, "BOTTOMRIGHT", 0, -4)
	frame.clear:SetScript("OnClick", function() ns.Waypoint:ClearAll(); TP.Refresh() end)

	-- paradas (#117)
	frame.stopsLabel = UI.Text(frame, 11, C.dim, { num = true }); frame.stopsLabel:SetText(L.V3_NAV_STOPS)
	frame.stops = CreateFrame("Frame", nil, frame)
	frame.stops:SetHeight(1)
	frame.stopsMore = UI.Text(frame.stops, 11.5, C.dim, { num = true, wrap = false })   -- "+N a mais" (#117)
	frame.stopsMore:Hide()

	-- linha do tempo
	frame.timelineCard = UI.Card(frame, { color = C.card })
	frame.timeline = CreateFrame("Frame", nil, frame.timelineCard)
	frame.timeline:SetPoint("TOPLEFT", 14, -12); frame.timeline:SetPoint("TOPRIGHT", -14, -12)
	frame.timeline:SetHeight(1)
	frame.noRoute = UI.Text(frame.timelineCard, 12.5, C.dim, { wrap = true })
	frame.noRoute:SetPoint("TOPLEFT", 14, -14); frame.noRoute:SetPoint("TOPRIGHT", -14, -14); frame.noRoute:SetText(L.TRAVEL_NOROUTE)

	-- serviços
	frame.svcLabel = UI.Text(frame, 11, C.dim, { num = true }); frame.svcLabel:SetText(L.V3_NAV_NEAREST)
	frame.svc = CreateFrame("Frame", nil, frame)
	local kinds = ns.Services.KINDS
	local cols = 3
	local bw = math.floor((W - 2 * PAD - (cols - 1) * 6) / cols)
	for i, kind in ipairs(kinds) do
		local b = CreateFrame("Button", nil, frame.svc)
		b:SetSize(bw, 44)
		b:SetPoint("TOPLEFT", ((i - 1) % cols) * (bw + 6), -math.floor((i - 1) / cols) * 50)
		local bg = UI.Card(b, { radius = 6, color = C.card }); bg:SetAllPoints(); bg:SetFrameLevel(b:GetFrameLevel())
		b.name = UI.Text(b, 12.5, C.active, { bold = true, wrap = false })
		b.name:SetPoint("TOPLEFT", 10, -7); b.name:SetPoint("TOPRIGHT", -6, -7)
		b.name:SetText(TP.SvcLabel(kind))
		b.time = UI.Text(b, 11.5, C.dim, { num = true, wrap = false })
		b.time:SetPoint("TOPLEFT", b.name, "BOTTOMLEFT", 0, -2); b.time:SetPoint("TOPRIGHT", b.name, "BOTTOMRIGHT", 0, -2)
		b.time:SetText(kind == "proftrainer" and L.V3_NAV_CHOOSE or "…")
		b:SetScript("OnClick", function(self)
			if kind == "proftrainer" then return toggleProfList(self) end
			goService(kind)
		end)
		b:SetScript("OnEnter", function() bg:SetLine(C.borderHi) end)
		b:SetScript("OnLeave", function() bg:SetLine(C.border) end)
		b.kind = kind
		svcButtons[i] = b
	end
	frame.svc:SetSize(W - 2 * PAD, math.ceil(#kinds / cols) * 50)
	status = UI.Text(frame, 11.5, C.amber, { wrap = true }); status:Hide()

	-- coordenada
	frame.coordLabel = UI.Text(frame, 11, C.dim, { num = true }); frame.coordLabel:SetText(L.TRAVEL_COORD:upper())
	local box = CreateFrame("EditBox", nil, frame)
	box:SetSize(W - 2 * PAD - 60, 30)
	box:SetFontObject(ChatFontNormal); box:SetAutoFocus(false); box:SetTextInsets(10, 10, 0, 0)
	if box.SetTextColor then box:SetTextColor(unpackc(C.active)) end
	local boxBg = UI.Card(box, { radius = 6, color = C.card }); boxBg:SetAllPoints(); boxBg:SetFrameLevel(box:GetFrameLevel())
	-- Ir põe uma parada (#117); com Shift, troca o destino
	local function go()
		local ok, said = ns.Waypoint:Way(box:GetText(), shift())
		if ok then
			box:SetText(""); box:ClearFocus(); TP.Refresh()
		elseif not said then ns:Print(L.TRAVEL_COORD_BAD) end    -- zona que não se conhece: o Way já disse (#117)
	end
	box:SetScript("OnEnterPressed", go)
	box:SetScript("OnEscapePressed", box.ClearFocus)
	local goBtn = UI.Button(frame, L.TRAVEL_GO, 52, 30, "primary")
	goBtn:SetPoint("LEFT", box, "RIGHT", 8, 0)
	goBtn:SetScript("OnClick", go)
	frame.box = box
	frame.hint = UI.Text(frame, 11, C.dim, { wrap = true }); frame.hint:SetText(L.TRAVEL_HINT)

	frame:SetScript("OnShow", function() TP.MeasureServices(); TP.Refresh() end)
	frame:Hide()
	return frame
end

-- Os serviços medidos em tempo de viagem, um por quadro (cada um roda o planejador em alguns candidatos).
function TP.MeasureServices()
	if not (frame and svcButtons) then return end
	local i = 0
	local function nextOne()
		i = i + 1
		local b = svcButtons[i]
		if not b or not frame:IsShown() then return end
		if b.kind ~= "proftrainer" then
			local ok, best, route = pcall(ns.Services.Nearest, ns.Services, b.kind)
			if ok and best and route and route.s then
				b.time:SetText(ns.Waypoint.FmtTime(route.s))
			else
				b.time:SetText(ns.L.V3_NAV_NONE)
			end
		end
		C_Timer.After(0.05, nextOne)
	end
	nextOne()
end

local KIND_BADGE = { corpse = "danger", manual = "info", guide = "gold" }

function TP.Refresh()
	if not (frame and frame:IsShown()) then return end
	local C, L, D, T = UI.COL, ns.L, ns.Destinations, ns.Travel
	local dest, kind = D:Active()
	local stops = D:Stops()
	if not dest and stops[1] then dest, kind = stops[#stops], "stop" end   -- só paradas: a última é o fim
	frame.kind:SetText(kind and L["TRAVEL_KIND_" .. kind:upper()]:upper() or L.TRAVEL_DEST:upper())
	frame.kind:SetTextColor(unpackc(kind == "corpse" and C.danger or C.dim))
	frame.dest:SetText(dest and (dest.label or L.DEST) or L.TRAVEL_NODEST)
	local where = dest and whereOf(dest)
	frame.destSub:SetText(dest and ("%s · %.1f %.1f"):format(where or "?", dest.x or 0, dest.y or 0) or "")
	frame.clear:SetShown(D:Get("manual") ~= nil or stops[1] ~= nil)

	local route = T:Route()
	local now = GetServerTime and GetServerTime()
	local p = route and T.PlayerWorld()
	local remaining = p and T.Remaining(route, p, T:Speed(), now)
	frame.total:SetText(remaining and ns.Waypoint.FmtTime(remaining) or "")
	frame.eta:SetText(remaining and L.V3_NAV_ARRIVES:format(date("%H:%M", time() + remaining)) or "")

	-- o cartão começa abaixo do cabeçalho de verdade (#113): o mais baixo entre a linha da zona e a coluna da direita
	-- (tempo, chegada, Limpar) — a altura da fonte muda com o cliente e a escala; antes era um topo fixo de 104
	local esq = 74 + frame.dest:GetStringHeight() + 3 + frame.destSub:GetStringHeight()
	local dir = 62 + frame.total:GetStringHeight() + 2 + frame.eta:GetStringHeight()
	if frame.clear:IsShown() then dir = dir + 4 + frame.clear:GetHeight() end
	local y = math.max(104, math.ceil(math.max(esq, dir)) + 12)

	-- a linha do tempo: as pernas e, no fim de cada trecho até uma parada, o marcador dela
	local items, h, isStop, cur = {}, {}, {}, nil
	for i = 1, route and #route.legs or 0 do
		items[#items + 1] = { leg = i }
		if i == route.leg then cur = #items end
		for j, st in ipairs(route.stops or {}) do
			if st.leg == i then items[#items + 1] = { stop = st, j = j } end
		end
	end
	for k, it in ipairs(items) do h[k], isStop[k] = it.stop and MARK_H or LEG_H, it.stop ~= nil end
	-- A lista de paradas e a linha do tempo dividem a altura que sobra (#117): muitas paradas ou pernas encolhem as
	-- duas (TP.Fit), e a janela não passa de MAX_H (ou de 80% da tela). O resto (serviços, coordenada, dica) é medido
	-- aqui, antes de montar; 16 é o respiro do cartão da linha do tempo, 30 o cartão vazio ("sem rota").
	local bottom = 16 + 18 + frame.svc:GetHeight() + (status:IsShown() and status:GetStringHeight() + 6 or 0)
		+ 10 + 18 + 36 + frame.hint:GetStringHeight() + PAD
	local screen = UIParent and UIParent:GetHeight() or 0
	local avail = math.max(MAX_H, math.floor(screen * 0.8)) - y - bottom - 16
	local first, upto, rows = TP.Fit(h, isStop, cur, #stops, avail, 30)

	-- as paradas, na ordem, com o × (#117); as que não cabem, num "+N a mais"
	local hidden = #stops - rows
	local lines = rows + (hidden > 0 and 1 or 0)
	frame.stopsLabel:SetShown(stops[1] ~= nil); frame.stops:SetShown(stops[1] ~= nil)
	if stops[1] then
		frame.stopsLabel:ClearAllPoints(); frame.stopsLabel:SetPoint("TOPLEFT", PAD, -y)
		frame.stopsLabel:SetText(kind == "corpse" and L.V3_NAV_STOPS_WAIT or L.V3_NAV_STOPS)
		y = y + 18
		frame.stops:ClearAllPoints(); frame.stops:SetPoint("TOPLEFT", PAD, -y); frame.stops:SetPoint("TOPRIGHT", -PAD, -y)
		frame.stops:SetHeight(lines * STOP_H)
		y = y + lines * STOP_H + 8
	end
	for j = 1, math.max(#stops, #stopRows) do
		local r = stopRows[j]
		local s = j <= rows and stops[j]
		if s then
			r = stopRow(j)
			r.stop = s
			r.num:SetText(j)
			r.text:SetText(s.label or L.STOP)
			r.where:SetText(whereOf(s) or "")
			r:ClearAllPoints()
			r:SetPoint("TOPLEFT", frame.stops, "TOPLEFT", 0, -(j - 1) * STOP_H)
			r:SetPoint("TOPRIGHT", frame.stops, "TOPRIGHT", 0, -(j - 1) * STOP_H)
			r:Show()
		elseif r then
			r.stop = nil
			r:Hide()
		end
	end
	frame.stopsMore:SetShown(hidden > 0)
	if hidden > 0 then
		frame.stopsMore:SetText(L.V3_NAV_STOPS_MORE:format(hidden))
		frame.stopsMore:ClearAllPoints(); frame.stopsMore:SetPoint("TOPLEFT", frame.stops, "TOPLEFT", 28, -rows * STOP_H - 6)
	end

	-- o que aparece da linha do tempo: first..upto e, se não chegou ao fim, o "+N" (com o tempo do que ficou de fora)
	-- e o último item — o destino nunca some
	local vis, nIt = {}, #items
	for k = first, upto do vis[#vis + 1] = items[k] end
	if upto < nIt then
		if upto < nIt - 1 then
			local secs = 0
			for k = upto + 1, nIt - 1 do
				if items[k].leg then secs = secs + (route.legs[items[k].leg].s or 0) end
			end
			vis[#vis + 1] = { more = nIt - 1 - upto, s = secs }
		end
		vis[#vis + 1] = items[nIt]
	end
	local n = #vis
	frame.timelineCard:ClearAllPoints()
	frame.timelineCard:SetPoint("TOPLEFT", PAD, -y); frame.timelineCard:SetPoint("TOPRIGHT", -PAD, -y)
	frame.noRoute:SetShown(n == 0)
	local ty, nLeg, nMark, nMore = 0, 0, 0, 0
	for k = 1, n do
		local it = vis[k]
		local r
		if it.more then
			nMore = 1
			r = moreRow()
			r.text:SetText(L.V3_NAV_MORE:format(it.more))
			r.time:SetText(ns.Waypoint.FmtTime(it.s))
			r.line:SetShown(k < n)
			r:ClearAllPoints(); r:SetPoint("TOPLEFT", frame.timeline, "TOPLEFT", 0, -ty)
			r:SetPoint("TOPRIGHT", frame.timeline, "TOPRIGHT", 0, -ty)
			r:Show()
			ty = ty + MORE_H
		elseif it.stop then
			nMark = nMark + 1
			r = markRow(nMark)
			local st = it.stop
			-- quanto falta até a parada: o resto da rota cortado no fim do trecho dela
			local ate = p and T.Remaining({ leg = route.leg, legs = { unpack(route.legs, 1, st.leg) } }, p, T:Speed(), now)
			r.text:SetText(st.dest.label or L.STOP)
			r.sub:SetText(L.V3_NAV_STOP_N:format(it.j) .. (ate and (" · " .. L.V3_NAV_STOP_IN:format(
				ns.Waypoint.FmtTime(ate))) or ""))
			r.line:SetShown(k < n)
			r:ClearAllPoints(); r:SetPoint("TOPLEFT", frame.timeline, "TOPLEFT", 0, -ty)
			r:SetPoint("TOPRIGHT", frame.timeline, "TOPRIGHT", 0, -ty)
			r:Show()
			ty = ty + MARK_H
		else
			nLeg = nLeg + 1
			local i = it.leg
			r = legRow(nLeg)
			local leg = route.legs[i]
			local current, done = i == route.leg, i < route.leg
			local txt = ns.Waypoint.LegText(route, i, nil, now)
			local head, tail = txt:match("^(.-) · (.+)$")
			r.text:SetText(head or txt)
			r.text:SetTextColor(unpackc(done and C.faded or C.active))
			r.sub:SetText(done and L.V3_NAV_DONE or (current and L.V3_NAV_NOW or "") .. (tail and leg.k == "ship" and tail or ""))
			r.time:SetText(ns.Waypoint.FmtTime(leg.s or 0))
			r.time:SetTextColor(unpackc(current and C.tip or C.muted))
			local tint = done and C.doneSoft or current and C.tip or C.chip
			r.dot:SetVertexColor(unpackc(tint))
			local tex = (leg.k == "hearth" or leg.k == "teleport") and (leg.spell and ns.SpellIcon(leg.spell)
				or leg.k == "hearth" and ns.ItemIcon(6948))
			if tex then r.tex:SetTexture(tex); r.tex:Show(); r.icon:Hide()
			else
				r.tex:Hide(); r.icon:Show()
				r.icon:SetTexture(UI.GLYPH .. (done and "check" or LEG_GLYPH[leg.k] or "seta-rota") .. "-64")
				r.icon:SetVertexColor(unpackc(done and C.done or current and C.onInk or C.muted))
			end
			r.line:SetShown(k < n)
			r:ClearAllPoints(); r:SetPoint("TOPLEFT", frame.timeline, "TOPLEFT", 0, -ty)
			r:SetPoint("TOPRIGHT", frame.timeline, "TOPRIGHT", 0, -ty)
			r:Show()
			ty = ty + LEG_H
		end
	end
	for k = nLeg + 1, #legRows do legRows[k]:Hide() end
	for k = nMark + 1, #markRows do markRows[k]:Hide() end
	if frame.more and nMore == 0 then frame.more:Hide() end
	frame.timeline:SetHeight(math.max(ty, 1))
	local cardH = n > 0 and (ty + 16) or 46
	frame.timelineCard:SetHeight(cardH)
	y = y + cardH + 16

	frame.svcLabel:ClearAllPoints(); frame.svcLabel:SetPoint("TOPLEFT", PAD, -y)
	y = y + 18
	frame.svc:ClearAllPoints(); frame.svc:SetPoint("TOPLEFT", PAD, -y)
	y = y + frame.svc:GetHeight()
	if status:IsShown() then
		status:ClearAllPoints(); status:SetPoint("TOPLEFT", PAD, -y); status:SetPoint("TOPRIGHT", -PAD, -y)
		y = y + status:GetStringHeight() + 6
	end
	y = y + 10
	frame.coordLabel:ClearAllPoints(); frame.coordLabel:SetPoint("TOPLEFT", PAD, -y)
	y = y + 18
	frame.box:ClearAllPoints(); frame.box:SetPoint("TOPLEFT", PAD, -y)
	y = y + 36
	frame.hint:ClearAllPoints(); frame.hint:SetPoint("TOPLEFT", PAD, -y); frame.hint:SetPoint("TOPRIGHT", -PAD, -y)
	y = y + frame.hint:GetStringHeight() + PAD
	frame:SetHeight(y)
end

function TP:Toggle()
	build()
	frame:SetShown(not frame:IsShown())
end

ns:Every(1, function()
	local ok, err = pcall(TP.Refresh)
	if not ok then ns:Debug("TravelPanel:", err) end
end)
