-- O que o Forever muda nos guias, rodado contra os arquivos de verdade
-- (Compat.lua, Parser.lua, ForeverData.lua, Guide.lua) sob clientes stubados.
--
-- Prova que, no Forever: guia de conteúdo de TBC some da biblioteca e do
-- encadeamento, passo cuja quest não existe é retirado do guia, e GUID secreto
-- ou de jogador não vira id de NPC. E que no Anniversary NADA disso muda.
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
function UnitRace() return "Human", "HUMAN" end
function UnitFactionGroup() return "Alliance" end
function UnitIsDeadOrGhost() return false end
function GetMaxPlayerLevel() return 60 end
C_QuestLog = { IsQuestFlaggedCompleted = function() return false end }

-- Carrega os arquivos do addon num namespace novo, como o cliente faz.
local function load_addon(interfaceNumber)
	local ns = {
		guides = {},
		char = { openGuides = {}, steps = {}, completedGoals = {} },
		On = function() end, Print = function() end, Debug = function() end,
		Printf = function() end,
		L = setmetatable({}, { __index = function(_, k) return k .. ": %s" end }),
	}
	ns.On = function() end
	function GetBuildInfo()
		local major = math.floor(interfaceNumber / 10000)
		local minor = math.floor(interfaceNumber / 100) % 100
		return ("%d.%d.%d"):format(major, minor, interfaceNumber % 100), "69893", "Sep 17 2026", interfaceNumber
	end
	for _, file in ipairs({ "Compat.lua", "Parser.lua", "ForeverData.lua", "Guide.lua" }) do
		local chunk = assert(loadfile(ROOT .. "/" .. file))
		chunk("Lodestar", ns)
	end
	return ns
end

local DEAD = "Leveling/Alliance/Netherstorm (68-70)"
local ALIVE = "Leveling/Alliance/Elwynn Forest (2-10)"

-- ── Forever ────────────────────────────────────────────────────────────────
local fe = load_addon(16001)
check(fe.Client.isForever and not fe.Client.isTBC, "16001 é o Forever")
check(fe.Client.maxLevel == 60, "nível máximo vem do cliente, não do 70 fixo")
check(fe.foreverDeadGuides[DEAD], "Netherstorm está na lista de conteúdo ausente")
check(not fe:GuideAvailable(DEAD), "guia de Outland não é oferecido no Forever")
check(fe:GuideAvailable(ALIVE), "guia de zona vanilla continua valendo")

-- o encadeamento pula o guia morto e para no primeiro que existe
fe:RegisterGuide(DEAD, { next = ALIVE }, "step\n  note fim\n")
fe:RegisterGuide(ALIVE, {}, "step\n  note começo\n")
fe:RegisterGuide("Leveling/Alliance/Teste", { next = DEAD }, "step\n  note x\n")
check(fe:NextGuideKey(fe.guides["Leveling/Alliance/Teste"]) == ALIVE,
	"encadeamento salta o guia que não existe neste cliente")

-- um passo cuja quest sumiu sai do guia; o resto continua indexado
local gone = next(fe.foreverGoneQuests)
check(gone, "há quests removidas conhecidas")
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
-- o passo 3 é o que FICOU no guia com um goal a menos: é nele que uma mutação
-- do array cru apareceria (o passo descartado ninguém toca)
check(#base[3].goals == 3 and base[3].goals[2].id == gone,
	"o passo cru continua inteiro (cópia, não mutação)")

-- guia que ficou sem passo nenhum não vira aba (a barra mostraria 0/0)
fe:RegisterGuide("Dungeons/Alliance/Vazio", {}, "step\n  talk Alguém##240\n  accept Sumida##" .. gone .. "\n")
fe:LoadGuide("Dungeons/Alliance/Vazio")
check(#fe.char.openGuides == 0 and fe.currentGuide == nil, "guia sem conteúdo não abre")

-- o autopilot não escolhe um guia cujo conteúdo não existe neste cliente
playerLevel = 68
fe:RegisterGuide("Leveling/Alliance/Vivo (68-70)", {}, "step\n  note x\n")
check(fe:BestGuideForPlayer() == "Leveling/Alliance/Vivo (68-70)",
	"autopilot pula o guia de Outland no Forever (deu " .. tostring(fe:BestGuideForPlayer()) .. ")")
playerLevel = 1

-- GUID: secreto ou de jogador não vira NPC
issecretvalue = function(v) return v == "SECRETO" end
check(fe.NpcID("Creature-0-4467-0-25-6-000019B300") == 6, "GUID de criatura dá o id")
check(fe.NpcID("SECRETO") == nil, "GUID secreto não é fatiado")
check(fe.NpcID("Player-4467-0000ABCD") == nil, "GUID de jogador não vira NPC")
check(fe.IsSecret("SECRETO") and not fe.IsSecret("x"), "IsSecret responde pelo cliente")
issecretvalue = nil

-- ── Anniversary: nada muda ─────────────────────────────────────────────────
local tbc = load_addon(20506)
check(tbc.Client.isTBC and not tbc.Client.isForever, "20506 é o Anniversary")
check(tbc.Client.maxLevel == 70, "Anniversary continua em 70")
check(tbc:GuideAvailable(DEAD), "no Anniversary o guia de Outland continua lá")
tbc:RegisterGuide("Leveling/Alliance/Amostra", {}, "step\n  accept Sumida##" .. gone .. "\n")
check(#tbc.ensureParsed(tbc.guides["Leveling/Alliance/Amostra"]) == 1,
	"no Anniversary nenhum passo é retirado")
check(tbc.IsSecret("qualquer") == false, "sem Secret Values, nada é secreto")

print(("ok: %d checks"):format(checks))
