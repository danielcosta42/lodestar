-- Testes do núcleo dos splits (Splits.lua): segmentos, linhas do painel, ouro, formatação.
--
--   luajit tools/splits-tests.lua
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
assert(loadfile(ROOT .. "/Splits.lua"))("Lodestar", ns)
local SP = ns.Splits

-- formatação: relógio de speedrun e diferença com sinal
check(SP.Clock(65) == "1:05" and SP.Clock(3725) == "1:02:05" and SP.Clock(90061) == "1d 1:01",
	"relógio: " .. SP.Clock(65) .. " " .. SP.Clock(3725) .. " " .. SP.Clock(90061))
check(SP.Delta(-252) == "-4:12" and SP.Delta(83) == "+1:23" and SP.Delta(0) == "+0:00", "diferença: " .. SP.Delta(-252))

-- segmento do nível L = /played no ding de L menos o do ding de L-1
local lp = { [10] = 3000, [11] = 3600, [12] = 4500, [13] = 5600 }
check(SP.Segment(lp, 12) == 900 and SP.Segment(lp, 10) == nil, "segmento só com os dois dings")

-- ouro: mais rápido que o melhor ANTERIOR; sem anterior (primeira run), sem ouro
check(SP.IsGold(1000, 900) and not SP.IsGold(1000, 1000) and not SP.IsGold(nil, 900), "ouro")

-- linhas contra o recorde: 5 feitos, o atual ao vivo, 2 seguintes da comparação
local pb = { [10] = 3100, [11] = 3500, [12] = 4600, [13] = 5500, [14] = 6700, [15] = 8000 }
local rows = SP.Rows({ lp = lp, cmp = pb, best = { [12] = 950, [13] = 1200 }, gold = { [12] = true },
	cur = 13, live = 6000, mode = "pb" })
local function linha(L) for _, r in ipairs(rows) do if r.level == L then return r end end end
check(#rows == 7 and rows[1].level == 9 and rows[5].level == 13 and rows[6].level == 14 and rows[7].level == 15,
	"9..13 feitos, 14 ao vivo, 15 seguinte (" .. #rows .. " linhas)")
check(linha(9).t == nil and linha(9).delta == nil, "nível sem tempo: sem diferença")
check(linha(11).delta == 100 and linha(12).delta == -100 and linha(13).delta == 100, "diferença acumulada contra o recorde")
check(linha(12).gold and not linha(13).gold, "ouro marcado")
local vivo = linha(14)
check(vivo.live and vivo.t == 6000 and vivo.seg == 400 and vivo.delta == 6000 - 6700, "o atual ao vivo: tempo no nível e diferença")
check(linha(15).future and linha(15).t == 8000 and linha(15).delta == nil, "o seguinte mostra o tempo da comparação")

-- contra o melhor segmento: a diferença é por nível
rows = SP.Rows({ lp = lp, cmp = pb, best = { [12] = 950, [13] = 1200, [14] = 300 }, cur = 13, live = 6000, mode = "seg" })
check(linha(12).delta == -50 and linha(13).delta == -100 and linha(11).delta == nil, "por segmento: só onde há melhor")
check(linha(14).delta == 100, "ao vivo por segmento: o tempo no nível contra o melhor")
check(linha(15).future and linha(15).t == nil, "sem recorde de comparação no modo segmento: o seguinte sem tempo")

-- começo de run: poucos níveis
rows = SP.Rows({ lp = { [2] = 120 }, cmp = {}, best = {}, cur = 2, live = 200, mode = "pb" })
check(rows[1].level == 2 and rows[2].level == 3 and rows[2].live and rows[2].seg == 80, "nível 2: começa do 2")
-- no máximo
rows = SP.Rows({ lp = { [59] = 1e6, [60] = 1.1e6 }, cmp = {}, best = {}, cur = 60, live = 1.2e6, mode = "pb", max = 60 })
check(rows[#rows].level == 60 and not rows[#rows].live, "no nível máximo: nada ao vivo nem seguinte")

print(("ok: %d checks"):format(checks))
