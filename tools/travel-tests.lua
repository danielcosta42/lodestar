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

-- ── Travel: trocar de rota, avançar de perna, quanto falta ───────────────────
local T = load("Travel.lua", { Journey = J }).Travel
check(T.ShouldReplace(nil, { s = 100 }), "sem rota, qualquer rota entra")
check(not T.ShouldReplace({ s = 300 }, nil), "replanejar sem resultado mantém a rota atual")
check(T.ShouldReplace({ s = 300 }, { s = 250 }), "15% mais rápida troca")
check(T.ShouldReplace({ s = 300 }, { s = 265 }), "30 s mais rápida troca")
check(not T.ShouldReplace({ s = 300 }, { s = 280 }), "7% e 20 s: não troca (histerese)")
check(not T.ShouldReplace({ s = 300 }, { s = 300 }), "empate não troca")

local rota = { leg = 1, legs = {
	{ k = "walk", b = P(0, 700, 0), s = 100 },
	{ k = "flight", b = P(0, 3000, 0), s = 60 },
	{ k = "walk", b = P(0, 3010, 0), s = 2 },
} }
check(T.AdvanceLeg(rota, P(0, 690, 0), false) == 2, "chegou ao fim da perna a pé: próxima")
check(T.AdvanceLeg(rota, P(0, 300, 0), false) == 1, "no meio da perna a pé: continua nela")
rota.leg = 2
check(T.AdvanceLeg(rota, P(0, 2990, 0), true) == 2, "em voo, mesmo perto do pouso: continua no voo")
check(T.AdvanceLeg(rota, P(0, 2990, 0), false) == 3, "pousou: próxima perna")
check(T.AdvanceLeg(rota, P(0, 1500, 0), false) == 2, "fora do táxi longe do pouso: continua no voo")
check(T.AdvanceLeg(rota, P(1, 2990, 0), false) == 2, "outro continente não conta como chegada")
rota.leg = 1
check(math.abs(T.Remaining(rota, P(0, 0, 0), 7) - (100 + 60 + 2)) < 0.01,
	"quanto falta = a pé até o fim da perna + as próximas")
check(math.abs(T.Remaining(rota, P(0, 350, 0), 7) - (50 + 60 + 2)) < 0.01, "andando, a perna atual encolhe")

local inns = {
	{ n = "Renee", zone = "Tirisfal Glades", x = 61.7, y = 52.0, f = "H" },
	{ n = "Aliada", zone = "Tirisfal Glades", x = 10, y = 10, f = "A" },
	{ n = "Farley", zone = "Elwynn Forest", x = 43.7, y = 65.8, f = "A" },
	{ n = "Outra", zone = "Elwynn Forest", x = 90, y = 90, f = "A" },
}
local inn = T.SingleInn(inns, "Tirisfal Glades", "H")
check(inn and inn.n == "Renee", "pedra sem posição: a única estalagem da facção na zona")
check(T.SingleInn(inns, "Elwynn Forest", "A") == nil, "duas estalagens na zona: não chuta")
check(T.SingleInn(inns, "Durotar", "H") == nil, "zona sem estalagem: nada")

-- ── Destinations: corpo > manual > guia ──────────────────────────────────────
local D = load("Destinations.lua", {}).Destinations
D.GuideTarget = function() return { zone = "Elwynn Forest", x = 40, y = 60, label = "passo" } end
local d, kind = D:Active()
check(kind == "guide" and d.label == "passo", "sem nada marcado, o destino é o passo do guia")
D:Set("manual", { zone = "Westfall", x = 50, y = 50, label = "meu ponto" })
d, kind = D:Active()
check(kind == "manual" and d.label == "meu ponto", "destino manual passa na frente do guia")
D:Set("corpse", { map = 1429, x = 10, y = 10, label = "corpo", red = true })
d, kind = D:Active()
check(kind == "corpse" and d.red, "o corpo passa na frente de tudo, em vermelho")
D:Clear("corpse")
d, kind = D:Active()
check(kind == "manual", "reviveu: volta ao destino manual, não ao guia")
D:Clear("manual")
check(select(2, D:Active()) == "guide", "limpou o manual: volta ao guia")
D.GuideTarget = function() return nil end
check(D:Active() == nil, "sem guia e sem nada: sem destino")

