-- Testes do núcleo da corrida (RaceMilestones, Race): codec, plausibilidade, placares, eventos,
-- repasse. Rodados contra os arquivos de verdade, fora do jogo.
--
--   luajit tools/race-tests.lua
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

local ns = load("RaceMilestones.lua", {})
load("Race.lua", ns)
local R, MS = ns.Race, ns.RACE_MILESTONES
local H = 3600

-- ── T1: a tabela de marcos ───────────────────────────────────────────────────
local ids, kinds = {}, { level = true, quest = true, dungeon = true, skill = true }
local ultimoNivel, ultimoPiso = 0, 0
for _, m in ipairs(MS) do
	check(type(m.id) == "string" and m.id:match("^[%w]+$") and not ids[m.id], "marco com id único e simples: " .. tostring(m.id))
	ids[m.id] = true
	check(kinds[m.kind], "kind conhecido: " .. m.id)
	check(type(m.min) == "number" and m.min > 0, "piso de /played: " .. m.id)
	if m.kind == "level" then
		check(m.v > ultimoNivel and m.min > ultimoPiso, "níveis em ordem, pisos crescentes: " .. m.id)
		ultimoNivel, ultimoPiso = m.v, m.min
	end
	if m.kind == "quest" then check(type(m.v) == "table" and #m.v > 0, "marco de quest com ids: " .. m.id) end
end
check(ids.l10 and ids.l60 and ids.dg and ids.p300 and ids.mc and ids.ony, "a v1 tem níveis, masmorra, profissão, Núcleo e Onyxia")
check(R.ById("l30").v == 30 and R.ById("nada") == nil, "busca do marco pelo id")

-- ── T2: codec do registro e plausibilidade ───────────────────────────────────
local rec = { class = "PALADIN", level = 32, xp = 45, played = 20 * H,
	ms = { l10 = 1 * H, l20 = 5 * H, l30 = 15 * H, dg = 3 * H } }
local s = R.EncodeRecord(rec)
check(s == "R1|R|PALADIN|32|45|72000|dg=10800;l10=3600;l20=18000;l30=54000", "registro codificado: " .. s)
local kind, back = R.Decode(s)
check(kind == "R" and back.class == "PALADIN" and back.level == 32 and back.xp == 45 and back.played == 72000
	and back.ms.l30 == 54000 and back.ms.dg == 10800, "ida e volta do registro")
check(R.Decode("R1|R|PALADIN|32|45|72000|") ~= nil, "registro sem marcos é válido")
check(R.Decode("lixo") == nil and R.Decode("R1|R|PALADIN|x|45|1|") == nil and R.Decode("R9|R|A|1|1|1|") == nil,
	"lixo, número inválido e versão desconhecida: descartados")
check(R.Decode("R1|R|PALADIN|61|0|1|") == nil and R.Decode("R1|R|PALADIN|10|101|1|") == nil
	and R.Decode("R1|R|paladin|10|1|1|") == nil, "nível fora de 1–60, XP fora de 0–100, classe inválida: descartados")
_, back = R.Decode("R1|R|MAGE|20|0|36000|l10=60;l20=20000;p300=30000;novo=100")
check(back and back.ms.l10 == nil and back.ms.l20 == 20000, "marco abaixo do piso cai sozinho; o resto fica")
check(back.ms.p300 == nil, "profissão 300 em menos de 10 h: implausível")
check(back.ms.novo == 100, "marco desconhecido (versão nova) é guardado")
check(R.Decode("R1|R|MAGE|20|0|1e400|") == nil and R.Decode("R1|R|MAGE|20|0|999999999999|") == nil,
	"/played absurdo (infinito, séculos): descartado")
local muitos = {}
for i = 1, 40 do muitos[i] = "x" .. i .. "=1" end
check(R.Decode("R1|R|MAGE|20|0|36000|" .. table.concat(muitos, ";")) == nil, "marcos demais numa mensagem: descartada")
check(R.Decode("R1|R|MAGE|20|0|36000|" .. string.rep("a", 20) .. "=1") == nil, "id de marco comprido demais: descartada")
_, back = R.Decode("R1|R|MAGE|25|0|36000|l30=30000")
check(back and back.ms.l30 == nil, "marco de nível acima do nível do registro cai")
_, back = R.Decode("R1|R|MAGE|35|0|36000|l30=40000")
check(back and back.ms.l30 == nil, "marco depois do /played total cai")
_, back = R.Decode("R1|R|MAGE|35|0|90000|l20=30000;l30=25000")
check(back and back.ms.l20 == 30000 and back.ms.l30 == nil, "nível maior batido antes do menor: o fora de ordem cai")

-- ── T3: armazenamento e placares ────────────────────────────────────────────
local store = { recs = {} }
local function r(class, level, xp, played, ms) return { class = class, level = level, xp = xp, played = played, ms = ms or {} } end
R.MergeOwn(store, "Ana", r("MAGE", 30, 10, 20 * H, { l10 = 1 * H, l20 = 6 * H, l30 = 18 * H }), 1000, "Guilda")
R.MergeOwn(store, "Bia", r("ROGUE", 30, 50, 25 * H, { l10 = 2 * H, l20 = 5 * H, l30 = 22 * H }), 1000, "Guilda")
R.MergeOwn(store, "Caio", r("WARRIOR", 30, 50, 22 * H, { l10 = 1.5 * H }), 1000, "Guilda")
R.MergeOwn(store, "Davi", r("PRIEST", 40, 0, 40 * H), 1000, "Outra")
R.MergeOwn(store, "Eva", r("HUNTER", 12, 0, 3 * H), 1000, nil)              -- ouvido pelo grupo
local me = { name = "Eu", rec = r("PALADIN", 31, 0, 30 * H, { l10 = 0.5 * H }) }
local function nomes(rows) local t = {}; for i, x in ipairs(rows) do t[i] = x.name end; return table.concat(t, ",") end

local g = R.Board(store, { kind = "alto", guild = "Guilda", me = me, now = 1000 })
check(nomes(g) == "Eu,Caio,Bia,Ana", "guilda, mais alto: nível, XP, desempate por menos /played (" .. nomes(g) .. ")")
check(g[1].me and g[2].online, "eu marcado; quem anunciou há pouco está online")
local f = R.Board(store, { kind = "l10", guild = "Guilda", me = me, now = 1000 })
check(nomes(f) == "Eu,Ana,Caio,Bia" and f[2].val == 1 * H, "guilda, mais rápido até o 10 (" .. nomes(f) .. ")")
f = R.Board(store, { kind = "l30", guild = "Guilda", me = me, now = 1000 })
check(nomes(f) == "Ana,Bia", "mais rápido: só quem tem tempo no marco (eu ainda não bati o 30)")
g = R.Board(store, { kind = "alto", guild = "Guilda", roster = { Ana = true, Caio = true }, me = me, now = 1000 })
check(nomes(g) == "Eu,Caio,Ana", "quem saiu da guilda (fora do roster) some")
R.MergeOwn(store, "Gil Souza", r("DRUID", 29, 0, 20 * H), 1000, "Guilda")
g = R.Board(store, { kind = "alto", guild = "Guilda", roster = { Ana = true, Caio = true, Gil = true }, me = me, now = 1000 })
check(nomes(g) == "Eu,Caio,Ana,Gil Souza", "nome com sobrenome (Forever) casa com o roster pelo primeiro nome")
store.recs["Gil Souza"] = nil
g = R.Board(store, { kind = "alto", guild = "Guilda", me = me, now = 1000 + 600 })
check(not g[2].online, "sem anúncio há mais de 5 min: offline")
local realm = R.Board(store, { kind = "alto", me = me, now = 1000 })
check(nomes(realm) == "Davi,Eu,Caio,Bia,Ana,Eva", "realm: todos os registros (" .. nomes(realm) .. ")")
store.recs.Eu = r("PALADIN", 5, 0, 1)
check(nomes(R.Board(store, { kind = "alto", me = me, now = 1000 })):find("^Davi,Eu,") , "meu registro salvo não duplica: vale o ao vivo")
check(R.Position(g, "Caio") == 2 and R.Position(g, "Zé") == nil, "posição no placar")
R.MergeOwn(store, "Ana", r("MAGE", 31, 0, 21 * H, { l10 = 1 * H }), 2000, nil)
check(store.recs.Ana.g == "Guilda" and store.recs.Ana.level == 31, "anúncio pelo grupo atualiza sem tirar da guilda")
R.Expire(store, 2000 + 31 * 86400)
check(next(store.recs) == nil, "sem notícia há 30 dias: sai")

-- ── T4: eventos ─────────────────────────────────────────────────────────────
local L = {
	RACE_LEVEL = "Nível %d", RACE_MS_dg = "Primeira masmorra",
	RACE_MSG_MS = "[Lodestar] %s: %s · %s de jogo", RACE_POS_GUILD = "%dº da guilda",
	RACE_POS_REALM = "%dº do realm", RACE_POS_BOTH = "%dº da guilda, %dº do realm",
	RACE_MSG_FIRST60 = "[Lodestar] Primeiro 60 da guilda na corrida! · %s de jogo",
}
check(R.Dur(28 * H + 15 * 60) == "1d 4h" and R.Dur(4 * H + 12 * 60) == "4h 12m" and R.Dur(600) == "10m",
	"duração curta: " .. R.Dur(28 * H + 15 * 60))
check(R.MilestoneText(L, R.ById("l30"), 2, nil, 28 * H) == "[Lodestar] Nível 30: 2º da guilda · 1d 4h de jogo",
	"marco com a posição na guilda")
check(R.MilestoneText(L, R.ById("dg"), 1, 5, 3 * H) == "[Lodestar] Primeira masmorra: 1º da guilda, 5º do realm · 3h 0m de jogo",
	"marco com guilda e realm")
check(R.MilestoneText(L, R.ById("l60"), 1, 9, 100 * H) == "[Lodestar] Primeiro 60 da guilda na corrida! · 4d 4h de jogo",
	"primeiro 60 da guilda")
L.RACE_MSG_SOLO = "[Lodestar] %s · %s de jogo"
check(R.MilestoneText(L, R.ById("l20"), nil, nil, H) == "[Lodestar] Nível 20 · 1h 0m de jogo",
	"sem posição (poucos no placar): o marco sem posição")
check(R.MilestoneText(L, R.ById("l60"), nil, nil, 100 * H) == "[Lodestar] Nível 60 · 4d 4h de jogo",
	"60 sem posição não se diz o primeiro da guilda")
local rows = { { name = "Eu" }, { name = "B" }, { name = "C" } }
check(R.Lead(rows, "Eu") and not R.Lead({ { name = "Eu" }, { name = "B" } }, "Eu") and not R.Lead(rows, "B"),
	"liderança: 1º com pelo menos 3 no placar")
local p = R.Passes({ "A", "Eu", "B", "C" }, { "A", "B", "C", "Eu" }, "Eu")
check(#p == 2 and p[1].name == "B" and not p[1].mine, "caí: quem me passou")
p = R.Passes({ "A", "B", "Eu" }, { "Eu", "A", "B" }, "Eu")
check(#p == 2 and p[1].mine, "subi: quem eu passei")
check(#R.Passes({ "A", "Eu" }, { "A", "Eu", "B" }, "Eu") == 0, "gente nova atrás de mim não é ultrapassagem")
local lim = {}
check(R.Allow(lim, "chat", 100, 600) and not R.Allow(lim, "chat", 650, 600) and R.Allow(lim, "chat", 701, 600),
	"limite de frequência: uma a cada 10 min")

print(("ok: %d checks"):format(checks))
