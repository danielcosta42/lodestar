--=============================================================================
-- Buddy — parceiro de quest elite (specs/parceiro, issue #80). Opcional. Enquanto o
-- passo do guia tem um objetivo elite ou de grupo ativo e incompleto, o Lodestar avisa
-- por sussurro de addon alguns clientes Lodestar que a ChehulNet ouviu na MESMA zona
-- (de preferência os que estão no mesmo trecho do mesmo guia). Quem recebe e está na
-- mesma quest ali vê um toast clicável; o clique convida (evento de hardware). Nada vai
-- ao chat; nada sai de instância nem em lockdown; convite só do clique.
--
-- Fio: LB1|Q|questID|mapa   (prefixo LSBuddy, só sussurro)
--=============================================================================
local ADDON, ns = ...
local B = {}
ns.Buddy = B

B.PREFIX       = "LSBuddy"
B.PEER_FRESH   = 300        -- um peer ouvido há mais que isso não recebe aviso
B.TARGETS      = 8          -- avisos por rodada, no máximo
B.STEP_NEAR    = 5          -- "mesmo trecho": passo do mesmo guia a até tantos passos do meu
B.ANNOUNCE_GAP = 120        -- um aviso por quest a cada 2 min
B.OFFER_GAP    = 10 * 60    -- uma oferta por pessoa e quest a cada 10 min
B.REPLY_GAP    = 10 * 60    -- uma apresentação de volta por pessoa e quest a cada 10 min
B.TRIED_SECONDS = 30        -- o "No player named" de um nome sussurrado fica fora do chat por tanto tempo

--------------------------------------------------------------------------------
-- núcleo puro (testado em tools/buddy-tests.lua)
--------------------------------------------------------------------------------
local function int(s, lo, hi)
	local n = tonumber(s)
	if n and n == math.floor(n) and n >= lo and n <= hi then return n end
end

function B.Encode(qid, map)
	return table.concat({ "LB1", "Q", qid, map }, "|")
end

function B.Decode(s)
	if type(s) ~= "string" or #s > 40 then return nil end
	local f = {}
	for part in (s .. "|"):gmatch("([^|]*)|") do f[#f + 1] = part end
	if #f ~= 4 or f[1] ~= "LB1" or f[2] ~= "Q" then return nil end
	local qid, map = int(f[3], 1, 10000000), int(f[4], 1, 100000)
	if qid and map then return qid, map end
end

-- O nome como o sussurro o alcança: no Forever "Nome Sobrenome", sem o reino (a regra da malha);
-- um nome sem sobrenome (retail) mantém o reino.
function B.WhisperName(name)
	if type(name) ~= "string" then return nil end
	return name:match("^(%S+ %S+)%-%S+$") or name
end

-- "guide=Westfall (10-16),step=12/80" -> "Westfall (10-16)", 12
function B.GuideStep(caps)
	if type(caps) ~= "string" then return nil end
	local guide = caps:match("guide=([^,]+)")
	local step = tonumber(caps:match("step=(%d+)/"))
	return guide, step
end

-- quem recebe o aviso: peers da ChehulNet com Lodestar ("ls"), ouvidos há pouco, sem eu, utilizáveis
-- (`usable(name)`), na mesma zona (`sameZone(myMap, peerMap)`; mapa desconhecido só serve se o peer está no
-- mesmo trecho do mesmo guia). Os do mesmo trecho vêm primeiro; dentro de cada grupo, sorteio. Até TARGETS.
-- `mine` = { guide, step }; `rand(n)` -> 1..n.
function B.Targets(peers, myMap, now, me, mine, sameZone, usable, rand)
	local near, rest = {}, {}
	for name, p in pairs(peers or {}) do
		if name ~= me and type(p) == "table" and p.addons and p.addons.ls and (p.ts or 0) >= now - B.PEER_FRESH
			and (not usable or usable(name)) then
			local g, st = B.GuideStep(p.caps)
			local close = mine and mine.guide and g == mine.guide and st and mine.step
				and math.abs(st - mine.step) <= B.STEP_NEAR
			local known = type(p.mapID) == "number" and p.mapID > 0
			if known and sameZone(myMap, p.mapID) then
				if close then near[#near + 1] = name else rest[#rest + 1] = name end
			elseif not known and close then
				near[#near + 1] = name
			end
		end
	end
	local out = {}
	for _, pool in ipairs({ near, rest }) do
		table.sort(pool)   -- base estável; o sorteio é que varia
		while #pool > 0 and #out < B.TARGETS do
			out[#out + 1] = table.remove(pool, rand(#pool))
		end
	end
	return out
end

-- no máximo uma vez a cada `gap` s por chave
function B.Allow(state, key, now, gap)
	if state[key] and now - state[key] < gap then return false end
	state[key] = now
	return true
end

if not ns.On then return end

--------------------------------------------------------------------------------
-- no jogo
--------------------------------------------------------------------------------
local announced, offered, replied = {}, {}, {}

local function mesh() return _G.ChehulMesh end
local function inInstance() return IsInInstance and IsInInstance() and true or false end
local function lockdown()
	local f = C_ChatInfo and C_ChatInfo.InChatMessagingLockdown
	return f and f() and true or false
end
local function on() return ns.db and ns.db.eliteBuddy == true end
local function me() return B.WhisperName(ns.PlayerName()) end

local function myMap()
	local map = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	if map and not ns.IsSecret(map) then return map end
end

-- a zona de um mapa: sobe dos mapas menores (subzona, caverna) até o tipo Zona
local ZONE = (Enum and Enum.UIMapType and Enum.UIMapType.Zone) or 3
local function zoneOf(map)
	local guard = 0
	while map and guard < 5 and C_Map and C_Map.GetMapInfo do
		guard = guard + 1
		local info = C_Map.GetMapInfo(map)
		if not info or not info.mapType or info.mapType <= ZONE then return map end
		if not info.parentMapID or info.parentMapID == 0 then return map end
		map = info.parentMapID
	end
	return map
end
local function sameZone(a, b) return a == b or zoneOf(a) == zoneOf(b) end

local function groupFull()
	local n = GetNumGroupMembers and GetNumGroupMembers() or 0
	if IsInRaid and IsInRaid() then return n >= 40 end
	return n >= 5
end

-- posso convidar: fora de grupo, ou líder/assistente
local function canInvite()
	if not (IsInGroup and IsInGroup()) then return true end
	return (UnitIsGroupLeader and UnitIsGroupLeader("player")) or (UnitIsGroupAssistant and UnitIsGroupAssistant("player"))
		or false
end

local function inMyGroup(name)
	return (UnitInParty and UnitInParty(name)) or (UnitInRaid and UnitInRaid(name)) or false
end

-- a quest de grupo do passo atual, ou nil
local function myEliteQuest()
	local o = ns.API and ns.API.CurrentObjective and ns.API.CurrentObjective()
	local qid = o and o.needGroup and (o.eliteQuestID or o.questID)
	if not qid then return nil end
	if C_QuestLog and C_QuestLog.IsOnQuest and not C_QuestLog.IsOnQuest(qid) then return nil end
	return qid
end

-- o meu guia (último segmento, como o HELLO o anuncia) e o passo
local function myGuideStep()
	local g = ns.currentGuide
	if not (g and g.key) then return nil end
	return { guide = (g.key:match("[^/]+$") or g.key):gsub("[|,]", " "), step = ns.char and ns.char.currentStep }
end

local function questName(qid)
	local t = C_QuestLog and C_QuestLog.GetTitleForQuestID and C_QuestLog.GetTitleForQuestID(qid)
	if type(t) == "string" and t ~= "" and not ns.IsSecret(t) then return t end
	return ns.L.QUEST_FALLBACK:format(tostring(qid))
end

-- a malha esconde o "No player named" de um nome em dir.tried e tira da escolha quem está em dir.bad
local function usable(name)
	local M = mesh()
	local bad = M and M.dir and M.dir.bad and M.dir.bad[name]
	return not (bad and time() <= bad)
end

local function whisper(target, qid, map)
	local M = mesh()
	if not (M and M.Whisper) then return end
	if M.dir and M.dir.tried and GetTime then
		M.dir.tried[target] = GetTime() + (M.TRIED_SECONDS or B.TRIED_SECONDS)
	end
	pcall(M.Whisper, M, B.PREFIX, B.Encode(qid, map), target)
end

local function announce()
	if not on() or inInstance() or lockdown() or groupFull() then return end
	local qid, map = myEliteQuest(), myMap()
	if not (qid and map) then return end
	local now = time()
	if not B.Allow(announced, qid, now, B.ANNOUNCE_GAP) then return end
	local CN = _G.ChehulNet
	local targets = B.Targets(CN and CN.peers, map, now, me(), myGuideStep(), sameZone, usable, math.random)
	for _, name in ipairs(targets) do whisper(B.WhisperName(name), qid, map) end
end

local function invite(name)
	if C_PartyInfo and C_PartyInfo.InviteUnit then
		pcall(C_PartyInfo.InviteUnit, name)
	elseif InviteUnit then
		pcall(InviteUnit, name)
	end
end

local function onRecv(payload, sender, dist)
	if dist ~= "WHISPER" or ns.IsSecret(payload, sender) or not on() or inInstance() or lockdown() then return end
	if ns.db.toastsEnabled == false then return end   -- sem toast não há oferta, e nem resposta
	local qid, map = B.Decode(payload)
	local who = B.WhisperName(sender)
	if not qid or not who or who == me() or inMyGroup(who) then return end
	local mine = myMap()
	if myEliteQuest() ~= qid or not (mine and sameZone(mine, map)) or groupFull() then return end
	local now = time()
	if not B.Allow(offered, who .. ":" .. qid, now, B.OFFER_GAP) then return end
	-- apresenta-se de volta uma vez: quem me avisou também me vê (e pode convidar se eu não puder)
	if B.Allow(replied, who .. ":" .. qid, now, B.REPLY_GAP) then whisper(who, qid, mine) end
	if canInvite() and ns.Toast then
		ns.Toast:Show({ title = ns.L.BUDDY_TITLE:format(who), text = ns.L.BUDDY_TEXT:format(questName(qid)),
			color = ns.UI.COL.tip, hold = 15, glyph = "estrela",
			onClick = function() invite(who) end })
	end
end

do
	local M = mesh()
	if M and M.Register then M:Register(B.PREFIX, onRecv) end
end

ns:Every(15, function() pcall(announce) end)
