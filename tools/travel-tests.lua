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
check(r.legs[1].k == "walk", "voo poupa quase o mesmo: guarda a pedra (" .. kinds(r) .. ")")
r = J.Plan(P(0, 0, 0), P(0, 3000, 0), ctx({ known = {}, hearth = { c = 0, x = 3000, y = 10, wait = 0 } }))
check(r.legs[1].k == "hearth", "sem voo, pedra pronta perto do alvo: usa a pedra (" .. kinds(r) .. ")")
check(r.legs[1].s == 10 and r.legs[1].gasto == 300 and r.s > 300, "a perna diz o tempo real; o plano conta o gasto da pedra")
r = J.Plan(P(0, 0, 0), P(0, 3000, 0), ctx({ hearth = { c = 0, x = 3000, y = 10, wait = 900 } }))
check(r.legs[1].k ~= "hearth", "pedra com 15 min de recarga: não usa (" .. kinds(r) .. ")")
r = J.Plan(P(0, 0, 0), P(0, 1000, 0), ctx({ hearth = { c = 0, x = 1000, y = 5, wait = 0 } }))
check(r.legs[1].k == "walk", "a pé em 2 min: não gasta 1 h de pedra para poupar 1 min (" .. kinds(r) .. ")")
r = J.Plan(P(0, 0, 0), P(0, 1000, 0), ctx({ teleports = { { c = 0, x = 1000, y = 5, cast = 10, spell = 1 } } }))
check(r.legs[1].k == "walk", "teleporte gasta reagente: mesma conta (" .. kinds(r) .. ")")

r = J.Plan(P(0, 0, -400), P(1, 0, 100), ctx())
check(r and kinds(r) == "walk,ship,walk", "outro continente: barco (" .. (r and kinds(r) or "nil") .. ")")
check(math.abs(r.legs[2].s - 300) < 0.01, "barco custa espera + travessia")
check(r.legs[2].ship == "boat", "a perna diz que é barco")

check(J.Plan(P(0, 0, 0), P(5, 0, 0), ctx()) == nil, "continente sem ligação: sem rota")

r = J.Plan(P(0, 9000, 8990), P(0, 12000, 12010), ctx())
check(kinds(r) == "walk,tram,walk", "bonde quando compensa (" .. kinds(r) .. ")")

r = J.Plan(P(0, 0, 0), P(0, 3000, 0), ctx({ known = {}, teleports = { { c = 0, x = 3000, y = 0, cast = 10, label = "Teleporte" } } }))
check(r.legs[1].k == "teleport", "sem voo, teleporte conhecido ao lado do alvo vence (" .. kinds(r) .. ")")

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

-- o que entra no plano. Pedra sem lugar gravado não entra: o personagem novo está vinculado ao
-- início, e o palpite da estalagem da zona o mandava de volta para lá com a pedra em recarga.
local function contexto(bind, fantasma)
	UnitFactionGroup = function() return "Horde" end
	UnitIsGhost = function() return fantasma end
	GetRealmName = function() return "Reino" end
	C_Container = { GetItemCooldown = function() return 0, 0, 1 end }
	local c = load("Travel.lua", { Journey = J, char = { bind = bind, taxi = { [1] = true } }, db = {},
		travel = { nodes = { [1] = { c = 1, x = 5, y = 5, f = "H" } }, teleports = { { spell = 18960, node = 1 } } },
		ItemCount = function() return 1 end, IsSpellKnown = function() return true end,
		SpellCooldown = function() return nil end, SpellName = function() return "Teleporte" end,
	}).Travel:Context()
	UnitFactionGroup, UnitIsGhost, GetRealmName, C_Container = nil, nil, nil, nil
	return c
end
local comPedra = { leg = 1, legs = { { k = "hearth", s = 10, gasto = 300, a = P(0, 0, 0), b = P(0, 3000, 0) } } }
check(T.Remaining(comPedra, P(0, 0, 0), 7) == 10, "o tempo mostrado é o real")
check(T.Remaining(comPedra, P(0, 0, 0), 7, nil, true) == 310, "a comparação com rota nova conta o gasto, como o plano")
check(T.ShouldReplace({ s = T.Remaining(comPedra, P(0, 0, 0), 7, nil, true) }, { s = 250 }),
	"quem recusou a pedra e foi a pé: a rota a pé assume quando compensa")
