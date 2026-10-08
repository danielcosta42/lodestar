-- O que o Forever muda nos guias, rodado contra os arquivos de verdade
-- (Compat.lua, Parser.lua, ForeverData.lua, Guide.lua) sob um cliente stubado.
--
-- Prova que: passo cuja quest não existe neste cliente é retirado do guia sem
-- deixar passo sem saída, o array cru nunca é mutado, cadeia com ponteiro
-- pendurado termina em vez de estourar, e GUID secreto não é fatiado em id.
--
--   luajit tools/forever-guides.lua
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

-- ── superfície da API do WoW que os arquivos tocam ao carregar ──────────────
function strsplit(sep, s)
	local out = {}
	for piece in (s .. sep):gmatch("([^" .. sep .. "]*)" .. sep) do out[#out + 1] = piece end
	return unpack(out)
end
local playerLevel = 1
function UnitLevel() return playerLevel end
function UnitClass() return "Warrior", "WARRIOR" end
local raceId = 1
function UnitRace() return "Human", "HUMAN", raceId end
function UnitFactionGroup() return "Alliance" end
function UnitIsDeadOrGhost() return false end
function UnitExists(u) return u ~= nil end
function GetMaxPlayerLevel() return 60 end
C_QuestLog = { IsQuestFlaggedCompleted = function() return false end }

-- Carrega os arquivos do addon num namespace novo, como o cliente faz.
local function load_addon(interfaceNumber)
	local ns = {
		guides = {},
		char = { openGuides = {}, steps = {}, completedGoals = {} },
		Print = function() end, Debug = function() end,
		Printf = function() end,
		L = setmetatable({}, { __index = function(_, k) return k .. ": %s" end }),
	}
	ns.handlers = {}
	ns.On = function(_, ev, fn) ns.handlers[ev] = fn end
	function GetBuildInfo()
		local major = math.floor(interfaceNumber / 10000)
		local minor = math.floor(interfaceNumber / 100) % 100
		return ("%d.%d.%d"):format(major, minor, interfaceNumber % 100), "69913", "Sep 18 2026", interfaceNumber
	end
	for _, file in ipairs({ "Compat.lua", "Parser.lua", "ForeverData.lua", "Guide.lua" }) do
		local chunk = assert(loadfile(ROOT .. "/" .. file))
		chunk("Lodestar", ns)
		-- A biblioteca gerada não cita quest removida, então a lista real vem
		-- vazia: o teste planta uma (Outland) para exercitar o corte.
		if file == "ForeverData.lua" then ns.foreverGoneQuests[GONE] = true end
	end
	return ns
end

GONE = 10142   -- quest de Outland: o Anniversary tem, o Forever não
local fe = load_addon(16001)
check(fe.Client.isForever, "16001 é o Forever")
check(fe.Client.maxLevel == 60, "nível máximo vem do cliente, não de um número fixo")

-- ── encadeamento ───────────────────────────────────────────────────────────
-- Os guias de conteúdo de TBC foram deletados do addon, então `next` pode
-- apontar pro vazio. Isso encerra a cadeia; não pode estourar.
local ALIVE = "Leveling/Alliance/Elwynn Forest (2-10)"
fe:RegisterGuide(ALIVE, {}, "step\n  note começo\n")
fe:RegisterGuide("Leveling/Alliance/Liga", { next = ALIVE }, "step\n  note x\n")
fe:RegisterGuide("Leveling/Alliance/Pendurado", { next = "Leveling/Alliance/Que Não Existe" },
	"step\n  note y\n")
check(fe:NextGuideKey(fe.guides["Leveling/Alliance/Liga"]) == ALIVE, "cadeia liga no guia que existe")
check(fe:NextGuideKey(fe.guides["Leveling/Alliance/Pendurado"]) == nil,
	"ponteiro pendurado termina a cadeia em vez de estourar")

-- ── quests que este cliente não tem ─────────────────────────────────────────
local gone = GONE
fe:RegisterGuide("Leveling/Alliance/Amostra", {}, table.concat({
	"step",
	"  accept Sumida##" .. gone,
	"step",
	"  accept Viva##783",
	"step",
	"  collect 5 Coisa##772 |q " .. gone,
}, "\n"))
local steps = fe.ensureParsed(fe.guides["Leveling/Alliance/Amostra"])
check(#steps == 1, "sobra só o passo da quest que existe (sobrou " .. #steps .. ")")
check(steps[1].goals[1].id == 783, "o passo que sobrou é o da quest viva")
check(steps[1].index == 1 and steps[1].goals[1]._step == 1, "índices batem com o array final")

-- o passo inteiro some: o que sobraria é um "talk" sem coordenada, que nunca
-- completa e travaria o avanço automático num NPC que aquele cliente não tem
fe:RegisterGuide("Leveling/Alliance/Mista", {}, table.concat({
	"step",
	"  talk Alguém##23843",
	"  accept Sumida##" .. gone .. " |goto Dustwallow Marsh 55.58,26.14",
	"step",
	"  talk Outro##240",
	"  turnin Sumida também##" .. gone,
	"step",
	"  talk Terceiro##241",
	"  accept Sumida de novo##" .. gone,
	"  ding 20",
}, "\n"))
local mista = fe.ensureParsed(fe.guides["Leveling/Alliance/Mista"])
check(#mista == 1, "passo órfão de quest sai do guia (sobrou " .. #mista .. ")")
check(mista[1].goals[2] and mista[1].goals[2].verb == "ding",
	"o passo que sobra é o que ainda se completa sozinho")
check(#mista[1].goals == 2, "o goal da quest removida saiu do passo que ficou")

-- os passos crus (de onde o Prereq colhe cadeias para OUTROS guias) não podem
-- ser mutados: senão a injeção passa a depender da ordem em que se abriu cada guia
local base = fe.GetBaseSteps(fe.guides["Leveling/Alliance/Mista"])
check(#base == 3, "o array cru continua com os três passos")
check(#base[3].goals == 3 and base[3].goals[2].id == gone,
	"o passo cru continua inteiro (cópia, não mutação)")

-- guia que ficou sem passo nenhum não vira aba (a barra mostraria 0/0)
fe:RegisterGuide("Dungeons/Alliance/Vazio", {}, "step\n  talk Alguém##240\n  accept Sumida##" .. gone .. "\n")
fe:LoadGuide("Dungeons/Alliance/Vazio")
check(#fe.char.openGuides == 0 and fe.currentGuide == nil, "guia sem conteúdo não abre")

-- ── Skyborne (raças 95/96 do Forever) ────────────────────────────────────────
-- O stub segue respondendo "HUMAN" no token: quem decide é o id (95/96).
raceId = 95
check(fe:EvalCondition("Skyborne"), "Skyborne é reconhecido pelo id da raça")
raceId = 1
check(not fe:EvalCondition("Skyborne"), "humano não é Skyborne")

-- pré-req de fora do guia vira `completed(...)`; com várias, basta uma (preSingle)
C_QuestLog.IsQuestFlaggedCompleted = function(id) return id == 1642 end
check(fe:EvalCondition("Warrior completed(2998,1642)"), "completed com várias: qualquer uma vale")
check(not fe:EvalCondition("Paladin completed(2998,1642)"), "classe ainda conta no AND")
check(not fe:EvalCondition("completed(2998)"), "completed de uma só que não foi entregue")
-- exclusiva: feita a irmã, o passo some (Call of Fire de Durotar x a de Orgrimmar)
check(not fe:EvalCondition("Warrior not completed(1642) not haveq(1642)"), "irmã entregue esconde o passo")
check(fe:EvalCondition("not completed(2998) not haveq(2998)"), "irmã não feita deixa o passo")
C_QuestLog.IsQuestFlaggedCompleted = function() return false end

-- char novo Skyborne cai no guia de Zephras Isle, não no da zona do token
local sky = load_addon(16001)
sky:RegisterGuide("Leveling/Alliance/Elwynn Forest (1-10)", { faction = "Alliance" }, "step\n  note a\n")
sky:RegisterGuide("Leveling/Alliance/Zephras Isle (1-11)", { faction = "Alliance" }, "step\n  note b\n")
function sky:LoadGuide(key) self.opened = key end   -- só a escolha importa aqui
raceId = 96
sky.handlers._READY()
check(sky.opened == "Leveling/Alliance/Zephras Isle (1-11)",
	"Skyborne começa em Zephras Isle (abriu " .. tostring(sky.opened) .. ")")
raceId = 1

-- zona inicial com duas faixas (o Forever pôs 48-57 em Teldrassil): o char novo
-- começa pela mais baixa, seja qual for a ordem em que os guias registraram
local duas = load_addon(16001)
for _, faixa in ipairs({ "48-57", "50-58", "52-59", "54-60", "4-10", "56-60" }) do
	duas:RegisterGuide("Leveling/Alliance/Elwynn Forest (" .. faixa .. ")", { faction = "Alliance" },
		"step\n  note x\n")
end
function duas:LoadGuide(key) self.opened = key end
duas.handlers._READY()
check(duas.opened == "Leveling/Alliance/Elwynn Forest (4-10)",
	"char novo começa pela faixa mais baixa da zona (abriu " .. tostring(duas.opened) .. ")")

-- o autopilot não manda quem não é Skyborne para a ilha, mesmo com faixa igual
local auto = load_addon(16001)
for n = 1, 8 do
	auto:RegisterGuide(("Leveling/Alliance/Zephras Isle (4-1%d)"):format(n), { faction = "Alliance" },
		"step\n  note z\n")
end
auto:RegisterGuide("Leveling/Alliance/Elwynn Forest (4-10)", { faction = "Alliance" }, "step\n  note e\n")
playerLevel = 6
check(auto:BestGuideForPlayer() == "Leveling/Alliance/Elwynn Forest (4-10)",
	"humano no nível 6 não vai para Zephras Isle")

-- faixa larga de poucas quests não ganha da faixa em que o nível fica no meio
local meio = load_addon(16001)
for _, k in ipairs({ "Alterac Mountains (34-60)", "Searing Gorge (48-52)", "Tanaris (47-60)" }) do
	meio:RegisterGuide("Leveling/Alliance/" .. k, { faction = "Alliance" }, "step\n  note m\n")
end
playerLevel = 50
check(meio:BestGuideForPlayer() == "Leveling/Alliance/Searing Gorge (48-52)",
	"no nível 50, a faixa 48-52 ganha da 34-60 (abriu " .. tostring(meio:BestGuideForPlayer()) .. ")")

-- nível manda, zona só desempata: no 11, parado em Elwynn, o guia é Westfall (11-18)
-- — não o Elwynn (3-10) já passado (a primeira quest dele seria cinza), nem a
-- Darkshore do outro continente, que também cabe no nível
local zona = load_addon(16001)
for _, k in ipairs({ "Elwynn Forest (3-10)", "Westfall (11-18)", "Darkshore (11-20)" }) do
	zona:RegisterGuide("Leveling/Alliance/" .. k, { faction = "Alliance" }, "step\n  note w\n")
end
zona.zoneUiMap = { ["Elwynn Forest"] = 1429, ["Westfall"] = 1436, ["Darkshore"] = 1439 }
zona.TravelPlanner = {
	PlayerContinent = function() return "EK" end,
	ZoneContinent = function(_, z) return ({ ["Elwynn Forest"] = "EK", ["Westfall"] = "EK", ["Darkshore"] = "K" })[z] end,
}
C_Map = { GetBestMapForUnit = function() return 1429 end }
playerLevel = 11
check(zona:BestGuideForPlayer() == "Leveling/Alliance/Westfall (11-18)",
	"nível 11 em Elwynn vai para Westfall (abriu " .. tostring(zona:BestGuideForPlayer()) .. ")")
playerLevel = 10
check(zona:BestGuideForPlayer() == "Leveling/Alliance/Elwynn Forest (3-10)",
	"nível 10 em Elwynn fica em Elwynn (abriu " .. tostring(zona:BestGuideForPlayer()) .. ")")
-- login com aba de leveling que o nível já passou: abre o recomendado, a antiga
-- fica na aba. No nível dela, retoma onde parou.
local function logar(nivel, manual)
	local l = load_addon(16001)
	for _, k in ipairs({ "Elwynn Forest (3-10)", "Westfall (11-18)", "Darkshore (11-20)" }) do
		l:RegisterGuide("Leveling/Alliance/" .. k, { faction = "Alliance" }, "step\n  note w\n")
	end
	l.zoneUiMap, l.TravelPlanner = zona.zoneUiMap, zona.TravelPlanner
	l.fire = function() end                        -- eventos internos (Core.lua)
	l.char.openGuides = { "Leveling/Alliance/Elwynn Forest (3-10)" }
	l.char.currentGuide = "Leveling/Alliance/Elwynn Forest (3-10)"
	l.char.steps = { ["Leveling/Alliance/Elwynn Forest (3-10)"] = 1 }
	l.char.manualPick = manual
	playerLevel = nivel
	l.handlers._READY()
	return l
end
local l11 = logar(11)
check(l11.char.currentGuide == "Leveling/Alliance/Westfall (11-18)",
	"logou no 11 com Elwynn 3-10 salvo: abre Westfall (abriu " .. tostring(l11.char.currentGuide) .. ")")
check(l11:IsGuideOpen("Leveling/Alliance/Elwynn Forest (3-10)"), "a aba antiga continua aberta")
check(logar(10).char.currentGuide == "Leveling/Alliance/Elwynn Forest (3-10)",
	"no nível da aba salva, retoma ela")
-- o jogador abriu essa aba de propósito (terminar as quests de Elwynn): o login não a troca
check(logar(11, "Leveling/Alliance/Elwynn Forest (3-10)").char.currentGuide == "Leveling/Alliance/Elwynn Forest (3-10)",
	"aba escolhida à mão não é trocada no login")
C_Map = nil
playerLevel = 1

-- ── mapa-múndi: alvo e jogador projetados no mapa que estiver aberto ────────
-- Silverpine fica à esquerda de Tirisfal: com o mapa de Tirisfal aberto e o alvo
-- em Silverpine, nada se desenhava (só o mapa da zona do alvo servia)
C_Map = {
	GetBestMapForUnit = function() return 1420 end,
	GetPlayerMapPosition = function() return { x = 0.6, y = 0.5 } end,
	GetWorldPosFromMapPos = function(m, p)
		return 0, { x = (m == 1421 and -1000 or 0) + p.x * 1000, y = p.y * 1000 }
	end,
	GetMapPosFromWorldPos = function(_, w, m)
		return m, { x = (w.x - (m == 1421 and -1000 or 0)) / 1000, y = w.y / 1000 }
	end,
}
CreateVector2D = function(x, y) return { x = x, y = y } end
local wns = { zoneUiMap = { ["Tirisfal Glades"] = 1420, ["Silverpine Forest"] = 1421 },
	On = function() end, Every = function() end }
assert(loadfile(ROOT .. "/Waypoint.lua"))("Lodestar", wns)
local WP = wns.Waypoint
local function perto(a, b) return a and math.abs(a - b) < 1e-9 end
local gx, gy = WP:MapPos("Silverpine Forest", 50, 50, 1420)
check(perto(gx, -0.5) and perto(gy, 0.5), "alvo de Silverpine cai à esquerda, fora do mapa de Tirisfal")
check(perto((WP:MapPos("Tirisfal Glades", 30, 40, 1420)), 0.3), "alvo da zona aberta: a própria coordenada")
check(perto((WP:PlayerMapPos(1421)), 1.6), "jogador de Tirisfal projetado no mapa de Silverpine")
local x0, y0, x1, y1 = WP.ClipSegment(0.6, 0.5, -0.5, 0.5)
check(perto(x0, 0.6) and perto(x1, 0) and perto(y1, 0.5), "linha até alvo fora do mapa para na borda")
check(WP.ClipSegment(1.2, 0.5, 1.5, 0.5) == nil, "segmento todo fora do mapa não desenha")
C_Map, CreateVector2D = nil, nil

-- pontos do mapa: só os passos que são seus, numerados na ordem do guia; o que
-- depende de pegar a quest antes fica marcado como "depois"
local gm = load_addon(16001)
gm.Every = function() end
assert(loadfile(ROOT .. "/GuideMap.lua"))("Lodestar", gm)
gm:RegisterGuide("Leveling/Alliance/Pontos (1-10)", { faction = "Alliance" }, table.concat({
	"step", "  accept Uma##783 |goto Elwynn Forest 40,40",
	"step", "  only Mage", "  accept De mago##1 |goto Elwynn Forest 41,41",
	"step", "  kill Lobo##299 |q 783 |goto Elwynn Forest 42,42",
	"step", "  turnin Uma##783 |goto Elwynn Forest 43,43",
}, "\n"))
gm.currentGuide = gm.guides["Leveling/Alliance/Pontos (1-10)"]
gm.ensureParsed(gm.currentGuide)
gm.char.currentStep = 1
local pts = gm.GuideMapPins()
check(#pts == 3, "passo de outra classe não vira ponto (" .. #pts .. " pontos)")
check(pts[1].order == 1 and pts[2].order == 2 and pts[3].order == 3, "pontos numerados na ordem do guia")
check(not pts[1].later and pts[2].later and pts[3].later, "objetivo e entrega de quest fora do log: depois")

-- ── a biblioteca gerada inteira ──────────────────────────────────────────────
-- Todo guia que os manifestos carregam é Lua válido, registra, interpreta com
-- passo, e toda zona de |goto existe no ZoneData (senão a seta não acha o mapa).
local lib = load_addon(16001)
assert(loadfile(ROOT .. "/ZoneData.lua"))("Lodestar", lib)
local arquivos = 0
for _, xml in ipairs({ "Guides/Leveling/Leveling.xml", "Guides/Special.xml" }) do
	local dir = xml:match("^(.*)/")
	local fh = assert(io.open(ROOT .. "/" .. xml))
	local manifesto = fh:read("*a")
	fh:close()
	for rel in manifesto:gmatch('file="([^"]+)"') do
		assert(loadfile(ROOT .. "/" .. dir .. "/" .. rel))("Lodestar", lib)
		arquivos = arquivos + 1
	end
end
local guias, sem_passo, zonas_fora = 0, {}, {}
for key, g in pairs(lib.guides) do
	guias = guias + 1
	local passos = lib.ensureParsed(g)
	if #passos == 0 then sem_passo[#sem_passo + 1] = key end
	for _, s in ipairs(passos) do
		for _, goal in ipairs(s.goals) do
			-- "-1,-1" (instância) o parser lê como zona "X -": a zona é o que vem antes
			local z = goal.goto_ and goal.goto_.zone and (goal.goto_.zone:gsub(" %-$", ""))
			if z and not lib.zoneUiMap[z] then zonas_fora[z] = key end
		end
	end
end
check(arquivos > 100 and guias == arquivos,
	("todo arquivo registra um guia (%d arquivos, %d guias)"):format(arquivos, guias))
check(#sem_passo == 0, "guia gerado sem passo: " .. table.concat(sem_passo, ", "))
check(next(zonas_fora) == nil, "zona de |goto fora do ZoneData: " .. tostring(next(zonas_fora)))
local zephras = {}
for key in pairs(lib.guides) do
	local fac = key:match("^Leveling/(%a+)/Zephras Isle %(")
	if fac then zephras[fac] = true end
end
check(zephras.Alliance and zephras.Horde, "Zephras Isle tem guia nas duas facções")

-- ── revisão geral: motor de guias ───────────────────────────────────────────
-- missão com vários objetivos só conclui com todos (o passo cita o 1º alvo, a nota diz tudo)
C_QuestLog.GetQuestObjectives = function() return { { finished = true }, { finished = false } } end
check(not fe:IsGoalComplete({ verb = "kill", q = { id = 263 }, _gkey = "o1" }), "dois objetivos, só o 1º feito: não conclui")
check(fe:IsGoalComplete({ verb = "kill", q = { id = 263, obj = 1 }, _gkey = "o2" }), "com o índice do objetivo: aquele basta")
C_QuestLog.GetQuestObjectives = function() return { { finished = true }, { finished = true } } end
check(fe:IsGoalComplete({ verb = "kill", q = { id = 263 }, _gkey = "o3" }), "todos os objetivos feitos: conclui")
C_QuestLog.GetQuestObjectives = nil
-- carregar o guia não injeta passos de outros guias (o gerador já esconde por condição)
local inj = load_addon(16001)
inj.Prereq = { InjectChains = function() error("injetou passos") end }
inj:RegisterGuide("Leveling/Alliance/Teste (1-2)", { faction = "Alliance" }, [[
step
  note a
step
  note b
]])
local okInj, passos = pcall(inj.ensureParsed, inj.guides["Leveling/Alliance/Teste (1-2)"])
check(okInj and #passos == 2, "carregar o guia não injeta pré-requisitos")
-- "Guia concluído!" uma vez só, num guia sem next
local fim = load_addon(16001)
local avisos = 0
fim.Print = function() avisos = avisos + 1 end
fim:RegisterGuide("Leveling/Alliance/Fim (1-2)", { faction = "Alliance" }, [[
step
  ding 1
]])
fim.currentGuide = fim.guides["Leveling/Alliance/Fim (1-2)"]
fim.ensureParsed(fim.currentGuide)
fim.char.currentStep = 1
for _ = 1, 5 do fim:CheckProgress() end
check(avisos == 1, "guia concluído avisado uma vez (" .. avisos .. ")")
-- "< Voltar" fica: o passo voltado à mão não é pulado pelo próximo evento
local volta = load_addon(16001)
volta:RegisterGuide("Leveling/Alliance/Volta (1-3)", { faction = "Alliance" }, [[
step
  ding 1
step
  note b
]])
volta.currentGuide = volta.guides["Leveling/Alliance/Volta (1-3)"]
volta.ensureParsed(volta.currentGuide)
volta.char.currentStep = 2
volta:AdvanceStep(-1)
volta:CheckProgress()
check(volta.char.currentStep == 1, "voltou à mão: o próximo evento não o desfaz")
volta:AdvanceStep(1)
check(volta.char.currentStep == 2, "avançar à mão segue normal")

-- missão descartada (o NPC não a oferecia e o passo foi pulado): seus passos seguintes não
-- valem mais — senão o travamento só mudava de lugar
fe.char.dropped = { [777] = true }
check(not fe:IsGoalActive({ verb = "kill", q = { id = 777 } }), "objetivo de missão descartada não vale")
check(not fe:IsGoalActive({ verb = "turnin", id = 777 }), "entrega de missão descartada não vale")
check(fe:IsGoalActive({ verb = "kill", q = { id = 778 } }), "as outras seguem valendo")
fe.char.dropped = nil
-- o passo que só tinha goals da descartada está feito: o guia não para nele
local dr = load_addon(16001)
dr:RegisterGuide("Leveling/Alliance/Drop (1-3)", { faction = "Alliance" }, [[
step
  accept Q##777
step
  kill X##1 |q 777
step
  turnin Q##777
step
  note fim
]])
dr.currentGuide = dr.guides["Leveling/Alliance/Drop (1-3)"]
dr.ensureParsed(dr.currentGuide)
dr.char.dropped = { [777] = true }
dr.char.currentStep = 2
dr:CheckProgress()
check(dr.char.currentStep == 4, "passos só da descartada são pulados (parou no " .. dr.char.currentStep .. ")")
-- descartada, mas feita à mão depois: a entrega vale (e está feita)
C_QuestLog.IsQuestFlaggedCompleted = function(id) return id == 777 end
check(dr:IsGoalActive({ verb = "turnin", id = 777 }), "descartada e entregue à mão: a entrega vale")
C_QuestLog.IsQuestFlaggedCompleted = function() return false end
-- aceitá-la de novo (outro NPC, depois do RP) a tira do descarte
dr.handlers.QUEST_ACCEPTED("QUEST_ACCEPTED", 777)
check(not dr.char.dropped[777], "aceitar a missão a tira do descarte")
dr.char.dropped[777] = true
dr.handlers.QUEST_ACCEPTED("QUEST_ACCEPTED", 3, 777)          -- (índice no diário, id)
check(not dr.char.dropped[777], "aceitar (índice, id) também")

-- passo voltado à mão, mas não concluído: quando concluir, o guia segue sozinho
local vt = load_addon(16001)
vt:RegisterGuide("Leveling/Alliance/Vt (1-3)", { faction = "Alliance" }, [[
step
  turnin A##601
step
  note b
]])
vt.currentGuide = vt.guides["Leveling/Alliance/Vt (1-3)"]
vt.ensureParsed(vt.currentGuide)
vt.char.currentStep = 2
vt:AdvanceStep(-1)
vt:CheckProgress()
C_QuestLog.IsQuestFlaggedCompleted = function(id) return id == 601 end
vt:CheckProgress()
check(vt.char.currentStep == 2, "voltado e ainda por fazer: ao concluir, avança (está no " .. vt.char.currentStep .. ")")
C_QuestLog.IsQuestFlaggedCompleted = function() return false end
-- "< Voltar" sem passo ativo antes: fica onde está
local vi = load_addon(16001)
vi:RegisterGuide("Leveling/Alliance/Vi (1-3)", { faction = "Alliance" }, [[
step
  only Druid
  note a
step
  note b
]])
vi.currentGuide = vi.guides["Leveling/Alliance/Vi (1-3)"]
vi.ensureParsed(vi.currentGuide)
vi.char.currentStep = 2
vi:AdvanceStep(-1)
check(vi.char.currentStep == 2, "voltar sem passo ativo antes não cai num passo de outra classe")

-- passo salvo antes da 2.4 contava os passos injetados (lista maior): recua até o último
-- passo concluído, em vez de pular missões
local mig = load_addon(16001)
local MK = "Leveling/Alliance/Mig (1-3)"
mig:RegisterGuide(MK, { faction = "Alliance" }, [[
step
  turnin A##501
step
  turnin B##502
step
  talk C##1
step
  turnin D##503
step
  turnin E##504
]])
C_QuestLog.IsQuestFlaggedCompleted = function(id) return id == 501 or id == 502 end
mig.fire = function() end
mig.char.openGuides = { MK }
mig.char.currentGuide = MK
mig.char.steps = { [MK] = 9 }
mig.char.completedGoals = { ["velho 1 1"] = true }
playerLevel = 1
mig.handlers._READY()
check(mig.char.currentStep == 3, "migração recua ao passo depois do último concluído (" .. mig.char.currentStep .. ")")
check(next(mig.char.completedGoals) == nil, "marcas manuais com o número velho do passo saem")
mig.char.steps[MK], mig.char.currentStep = 5, 5
mig.handlers._READY()
check(mig.char.currentStep == 5, "migra uma vez só")
C_QuestLog.IsQuestFlaggedCompleted = function() return false end

-- ── identidade de unidade / Secret Values ───────────────────────────────────
issecretvalue = function(v) return v == "SECRETO" end
check(fe.NpcID("Creature-0-4467-0-25-6-000019B300") == 6, "GUID de criatura dá o id")
check(fe.NpcID("SECRETO") == nil, "GUID secreto não é fatiado")
check(fe.NpcID("Player-4467-0000ABCD") == nil, "GUID de jogador não vira NPC")
check(fe.IsSecret("SECRETO") and not fe.IsSecret("x"), "IsSecret responde pelo cliente")

-- Forever: o remetente das mensagens vem "Nome Sobrenome"; o próprio nome tem que bater
local UN = UnitName
C_PlayerInfo = { ShouldDisplaySurname = function() return true end }
UnitFullName = function() return "Ana", "Silva" end
UnitName = function() return "Ana" end
check(fe.PlayerName() == "Ana Silva", "nome do jogador inclui o sobrenome no Forever")
C_PlayerInfo.ShouldDisplaySurname = function() return false end
check(fe.PlayerName() == "Ana", "sem sobrenome, só o nome")
C_PlayerInfo, UnitFullName, UnitName = nil, nil, UN

-- O pré-teste oficial de identidade restrita mora na LibChehulQuest, que carrega a
-- cópia dela (não pode depender do ns): quem cobre é tools/forever-scan.lua.
issecretvalue = nil

print(("ok: %d checks"):format(checks))
