--=============================================================================
-- FlightCard — o cartão de voo no estilo do Lodestar (#129): em voo, o destino ("Hammerfall" / "Arathi"), o tempo que
-- falta, uma barra de progresso e o botão de pousar no próximo voo do caminho. Some ao pousar.
-- Destino e duração: o voo marcado no mapa de voo (o nó clicado e a rota que o jogo voa pelos voos conhecidos,
-- Journey.GameRoute); sem ele, a perna de voo da rota; sem nenhum, "Em voo" e o tempo contando para cima.
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local FC = {}
ns.FlightCard = FC

-- "Hammerfall, Arathi" -> "Hammerfall", "Arathi" (sem vírgula: o nome inteiro e nada)
function FC.Split(name)
	if type(name) ~= "string" or name == "" then return nil, nil end
	local a, b = name:gsub("\239\188\140", ","):match("^%s*(.-)%s*,%s*(.-)%s*$")   -- a vírgula larga ("，") do zh/ko
	if a and a ~= "" then return a, (b ~= "" and b or nil) end
	return name, nil
end

-- Tempo de voo: `s` segundos de duração, decolou em `t0`, agora `now` -> falta (s), fração (0-1). Sem duração:
-- nil, nil (o cartão conta para cima).
function FC.Progress(s, t0, now)
	if not (s and s > 0 and t0 and now) then return nil, nil end
	local passou = math.max(0, now - t0)
	return math.max(0, s - passou), math.min(1, passou / s)
end

-- "4:44" (e "1:02:03" acima de uma hora)
function FC.Fmt(sec)
	sec = math.max(0, math.floor((sec or 0) + 0.5))
	local h, m, s = math.floor(sec / 3600), math.floor(sec % 3600 / 60), sec % 60
	if h > 0 then return ("%d:%02d:%02d"):format(h, m, s) end
	return ("%d:%02d"):format(m, s)
end

-- A duração do voo de `de` a `para` (ids de nó do TravelData) pela rota que o jogo voa: o tempo dos trechos
-- (sem a decolagem, que já passou quando o cartão abre) e quantos trechos (1: o direto, sem mestre de voo no meio
-- onde pousar antes). nil sem os dados ou sem rota.
function FC.Duration(flights, known, de, para)
	if not (ns.Journey and ns.Journey.GameRoute and flights and de and para) then return nil end
	local rota, s = ns.Journey.GameRoute(flights, known or {}, de, para)
	return s, rota and #rota
end

-- O voo salvo (`ns.char.voo`: nome, s, t0 na hora do servidor) ainda vale depois de um /reload em voo: decolou há
-- menos que a duração mais 1 min; sem duração, há menos de 30 min
function FC.Valid(v, now)
	if not (type(v) == "table" and v.t0 and now) then return false end
	return now - v.t0 < (v.s and v.s > 0 and v.s + 60 or 1800) and now >= v.t0 - 5
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local UI = ns.UI
local card
local voo                      -- { nome, s, t0 (hora do servidor), trechos } do voo em curso
local marcado                  -- { nome, s, trechos, t } do voo marcado no mapa de voo (TakeTaxiNode)
local emVoo = false
local JANELA = 120             -- s: o voo marcado vale para a decolagem que vem até aqui depois

local function on() return ns.db and ns.db.flightCard ~= false and ns:UIShown() end
local function agora() return GetServerTime and GetServerTime() or math.floor(GetTime()) end

-- o nó (id do TravelData) e o nome do slot `i` do mapa de voo aberto, e o nó de onde se sai
local function nosDoMapa(i)
	local lista = ns.FlightMap and ns.FlightMap.MapNodes and ns.FlightMap.MapNodes() or {}
	local nome = TaxiNodeName and TaxiNodeName(i)
	local para, de, porNome
	local atual = Enum and Enum.FlightPathState and Enum.FlightPathState.Current or 0
	for _, info in ipairs(lista) do
		if info.slotIndex == i then para, nome = info.nodeID, info.name or nome
		elseif not porNome and nome and info.name == nome then porNome = info.nodeID end
		if info.state == atual then de = info.nodeID end
	end
	para = para or porNome
	if not para then return nil end           -- o mapa já fechou ou o nó não está nele: nada de nome de mentira
	return nome, de, para
end

-- marcou um voo no mapa de voo (à mão ou pelo voo automático): nome, duração e trechos pela rota do jogo
function FC:Marcou(i)
	local ok, nome, de, para = pcall(nosDoMapa, i)
	if not (ok and nome) then return end
	local known = ns.Travel and ns.Travel.Context and ns.Travel:Context().known
	local s, trechos = FC.Duration(ns.travel and ns.travel.flights, known, de, para)
	marcado = { nome = nome, s = s, trechos = trechos, t = GetTime() }
end
if hooksecurefunc and TakeTaxiNode then
	hooksecurefunc("TakeTaxiNode", function(i) FC:Marcou(i) end)
end

local function pousar()
	if TaxiRequestEarlyLanding then pcall(TaxiRequestEarlyLanding) end
	if voo then voo.pousando = true end
	FC:Update()
end

local function build()
	if card then return card end
	local C = UI.COL
	card = UI.Panel(UIParent, { name = "LodestarFlightCard", accentStripe = true })
	card:SetSize(290, 52)
	card:SetFrameStrata("MEDIUM")
	local p = ns.db.flightCardPos or {}
	card:SetPoint(p.point or "TOP", UIParent, p.rel or p.point or "TOP", p.x or 0, p.y or -140)
	card:SetMovable(true); card:EnableMouse(true); card:RegisterForDrag("LeftButton")
	card:SetClampedToScreen(true)
	card:SetScript("OnDragStart", function(self) self:StartMoving() end)
	card:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local pt, _, rel, x, y = self:GetPoint()
		ns.db.flightCardPos = { point = pt, rel = rel, x = x, y = y }
	end)

	local chip = UI.Slice(card, "round-6", "ARTWORK", C.accentSoft)
	chip:SetSize(26, 26); chip:SetPoint("LEFT", 14, 2)
	local g = UI.Glyph(card, "seta-rota", "OVERLAY", 64)
	g:SetSize(16, 16); g:SetPoint("CENTER", chip, "CENTER")
	g:SetVertexColor(UI.unpackc(C.accent))

	card.title = UI.Text(card, 13, C.active, { wrap = false })
	card.title:SetPoint("TOPLEFT", chip, "TOPRIGHT", 10, 2)
	card.sub = UI.Text(card, 11, C.dim, { wrap = false })
	card.sub:SetPoint("TOPLEFT", card.title, "BOTTOMLEFT", 0, -2)

	card.land = UI.IconButton(card, "chevron-baixo", 24, ns.L.FLIGHT_LAND, pousar)
	card.land:SetPoint("RIGHT", -10, 2)
	card.time = UI.Text(card, 13, C.accent, { num = true, wrap = false, justify = "RIGHT" })
	card.title:SetPoint("RIGHT", card.time, "LEFT", -8, 0)
	card.sub:SetPoint("RIGHT", card.time, "LEFT", -8, 0)

	card.bar = UI.Bar(card)
	card.bar:SetPoint("BOTTOMLEFT", 14, 8); card.bar:SetPoint("BOTTOMRIGHT", -12, 8)
	card.bar:SetHeight(3)
	card:Hide()
	return card
