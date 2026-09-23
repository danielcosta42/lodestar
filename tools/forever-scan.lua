-- O coletor do Forever, rodado contra os arquivos de verdade (LibChehulQuest +
-- ForeverScan) sob um cliente stubado, com os eventos disparados como o jogo os
-- dispara.
--
-- Prova que: quem dá e quem entrega a quest são gravados com id de NPC e
-- coordenada; o objetivo vem junto; identidade restrita não é gravada; a
-- resposta do servidor vira nome; título VAZIO não gruda (o bug clássico: "" é
-- verdadeiro em Lua); a colheita no gossip rende o NPC inteiro sem aceitar; e o
-- repasse pela malha só sai com consentimento, só para quem anuncia `qsink` e
-- só com o "onde" — nunca com quem mandou.
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
function UnitGUID(unit) return (unit == "npc" or unit == "questnpc") and npcGuid or nil end
function UnitName(unit) return (unit == "npc" or unit == "questnpc") and npcName or nil end
function UnitExists(unit) return unit == "npc" end   -- "questnpc" não existe: cai no genérico
function UnitFactionGroup() return "Horde" end
function GetLocale() return "enUS" end
function GetQuestID() return questAtual end
function GetZoneText() return "Riverglades" end
function GetMaxPlayerLevel() return 60 end
function GetQuestFactionGroup() return 2 end
function GetQuestUiMapID() return 2548 end
local temDado = {}
function HaveQuestData(id) return temDado[id] == true end

-- o que o NPC oferece antes de você aceitar
local ofertas = {}
C_GossipInfo = {
	GetAvailableQuests = function() return ofertas end,
	GetActiveQuests = function() return {} end,
}

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
	IsRepeatableQuest = function() return false end,
}
C_Timer = { NewTicker = function() return { Cancel = function() end } end }

-- a lib escuta por frame próprio (não depende do host): guarda o OnEvent dela
local libEvents = {}
function CreateFrame()
	return {
		RegisterEvent = function(_, e) libEvents[e] = true end,
		SetScript = function(_, _, fn) libEvents.handler = fn end,
	}
end

