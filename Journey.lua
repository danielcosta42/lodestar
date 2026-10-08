--=============================================================================
-- Journey — o caminho mais rápido até um ponto: a pé, voo, barco, zepelim, bonde,
-- pedra de lar e teleporte. Puro: recebe o contexto do personagem (voos conhecidos,
-- velocidade, pedra) e devolve as pernas; quem lê o jogo é o Travel.
--
--   local route = ns.Journey.Plan(from, to, ctx)
--   from/to: { c = continente, x = norte, y = oeste } (coordenada de mundo)
--   ctx: { data = ns.travel, fac = "A"|"H", known = {[nó]=true}, speed = jd/s,
--          hearth = { c, x, y, wait = s } | nil, teleports = { { c, x, y, cast, label } } }
--   route: { s = total, legs = { { k, a, b, s, name, p, discover, ship } } } ou nil
--=============================================================================
local ADDON, ns = ...
local J = {}
ns.Journey = J

local FLIGHT_OVERHEAD = 10     -- falar com o mestre de voo e decolar
local HEARTH_CAST = 10

local function dist(a, b)
	local dx, dy = a.x - b.x, a.y - b.y
	return math.sqrt(dx * dx + dy * dy)
end

-- traçado do barco entre duas paradas (o laço é cíclico; vai do ponto mais perto de uma
-- ao mais perto da outra, no sentido da viagem)
local function shipSlice(p, a, b)
	local n = #p / 3
	local function nearest(q)
		local best, bi = math.huge, 1
		for i = 1, n do
			local c, x, y = p[i * 3], p[i * 3 - 2], p[i * 3 - 1]
			if c == q.c then
				local d = (x - q.x) ^ 2 + (y - q.y) ^ 2
				if d < best then best, bi = d, i end
			end
		end
		return bi
	end
	local i, j, out = nearest(a), nearest(b), {}
	local k = i
	repeat
		out[#out + 1] = p[k * 3 - 2]; out[#out + 1] = p[k * 3 - 1]; out[#out + 1] = p[k * 3]
		if k == j then break end
		k = k % n + 1
	until #out > #p
	return out
end

function J.Plan(from, to, ctx)
	local data, fac, known = ctx.data, ctx.fac, ctx.known or {}
	local speed = ctx.speed or 7
	local nodes = {}                          -- { pt = {c,x,y}, kind, id, ... }
	local function add(pt, kind, extra)
		local n = { pt = pt, kind = kind }
		for k, v in pairs(extra or {}) do n[k] = v end
		nodes[#nodes + 1] = n
		return #nodes
	end
	local START = add(from, "start")
	local GOAL = add(to, "goal")
	local fmIndex = {}
	for id, v in pairs(data.nodes or {}) do
		if v.f:find(fac, 1, true) then
			fmIndex[id] = add({ c = v.c, x = v.x, y = v.y }, "fm", { id = id, name = v.n })
		end
	end
	local special = {}                        -- arestas que não são a pé: [i] = { {j, s, leg} }
	local function link(i, j, s, leg)
		special[i] = special[i] or {}
		table.insert(special[i], { j = j, s = s, leg = leg })
	end
	for a, dests in pairs(data.flights or {}) do
		local ia = fmIndex[a]
		for b, f in pairs(dests) do
			local ib = fmIndex[b]
			if ia and ib and known[b] then         -- só voa PARA voo conhecido
				link(ia, ib, f.s + FLIGHT_OVERHEAD, { k = "flight", name = nodes[ib].name, to = b, p = f.p,
					discover = not known[a] and a or nil })
			end
		end
	end
	for _, ship in ipairs(data.ships or {}) do
		local idx = {}
		for k, st in ipairs(ship.stops) do idx[k] = add({ c = st.c, x = st.x, y = st.y }, "dock") end
		-- o trajeto é um laço: parada k -> k+1 (no barco de duas paradas, ida e volta); ir
		-- "para trás" num laço de três é seguir as próximas, e a espera conta de novo
		local m = #ship.stops
		local function ok(st) return not st.f or st.f:find(fac, 1, true) end   -- cais da outra facção: guardas
		for k = 1, m do
			local nxt = k % m + 1
			if ok(ship.stops[k]) and ok(ship.stops[nxt]) then
				link(idx[k], idx[nxt], ship.w + (ship.s[k] or 0), { k = "ship", ship = ship.k,
					name = ship.stops[nxt].n, p = shipSlice(ship.p, ship.stops[k], ship.stops[nxt]) })
			end
		end
	end
	if data.tram then
		local a = add(data.tram.a, "tram")
		local b = add(data.tram.b, "tram")
		link(a, b, data.tram.s, { k = "tram" })
		link(b, a, data.tram.s, { k = "tram" })
	end
	if ctx.hearth then
		local h = add({ c = ctx.hearth.c, x = ctx.hearth.x, y = ctx.hearth.y }, "hearth")
		link(START, h, HEARTH_CAST + (ctx.hearth.wait or 0), { k = "hearth" })
	end
	for _, t in ipairs(ctx.teleports or {}) do
		local h = add({ c = t.c, x = t.x, y = t.y }, "teleport")
		link(START, h, t.cast or 10, { k = "teleport", name = t.label })
	end

	-- Dijkstra O(n²): ~120 nós, a pé entre todo par do mesmo continente
	local n = #nodes
	local best, prev, via, done = {}, {}, {}, {}
	for i = 1, n do best[i] = math.huge end
	best[START] = 0
	for _ = 1, n do
		local u, bu = nil, math.huge
		for i = 1, n do
			if not done[i] and best[i] < bu then u, bu = i, best[i] end
		end
		if not u or u == GOAL then break end
		done[u] = true
		local pu = nodes[u].pt
		for v = 1, n do
			if not done[v] and v ~= START and nodes[v].pt.c == pu.c then
				local s = bu + dist(pu, nodes[v].pt) / speed
				if s < best[v] then best[v], prev[v], via[v] = s, u, { k = "walk" } end
			end
		end
		for _, e in ipairs(special[u] or {}) do
			local s = bu + e.s
			if not done[e.j] and s < best[e.j] then best[e.j], prev[e.j], via[e.j] = s, u, e.leg end
		end
	end
	if best[GOAL] == math.huge then return nil end

	local legs, v = {}, GOAL
	while v ~= START do
		local u = prev[v]
		local leg = {}
		for k, val in pairs(via[v]) do leg[k] = val end
		leg.a, leg.b, leg.s = nodes[u].pt, nodes[v].pt, best[v] - best[u]
		if leg.k == "walk" and nodes[v].kind == "fm" then leg.name = nodes[v].name end
		table.insert(legs, 1, leg)
		v = u
	end
	return { s = best[GOAL], legs = legs }
end
