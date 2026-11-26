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

print(("ok: %d checks"):format(checks))