-- ── Services: o mais próximo em TEMPO, da sua facção ──────────────────────────
local S = load("Services.lua", {}).Services
local cands = S.Candidates({
	{ n = "Perto em reta", f = "A", w = { c = 0, x = 100, y = 0 } },
	{ n = "Atrás de um voo", f = "AH", w = { c = 0, x = 300, y = 0 } },
	{ n = "Da Horda", f = "H", w = { c = 0, x = 10, y = 0 } },
}, "A", { c = 0, x = 0, y = 0 }, 5)
check(#cands == 2, "o serviço da outra facção não entra")
check(cands[1].n == "Perto em reta", "candidatos em ordem de distância em reta")
local best = S.Pick(cands, function(c) return c.n == "Perto em reta" and 500 or 200 end)
check(best and best.n == "Atrás de um voo", "ganha o de menor tempo de viagem, não o mais perto em reta")
check(S.Pick(cands, function() return nil end) == nil, "sem rota para nenhum: nada")

-- ── Waypoint: texto da perna e tempo ─────────────────────────────────────────
local L = setmetatable({
	LEG_TO_FLIGHT = "FM %s", LEG_TO_NEW_FLIGHT = "NOVO %s", LEG_FLY = "VOE %s", LEG_TO_DOCK = "CAIS %s",
	LEG_SHIP = "PEGUE %s", LEG_TO_TRAM = "BONDE", LEG_TRAM = "NO BONDE", LEG_HEARTH = "PEDRA",
	LEG_TELEPORT = "TELE %s", SHIP_boat = "barco", SHIP_zeppelin = "zepelim",
}, { __index = function(_, k) return k end })
local WPT = load("Waypoint.lua", { L = L, On = function() end, Every = function() end, zoneUiMap = {} }).Waypoint
check(WPT.FmtTime(45) == "45s" and WPT.FmtTime(130) == "2m10s" and WPT.FmtTime(3900) == "1h05m",
	"tempo: 45s, 2m10s, 1h05m (" .. WPT.FmtTime(130) .. ")")
local rt = { legs = {
	{ k = "walk", name = "Sentinel Hill" },
	{ k = "flight", name = "Ironforge" },
	{ k = "walk" },
	{ k = "ship", ship = "zeppelin" },
	{ k = "hearth" },
	{ k = "teleport", name = "Teleporte: Orgrimmar" },
} }
check(WPT.LegText(rt, 1, 40) == "FM Sentinel Hill · 40s", "a pé até o voo: nome do mestre e tempo (" .. WPT.LegText(rt, 1, 40) .. ")")
check(WPT.LegText(rt, 2, 130) == "VOE Ironforge · 2m10s", "voo: destino e tempo")
check(WPT.LegText(rt, 3, 10):find("CAIS zepelim", 1, true), "a pé até o cais: tipo do transporte")
check(WPT.LegText(rt, 4, 60):find("PEGUE zepelim", 1, true), "no transporte")
check(WPT.LegText(rt, 5, 10):find("PEDRA", 1, true), "pedra de lar")
check(WPT.LegText(rt, 6, 10):find("TELE Teleporte: Orgrimmar", 1, true), "teleporte com o nome do feitiço")
rt.legs[2].discover = 7
check(WPT.LegText(rt, 1, 40):find("NOVO Sentinel Hill", 1, true), "voo ainda não descoberto: pede para descobrir")

-- ── RouteGeom: pontilhado, minimapa, bússola ─────────────────────────────────
local G = load("RouteGeom.lua", {}).RouteGeom
local function near(a, b) return math.abs(a - b) < 1e-6 end
local d = G.Dots({ 0, 0, 10, 0 }, 2.5)
check(#d == 10 and near(d[3], 2.5) and near(d[9], 10), "pontos a cada 2,5 ao longo da reta (" .. #d / 2 .. " pontos)")
d = G.Dots({ 0, 0, 3, 0, 3, 3 }, 2)
check(#d == 8 and near(d[5], 3) and near(d[6], 1), "o espaçamento continua depois da curva")

local rx, ry, inside = G.ToMinimap(0, 0, 10, 0, 0, false, 1, 100)
check(near(rx, 0) and near(ry, 10) and inside, "10 jd ao norte: em cima")
rx, ry = G.ToMinimap(0, 0, 0, 10, 0, false, 1, 100)
check(near(rx, -10) and near(ry, 0), "10 jd a oeste: à esquerda")
rx, ry = G.ToMinimap(0, 0, 0, 10, math.pi / 2, true, 1, 100)
check(near(rx, 0) and near(ry, 10), "minimapa giratório olhando para oeste: o oeste fica em cima")
rx, ry, inside = G.ToMinimap(0, 0, 500, 0, 0, false, 1, 100)
check(near(rx, 0) and near(ry, 100) and not inside, "fora do raio: preso na borda, na direção certa")
rx, ry = G.ToMinimap(0, 0, 20, 0, 0, false, 2, 100)
check(near(ry, 10), "escala: 2 jd por pixel")

local x, clamped = G.CompassX(0, 0, 100, 0, 0, math.pi / 2, 100)
check(near(x, 0) and not clamped, "alvo à frente: no meio da bússola")
x = G.CompassX(0, 0, 0, 100, 0, math.pi / 2, 100)
check(x < 0, "alvo a oeste olhando para o norte: à esquerda")
x = G.CompassX(0, 0, 0, -100, 0, math.pi / 2, 100)
check(x > 0, "alvo a leste: à direita")
x, clamped = G.CompassX(0, 0, -100, 0, 0, math.pi / 2, 100)
check(clamped and math.abs(x) == 100, "alvo atrás: preso na borda")
local f = math.rad(10)
x, clamped = G.CompassX(0, 0, 100 * math.cos(math.rad(-10)), 100 * math.sin(math.rad(-10)), f, math.pi / 2, 100)
check(not clamped and x > 0 and x < 50, "volta dos 360°: alvo a 350° com o jogador a 10° fica levemente à direita (" .. x .. ")")

-- ── RouteMap: que pontos cada perna desenha ──────────────────────────────────
local RM = load("RouteMap.lua", {}).RouteMap
local function count(t) return #t / 3 end
local pts = RM.LegPoints({ k = "flight", a = P(0, 0, 0), b = P(0, 3000, 0), p = { 0, 0, 1500, 300, 3000, 0 } })
check(count(pts) == 3 and pts[4] == 1500 and pts[6] == 0, "voo: o traçado inteiro, no continente da perna")
pts = RM.LegPoints({ k = "walk", a = P(0, 0, 0), b = P(0, 100, 0) }, P(0, 40, 0))
check(count(pts) == 2 and pts[1] == 40, "perna a pé atual: sai de onde o jogador está")
pts = RM.LegPoints({ k = "walk", a = P(0, 0, 0), b = P(0, 100, 0) })
check(count(pts) == 2 and pts[1] == 0, "perna a pé futura: do começo dela")
pts = RM.LegPoints({ k = "ship", a = P(0, 0, -500), b = P(1, 0, 0), p = { 0, -500, 0, 0, 0, 1 } })
check(count(pts) == 2 and pts[3] == 0 and pts[6] == 1, "barco: o trajeto com o continente de cada ponto")
check(#RM.LegPoints({ k = "hearth", a = P(0, 0, 0), b = P(1, 5, 5) }) == 0, "pedra de lar não desenha linha (é salto)")

print(("ok: %d checks"):format(checks))
