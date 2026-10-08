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
		{ id = 7, k = "boat", w = 100, s = { 200, 200 }, d = { 20, 20 },
			stops = { { c = 0, x = 0, y = -500 }, { c = 1, x = 0, y = 0 } },
			p = { 0, -500, 0, 0, -300, 0, 0, 0, 1 } },
	},
	tram = { s = 120, a = { c = 0, x = 9000, y = 9000 }, b = { c = 0, x = 12000, y = 12000 } },
	teleports = {},
}
local ns = load("Journey.lua", load("Schedule.lua", {}))
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
local fl
for _, l in ipairs(r.legs) do if l.k == "flight" then fl = l end end
check(fl and fl.to and real.nodes[fl.to].n == fl.name, "a perna de voo leva o id do nó de destino (mapa de voo casa pelo id)")
local _, ra = node("Ratchet")
local _, bb = node("Booty Bay")
r = J.Plan(P(ra.c, ra.x, ra.y), P(bb.c, bb.x, bb.y),
	{ data = real, fac = "H", known = {}, speed = 7, teleports = {} })
check(r and kinds(r):find("ship"), "real: Ratchet -> Booty Bay de barco (" .. (r and kinds(r) or "nil") .. ")")

-- critérios de aceite da spec, com os dados de verdade
local function at(prefix, dx) local _, v = node(prefix); return P(v.c, v.x + (dx or 0), v.y) end
local function semNo(fac, id) local k = todos(fac); k[id] = nil; return k end
local function real_ctx(fac, known, extra)
	local c = { data = real, fac = fac, known = known, speed = 7, teleports = {} }
	for k, v in pairs(extra or {}) do c[k] = v end
	return c
end
r = J.Plan(P(0, -9460, 50), at("Ironforge", 30), real_ctx("A", todos("A")))          -- Goldshire
check(r and (kinds(r):find("tram") or kinds(r):find("flight")), "aceite 1: Goldshire -> Ironforge de bonde ou voo (" .. (r and kinds(r) or "nil") .. ")")
r = J.Plan(at("Auberdine", 30), at("Menethil", 30), real_ctx("A", todos("A")))
check(r and kinds(r):find("ship"), "aceite 2: Auberdine -> Menethil de barco (" .. (r and kinds(r) or "nil") .. ")")
r = J.Plan(at("Orgrimmar", 30), at("Undercity", 30), real_ctx("H", todos("H")))
local zep
for _, l in ipairs(r and r.legs or {}) do if l.ship == "zeppelin" then zep = true end end
check(zep, "aceite 3: Orgrimmar -> Undercity de zepelim (" .. (r and kinds(r) or "nil") .. ")")
local brill = P(0, at("Undercity").x + 600, at("Undercity").y - 100)
r = J.Plan(at("Orgrimmar", 30), brill, real_ctx("H", todos("H"), { hearth = { c = 0, x = brill.x, y = brill.y, wait = 0 } }))
check(r and r.legs[1].k == "hearth", "aceite 4: pedra pronta em Brill, vindo de longe: pedra (" .. (r and kinds(r) or "nil") .. ")")
local shId = node("Sentinel Hill")
r = J.Plan(at("Sentinel Hill", 40), at("Ironforge", 30), real_ctx("A", semNo("A", shId)))
local disc
for _, l in ipairs(r and r.legs or {}) do if l.discover == shId then disc = true end end
check(disc, "aceite 5: voo não descoberto no caminho é usado e marcado (" .. (r and kinds(r) or "nil") .. ")")
-- revisão #3: barco e zepelim só por cais da sua facção
local function porPerto(rr, prefix)
	local _, v = node(prefix)
	for _, l in ipairs(rr and rr.legs or {}) do
		for _, pt in ipairs({ l.a, l.b }) do
			if l.k == "ship" and pt.c == v.c and (pt.x - v.x) ^ 2 + (pt.y - v.y) ^ 2 < 700 ^ 2 then return true end
		end
	end