end

-- o voo que começou agora: o marcado no mapa de voo há pouco; senão o salvo antes de um /reload em voo; senão a perna
-- de voo da rota; senão nada (conta para cima)
local function comecou()
	local now = agora()
	local salvo = ns.char and ns.char.voo
	if marcado and GetTime() - marcado.t < JANELA then
		voo = { nome = marcado.nome, s = marcado.s, trechos = marcado.trechos, t0 = now }
	elseif FC.Valid(salvo, now) then
		voo = { nome = salvo.nome, s = salvo.s, trechos = salvo.trechos, t0 = salvo.t0 }
	else
		local r = ns.Travel and ns.Travel:Route()
		local leg = r and r.legs[r.leg]
		if leg and leg.k == "flight" then
			voo = { nome = leg.name, s = leg.s and math.max(0, leg.s - 10), trechos = leg.via and #leg.via + 1, t0 = now }
		else
			voo = { t0 = now }
		end
	end
	marcado = nil
	if ns.char then ns.char.voo = { nome = voo.nome, s = voo.s, trechos = voo.trechos, t0 = voo.t0 } end
end

function FC:Update()
	local taxi = UnitOnTaxi and UnitOnTaxi("player")
	if taxi and not emVoo then comecou() end
	if not taxi and emVoo then voo = nil; if ns.char then ns.char.voo = nil end end
	emVoo = taxi and true or false
	if not (taxi and voo and on()) then if card then card:Hide() end return end
	local c = build()
	local a, b = FC.Split(voo.nome)
	c.title:SetText(a or ns.L.IN_FLIGHT)
	c.sub:SetText(b or "")
	local falta, frac = FC.Progress(voo.s, voo.t0, agora())
	if voo.pousando then
		c.time:SetText(ns.L.FLIGHT_LANDING)
	elseif falta then
		c.time:SetText(falta > 0 and ("~" .. FC.Fmt(falta)) or "…")      -- a duração é estimada pelo trajeto
	else
		c.time:SetText("+" .. FC.Fmt(agora() - voo.t0))
	end
	c.bar:SetShown(frac ~= nil and not voo.pousando)
	if frac then c.bar:SetProgress(frac) end
	-- pousar antes: só com a função e com mestre de voo no meio (o direto não tem onde pousar antes)
	local podePousar = TaxiRequestEarlyLanding ~= nil and not voo.pousando and (voo.trechos == nil or voo.trechos > 1)
	c.land:SetShown(podePousar)
	c.time:ClearAllPoints()
	if podePousar then c.time:SetPoint("RIGHT", c.land, "LEFT", -8, 0) else c.time:SetPoint("RIGHT", -14, 2) end
	c:Show()
end

-- o estado do voo a cada 0,25 s (não há evento de pousar confiável em todo cliente)
ns:Every(0.25, function() FC:Update() end)
