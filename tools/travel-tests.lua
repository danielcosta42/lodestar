-- Testes do planejador de viagem (Journey, Travel, Destinations, Services, RouteGeom),
-- rodados contra os arquivos de verdade com dados de mentira.
--
--   luajit tools/travel-tests.lua
--
-- Sai com 1 no primeiro check que falha.
local ROOT = (arg and arg[0] or ""):gsub("[^/\\]*$", "") .. ".."

local checks = 0
local function check(cond, what)
	checks = checks + 1
	if not cond then
		io.stderr:write("FAIL: " .. what .. "\n")
		os.exit(1)
	end
end

local function load(file, ns)
	assert(loadfile(ROOT .. "/" .. file))("Lodestar", ns)
	return ns
end

local function kinds(route)
	local t = {}
	for i, leg in ipairs(route.legs) do t[i] = leg.k end
	return table.concat(t, ",")
end

-- ── Journey.Plan ────────────────────────────────────────────────────────────
-- Mundo de mentira: Reinos do Leste (c=0) com três voos da Aliança em linha, e um barco
-- até Kalimdor (c=1).
local data = {
	nodes = {
		[1] = { n = "Origem", c = 0, x = 0, y = 0, f = "A" },
		[2] = { n = "Longe", c = 0, x = 3000, y = 0, f = "A" },
		[3] = { n = "Novo", c = 0, x = 200, y = 2000, f = "A" },
		[4] = { n = "Da Horda", c = 0, x = 10, y = 10, f = "H" },
	},
	flights = {
		[1] = { [2] = { s = 60, p = { 0, 0, 1500, 300, 3000, 0 } } },
		[3] = { [2] = { s = 50, p = { 200, 2000, 3000, 0 } } },
		[4] = { [2] = { s = 1, p = { 10, 10, 3000, 0 } } },
	},
	ships = {
		{ k = "boat", w = 100, s = { 200, 200 },
			stops = { { c = 0, x = 0, y = -500 }, { c = 1, x = 0, y = 0 } },
			p = { 0, -500, 0, 0, -300, 0, 0, 0, 1 } },
	},
	tram = { s = 120, a = { c = 0, x = 9000, y = 9000 }, b = { c = 0, x = 12000, y = 12000 } },
	teleports = {},
}
local ns = load("Journey.lua", {})
local J = ns.Journey
local function ctx(over)
	local c = { data = data, fac = "A", known = { [1] = true, [2] = true }, speed = 7, teleports = {} }
	for k, v in pairs(over or {}) do c[k] = v end
	return c
end
local P = function(c, x, y) return { c = c, x = x, y = y } end

local r = J.Plan(P(0, 50, 0), P(0, 250, 0), ctx())
check(r and kinds(r) == "walk", "perto (200 jd): anda (" .. (r and kinds(r) or "nil") .. ")")
check(math.abs(r.s - 200 / 7) < 0.5, "tempo a pé = distância / velocidade")

r = J.Plan(P(0, 10, 0), P(0, 3010, 0), ctx())
check(kinds(r) == "walk,flight,walk", "longe com voo conhecido: anda, voa, anda (" .. kinds(r) .. ")")
check(r.legs[2].name == "Longe" and r.legs[2].p and #r.legs[2].p == 6, "voo leva o nome do destino e o traçado")
check(not r.legs[2].discover, "voo de ponto conhecido não pede descoberta")

r = J.Plan(P(0, 200, 2010), P(0, 3010, 0), ctx())
check(kinds(r) == "walk,flight,walk" and r.legs[2].discover == 3,
	"vale andar até um voo novo: parte dele e marca descubra (" .. kinds(r) .. ")")

r = J.Plan(P(0, 10, 0), P(0, 3010, 0), ctx({ known = { [1] = true, [3] = true } }))
for _, leg in ipairs(r.legs) do
	check(leg.k ~= "flight", "voo para destino desconhecido nunca entra")
end

r = J.Plan(P(0, 10, 0), P(0, 3010, 0), ctx({ known = { [2] = true, [4] = true } }))
for _, leg in ipairs(r.legs) do
	check(not (leg.k == "flight" and leg.discover == 4), "voo da outra facção nunca entra")
end

r = J.Plan(P(0, 0, 0), P(0, 3000, 0), ctx({ hearth = { c = 0, x = 3000, y = 10, wait = 0 } }))
check(r.legs[1].k == "hearth", "pedra pronta perto do alvo: usa a pedra (" .. kinds(r) .. ")")
r = J.Plan(P(0, 0, 0), P(0, 3000, 0), ctx({ hearth = { c = 0, x = 3000, y = 10, wait = 900 } }))
check(r.legs[1].k ~= "hearth", "pedra com 15 min de recarga: não usa (" .. kinds(r) .. ")")

r = J.Plan(P(0, 0, -400), P(1, 0, 100), ctx())
check(r and kinds(r) == "walk,ship,walk", "outro continente: barco (" .. (r and kinds(r) or "nil") .. ")")
check(math.abs(r.legs[2].s - 300) < 0.01, "barco custa espera + travessia")
check(r.legs[2].ship == "boat", "a perna diz que é barco")

check(J.Plan(P(0, 0, 0), P(5, 0, 0), ctx()) == nil, "continente sem ligação: sem rota")

r = J.Plan(P(0, 9000, 8990), P(0, 12000, 12010), ctx())
check(kinds(r) == "walk,tram,walk", "bonde quando compensa (" .. kinds(r) .. ")")

r = J.Plan(P(0, 0, 0), P(0, 3000, 0), ctx({ teleports = { { c = 0, x = 3000, y = 0, cast = 10, label = "Teleporte" } } }))
check(r.legs[1].k == "teleport", "teleporte conhecido ao lado do alvo vence (" .. kinds(r) .. ")")

-- com os dados de verdade (TravelData.lua): o formato gerado encaixa no planejador
local real = load("TravelData.lua", {}).travel
local function node(prefix)
	for id, v in pairs(real.nodes) do
		if v.n:sub(1, #prefix) == prefix then return id, v end
	end
end
local function todos(fac)
	local k = {}
	for id, v in pairs(real.nodes) do if v.f:find(fac, 1, true) then k[id] = true end end
	return k
end
local _, sh = node("Sentinel Hill")
local _, ifo = node("Ironforge")
r = J.Plan(P(sh.c, sh.x + 30, sh.y), P(ifo.c, ifo.x + 30, ifo.y),
	{ data = real, fac = "A", known = todos("A"), speed = 7, teleports = {} })
check(r and kinds(r):find("flight"), "real: Sentinel Hill -> Ironforge voa (" .. (r and kinds(r) or "nil") .. ")")
check(r.s < 600, "real: a viagem leva menos de 10 min (" .. math.floor(r.s) .. " s)")
local _, ra = node("Ratchet")
local _, bb = node("Booty Bay")
r = J.Plan(P(ra.c, ra.x, ra.y), P(bb.c, bb.x, bb.y),
	{ data = real, fac = "H", known = {}, speed = 7, teleports = {} })
check(r and kinds(r):find("ship"), "real: Ratchet -> Booty Bay de barco (" .. (r and kinds(r) or "nil") .. ")")

print(("ok: %d checks"):format(checks))
