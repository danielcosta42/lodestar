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
	local a, b = name:match("^%s*(.-)%s*,%s*(.-)%s*$")
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
-- (sem a decolagem, que já passou quando o cartão abre). nil sem os dados ou sem rota.
function FC.Duration(flights, known, de, para)
	if not (ns.Journey and ns.Journey.GameRoute and flights and de and para) then return nil end
	local _, s = ns.Journey.GameRoute(flights, known or {}, de, para)
	return s
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local UI = ns.UI
local card
local voo                      -- { nome, s, t0 } do voo em curso
local marcado                  -- { nome, s, t } do voo marcado no mapa de voo (TakeTaxiNode)
local emVoo = false

local function on() return ns.db and ns.db.flightCard ~= false end

-- o nó (id do TravelData) e o nome do slot `i` do mapa de voo aberto, e o nó de onde se sai
local function nosDoMapa(i)
	if not (C_TaxiMap and C_TaxiMap.GetAllTaxiNodes and TaxiNodeName) then return nil end
	local nome = TaxiNodeName(i)
	local mapID = (GetTaxiMapID and GetTaxiMapID()) or (C_Map and C_Map.GetBestMapForUnit("player"))
	local ok, list = pcall(C_TaxiMap.GetAllTaxiNodes, mapID)
	local para, de
	local atual = Enum and Enum.FlightPathState and Enum.FlightPathState.Current or 0
	for _, info in ipairs(ok and type(list) == "table" and list or {}) do
		if info.name == nome then para = info.nodeID end
		if info.state == atual then de = info.nodeID end
	end
	return nome, de, para
end

-- marcou um voo no mapa de voo (à mão ou pelo voo automático): nome e duração pela rota do jogo
function FC:Marcou(i)
	local ok, nome, de, para = pcall(nosDoMapa, i)
	if not (ok and nome) then return end
	local known = ns.Travel and ns.Travel.Context and ns.Travel:Context().known
	local s = FC.Duration(ns.travel and ns.travel.flights, known, de, para)
	marcado = { nome = nome, s = s, t = GetTime() }
end
if hooksecurefunc and TakeTaxiNode then
	hooksecurefunc("TakeTaxiNode", function(i) FC:Marcou(i) end)
end

local function pousar()
	if TaxiRequestEarlyLanding then pcall(TaxiRequestEarlyLanding) end
	if card then card.pousando = true; card.land:Hide() end
end

local function build()
	if card then return card end
	local C = UI.COL
	card = UI.Panel(UIParent, { name = "LodestarFlightCard", accentStripe = true })
	card:SetSize(250, 52)
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
	card.time = UI.Text(card, 13, C.accent, { num = true, wrap = false })
	card.time:SetPoint("RIGHT", card.land, "LEFT", -8, 0)
	card.title:SetPoint("RIGHT", card.time, "LEFT", -8, 0)
	card.sub:SetPoint("RIGHT", card.time, "LEFT", -8, 0)

	card.bar = UI.Bar(card)
	card.bar:SetPoint("BOTTOMLEFT", 14, 8); card.bar:SetPoint("BOTTOMRIGHT", -12, 8)
	card.bar:SetHeight(3)
	card:Hide()
	return card
end

-- o voo que começou agora: o marcado no mapa de voo há pouco, senão a perna de voo da rota
local function comecou()
	local now = GetTime()
	if marcado and now - marcado.t < 120 then
		voo = { nome = marcado.nome, s = marcado.s, t0 = now }
	else
		local r = ns.Travel and ns.Travel:Route()
		local leg = r and r.legs[r.leg]
		voo = leg and leg.k == "flight" and { nome = leg.name, s = leg.s and math.max(0, leg.s - 10), t0 = now }
			or { t0 = now }
	end
	marcado = nil
end

function FC:Update()
	local agora = UnitOnTaxi and UnitOnTaxi("player")
	if agora and not emVoo then comecou() end
	if not agora then voo = nil end
	emVoo = agora and true or false
	if not (agora and on() and voo) then if card then card:Hide(); card.pousando = nil end return end
	local c = build()
	local a, b = FC.Split(voo.nome)
	c.title:SetText(a or ns.L.IN_FLIGHT)
	c.sub:SetText(b or "")
	local falta, frac = FC.Progress(voo.s, voo.t0, GetTime())
	c.time:SetText(falta and FC.Fmt(falta) or ("+" .. FC.Fmt(GetTime() - voo.t0)))
	c.bar:SetShown(frac ~= nil)
	if frac then c.bar:SetProgress(frac) end
	c.land:SetShown(TaxiRequestEarlyLanding ~= nil and not c.pousando)
	c:Show()
end

-- o estado do voo a cada 0,25 s (não há evento de pousar confiável em todo cliente)
ns:Every(0.25, function() FC:Update() end)
