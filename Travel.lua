--=============================================================================
-- Travel — a rota atual até o destino ativo. Junta o contexto do personagem (voos
-- conhecidos, velocidade a pé, pedra de lar, teleportes), pede a rota ao Journey,
-- acompanha em que perna o jogador está e decide quando recalcular.
--
--   ns.Travel:Route()  -> { s, legs, leg = índice da perna atual, dest, kind } | nil
--   ns.Travel:Leg()    -> a perna atual | nil
--   evento interno "_ROUTE_CHANGED" quando a rota ou a perna muda
--=============================================================================
local ADDON, ns = ...
local T = {}
ns.Travel = T

local ARRIVE = { walk = 15 }       -- jardas para dar a perna por feita (o resto: 60)
local REPLAN_EVERY = 10            -- s entre recálculos enquanto anda
local HEARTH_ITEM, ASTRAL_RECALL, RUNE_TELEPORT = 6948, 556, 17031

local function dist(a, b)
	local dx, dy = a.x - b.x, a.y - b.y
	return math.sqrt(dx * dx + dy * dy)
end

--------------------------------------------------------------------------------
-- funções puras (testadas fora do jogo)
--------------------------------------------------------------------------------
-- Rota nova só substitui a atual se for bem mais rápida: senão duas rotas parecidas se
-- revezam a cada recálculo e a seta não para de virar.
function T.ShouldReplace(cur, new)
	if not new then return false end
	if not cur then return true end
	return new.s <= cur.s * 0.85 or new.s <= cur.s - 30
end

-- Índice da perna em que o jogador está agora. Voo só termina no pouso (fora do táxi).
function T.AdvanceLeg(route, pos, onTaxi)
	local i = route.leg
	local leg = route.legs[i]
	if not (leg and pos) then return i end
	if leg.k == "flight" and onTaxi then return i end
	local b = leg.b
	if pos.c == b.c and dist(pos, b) <= (ARRIVE[leg.k] or 60) then return i + 1 end
	return i
end

-- A estalagem da zona, quando a zona tem uma só da facção: é onde a pedra está quando o
-- lugar exato não foi gravado (vinculou antes do Lodestar). Duas ou mais: não chuta.
function T.SingleInn(inns, zone, fac)
	local found
	for _, inn in ipairs(inns or {}) do
		if inn.zone == zone and inn.f:find(fac, 1, true) then
			if found then return nil end
			found = inn
		end
	end
	return found
end

-- Segundos que faltam: a perna a pé atual pela distância que sobra, as próximas inteiras.
function T.Remaining(route, pos, speed)
	local s = 0
	for i = route.leg, #route.legs do
		local leg = route.legs[i]
		if i == route.leg and leg.k == "walk" and pos and pos.c == leg.b.c then
			s = s + dist(pos, leg.b) / (speed or 7)
		else
			s = s + leg.s
		end
	end
	return s
end

--------------------------------------------------------------------------------
-- o jogo: coordenada de mundo, contexto do personagem
--------------------------------------------------------------------------------
-- (zona em inglês, x, y em 0-100) -> { c, x, y } de mundo
function T.World(zone, x, y)
	local map = ns.zoneMap and ns.zoneMap[zone] or ns.zoneUiMap and ns.zoneUiMap[zone]
	if not (map and C_Map and C_Map.GetWorldPosFromMapPos and CreateVector2D) then return nil end
	local c, pos = C_Map.GetWorldPosFromMapPos(map, CreateVector2D(x / 100, y / 100))
	if c and pos then return { c = c, x = pos.x, y = pos.y } end
end

function T.PlayerWorld()
	local map = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	local p = map and C_Map.GetPlayerMapPosition and C_Map.GetPlayerMapPosition(map, "player")
	if not (p and C_Map.GetWorldPosFromMapPos) then return nil end
	local c, pos = C_Map.GetWorldPosFromMapPos(map, p)
	if c and pos then return { c = c, x = pos.x, y = pos.y } end
end

