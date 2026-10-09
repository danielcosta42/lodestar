-- Testes do núcleo da retrospectiva (Retro.lua): agregados da jornada, destaques, texto.
--
--   luajit tools/retro-tests.lua
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

local ns = {}
assert(loadfile(ROOT .. "/Retro.lua"))("Lodestar", ns)
local RE = ns.Retro

-- jornada com dados a partir do nível 5 (addon instalado no 4)
local run = { levels = {}, levelPlayed = { [60] = 360000 }, zonesSeen = { A = true, B = true, C = true } }
for L = 5, 60 do
	run.levels[L] = { time = 1000 + L * 100, xp = 400 * L, quests = 3, deaths = (L % 10 == 0) and 1 or 0,
		gold = 1000, steps = 2 }
end
run.levels[4] = {}                                          -- nível sem números (addon desligado)
run.levels[23] = { time = 600, xp = 400 * 23, quests = 9, deaths = 0, gold = 5000, steps = 7 }   -- voou
run.levels[41] = { time = 20000, xp = 400 * 41, quests = 1, deaths = 2, gold = -300, steps = 0 } -- empacou
local s = RE.Summary(run, 60, 999999)
check(s.first == 5 and s.bars[4] == nil and s.bars[5] == 1500 and s.bars[60] == 7000, "barras desde o 5; nível sem dado vazio")
check(s.played == 360000 and s.done, "no 60: o /played do ding, jornada completa")
check(s.best.level == 23 and s.worst.level == 41, "destaques pelo ritmo (XP/h), não pelo tempo bruto")
check(s.quests == 3 * 54 + 9 + 1 and s.steps == 2 * 54 + 7 and s.deaths == 6 + 2, "totais somados: " .. s.quests)
check(s.gold == 1000 * 54 + 5000 - 300 and s.zones == 3 and s.max == 20000, "ouro, zonas distintas e a maior barra")

-- jornada em andamento: o /played de agora; poucos níveis medidos, sem destaque
local curta = { levels = { [2] = { time = 100, xp = 400 }, [3] = { time = 200, xp = 900 } }, levelPlayed = {} }
s = RE.Summary(curta, 3, 5000)
check(s.played == 5000 and not s.done and s.best == nil and s.zones == nil, "em andamento, com menos de 3 níveis: sem destaque")

-- linha para o chat da guilda (manual): cita o Lodestar e o link, cabe em 255
local L = {
	RETRO_CHAT = "[Lodestar] Jornada até o %d: %s de jogo · %d quests · %d mortes · nota %s · %s",
}
local msg = RE.ChatLine(L, RE.Summary(run, 60, 0), "A", "curseforge.com/wow/addons/lodestar", function(t) return math.floor(t / 3600) .. "h" end)
check(msg == "[Lodestar] Jornada até o 60: 100h de jogo · 172 quests · 8 mortes · nota A · curseforge.com/wow/addons/lodestar",
	"linha do chat: " .. msg)
check(#msg <= 255, "cabe numa mensagem")

print(("ok: %d checks"):format(checks))
