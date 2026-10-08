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
-- `now` (hora do servidor): perna de barco com horário conta até a saída mais a travessia
-- (já a bordo, o que falta dela); sem `now`, o custo com que a rota foi planejada.
function T.Remaining(route, pos, speed, now)
	local s = 0
	for i = route.leg, #route.legs do
		local leg = route.legs[i]
		if i == route.leg and leg.k == "walk" and pos and pos.c == leg.b.c then
			local falta = leg.path and ns.Terrain and select(3, ns.Terrain.Ahead(leg.path, pos, 0))
			s = s + (falta or dist(pos, leg.b)) / (speed or 7)
		elseif leg.k == "ship" and leg.dep and now then
			s = s + math.max(0, leg.dep - now) + math.max(0, (leg.ride or 0) - math.max(0, now - leg.dep))
		else
			s = s + leg.s
		end
	end
	return s
end

-- Entre as paradas perto de um anunciador ({ sid, k, nome da outra parada, distância },
-- da mais perto), a que o grito nomeia ("...to Grom'gol..."); sem nome no texto, a mais perto.
function T.PickAnnounced(cands, text)
	for _, c in ipairs(cands or {}) do
		if c[3] and text and text:find(c[3], 1, true) then return c[1], c[2] end
	end
	if cands and cands[1] then return cands[1][1], cands[1][2] end
end

-- A parada (id do transporte, índice) mais perto do ponto de mundo `w`, até `maxd` jardas.
function T.NearestStop(ships, w, maxd)
	local bsid, bk, bd
	for _, s in ipairs(ships or {}) do
		for k, st in ipairs(s.stops) do
			if st.c == w.c then
				local d = dist(st, w)
				if d <= maxd and (not bd or d < bd) then bsid, bk, bd = s.id, k, d end
			end
		end
	end
	return bsid, bk
end

--------------------------------------------------------------------------------
-- o jogo: coordenada de mundo, contexto do personagem
--------------------------------------------------------------------------------
-- (zona em inglês, x, y em 0-100) -> { c, x, y } de mundo; `map` (uiMapID) dispensa a zona
function T.World(zone, x, y, map)
	map = map or ns.zoneMap and ns.zoneMap[zone] or ns.zoneUiMap and ns.zoneUiMap[zone]
	if not (map and C_Map and C_Map.GetWorldPosFromMapPos and CreateVector2D) then return nil end
	local c, pos = C_Map.GetWorldPosFromMapPos(map, CreateVector2D(x / 100, y / 100))
	if c and pos then return { c = c, x = pos.x, y = pos.y } end
end

-- Próxima estimativa da velocidade a pé, com a amostra `v` (jd/s) da perna `legKind`. No
-- barco, zepelim e bonde quem anda é o transporte: a amostra não entra.
function T.NextSpeed(speed, v, legKind)
	if legKind == "ship" or legKind == "tram" or not (v > 1.5 and v < 40) then return speed end
	return math.min(30, math.max(5, speed * 0.7 + v * 0.3))
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

-- Voos conhecidos, por continente: onde o mapa de voo já foi aberto, vale o que ele disse;
-- nos outros, os voos da facção nas zonas por onde o personagem passou. `taxiSynced` era
-- um booleano (save antigo): vale como nenhum continente sincronizado.
function T.KnownTaxi(char, nodes, fac)
	local synced = type(char.taxiSynced) == "table" and char.taxiSynced or {}
	local taxi, zones, k = char.taxi or {}, char.zones or {}, {}
	for id, v in pairs(nodes or {}) do
		if v.f:find(fac, 1, true) and (taxi[id] or (not synced[v.c] and v.z and zones[v.z])) then
			k[id] = true
		end
	end
	return k
end
local function knownTaxi(fac)
	return T.KnownTaxi(ns.char or {}, ns.travel and ns.travel.nodes, fac)
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
	local wait, spell
	if GetItemCount and GetItemCount(HEARTH_ITEM) > 0 then
		local getCd = (C_Container and C_Container.GetItemCooldown) or GetItemCooldown
		wait = cooldownLeft(getCd(HEARTH_ITEM))
	end
	if IsSpellKnown and IsSpellKnown(ASTRAL_RECALL) and GetSpellCooldown then
		local w = cooldownLeft(GetSpellCooldown(ASTRAL_RECALL))
		if not wait or w < wait then wait, spell = w, ASTRAL_RECALL end   -- o Retorno sai antes
	end
	if not wait then return nil end
	return { c = bind.c, x = bind.x, y = bind.y, wait = wait, spell = spell }
end

