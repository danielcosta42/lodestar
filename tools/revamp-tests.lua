-- Testes do revamp (specs/revamp-polestar, issue #89): o núcleo puro de QuestState (contador, tempo, avisos, quem
-- depende de quem, pular e desfazer, o passo de volta, o que a rota usa, o diário), do relatório, do aviso ao grupo e
-- do /way; e, sob um cliente stubado, a quest pulada no Guide.lua de verdade.
--
--   luajit tools/revamp-tests.lua
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

local function loadPure(file)
	local ns = {}
	assert(loadfile(ROOT .. "/" .. file))("Lodestar", ns)
	return ns
end

-- ── QuestState: contador ─────────────────────────────────────────────────────
local Q = loadPure("QuestState.lua").QuestState
local objs = {
	{ numFulfilled = 3, numRequired = 8, finished = false },
	{ numFulfilled = 1, numRequired = 5, finished = false },
	{ numFulfilled = 0, numRequired = 1, finished = false },
}
check(Q.Progress(objs, 1) == "3/8", "objetivo pelo índice: 3/8")
check(Q.Progress(objs, 2) == "1/5", "segundo objetivo: 1/5")
check(Q.Progress(objs, 3) == nil, "sim/não (0/1) não vira número")
check(Q.Progress(objs) == "3/8 · 1/5", "sem índice, todos com conta: " .. tostring(Q.Progress(objs)))
check(Q.Progress({ { numFulfilled = 12, numRequired = 10 } }, 1) == "10/10", "o jogo passando da conta fica no teto")
check(Q.Progress(nil) == nil and Q.Progress({}, 4) == nil and Q.Progress({}) == nil, "sem objetivo: nada")
local h, n = Q.Counts(objs, 1)
check(h == 3 and n == 8, "contagem crua do objetivo 1")
h, n = Q.Counts(objs)
check(h == 4 and n == 14, "sem índice: soma dos que têm conta (" .. tostring(h) .. "/" .. tostring(n) .. ")")
check(Q.Counts(nil) == nil and Q.Counts({ { numRequired = 0 } }) == nil, "sem conta: nada")
check(Q.ItemProgress(2, 5) == "2/5" and Q.ItemProgress(9, 5) == "5/5" and Q.ItemProgress(1, 1) == nil,
	"conta da bolsa")

-- ── tempo ────────────────────────────────────────────────────────────────────
check(Q.FmtLeft(299) == "4:59", "299 s -> 4:59")
check(Q.FmtLeft(59.9) == "0:59", "arredonda para baixo")
check(Q.FmtLeft(3723) == "1:02:03", "acima de uma hora: 1:02:03")
check(Q.FmtLeft(-4) == "0:00" and Q.FmtLeft(nil) == "0:00", "negativo ou nada: 0:00")

local st = {}
check(Q.TimerAlert(st, 7, 900) == nil, "15 min: nada")
check(Q.TimerAlert(st, 7, 299) == 300, "cruzou 5 min: avisa 300")
check(Q.TimerAlert(st, 7, 250) == nil, "5 min só uma vez")
check(Q.TimerAlert(st, 7, 59) == 60, "cruzou 1 min: avisa 60")
check(Q.TimerAlert(st, 7, 10) == nil, "1 min só uma vez")
check(Q.TimerAlert(st, 8, 30) == 60 and Q.TimerAlert(st, 8, 20) == nil, "entrou abaixo de 1 min: só o de 1 min")
check(Q.TimerAlert(nil, 9, 10) == nil and Q.TimerAlert(st, nil, 10) == nil, "sem estado ou sem quest: nada")

-- ── quem depende de quem ─────────────────────────────────────────────────────
local function g(verb, id, extra)
	local goal = { verb = verb, id = id }
	for k, v in pairs(extra or {}) do goal[k] = v end
	return goal