local speed = 7
local lastPos, lastT

local function faction()
	return UnitFactionGroup("player") == "Horde" and "H" or "A"
end

-- Voos conhecidos: o que o mapa de voo disse; antes de abri-lo a primeira vez, os voos das
-- zonas por onde o personagem já passou.
local function knownTaxi(fac)
	local char = ns.char or {}
	if char.taxiSynced and char.taxi then return char.taxi end
	local k, zones = {}, char.zones or {}
	for id, v in pairs(ns.travel and ns.travel.nodes or {}) do
		if v.z and zones[v.z] and v.f:find(fac, 1, true) then k[id] = true end
	end
	return k
end

local function cooldownLeft(start, duration)
	if not (start and duration) or start == 0 then return 0 end
	return math.max(0, start + duration - GetTime())
end

-- nome localizado da zona -> inglês (a pedra diz o nome no idioma do cliente)
local engZone
local function toEnglish(loc)
	if not engZone then
		engZone = {}
		for eng, id in pairs(ns.zoneUiMap or {}) do
			local info = C_Map and C_Map.GetMapInfo and C_Map.GetMapInfo(id)
			if info and info.name then engZone[info.name:lower()] = eng end
		end
	end
	return loc and engZone[loc:lower()]
end

local function hearth()
	local bind = ns.char and ns.char.bind
	if bind and not bind.c then                 -- lugar não gravado: a estalagem única da zona
		local zone = toEnglish(ns.TravelPlanner and ns.TravelPlanner:HearthZone())
		local inn = zone and T.SingleInn(ns.travel and ns.travel.services.inn, zone, faction())
		local w = inn and T.World(inn.zone, inn.x, inn.y)
		if w then bind = { name = bind.name, c = w.c, x = w.x, y = w.y } else bind = nil end
	end
	if not (bind and bind.c) then return nil end
	local wait
	if GetItemCount and GetItemCount(HEARTH_ITEM) > 0 then
		local getCd = (C_Container and C_Container.GetItemCooldown) or GetItemCooldown
		wait = cooldownLeft(getCd(HEARTH_ITEM))
	end
	if IsSpellKnown and IsSpellKnown(ASTRAL_RECALL) and GetSpellCooldown then
		local w = cooldownLeft(GetSpellCooldown(ASTRAL_RECALL))
		wait = wait and math.min(wait, w) or w
	end
	if not wait then return nil end
	return { c = bind.c, x = bind.x, y = bind.y, wait = wait }
end