-- malha stubada: quem recebeu o quê
local sussurros, aceita, meshHandler = {}, true, nil
_G.ChehulMesh = {
	Whisper = function(_, prefix, payload, alvo)
		if not aceita then return false end        -- AceComm fora do ar
		sussurros[#sussurros + 1] = { prefix = prefix, payload = payload, alvo = alvo }
		return true
	end,
	Register = function(_, _, handler) meshHandler = handler end,
}
_G.ChehulNet = { peers = {
	GuildOS  = { caps = "v=3,qsink,lvl=60" },   -- tem companion: recebe
	Outro    = { caps = "v=1,lvl=42" },         -- não tem: não recebe nada
} }

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
	function GetBuildInfo() return "1.60.1", "69913", "Sep 18 2026", interfaceNumber end
	for _, file in ipairs({ "Compat.lua", "Libs/LibStub.lua", "Libs/LibChehulQuest.lua",
	                        "ForeverScan.lua" }) do
		assert(loadfile(ROOT .. "/" .. file))("Lodestar", ns)
	end
	-- O jogo entrega o evento ao frame da lib; aqui o `fire` do teste faz o mesmo.
	local aoHost = ns.fire
	ns.fire = function(event, ...)
		aoHost(event, ...)
		if libEvents.handler then libEvents.handler(nil, event, ...) end
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

-- facção e zona: dois campos que o roteador EXIGE e que só o cliente dá
check(q.faction == 2, "a facção da quest foi gravada")
check(q.uiMap == 2548, "e o uiMap que o servidor aponta")

-- título vazio não pode grudar: "" é VERDADEIRO em Lua, então `q.name or ...`
-- gravaria a string vazia e a varredura nunca pediria o id de novo
C_QuestLog.GetTitleForQuestID = function() return "" end
fe.fire("QUEST_DATA_LOAD_RESULT", 90010, true)
check(fe.db.scan.quests[90010].name == nil, "título vazio não vira nome")
C_QuestLog.GetTitleForQuestID = function(id) return "Quest " .. tostring(id) end
fe.fire("QUEST_DATA_LOAD_RESULT", 90010, true)
check(fe.db.scan.quests[90010].name == "Quest 90010", "e o id volta a ser colhido depois")

-- colheita no gossip: um clique no NPC rende tudo que ele oferece, sem aceitar
ofertas = {
	{ questID = 95101, title = "Coming of Age", questLevel = 7 },
	{ questID = 95102, title = "Harmony in Balance", questLevel = 9 },
}
fe.fire("GOSSIP_SHOW")
check(fe.db.scan.quests[95101] and fe.db.scan.quests[95102], "as duas quests do NPC foram colhidas")
check(fe.db.scan.quests[95101].level == 7, "com o nível que o gossip dá")
check(fe.db.scan.givers[95102] and fe.db.scan.givers[95102].npc == 218920,
	"e cada uma ligada ao NPC que a oferece")

-- registro com id de NPC não pode ser sobrescrito por um sem
UnitGUID = function() return nil end
fe.fire("GOSSIP_SHOW")
check(fe.db.scan.givers[95102].npc == 218920, "registro pior não sobrescreve o melhor")
UnitGUID = function(unit) return (unit == "npc" or unit == "questnpc") and npcGuid or nil end

-- a sessão se identifica: sem isso, mesclar contribuição de estranhos é adivinhação
local meta = fe.db.scan.meta
check(meta and meta.build == "69913" and meta.interface == 16001, "a colheita diz de que build veio")
check(meta.faction == "Horde" and meta.locale == "enUS", "e de que facção e idioma")

-- ── repasse pela malha ─────────────────────────────────────────────────────
local lib = LibStub("LibChehulQuest-1.0")
check(lib and lib.ligado, "a lib carregou e o addon a ligou")

-- sem consentimento não sai nada, por mais cheio que esteja o buffer
check(next(lib.buffer), "o colhido ficou na fila de repasse")
check(lib:Flush() == 0 and #sussurros == 0, "sem consentimento nada é mandado")

-- com consentimento: só para quem anuncia `qsink`, e só o "onde"
fe.db.shareQuests = true
check(lib:Flush() > 0, "com consentimento o lote sai")
check(#sussurros == 1 and sussurros[1].alvo == "GuildOS",
	"sussurrado só para quem tem companion")
local payload = sussurros[1].payload
check(payload:find("^CQ1|"), "com o protocolo na frente")
check(payload:find("g:80120:218920:2548:5200:3400", 1, true),
	"e o ponto do giver dentro (deu " .. payload .. ")")
check(not payload:find("Keanna") and not payload:find("Quest 80120"),
	"sem nome de NPC nem título: o sink pergunta isso ao servidor sozinho")
check(lib:Flush() == 0, "o que já foi não é remandado na sessão")

-- waypoint: a coordenada que o servidor aponta também é repassada
C_QuestLog.GetNumQuestLogEntries = function() return 1 end
C_QuestLog.GetInfo = function() return { questID = 80120, isHeader = false, level = 24 } end
C_QuestLog.GetNextWaypointForMap = function() return 0.61, 0.28 end
lib:SweepWaypoints()
local pontos = fe.db.scan.waypoints[80120]
check(pontos and pontos[1].map == 2548 and pontos[1].x == 61, "o waypoint do servidor foi gravado")
lib:Flush()
check(sussurros[#sussurros].payload:find("w:80120:2548:6100:2800", 1, true),
	"e repassado como ponto")

-- ── lado sink: recebe de estranho ──────────────────────────────────────────
local deFora = "CQ1|g:70500:4321:1519:5000:6000;w:70500:1519:5100:6100"
check(lib:OnRelay(deFora) == 0, "quem não é sink ignora o que chega")

lib.host.isSink = function() return true end
check(lib:OnRelay(deFora) == 2, "o sink aceita os dois registros")
local recebido = fe.db.scan.givers[70500]
check(recebido and recebido.npc == 4321 and recebido.map == 1519, "com npc e mapa")
check(recebido.x == 50 and recebido.y == 60, "e a coordenada de volta em 0-100")
check(recebido.src == "relay", "marcado como vindo da malha")
check(recebido.name == nil, "sem nada sobre quem mandou")
check(lib.novos[70500], "id desconhecido entrou na fila de perguntar ao servidor")
local antes = #pedidos
check(lib:PullNew(3) == 1, "e é perguntado ao servidor")
check(#pedidos == antes + 1 and pedidos[#pedidos] == 70500, "pelo id que chegou")

-- registro que o sink já tem não é sobrescrito por um de fora
check(lib:OnRelay("CQ1|g:70500:9999:1519:1000:1000") == 0, "o que já existe não é sobrescrito")
check(fe.db.scan.givers[70500].npc == 4321, "o npc original continua")

-- ── o que a revisão pegou (regressões que passariam batido) ────────────────
-- parado no mesmo lugar, o waypoint não é remandado a cada sweep; ponto novo é
lib:SweepWaypoints()
check(lib:Flush() == 0, "o mesmo waypoint não sai duas vezes")
C_QuestLog.GetNextWaypointForMap = function() return 0.99, 0.11 end
lib:SweepWaypoints()
check(lib:Flush() == 1, "mas o ponto novo sai")

-- malha fora do ar: o lote FICA na fila. A sessão é tudo que o membro tem —
-- dar por enviado o que não saiu perde o dado pra sempre.
aceita = false
questAtual = 80130
fe.fire("QUEST_DETAIL")
local antesDaFalha = #sussurros
check(lib:Flush() == 0 and #sussurros == antesDaFalha, "sem entrega, nada é dado por enviado")
aceita = true
check(lib:Flush() > 0, "e o mesmo lote sai quando a malha volta")
check(sussurros[#sussurros].payload:find("g:80130:", 1, true), "com o registro que quase se perdeu")

-- o handler é chamado como o LibChehulMesh chama: (message, sender, dist)
check(type(meshHandler) == "function", "a lib registrou o prefixo na malha")
meshHandler("CQ1|g:70600:4322:1519:5000:6000", "Fulano", "WHISPER")
check(fe.db.scan.givers[70600], "o payload vem na 1ª posição, como o OnReceive entrega")

-- o pré-teste oficial de identidade restrita, na cópia que a lib carrega
C_Secrets = {
	HasSecretRestrictions = function() return true end,
	ShouldUnitIdentityBeSecret = function() return true end,
}
questAtual = 80140
fe.fire("QUEST_DETAIL")
local restrito = fe.db.scan.givers[80140]
check(restrito and restrito.npc == nil, "identidade restrita: o ponto entra, o id do NPC não")
check(lib:Flush() == 0, "e ponto sem NPC não é repassado (não serve pra ninguém)")
C_Secrets = nil

-- sem malha instalada o addon segue colhendo local: é a feature dele, e não
-- depende de ninguém (DoD da issue #7)
local malha = _G.ChehulMesh
_G.ChehulMesh = nil
questAtual = 80150
fe.fire("QUEST_DETAIL")
check(fe.db.scan.givers[80150], "sem malha, a colheita local continua")
check(lib:Flush() == 0, "e o repasse simplesmente não acontece, sem estourar")
_G.ChehulMesh = malha

print(("ok: %d checks"):format(checks))
