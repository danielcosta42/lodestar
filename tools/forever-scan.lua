-- O coletor do Forever, rodado contra o arquivo de verdade (ForeverScan.lua)
-- sob um cliente stubado, com os eventos disparados como o jogo os dispara.
--
-- Prova que: quem dá e quem entrega a quest são gravados com id de NPC e
-- coordenada; o objetivo vem junto; identidade secreta não é gravada; a resposta
-- do servidor (QUEST_DATA_LOAD_RESULT) vira nome; e que no Anniversary o coletor
-- não grava nada — lá o dado já é conhecido.
--
--   luajit tools/forever-scan.lua
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

-- ── cliente stubado ────────────────────────────────────────────────────────
local secreto = "<<secreto>>"
local npcGuid = "Creature-0-4467-0-25-218920-000019B300"
local npcName = "Agent Keanna"
local questAtual = 80120

function strsplit(sep, s)
	local out = {}
	for piece in (s .. sep):gmatch("([^" .. sep .. "]*)" .. sep) do out[#out + 1] = piece end
	return unpack(out)
end
function UnitGUID(unit) return unit == "npc" and npcGuid or nil end
function UnitName(unit) return unit == "npc" and npcName or nil end
function GetQuestID() return questAtual end
function GetZoneText() return "Riverglades" end
function GetMaxPlayerLevel() return 60 end

C_Map = {
	GetBestMapForUnit = function() return 2548 end,
	GetPlayerMapPosition = function() return { GetXY = function() return 0.52, 0.34 end } end,
}
local pedidos = {}
C_QuestLog = {
	GetTitleForQuestID = function(id) return "Quest " .. tostring(id) end,
	GetQuestDifficultyLevel = function() return 24 end,
	GetQuestObjectives = function() return { { text = "0/8 Shriekling", type = "monster", numRequired = 8 } } end,
	RequestLoadQuestByID = function(id) pedidos[#pedidos + 1] = id end,
	IsQuestFlaggedCompleted = function() return false end,
}
C_Timer = { NewTicker = function() return { Cancel = function() end } end }

-- ── carrega os arquivos de verdade, com eventos que disparam ───────────────
local function load_addon(interfaceNumber)
	local handlers = {}
	local ns = {
		db = {}, guides = {},
		Print = function() end, Printf = function() end, Debug = function() end,
		L = setmetatable({}, { __index = function(_, k) return k .. " %s %s %s %s" end }),
		Every = function() end,
		foreverUnknown = "90001,90002,90003",
	}
	ns.On = function(_, event, fn)
		handlers[event] = handlers[event] or {}
		handlers[event][#handlers[event] + 1] = fn
	end
	ns.fire = function(event, ...)
		for _, fn in ipairs(handlers[event] or {}) do fn(event, ...) end
	end
	function GetBuildInfo() return "1.60.1", "69893", "Sep 17 2026", interfaceNumber end
	for _, file in ipairs({ "Compat.lua", "ForeverScan.lua" }) do
		assert(loadfile(ROOT .. "/" .. file))("Lodestar", ns)
	end
	return ns
end

-- ── Forever ────────────────────────────────────────────────────────────────
local fe = load_addon(16001)
check(fe.Scan, "o módulo existe")

fe.fire("QUEST_DETAIL")
local giver = fe.db.scan and fe.db.scan.givers[80120]
check(giver, "quem dá a quest foi gravado")
check(giver.npc == 218920, "com o id do NPC (deu " .. tostring(giver.npc) .. ")")
check(giver.name == npcName, "com o nome do NPC")
check(giver.map == 2548 and giver.x == 52 and giver.y == 34, "com mapa e coordenada em 0-100")
check(giver.zone == "Riverglades", "com a zona")

fe.fire("QUEST_ACCEPTED", 1, 80120)
local q = fe.db.scan.quests[80120]
check(q and q.name == "Quest 80120", "o nome da quest foi gravado")
check(q.level == 24, "o nível veio do cliente")
check(q.obj and q.obj[1].need == 8 and q.obj[1].type == "monster", "o objetivo foi gravado")

questAtual = 80121
fe.fire("QUEST_COMPLETE")
check(fe.db.scan.enders[80121], "quem entrega a quest foi gravado")

-- identidade restrita: passa adiante, não grava
issecretvalue = function(v) return v == secreto end
npcName, questAtual = secreto, 80122
fe.fire("QUEST_DETAIL")
check(fe.db.scan.givers[80122], "com identidade secreta o ponto ainda é gravado")
check(fe.db.scan.givers[80122].name == nil, "mas o nome secreto não entra no banco")
issecretvalue, npcName = nil, "Agent Keanna"

-- a resposta do servidor para um id perguntado vira nome
fe.fire("QUEST_DATA_LOAD_RESULT", 90002, true)
check(fe.db.scan.quests[90002], "id respondido pelo servidor foi gravado")
fe.fire("QUEST_DATA_LOAD_RESULT", 90003, false)
check(fe.db.scan.quests[90003] == nil, "id que o servidor negou não é gravado")

-- a varredura percorre a lista de ids
fe.Scan:Start()
check(fe.Scan:Running(), "a varredura ficou rodando")
fe.Scan:Stop()
check(not fe.Scan:Running(), "e para quando mandam parar")

-- ── Anniversary: o coletor fica quieto ─────────────────────────────────────
local tbc = load_addon(20506)
questAtual = 783
tbc.fire("QUEST_DETAIL")
tbc.fire("QUEST_ACCEPTED", 1, 783)
check(tbc.db.scan == nil, "no Anniversary nada é coletado")

print(("ok: %d checks"):format(checks))