end
local steps = {
	{ goals = { g("accept", 100) } },
	{ goals = { g("kill", 5, { q = { id = 100, obj = 1 } }) } },
	{ goals = { g("turnin", 100) } },
	{ only = "completed(100)", goals = { g("accept", 101) } },               -- segue da 100
	{ goals = { g("accept", 102, { only = "Warrior completed(101)" }) } },  -- segue da 101 (em cadeia)
	{ goals = { g("accept", 103, { only = "completed(100,200)" }) } },      -- 100 OU 200: não derruba
	{ goals = { g("accept", 104, { only = "not completed(100)" }) } },      -- o contrário: não segue
	{ goals = { g("accept", 105) } },
}
local deps = Q.Dependents({ steps }, 100)
local set = {}
for _, id in ipairs(deps) do set[id] = true end
check(deps[1] == 100, "a própria quest vem primeiro")
check(set[101] and set[102], "dependentes diretos e em cadeia (101, 102)")
check(not set[103], "completed(a,b) é qualquer uma: pular só a 100 não derruba a 103")
check(not set[104], "`not completed(100)` não é dependência")
check(not set[105] and #deps == 3, "nada mais (" .. #deps .. ")")
local deps2 = Q.Dependents({ steps }, 200)
check(#deps2 == 1, "a 200 sozinha não derruba a 103 (a 100 ainda serve)")
local both = Q.Dependents({ steps, { { only = "completed(200)", goals = { g("accept", 300) } } } }, 200)
check(#both == 2 and both[2] == 300, "procura em todos os guias abertos")

-- ── pular e desfazer ─────────────────────────────────────────────────────────
local char = {}
local last = Q.Skip(char, deps, 1000, { guide = "G", step = 2 })
check(char.skipped[100] and char.skipped[101] and char.skipped[102], "pulou a quest e as dependentes")
check(last.guide == "G" and last.step == 2 and last.t == 1000, "guarda onde aconteceu")
check(Q.IsSkipped(char, 101) and not Q.IsSkipped(char, 105) and not Q.IsSkipped(char, nil), "IsSkipped")
local undone = Q.UndoLast(char)
check(undone and undone.step == 2 and not char.skipped[100] and not char.skipped[102] and char.lastSkip == nil,
	"desfazer devolve tudo")
check(Q.UndoLast(char) == nil, "desfazer duas vezes: nada")
Q.Skip(char, { 1 }, 1); Q.Skip(char, { 2 }, 2)
Q.UndoLast(char)
check(char.skipped[1] and not char.skipped[2], "desfazer só o último pulo")

-- ── a quest abandonada ───────────────────────────────────────────────────────
check(Q.ReturnStep(steps, 3, 100) == 1, "voltar por ela: o passo que a aceita, para trás")
check(Q.ReturnStep(steps, 3, 105) == nil, "aceite só à frente: não há para onde voltar")
check(Q.ReturnStep(steps, 99, 105) == 8, "atual além do fim: procura do último passo")
check(Q.UsedAhead(steps, 2, 100), "objetivo e entrega à frente: o guia ainda precisa dela")
check(not Q.UsedAhead(steps, 4, 100), "depois da entrega: não precisa")
check(not Q.UsedAhead(steps, 1, 100), "o aceite vem primeiro: o guia pega de novo sozinho")
check(not Q.UsedAhead(steps, 2, 100, function() return false end), "passo que não vale para o personagem não conta")

-- ── o que a rota usa, e o diário ─────────────────────────────────────────────
local used, turnins = Q.RouteQuests({ { steps = steps, from = 2 }, { steps = { { goals = { g("turnin", 900) } } } } })
check(used[100] and used[101] and turnins[100] and used[900] and turnins[900], "a rota daqui em diante")
check(not turnins[101], "aceite não é entrega")
local used3 = Q.RouteQuests({ { steps = steps, from = 4 } })
check(not used3[100], "o que ficou para trás não conta")
local unused, finished = Q.Tidy({
	{ id = 100, complete = false }, { id = 555, complete = false }, { id = 900, complete = true },
	{ id = 777, complete = true },
}, used, turnins)
check(#unused == 1 and unused[1].id == 555, "fora da rota: só a 555")
check(#finished == 1 and finished[1].id == 777, "concluída que nenhum passo entrega: só a 777")

-- ── relatório ────────────────────────────────────────────────────────────────
local R = loadPure("Report.lua").Report
local txt = R.ReportText({
	version = "2.15.0", client = "1.60.1.70245 (16001)", locale = "ptBR",
	guide = "Leveling/Alliance/Westfall (10-20)", step = 12, total = 80,
	goals = { { verb = "kill", text = "Defias Trapper", id = 504, q = "153/1" },
		{ verb = "turnin", text = "X", id = 9, done = true } },
	zone = "Westfall", map = 1436, x = 42.123, y = 65.98, level = 14, class = "WARRIOR", race = "HUMAN",
	faction = "Alliance", quests = { { id = 153, title = "Red Leather Bandanas", inLog = true, progress = "3/15" } },
	auto = { turnin = true, accept = false }, addons = { "Questie", "Details" },
}, "o NPC não está lá")
check(txt:find("What went wrong: o NPC não está lá", 1, true), "o que deu errado na primeira linha")
check(txt:find("Lodestar 2.15.0 · client 1.60.1.70245 (16001) · ptBR", 1, true), "versão e cliente")
check(txt:find("step 12/80", 1, true) and txt:find("kill Defias Trapper ##504 |q 153/1", 1, true), "passo e objetivos")
check(txt:find("[done]", 1, true), "objetivo feito marcado")
check(txt:find("Westfall (map 1436) 42.1, 66.0", 1, true), "mapa e coordenada com uma casa")
check(txt:find("153 Red Leather Bandanas: in log 3/15", 1, true), "quest do passo com a conta")
check(txt:find("Automation: accept off · turnin on", 1, true), "automação em ordem alfabética")
check(txt:find("Other addons: Questie, Details", 1, true), "outros addons")
check(txt:find(R.ISSUES, 1, true), "o endereço das issues")
local empty = R.ReportText(nil)
check(empty:find("Guide: none", 1, true) and empty:find("Where: ?", 1, true), "sem contexto não estoura")

-- ── aviso ao grupo ───────────────────────────────────────────────────────────
local P = loadPure("PartyTell.lua").PartyTell
local ready = P.Ready({ [1] = false, [2] = false, [3] = true }, { [1] = true, [2] = false, [3] = true, [4] = true })
check(#ready == 1 and ready[1] == 1, "só a que passou de por fazer a pronta (aceita pronta e a que já estava não)")
check(#P.Ready(nil, { [1] = true }) == 0, "primeiro retrato (login, /reload): nada")

-- ── /way ─────────────────────────────────────────────────────────────────────
local TT = loadPure("TomTomShim.lua").TomTomShim
local w, x, y, label = TT.ParseWay("#1429 42.5 65.2 Casa do Ferreiro")
check(w.map == 1429 and x == 42.5 and y == 65.2 and label == "Casa do Ferreiro", "/way #mapa x y nome")
w, x, y, label = TT.ParseWay("Elwynn Forest 42.5, 65.2")
check(w.zone == "Elwynn Forest" and x == 42.5 and y == 65.2 and label == nil, "/way zona x, y")
w, x, y = TT.ParseWay("30 40")
check(w and not w.map and not w.zone and x == 30 and y == 40, "/way x y: o mapa onde se está")
check(TT.ParseWay("Elwynn Forest") == nil and TT.ParseWay("120 40") == nil and TT.ParseWay(nil) == nil,
	"sem coordenada ou fora de 0-100: nada")

-- ── a quest pulada no Guide.lua de verdade ───────────────────────────────────
function strsplit(sep, s)
	local out = {}
	for piece in (s .. sep):gmatch("([^" .. sep .. "]*)" .. sep) do out[#out + 1] = piece end
	return unpack(out)
end
function UnitLevel() return 10 end
function UnitClass() return "Warrior", "WARRIOR" end
function UnitRace() return "Human", "HUMAN", 1 end
function UnitFactionGroup() return "Alliance" end
function UnitIsDeadOrGhost() return false end
function GetMaxPlayerLevel() return 60 end
function GetBuildInfo() return "1.60.1", "70245", "Nov 1 2026", 16001 end
local inLog, done = {}, {}
C_QuestLog = {
	IsQuestFlaggedCompleted = function(id) return done[id] or false end,
	GetLogIndexForQuestID = function(id) return inLog[id] and 1 or nil end,
	GetQuestObjectives = function() return {} end,
}
local ns = {
	guides = {}, char = { openGuides = {}, steps = {}, completedGoals = {} },
	Print = function() end, Debug = function() end, Printf = function() end,
	L = setmetatable({}, { __index = function(_, k) return k end }),
}
ns.On = function() end
for _, file in ipairs({ "Compat.lua", "Parser.lua", "ForeverData.lua", "Guide.lua" }) do
	assert(loadfile(ROOT .. "/" .. file))("Lodestar", ns)
end
ns:RegisterGuide("Leveling/Alliance/Teste (1-10)", {}, table.concat({
	"step",
	"  accept Primeira##100",
	"step",
	"  kill 8 Javali##5 |q 100/1",
	"step",
	"  turnin Primeira##100",
}, "\n"))
local gsteps = ns.ensureParsed(ns.guides["Leveling/Alliance/Teste (1-10)"])
inLog[100] = true
check(ns:IsGoalActive(gsteps[2].goals[1]) and not ns:IsStepComplete(gsteps[2]), "antes de pular: o objetivo vale")
ns.char.skipped = { [100] = true }
check(not ns:IsGoalActive(gsteps[1].goals[1]), "pulada: o aceite sai, mesmo com ela no diário")
check(not ns:IsGoalActive(gsteps[2].goals[1]) and ns:IsStepComplete(gsteps[2]), "pulada: o passo do objetivo anda")
check(ns:IsStepComplete(gsteps[3]), "pulada: a entrega anda")
ns.char.skipped = nil
check(ns:IsGoalActive(gsteps[2].goals[1]) and not ns:IsStepComplete(gsteps[2]), "desfeito: volta a valer")

-- marca à mão: passo só de objetivos que o jogo não confirma anda com todos marcados
ns:RegisterGuide("Leveling/Alliance/Manual (1-10)", {}, table.concat({
	"step",
	"  talk Alguém##7",
	"  use Pedra##8",
	"step",
	"  talk Outro##9",
	"  accept Segunda##101",
}, "\n"))
local msteps = ns.ensureParsed(ns.guides["Leveling/Alliance/Manual (1-10)"])
local cg = ns.char.completedGoals
check(not ns:IsStepComplete(msteps[1]), "sem marca: o passo manual não anda")
cg[msteps[1].goals[1]._gkey] = true
check(not ns:IsStepComplete(msteps[1]), "um de dois marcado: ainda não")
cg[msteps[1].goals[2]._gkey] = true
check(ns:IsStepComplete(msteps[1]), "os dois marcados: anda")
cg[msteps[2].goals[1]._gkey] = true
check(not ns:IsStepComplete(msteps[2]), "com objetivo rastreável, a marca não substitui o aceite")
inLog[101] = true
check(ns:IsStepComplete(msteps[2]), "o aceite rastreável fecha o passo")

-- GoToStep segura o passo como o Voltar
ns.currentGuide = ns.guides["Leveling/Alliance/Teste (1-10)"]
ns.char.currentStep = 3
ns:GoToStep(1)
check(ns.char.currentStep == 1 and ns.char.hold == 1 and ns.char.steps[ns.currentGuide.key] == 1,
	"GoToStep vai e segura")
ns:GoToStep(99)
check(ns.char.currentStep == 1, "GoToStep fora do guia: fica onde está")

-- "Voltar por ela": o passo de volta está por fazer, a trava solta já (o guia segue quando ele fechar)
inLog[100] = nil
ns.char.currentStep = 3
ns:GoToStep(1)
check(ns.char.currentStep == 1 and ns.char.hold == nil, "GoToStep num passo por fazer solta a trava")
inLog[100] = true
ns:CheckProgress()
check(ns.char.currentStep == 2,
	"reaceita: o guia anda sozinho até o objetivo por fazer (" .. ns.char.currentStep .. ")")

-- ── a metade de jogo do QuestState: Desfazer não chama a si mesmo ──────────────
C_Timer = { After = function() end }
function GetTime() return 100 end
time = os.time
StaticPopupDialogs = {}
ns.Every = function() end
ns.Print, ns.Printf = function() end, function() end
ns.fire = function() end
assert(loadfile(ROOT .. "/QuestState.lua"))("Lodestar", ns)
local QS = ns.QuestState
check(QS.UndoLast ~= QS.Undo, "o desfazer puro e o do jogo são funções diferentes")
ns.guides["Leveling/Alliance/Teste (1-10)"].meta.next = "Leveling/Alliance/Manual (1-10)"
ns.char.openGuides = { "Leveling/Alliance/Teste (1-10)" }
ns.char.currentStep = 2
QS:SkipQuest(100)
check(ns.char.skipped[100] and ns.char.lastSkip, "pular pelo jogo marca e guarda o desfazer")
check(QS:Notice() and QS:Notice().kind == "skipped", "o topo do passo mostra o pulo")
local ok, err = pcall(QS.Undo, QS)
check(ok, "Desfazer pelo jogo não estoura: " .. tostring(err))
check(not ns.char.skipped[100] and ns.char.lastSkip == nil, "Desfazer pelo jogo devolve a quest")

print(("ok: %d checks"):format(checks))