local function teleports()
	local out = {}
	local data = ns.travel
	if not (data and IsSpellKnown) then return out end
	local hasRune = GetItemCount and GetItemCount(RUNE_TELEPORT) > 0
	for _, t in ipairs(data.teleports or {}) do
		local node = data.nodes[t.node]
		local mage = t.spell ~= 18960
		if node and IsSpellKnown(t.spell) and (not mage or hasRune) then
			local name = GetSpellInfo and GetSpellInfo(t.spell) or nil
			out[#out + 1] = { c = node.c, x = node.x, y = node.y, cast = 10, label = name, spell = t.spell }
		end
	end
	return out
end

function T:Context()
	local fac = faction()
	return { data = ns.travel, fac = fac, known = knownTaxi(fac), speed = speed,
		hearth = hearth(), teleports = teleports() }
end

--------------------------------------------------------------------------------
-- a rota atual
--------------------------------------------------------------------------------
local route, routeKey, sinceReplan = nil, nil, 0

function T:Route() return route end
function T:Leg() return route and route.legs[route.leg] end
function T:Speed() return speed end

local function destination()
	if ns.Destinations then return ns.Destinations:Active() end
end

local function keyOf(dest, kind)
	return dest and ("%s:%s:%.1f:%.1f"):format(kind or "?", dest.zone or "?", dest.x or 0, dest.y or 0)
end

local function changed()
	if ns.fire then ns.fire("_ROUTE_CHANGED", route) end
end

function T:Replan(force)
	local dest, kind = destination()
	local key = keyOf(dest, kind)
	local from = dest and T.PlayerWorld()
	local to = dest and T.World(dest.zone, dest.x, dest.y)
	if not (dest and from and to and ns.travel) then
		if route then route, routeKey = nil, key; changed() end
		return
	end
	local new = ns.Journey.Plan(from, to, self:Context())
	if new then new.leg, new.dest, new.kind = 1, dest, kind end
	sinceReplan = 0
	if force or key ~= routeKey or not route then
		route, routeKey = new, key
		changed()
	elseif T.ShouldReplace({ s = T.Remaining(route, from, speed) }, new) then
		route = new
		changed()
	end
end

--------------------------------------------------------------------------------
-- eventos e ticker (só no jogo)
--------------------------------------------------------------------------------
if not ns.On then return end

-- voos conhecidos: o mapa de voo é a fonte (C_TaxiMap dá o id do nó e se você o conhece)
ns:On("TAXIMAP_OPENED", function()
	local char = ns.char
	if not (char and C_TaxiMap and C_TaxiMap.GetAllTaxiNodes) then return end
	local mapID = (GetTaxiMapID and GetTaxiMapID()) or (C_Map and C_Map.GetBestMapForUnit("player"))
	local ok, list = pcall(C_TaxiMap.GetAllTaxiNodes, mapID)
	if not (ok and type(list) == "table" and #list > 0) then return end
	char.taxi = char.taxi or {}
	local unreachable = Enum and Enum.FlightPathState and Enum.FlightPathState.Unreachable or 2
	for _, info in ipairs(list) do
		if info.nodeID then char.taxi[info.nodeID] = info.state ~= unreachable or nil end
	end
	char.taxiSynced = true
	T:Replan(true)
end)

-- zonas visitadas (fallback dos voos antes do primeiro mapa de voo)
ns:On("ZONE_CHANGED_NEW_AREA", function()
	local zone = ns.TravelPlanner and ns.TravelPlanner:PlayerZoneEng()
	if zone and ns.char then
		ns.char.zones = ns.char.zones or {}
		ns.char.zones[zone] = true
	end
end)

ns:Every(1, function()
	if not ns.char then return end
	local now = GetTime()
	local pos = T.PlayerWorld()
	local onTaxi = UnitOnTaxi and UnitOnTaxi("player")
	-- velocidade a pé medida (montaria e buffs entram sozinhos)
	if pos and lastPos and lastPos.c == pos.c and not onTaxi and not UnitIsDeadOrGhost("player") then
		local v = dist(pos, lastPos) / math.max(0.1, now - lastT)
		if v > 1.5 and v < 40 then speed = math.min(30, math.max(5, speed * 0.7 + v * 0.3)) end
	end
	lastPos, lastT = pos, now
	-- pedra vinculada num lugar novo: é onde o jogador está agora (acabou de falar com o
	-- estalajadeiro)
	local bindName = GetBindLocation and GetBindLocation()
	if bindName and pos and (not ns.char.bind or ns.char.bind.name ~= bindName) then
		if ns.char.bind then                     -- mudou com o jogo aberto: está na estalagem
			ns.char.bind = { name = bindName, c = pos.c, x = pos.x, y = pos.y }
		else
			ns.char.bind = { name = bindName }  -- primeiro login: lugar desconhecido
		end
	end
	-- destino mudou (passo novo, manual, corpo): rota nova já
	local dest, kind = destination()
	if keyOf(dest, kind) ~= routeKey then return T:Replan(true) end
	if route then
		local i = T.AdvanceLeg(route, pos, onTaxi)
		if i ~= route.leg then
			route.leg = i
			if i > #route.legs then          -- chegou
				if kind == "manual" and ns.Destinations then ns.Destinations:Clear("manual") end
				route = nil
			end
			changed()
		end
	end
	sinceReplan = sinceReplan + 1
	if sinceReplan >= REPLAN_EVERY and not onTaxi then T:Replan(false) end
end)
