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

-- tempo esperado de cada nível (s): cresce com o nível, como o XP do jogo
local function par(L) return 600 + L * 300 end

-- jornada com dados a partir do nível 5 (addon instalado no 4), no ritmo esperado
local run = { levels = {}, levelPlayed = { [60] = 360000 }, zonesSeen = { A = true, B = true, C = true } }
for L = 5, 60 do
	run.levels[L] = { time = par(L), xp = 400 * L, quests = 3, deaths = (L % 10 == 0) and 1 or 0, gold = 1000, steps = 2 }
end
run.levels[4] = {}                                          -- nível sem números (addon desligado)
run.levels[23] = { time = par(23) / 3, xp = 400 * 23, quests = 9, deaths = 0, gold = 5000, steps = 7 }   -- voou
run.levels[41] = { time = par(41) * 4, xp = 400 * 41, quests = 1, deaths = 2, gold = -300, steps = 0 }  -- empacou
local s = RE.Summary(run, 60, 999999, 60, par)
check(s.first == 5 and s.bars[4] == nil and s.bars[5] == par(5) and s.bars[60] == par(60), "barras desde o 5; nível sem dado vazio")
check(s.played == 360000 and s.done, "no máximo: o /played do ding, jornada completa")
check(s.best.level == 23 and s.worst.level == 41, "destaques contra o tempo esperado de cada nível")
check(s.quests == 3 * 54 + 9 + 1 and s.steps == 2 * 54 + 7 and s.deaths == 6 + 2, "totais somados: " .. s.quests)
check(s.gold == 1000 * 54 + 5000 - 300 and s.zones == 3, "ouro e zonas distintas")
check(s.cap < par(41) * 4 and s.cap >= par(60), "um nível empacado não achata o gráfico: teto (" .. math.floor(s.cap) .. ")")

-- XP/h cresce ~10x do 2 ao 60: o nível 2 não é o "pior" só por ser baixo
local subida = { levels = {}, levelPlayed = {} }
for L = 2, 20 do subida.levels[L] = { time = par(L), xp = 100 * L * L } end
subida.levels[12] = { time = par(12) * 2, xp = 100 * 144 }
s = RE.Summary(subida, 20, 50000, 60, par)
check(s.worst.level == 12, "pior ritmo: o nível que demorou mais que o esperado, não o mais baixo")

-- máximo do servidor (beta: 30): a jornada se completa nele
s = RE.Summary(run, 30, 999999, 30, par)
check(s.done and s.maxLevel == 30, "jornada completa no máximo do servidor")

-- jornada em andamento: o /played de agora; poucos níveis medidos, sem destaque
local curta = { levels = { [2] = { time = 100, xp = 400 }, [3] = { time = 200, xp = 900 } }, levelPlayed = { [3] = 300 } }
s = RE.Summary(curta, 3, 5000, 60, par)
check(s.played == 5000 and not s.done and s.best == nil and s.zones == nil, "em andamento, com menos de 3 níveis: sem destaque")
s = RE.Summary(curta, 3, nil, 60, par)
check(s.played == 300, "sem /played ainda: o do último ding")
s = RE.Summary({ levels = {}, levelPlayed = {} }, 3, nil, 60, par)
check(s.played == nil, "sem nada: sem tempo (não zero)")

-- depois do máximo: o retrato tirado no ding vale (raide e PvP não mudam a jornada)
local fim = { levels = run.levels, levelPlayed = run.levelPlayed, zonesSeen = { A = true, B = true, C = true, D = true },
	final = { deaths = 9, zones = 3 } }
s = RE.Summary(fim, 60, 999999, 60, par)
check(s.finalDeaths == 9 and s.zones == 3, "jornada completa: mortes e zonas do retrato do ding")

-- linha para o chat da guilda (manual): cita o Lodestar e o link, cabe em 255
local L = {
	RETRO_CHAT = "[Lodestar] Jornada até o %d: %s de jogo · %d quests · %d mortes · nota %s · %s",
}
local msg = RE.ChatLine(L, RE.Summary(run, 60, 0, 60, par), "A", "curseforge.com/wow/addons/lodestar",
	function(t) return math.floor(t / 3600) .. "h" end)
check(msg == "[Lodestar] Jornada até o 60: 100h de jogo · 172 quests · 8 mortes · nota A · curseforge.com/wow/addons/lodestar",
	"linha do chat: " .. msg)
check(#msg <= 255, "cabe numa mensagem")

print(("ok: %d checks"):format(checks))