end
r = J.Plan(at("Brackenwall", 30), at("Menethil", 300), real_ctx("H", todos("H")))
check(r and not porPerto(r, "Theramore"), "Horda em Brackenwall não vai ao cais de Theramore (" .. (r and kinds(r) or "nil") .. ")")
r = J.Plan(at("Ratchet", 30), at("Undercity", 300), real_ctx("A", todos("A")))
local zepA
for _, l in ipairs(r and r.legs or {}) do if l.ship == "zeppelin" then zepA = true end end
check(r and not zepA, "Aliança não pega zepelim da Horda (" .. (r and kinds(r) or "nil") .. ")")
-- revisão #2: o barco diz para onde vai
r = J.Plan(at("Auberdine", 30), at("Menethil", 30), real_ctx("A", todos("A")))
local barco
for _, l in ipairs(r and r.legs or {}) do if l.k == "ship" then barco = l end end
check(barco and barco.name == "Menethil Harbor", "a perna de barco leva o nome do cais de chegada (" .. tostring(barco and barco.name) .. ")")

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
	LEG_SHIP_TO = "PEGUE %s PARA %s", LEG_TO_DOCK_TO = "CAIS %s PARA %s", LEG_RECALL = "RETORNO",
	SHIP_LEAVES = "SAI %s", SHIP_ARRIVES = "CHEGA %s", SHIP_BOARD = "EMBARQUE %s",
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
local rb = { legs = { { k = "walk" }, { k = "ship", ship = "boat", name = "Menethil Harbor" }, { k = "walk" } } }
check(WPT.LegText(rb, 1, 30) == "CAIS barco PARA Menethil Harbor · 30s" and WPT.LegText(rb, 2, 60) == "PEGUE barco PARA Menethil Harbor · 1m00s",
	"barco: diz para onde vai (" .. WPT.LegText(rb, 1, 30) .. " | " .. WPT.LegText(rb, 2, 60) .. ")")
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

-- ── RouteGeom.ClipCircle: o pedaço do segmento dentro do minimapa ────────────
local x0, y0, x1, y1 = G.ClipCircle(0, 0, 200, 0, 100)
check(near(x0, 0) and near(x1, 100) and near(y1, 0), "segmento saindo do minimapa para na borda")
x0, y0, x1, y1 = G.ClipCircle(-200, 50, 200, 50, 100)
check(near(x0, -math.sqrt(100 ^ 2 - 50 ^ 2)) and near(x1, math.sqrt(100 ^ 2 - 50 ^ 2)), "segmento atravessando: só a corda dentro")
check(G.ClipCircle(150, 150, 300, 300, 100) == nil, "segmento todo fora: nada")
x0, y0, x1, y1 = G.ClipCircle(10, 10, 20, 20, 100)
check(near(x0, 10) and near(x1, 20), "segmento todo dentro: inteiro")

-- ── Waypoint.PickTarget sem rota: o destino ativo, com o tipo certo ──────────
local objetivo = { verb = "talk", text = "Fale com X", goto_ = { zone = "Elwynn Forest", x = 1, y = 2 } }
local wns = { L = L, On = function() end, Every = function() end, zoneUiMap = {},
	Travel = { Route = function() return nil end },
	Destinations = { Active = function() return { zone = "Elwynn Forest", x = 1, y = 2, goal = objetivo }, "guide" end } }
local W2 = load("Waypoint.lua", wns).Waypoint
check(W2:PickTarget() == objetivo, "sem rota, destino do guia: a seta usa o objetivo real do passo")
wns.Destinations.Active = function() return { zone = "Westfall", x = 5, y = 6, label = "manual" }, "manual" end
local g = W2:PickTarget()
check(g and g._custom and g.goto_.zone == "Westfall", "sem rota, destino manual: alvo avulso marcado como manual")

-- ── Compass: tracinhos a cada 15°, letra nos de 90°, somem em fade nas pontas ──
local CP = load("Compass.lua", { RouteGeom = G }).Compass
local FOV180 = math.pi
local function tick(list, k)
	for _, t in ipairs(list) do if t.k == k then return t end end