local gravada = { name = "Razor Hill", c = 1, x = 10, y = 20 }
local c1 = contexto(gravada, false)
check(c1.hearth and c1.hearth.x == 10 and c1.hearth.wait == 0, "pedra num lugar gravado entra no plano")
check(#c1.teleports == 1 and c1.teleports[1].label == "Teleporte", "teleporte conhecido entra no plano")
check(contexto({ name = "Deathknell" }, false).hearth == nil, "sem lugar gravado: sem pedra")
local aqui, ali = P(0, 100, 200), P(0, 900, 900)
local b = T.LearnBind(nil, "Shadow Grave", "Shadow Grave", aqui)
check(b.c == 0 and b.x == 100 and b.y == 200, "personagem novo: nasce na subzona da pedra, o ponto é onde ele está")
b = T.LearnBind(nil, "Razor Hill", "Valley of Trials", aqui)
check(b.name == "Razor Hill" and b.c == nil, "primeiro login longe da pedra: só o nome")
b = T.LearnBind(b, "Razor Hill", "Durotar Sands", ali)
check(b.c == nil, "fora da subzona dela: segue sem ponto")
b = T.LearnBind(b, "Razor Hill", "Razor Hill", ali)
check(b.x == 900, "quem vinculou antes do addon aprende ao pisar na subzona")
b = T.LearnBind(b, "Razor Hill", "Razor Hill", aqui)
check(b.x == 900, "o ponto aprendido não anda com o jogador")
b = T.LearnBind(b, "Colina", "Barrens", aqui)
check(b.name == "Colina" and b.c == nil, "nome mudou sem vincular (idioma, addon desligado): esquece o ponto")
b = T.LearnBind(b, "Brill", "Valley of Trials", aqui, true)
check(b.name == "Brill" and b.x == 100, "acabou de vincular: é onde ele está, mesmo com outra subzona")
b = T.LearnBind(b, "Brill", "Brill", ali, true)
check(b.x == 900, "vincular de novo na mesma estalagem atualiza o ponto")
b = T.LearnBind(b, "Brill", "Brill", aqui)
check(T.LearnBind(b, nil, "Brill", aqui) == b and T.LearnBind(b, "", "Brill", aqui) == b, "cliente sem resposta: não mexe")
check(T.LearnBind(b, "Brill", "Brill", nil) == b, "sem posição: não mexe")
check(T.LearnBind(nil, "Brill", "", aqui).c == nil, "subzona vazia não casa com nada")
check(contexto(nil, false).hearth == nil, "sem pedra vinculada: nada")
local c2 = contexto(gravada, true)
check(c2.hearth == nil and c2.teleports == nil, "fantasma não usa pedra nem teleporte")
check(c1.known[1] and next(c2.known) == nil, "nem voo, que vale para quem está vivo")

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

-- #43: cantos arredondados (só no desenho) e trechos contínuos para o pontilhado
local function maxCurva(xy)
	local m = 0
	for i = 3, #xy - 3, 2 do
		local a1 = math.atan2(xy[i + 1] - xy[i - 1], xy[i] - xy[i - 2])
		local a2 = math.atan2(xy[i + 3] - xy[i + 1], xy[i + 2] - xy[i])
		if xy[i] ~= xy[i - 2] or xy[i + 1] ~= xy[i - 1] then
			if xy[i + 2] ~= xy[i] or xy[i + 3] ~= xy[i + 1] then
				m = math.max(m, math.abs((a2 - a1 + math.pi) % (2 * math.pi) - math.pi))
			end
		end
	end
	return math.deg(m)
end
local rd = G.Round({ 0, 0, 100, 0, 100, 100 }, 20)
check(rd[1] == 0 and rd[2] == 0 and rd[#rd - 1] == 100 and rd[#rd] == 100, "canto redondo: as pontas ficam")
check(maxCurva(rd) < 35, "canto de 90° vira curva suave (maior virada " .. math.floor(maxCurva(rd)) .. "°)")
local perto = math.huge
for i = 1, #rd - 1, 2 do perto = math.min(perto, math.sqrt((rd[i] - 100) ^ 2 + rd[i + 1] ^ 2)) end
check(perto > 1 and perto < 20, "a curva corta o canto, mas perto dele (" .. math.floor(perto) .. " jd)")
check(#G.Round({ 0, 0, 50, 0 }, 20) == 4, "reta sem canto fica igual")
local function corta20(x0, y0, x1, y1)        -- recorte de mentira: só x <= 20
	if x0 > 20 and x1 > 20 then return nil end
	local function em20(ax, ay, bx, by) local t = (20 - ax) / (bx - ax); return 20, ay + (by - ay) * t end
	if x0 > 20 then x0, y0 = em20(x1, y1, x0, y0) end
	if x1 > 20 then x1, y1 = em20(x0, y0, x1, y1) end
	return x0, y0, x1, y1
end
local runs = G.Runs({ 0, 0, 10, 0, 10, 10 }, corta20)
check(#runs == 1 and #runs[1] == 6, "linha toda dentro: um trecho só, o pontilhado não recomeça nas curvas")
runs = G.Runs({ 0, 0, 10, 0, 30, 0, 10, 10, 0, 10 }, corta20)
check(#runs == 2 and #runs[1] == 6 and runs[1][5] == 20 and #runs[2] == 6 and runs[2][1] == 20,
	"sai e volta pela borda: dois trechos, cortados nela")
runs = G.Runs({ 0, 0, false, false, 10, 0, 20, 0 }, corta20)
check(#runs == 1 and runs[1][1] == 10, "ponto fora do mapa aberto (outro continente) quebra o trecho")
-- setas no pontilhado: a cada tantos pontos, apontando para onde a linha segue (a seta sem
-- girar aponta para cima; a rotação é anti-horária, como SetRotation)
local function aponta(rot) return -math.sin(rot), math.cos(rot) end
local mk = G.Marks({ 0, 0, 100, 0 }, 10, 3)
local setas, pontos, ax_, ay_ = 0, 0, nil, nil
for k = 1, #mk - 2, 3 do
	if mk[k + 2] then setas = setas + 1; ax_, ay_ = aponta(mk[k + 2]) else pontos = pontos + 1 end
end
check(setas == 3 and pontos == 8 and math.abs(ax_ - 1) < 1e-6 and math.abs(ay_) < 1e-6,
	"linha para a direita: 1 seta a cada 3 pontos, apontando para a direita")
mk = G.Marks({ 0, 0, 0, 100 }, 10, 3, true)
ax_, ay_ = aponta(mk[9])
check(mk[9] and math.abs(ax_) < 1e-6 and math.abs(ay_ + 1) < 1e-6,
	"no canvas (y para baixo), descendo: a seta aponta para baixo")

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

-- ── Textos (#31) ─────────────────────────────────────────────────────────────
do
	-- arquivos do addon, pela ordem do TOC
	local arquivos = {}
	for linha in io.lines(ROOT .. "/Lodestar.toc") do
		linha = linha:gsub("\r", ""):gsub("\\", "/")
		if linha:match("%.lua$") and not linha:match("^#") then arquivos[#arquivos + 1] = linha end
	end
	local codigo, porArquivo = {}, {}
	for _, f in ipairs(arquivos) do
		local h = io.open(ROOT .. "/" .. f)
		if h then
			local t = h:read("*a"); h:close()
			porArquivo[f] = t
			if not f:match("^Locale") then codigo[#codigo + 1] = t end
		end
	end
	codigo = table.concat(codigo, "\n")

	-- texto ao jogador não fica fixo no código (o de depuração, sim)
	local fixas = {}
	local permitido = { "LODESTAR", "Lodestar", "···", "  /ls gather " }
	for f, t in pairs(porArquivo) do
		if not f:match("^Locale") and not f:match("^Libs/") then
			local n, emDebug = 0, false
			for linha in (t .. "\n"):gmatch("(.-)\n") do
				n = n + 1
				if linha:match("^function [%w%.:]*Debug%(") then emDebug = true
				elseif linha:match("^end") then emDebug = false end
				local lit = linha:match(':Printf?%("([^"]*)"') or linha:match('AddLine%("([^"]*)"')
					or linha:match('SetText%("([^"]*)"')
				-- cor e formato não são texto: o que sobra precisa ter palavra
				lit = lit and lit:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("%%[sd]", "")
				local livre = lit and lit:match("^FlightMap:")      -- diagnóstico do mapa de voo
				for _, ok in ipairs(permitido) do if lit == ok then livre = true end end
				if lit and lit:match("%a%a") and not livre and not emDebug
					and not linha:match("dbg") and not linha:match("debug") then
					fixas[#fixas + 1] = f .. ":" .. n .. " " .. lit
				end
			end
		end
	end
	table.sort(fixas)
	check(#fixas == 0, "texto fixo no código (vai para o ns.L): " .. table.concat(fixas, " | "))

	-- toda chave do enUS é usada; nenhum idioma define chave que o enUS não tem
	local function chaves(f)
		local t = {}
		for k in porArquivo[f]:gmatch("\nL%.([%w_]+)%s*=") do t[k] = true end
		return t
	end
	local en = chaves("Locales/enUS.lua")
	local tokens = {}
	for _, xml in ipairs({ "Guides/Leveling/Leveling.xml", "Guides/Special.xml" }) do
		local dir = xml:match("^(.*)/")
		for rel in io.open(ROOT .. "/" .. xml):read("*a"):gmatch('file="([^"]+)"') do
			local h = io.open(ROOT .. "/" .. dir .. "/" .. rel)
			if h then
				for tk in h:read("*a"):gmatch("{(%w+)}") do tokens[tk:upper()] = true end
				h:close()
			end
		end
	end
	local nomes = {}                                 -- "x" e `x = true` no código
	for w in codigo:gmatch('"([%w_ ]+)"') do nomes[w] = true end
	for w in codigo:gmatch("([%w_]+)%s*=%s*true") do nomes[w] = true end
	local DIN = { "SERVICE_", "V3_NAV_SVC_", "SHIP_", "TRAVEL_KIND_", "VERB_", "CAT_", "PROF_", "COMPASS_", "CONS_", "CONT_", "RACE_MS_" }
	local function usada(k)
		if codigo:find(k, 1, true) then return true end
		local suf = k:match("^NOTE_(.+)$") or k:match("^TIP_(.+)$")
		if suf and tokens[suf] then return true end
		-- status e specs do Equipamento (GearPlan.lua): a chave sai do nome curto em código ("str", "arms")
		local stat = k:match("^STAT_([%u%d]+)$")
		if stat and nomes[stat:lower()] then return true end
		local spec = k:match("^SPEC_%u+_(%w+)$")
		if spec and nomes[spec] then return true end
		for _, pre in ipairs(DIN) do
			if k:sub(1, #pre) == pre then
				local s = k:sub(#pre + 1)
				local titulo = s:lower():gsub("_", " "):gsub("(%a)(%w*)", function(a, b) return a:upper() .. b end)
				if pre == "PROF_" or nomes[s] or nomes[s:lower()] or nomes[titulo] then return true end
			end
		end
		return nomes[k] == true
	end
	local mortas = {}
	for k in pairs(en) do if not usada(k) then mortas[#mortas + 1] = k end end
	table.sort(mortas)
	check(#mortas == 0, #mortas .. " chaves sem uso no enUS: " .. table.concat(mortas, " "))
	local sobras = {}
	for _, f in ipairs(arquivos) do
		if f:match("^Locales/") and f ~= "Locales/enUS.lua" then
			for k in pairs(chaves(f)) do if not en[k] then sobras[#sobras + 1] = f .. ":" .. k end end
		end
	end
	table.sort(sobras)
	check(#sobras == 0, "chave fora do enUS: " .. table.concat(sobras, " "))
end
-- nome da profissão com espaço ("First Aid") acha a chave PROF_FIRST_AID
local Lpf = setmetatable({ PROF_FIRST_AID = "Primeiros Socorros" }, { __index = function(_, k) return "[" .. k .. "]" end })
local TPf = load("TravelPanel.lua", { L = Lpf, On = function() end, Every = function() end, UI = {} }).TravelPanel
check(TPf.ProfLabel("First Aid") == "Primeiros Socorros", "First Aid acha PROF_FIRST_AID (" .. TPf.ProfLabel("First Aid") .. ")")

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
-- aprender: uma observação dá a fase; o período sai de duas da mesma parada e evento
local h1 = SC.Learn(nil, navio, 1, "arr", 1000)
check(h1.T == nil and h1.t0 == 1000, "uma chegada: fase conhecida, período ainda não")
check(SC.NextDeparture(navio, 1, 1010, h1) == 1060, "sem período aprendido, a volta atual vale (sai às 1060)")
check(SC.NextDeparture(navio, 1, 1000 + 300 + 10, h1) == nil, "sem período aprendido, além de uma volta não se adivinha")
local h2 = SC.Learn(h1, navio, 1, "arr", 1000 + 356)          -- estimativa 300, real 356 (+19%)
check(h2.T and near(h2.T, 356), "duas chegadas na mesma parada: período aprendido 356 (" .. tostring(h2.T) .. ")")
check(SC.NextDeparture(navio, 1, 1356 + 5 * 356 + 10, h2) == 1356 + 5 * 356 + 60, "com período aprendido, vale várias voltas adiante")
local h3 = SC.Learn(h2, navio, 1, "arr", 1356 + 2 * 356 + 100)  -- 100 s fora: servidor reiniciou
check(near(h3.T, 356) and h3.t0 == 1356 + 2 * 356 + 100, "fora da previsão: a fase recomeça, o período fica")
check(SC.NextDeparture(navio, 1, h3.last + 13 * 3600, h3) == nil, "observação de mais de 12 h: o horário é ignorado")
local h4 = SC.Learn(SC.Learn(nil, navio, 1, "arr", 1000), navio, 2, "arr", 1000 + 160 + 50)
check(h4.T == nil, "parada diferente não ensina o período (só a fase)")
local h5 = SC.Learn(SC.Learn(nil, navio, 1, "arr", 1000), navio, 1, "arr", 1000 + 10 * 356)
check(h5.T == nil, "dez voltas depois: longe demais para saber quantas foram")
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
-- pedra até o cais e barco com horário: o gasto da pedra não é tempo que passa, então a saída
-- vale pela chegada de verdade ao cais, não um barco depois
r = J.Plan(P(0, 3500, 0), P(1, 0, 10), ctx({ now = 1000, sched = barcoH(80), known = {},
	hearth = { c = 0, x = 0, y = -500, wait = 0 } }))
local barcoDaPedra
for _, l in ipairs(r and r.legs or {}) do if l.k == "ship" then barcoDaPedra = l end end
check(r and r.legs[1].k == "hearth", "longe do cais: vai de pedra (" .. (r and kinds(r) or "sem rota") .. ")")
check(barcoDaPedra and barcoDaPedra.dep == 1080, "a pedra leva ao cais a tempo do barco das " .. tostring(barcoDaPedra and barcoDaPedra.dep))
-- horário vencido: NextDeparture dá nil e a conta estourava. O plano sai pela espera estimada.
local semHorario = J.Plan(P(0, 0, 0), P(1, 0, 10), ctx({ now = 1000 }))
local vencidos = {
	{ { [7] = { t0 = 200, last = 200 } }, "sem período aprendido, passou uma volta" },
	{ { [7] = { t0 = 1000 - 13 * 3600, last = 1000 - 13 * 3600, T = 440 } }, "observação de mais de 12 h" },
}
for _, v in ipairs(vencidos) do
	local ok, plano = pcall(J.Plan, P(0, 0, 0), P(1, 0, 10), ctx({ now = 1000, sched = v[1] }))
	check(ok and plano and plano.legs[2].k == "ship" and plano.legs[2].dep == nil, v[2] .. ": não estoura (" .. tostring(plano) .. ")")
	check(math.abs(plano.legs[2].s - semHorario.legs[2].s) < 0.5, v[2] .. ": igual a quem não tem horário")
end

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
-- `tq` quadrantes por lado (1 se omitido)
local function quadranteSint(bloq, agua, tq)
	tq = tq or 1
	local lado, grade = 32 * tq, {}
	for qr = 0, tq - 1 do
		for qc = 0, tq - 1 do
			local by, wb = {}, {}
			for r = qr * 32, qr * 32 + 31 do
				for c = qc * 32, qc * 32 + 31 do
					local v = 0
					if not bloq(r, c) then
						for d, rc in ipairs(DIRS8) do
							local nr, nc = r + rc[1], c + rc[2]
							if nr >= 0 and nr < lado and nc >= 0 and nc < lado and not bloq(nr, nc) then v = v + 2 ^ (d - 1) end
						end
					end
					by[#by + 1] = string.char(1, v)
				end
			end
			for i = 0, 127 do
				local v = 0
				for k = 0, 7 do
					local cel = i * 8 + k
					if agua and agua(qr * 32 + math.floor(cel / 32), qc * 32 + cel % 32) then v = v + 2 ^ k end
				end
				wb[#wb + 1] = string.char(1, v)
			end
			grade[qr * 64 + qc] = table.concat(by) .. table.concat(wb)
		end
	end
	return { [0] = grade }
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
-- parede inteira entre duas regiões grandes (não ilhas): a segunda busca cruza a parede onde ela é mais fina
-- (issue #99: a rampa estreita que a grade não tem), uma célula só, em vez de a reta cortar tudo
local fechada = quadranteSint(function(r, c) return c == 48 end, nil, 3)
local cruza = TRN.Path(fechada, mundo(5, 40), mundo(5, 56), 20000)
check(cruza and #cruza >= 2 and comprimento(cruza) < 1.2 * 16 * 16.7, "parede inteira: cruza no ponto mais fino, sem volta")
check(cruza and cruza.solto, "o caminho da segunda busca vem marcado (quem chama não o refaz a cada desvio)")
-- parede inteira com uma porta estreita lá embaixo: a porta, não a parede (passo travado custa caro)
local porta = quadranteSint(function(r, c) return c == 48 and r ~= 30 end, nil, 3)
local pela = TRN.Path(porta, mundo(5, 40), mundo(5, 56), 40000)
local desceu = false
for _, q in ipairs(pela or {}) do if select(1, TRN.Cell(q.x, q.y)) >= 25 then desceu = true end end
check(pela and desceu, "parede com porta: o caminho vai pela porta")
-- dados reais: a Revantusk Village (The Hinterlands) e o platô de Aerie Peak. Na grade v1 (16,7 jd por célula, só
-- terreno) a rampa do litoral não cabia e só a segunda busca (solto) achava caminho; na v2 (chão fino de 2,08 jd,
-- #106) a rampa é chão ligado: busca normal, sem passagem gravada, subindo pela rampa de verdade
local EK = load("Terrain0.lua", {}).terrain
local revan, aerie = { c = 0, x = -635.3, y = -4720.5 }, { c = 0, x = 283.7, y = -2002.8 }
local ra, ar = TRN.Path(EK, revan, aerie, 150000), TRN.Path(EK, aerie, revan, 150000)
check(ra and ar and #ra > 4 and #ar > 4, "Revantusk <-> Aerie Peak: caminho pelo terreno nos dois sentidos")
local function naRampa(p)
	for _, q in ipairs(p or {}) do if q.x > -235 and q.x < -150 and q.y > -4460 and q.y < -4330 then return true end end
end
check(ra and ar and not ra.solto and not ar.solto and naRampa(ra) and naRampa(ar),
	"Revantusk <-> Aerie Peak sem passagem gravada: busca normal, pela rampa (grade v2)")
do -- #104 (bloco próprio: o arquivo já passa de 200 locais no topo)
-- com a rampa gravada em jogo (PassagesData.lua, #104): a busca normal já sai pela rampa, nos dois sentidos
local EKp = load("Terrain0.lua", {}).terrain
EKp.passages = load("PassagesData.lua", {}).passagesData
local function pelaRampa(p)
	for _, q in ipairs(p or {}) do if q.x > -235 and q.x < -150 and q.y > -4460 and q.y < -4330 then return true end end
end
local rr, rv = TRN.Path(EKp, revan, aerie, 150000), TRN.Path(EKp, aerie, revan, 150000)
check(rr and rv and not rr.solto and not rv.solto and pelaRampa(rr) and pelaRampa(rv),
	"Revantusk <-> Aerie Peak com a rampa gravada: busca normal, pela rampa")
-- como no jogo (passagens geradas + gravadas): a rampa gravada que a grade v2 já liga não marca a rota como "por
-- passagem" — senão o limite de volta derrubava a rota real Arathi <-> Revantusk (~5,8 km) e a segunda busca cruzava o
-- penhasco (revisão do #106)
local EKg = load("Terrain0.lua", {}).terrain
EKg.passages = {}
for _, p in ipairs(load("TerrainPassages.lua", {}).passagesTerrain or {}) do EKg.passages[#EKg.passages + 1] = p end
for _, p in ipairs(EKp.passages) do EKg.passages[#EKg.passages + 1] = p end
local hammerfall = { c = 0, x = -916.3, y = -3496.9 }
local hr, rh = TRN.Path(EKg, hammerfall, revan, 150000), TRN.Path(EKg, revan, hammerfall, 150000)
check(hr and rh and not hr.solto and not rh.solto and comprimento(hr) > 4000 and comprimento(rh) > 4000,
	"Hammerfall <-> Revantusk no jogo: a rota real da grade, sem cruzar o penhasco")
-- Aerie Peak -> Chillwind não pode descer a rampa e nadar 4 km pela costa (volta grande demais por passagem fica sem
-- caminho). Na grade v1 a rampa era a única ligação do platô; na v2 (#106) a saída para Hillsbrad existe na grade e o
-- caminho vai por ela — nunca pela rampa e o mar
local chillwind, tarren = { c = 0, x = 931.3, y = -1430.1 }, { c = 0, x = -0.1, y = -859.9 }
local ac, at = TRN.Path(EKp, aerie, chillwind, 150000), TRN.Path(EKp, aerie, tarren, 150000)
check((ac == nil or not pelaRampa(ac)) and (at == nil or not pelaRampa(at)),
	"Aerie Peak -> Chillwind / Tarren Mill: nada de descer a rampa e dar a volta pelo mar")
check(TRN.VoltaDemais({ { x = 0, y = 0 }, { x = 0, y = 5000 }, { x = 100, y = 5000 }, { x = 100, y = 0 } },
	{ x = 0, y = 0 }, { x = 100, y = 0 }) and not TRN.VoltaDemais({ { x = 0, y = 0 }, { x = 200, y = 300 },
	{ x = 300, y = 0 } }, { x = 0, y = 0 }, { x = 300, y = 0 }), "volta demais: 2x a reta e 2000 jd a mais")
-- só por passagem: rota longa só da grade (Revantusk -> Light's Hope) segue existindo, sem a marca de passagem (o
-- limite não a derruba). Na grade v2 (#106) ela sobe pela rampa de verdade — que a passagem gravada cobre —, então
-- o "só da grade" se confere sem as passagens; com elas, o caminho também existe
local lightsHope = { c = 0, x = 2271.1, y = -5340.9 }
local costa = TRN.Path(EK, revan, lightsHope, 150000)
check(costa and not costa.passagem, "rota longa só da grade segue existindo, sem a marca de passagem")
check(TRN.Path(EKp, revan, lightsHope, 150000) ~= nil, "com a rampa gravada, a rota longa também existe")
-- Ironforge (#106): a cidade fica debaixo do morro. A v2 fica com o piso de dentro onde há piso de modelo bem abaixo
-- do terreno (não o alto do morro): do mestre de voo, sai-se pelo portão — não por cima das montanhas via Loch Modan
local ifFM, portao = { c = 0, x = -4821.8, y = -1155.4 }, { c = 0, x = -5160, y = -870 }
local ifp = TRN.Path(EK, ifFM, portao, 150000)
check(ifp and comprimento(ifp) < 1000, "Ironforge: do mestre de voo ao lado de fora do portão, menos de 1 km ("
	.. (ifp and math.floor(comprimento(ifp)) or "nil") .. " jd)")
local kharanos = { c = 0, x = -5590, y = -500 }
local ifk = TRN.Path(EK, ifFM, kharanos, 150000)
local retaK = math.sqrt((ifFM.x - kharanos.x) ^ 2 + (ifFM.y - kharanos.y) ^ 2)
check(ifk and comprimento(ifk) < 1.6 * retaK, "Ironforge -> Kharanos pelo portão, sem a volta pelas montanhas ("
	.. (ifk and math.floor(comprimento(ifk)) or "nil") .. " jd; reta " .. math.floor(retaK) .. ")")
-- pé do penhasco: do alto à praia abaixo dos Overlook Cliffs, ~1,2 km pela rampa (8x a reta de 143 jd), real
local alto, praia = { c = 0, x = 158, y = -4592 }, { c = 0, x = 184, y = -4732 }
check(TRN.Path(EKp, alto, praia, 150000) ~= nil, "pé do penhasco: o caminho pela rampa não é cortado")
end
do -- o limite de volta vale só para caminho por passagem: volta longa só da grade (> 2x a reta e > 2000 jd a mais),
-- com uma passagem gravada longe dali, segue existindo, pela busca normal e sem a marca de passagem
local volta = quadranteSint(function(r, c) return c == 48 and r < 86 end, nil, 3)
local outra = {}
for col = 10, 20 do local m = mundo(40, col); outra[#outra + 1] = m.x; outra[#outra + 1] = m.y end
volta.passages = { { c = 0, pts = outra } }
local va, vb = mundo(5, 43), mundo(5, 53)
local vp = TRN.Path(volta, va, vb, 40000)
local vreta = math.sqrt((va.x - vb.x) ^ 2 + (va.y - vb.y) ^ 2)
check(vp and comprimento(vp) > 2 * vreta and comprimento(vp) - vreta > 2000, "a volta da grade é longa de verdade ("
	.. (vp and math.floor(comprimento(vp)) or "nil") .. " jd)")
check(vp and not vp.passagem and not vp.solto, "volta longa só da grade: existe, sem passagem e sem a segunda busca")
end
do -- #106: lugares com nome, como em jogo (os dois continentes, as passagens geradas do chão fino e as gravadas)
local G2 = load("Terrain0.lua", {})
load("Terrain1.lua", G2)
local Dj = G2.terrain
Dj.passages = {}
for _, p in ipairs(load("TerrainPassages.lua", {}).passagesTerrain or {}) do Dj.passages[#Dj.passages + 1] = p end
for _, p in ipairs(load("PassagesData.lua", {}).passagesData or {}) do Dj.passages[#Dj.passages + 1] = p end
local function passaPor(p, x0, x1, y0, y1)
	for i = 2, #(p or {}) do                              -- cada trecho, a cada 2 jd
		local a, b = p[i - 1], p[i]
		local L = math.sqrt((b.x - a.x) ^ 2 + (b.y - a.y) ^ 2)
		for t = 0, L, 2 do
			local x, y = a.x + (b.x - a.x) * t / math.max(L, 1e-9), a.y + (b.y - a.y) * t / math.max(L, 1e-9)
			if x >= x0 and x <= x1 and y >= y0 and y <= y1 then return true end
		end
	end
	return false
end
-- nome, de, para, razão máxima sobre a reta, busca normal exigida, caixa {x0, x1, y0, y1} por onde tem de passar
local lugares = {
	{ "Ironforge: mestre de voo -> fora do portão (cidade por dentro)", { 0, -4821.8, -1155.4 }, { 0, -5160, -870 }, 2.0, true },
	{ "Thorium Point: mestre da Aliança -> da Horda (plataformas)", { 0, -6552.6, -1168.3 }, { 0, -6554.9, -1100.1 }, 3.0 },
	{ "Thandol Span: Wetlands -> Arathi pelo tabuleiro", { 0, -2490, -2470 }, { 0, -2252, -2465 }, 1.4, true,
		{ -2440, -2300, -2510, -2440 } },
	{ "Thousand Needles: ponte de corda sobre o cânion", { 1, -4900, -1878 }, { 1, -5010.3, -1892 }, 1.6 },
	{ "Timbermaw Hold: túnel de Felwood a Moonglade", { 1, 6815, -2092 }, { 1, 7380, -2195 }, 1.6, true,
		{ 7000, 7250, -2260, -2060 } },
	{ "Revantusk Village -> Aerie Peak pela rampa", { 0, -635.3, -4720.5 }, { 0, 283.7, -2002.8 }, 1.3, true,
		{ -235, -150, -4460, -4330 } },
	-- minas e entradas de caverna: de dentro (a origem do WMO) até fora, ~100 jd (no chão fino: 1,0-1,3x a reta)
	{ "Fargodeep Mine (Elwynn): de dentro para fora", { 0, -9834, 194 }, { 0, -9760, 120 }, 2.0 },
	{ "Echo Ridge Mine (Northshire): de dentro para fora", { 0, -8646, -132 }, { 0, -8560, -180 }, 2.0 },
	-- (a grade, com os andares da entrada, dava ~380 jd; a rota fina nomeada no gerador dá os ~182 do chão fino)
	{ "Wailing Caverns (Barrens): da entrada para fora", { 1, -929, -2095 }, { 1, -800, -2000 }, 2.0, true },
	{ "Deadmines (Moonbrook): da entrada para fora", { 0, -11099, 1528 }, { 0, -11030, 1450 }, 2.0 },
	-- Jasperlode Mine: do fundo (o piso mais baixo do WMO md_spidermine) até fora, pela boca da mina (a origem do WMO);
	-- no chão fino, 210 jd (1,05x)
	{ "Jasperlode Mine (Elwynn): do fundo para fora, pela boca", { 0, -9043, -611 }, { 0, -9243, -611 }, 1.6, true,
		{ -9175, -9135, -625, -565 } },
	-- Stormwind: do Trade District (casa de leilões) ao porto, pelas ruas sobre os canais e a rampa que desce ao cais (no
	-- chão fino, 780 jd: 1,15x)
	{ "Stormwind: Trade District -> porto, pela rampa do cais", { 0, -8824, 665 }, { 0, -8640, 1320 }, 1.35, true,
		{ -8610, -8570, 1060, 1180 } },
	-- Orgrimmar: do Valley of Strength ao Cleft of Shadow, 22 jd abaixo. No chão fino, 284 jd (1,39x) pela rampa da ponta
	-- leste (1670-1720, -4290..-4265); a grade desce pela borda do Cleft logo a oeste (209 jd): a célula do barranco
	-- fica com a pedra de cima, que liga o alto e o fundo (um nó por célula — spec). A caixa é a borda leste do Cleft,
	-- por onde passam os dois.
	{ "Orgrimmar: Valley of Strength -> Cleft of Shadow (borda leste)", { 1, 1637, -4438 }, { 1, 1771, -4284 }, 1.6, true,
		{ 1690, 1730, -4345, -4255 } },
}
for _, l in ipairs(lugares) do
	local a = { c = l[2][1], x = l[2][2], y = l[2][3] }
	local b = { c = l[3][1], x = l[3][2], y = l[3][3] }
	local p = TRN.Path(Dj, a, b, 150000)
	local reta = math.sqrt((a.x - b.x) ^ 2 + (a.y - b.y) ^ 2)
	local len = p and comprimento(p) or 0
	local caixa = l[6]
	check(p and len <= l[4] * reta and (not l[5] or not p.solto) and (not caixa or passaPor(p, caixa[1], caixa[2], caixa[3], caixa[4])),
		("%s: %s jd (reta %d, até %.1fx)%s"):format(l[1], p and math.floor(len) or "nil", math.floor(reta), l[4],
			p and p.solto and " [segunda busca]" or ""))
end
end
do -- #106: dentro das cidades, pares aleatórios fixos contra a grade v1 (comprimentos medidos na v1 do 1.60.1.71139,
-- só terreno). A v2 escolhe, onde a célula tem chão de modelo, o componente que alcança mais vizinhos (a rua, não o
-- telhado nem o fundo do canal). Guarda: razão média sobre a reta e pares mais de 1,5x a v1, por cidade (limites do
-- que a v2 mede hoje, com folga; Booty Bay e Orgrimmar têm andares que um nó por célula não separa — spec).
local G3 = load("Terrain0.lua", {})
load("Terrain1.lua", G3)
local Dc = G3.terrain
Dc.passages = load("TerrainPassages.lua", {}).passagesTerrain
local V1 = {
	["Stormwind"] = { 449, 287, 318, 110, 338, 317, 482, 260, 177, 191, 414, 485, 206, 184, 617, 568, 77, 273, 312, 178, 316, 446, 201, 406, 307, 289, 408, 52, 221, 151 },
	["Orgrimmar"] = { 1143, 293, 483, 252, 335, 265, 735, 544, 393, 1794, 151, 330, 933, 237, 1005, 66, 336, 1003, 1086, 305, 986, 546, 254, 563, 1073, 185, 375, 268, 1064, 755 },
	["Booty Bay"] = { 150, 273, 1233, 155, 244, 1163, 94, 869, 313, 158, 84, 155, 572, 263, 167, 172, 82, 105, 268, 530, 77, 302, 56, 293, 348, 271, 80, 1654, 164, 1128 },
	["Ironforge"] = { 261, 159, 381, 297, 309, 372, 158, 398, 284, 496, 397, 316, 284, 90, 516, 388, 239, 260, 310, 280, 412, 239, 431, 279, 77, 62, 103, 322, 124, 372 },
	["Undercity"] = { 105, 127, 142, 215, 92, 130, 289, 49, 194, 441, 442, 125, 359, 51, 48, 128, 221, 115, 467, 221, 274, 328, 450, 401, 363, 215, 131, 144, 385, 447 },
	["Thunder Bluff"] = { 1219, 154, 644, 1986, 1185, 328, 1767, 1053, 1884, 297, 1383, 1761, 273, 79, 135, 175, 1924, 83, 44, 154, 368, 1173, 205, 2035, 400, 788, 1087, 484, 1157, 1050 },
	["Darnassus"] = { 355, 201, 222, 906, 245, 459, 435, 531, 746, 242, 608, 515, 80, 626, 593, 204, 979, 288, 478, 351, 680, 530, 283, 249, 403, 368, 528, 105, 489, 496 },
	["Gadgetzan"] = { 210, 262, 158, 190, 128, 159, 22, 160, 42, 87, 86, 110, 114, 288, 213, 96, 244, 54, 122, 125, 108, 108, 112, 80, 259, 218, 44, 260, 84, 52 },
	["Ratchet"] = { 225, 154, 149, 262, 282, 192, 53, 61, 148, 264, 79, 137, 145, 47, 255, 280, 255, 197, 192, 164, 225, 125, 159, 69, 233, 293, 297, 60, 225, 290 },
}
local CIDADES = { -- nome, c, x0, x1, y0, y1, razão média máxima (v2), pares > 1,5x v1 no máximo
	{ "Stormwind", 0, -8950, -8450, 350, 1000, 1.26, 2 },
	{ "Orgrimmar", 1, 1350, 2050, -4750, -4100, 1.96, 7 },
	{ "Booty Bay", 0, -14550, -14250, 300, 600, 2.43, 12 },
	{ "Ironforge", 0, -5000, -4600, -1250, -800, 1.47, 4 },
	{ "Undercity", 0, 1500, 1800, 100, 420, 1.53, 5 },
	{ "Thunder Bluff", 1, -1400, -950, -150, 250, 2.67, 6 },
	{ "Darnassus", 1, 9650, 10200, 1900, 2600, 1.27, 2 },
	{ "Gadgetzan", 1, -7200, -6950, -3900, -3650, 1.15, 2 },
	{ "Ratchet", 1, -1050, -800, -3900, -3600, 1.20, 4 },
}
local semente = 12345
local function rnd() semente = (semente * 1103515245 + 12345) % 2147483648; return semente / 2147483648 end
for _, cd in ipairs(CIDADES) do
	local nome, c, x0, x1, y0, y1 = cd[1], cd[2], cd[3], cd[4], cd[5], cd[6]
	local n, r1, r2, pior = 0, 0, 0, 0
	for k = 1, 30 do
		local a = { c = c, x = x0 + (x1 - x0) * rnd(), y = y0 + (y1 - y0) * rnd() }
		local b = { c = c, x = x0 + (x1 - x0) * rnd(), y = y0 + (y1 - y0) * rnd() }
		local d = math.sqrt((a.x - b.x) ^ 2 + (a.y - b.y) ^ 2)
		local l1 = V1[nome][k]
		local p = l1 > 0 and d > 30 and TRN.Path(Dc, a, b, 40000)
		if p then
			n = n + 1
			r1, r2 = r1 + l1 / d, r2 + comprimento(p) / d
			if comprimento(p) > 1.5 * l1 then pior = pior + 1 end
		end
	end
	-- não pior que a v1 na média (a grade leva as ligações da v1 no mesmo chão — gen_terrain.une_v1; Ironforge por
	-- dentro não leva nenhuma e fica empatada: 1% de folga)
	check(n > 20 and r2 / n <= math.min(cd[7], 1.01 * r1 / n) and pior <= cd[8],
		("cidade %s: razão média %.3f (v1 %.3f; até %.2f e até a v1 + 1%%), %d pares > 1,5x a v1 (até %d)")
		:format(nome, r2 / math.max(n, 1), r1 / math.max(n, 1), cd[7], pior, cd[8]))
end
end
-- passagem gravada (a rampa que a grade não tem): a primeira busca já atravessa por ela, sem a segunda
local comPassagem = quadranteSint(function(r, c) return c >= 44 and c <= 51 end, nil, 3)
local trilha = {}                                  -- andada: um ponto por célula (como a gravação, a cada 3 jd)
for col = 42, 53 do local m = mundo(12, col); trilha[#trilha + 1] = m.x; trilha[#trilha + 1] = m.y end
comPassagem.passages = { { c = 0, pts = trilha } }
local viaRampa = TRN.Path(comPassagem, mundo(5, 30), mundo(5, 70), 40000)
local passouNaLinha = false
for _, q in ipairs(viaRampa or {}) do if select(1, TRN.Cell(q.x, q.y)) >= 10 then passouNaLinha = true end end
check(viaRampa and not viaRampa.solto and passouNaLinha, "passagem gravada: o caminho atravessa por ela (busca normal)")
-- salto (dois pontos longe: voo, teleporte) não liga nada
local salto = quadranteSint(function(r, c) return c >= 44 and c <= 51 end, nil, 3)
local sa, sb = mundo(12, 42), mundo(12, 53)
salto.passages = { { c = 0, pts = { sa.x, sa.y, sb.x, sb.y } } }
check(TRN.Path(salto, mundo(5, 30), mundo(5, 70), 40000) == nil, "salto gravado (voo, teleporte) não vira caminho")
-- queda: só desce (de B para A não volta pela passagem)
local queda = quadranteSint(function(r, c) return c >= 44 and c <= 51 end, nil, 3)
queda.passages = { { c = 0, pts = trilha, f = {} } }
for seg = 1, #trilha / 2 - 1 do queda.passages[1].f[seg] = true end
local desce = TRN.Path(queda, mundo(5, 30), mundo(5, 70), 40000)
local sobe = TRN.Path(queda, mundo(5, 70), mundo(5, 30), 40000)
check(desce and not desce.solto and (sobe == nil or sobe.solto), "queda gravada: só no sentido em que caiu")
-- barreira longa (parede de 8 células de espessura): não é passagem curta, fica sem caminho (a reta)
local grossa = quadranteSint(function(r, c) return c >= 44 and c <= 51 end, nil, 3)
check(TRN.Path(grossa, mundo(5, 30), mundo(5, 70), 40000) == nil, "barreira grossa: a segunda busca não inventa caminho")
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

-- #43: o caminho puxado — em campo aberto, reta em qualquer ângulo; com parede, contorna sem
-- atravessar
local function atravessa(caminho, ruim)
	for i = 2, #(caminho or {}) do
		local p0, p1 = caminho[i - 1], caminho[i]
		local len = math.sqrt((p1.x - p0.x) ^ 2 + (p1.y - p0.y) ^ 2)
		for t = 0, len, 2 do
			if ruim(TRN.Cell(p0.x + (p1.x - p0.x) * t / len, p0.y + (p1.y - p0.y) * t / len)) then return true end
		end
	end
	return false
end
local aberto = quadranteSint(function() return false end)
cam = TRN.Path(aberto, mundo(5, 5), mundo(20, 12), 20000)
check(cam and #cam == 2, "campo aberto em ângulo qualquer: reta, sem escadinha (" .. (cam and #cam or 0) .. " pontos)")
cam = TRN.Path(parede, A, B, 20000)
check(cam and #cam <= 5, "contornando a parede: poucos vértices (" .. (cam and #cam or 0) .. ")")
check(cam and not atravessa(cam, function(r, c) return c == 10 and r < 26 end), "o caminho puxado não atravessa a parede")
-- campo aberto grande (vários quadrantes): perna longa sai reta, sem cotovelo do A*
local grande = { [0] = {} }
for tr = 0, 5 do
	for tc = 0, 2 do grande[0][tr * 64 + tc] = string.rep(string.char(128, 255), 8) .. string.char(128, 0) end
end
cam = TRN.Path(grande, mundo(2, 2), mundo(150, 60), 200000)
check(cam and #cam == 2, "campo aberto, perna de ~2600 jd: reta (" .. (cam and #cam or 0) .. " pontos)")
-- começando dentro da parede (ajusta para a célula vizinha): o primeiro trecho sai dela antes
-- de seguir, não corre por dentro da parede
cam = TRN.Path(parede, mundo(5, 10), mundo(5, 15), 20000)
check(cam and not atravessa(cam, function(lin, col) return col == 10 and lin < 26 and lin ~= 5 end),
	"começo dentro da parede: o caminho não corre por dentro dela")
-- destino numa ilha da grade (morro de prédio, rampa que o terreno não tem): vai pelo
-- terreno até a borda mais perto e só o fim salta em reta
local function ilhaEm(r0, c0)
	return function(lin, col) return math.max(math.abs(lin - r0), math.abs(col - c0)) == 2 end
end
local CEL_ = TRN.CellCenter(0, 0, 0).y - TRN.CellCenter(0, 0, 1).y
cam = TRN.Path(quadranteSint(ilhaEm(11, 21)), mundo(11, 5), mundo(11, 21), 20000)
local penult = cam and cam[#cam - 1]
check(cam and cam[#cam].x == mundo(11, 21).x and cam[1].x == mundo(11, 5).x
	and math.sqrt((penult.x - mundo(11, 21).x) ^ 2 + (penult.y - mundo(11, 21).y) ^ 2) <= 3.5 * CEL_,
	"destino ilhado: caminho até a borda da ilha, depois reta curta até ele")
cam = TRN.Path(quadranteSint(ilhaEm(11, 5)), mundo(11, 5), mundo(11, 25), 20000)
check(cam and cam[1].x == mundo(11, 5).x and cam[#cam].y == mundo(11, 25).y,
	"jogador ilhado (dentro da vila): sai pela célula livre mais perto e segue")
local bloco = quadranteSint(function(lin, col) return math.abs(lin - 11) <= 3 and math.abs(col - 5) <= 3 end)
cam = TRN.Path(bloco, mundo(11, 5), mundo(11, 25), 20000)
check(cam and cam[#cam].y == mundo(11, 25).y, "jogador no meio de um bloco (prédio grande): sai dele e segue")

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
local RMT = load("RouteMap.lua", { Terrain = TRN, RouteGeom = G }).RouteMap
local perna = { k = "walk", a = P(0, 0, 0), b = P(0, 100, 100),
	path = { P(0, 0, 0), P(0, 100, 0), P(0, 100, 100) } }
pts = RMT.LegPoints(perna, P(0, 90, 2))
local atras, canto = false, math.huge
for i = 1, #pts - 2, 3 do
	if pts[i] < 90 - 1e-6 then atras = true end
	canto = math.min(canto, math.sqrt((pts[i] - 100) ^ 2 + pts[i + 1] ^ 2))
end
check(pts[1] == 90 and pts[2] == 2 and pts[#pts - 2] == 100 and pts[#pts - 1] == 100 and not atras and canto < 8,
	"a pé com caminho: do jogador, o resto do caminho (sem o trecho já andado), dobrando no canto")
pts = RMT.LegPoints(perna)
check(#pts > 6 and pts[1] == 0 and pts[2] == 0 and pts[#pts - 2] == 100,
	"perna a pé seguinte, já com caminho: desenhada pelo caminho, não em reta")
local TT = load("Travel.lua", { Journey = J, Terrain = TRN }).Travel
check(math.abs(TT.Remaining({ leg = 1, legs = { perna } }, P(0, 90, 2), 10) - 11) < 0.01,
	"quanto falta a pé: pelo caminho (110 jd a 10 jd/s), não em reta")
check(math.abs(TT.Remaining({ leg = 1, legs = { { k = "walk", a = P(0, 0, 0), b = P(0, 100, 100) } } }, P(0, 90, 2), 10)
	- math.sqrt(10 ^ 2 + 98 ^ 2) / 10) < 0.01, "sem caminho: em reta, como antes")

-- revisão do #24: o A* cede a vez por função (orçamento de tempo), ajusta ponta bloqueada e
-- nunca sai da grade
local vezes = 0
local co = coroutine.create(function()
	return TRN.Path(parede, A, B, 20000, function() vezes = vezes + 1; return true end)
end)
local okc, res = coroutine.resume(co)
local cedeu = 0
while okc and coroutine.status(co) ~= "dead" do cedeu = cedeu + 1; okc, res = coroutine.resume(co) end
check(okc and res and cedeu > 0, "cede a vez (orçamento) e ainda acha o caminho (" .. cedeu .. " vezes)")
local alvoBloq = quadranteSint(function(r, c) return r == 5 and c == 15 end)
cam = TRN.Path(alvoBloq, A, B, 20000)
check(cam and cam[#cam].x == B.x and cam[#cam].y == B.y, "destino em célula bloqueada: ajusta para a vizinha passável e termina nele")
local borda = quadranteSint(function() return false end)
local t0 = TRN.Decode(borda[0][0])
borda[0][0] = string.char(1, 255) .. borda[0][0]:sub(3)       -- célula (0,0) com todas as ligações, até para fora
cam = TRN.Path(borda, mundo(0, 0), mundo(0, 4), 20000)
local fora = false
for _, pt in ipairs(cam or {}) do local r, c = TRN.Cell(pt.x, pt.y); if r < 0 or c < 0 then fora = true end end
check(cam and not fora, "ligação para fora da grade não vira caminho")
-- ── #17: treinador de classe visto em jogo (o banco do Forever não tem o paladino da Horda) ──
local store = {}
S.Remember(store, "PALADIN", "Horde", { id = 246349, n = "Breton Samuels", map = 1420, x = 21.85, y = 45.31 })
S.Remember(store, "PALADIN", "Horde", { id = 246349, n = "Breton Samuels", map = 1420, x = 21.9, y = 45.3 })
local seen = store.PALADIN.Horde
check(seen[246349] and seen[246349].x == 21.9, "o treinador visto fica guardado por classe e facção (o último lugar vale)")
local merged = S.WithSeen(nil, seen)
check(#merged == 1 and merged[1].n == "Breton Samuels", "classe sem treinador no banco: usa o visto")
merged = S.WithSeen({ { id = 1, n = "Do banco" }, { id = 246349, n = "Breton (banco)" } }, seen)
check(#merged == 2, "o visto que já está no banco não duplica")
merged = S.WithSeen(nil, seen); merged[1].w = false
check(seen[246349].w == nil, "o cálculo da rota não grava nada no treinador salvo (SavedVariables)")

-- #17: o paladino da Horda (Forever) tem treinador no banco — título vindo do cache do cliente
local TR = load(os.getenv("TRAINERS") or "Trainers.lua", {})
local pal = TR.classTrainers.PALADIN and TR.classTrainers.PALADIN.Horde or {}
local temShari
for _, t in ipairs(pal) do if t.n == "Shari Stilwell" and t.zone == "Tirisfal Glades" then temShari = true end end
check(temShari, "Paladino da Horda: Shari Stilwell (Brill) está no banco de treinadores")

;(function() -- #116: horário dividido com a guilda e o grupo (função própria: o topo do arquivo passa de 200 locais)
local tsns = load("TransitShare.lua", load("Schedule.lua", {}))
local TS, SCx = tsns.TransitShare, tsns.Schedule
local barco = { id = 285, stops = { {}, {} }, s = { 100, 80 }, d = { 60, 60 } }
local um = TS.Encode({ { 285, 2, "dep", 1700000000.7 } })
check(#um == 1 and um[1] == "o|285|2|d|1700000000", "observação vira texto curto")
local dec = TS.Decode("o|285|2|d|1700000000;292|1|a|1700000100;lixo")
check(#dec == 2 and dec[1][1] == 285 and dec[1][2] == 2 and dec[1][3] == "dep" and dec[1][4] == 1700000000
	and dec[2][1] == 292 and dec[2][3] == "arr", "várias numa mensagem; a entrada torta fica de fora")
check(TS.Decode("q") == "q" and TS.Decode("o|x|1|a|5") == nil and TS.Decode("o|1|1|z|5") == nil
	and TS.Decode(nil) == nil and TS.Decode("p|1|1|a|5") == nil, "pergunta; lixo não decodifica")
local onze = {}
for i = 1, 11 do onze[i] = { 11000 + i, 3, "dep", 1700000000 + i } end
local msgs = TS.Encode(onze)
local cabe, total = true, 0
for _, m in ipairs(msgs) do
	if #m > 250 then cabe = false end
	total = total + #TS.Decode(m)
end
check(cabe and total == 11 and #msgs <= 2, "as respostas de todos os transportes cabem em uma ou duas mensagens")
local agora = 100000
check(TS.Accept(nil, barco, 1, "arr", agora - 60, agora), "sem horário: entra")
check(not TS.Accept(nil, barco, 3, "arr", agora - 60, agora), "parada que o transporte não tem: fora")
check(not TS.Accept(nil, barco, 1, "arr", agora + 600, agora), "hora futura: fora")
check(not TS.Accept(nil, barco, 1, "arr", agora - 13 * 3600, agora), "mais de 12 h: fora")
local hx = SCx.Learn(nil, barco, 1, "arr", agora - 1000, nil)
check(not TS.Accept(hx, barco, 1, "arr", agora - 1100, agora), "mais velha que a que o horário já tem: fora")
hx.own, hx.ownT0 = agora - 1000, hx.t0
-- fase própria: chegada na 1ª às agora-1000 (ciclo estimado de 300; chega na 2ª 160 s depois). 5 s fora concorda;
-- 90 s, não — dentro da previsão (até uma volta depois da própria)
check(TS.Accept(hx, barco, 2, "arr", agora - 1000 + 160 + 5, agora), "concorda com a fase própria (5 s): entra")
check(not TS.Accept(hx, barco, 2, "arr", agora - 1000 + 160 + 90, agora), "contra a fase própria recente (90 s): fora")
-- além de uma volta com o período só estimado: o próprio planejador já não confia; a de fora entra
check(TS.Accept(hx, barco, 2, "arr", agora - 1000 + 160 + 90 + 600, agora), "fora da previsão estimada: a de fora vale")
-- a comparação é com a fase própria, não com a última aceita: de fora não encadeia 30 s em 30 s
local h2 = SCx.Learn(hx, barco, 2, "arr", agora - 1000 + 160 + 25, nil)
h2.own, h2.ownT0 = hx.own, hx.ownT0
check(not TS.Accept(h2, barco, 2, "arr", agora - 1000 + 160 + 50, agora),
	"não encadeia sobre a de fora (50 s da própria, 25 s da aceita): fora")
hx.own = agora - 3 * 3600
check(TS.Accept(hx, barco, 2, "arr", agora - 1000 + 160 + 90, agora), "própria velha (3 h): a de fora vale")
local lk, lev, lt = TS.Latest({ obs = { ["1:arr"] = 10, ["2:dep"] = 30, ["2:arr"] = 20 } })
check(lk == 2 and lev == "dep" and lt == 30, "a observação mais nova responde a pergunta")
end)()
-- ── #117: paradas antes do destino ───────────────────────────────────────────
-- numa função: o pedaço principal já está no limite de 200 locais do Lua
;(function()
	-- a fila: na ordem em que entram, a repetida fica uma só, cada mudança refaz a rota
	local replans = 0
	local dns = { Travel = { Replan = function() replans = replans + 1 end } }
	local DS = load("Destinations.lua", dns).Destinations
	local passo = { zone = "The Hinterlands", x = 68, y = 52.9, label = "Silvermane Stalker" }
	DS.GuideTarget = function() return passo end
	local reparo = { zone = "Elwynn Forest", x = 41, y = 65, label = "Reparo — Bob", short = "Reparo", service = "repair",
		npc = 1 }
	local ponto = { map = 1429, x = 30, y = 40, label = "Ponto" }
	check(DS:AddStop(reparo) and DS:AddStop(ponto) and replans == 2, "parada entra na fila e refaz a rota")
	check(not DS:AddStop({ zone = "Elwynn Forest", x = 41, y = 65 }) and #DS:Stops() == 2 and replans == 2,
		"a mesma parada duas vezes: fica uma só, sem refazer")
	local ch = DS:Chain()
	check(#ch == 3 and ch[1].dest == reparo and ch[2].dest == ponto and ch[1].kind == "stop" and ch[3].kind == "guide",
		"a cadeia: as paradas na ordem em que entraram, depois o passo do guia")
	DS:Set("manual", { zone = "Westfall", x = 50, y = 50, label = "manual" })
	ch = DS:Chain()
	check(#ch == 3 and ch[3].kind == "manual", "com destino manual, ele fecha a cadeia (no lugar do guia)")
	DS:Set("corpse", { map = 1429, x = 10, y = 10, label = "corpo", red = true })
	ch = DS:Chain()
	check(#ch == 1 and ch[1].kind == "corpse" and #DS:Stops() == 2, "fantasma: só o corpo; as paradas esperam")
	DS:Clear("corpse"); DS:Clear("manual")
	check(#DS:Chain() == 3, "reviveu: as paradas voltam antes do destino")
	DS.GuideTarget = function() return nil end
	ch = DS:Chain()
	check(#ch == 2 and ch[2].dest == ponto, "sem destino: só as paradas, a última faz as vezes de destino")
	DS.GuideTarget = function() return passo end
	local antes = replans
	check(DS:RemoveStop(ponto) and #DS:Stops() == 1 and replans == antes + 1, "tira pela própria parada")
	check(not DS:RemoveStop(ponto) and not DS:RemoveStop(5) and replans == antes + 1, "tirar o que não está: nada")
	DS:AddStop(ponto)
	check(DS:DoneStop(1) and DS:Stops()[1] == ponto, "feita pela posição: a próxima vira a primeira")
	DS:AddStop(reparo); DS:AddStop({ zone = "Elwynn Forest", x = 43, y = 65, service = "classtrainer" })
	DS:ClearStops("classtrainer")
	check(#DS:Stops() == 2 and DS:Stops()[2] == reparo, "/ls train off tira só a parada do treinador")
	DS:ClearStops()
	check(#DS:Stops() == 0 and #DS:Chain() == 1, "Limpar: nenhuma parada")
	antes = replans; DS:ClearStops()
	check(replans == antes, "limpar a fila vazia não refaz a rota")

	-- a janela do serviço conclui a parada daquele tipo, perto dela; a do próprio NPC sempre
	local W0 = { c = 0, x = 100, y = 100 }
	local function wOf() return W0 end
	local lista = { reparo, { zone = "X", x = 1, y = 1, service = "bank" }, ponto }
	local junto, longe = P(0, 130, 100), P(0, 300, 100)
	local m = DS.MatchWindow(lista, DS.WINDOW.MERCHANT_SHOW, nil, junto, wOf)
	check(#m == 1 and m[1] == reparo, "vendedor aberto perto do reparo: o reparo está feito (o banco e o ponto, não)")
	check(#DS.MatchWindow(lista, DS.WINDOW.MERCHANT_SHOW, nil, longe, wOf) == 0, "vendedor aberto longe da parada: nada")
	check(#DS.MatchWindow(lista, DS.WINDOW.MERCHANT_SHOW, nil, P(1, 100, 100), wOf) == 0, "outro continente: nada")
	check(#DS.MatchWindow(lista, DS.WINDOW.GOSSIP_SHOW, nil, junto, wOf) == 0, "conversa perto: só o próprio NPC conta")
	m = DS.MatchWindow(lista, DS.WINDOW.GOSSIP_SHOW, 1, longe, wOf)
	check(#m == 1 and m[1] == reparo, "a janela do próprio NPC da parada conclui (pelo id)")
	check(DS.WINDOW.TAXIMAP_OPENED.flight and DS.WINDOW.BANKFRAME_OPENED.bank and DS.WINDOW.PET_STABLE_SHOW.stable
		and DS.WINDOW.AUCTION_HOUSE_SHOW.auction and DS.WINDOW.MERCHANT_SHOW.vendor, "cada janela conclui o seu serviço")

	-- a rota emendada: um trecho do Journey por par, as pernas juntas, a parada marcada no fim do trecho dela
	local function plan(de, para) return J.Plan(de, para, ctx()) end
	local function porPonto(alvo) return alvo.w end
	local cadeia = {
		{ dest = { w = P(0, 200, 0), short = "Reparo", label = "Reparo — Bob" }, kind = "stop" },
		{ dest = { w = P(0, 3010, 0), short = "Ponto", label = "Ponto" }, kind = "stop" },
		{ dest = { w = P(0, 3100, 0), label = "Silvermane Stalker" }, kind = "guide" },
	}
	local rr = T.PlanChain(P(0, 10, 0), cadeia, porPonto, plan)
	check(rr and kinds(rr) == "walk,walk,flight,walk,walk", "paradas: a pé à primeira, voo à segunda, a pé ao passo ("
		.. (rr and kinds(rr) or "nil") .. ")")
	check(#rr.stops == 2 and rr.stops[1].leg == 1 and rr.stops[2].leg == 4, "o fim de cada parada na rota")
	check(rr.legs[1].parada == cadeia[1].dest and rr.legs[4].parada == cadeia[2].dest and not rr.legs[5].parada,
		"a perna que chega à parada leva a parada")
	check(rr.dest == cadeia[3].dest and rr.kind == "guide", "o destino da rota é o do fim da cadeia")
	local soma = 0
	local trechos = { { P(0, 10, 0), P(0, 200, 0) }, { P(0, 200, 0), P(0, 3010, 0) }, { P(0, 3010, 0), P(0, 3100, 0) } }
	for _, t in ipairs(trechos) do
		soma = soma + J.Plan(t[1], t[2], ctx()).s
	end
	check(math.abs(rr.s - soma) < 1e-6, "o total soma os trechos (o desvio entra)")
	rr.leg = 1
	check(math.abs(T.Remaining(rr, P(0, 10, 0), 7) - soma) < 0.5, "quanto falta conta o desvio inteiro")
	check(T.AdvanceLeg(rr, P(0, 195, 0), false) == 2, "chegou à parada: segue para o trecho seguinte")
	rr.leg = 2

	-- trecho sem rota corta a cadeia ali; sem o primeiro, nada
	local ilha = { { dest = cadeia[1].dest, kind = "stop" }, { dest = { w = P(5, 0, 0) }, kind = "stop" },
		{ dest = cadeia[3].dest, kind = "guide" } }
	local rc = T.PlanChain(P(0, 10, 0), ilha, porPonto, plan)
	check(rc and #rc.legs == 1 and rc.kind == "stop" and rc.dest == cadeia[1].dest,
		"parada sem ligação: a rota vai até a última alcançada")
	check(T.PlanChain(P(0, 10, 0), { ilha[2], ilha[3] }, porPonto, plan) == nil, "a primeira sem ligação: sem rota")
	check(T.PlanChain(P(0, 10, 0), {}, porPonto, plan) == nil, "cadeia vazia: sem rota")

	-- a pedra vale uma vez; cada trecho sai na hora em que o anterior chega (sem o gasto da pedra)
	local vistos = {}
	T.PlanChain(P(0, 0, 0), cadeia, porPonto, function(de, para, o)
		vistos[#vistos + 1] = { at = o.at, hearth = o.hearth }
		if #vistos == 1 then
			return { s = 310, legs = { { k = "hearth", s = 10, gasto = 300, a = de, b = para } } }
		end
		return { s = 50, legs = { { k = "walk", s = 50, a = de, b = para } } }
	end)
	check(#vistos == 3 and not vistos[1].hearth and vistos[2].hearth and vistos[3].hearth,
		"pedra usada num trecho: os seguintes não contam com ela")
	check(vistos[1].at == 0 and vistos[2].at == 10 and vistos[3].at == 60,
		"cada trecho sai depois do anterior, pelo tempo de verdade")

	-- a chave da cadeia: parada nova ou tirada refaz; a mesma, não
	local k1 = T.ChainKey({ { dest = reparo, kind = "stop" }, { dest = passo, kind = "guide" } })
	local k2 = T.ChainKey({ { dest = passo, kind = "guide" } })
	check(k1 ~= k2 and k1 == T.ChainKey({ { dest = reparo, kind = "stop" }, { dest = passo, kind = "guide" } }),
		"a chave muda com as paradas e é a mesma para a mesma cadeia")
	check(T.ChainKey({}) == nil, "sem cadeia: sem chave")

	-- a seta: a parada e o que vem depois
	local Ls = setmetatable({ STOP_THEN = "%s · DEPOIS %s", STOP = "PARADA", LEG_FLY = "VOE %s", DEST = "DESTINO" },
		{ __index = function(_, k) return k end })
	local wsn = { L = Ls, On = function() end, Every = function() end, zoneUiMap = {} }
	local WS = load("Waypoint.lua", wsn).Waypoint
	check(WS.LegText(rr, 1, 40) == "Reparo · DEPOIS Ponto · 40s", "a pé até a parada: ela e a próxima parada ("
		.. WS.LegText(rr, 1, 40) .. ")")
	check(WS.LegText(rr, 4, 5) == "Ponto · DEPOIS Silvermane Stalker · 5s", "a última parada: depois, o destino ("
		.. WS.LegText(rr, 4, 5) .. ")")
	check(WS.LegText(rr, 3, 60):find("^VOE"), "a perna do meio do trecho segue com o texto dela")
	check(WS.LegText(rc, 1, 9) == "Reparo · 9s",
		"a parada que fecha a rota não tem depois (" .. WS.LegText(rc, 1, 9) .. ")")
	-- sem rota (outro continente, instância): a seta vai à primeira parada, e diz a seguinte
	wsn.Travel = { Route = function() return nil end }
	local fila = { reparo, ponto }
	local ativo, tipo = passo, "guide"
	wsn.Destinations = { Active = function() return ativo, tipo end, Stops = function() return fila end }
	local g1 = WS:PickTarget()
	check(g1 and g1._stop == reparo and g1.text == "Reparo · DEPOIS Ponto" and g1.goto_.zone == "Elwynn Forest",
		"sem rota: a primeira parada, com a seguinte (" .. tostring(g1 and g1.text) .. ")")
	fila = { ponto }
	check(WS:PickTarget().text == "Ponto · DEPOIS Silvermane Stalker", "a última parada: depois, o destino")
	ativo, tipo = { map = 1, x = 1, y = 1, label = "corpo" }, "corpse"
	check(WS:PickTarget()._corpse, "fantasma: o corpo antes da parada")
end)()

print(("ok: %d checks"):format(checks))