-- Onde o teleporte deixa o jogador: o ponto aprendido no primeiro uso (o destino é do
-- servidor; nenhuma tabela do cliente o traz), senão o mestre de voo da cidade.
function T.TeleportPoint(t, nodes, learned)
	local p = learned and learned[t.spell] or (nodes and nodes[t.node])
	return p and { c = p.c, x = p.x, y = p.y } or nil
end

local function teleports()
	local out = {}
	local data = ns.travel
	if not (data and IsSpellKnown) then return out end
	local hasRune = GetItemCount and GetItemCount(RUNE_TELEPORT) > 0
	for _, t in ipairs(data.teleports or {}) do
		local pt = T.TeleportPoint(t, data.nodes, ns.db and ns.db.teleportArrival)
		local mage = t.spell ~= 18960
		if pt and IsSpellKnown(t.spell) and (not mage or hasRune) then
			local name = GetSpellInfo and GetSpellInfo(t.spell) or nil
			out[#out + 1] = { c = pt.c, x = pt.x, y = pt.y, cast = 10, label = name, spell = t.spell }
		end
	end
	return out
end

-- horário aprendido de barco e zepelim, por reino (os alts do mesmo reino somam)
local function transit()
	if not ns.db then return {} end
	ns.db.transit = ns.db.transit or {}
	local realm = GetRealmName and GetRealmName() or "?"
	ns.db.transit[realm] = ns.db.transit[realm] or {}
	return ns.db.transit[realm]
end

local function serverNow() return GetServerTime and GetServerTime() or 0 end

function T:Context()
	local fac = faction()
	return { data = ns.travel, fac = fac, known = knownTaxi(fac), speed = speed,
		hearth = hearth(), teleports = teleports(), now = serverNow(), sched = transit() }
end

-- Uma observação do transporte `sid` (parada k, "arr" | "dep", hora do servidor t); com a
-- travessia medida (`rideFrom` -> `rideS` s), que passa a valer no ciclo. `replan`: refaz a
-- rota com a espera nova — só fora do transporte (a bordo, a posição é o mar).
local function shipById(sid)
	for _, s in ipairs(ns.travel and ns.travel.ships or {}) do if s.id == sid then return s end end
end

function T:Observe(sid, k, ev, t, rideFrom, rideS, replan)
	local ship = shipById(sid)
	if not (ship and ns.Schedule) then return end
	local store = transit()
	local ride = store[sid] and store[sid].ride
	if rideFrom and rideS and rideS > 5 then
		ride = ride or {}
		ride[rideFrom] = rideS
	end
	store[sid] = ns.Schedule.Learn(store[sid], ship, k, ev, t, ride)
	if replan then T:Replan(true) end
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
	return dest and ("%s:%s:%.1f:%.1f"):format(kind or "?", dest.zone or dest.map or "?", dest.x or 0, dest.y or 0)
end

local function changed()
	if ns.fire then ns.fire("_ROUTE_CHANGED", route) end
end

function T:Replan(force)
	local dest, kind = destination()
	local key = keyOf(dest, kind)
	local from = dest and T.PlayerWorld()
	local to = dest and T.World(dest.zone, dest.x, dest.y, dest.map)
	if not (dest and from and to and ns.travel) then
		if route then route, routeKey = nil, key; changed() end
		return
	end
	local new = ns.Journey.Plan(from, to, self:Context())
	if new then new.leg, new.dest, new.kind = 1, dest, kind end
	sinceReplan = 0
	if force or key ~= routeKey or not route then
		local was = route
		route, routeKey = new, key
		if was or new then changed() end                -- sem rota antes e depois: nada mudou
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
	if type(char.taxiSynced) ~= "table" then char.taxiSynced = {} end
	local unreachable = Enum and Enum.FlightPathState and Enum.FlightPathState.Unreachable or 2
	local nodes = ns.travel and ns.travel.nodes or {}
	for _, info in ipairs(list) do
		if info.nodeID then
			char.taxi[info.nodeID] = info.state ~= unreachable or nil
			local n = nodes[info.nodeID]
			if n then char.taxiSynced[n.c] = true end     -- o mapa de voo é de um continente só
		end
	end
	T:Replan(true)
end)

