--=============================================================================
-- Travel — a rota atual até o destino ativo. Junta o contexto do personagem (voos
-- conhecidos, velocidade a pé, pedra de lar, teleportes), pede a rota ao Journey,
-- acompanha em que perna o jogador está e decide quando recalcular.
--
--   ns.Travel:Route()  -> { s, legs, leg = índice da perna atual, dest, kind, stops } | nil
--   ns.Travel:Leg()    -> a perna atual | nil
--   evento interno "_ROUTE_CHANGED" quando a rota ou a perna muda
--   Com paradas (#117): `stops[j] = { leg, dest }` (a última perna até a parada j, que leva `parada = dest`)
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
	-- voos seguidos (pousar e marcar de novo, #124): quem marcou o último direto pousa no fim dele
	if leg.k == "flight" then
		local j = i
		while route.legs[j] and route.legs[j].k == "flight" do
			local bj = route.legs[j].b
			if pos.c == bj.c and dist(pos, bj) <= (ARRIVE.flight or 60) then return j + 1 end
			j = j + 1
		end
		return i
	end
	local b = leg.b
	if pos.c == b.c and dist(pos, b) <= (ARRIVE[leg.k] or 60) then return i + 1 end
	return i
end

-- Segundos que faltam: a perna a pé atual pela distância que sobra, as próximas inteiras.
-- `now` (hora do servidor): perna de barco com horário conta até a saída mais a travessia
-- (já a bordo, o que falta dela); sem `now`, o custo com que a rota foi planejada. `reta`: a
-- pé em linha reta mesmo com caminho e com o `gasto` da pedra — para comparar com uma rota
-- nova, que é custada assim. A espera do barco conta de agora: as pernas de antes já correm dentro
-- dela (somar as duas contava o caminho até o cais duas vezes e a rota igual trocava a cada 10 s, #117);
-- `g` é o gasto da pedra já somado, que não é tempo que passa.
function T.Remaining(route, pos, speed, now, reta)
	local s, g = 0, 0
	for i = route.leg, #route.legs do
		local leg = route.legs[i]
		if i == route.leg and leg.k == "walk" and pos and pos.c == leg.b.c then
			local falta = not reta and leg.path and ns.Terrain and select(3, ns.Terrain.Ahead(leg.path, pos, 0))
			s = s + (falta or dist(pos, leg.b)) / (speed or 7)
		elseif leg.k == "ship" and leg.dep and now then
			s = math.max(s - g, leg.dep - now) + g + math.max(0, (leg.ride or 0) - math.max(0, now - leg.dep))
		else
			s = s + leg.s + (reta and leg.gasto or 0)
			if reta then g = g + (leg.gasto or 0) end
		end
	end
	return s
end

-- Rota pelas paradas até o destino (#117): um trecho do Journey por par (jogador -> parada 1 -> ... -> destino),
-- emendados numa rota só. `chain` = { { dest, kind }, ... } (Destinations:Chain); `worldOf(dest)` -> { c, x, y } | nil;
-- `plan(a, b, opts)` -> rota do Journey | nil, com opts = { at = s de viagem antes do trecho, hearth = a pedra já
-- foi usada num trecho anterior }. A última perna até cada parada leva `parada` e entra em `stops`. Trecho sem rota
-- corta a cadeia ali: a rota vai até a última alcançada (o resto se tenta de novo de lá); sem o primeiro, nil. Ponto
-- que não cai no mapa (`worldOf` nil: zona que não se conhece) fica de fora, sem cortar o resto (#117).
function T.PlanChain(from, chain, worldOf, plan)
	local legs, stops, s, a, last = {}, {}, 0, from, nil
	local at, hearth = 0, false               -- `s` soma o plano (com o gasto da pedra); `at`, o tempo de verdade
	for _, t in ipairs(chain) do
		local b = worldOf(t.dest)
		if b then
			local seg = plan(a, b, { at = at, hearth = hearth })
			if not (seg and #seg.legs > 0) then break end
			for _, leg in ipairs(seg.legs) do
				legs[#legs + 1] = leg
				at = at + (leg.s or 0)
				if leg.k == "hearth" then hearth = true end
			end
			s = s + seg.s
			if t.kind == "stop" then
				legs[#legs].parada = t.dest
				stops[#stops + 1] = { leg = #legs, dest = t.dest }
			end
			a, last = b, t
		end
	end
	if not last then return nil end
	return { s = s, legs = legs, stops = stops, dest = last.dest, kind = last.kind }
end

-- Em voo ou a bordo do barco (#117): refazer a rota agora sairia do meio do ar ou do mar e perderia a perna (e a
-- chegada do barco, que se observa no desembarque). Mudou a fila nesse meio: a chave fica velha e o relógio refaz
-- a rota depois de pousar ou desembarcar. `now` (hora do servidor): embarcado há mais que o dobro da travessia e
-- dois minutos (pulou do barco, o desembarque não se viu) já não conta — a rota não fica presa.
function T.Riding(route, onTaxi, now)
	if onTaxi then return true end
	local cur = route and route.legs[route.leg]
	if not (cur and cur.k == "ship" and cur.boarded) then return false end
	return not (now and now - cur.boarded > 2 * (cur.ride or 0) + 120)
end

-- O que identifica a cadeia: mudou (parada nova, tirada, passo novo, corpo), a rota se refaz.
function T.ChainKey(chain)
	local parts = {}
	for i, t in ipairs(chain) do
		local d = t.dest
		parts[i] = ("%s:%s:%.1f:%.1f"):format(t.kind or "?", d.zone or d.map or "?", d.x or 0, d.y or 0)
	end
	return #parts > 0 and table.concat(parts, "|") or nil
end

-- Entre as paradas perto de um anunciador ({ sid, k, nome da outra parada, distância },
-- da mais perto), a que o grito nomeia ("...to Grom'gol..."); sem nome no texto, a mais perto.
function T.PickAnnounced(cands, text)
	for _, c in ipairs(cands or {}) do
		if c[3] and text and text:find(c[3], 1, true) then return c[1], c[2] end
	end
	if cands and cands[1] then return cands[1][1], cands[1][2] end
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
local desvios = {}                     -- pernas a pé que o terreno mostrou mais longas que a reta (#125)
local sonda                            -- a pé a medir antes de trocar de rota (#125): { a, b, sonda = true }
local pathCo, pathLeg, pathRoute, pathIdx, pathDeA, quadro   -- a busca do caminho pelo terreno (pathTick)

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

-- Onde a pedra está. O cliente só dá o nome do lugar, que é o nome da subzona, em qualquer idioma;
-- o ponto se aprende: quem acabou de vincular (`bound`) está lá, e quem pisa na subzona de mesmo
-- nome também. O personagem novo nasce nela (Shadow Grave, Valley of Trials), e quem vinculou
-- antes do Lodestar aprende ao chegar. Nome que muda sem vincular (o idioma do cliente, ou
-- vinculou com o addon desligado) esquece o ponto. Sem ponto a pedra fica fora da rota: a zona
-- não diz o lugar, e chutar a estalagem mandava o personagem novo de volta ao início.
function T.LearnBind(bind, name, subzone, pos, bound)
	if not (pos and name and name ~= "") then return bind end
	if not bind or bind.name ~= name then bind = { name = name } end
	if bound or (not bind.c and subzone == name) then bind.c, bind.x, bind.y = pos.c, pos.x, pos.y end
	return bind
end

local function hearth()
	local bind = ns.char and ns.char.bind
	if not (bind and bind.c) then return nil end
	local wait, spell
	if ns.ItemCount(HEARTH_ITEM) > 0 then
		local getCd = (C_Container and C_Container.GetItemCooldown) or GetItemCooldown
		wait = cooldownLeft(getCd(HEARTH_ITEM))
	end
	if ns.IsSpellKnown(ASTRAL_RECALL) then
		local w = cooldownLeft(ns.SpellCooldown(ASTRAL_RECALL))
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
	if not data then return out end
	local hasRune = ns.ItemCount(RUNE_TELEPORT) > 0
	for _, t in ipairs(data.teleports or {}) do
		local pt = T.TeleportPoint(t, data.nodes, ns.db and ns.db.teleportArrival)
		local mage = t.spell ~= 18960
		if pt and ns.IsSpellKnown(t.spell) and (not mage or hasRune) then
			out[#out + 1] = { c = pt.c, x = pt.x, y = pt.y, cast = 10, label = ns.SpellName(t.spell), spell = t.spell }
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
	local ghost = UnitIsGhost and UnitIsGhost("player")      -- fantasma só anda: sem pedra, teleporte ou voo
	return { data = ns.travel, fac = fac, known = ghost and {} or knownTaxi(fac), speed = speed,
		hearth = not ghost and hearth() or nil, teleports = not ghost and teleports() or nil,
		now = serverNow(), sched = transit(), desvios = desvios }
end

-- Uma observação do transporte `sid` (parada k, "arr" | "dep", hora do servidor t); com a
-- travessia medida (`rideFrom` -> `rideS` s), que passa a valer no ciclo. `replan`: refaz a
-- rota com a espera nova — só fora do transporte (a bordo, a posição é o mar).
local function shipById(sid)
	for _, s in ipairs(ns.travel and ns.travel.ships or {}) do if s.id == sid then return s end end
end

-- `shared`: veio da guilda ou do grupo (TransitShare) — não volta a sair nem conta como observação própria
function T:Observe(sid, k, ev, t, rideFrom, rideS, replan, shared)
	local ship = shipById(sid)
	if not (ship and ns.Schedule) then return end
	local store = transit()
	local old = store[sid]
	local ride = old and old.ride
	if rideFrom and rideS and rideS > 5 then
		ride = ride or {}
		ride[rideFrom] = rideS
	end
	local h = ns.Schedule.Learn(old, ship, k, ev, t, ride)
	store[sid] = h
	-- a última observação própria e o início de ciclo dela (mandam sobre as de fora: TransitShare.Accept)
	h.own, h.ownT0 = old and old.own, old and old.ownT0
	if shared then
		h.T = old and old.T                                -- de fora só move a fase; o período aprendido fica
	else
		h.own, h.ownT0 = t, h.t0
	end
	if not shared and ns.TransitShare then ns.TransitShare:Broadcast(sid, k, ev, t) end
	if replan then T:Replan(true) end
end

-- o horário aprendido deste reino (TransitShare responde com ele)
function T:Transit() return transit() end


--------------------------------------------------------------------------------
-- a rota atual
--------------------------------------------------------------------------------
local route, routeKey, sinceReplan = nil, nil, 0

function T:Route() return route end
function T:Leg() return route and route.legs[route.leg] end
function T:Speed() return speed end
-- em voo ou a bordo agora (T.Riding); morto ou fantasma, não (a rota até o corpo vem já)
function T:Busy()
	if UnitIsDeadOrGhost and UnitIsDeadOrGhost("player") then return false end
	return self.Riding(route, UnitOnTaxi and UnitOnTaxi("player"), serverNow())
end

-- Observação da guilda ou do grupo (#116): entra se TransitShare.Accept deixar; a rota que usa esse transporte é
-- refeita, a não ser a bordo ou em voo.
function T:ObserveShared(sid, k, ev, t)
	local ship = shipById(sid)
	local TS = ns.TransitShare
	if not (ship and TS and TS.Accept(transit()[sid], ship, k, ev, t, serverNow())) then return false end
	local usa = false
	for _, l in ipairs(route and route.legs or {}) do if l.sid == sid then usa = true end end
	local cur = route and route.legs[route.leg]
	local livre = not (cur and cur.boarded) and not (UnitOnTaxi and UnitOnTaxi("player"))
	T:Observe(sid, k, ev, t, nil, nil, usa and livre, true)
	return true
end

local function destination()
	if ns.Destinations then return ns.Destinations:Active() end
end

-- as paradas e o destino, em ordem (#117)
local function chain()
	if ns.Destinations and ns.Destinations.Chain then return ns.Destinations:Chain() end
	local dest, kind = destination()
	return dest and { { dest = dest, kind = kind } } or {}
end

local function changed()
	if ns.fire then ns.fire("_ROUTE_CHANGED", route) end
end

local function worldOf(d) return T.World(d.zone, d.x, d.y, d.map) end

function T:Replan(force)
	local ch = chain()
	local key = T.ChainKey(ch)
	local from = ch[1] and T.PlayerWorld()
	local to                                       -- algum ponto da cadeia no mapa (o que não cai fica de fora, #117)
	for _, t in ipairs(from and ch or {}) do
		to = worldOf(t.dest)
		if to then break end
	end
	if not (from and to and ns.travel) then
		if route then route, routeKey = nil, key; changed() end
		return
	end
	local ctx = self:Context()
	-- a perna a pé atual bem mais longa pelo terreno (#125): a rota nova e a comparação veem o desvio
	local agora, extra = T.DesvioAtual(route and route.legs[route.leg], from, speed, ns.Terrain and ns.Terrain.Ahead)
	if agora then
		local lista = { agora }
		for _, dv in ipairs(ctx.desvios or {}) do lista[#lista + 1] = dv end
		ctx.desvios = lista
	end
	-- cada trecho sai mais tarde (o horário do barco conta da hora em que se chega ao cais) e a pedra vale uma vez
	local new = T.PlanChain(from, ch, worldOf, function(a, b, o)
		local c = ctx
		if o.at > 0 or o.hearth then
			c = {}
			for k, v in pairs(ctx) do c[k] = v end
			c.now = ctx.now and ctx.now + o.at
			if o.hearth then c.hearth = nil end
		end
		return ns.Journey.Plan(a, b, c)
	end)
	if new then new.leg = 1 end
	sinceReplan = 0
	-- a rota nova que segue a pé para o mesmo ponto herda o caminho já calculado
	local cur, n1 = route and route.legs[route.leg], new and new.legs[1]
	if cur and n1 and cur.k == "walk" and n1.k == "walk" and cur.path ~= nil and cur.b.c == n1.b.c
		and cur.b.x == n1.b.x and cur.b.y == n1.b.y then
		n1.path, n1.pathAt, n1.pathFail = cur.path, cur.pathAt, cur.pathFail   -- a espera de 300 jd vem junto
		n1.pathFailT = cur.pathFailT
	end
	T.InheritPaths(route, new)
	-- a rota nova começa a pé, daqui ainda sem medida, até um fim com desvio medido de outro começo (#125): com o
	-- mesmo destino, mesmo forçado (o mapa de voo aberto, o horário do barco), a atual fica até medir (pathTick)
	local n1, c0 = new and new.legs[1], route and route.legs[route.leg]
	local medir = route and key == routeKey and n1 and n1.k == "walk" and T.PrecisaMedir(ctx.desvios, from, n1.b)
		and not (c0 and c0.k == "walk" and c0.b.c == n1.b.c and c0.b.x == n1.b.x and c0.b.y == n1.b.y)
	local function melhor()
		return T.ShouldReplace({ s = T.Remaining(route, from, speed, serverNow(), true) + (extra or 0) }, new)
	end
	if medir and (force or melhor()) then
		if not (sonda or (pathCo and pathLeg and pathLeg.sonda)) then
			sonda = { k = "walk", a = from, b = n1.b, sonda = true }
		end
	elseif force or key ~= routeKey or not route then
		local was = route
		route, routeKey = new, key
		if was or new then changed() end                -- sem rota antes e depois: nada mudou
	elseif melhor() then
		route = new
		changed()
	end
end

-- distância do ponto q ao segmento a-b (no plano)
local function distSeg(q, ax, ay, bx, by)
	local dx, dy = bx - ax, by - ay
	local l2 = dx * dx + dy * dy
	local t = l2 > 0 and math.max(0, math.min(1, ((q.x - ax) * dx + (q.y - ay) * dy) / l2)) or 0
	return dist(q, { x = ax + t * dx, y = ay + t * dy })
end

-- A posição nova está no caminho do barco (a tela de carregamento no meio da travessia, ainda sem o embarque visto):
-- perto da chegada ou da rota dele (os trechos entre pontos seguidos, que chegam a 900 jd), no mesmo continente. Dois
-- pontos a mais de TRECHO_MAX não são trecho: é o teleporte do próprio transporte (o zepelim de Grom'gol a Undercity)
local TRECHO_MAX = 1500
local function noBarco(leg, pos)
	if leg.b and leg.b.c == pos.c and dist(leg.b, pos) < 300 then return true end
	local p = leg.p or {}
	for i = 3, #p, 3 do
		if p[i] == pos.c then
			local j = i + 3
			local bx, by = p[i - 2], p[i - 1]
			if p[j] == pos.c and dist({ x = bx, y = by }, { x = p[j - 2], y = p[j - 1] }) <= TRECHO_MAX then
				bx, by = p[j - 2], p[j - 1]
			end
			if distSeg(pos, p[i - 2], p[i - 1], bx, by) < 300 then return true end
		end
	end
	return false
end

-- Salto que a própria perna explica: a bordo; barco ainda sem embarque visto e a posição no caminho dele; dentro do
-- bonde (instância própria, outro "continente") ou entrando nele (a perna a pé até o bonde só fecha a 15 jd). De
-- volta ao continente do bonde (saiu dele, ou pedra e portal antes de entrar), o salto refaz a rota.
function T.SaltoDaPerna(c, nx, pos)
	if not c then return false end
	if c.boarded then return true end
	if c.k == "ship" then return noBarco(c, pos) end
	if c.k == "tram" then return not (c.a and pos.c == c.a.c) end
	return c.k == "walk" and nx ~= nil and nx.k == "tram" and not (nx.a and pos.c == nx.a.c)
end

-- O caminho pelo terreno de uma perna a pé que ainda não começou (#125): comprimento L contra a reta D, na velocidade
-- v. Desvio grande (L ≥ 1,25 D e 30 s ou mais a pé) volta ao planejador como fator dessa perna: a rota escolhida pela
-- reta (o mestre de voo do outro lado do penhasco) dá lugar à melhor pelo terreno.
function T.Desvio(L, D, v)
	return D > 0 and L >= 1.25 * D and (L - D) / (v or 7) >= 30
end

function T.PathLength(path)
	local L = 0
	for i = 2, #(path or {}) do L = L + dist(path[i - 1], path[i]) end
	return L
end

-- Registra o fator f da perna a pé de a a b; false se esse par já tinha (não replaneja de novo pelo mesmo). Guarda
-- os 32 mais novos.
T.MAX_DESVIOS = 32
function T.AddDesvio(lista, a, b, f)
	for _, dv in ipairs(lista) do
		if dv.a.c == a.c and math.abs(dv.a.x - a.x) < 1 and math.abs(dv.a.y - a.y) < 1
			and math.abs(dv.b.x - b.x) < 1 and math.abs(dv.b.y - b.y) < 1 then return false end
	end
	if #lista >= T.MAX_DESVIOS then table.remove(lista, 1) end
	lista[#lista + 1] = { a = { c = a.c, x = a.x, y = a.y }, b = { c = b.c, x = b.x, y = b.y }, f = f }
	return true
end

-- As pernas a pé da rota nova iguais (mesmo começo e fim) a uma da antiga herdam o caminho já calculado: refazer a
-- rota não recalcula o terreno de tudo
function T.InheritPaths(old, new)
	if not (old and new) then return end
	for i = 2, #new.legs do
		local n = new.legs[i]
		if n.k == "walk" and n.path == nil then
			for _, o in ipairs(old.legs) do
				if o.k == "walk" and o.path and o.a.c == n.a.c and o.a.x == n.a.x and o.a.y == n.a.y
					and o.b.x == n.b.x and o.b.y == n.b.y then
					n.path, n.pathAt, n.pathFail, n.pathFailT = o.path, o.pathAt, o.pathFail, o.pathFailT
					break
				end
			end
		end
	end
end

-- A pé de `from` até `b` sem medida daqui, mas com desvio medido de outro começo para o mesmo fim (#125): a reta não
-- é de confiar. A rota nova que começa assim só entra depois de medir (senão, andando até o mestre de voo, a rota
-- voltava à reta a cada ~200 jd e alternava).
function T.PrecisaMedir(lista, from, b)
	if not (from and b) or ns.Journey.DesvioDe(lista, from, b) then return false end
	for _, dv in ipairs(lista or {}) do
		if dv.b.c == b.c and math.abs(dv.b.x - b.x) < 1 and math.abs(dv.b.y - b.y) < 1 then return true end
	end
	return false
end

-- A perna a pé atual (`cur`, de onde o jogador está, `pos`) com o caminho pelo terreno bem mais longo que a reta: o
-- pouso do outro lado do penhasco, ou quem já está ao pé dele (#125). -> o desvio só deste replanejar ({ a, b, f }) e
-- os segundos a mais que a perna leva de verdade (a comparação com a rota nova é pela reta) | nil. `ahead` é o
-- Terrain.Ahead; caminho a mais de 60 jd de onde o jogador está já não vale.
function T.DesvioAtual(cur, pos, v, ahead)
	if not (cur and cur.k == "walk" and cur.path and pos and ahead and pos.c == cur.b.c) then return nil end
	local _, _, falta, longe = ahead(cur.path, pos, 0)
	local D = dist(pos, cur.b)
	if not (falta and longe and longe <= 60 and T.Desvio(falta, D, v)) then return nil end
	return { a = { c = pos.c, x = pos.x, y = pos.y }, b = cur.b, f = falta / D }, (falta - D) / (v or 7)
end

--------------------------------------------------------------------------------
-- eventos e ticker (só no jogo)
--------------------------------------------------------------------------------
if not ns.On then return end

local vinculou = false                 -- HEARTHSTONE_BOUND: a pedra acabou de vir para cá
ns:On("HEARTHSTONE_BOUND", function() vinculou = true end)

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
	local npc = ns.NpcID(guid)                  -- o GUID do chat pode chegar secreto: fatiar estouraria
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

-- caminho a pé pelo terreno: a perna a pé atual ganha `path`, calculado em corrotina com
-- orçamento de 3 ms por quadro; refeito se o jogador sair dele por mais de 40 jd. Sem caminho
-- (cidade fechada, fora da grade): fica a reta (ou o caminho anterior) e só tenta de novo 300
-- jd adiante — a busca que falha é a mais cara. Com a atual em dia, as próximas pernas a pé
-- ganham o delas, da parada de início, uma de cada vez. `route.pv` conta os caminhos novos
-- (o desenho refaz).
local ORCAMENTO = 3                                   -- ms por quadro
local function estourou()
	return debugprofilestop and quadro and debugprofilestop() - quadro > ORCAMENTO
end
local function pathTick()
	if not (ns.Terrain and ns.terrain and route) then pathCo = nil; return end
	local cur = route.legs[route.leg]
	local pos = T.PlayerWorld()
	local precisa = cur and cur.k == "walk" and pos and pos.c == cur.b.c
		and not (cur.pathFail and cur.pathAt and dist(pos, cur.pathAt) < 300
			-- espera até 300 jd; sem caminho nenhum (falha, não o `solto`) e tendo andado 40 jd, tenta de novo a cada
			-- 30 s (#114) — parado, a mesma busca dá o mesmo nil
			and (cur.path ~= false or dist(pos, cur.pathAt) < 40 or GetTime() - (cur.pathFailT or 0) < 30))
		and not (cur.path and select(4, ns.Terrain.Ahead(cur.path, pos, 0)) <= 40)
	-- rota nova, perna já passada, ou a atual precisa e a busca em curso é de outra: larga
	if pathCo and (pathRoute ~= route or pathIdx < route.leg or (precisa and pathLeg ~= cur)) then pathCo = nil end
	if pathCo then
		quadro = debugprofilestop and debugprofilestop()
		local ok, res = coroutine.resume(pathCo)
		if not ok or coroutine.status(pathCo) == "dead" then
			if not ok then ns:Debug("Terrain:", res) end
			pathCo = nil
			if pathLeg.sonda then
				-- a medida da rota a pé que esperava (#125): fica guardada, pequena ou grande (sem caminho, a reta), e
				-- a rota é decidida de novo
				local D = dist(pathLeg.a, pathLeg.b)
				local f = (ok and res and D > 0) and math.max(1, T.PathLength(res) / D) or 1
				T.AddDesvio(desvios, pathLeg.a, pathLeg.b, f)
				if not T:Busy() then T:Replan(false) end
				return
			end
			if ok and res then
				-- o da segunda busca (cruza uma passagem que a grade não tem): não refaz a cada desvio, como na falha
				pathLeg.path, pathLeg.pathFail = res, res.solto or nil
				route.pv = (route.pv or 0) + 1
				-- perna que ainda não começou: o terreno bem mais longo que a reta corrige o custo dela e refaz (#125).
				-- Em voo ou a bordo, a troca fica para o replanejar de depois do pouso (que já vê o custo novo).
				local D = pathDeA and dist(pathLeg.a, pathLeg.b) or 0
				local L = pathDeA and T.PathLength(res) or 0
				if pathDeA and T.Desvio(L, D, speed) and T.AddDesvio(desvios, pathLeg.a, pathLeg.b, L / D) then
					pathLeg.s = (pathLeg.s or 0) * L / D
					if not T:Busy() then T:Replan(false) end
				elseif not pathDeA and pathLeg.pathAt then
					-- a perna atual: o desvio fica guardado de onde o caminho saiu (senão a rota nova, já sem esta
					-- perna, voltava à reta no replanejar seguinte e as duas se alternavam) e a rota é refeita
					local D0, L0 = dist(pathLeg.pathAt, pathLeg.b), T.PathLength(res)
					if T.Desvio(L0, D0, speed) then
						T.AddDesvio(desvios, pathLeg.pathAt, pathLeg.b, L0 / D0)
						if not T:Busy() then T:Replan(false) end
					end
				end
			else
				pathLeg.path = pathLeg.path or false     -- falhou: fica o caminho anterior, se havia
				pathLeg.pathFail, pathLeg.pathFailT = true, GetTime()
			end
		end
		return
	end
	local leg, idx, from = nil, nil, nil
	if precisa then
		leg, idx, from = cur, route.leg, { c = pos.c, x = pos.x, y = pos.y }
	elseif sonda then
		leg, idx, from = sonda, route.leg, sonda.a
		sonda = nil
		if leg.a.c ~= leg.b.c then return end
	else
		for i = route.leg + 1, #route.legs do
			local l = route.legs[i]
			if l.k == "walk" and l.path == nil and l.a.c == l.b.c then leg, idx, from = l, i, l.a; break end
		end
	end
	if not leg then return end
	pathLeg, pathRoute, pathIdx, pathDeA = leg, route, idx, not precisa
	leg.pathAt = from
	local to = leg.b
	-- sem debugprofilestop (fora do jogo), cede a cada 3000 expansões
	local ceder = debugprofilestop and estourou or 3000
	pathCo = coroutine.create(function() return ns.Terrain.Path(ns.terrain, from, to, 150000, ceder) end)
end
-- passagem gravada ou apagada (Passages.lua): larga a busca em curso, limpa os caminhos a pé e redesenha
function T:ResetPaths()
	pathCo = nil
	desvios, sonda = {}, nil                       -- o terreno mudou: os desvios medidos também
	if not route then return end
	for _, leg in ipairs(route.legs) do
		if leg.k == "walk" then leg.path, leg.pathFail, leg.pathAt = nil, nil, nil end
	end
	route.pv = (route.pv or 0) + 1
end

-- O estado da rota em uma linha, para o relatório (#114): destino, pernas, a atual, o caminho dela e o último erro
-- do desenho no mapa/minimapa (ns.routeErr, limpo quando o desenho volta a dar certo).
function T:Describe()
	local dest, kind = destination()
	local parts = { ("dest %s"):format(dest and (kind or "?") or "none") }
	local nStops = ns.Destinations and ns.Destinations.Stops and #ns.Destinations:Stops() or 0
	if nStops > 0 then parts[#parts + 1] = ("stops %d"):format(nStops) end
	if route then
		local cur = route.legs[route.leg]
		local caminho = cur and cur.k == "walk" and (cur.path and (#cur.path .. " pts" .. (cur.pathFail and " (solto)" or ""))
			or cur.path == false and "failed" or "pending") or "-"
		parts[#parts + 1] = ("legs %d · leg %d %s · path %s · pv %d"):format(#route.legs, route.leg,
			cur and cur.k or "?", caminho, route.pv or 0)
	else
		parts[#parts + 1] = "no route"
	end
	for _, quem in ipairs({ "map", "minimap" }) do
		local e = ns.routeErr and ns.routeErr[quem]
		if e then parts[#parts + 1] = ("%s error: %s"):format(quem, tostring(e):sub(1, 120)) end
	end
	return table.concat(parts, " · ")
end

-- Do zero, como fechar e abrir o guia: sem a rota, a busca e os caminhos de antes (nada é herdado, nem a falha).
function T:Fresh()
	pathCo = nil
	route, routeKey = nil, nil
	T:Replan(true)
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

-- Entrou no mundo (login, /reload, tela de carregamento): a posição e o mapa do jogador só ficam certos uns segundos
-- depois. A rota e o caminho de antes disso podem ter saído de onde o jogador não estava, ou falhado e ficado
-- esperando 300 jd (e a rota nova herdava a falha): o caminho não aparecia até fechar e abrir o guia (#114).
-- Três tiques do relógio de 1 s depois, refaz do zero.
local REFAZ_TIQUES = 3
local SALTO_JD = 250                -- jd num tique de 1 s: ninguém corre nem monta tão rápido (o voo fica de fora)
local posSalto                      -- a última posição conhecida (um tique sem posição não desliga o salto)
local refazEm
-- Só no login e no /reload: a tela de carregamento no meio de um barco entre continentes (ou depois de masmorra,
-- pedra, teleporte) não pode jogar fora a perna de barco a bordo nem a rota que acabou de sair certa. O fim da tela
-- só adia a que já está marcada.
ns:On("PLAYER_ENTERING_WORLD", function(_, login, reload) if login or reload then refazEm = REFAZ_TIQUES end end)
ns:On("LOADING_SCREEN_DISABLED", function() if refazEm then refazEm = REFAZ_TIQUES end end)

ns:Every(1, function()
	if not ns.char then return end
	if refazEm then
		refazEm = refazEm - 1
		if refazEm <= 0 then
			refazEm = nil
			local c = route and route.legs[route.leg]
			-- a bordo, no barco ou em voo: a rota segue (sem refazer do meio do mar)
			if not ((UnitOnTaxi and UnitOnTaxi("player")) or (c and (c.k == "ship" or c.boarded))) then T:Fresh() end
		end
	end
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
	-- salto (portal, pedra, teleporte, soltar o espírito): de continente ou mais de SALTO_JD num tique — a rota de onde
	-- o jogador estava não vale mais; refaz do zero na hora (#123). Em voo ou quando a perna explica o salto (barco,
	-- bonde: T.SaltoDaPerna), não.
	local saltou = pos and posSalto and not onTaxi and (pos.c ~= posSalto.c or dist(pos, posSalto) > SALTO_JD)
	lastPos, lastT = pos, now
	if pos then posSalto = pos end
	if saltou then
		local c = route and route.legs[route.leg]
		local nx = route and route.legs[route.leg + 1]
		if not T.SaltoDaPerna(c, nx, pos) then T:Fresh(); return end
	end
	ns.char.bind = T.LearnBind(ns.char.bind, GetBindLocation and GetBindLocation(),
		GetSubZoneText and GetSubZoneText(), pos, vinculou)
	if pos then vinculou = false end
	-- destino mudou (passo novo, manual, corpo, parada): rota nova já — em voo ou a bordo, depois de pousar ou
	-- desembarcar (T:Busy)
	if T.ChainKey(chain()) ~= routeKey and not T:Busy() then return T:Replan(true) end
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
			-- chegou a uma parada (#117): ela sai da fila e a rota se refaz dali para a próxima
			local feita = done and done.parada and ns.Destinations and ns.Destinations:DoneStop(done.parada)
			if not feita and i > #route.legs then          -- chegou
				local kind = route.kind
				route = nil                      -- antes de limpar: a rota nova até o guia fica
				if kind == "manual" and ns.Destinations then ns.Destinations:Clear("manual") end
			end
			changed()
		end
	end
	-- passou por uma parada, qualquer uma — não só a do fim da perna atual (chegou antes à segunda): ela sai da fila
	-- (#117). Em voo não conta (sobrevoar não é chegar); fantasma, as paradas esperam o corpo. Depois de avançar a
	-- perna: a perna seguinte, já calculada da parada, é herdada pela rota nova.
	local D = ns.Destinations
	if pos and not onTaxi and D and D.Reached and not (UnitIsGhost and UnitIsGhost("player")) then
		for _, s in ipairs(D.Reached(D:Stops(), pos, worldOf)) do D:DoneStop(s) end
	end
	sinceReplan = sinceReplan + 1
	if sinceReplan >= REPLAN_EVERY and not T:Busy() then T:Replan(false) end      -- em voo ou a bordo, não
end)
