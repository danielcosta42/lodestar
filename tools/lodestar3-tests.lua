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
-- issue #109: o tipo do jogo vem 0 neste cliente; a origem sai do rótulo do texto, e "Todas" conta cada item uma vez
check(CL.SourceKey({ sourceType = 0, source = src }, {}) == "Vendedor", "origem pelo rótulo do texto")
check(CL.SourceKey({ sourceType = 3, source = src }, { [3] = "Vendor" }) == "Vendor", "o tipo do jogo, quando vem")
check(CL.SourceKey({ sourceType = 0, source = "" }, {}) == "" and CL.SourceKey({ sourceType = 0 }, nil) == "",
	"sem texto: Outras")
local col = { { key = "Saque", collected = false }, { key = "Vendedor", collected = false },
	{ key = "Saque", collected = true }, { key = "", collected = false }, { key = "Saque", collected = false } }
local bk, tot = CL.Buckets(col)
check(tot == 5 and #bk == 3 and bk[1][1] == "Saque" and bk[1][2] == 3 and bk[3][1] == "",
	"origens: maior primeiro, Outras no fim")
local bk2, tot2 = CL.Buckets(col, true)
check(tot2 == 4 and bk2[1][2] == 2, "origens só do que falta")
check(#CL.Filter(col, "Saque") == 3 and #CL.Filter(col, "Saque", true) == 2 and #CL.Filter(col, nil) == 5
	and #CL.Filter(col, "") == 1, "filtro pela chave de origem")

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
-- #118: entrega fora do guia e livros na cidade do bibliotecário
local far = N.Pick({ { q = 9, dist = 900, kind = "books", radius = math.huge }, { q = 8, dist = 900, kind = "turnin" } },
	220, 3)
check(#far == 1 and far[1].kind == "books", "os livros valem na cidade toda (raio próprio); o resto, no raio")
local mix = N.Pick({ { q = "books", dist = 40, kind = "books", radius = math.huge }, { q = 7, dist = 40, kind = "turnin" } }, 220, 3)
check(#mix == 2, "empate de distância entre livro e quest não quebra a ordem")
local topo = N.Pick({ { q = 1, dist = 10, kind = "turnin" }, { q = 2, dist = 20, kind = "turnin" },
	{ q = 3, dist = 30, kind = "turnin" }, { q = "books", dist = 900, kind = "books", radius = math.huge, top = true } }, 220, 3)
check(#topo == 3 and topo[1].kind == "books" and topo[2].q == 1 and topo[3].q == 2,
	"os livros na cidade ficam na lista e na frente, mesmo com três linhas mais perto")
local zonas = { "Tanaris", "Durotar" }
local enders = { [10] = { 1, 50, 27, 2, 10, 10 }, [11] = { 1, 60, 60 }, [12] = { 2, 1, 1 } }
local function dz(z, x, y) return z == "Tanaris" and math.abs(x - 50) * 10 + math.abs(y - 27) * 10 or nil end
local fora = N.OffGuideTurnins({ 10, 11, 12, 13 }, { [11] = true }, enders, zonas, dz)
check(#fora == 1 and fora[1].q == 10 and fora[1].dist == 0 and fora[1].offGuide and fora[1].goal.goto_.zone == "Tanaris"
	and fora[1].goal.goto_.x == 50, "entrega fora do guia: a do guia não entra; sem ponto conhecido ou outro continente, não")
local gt = N.GuideTurnins({ { goals = { { id = 5, verb = "turnin" }, { id = 6, verb = "turnin" } } },
	{ goals = { { id = 7, verb = "accept" }, { id = 5, verb = "turnin" } } } }, function(g) return g.id ~= 6 and g.id or nil end)
check(gt[5] == 2 and not gt[6] and not gt[7], "o último passo em que o guia entrega cada quest (a só pegada fica de fora)")
local ex = N.Excluded({ [5] = 2, [8] = 1 }, 2, { [9] = true })
check(ex[5] and not ex[8] and ex[9], "fora do guia: a entrega que ficou para trás conta; a que vem e a pulada, não")
check(#N.Pick({}, 100, 3) == 0 and #N.Pick({ { q = 1 } }, 100, 3) == 0, "sem distância: fora")
check(N.StepNPC({ { verb = "accept", text = "Westfall Stew" }, { verb = "talk", text = "" }, { verb = "talk", text = "Salma" } })
	.text == "Salma" and N.StepNPC({ { verb = "accept", text = "X" } }) == nil, "quem dá a quest: o primeiro talk com nome")

-- issue #100: só o que já abre, e nada que o guia faça na volta
local doneSet = { [7841] = true, [5] = true }
local function isDone(id) return doneSet[id] end
check(N.Opens(nil, 1, isDone) and N.Opens({ r = 44, a = { 7841 } }, 48, isDone)
	and not N.Opens({ r = 44, a = { 7841 } }, 40, isDone) and not N.Opens({ a = { 9 } }, 60, isDone)
	and N.Opens({ g = { 5, 7841 } }, 60, isDone) and not N.Opens({ g = { 5, 6 } }, 60, isDone)
	and N.Opens({ g = { 5, { 6, 7841 } } }, 60, isDone) and not N.Opens({ g = { { 6, 9 } } }, 60, isDone),
	"abre: nível mínimo, um dos pré-requisitos (a) e todos (g)")
local pts = { { step = 3, x = 0, y = 0, c = 0 }, { step = 9, x = 500, y = 500, c = 0 } }
check(N.Revisits(pts, 5, { x = 30, y = 40, c = 0 }) and not N.Revisits(pts, 3, { x = 30, y = 40, c = 0 })
	and not N.Revisits(pts, 5, { x = 30, y = 40, c = 1 }) and not N.Revisits(pts, 5, { x = 200, y = 0, c = 0 })
	and not N.Revisits(pts, 5, nil), "volta: passo antes do da sugestão, mesmo continente, até 60 jd")

-- ── issue #122: nesta área ───────────────────────────────────────────────────
;(function()
	local AG = loadPure("AreaGoals.lua").AreaGoals
	local function ob(type_, text, have, need, finished)
		return { type = type_, text = text, numFulfilled = have, numRequired = need, finished = finished or false }
	end
	-- o objetivo do banco no diário: a mesma quantidade e o mesmo tipo em cada posição, a mesma ordem
	local e2 = { { kind = "c", id = 2926 }, { kind = "c", id = 2925 } }
	local id = AG.LogIndex(e2, { ob("monster", "Silvermane Stalker slain: 3/10", 3, 10),
		ob("monster", "Silvermane Howler slain: 0/10", 0, 10) })
	check(id[1] == 1 and id[2] == 2, "nesta área: mesma quantidade e tipo, o índice do banco é o do diário")
	-- o diário com um objetivo a mais (evento) e o objeto antes do mob: pelo nome no texto, e o único do tipo
	local e3 = { { kind = "c", id = 10 }, { kind = "o", id = 20 }, { kind = "i", id = 30 } }
	local log3 = { ob("object", "Altar Selado usado: 0/1", 0, 1), ob("event", "Mensagem entregue", 0, 1),
		ob("monster", "Vilebranch Scalper slain: 4/30", 4, 30), ob("item", "Stalker Flank: 2/8", 2, 8) }
	local names = { c = { [10] = { "Vilebranch Scalper" } }, i = { [30] = "Stalker Flank" } }
	local mp = AG.LogIndex(e3, log3, function(k, i) return names[k] and names[k][i] end)
	check(mp[1] == 3 and mp[3] == 4 and mp[2] == 1,
		"nesta área: sem a guarda, o mob e o item pelo nome no texto; o objeto, o único do tipo")
	local semNome = AG.LogIndex(e3, log3)
	check(semNome[1] == 3 and semNome[2] == 1 and semNome[3] == 4, "sem nome nenhum: o único de cada tipo")
	local dois = AG.LogIndex({ { kind = "c", id = 1 }, { kind = "c", id = 2 } },
		{ ob("monster", "Lobo A slain: 0/5", 0, 5), ob("event", "x", 0, 1), ob("monster", "Lobo B slain: 0/5", 0, 5) })
	check(not dois[1] and not dois[2],
		"dois mobs sem nome e o diário diferente do banco: nenhum (melhor sem contagem errada)")
	check(next(AG.LogIndex(e2, nil)) == nil and next(AG.LogIndex(nil, {})) == nil, "sem diário ou sem dado: nada")
	-- um nome dentro do outro (A New Threat, 170): o mais comprido primeiro, e o nome só vale numa linha livre só
	local rj = { { kind = "c", id = 707 }, { kind = "c", id = 724 } }
	local rjNames = { [707] = "Rockjaw Trogg", [724] = "Burly Rockjaw Trogg" }
	local rjLog = { ob("monster", "Burly Rockjaw Trogg slain: 0/6", 0, 6), ob("monster", "Rockjaw Trogg slain: 0/6", 0, 6),
		ob("event", "Relatório entregue", 0, 1) }
	local rjm = AG.LogIndex(rj, rjLog, function(_, i) return rjNames[i] end)
	check(rjm[1] == 2 and rjm[2] == 1, "Rockjaw Trogg e Burly Rockjaw Trogg: cada um na sua linha (o comprido primeiro)")
	local rjPt = { ob("monster", "Trogg Rocha-mandíbula Robusto morto: 0/6", 0, 6),
		ob("monster", "Trogg Rocha-mandíbula morto: 0/6", 0, 6), ob("event", "Relatório entregue", 0, 1) }
	local rjp = AG.LogIndex(rj, rjPt, function(_, i) return i == 707 and { "Trogg Rocha-mandíbula" } or {} end)
	check(not rjp[1] and not rjp[2], "ptBR com só o nome curto aprendido (cabe nas duas linhas): nenhum, sem chute")
	local amb = AG.LogIndex({ { kind = "c", id = 1 }, { kind = "c", id = 2 } },
		{ ob("monster", "Trogg Rocha Robusto morto: 0/6", 0, 6), ob("monster", "Trogg Rocha morto: 0/6", 0, 6),
			ob("event", "x", 0, 1) },
		function(_, i) return i == 1 and "Trogg Rocha" or "Robu" end)
	check(amb[2] == 1 and not amb[1],
		"o nome ambíguo fica sem par, e o tipo dele não ganha o único que sobrou (seria um chute)")
	-- o nome no texto, sem a contagem (na frente ou atrás) e sem o "slain"
	local slain = { "", " slain" }
	check(AG.Name("Silvermane Howler slain: 20/30", true, slain) == "Silvermane Howler", "nome: o mob sem o slain")
	check(AG.Name("20/30 Silvermane Howler slain", true, slain) == "Silvermane Howler", "nome: a contagem na frente")
	check(AG.Name("Stalker Flank: 2/8", false, slain) == "Stalker Flank", "nome: o item, só sem a contagem")
	check(AG.Name("Caixa de suprimentos: 2/8", false) == "Caixa de suprimentos", "nome: sem affix")
	check(AG.Name("Uivador Juba-de-prata morto: 3/10", true, { "", " morto" }) == "Uivador Juba-de-prata",
		"nome: o affix do cliente (outro idioma)")
	check(AG.Name("Mate Lobo Cinzento: 1/4", true, { "Mate ", "" }) == "Lobo Cinzento", "nome: o affix na frente")
	local af1, af2, af3 = AG.SlainAffix("%s slain: %d/%d"), AG.SlainAffix("%d/%d %s slain"), AG.SlainAffix(nil)
	check(af1[1] == "" and af1[2] == " slain" and af2[2] == " slain" and AG.Name("3/8 Kobold slain", true, af2) == "Kobold"
		and af3[2] == " slain" and AG.SlainAffix("%1$s morto(s): %2$d/%3$d")[2] == " morto(s)",
		"o affix do QUEST_MONSTERS_KILLED: nos dois formatos, com posição e sem o global")
	check(AG.Name("Uivador morto(s): 1/4", true, AG.SlainAffix("%1$s morto(s): %2$d/%3$d")) == "Uivador",
		"nome: o affix com parênteses")
	-- de onde é cada quest
	local steps = { { goals = { { verb = "accept", id = 1 } } }, { goals = { { verb = "kill", q = { id = 2 } } } },
		{ goals = { { verb = "kill", q = { id = 3 } }, { verb = "turnin", id = 2 } } },
		{ goals = { { verb = "turnin", id = 3 } } } }
	local tq = function(g) return (g.verb == "accept" or g.verb == "turnin") and g.id or g.q and g.q.id end
	local tr = AG.Tiers(steps, 2, tq)
	check(tr[2].tier == 1 and tr[2].step == 2 and tr[3].tier == 2 and tr[3].step == 3 and not tr[1],
		"de onde: a do passo atual, a de um passo à frente (o primeiro), e a que só ficou para trás é de fora")
	-- o goal do guia no diário (o cartão do passo)
	local spawn = {
		[2] = { { kind = "c", id = 2926, areas = {} }, { kind = "c", id = 2925, areas = {} } },
		[5] = { { kind = "i", id = 50, areas = {} } },
	}
	local diario = {
		[2] = { ob("monster", "Silvermane Stalker slain: 3/10", 3, 10),
			ob("monster", "Silvermane Howler slain: 0/10", 0, 10) },
		[5] = { ob("item", "Honey: 0/10", 0, 10) },
	}
	local ctx = { entryOf = function(q) return spawn[q] end, objsOf = function(q) return diario[q] end,
		match = function(e, g) for i, o in ipairs(e) do if o.id == g.id then return i end end end }
	check(AG.GoalKey({ verb = "kill", id = 1, q = { id = 2, obj = 1 } }, ctx) == "2:1", "goal: o índice do |q")
	check(AG.GoalKey({ verb = "kill", id = 2925, q = { id = 2 } }, ctx) == "2:2", "goal sem índice: pelo id, no diário")
	check(AG.GoalKey({ verb = "collect", q = { id = 5 } }, ctx) == "5:1", "goal sem índice nem casamento: o único")
	check(AG.GoalKey({ verb = "accept", id = 2 }, ctx) == nil
		and AG.GoalKey({ verb = "kill", q = { id = 9 } }, ctx) == nil,
		"aceite e quest fora do diário: nada")
	local shown = AG.Shown({ { verb = "kill", id = 2926, q = { id = 2 } }, { verb = "talk", id = 9 },
		{ verb = "kill", id = 2925, q = { id = 2 }, off = true } }, ctx, function(g) return not g.off end)
	check(shown["2:1"] and not shown["2:2"], "o cartão: os goals ativos, um objetivo do diário cada")

	-- as linhas: dentro da folga, ainda abertas, fora do cartão, na ordem
	local function area(z, x, y) return { zone = z, x = x, y = y, n = 5, hull = { x, y } } end
	local A = { [1] = area("Z", 10, 10), [2] = area("Z", 20, 20), [3] = area("Z", 30, 30), [4] = area("Z", 40, 40),
		[5] = area("W", 50, 50), [6] = area("Z", 60, 60), [7] = area("Z", 70, 70), [8] = area("Z", 80, 80) }
	local data = {
		[7828] = { { kind = "c", id = 2926 }, { kind = "c", id = 2925 } },               -- do passo
		[7829] = { { kind = "c", id = 2929 } },                                          -- à frente
		[7839] = { { kind = "o", id = 1 }, { kind = "i", id = 19033 } },                 -- à frente
		[77] = { { kind = "i", id = 8684 } },                                            -- fora do guia
		[90] = { { kind = "c", id = 1 } },                                               -- fora do diário
	}
	local logs = {
		[7828] = { ob("monster", "Silvermane Stalker slain: 3/10", 3, 10),
			ob("monster", "Silvermane Howler slain: 9/10", 9, 10) },
		[7829] = { ob("monster", "Savage Owlbeast slain: 0/20", 0, 20) },
		[7839] = { ob("object", "Caixa: 1/1", 1, 1, true), ob("item", "Slagtree's Lost Tools: 2/8", 2, 8) },
		[77] = { ob("item", "Hinterlands Honey Ripple: 10/10", 10, 10) },
	}
	local tiers = { [7828] = { 1, 19 }, [7829] = { 2, 21 }, [7839] = { 2, 20 } }
	local c2 = { entryOf = function(q) return data[q] end, objsOf = function(q) return logs[q] end,
		tierOf = function(q) local ti = tiers[q]; if ti then return ti[1], ti[2] end return 3 end, affix = slain,
		margin = function(z) return z == "W" and 50 or 10 end, shown = { ["7828:1"] = true } }
	local perto = {
		{ q = 7829, obj = 1, area = A[1], d = 0 }, { q = 7839, obj = 2, area = A[2], d = 0 },
		{ q = 7828, obj = 1, area = A[3], d = 0 }, { q = 7828, obj = 2, area = A[4], d = 4 },
		{ q = 7839, obj = 1, area = A[1], d = 0 }, { q = 77, obj = 1, area = A[1], d = 0 },
		{ q = 7829, obj = 1, area = A[6], d = 8 }, { q = 90, obj = 1, area = A[1], d = 0 },
		{ q = 7839, obj = 2, area = A[5], d = 30 }, { q = 7829, obj = 1, area = A[7], d = 12 },
	}
	local rows = AG.Collect(perto, c2)
	local got = {}
	for _, r in ipairs(rows) do got[#got + 1] = r.q .. ":" .. r.log end
	check(table.concat(got, ",") == "7828:2,7839:2,7829:1",
		"as linhas: a do passo primeiro; o feito, a conta cheia, o do cartão e o fora do diário não entram: "
		.. table.concat(got, ","))
	check(rows[1].name == "Silvermane Howler" and rows[1].have == 9 and rows[1].need == 10 and rows[1].tier == 1
		and rows[1].area == A[4], "a do passo: o nome sem o slain, a contagem do diário, a área")
	check(rows[2].kind == "i" and rows[2].name == "Slagtree's Lost Tools" and rows[3].area == A[1] and rows[3].d == 0,
		"à frente: a área mais perto de cada objetivo (um por objetivo do diário)")
	check(AG.Count(rows[2]) == "2/8" and AG.Count({ name = "x" }) == "", "a contagem: feito/pedido; sem pedido, nada")
	-- a folga: a mais de 10 (a zona Z) fica de fora; na zona W, até 50
	local folga = AG.Collect({ { q = 7829, obj = 1, area = A[1], d = 11 }, { q = 7839, obj = 2, area = A[5], d = 30 } },
		c2)
	check(#folga == 1 and folga[1].q == 7839, "a folga é a da zona da área (a maior zona, a folga maior)")
	-- dentro do mesmo grupo: a mais perto, depois o passo
	tiers[7839] = { 2, 25 }
	local ord = AG.Collect({ { q = 7839, obj = 2, area = A[2], d = 0 }, { q = 7829, obj = 1, area = A[1], d = 0 },
		{ q = 77, obj = 1, area = A[1], d = 0 } }, c2)
	check(#ord == 2 and ord[1].q == 7829 and ord[2].q == 7839, "empate de distância: o passo mais perto primeiro")
	logs[77][1] = ob("item", "Hinterlands Honey Ripple: 3/10", 3, 10)
	local off = AG.Collect({ { q = 77, obj = 1, area = A[1], d = 0 }, { q = 7829, obj = 1, area = A[1], d = 5 } }, c2)
	check(#off == 2 and off[1].q == 7829 and off[2].q == 77 and off[2].tier == 3,
		"a de fora do guia depois das do guia, mesmo mais perto")
	logs[77][1] = ob("item", "Hinterlands Honey Ripple: 10/10", 10, 10)
	-- o diário sem texto ainda: o nome do banco/guia
	logs[7829][1] = ob("monster", "", 0, 20)
	c2.nameOf = function(k, i) return k == "c" and i == 2929 and { "Savage Owlbeast" } or nil end
	local sn = AG.Collect({ { q = 7829, obj = 1, area = A[1], d = 0 } }, c2)
	check(sn[1] and sn[1].name == "Savage Owlbeast", "sem o texto do diário: o nome que se sabe")
	c2.nameOf = nil
	check(#AG.Collect({ { q = 7829, obj = 1, area = A[1], d = 0 } }, c2) == 0, "sem nome nenhum: fora")
	logs[7829][1] = ob("monster", "Savage Owlbeast slain: 0/20", 0, 20)
	-- a assinatura muda com a contagem e com a ordem
	local s1 = AG.Signature(rows)
	logs[7828][2] = ob("monster", "Silvermane Howler slain: 10/10", 10, 10)
	local rows2 = AG.Collect(perto, c2)
	check(s1 ~= AG.Signature(rows2) and #rows2 == 2, "a assinatura muda quando a conta muda (e a cheia sai)")
	check(AG.Signature({}) == "", "assinatura vazia")
	local outra = {}
	for k, v in pairs(rows2[1]) do outra[k] = v end
	outra.area = { k = 7 }
	check(AG.Signature({ outra, rows2[2] }) ~= AG.Signature(rows2),
		"a assinatura muda com a área (a área vizinha do mesmo objetivo troca o alvo do clique)")
	check(AG.Find(rows2, rows2[2].q, rows2[2].log) == rows2[2] and AG.Find(rows2, 1, 1) == nil
		and AG.Find(nil, 1, 1) == nil,
		"a linha de agora do mesmo objetivo do diário")
	-- o objetivo na área que não se acha no diário é contado
	local semPar = {}
	local c4 = { entryOf = function() return { { kind = "c", id = 1 }, { kind = "c", id = 2 } } end,
		objsOf = function() return { ob("monster", "Lobo A slain: 0/5", 0, 5), ob("event", "x", 0, 1),
			ob("monster", "Lobo B slain: 0/5", 0, 5) } end, margin = 10, unmapped = semPar }
	check(#AG.Collect({ { q = 55, obj = 2, area = A[1], d = 0 }, { q = 55, obj = 1, area = A[1], d = 3 } }, c4) == 0
		and semPar["55:2"] and semPar["55:1"], "sem par no diário: fora da lista, e contado")

	-- de ponta a ponta com o SA.Near (o contorno de verdade, 0 dentro)
	local sns = loadPure("SpawnMap.lua", { spawnZones = { "Z" }, spawnQuest = {} })
	local DIG = "0123456789abcdefghijklmnopqrstuvwxyz"
	local function b36(v)
		v = math.floor(v + 0.5)
		local hi = math.floor(v / 36)
		return DIG:sub(hi + 1, hi + 1) .. DIG:sub(v % 36 + 1, v % 36 + 1)
	end
	local function enc(cx, cy, hull)
		local s = b36(1) .. b36(cx * 10) .. b36(cy * 10) .. b36(5)
		for _, v in ipairs(hull) do s = s .. b36(v * 10) end
		return s
	end
	sns.spawnQuest[1] = { "c11;" .. enc(45, 30, { 40, 25, 50, 25, 50, 35, 40, 35 }) .. ";"
		.. enc(80, 80, { 78, 78, 82, 78, 80, 82 }) }
	sns.spawnQuest[2] = { "i22;" .. enc(52, 30, { 48, 26, 56, 26, 56, 34, 48, 34 }) }
	local SA = sns.SpawnAreas
	local function wo(_, x, y) return { c = 0, x = x * 10, y = y * 10 } end
	local lg = { [1] = { ob("monster", "Lobo slain: 1/5", 1, 5) }, [2] = { ob("item", "Pele: 0/3", 0, 3) } }
	local c3 = { entryOf = SA.For, objsOf = function(q) return lg[q] end, margin = 10, affix = slain }
	local function at(x, y) return AG.Collect(SA.Near({ 1, 2 }, { c = 0, x = x * 10, y = y * 10 }, 100, wo), c3) end
	local both = at(49, 30)
	check(#both == 2 and both[1].d == 0 and both[2].d == 0, "dentro das duas áreas: as duas linhas")
	check(#at(45, 30) == 1 and at(45, 30)[1].name == "Lobo", "dentro de uma só: uma linha")
	check(#at(45, 36) == 1, "a 10 jd da borda (a folga): ainda dentro")
	check(#at(45, 40) == 0, "a 50 jd: fora")
	check(at(80, 79)[1].area.x == 80, "a outra área do mesmo objetivo: a linha leva a área de onde ele está")
end)()

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
check(TB.Macro("Mother Fang", 8) == "/cleartarget\n/targetexact Mother Fang\n/tm [@target,exists,nodead] ~8"
	and TB.Macro("a\nb", 1) == "/cleartarget\n/targetexact a b\n/tm [@target,exists,nodead] ~1",
	"macro com a marca: limpa o alvo antes, e o ~ só marca sem marca (o SetRaidTarget é protegido; #119)")

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
local paraEntregar = CO.BooksToHandIn({ { item = 1, quest = 101 }, { item = 2, quest = 102 }, { item = 3, quest = 103 },
	{ item = 4 } }, function(i) return i ~= 2 end, function(q) return q == 103 end)
check(#paraEntregar == 1 and paraEntregar[1].item == 1, "livros a entregar: na bolsa e a quest ainda aberta")
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

-- ── issue #99: passagens gravadas ────────────────────────────────────────────
local PS = loadPure("Passages.lua").Passages
local trecho = {}
check(PS.Add(trecho, 0, 0) and not PS.Add(trecho, 1, 1) and PS.Add(trecho, 3, 4) and #trecho == 4,
	"passagem: só grava depois de andar 3 jd")
check(math.abs(PS.Length({ 0, 0, 3, 4, 3, 10 }) - 11) < 1e-9, "passagem: comprimento")
check(PS.Encode({ c = 0, z = "The Hinterlands", pts = { -635.31, -4720.55, -630, -4700 } })
	== "0 / The Hinterlands / -635.3,-4720.6;-630.0,-4700.0", "passagem: texto do relatório (sem barra vertical)")
check(PS.Encode({ c = 1, z = "X", pts = { 0, 0, 1, 1, 2, 2 }, f = { [2] = true } }):find("/ queda: 2$"),
	"passagem: o trecho de queda vai no texto")
local mg = PS.Merge({ { c = 0 } }, { { c = 1 }, { c = 0 } })
check(#mg == 3 and mg[2].c == 1, "passagem: as do addon e as gravadas juntas")
-- faixa de XP (#126): a XP das quests do diário desconta do que falta
do
	local H = loadPure("XPHud.lua", { UI = {} }).XPHud
	local q, pr = H.QuestXP({ { 1000, true }, { 2500, false }, { 0, true }, { "x", false } })
	check(q == 3500 and pr == 1000, "XP das quests: total e prontas")
	check(H.QuestXP({}) == 0 and H.QuestXP(nil) == 0, "sem quests: zero")
	check(H.Eta(10000, 5000, 0, 5000) == 7200, "sem quests: falta ÷ XP/hora")
	check(H.Eta(10000, 5000, 4000, 5000) == 4320, "começo da sessão (só monstro): desconta as quests antes de dividir")
	check(H.Eta(10000, 5000, 12000, 5000) == 0 and H.Eta(10000, 0, 10000, 0) == 0, "as quests bastam: zero, mesmo sem XP/hora")
	check(H.Eta(10000, 0, 2000, 0) == nil and H.Eta(10000, nil, 0) == nil, "sem XP/hora e sem bastar: sem previsão")
	-- 30 min, 5000 de monstro; faltam 20000; duas quests de 8000 no diário. Entregar uma (já descontada) não muda nada
	local antes = H.Eta(20000, 10000, 16000, 10000)
	local depois = H.Eta(12000, 10000, 8000, 26000)
	check(math.abs(antes - 1440) < 1 and math.abs(depois - antes) < 1, "entregar quest já descontada não encurta a previsão")
	-- sessão longa, 60% da XP de entrega e diário vazio: vale a total (a de monstro sozinha seria pessimista)
	check(H.Eta(10000, 4000, 0, 10000) == 3600, "sessão longa: a XP/hora total")
	-- começo de sessão (menos de uma hora: sem a total), uma quest só de 8000 no diário: a entrega não encurta
	local a1, d1 = H.Eta(20000, 10000, 8000, nil), H.Eta(12000, 10000, 0, nil)
	check(math.abs(a1 - 4320) < 1 and math.abs(d1 - a1) < 1, "sem a total, a entrega de uma quest só não encurta")
end
-- compras do guia na casa de leilões (#134)
do
	local SH = loadPure("Shopping.lua").Shopping
	check(SH.Tradeable(12, 0) == false, "classe de quest: nunca")
	check(SH.Tradeable(7, 0) and SH.Tradeable(15, 2) and SH.Tradeable(0, 3), "sem vínculo, ao equipar, ao usar: negociável")
	check(SH.Tradeable(7, 1) == false and SH.Tradeable(15, 4) == false, "preso ao pegar ou de quest: não")
	check(SH.Tradeable(7, nil) == nil, "sem o vínculo ainda: não se sabe")
	local trocavel = { [2589] = true, [769] = true, [4589] = false, [11018] = nil, [3239] = true, [5469] = true }
	local steps = {
		{ goals = { { verb = "collect", id = 2589, count = 10, text = "Linen Cloth", q = { id = 1 } } } },
		{ goals = { { verb = "collect", id = 2589, count = 10, text = "Linen Cloth", q = { id = 1 } },      -- o mesmo objetivo
			{ verb = "collect", id = 2589, count = 6, text = "Linen Cloth", q = { id = 2 } } } },         -- outra quest
		{ goals = { { verb = "collect", id = 769, count = 8, text = "Chunk of Boar Meat", q = { id = 3 }, feito = true } } },
		{ goals = { { verb = "kill", id = 99, count = 5 }, { verb = "collect", id = 4589, count = 10, q = { id = 4 } } } },
		{ goals = { { verb = "get", id = 11018, count = 3, text = "Un'Goro Soil", q = { id = 5 } } } },
		{ inativo = true, goals = { { verb = "collect", id = 769, count = 4, text = "Chunk of Boar Meat", q = { id = 6 } } } },
		{ goals = { { verb = "collect", id = 769, count = 2, text = "Chunk of Boar Meat", q = { id = 7 }, pulado = true } } },
		{ goals = { { verb = "collect", id = 3239, text = "Benedict's Chest" } } },              -- sem |q: id de objeto
	}
	local fns = {
		ativo = function(st) return not st.inativo end, goalAtivo = function(g) return not g.pulado end,
		feito = function(g) return g.feito end, negociavel = function(id) return trocavel[id] end,
	}
	local needs, pend = SH.Needs(steps, 1, fns)
	check(#needs == 1 and needs[1].id == 2589 and needs[1].precisa == 16 and not needs[1].semConta,
		"Linen: o maior pedido por quest, somado entre quests; feito, inativo, pulado, de quest e sem |q ficam de fora")
	check(pend[11018] and not pend[2589], "sem dados ainda: pendente (pedir e refazer)")
	check(#SH.Needs(steps, 3, fns) == 0, "do passo 3 em diante: nada negociável a comprar")
	-- o pedido pelo diário vence o número do guia; sem nenhum, "não se sabe"
	local semNum = { { goals = { { verb = "collect", id = 5469, text = "Strider Meat", q = { id = 8 } } } } }
	local n1 = SH.Needs(semNum, 1, { negociavel = function() return true end, precisa = function() return 5 end })
	check(n1[1].precisa == 5 and not n1[1].semConta, "sem número no guia: o pedido do diário")
	local n2 = SH.Needs(semNum, 1, { negociavel = function() return true end })
	check(n2[1].precisa == 0 and n2[1].semConta, "sem número e fora do diário: não se sabe")
	local f2 = SH.Missing(n2, function() return 3 end)
	check(#f2 == 1 and f2[1].falta == nil and SH.FaltaTexto(f2[1], "faltam %s") == "faltam ?", "não se sabe: fica, com ?")
	-- o passo à frente pelo estado simulado: a quest que um passo de antes pega
	local futuro = {
		{ goals = { { verb = "accept", id = 9 } } },
		{ only = "haveq(9)", goals = { { verb = "collect", id = 2589, count = 4, text = "Linen Cloth", q = { id = 9 } } } },
		{ goals = { { verb = "turnin", id = 9 } } },
		{ only = "haveq(9)", goals = { { verb = "collect", id = 769, count = 2, text = "Chunk of Boar Meat", q = { id = 9 } } } },
	}
	local function ativoSim(st, sim)
		if st.only == "haveq(9)" then return sim.haveq[9] and not sim.completed[9] end
		return true
	end
	local nf = SH.Needs(futuro, 1, { ativo = ativoSim, negociavel = function() return true end })
	check(#nf == 1 and nf[1].id == 2589 and nf[1].precisa == 4,
		"passo à frente: a quest pegada antes conta; depois de entregue, não")
	local falta = SH.Missing(needs, function(id) return id == 2589 and 4 or 0 end)
	check(#falta == 1 and falta[1].falta == 12, "tira o que já se tem")
	check(#SH.Missing(needs, function() return 16 end) == 0, "exatamente o que precisa: nada")
	check(SH.FaltaTexto({ falta = 6, semConta = true }, "faltam %s") == "faltam 6+", "conta conhecida mais a que não se sabe")
	-- o pedido do diário que é deste goal: |q Q sozinho é a quest inteira (Dun Morogh 317: carne 4 e pele 2)
	local objs = { { type = "item", text = "Chunk of Boar Meat: 0/4", numRequired = 4 },
		{ type = "item", text = "Thick Bear Fur: 0/2", numRequired = 2 } }
	check(SH.NeedFromObjectives(objs, nil, { nil, "Chunk of Boar Meat" }) == 4, "|q sozinho: o objetivo com o nome do item")
	check(SH.NeedFromObjectives(objs, 2, {}) == 2, "|q Q/n: aquele objetivo")
	check(SH.NeedFromObjectives({ objs[1] }, nil, {}) == 4, "quest de um objetivo: ele")
	check(SH.NeedFromObjectives(objs, nil, { "Wolf Fang" }) == nil, "nenhum casa: não se sabe (o número do guia)")
	check(SH.NeedFromObjectives({ { type = "item", text = "Meat A 0/3", numRequired = 3 },
		{ type = "item", text = "Meat B 0/5", numRequired = 5 } }, nil, { "Meat" }) == nil, "dois casam: não se sabe")
end
print(("ok: %d checks"):format(checks))