-- anunciador gritou a chegada: o NPC (pelo GUID) diz qual transporte e qual parada
-- Numa torre com dois zepelins os dois mestres ficam a 20 jd um do outro: a distância sozinha
-- pode errar o transporte. O grito diz o destino ("...to Grom'gol..."), que é o nome da
-- outra parada; a distância só desempata.
local near                 -- [id do NPC] = { { sid, k, outra parada }, ... } (perto, 250 jd)
local function announcerStops(npc)
	if not near then
		near = {}
		local data = ns.travel or {}
		for _, a in ipairs(data.announcers or {}) do
			local w = T.World(a.zone, a.x, a.y)
			for _, s in ipairs(w and data.ships or {}) do
				for k, st in ipairs(s.stops) do
					if st.c == w.c and dist(st, w) <= 250 then
						near[a.id] = near[a.id] or {}
						local other = s.stops[k % #s.stops + 1]
						table.insert(near[a.id], { s.id, k, other.n, dist(st, w) })
					end
				end
			end
		end
		for _, l in pairs(near) do table.sort(l, function(x, y) return x[4] < y[4] end) end
	end
	return near[npc]
end
local function onAnnounce(_, text, ...)
	local guid = select(11, ...)
	local npc = guid and tonumber((select(6, strsplit("-", guid))))
	local sid, k = T.PickAnnounced(npc and announcerStops(npc), text)
	if not sid then return end
	-- refaz a rota só se ela usa esse transporte e o jogador não está a bordo nem voando
	local cur, usa = route and route.legs[route.leg], false
	for _, l in ipairs(route and route.legs or {}) do if l.sid == sid then usa = true end end
	local livre = not (cur and cur.boarded) and not (UnitOnTaxi and UnitOnTaxi("player"))
	T:Observe(sid, k, "arr", serverNow(), nil, nil, usa and livre)
end
ns:On("CHAT_MSG_MONSTER_YELL", onAnnounce)
ns:On("CHAT_MSG_MONSTER_SAY", onAnnounce)

-- caminho a pé pelo terreno: a perna a pé atual ganha `path`, calculado em corrotina (cede a
-- vez a cada 3000 expansões); refeito se o jogador sair dele por mais de 40 jd. Sem caminho
-- (cidade fechada, fora da grade): fica a reta, e só tenta de novo 60 jd adiante.
local pathCo, pathLeg
local function pathTick()
	if not (ns.Terrain and ns.terrain) then return end
	local leg = route and route.legs[route.leg]
	if not (leg and leg.k == "walk") then pathCo = nil; return end
	if pathCo and pathLeg ~= leg then pathCo = nil end
	if pathCo then
		local ok, res = coroutine.resume(pathCo)
		if not ok then
			ns:Debug("Terrain:", res)
			pathCo, leg.path = nil, false
		elseif coroutine.status(pathCo) == "dead" then
			pathCo, leg.path = nil, res or false
		end
		return
	end
	local pos = T.PlayerWorld()
	if not (pos and pos.c == leg.b.c) then return end
	if leg.path then
		if select(4, ns.Terrain.Ahead(leg.path, pos, 0)) <= 40 then return end
	elseif leg.path == false and leg.pathAt and dist(pos, leg.pathAt) < 60 then
		return
	end
	pathLeg = leg
	leg.pathAt = { c = pos.c, x = pos.x, y = pos.y }
	local from, to = leg.pathAt, leg.b
	pathCo = coroutine.create(function() return ns.Terrain.Path(ns.terrain, from, to, 150000, 3000) end)
end
ns:Every(0.05, function()
	local ok, err = pcall(pathTick)
	if not ok then ns:Debug("Terrain:", err); pathCo = nil end
end)

-- aviso de chegada do transporte (toast + som), uma vez por saída
local alerted = {}
local function alert(fmt, leg, tag)
	local key = ("%s:%s:%d:%s"):format(leg.sid, leg.stop, math.floor(leg.dep / 30), tag)
	if alerted[key] then return end
	alerted[key] = true
	local L = ns.L
	local ship = L["SHIP_" .. (leg.ship or "boat")]
	if ns.Toast then
		ns.Toast:Show({ title = ship:gsub("^%l", string.upper), text = fmt:format(ship, leg.name or "?"),
			color = ns.UI.COL.tip, hold = 6 })
	end
	if PlaySound and SOUNDKIT then PlaySound(SOUNDKIT.RAID_WARNING or 8959) end
end

-- teleporte lançado: grava onde ele deixou o jogador (o primeiro ponto longe de onde lançou)
local pendingTp
ns:On("UNIT_SPELLCAST_SUCCEEDED", function(_, unit, _, spell)
	if unit ~= "player" then return end
	for _, t in ipairs(ns.travel and ns.travel.teleports or {}) do
		if t.spell == spell then pendingTp = { spell = spell, from = T.PlayerWorld(), t = GetTime() } end
	end
end)

-- zonas visitadas (fallback dos voos no continente cujo mapa de voo ainda não foi aberto);
-- no login também, senão a zona onde o personagem já está nunca entra
local function visit()
	local zone = ns.TravelPlanner and ns.TravelPlanner:PlayerZoneEng()
	if zone and ns.char then
		ns.char.zones = ns.char.zones or {}
		ns.char.zones[zone] = true
	end
end
ns:On("ZONE_CHANGED_NEW_AREA", visit)
ns:On("PLAYER_ENTERING_WORLD", visit)

ns:Every(1, function()
	if not ns.char then return end
	local now = GetTime()
	local pos = T.PlayerWorld()
	local onTaxi = UnitOnTaxi and UnitOnTaxi("player")
	if pendingTp and pos then
		local f = pendingTp.from
		if now - pendingTp.t > 60 then
			pendingTp = nil
		elseif not f or f.c ~= pos.c or dist(f, pos) > 300 then
			ns.db.teleportArrival = ns.db.teleportArrival or {}
			ns.db.teleportArrival[pendingTp.spell] = { c = pos.c, x = pos.x, y = pos.y }
			pendingTp = nil
		end
	end
	local snow = serverNow()
	local vNow = pos and lastPos and lastPos.c == pos.c and dist(pos, lastPos) / math.max(0.1, now - lastT)
	-- barco/zepelim: embarcar é ser levado — a posição anda com o jogador parado, perto do cais
	-- (o transporte acelera devagar: pela velocidade sozinha, só a 200 jd). Salto grande (pedra,
	-- teleporte, soltar o espírito) não é embarque. O desembarque (fim da perna, abaixo) dá a
	-- chegada e a travessia medida.
	local cur = route and route.legs[route.leg]
	local parado = (GetUnitSpeed and GetUnitSpeed("player") or 0) == 0
	if cur and cur.k == "ship" and cur.sid and not cur.boarded and vNow and vNow > 1.5 and vNow < 45
		and parado and not onTaxi and lastPos and dist(lastPos, cur.a) < 150 then
		cur.boarded = snow - 2                         -- começou a andar ~2 s antes de dar para ver
		T:Observe(cur.sid, cur.stop, "dep", cur.boarded)
	end
	-- saída passada sem embarque (perdeu o barco): a próxima, pelo horário
	for i = route and route.leg or 1, route and math.min(route.leg + 1, #route.legs) or 0 do
		local l = route.legs[i]
		if l.k == "ship" and l.dep and not l.boarded and snow > l.dep + 2 then
			local ship, hh = shipById(l.sid), transit()[l.sid]
			l.dep = ship and hh and ns.Schedule.NextDeparture(ship, l.stop, snow, hh) or nil
		end
	end
	-- indo ao cais ou esperando nele, com horário: aviso 30 s antes da chegada e na chegada
	local sl = cur and (cur.k == "ship" and cur or (route.legs[route.leg + 1] or {}).k == "ship" and route.legs[route.leg + 1])
	if sl and sl.dep and not sl.boarded then
		local left = sl.dep - (sl.dock or 0) - snow
		if left > 0 and left <= 30 then alert(ns.L.SHIP_SOON, sl, "30") end
		if left <= 0 and snow < sl.dep then alert(ns.L.SHIP_HERE, sl, "0") end
	end
	-- velocidade a pé medida (montaria e buffs entram sozinhos)
	if pos and lastPos and lastPos.c == pos.c and not onTaxi and not UnitIsDeadOrGhost("player") then
		local v = vNow
		local leg = route and route.legs[route.leg]
		speed = T.NextSpeed(speed, v, leg and leg.k)
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
			local done = route.legs[route.leg]
			route.leg = i
			if done and done.k == "ship" and done.boarded then     -- desembarcou: chegada + travessia
				local m
				for _, s in ipairs(ns.travel.ships) do if s.id == done.sid then m = #s.stops end end
				-- travessia medida só se plausível (0,5–2× a estimada): senão não foi essa viagem
				local rideS = snow - done.boarded
				local est = done.ride or 0
				if m and est > 0 and rideS >= est / 2 and rideS <= est * 2 then
					T:Observe(done.sid, done.stop % m + 1, "arr", snow, done.stop, rideS)
				end
			end
			if i > #route.legs then          -- chegou
				if kind == "manual" and ns.Destinations then ns.Destinations:Clear("manual") end
				route = nil
			end
			changed()
		end
	end
	sinceReplan = sinceReplan + 1
	local aboard = route and route.legs[route.leg] and route.legs[route.leg].boarded
	if sinceReplan >= REPLAN_EVERY and not onTaxi and not aboard then T:Replan(false) end
end)
