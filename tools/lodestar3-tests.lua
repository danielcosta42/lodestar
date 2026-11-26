-- Testes do Lodestar 3 (specs/lodestar-3, issue #90): o núcleo puro do Equipamento (pesos, Pawn, melhor por
-- espaço, spec pela árvore, faixa ao alcance), das Masmorras (faixa, a que cabe, quests do guia), dos Colecionáveis
-- (texto de origem, onde/quem, contagem, filtro), do Legado (progresso, nível do desafio, mais perto, melhor por
-- classe), o tema (paleta mudada no lugar) e a sanidade do DungeonData gerado.
--
--   luajit tools/lodestar3-tests.lua
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

local function loadPure(file, ns)
	ns = ns or {}
	assert(loadfile(ROOT .. "/" .. file))("Lodestar", ns)
	return ns
end

-- ── Equipamento ──────────────────────────────────────────────────────────────
local G = loadPure("GearPlan.lua").GearPlan
for class, specs in pairs(G.SPECS) do
	check(#specs == 3, class .. " tem três specs")
	for _, s in ipairs(specs) do
		local w = G.PRESETS[class] and G.PRESETS[class][s]
		check(w and next(w), class .. "/" .. s .. " tem pesos")
		for k, v in pairs(w) do check(type(v) == "number" and v >= 0, class .. "/" .. s .. "/" .. k .. " é número") end
	end
end
check((G.PRESETS.WARRIOR.prot.def or 0) > (G.PRESETS.WARRIOR.arms.def or 0), "proteção pesa defesa mais que armas")
check((G.PRESETS.MAGE.fire.sp or 0) > (G.PRESETS.MAGE.fire.str or 0), "mago pesa poder mágico, não força")

local w, name = G.ParsePawn('( Pawn: v1: "Meu Guerreiro": Class=Warrior, Strength=2.5, Agility=1.1, '
	.. 'CritRating=1.4, HitRating=1.6, Stamina=0.5, MeleeDps=3.2, Unknown=9 )')
check(w and name == "Meu Guerreiro", "Pawn: pesos e nome")
check(w.str == 2.5 and w.agi == 1.1 and w.crit == 1.4 and w.hit == 1.6 and w.sta == 0.5 and w.dps == 3.2,
	"Pawn: cada status no seu lugar")
check(w.unknown == nil and w.Unknown == nil, "Pawn: o que não conhece fica de fora")
local w2 = G.ParsePawn("Strength=1, Dodge=0.5, Parry=0.5")
check(w2 and w2.str == 1 and w2.avoid == 1, "sem cabeçalho também lê; esquiva e aparo somam em avoid")
check(G.ParsePawn("nada aqui") == nil and G.ParsePawn(nil) == nil, "texto sem peso: nil")
local w3, n3 = G.ParsePawn('( Pawn: v1: "Caçador (Precisão)": Class=Hunter, Agility=2, Rap=0.9, Ap=0.4, FeralAp=0.1 )')
check(w3 and n3 == "Caçador (Precisão)" and w3.agi == 2 and w3.rap == 0.9 and math.abs(w3.ap - 0.5) < 1e-9,
	"Pawn: nome com parênteses e as chaves curtas do Pawn (Ap, Rap, FeralAp)")

check(G.Score({ str = 10, sta = 5 }, { str = 2, sta = 0.5 }) == 22.5, "nota = soma status x peso")
check(G.Score({ str = 10 }, {}) == 0 and G.Score(nil, { str = 1 }) == 0, "sem peso ou sem status: 0")

local cands = {
	{ id = 1, slots = { 16 }, score = 50, source = "a" },
	{ id = 2, slots = { 16 }, score = 70, source = "b" },
	{ id = 3, slots = { 11, 12 }, score = 30, source = "c" },
	{ id = 4, slots = { 1 }, score = 5, source = "d" },
	{ id = 5, slots = { 8 }, score = 99, source = "e" },
}
local eq = { [16] = 40, [11] = 25, [12] = 10, [1] = -1 }   -- 8 sem dado (nil): nada bate
local best = G.BestPerSlot(cands, eq)
check(best[16] and best[16].id == 2, "a mão: fica a melhor das duas")
check(math.abs(best[16].gain - 0.75) < 1e-9, "ganho relativo: (70-40)/40")
check(best[12] and best[12].id == 3 and not best[11], "anel compara com o pior dos dois")
check(best[1] and best[1].id == 4 and best[1].gain == 1, "espaço vazio: qualquer coisa é melhoria")
check(best[8] == nil, "espaço ocupado e sem dado: nada é melhoria")
-- dois anéis vazios recebem dois anéis; a mesma peça não vai para os dois
local rings = G.BestPerSlot({ { id = 7, slots = { 11, 12 }, score = 20 }, { id = 8, slots = { 11, 12 }, score = 15 } },
	{ [11] = -1, [12] = -1 })
check(rings[11] and rings[12] and rings[11].id ~= rings[12].id, "dois anéis vazios: um em cada")
local one = G.BestPerSlot({ { id = 7, slots = { 11, 12 }, score = 20 } }, { [11] = -1, [12] = -1 })
check((one[11] and 1 or 0) + (one[12] and 1 or 0) == 1, "uma peça só ocupa um espaço")
-- duas mãos contra principal + escudo
check(G.PairBase({ [16] = 30, [17] = 25 }, { 16, 17 }) == 55, "duas mãos: soma principal e secundária")
check(G.PairBase({ [16] = 30, [17] = math.huge }, { 16, 17 }) == 30, "já com duas mãos: só a principal")
check(G.PairBase({ [16] = -1, [17] = -1 }, { 16, 17 }) == -1 and G.PairBase({ [16] = 30 }, { 16, 17 }) == nil,
	"mãos vazias: -1; sem dado da secundária: nil")
local th = G.BestPerSlot({ { id = 9, slots = { 16 }, score = 50, pair = { 16, 17 } } }, { [16] = 30, [17] = 25 })
check(th[16] == nil, "a de duas mãos (50) não bate principal + escudo (55)")
th = G.BestPerSlot({ { id = 9, slots = { 16 }, score = 66, pair = { 16, 17 } } }, { [16] = 30, [17] = 25 })
check(th[16] and math.abs(th[16].gain - 0.2) < 1e-9, "ganho da de duas mãos sobre as duas peças: (66-55)/55")
-- duas mãos e escudo não saem juntos no plano
local mix = G.BestPerSlot({ { id = 20, slots = { 16 }, score = 50, pair = { 16, 17 } }, { id = 21, slots = { 17 }, score = 40 } },
	{ [16] = 30, [17] = 10 })
check(mix[16] and mix[16].id == 20 and mix[17] == nil, "a de duas mãos ganha a principal e toma a secundária")
mix = G.BestPerSlot({ { id = 20, slots = { 16 }, score = 50, pair = { 16, 17 } }, { id = 21, slots = { 17 }, score = 60 } },
	{ [16] = 30, [17] = 10 })
check(mix[17] and mix[17].id == 21 and mix[16] == nil, "escudo melhor no plano: a de duas mãos não entra")

check(G.SpecFromPoints({ 5, 31, 15 }) == 2, "spec pela árvore com mais pontos")
check(G.SpecFromPoints({}) == 1 and G.SpecFromPoints({ 0, 0, 0 }) == 1, "sem pontos: a primeira")
check(G.InReach(20, 17, 26, 20, 0) and not G.InReach(14, 17, 26, 1, 0), "masmorra ao alcance pelo nível")
check(not G.InReach(20, 17, 26, 24, 0) and G.InReach(20, 17, 26, 24, 5), "item de nível alto só com `ahead`")

-- ── Masmorras ────────────────────────────────────────────────────────────────
local D = loadPure("Dungeons.lua").Dungeons
check(D.Fit(20, 17, 26) < 1, "dentro da faixa: cabe")
check(D.Fit(14, 17, 26) >= 100 and D.Fit(30, 17, 26) >= 100, "fora da faixa: não cabe")
check(D.Fit(15, 17, 26) < 100, "dois níveis abaixo ainda cabe")
check(D.Fit(60, 60, 60, true) < 100 and D.Fit(59, 60, 60, true) == math.huge, "raide só no 60")
local list = { { key = "WC", lo = 17, hi = 24 }, { key = "DM", lo = 17, hi = 26 }, { key = "SFK", lo = 22, hi = 30 } }
check(D.Best(list, 21).key == "DM" or D.Best(list, 21).key == "WC", "a que cabe melhor no 21")
check(D.Best(list, 27).key == "SFK", "no 27, Shadowfang")
check(D.Best(list, 5) == nil, "no 5, nenhuma")
local qsteps = {
	{ goals = { { verb = "accept", id = 10, text = "A", goto_ = { zone = "Westfall", x = 1, y = 2 } } } },
	{ goals = { { verb = "accept", id = 10, text = "A" }, { verb = "accept", id = 11, text = "B" } } },
	{ goals = { { verb = "turnin", id = 10 } } },
}
local qs = D.Quests(qsteps)
check(#qs == 2 and qs[1].id == 10 and qs[1].zone == "Westfall" and qs[2].id == 11, "quests do guia, sem repetir")
check(#D.Quests(qsteps, function(_, g) return g.id ~= 11 end) == 1, "filtro do personagem")

-- ── Colecionáveis ────────────────────────────────────────────────────────────
local CL = loadPure("Collections.lua").Collections
local src = "|cFFFFD200Vendedor: |rKatie Hunter|n|cFFFFD200Zona: |rFloresta de Elwynn|n|cFFFFD200Custo: |r80|TInterface\\MoneyFrame\\UI-GoldIcon:0|t"
local pairs_ = CL.ParseSource(src)
check(#pairs_ == 3 and pairs_[1][1] == "Vendedor" and pairs_[1][2] == "Katie Hunter", "origem: rótulo e valor")
check(pairs_[2][2] == "Floresta de Elwynn" and pairs_[3][2] == "80", "sem cor e sem ícone de moeda")
local zone, who = CL.WhereWho(pairs_, function(v) return v == "Floresta de Elwynn" end)
check(zone == "Floresta de Elwynn" and who == "Katie Hunter", "onde e quem")
check(#CL.ParseSource("") == 0 and #CL.ParseSource(nil) == 0, "sem origem: nada")
check(CL.SourceTypeFromText(pairs_, { [1] = "Saque", [3] = "Vendedor" }) == 3, "tipo de origem pelo rótulo do jogo")
check(CL.SourceTypeFromText({}, { "x" }) == 0, "sem rótulo: 0")
local items = { { collected = true, sourceType = 1 }, { collected = false, sourceType = 3 }, { collected = false, sourceType = 1 } }
local h, t = CL.Count(items)
check(h == 1 and t == 3, "contagem da coleção")
check(#CL.Filter(items, 1) == 2 and #CL.Filter(items, 1, true) == 1 and #CL.Filter(items, 0, true) == 2,
	"filtro por origem e só o que falta")

-- ── Legado ───────────────────────────────────────────────────────────────────
local LG = loadPure("Legacy.lua").Legacy
check(LG.Progress({ { have = 3, need = 10 }, { done = true, need = 10 } }) == 13 / 20, "progresso pelos critérios")
check(LG.Progress({}) == 0 and LG.Progress(nil) == 0, "sem critério: 0")
check(LG.LevelOf("Warrior: Level 45") == 45 and LG.LevelOf("Guerreiro nível 25") == 25, "nível do desafio pelo nome")
check(LG.LevelOf("Alchemy 300") == nil and LG.LevelOf("Rank 7") == nil, "300 e 7 não são nível de personagem")
local close = LG.Closest({ { name = "a", progress = 0.2 }, { name = "b", progress = 0.9 }, { name = "c", completed = true, progress = 1 },
	{ name = "d", progress = 0.9 } }, 2)
check(#close == 2 and close[1].name == "b" and close[2].name == "d", "mais perto: maior progresso, sem os feitos")
local byClass = LG.BestByClass({ x = { class = "MAGE", level = 60 }, y = { class = "MAGE", level = 31 }, z = { class = "WARRIOR", level = 17 } })
check(byClass.MAGE == 60 and byClass.WARRIOR == 17 and byClass.ROGUE == nil, "o mais alto de cada classe")

-- ── Tema ─────────────────────────────────────────────────────────────────────
local uns = {}
assert(loadfile(ROOT .. "/UI.lua"))("Lodestar", uns)
local UI = uns.UI
local ref = UI.COL.active
check(UI.theme == "light" and not UI.dark, "o tema padrão é o claro")
local lightInk = ref[1]
UI.ApplyTheme("dark")
check(UI.COL.active == ref and ref[1] ~= lightInk and UI.dark, "trocar o tema muda a MESMA tabela (quem guardou a referência vê)")
check(UI.HUD.active[1] > 0.8, "a paleta do HUD (sobre o mundo) é sempre a clara de texto")
UI.ApplyTheme("light")
check(UI.Hex("active") == "1d2230", "Hex do texto no claro: " .. UI.Hex("active"))
UI.ApplyTheme("inexistente")
check(UI.theme == "light", "tema desconhecido cai no claro")
for k, v in pairs(UI.THEMES.light) do check(UI.THEMES.dark[k], "o escuro tem o token " .. k) end
for k in pairs(UI.THEMES.dark) do check(UI.THEMES.light[k], "o claro tem o token " .. k) end

-- ── DungeonData (gerado) ─────────────────────────────────────────────────────
local dns = {}
assert(loadfile(ROOT .. "/ZoneData.lua"))("Lodestar", dns)
assert(loadfile(ROOT .. "/DungeonData.lua"))("Lodestar", dns)
check(#dns.dungeonData >= 20, "as masmorras e raides do roteiro (" .. #dns.dungeonData .. ")")
local seenInst = {}
for _, d in ipairs(dns.dungeonData) do
	check(d.lo <= d.hi and d.lo >= 10 and d.hi <= 60, d.key .. ": faixa válida")
	check(dns.zoneUiMap[d.zone], d.key .. ": a zona da entrada existe (" .. d.zone .. ")")
	check(d.x > 0 and d.x < 100 and d.y > 0 and d.y < 100, d.key .. ": entrada dentro do mapa")
	check(#d.bosses > 0, d.key .. ": tem chefes")
	check(not seenInst[d.instance], d.key .. ": instância única")
	seenInst[d.instance] = true
	for _, b in ipairs(d.bosses) do
		for _, it in ipairs(b.loot) do
			check(type(it[1]) == "number" and it[2] > 0 and it[2] <= 100, d.key .. "/" .. b.name .. ": item e chance")
		end
	end
end

-- ── issue #92: enquanto está aqui ────────────────────────────────────────────
local N = loadPure("Nearby.lua").Nearby
local near = N.Pick({ { q = 1, dist = 50, kind = "objective" }, { q = 1, dist = 30, kind = "turnin" },
	{ q = 2, dist = 300, kind = "accept" }, { q = 3, dist = 100, kind = "accept" }, { q = 4, dist = 10, kind = "objective" },
	{ q = 5, dist = 150, kind = "objective" } }, 220, 3)
check(#near == 3 and near[1].q == 4 and near[2].q == 1 and near[2].dist == 30 and near[3].q == 3,
	"enquanto está aqui: no raio, uma por quest (a mais perto), do mais perto, até 3")
check(N.Signature(near) == "objective:4,turnin:1,accept:3", "assinatura do que mostrar")
check(#N.Pick({}, 100, 3) == 0 and #N.Pick({ { q = 1 } }, 100, 3) == 0, "sem distância: fora")
check(N.StepNPC({ { verb = "accept", text = "Westfall Stew" }, { verb = "talk", text = "" }, { verb = "talk", text = "Salma" } })
	.text == "Salma" and N.StepNPC({ { verb = "accept", text = "X" } }) == nil, "quem dá a quest: o primeiro talk com nome")

-- issue #100: só o que já abre, e nada que o guia faça na volta
local doneSet = { [7841] = true, [5] = true }
local function isDone(id) return doneSet[id] end
check(N.Opens(nil, 1, isDone) and N.Opens({ r = 44, a = { 7841 } }, 48, isDone)
	and not N.Opens({ r = 44, a = { 7841 } }, 40, isDone) and not N.Opens({ a = { 9 } }, 60, isDone)
	and N.Opens({ g = { 5, 7841 } }, 60, isDone) and not N.Opens({ g = { 5, 6 } }, 60, isDone),
	"abre: nível mínimo, um dos pré-requisitos (a) e todos (g)")
local pts = { { step = 3, x = 0, y = 0, c = 0 }, { step = 9, x = 500, y = 500, c = 0 } }
check(N.Revisits(pts, 5, { x = 30, y = 40, c = 0 }) and not N.Revisits(pts, 3, { x = 30, y = 40, c = 0 })
	and not N.Revisits(pts, 5, { x = 30, y = 40, c = 1 }) and not N.Revisits(pts, 5, { x = 200, y = 0, c = 0 })
	and not N.Revisits(pts, 5, nil), "volta: passo antes do da sugestão, mesmo continente, até 60 jd")

-- ── botão de alvo ────────────────────────────────────────────────────────────
local TB = loadPure("TargetButton.lua").TargetButton
local tg = TB.Targets({ { verb = "kill", id = 5, text = "Boar" }, { verb = "talk", id = 6, text = "Gryan" },
	{ verb = "kill", id = 5, text = "Boar" }, { verb = "collect", id = 7, text = "Tusk" }, { verb = "kill", id = 8, text = "Done" } },
	nil, function(g) return g.id == 8 end, { [6] = "Gryan Mantoforte" })
check(#tg == 2 and tg[1].id == 5 and tg[1].enemy and tg[2].name == "Gryan Mantoforte" and not tg[2].enemy,
	"alvos: mata e fala, um por id, sem os feitos, com o nome aprendido")
check(TB.Macro("Mother Fang") == "/targetexact Mother Fang" and TB.Macro("a\n/run x") == "/targetexact a /run x",
	"macro: quebra de linha não vira outro comando")
check(TB.Icon(true) == 8 and TB.Icon(false) == 1, "caveira no inimigo, estrela no NPC")

-- ── grupo sincronizado ───────────────────────────────────────────────────────
local PS = loadPure("PartySync.lua").PartySync
local enc = PS.Encode({ [153] = "3/15", [22] = "c", [109] = "x" })
check(enc == "LS3|S|22:c,109:x,153:3/15", "codec: ids em ordem")
local dec = PS.Decode(enc)
check(dec and dec[22] == "c" and dec[109] == "x" and dec[153][1] == 3 and dec[153][2] == 15, "ida e volta")
for _, bad in ipairs({ "lixo", "LS3|X|1:c", "LS3|S|1:9/5", "LS3|S|abc:c", "LS3|S|1:z", "LS3|S|1:0/0",
	"LS3|S|" .. string.rep("1:c,", 70) }) do
	check(PS.Decode(bad) == nil, "descartado: " .. bad:sub(1, 30))
end
check(PS.Decode("LS3|S|") and next(PS.Decode("LS3|S|")) == nil, "vazio é válido (nada a dizer)")
local big = {}
for i = 1, 200 do big[100000 + i] = "12/15" end
check(#PS.Encode(big) <= 255 and PS.Decode(PS.Encode(big)), "muitas quests: corta no limite e continua válido")
check(PS.Line({ { name = "Ana", state = { 5, 8 } }, { name = "Bia", state = "c" }, { name = "Caio", state = "x" } },
	{ PS_READY = "%s pronta", PS_MISSING = "%s não tem" }) == "Ana 5/8 · Bia pronta · Caio não tem", "a linha sob o objetivo")

-- ── raros ────────────────────────────────────────────────────────────────────
local RR = loadPure("Rares.lua").Rares
local rares = { { id = 1, name = "A", pts = { { 10, 10 }, { 50, 50 } } }, { id = 2, name = "B", pts = { { 90, 90 } } } }
local nearR = RR.Near(rares, function(x, y) return math.sqrt((x - 48) ^ 2 + (y - 48) ^ 2) * 10 end, 160)
check(#nearR == 1 and nearR[1].rare.id == 1 and nearR[1].x == 50, "raro perto: o ponto mais perto dentro do raio")
local last = {}
check(RR.ShouldAlert(last, 1, 100) and not RR.ShouldAlert(last, 1, 200) and RR.ShouldAlert(last, 1, 100 + RR.COOLDOWN),
	"um aviso por raro a cada 15 min")
local rdns = {}
assert(loadfile(ROOT .. "/ZoneData.lua"))("Lodestar", rdns)
assert(loadfile(ROOT .. "/RareData.lua"))("Lodestar", rdns)
local nr = 0
for zone, list in pairs(rdns.rareData) do
	check(rdns.zoneUiMap[zone], "raros: a zona existe (" .. zone .. ")")
	for _, r in ipairs(list) do
		nr = nr + 1
		check(type(r.id) == "number" and r.name ~= "" and #r.pts >= 1 and #r.pts <= 6, "raro " .. r.name .. ": id, nome, pontos")
		for _, p in ipairs(r.pts) do check(p[1] >= 0 and p[1] <= 100 and p[2] >= 0 and p[2] <= 100, "ponto no mapa") end
	end
end
check(nr > 200, "raros do mundo (" .. nr .. ")")

-- ── personagens e versão ─────────────────────────────────────────────────────
local CH = loadPure("Characters.lua").Characters
local chars, gold = CH.Sorted({ ["Ana-R"] = { level = 30, money = 100, t = 5 }, ["Bia-R"] = { level = 60, money = 50, t = 1 },
	["Caio-R"] = { level = 30, money = 0, t = 9 } })
check(chars[1].name == "Bia" and chars[2].name == "Caio" and chars[3].name == "Ana" and gold == 150,
	"personagens: nível, depois o mais recente; ouro total")
check(CH.Ago(1000, 1030) == "now" and CH.Ago(0, 600) == "10 min ago" and CH.Ago(0, 3 * 86400) == "3 days ago",
	"há quanto tempo")
local U = loadPure("Updates.lua").Updates
check(U.Compare("2.15.0", "2.14.1") == 1 and U.Compare("2.14.1", "2.15.0") == -1 and U.Compare("v3.0", "3.0.0") == 0,
	"comparação de versão")
check(U.Compare("dev", "2.0.0") == nil and U.Parse("@project-version@") == nil, "dev e token: não é versão")
check(U.FromCaps("v=2.16.0,lvl=17,guide=Westfall,step=3/80,v=1.2") == "2.16.0", "a versão do Lodestar nas caps da rede")
check(U.FromCaps("v=1.2,mode=x") == nil, "caps de outro addon sem lvl: não confunde")

-- ── issue #93: quest cinza ───────────────────────────────────────────────────
local QG = loadPure("QuestState.lua").QuestState
check(QG.IsGrey(43, 47, 3) and not QG.IsGrey(44, 47, 3) and not QG.IsGrey(43, 47, nil) and not QG.IsGrey(nil, 47, 3),
	"cinza: passou do nível da quest mais que a faixa do cliente; sem dado, não é")
-- 10 é cinza e só libera 11 (cinza); 20 é cinza mas libera 21 (não é cinza); 30 não é cinza
local gsteps = {
	{ goals = { { verb = "accept", id = 10 }, { verb = "accept", id = 20 }, { verb = "accept", id = 30 } } },
	{ only = "completed(10)", goals = { { verb = "accept", id = 11 } } },
	{ only = "completed(20)", goals = { { verb = "accept", id = 21 } } },
	{ goals = { { verb = "turnin", id = 10 }, { verb = "kill", q = { id = 20, obj = 1 } } } },
}
local greyIds = { [10] = true, [11] = true, [20] = true }
local gskip = QG.GreySkip({ gsteps }, function(q) return greyIds[q] end)
check(gskip[10] and gskip[11] and not gskip[20] and not gskip[21] and not gskip[30],
	"cinza sai do guia com o que só ela libera; fica a que leva a quest que ainda vale")
-- ciclo: 1 e 2 cinza, uma libera a outra, e 1 libera 3 (não é cinza): nenhuma sai
local cyc = QG.GreySkip({ {
	{ only = "completed(2)", goals = { { verb = "accept", id = 1 } } },
	{ only = "completed(1)", goals = { { verb = "accept", id = 2 } } },
	{ only = "completed(1)", goals = { { verb = "accept", id = 3 } } },
} }, function(q) return q ~= 3 end)
check(not cyc[1] and not cyc[2] and not cyc[3], "cinza em ciclo que leva a quest que vale: fica")
local un, ut = QG.Useful(gsteps, function(q) return not greyIds[q] end)
check(un == 2 and ut == 5, "o que ainda serve: quests para pegar, sem repetir, as úteis")

-- ── issue #94: colecionáveis ─────────────────────────────────────────────────
local CO = loadPure("Collect.lua").Collect
local PA = loadPure("Parser.lua")
local route = CO.Route({ { id = 1, zone = "A", x = 10, y = 10 }, { id = 2, zone = "B", x = 5, y = 5 },
	{ id = 3, zone = "A", x = 90, y = 90 }, { id = 4, zone = "A", x = 12, y = 11 } })
check(route[1].id == 1 and route[2].id == 4 and route[3].id == 3 and route[4].id == 2,
	"rota: zonas na ordem em que aparecem, vizinho mais perto dentro da zona")
local books = { { id = 7, name = "Journal", zone = "Elwynn Forest", x = 65.4, y = 70.1, note = "top floor" },
	{ id = 8, name = "Primer | x", zone = "Tirisfal Glades", x = 59.5, y = 52.3, faction = "Horde" } }
local bsteps = PA:ParseGuide(CO.BooksBody(books, { Alliance = { name = "Librarian", npc = 99, zone = "Stormwind City", x = 50, y = 50 } }))
check(#bsteps == 3 and bsteps[1].goals[1].verb == "click" and bsteps[1].goals[1].complete == "collected(books:7)"
	and bsteps[1].goals[1].goto_.zone == "Elwynn Forest" and bsteps[2].only == "Horde"
	and bsteps[3].only == "Alliance" and bsteps[3].goals[1].verb == "talk",
	"guia dos livros: um passo por livro (fecha ao pegar, facção), a entrega no fim; a barra do nome não quebra")
local qsteps = PA:ParseGuide(CO.QuestBody({ name = "Cozy", lvl = 14, steps = {
	{ act = "click", target = "Burned-Out Remains", zone = "Westfall", x = 37, y = 50, faction = "Alliance" },
	{ act = "accept", target = "Stepping Stones", id = 123, zone = "Stonetalon Mountains", x = 1, y = 2 },
	{ act = "emote", target = "/dance with the slime", zone = "Undercity", x = 3, y = 4 },
	{ act = "goto", zone = "Loch Modan", x = 46, y = 15 } } }))
check(#qsteps == 5 and qsteps[1].goals[1].verb == "ding" and qsteps[2].only == "Alliance"
	and qsteps[3].goals[1].verb == "accept" and qsteps[3].goals[1].id == 123 and qsteps[4].goals[1].verb == "note"
	and qsteps[4].goals[1].goto_.zone == "Undercity" and qsteps[5].goals[1].verb == "goto_",
	"guia de missão de colecionável: nível, facção, aceite com id, emote como nota com ponto, ir até")
local esteps = PA:ParseGuide(CO.QuestBody({ name = "Slime", steps = {
	{ act = "emote", target = "Sewer Slime", note = "/dance with it", zone = "Undercity", x = 1, y = 2 } } }))
check(esteps[1].goals[1].verb == "note" and esteps[1].goals[1].tips and esteps[1].goals[1].tips[1] == "/dance with it",
	"emote: o segredo (a nota) vira dica quando o alvo é o texto da linha")
local psteps = PA:ParseGuide(CO.PetsBody({ { id = 5, name = "Ol' Sooty", family = "Bear", lvl = 20, zone = "Loch Modan",
	pts = { { 40, 40 } } } }))
check(#psteps == 1 and psteps[1].only == "HUNTER" and psteps[1].goals[1].complete == "collected(pets:5)"
	and psteps[1].goals[1].tips and psteps[1].goals[1].tips[1]:find("Sooty"), "guia dos pets raros: só caçador, fecha ao marcar")
local cnear = CO.Near({ { id = 1, zone = "Z", x = 1, y = 1 }, { id = 2, zone = "Z", pts = { { 9, 9 }, { 2, 2 } } },
	{ id = 3, zone = "Z", x = 5, y = 5 } }, function(_, x, y) return x * 10 end, 60, function(e) return e.id == 3 end)
check(#cnear == 2 and cnear[1].e.id == 1 and cnear[2].e.id == 2 and cnear[2].x == 2, "perto: o ponto mais perto, sem o já pego")
local pd, pt = CO.Progress({ { id = 1 }, { id = 2 } }, function(e) return e.id == 1 end)
check(pd == 1 and pt == 2, "progresso")

print(("ok: %d checks"):format(checks))