end
local ts = CP.Ticks(0, FOV180, 180, 40)
check(#ts == 13, "180° de campo: 13 tracinhos de 15° visíveis (" .. #ts .. ")")
check(tick(ts, "N") and near(tick(ts, "N").x, 0) and tick(ts, "N").major and not tick(ts, "S"),
	"olhando para o norte: N maior no meio, S fora")
local meio, borda
for _, t in ipairs(ts) do
	if near(t.x, 0) then meio = t end
	if near(t.x, 150) then borda = t end
end
check(meio and borda and borda.alpha < meio.alpha and meio.alpha > 0, "fade: o tracinho perto da ponta é mais fraco que o do meio")
check(tick(ts, "W") and tick(ts, "W").alpha == 0, "na ponta exata, transparente")
ts = CP.Ticks(math.rad(45), FOV180, 180, 40)
check(tick(ts, "N").x > 0 and tick(ts, "W").x < 0, "olhando para noroeste: N à direita, W à esquerda")

-- ── Destino manual pelo minimapa e tipo de serviço por texto ─────────────────
for _, caso in ipairs({ { 0, false }, { math.rad(73), true }, { math.rad(250), true } }) do
	local facing, rotate = caso[1], caso[2]
	local rx, ry = G.ToMinimap(100, 200, 160, 150, facing, rotate, 1.5, math.huge)
	local wx, wy = G.FromMinimap(100, 200, rx, ry, facing, rotate, 1.5)
	check(near(wx, 160) and near(wy, 150), "clique no minimapa volta ao mesmo ponto de mundo (giro " .. math.deg(facing) .. "°)")
end
check(S.KindFromText("reparo") == "repair" and S.KindFromText("repair") == "repair", "reparo/repair")
check(S.KindFromText("Estalagem") == "inn" and S.KindFromText("voo") == "flight", "estalagem, voo (sem caixa)")
check(S.KindFromText("treinador") == "classtrainer", "treinador = da classe")
check(S.KindFromText("banana") == nil, "texto desconhecido: nada")

-- ── Campo de coordenada (painel Viagem e /ls way) ────────────────────────────
local wx, wy, wz = WPT.ParseWay("45.2 30.1")
check(wx == 45.2 and wy == 30.1 and wz == nil, "coordenada sem zona")
wx, wy, wz = WPT.ParseWay(" 45,30 Elwynn Forest ")
check(wx == 45 and wy == 30 and wz == "Elwynn Forest", "coordenada com vírgula e zona")
check(WPT.ParseWay("abc") == nil and WPT.ParseWay("120 30") == nil, "texto ou fora de 0-100: nada")

-- ── Todo comando do /ls tem lugar na interface (ns.COMMAND_UI no Core.lua) ────
do
	local src = io.open(ROOT .. "/Core.lua"):read("*a")
	local block = src:match("ns%.COMMAND_UI = (%b{})")
	check(block ~= nil, "Core.lua define ns.COMMAND_UI")
	local ui = block and loadstring("return " .. block)() or {}
	local faltam = {}
	for cmd in src:gmatch('cmd == "([%w_]+)"') do
		if not ui[cmd] then faltam[#faltam + 1] = cmd end
	end
	check(#faltam == 0, "comandos sem entrada na interface: " .. table.concat(faltam, ", "))
end

-- ── Revisão final ─────────────────────────────────────────────────────────────
-- #1: com TomTom, o alvo de perna (sem goto_) derrubava o targetMapID
local wns = load("Waypoint.lua", { L = L, On = function() end, Every = function() end, zoneUiMap = {}, zoneMap = {} })
check(pcall(wns.TargetMapID, { verb = "goto_", _leg = true, world = { c = 0, x = 1, y = 1 } }),
	"alvo de perna (sem goto_) não quebra o mapa do alvo")

-- #6: rótulo da profissão no painel; o ns.L devolve "[CHAVE]" para chave que não existe
local Lmiss = setmetatable({ PROF_MINING = "Mineração" }, { __index = function(_, k) return "[" .. k .. "]" end })
local TPn = load("TravelPanel.lua", { L = Lmiss, On = function() end, Every = function() end, UI = {} }).TravelPanel
check(TPn.ProfLabel("Cooking") == "Cooking" and TPn.ProfLabel("Mining") == "Mineração",
	"profissão sem tradução sai com o nome, não [PROF_...]")

-- #8: voos conhecidos por continente — abrir o mapa de voo num continente não apaga o
-- fallback (zonas visitadas) do outro
local NODES = {
	[2] = { c = 0, f = "A", z = "Elwynn Forest" }, [4] = { c = 0, f = "A", z = "Westfall" },
	[26] = { c = 1, f = "A", z = "Darkshore" }, [27] = { c = 1, f = "A", z = "Ashenvale" },
	[40] = { c = 1, f = "H", z = "Darkshore" },
}
local kt = T.KnownTaxi({ taxiSynced = { [0] = true }, taxi = { [2] = true }, zones = { Westfall = true, Darkshore = true } }, NODES, "A")
check(kt[2] and not kt[4], "continente sincronizado: vale o mapa de voo, não a zona visitada")
check(kt[26] and not kt[27] and not kt[40], "outro continente: voos da facção nas zonas visitadas")
kt = T.KnownTaxi({ taxiSynced = true, taxi = { [2] = true }, zones = { Darkshore = true } }, NODES, "A")
check(kt[2] and kt[26], "save antigo (taxiSynced = true) não desliga o fallback")

-- ── #19: polimento ───────────────────────────────────────────────────────────
-- 1/7: perna de teleporte e de pedra levam o feitiço (ícone; Retorno Astral no texto)
r = J.Plan(P(0, 0, 0), P(1, 5000, 5000), ctx({ teleports = { { c = 1, x = 5000, y = 5010, cast = 10, label = "Teleporte", spell = 3567 } } }))
check(r and r.legs[1].k == "teleport" and r.legs[1].spell == 3567, "a perna de teleporte leva o feitiço (ícone)")
r = J.Plan(P(0, 0, 0), P(1, 5000, 5000), ctx({ hearth = { c = 1, x = 5000, y = 5010, wait = 0, spell = 556 } }))
check(r and r.legs[1].k == "hearth" and r.legs[1].spell == 556, "a perna de pedra leva o Retorno Astral quando é ele")
check(WPT.LegText({ legs = { { k = "hearth", spell = 556 } } }, 1, 10):find("^RETORNO"), "texto: Retorno Astral, não Pedra")
-- 6: a velocidade a pé não aprende no barco/bonde
check(T.NextSpeed(7, 25, "ship") == 7 and T.NextSpeed(7, 25, "tram") == 7, "no barco e no bonde a amostra é ignorada")
check(T.NextSpeed(7, 14, "walk") > 7, "a pé, a amostra entra")
-- 4: minimapa dentro de cidade tem alcance menor
check(G.MinimapRange(0, true) < G.MinimapRange(0, false) and near(G.MinimapRange(0, false), 233.33), "alcance do minimapa: fechado menor que aberto")

-- 2: a chegada do teleporte aprendida em jogo vale mais que o mestre de voo da cidade
local NODES2 = { [27] = { c = 1, x = 8643.6, y = 841.0 } }
local tp = { spell = 3565, node = 27 }
local pt = T.TeleportPoint(tp, NODES2, nil)
check(pt and pt.x == 8643.6, "sem chegada aprendida: o mestre de voo da cidade")
pt = T.TeleportPoint(tp, NODES2, { [3565] = { c = 1, x = 9660, y = 2510 } })
check(pt and pt.x == 9660, "com chegada aprendida: o ponto onde o jogador chegou")

-- ── #21: horário de barco e zepelim ──────────────────────────────────────────
local SC = load("Schedule.lua", {}).Schedule
local navio = { id = 1, stops = { {}, {} }, s = { 100, 80 }, d = { 60, 60 } }
local arr, dep, Tc = SC.Offsets(navio)
check(arr[1] == 0 and dep[1] == 60 and arr[2] == 160 and dep[2] == 220 and Tc == 300,
	"ciclo: chega 0, sai 60, chega na 2ª 160, sai 220, volta 300")
check(SC.CycleStart(navio, 2, "arr", 1000) == 840, "chegada na 2ª parada às 1000 → ciclo começou às 840")
local h = { t0 = 840, T = 300 }
check(SC.NextDeparture(navio, 1, 850, h) == 900 and SC.NextDeparture(navio, 1, 950, h) == 1200,
	"próxima saída da 1ª: 900 se chegar às 850; 1200 se chegar às 950")
check(SC.NextDeparture(navio, 1, 850, nil) == nil, "sem horário aprendido: nada")
h = SC.Learn(nil, navio, 1, "arr", 1000)
h = SC.Learn(h, navio, 1, "arr", 1000 + 3 * 305)
check(near(h.T, 305) and #h.starts == 2, "duas chegadas 3 voltas depois: o período aprendido é 305 (" .. h.T .. ")")
h = SC.Learn(h, navio, 1, "arr", 1000 + 3 * 305 + 305 + 100)
check(#h.starts == 1 and near(h.T, 305), "100 s fora da previsão (servidor reiniciou): recomeça, o período fica")
h = SC.Learn(h, navio, 2, "arr", h.starts[1] + 160 + 2)
check(#h.starts == 1, "a outra parada do mesmo ciclo não conta como volta nova")
local _, _, Tr = SC.Offsets(navio, { [1] = 90 })
check(Tr == 290, "travessia medida (90 s) substitui a estimada no ciclo")

-- o planejador usa o horário: a espera é até a próxima saída na hora em que se chega ao cais
-- (cais a 500 jd, 7 jd/s: ~71 s; ciclo 440 s: sai às t0+20)
local barcoH = function(saida) return { [7] = { t0 = 1000 + saida - 20, T = 440 } } end
r = J.Plan(P(0, 0, 0), P(1, 0, 10), ctx({ now = 1000, sched = barcoH(60) }))       -- saiu aos 60 s
check(r and r.legs[2].k == "ship" and math.abs(r.legs[2].s - (1500 - 1000 - 500 / 7 + 200)) < 0.5 and r.legs[2].dep == 1500,
	"chegou depois da saída: espera a volta inteira (" .. (r and r.legs[2].s or 0) .. ")")
r = J.Plan(P(0, 0, 0), P(1, 0, 10), ctx({ now = 1000, sched = barcoH(80) }))       -- sai aos 80 s
check(r and math.abs(r.legs[2].s - (80 - 500 / 7 + 200)) < 0.5 and r.legs[2].dep == 1080 and r.legs[2].stop == 1 and r.legs[2].sid == 7,
	"chegou antes da saída: espera curta e a perna leva a hora de saída (" .. (r and r.legs[2].s or 0) .. ")")

-- o anunciador anuncia a parada mais perto dele (os dois zepelins da mesma torre têm plataformas próprias)
local frota = {
	{ id = 301, stops = { { c = 0, x = 2060, y = 290 }, { c = 0, x = -12450, y = 230 } } },
	{ id = 302, stops = { { c = 1, x = 1320, y = -4650 }, { c = 0, x = 2070, y = 255 } } },
}
local sid, k = T.NearestStop(frota, { c = 0, x = 2066, y = 260 }, 200)
check(sid == 302 and k == 2, "anunciador perto da plataforma do zepelim de Orgrimmar: parada 2 do 302")
check(T.NearestStop(frota, { c = 0, x = 0, y = 0 }, 200) == nil, "longe de todo cais: nenhuma parada")
-- quanto falta numa perna de barco com horário: até a saída + a travessia
local rb2 = { leg = 1, legs = { { k = "ship", a = P(0, 0, 0), b = P(1, 0, 0), s = 999, dep = 1100, ride = 200 } } }
check(math.abs(T.Remaining(rb2, P(0, 0, 0), 7, 1000) - 300) < 0.01, "barco com horário: 100 s até sair + 200 de travessia")
check(math.abs(T.Remaining(rb2, P(0, 0, 0), 7) - 999) < 0.01, "sem a hora: o custo da rota, como antes")

-- a contagem na seta e no painel (horário conhecido; now = hora do servidor)
local rs = { legs = { { k = "walk" }, { k = "ship", ship = "boat", name = "Menethil", dep = 1100, dock = 60, ride = 200 }, { k = "walk" } } }
check(WPT.LegText(rs, 1, 30, 1000):find("SAI 1m40s$"), "indo ao cais: quando sai (" .. WPT.LegText(rs, 1, 30, 1000) .. ")")
check(WPT.LegText(rs, 2, 0, 1000):find("CHEGA 40s$"), "no cais, antes de atracar: quando chega (" .. WPT.LegText(rs, 2, 0, 1000) .. ")")
check(WPT.LegText(rs, 2, 0, 1070):find("EMBARQUE 30s$"), "atracado: embarque e quando sai (" .. WPT.LegText(rs, 2, 0, 1070) .. ")")
check(not WPT.LegText(rs, 2, 0):find("CHEGA"), "sem a hora: como antes")

-- o grito escolhe o zepelim pelo destino; sem nome no texto, o mais perto
local cands = { { 285, 2, "Grom'gol", 18 }, { 302, 1, "Undercity", 22 } }
check(select(1, T.PickAnnounced(cands, "The zeppelin to Undercity has just arrived!")) == 302,
	"grito com o destino: o zepelim de Undercity, mesmo sendo o mais longe")
check(select(1, T.PickAnnounced(cands, "Zepelim chegou!")) == 285, "sem o nome no texto: o mais perto")

-- ── #23: caminho a pé pelo terreno ───────────────────────────────────────────
local TRN = load("Terrain.lua", {}).Terrain
local DIRS8 = { { -1, 0 }, { -1, 1 }, { 0, 1 }, { 1, 1 }, { 1, 0 }, { 1, -1 }, { 0, -1 }, { -1, -1 } }
-- quadrante 0 sintético: `bloq(r, c)` diz o que é parede, `agua(r, c)` o que é lago
local function quadranteSint(bloq, agua)
	local by, wb = {}, {}
	for r = 0, 31 do
		for c = 0, 31 do
			local v = 0
			if not bloq(r, c) then
				for d, rc in ipairs(DIRS8) do
					local nr, nc = r + rc[1], c + rc[2]
					if nr >= 0 and nr < 32 and nc >= 0 and nc < 32 and not bloq(nr, nc) then v = v + 2 ^ (d - 1) end
				end
			end
			by[#by + 1] = string.char(1, v)
		end
	end
	for i = 0, 127 do
		local v = 0
		for k = 0, 7 do
			local cel = i * 8 + k
			if agua and agua(math.floor(cel / 32), cel % 32) then v = v + 2 ^ k end
		end
		wb[#wb + 1] = string.char(1, v)
	end
	return { [0] = { [0] = table.concat(by) .. table.concat(wb) } }
end
local function mundo(r, c) return TRN.CellCenter(0, r, c) end
local function comprimento(pts)
	local s = 0
	for i = 2, #pts do s = s + math.sqrt((pts[i].x - pts[i - 1].x) ^ 2 + (pts[i].y - pts[i - 1].y) ^ 2) end
	return s
end
-- parede na coluna 10 com brecha embaixo (linhas 26+)
local parede = quadranteSint(function(r, c) return c == 10 and r < 26 end)
local A, B = mundo(5, 5), mundo(5, 15)
local cam = TRN.Path(parede, A, B, 20000)
check(cam and #cam >= 2, "há caminho pela brecha da parede")
check(cam and comprimento(cam) > 2.5 * math.sqrt((A.x - B.x) ^ 2 + (A.y - B.y) ^ 2), "o caminho contorna a parede (bem mais longo que a reta)")
check(cam and math.abs(cam[#cam].x - B.x) < 0.01 and math.abs(cam[1].x - A.x) < 0.01, "começa no jogador e termina no destino")
local fechada = quadranteSint(function(r, c) return c == 10 end)
check(TRN.Path(fechada, A, B, 20000) == nil, "parede inteira: sem caminho (volta a reta)")
-- lago no meio: contorna se a volta for curta
local lago = quadranteSint(function() return false end, function(r, c) return c >= 9 and c <= 11 and r >= 3 and r <= 7 end)
cam = TRN.Path(lago, A, B, 20000)
local molhou = false
for i = 2, #(cam or {}) do                      -- percorre cada segmento a cada 2 jd
	local p0, p1 = cam[i - 1], cam[i]
	local len = math.sqrt((p1.x - p0.x) ^ 2 + (p1.y - p0.y) ^ 2)
	for t = 0, len, 2 do
		local r, c = TRN.Cell(p0.x + (p1.x - p0.x) * t / len, p0.y + (p1.y - p0.y) * t / len)
		if c >= 9 and c <= 11 and r >= 3 and r <= 7 then molhou = true end
	end
end
check(cam and not molhou, "lago pequeno no meio: contorna em vez de nadar")

-- a seta mira o ponto do caminho ~25 jd à frente; o que falta é pelo caminho
local L_ = { { c = 0, x = 0, y = 0 }, { c = 0, x = 100, y = 0 }, { c = 0, x = 100, y = 100 } }   -- 100 norte, 100 oeste
local ax, ay, falta = TRN.Ahead(L_, { c = 0, x = 90, y = 2 }, 25)
check(near(ax, 100) and near(ay, 15) and near(falta, 110), "virando a esquina: mira o trecho seguinte e falta 110 jd (" .. ax .. "," .. ay .. "," .. falta .. ")")
ax, ay, falta = TRN.Ahead(L_, { c = 0, x = 100, y = 95 }, 25)
check(near(ax, 100) and near(ay, 100) and near(falta, 5), "perto do fim: mira o destino")
-- terreno de verdade (Kalimdor): Ratchet -> Encruzilhada existe e contorna o relevo
local K = load("Terrain1.lua", {}).terrain
local rat, cru = { c = 1, x = -894.6, y = -3773.0 }, { c = 1, x = -441.8, y = -2596.4 }
cam = TRN.Path(K, rat, cru, 300000)
local reta = math.sqrt((rat.x - cru.x) ^ 2 + (rat.y - cru.y) ^ 2)
check(cam and comprimento(cam) > reta and comprimento(cam) < 1.6 * reta,
	"real: Ratchet -> Encruzilhada pelo terreno (" .. (cam and math.floor(comprimento(cam)) or 0) .. " jd; reta " .. math.floor(reta) .. ")")

-- a perna a pé com caminho: desenho e "quanto falta" seguem o caminho
local RMT = load("RouteMap.lua", { Terrain = TRN }).RouteMap
local perna = { k = "walk", a = P(0, 0, 0), b = P(0, 100, 100),
	path = { P(0, 0, 0), P(0, 100, 0), P(0, 100, 100) } }
pts = RMT.LegPoints(perna, P(0, 90, 2))
check(#pts == 9 and pts[1] == 90 and pts[4] == 100 and pts[5] == 0 and pts[7] == 100 and pts[8] == 100,
	"a pé com caminho: do jogador, o resto do caminho (sem o trecho já andado)")
local TT = load("Travel.lua", { Journey = J, Terrain = TRN }).Travel
check(math.abs(TT.Remaining({ leg = 1, legs = { perna } }, P(0, 90, 2), 10) - 11) < 0.01,
	"quanto falta a pé: pelo caminho (110 jd a 10 jd/s), não em reta")
check(math.abs(TT.Remaining({ leg = 1, legs = { { k = "walk", a = P(0, 0, 0), b = P(0, 100, 100) } } }, P(0, 90, 2), 10)
	- math.sqrt(10 ^ 2 + 98 ^ 2) / 10) < 0.01, "sem caminho: em reta, como antes")

print(("ok: %d checks"):format(checks))
