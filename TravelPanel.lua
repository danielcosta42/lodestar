--=============================================================================
-- TravelPanel — a Navegação (Lodestar 3, specs/lodestar-3; bússola no cabeçalho do guia, /ls travel).
--
--   o destino (do guia, manual ou o corpo) com o tempo total e a hora de chegada; Limpar o manual
--   a viagem como linha do tempo: cada perna com ícone, texto e tempo; a atual destacada, as feitas riscadas
--   os serviços mais perto em TEMPO de viagem (medidos ao abrir, um por vez), profissão abre a lista
--   coordenada digitada
--=============================================================================
local ADDON, ns = ...
if not ns.On then return end
local TP = {}
ns.TravelPanel = TP
local UI = ns.UI
local unpackc = UI.unpackc

local W, PAD = 400, 14
local MAX_LEGS = 8
local frame, legRows, svcButtons, profList, status

-- nome da profissão: a tradução, se houver; o ns.L devolve "[CHAVE]" para o que falta
function TP.ProfLabel(prof)
	return rawget(ns.L, "PROF_" .. (prof:upper():gsub("%s+", "_"))) or prof
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
local function goService(kind, sub)
	local ok, msg = ns.Services:GoTo(kind, sub, true)
	if not ok then say(msg) end
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

local function build()
	if frame then return frame end
	local C, L = UI.COL, ns.L
	legRows, svcButtons = {}, {}
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
	frame.clear:SetScript("OnClick", function() ns.Waypoint:ClearCustom() end)

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
	local function go()
		if ns.Waypoint:Way(box:GetText()) then box:SetText(""); box:ClearFocus()
		else ns:Print(L.TRAVEL_COORD_BAD) end
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
	frame.kind:SetText(kind and L["TRAVEL_KIND_" .. kind:upper()]:upper() or L.TRAVEL_DEST:upper())
	frame.kind:SetTextColor(unpackc(kind == "corpse" and C.danger or C.dim))
	frame.dest:SetText(dest and (dest.label or L.DEST) or L.TRAVEL_NODEST)
	local where = dest and (dest.zone and ns.LocalizedZone(dest.zone)
		or dest.map and C_Map.GetMapInfo(dest.map) and C_Map.GetMapInfo(dest.map).name)
	frame.destSub:SetText(dest and ("%s · %.1f %.1f"):format(where or "?", dest.x or 0, dest.y or 0) or "")
	frame.clear:SetShown(D:Get("manual") ~= nil)

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
	local n = route and math.min(#route.legs, MAX_LEGS) or 0
	frame.timelineCard:ClearAllPoints()
	frame.timelineCard:SetPoint("TOPLEFT", PAD, -y); frame.timelineCard:SetPoint("TOPRIGHT", -PAD, -y)
	frame.noRoute:SetShown(n == 0)
	local ty = 0
	for i = 1, MAX_LEGS do
		local r = legRows[i]
		if i <= n then
			r = legRow(i)
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
			r.line:SetShown(i < n)
			r:ClearAllPoints(); r:SetPoint("TOPLEFT", frame.timeline, "TOPLEFT", 0, -ty)
			r:SetPoint("TOPRIGHT", frame.timeline, "TOPRIGHT", 0, -ty)
			r:Show()
			ty = ty + 46
		elseif r then
			r:Hide()
		end
	end
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
