--=============================================================================
-- Buddy — parceiro de quest elite (specs/parceiro, issue #80). Enquanto o passo do
-- guia tem um objetivo elite ou de grupo ativo e incompleto, o Lodestar avisa por
-- sussurro de addon os clientes Lodestar que a ChehulNet ouviu na MESMA zona. Quem
-- recebe e está na mesma quest ali vê um toast clicável; o clique convida (evento de
-- hardware). Nada vai ao chat; nada sai de instância; convite só do clique.
--
-- Fio: LB1|Q|questID|mapa   (prefixo LSBuddy, só sussurro)
--=============================================================================
local ADDON, ns = ...
local B = {}
ns.Buddy = B

B.PREFIX       = "LSBuddy"
B.PEER_FRESH   = 300        -- um peer ouvido há mais que isso não recebe aviso
B.TARGETS      = 8          -- avisos por rodada, no máximo
B.ANNOUNCE_GAP = 120        -- um aviso por quest a cada 2 min
B.OFFER_GAP    = 10 * 60    -- uma oferta por pessoa e quest a cada 10 min
B.REPLY_GAP    = 10 * 60    -- uma apresentação de volta por pessoa e quest a cada 10 min

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

-- quem recebe o aviso: peers da ChehulNet com Lodestar ("ls"), na mesma zona (mapID do HELLO),
-- ouvidos há pouco, sem eu; ordem estável por nome; até TARGETS
function B.Targets(peers, myMap, now, me)
	local out = {}
	for name, p in pairs(peers or {}) do
		if name ~= me and type(p) == "table" and p.addons and p.addons.ls and p.mapID == myMap
			and (p.ts or 0) >= now - B.PEER_FRESH then
			out[#out + 1] = name
		end
	end
	table.sort(out)
	for i = #out, B.TARGETS + 1, -1 do out[i] = nil end
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
local function curto(nome) return nome and (Ambiguate and Ambiguate(nome, "short") or nome:match("^[^-]+")) end
local function inInstance() return IsInInstance and IsInInstance() and true or false end
local function on() return ns.db and ns.db.eliteBuddy ~= false end

local function myMap()
	local map = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	if map and not ns.IsSecret(map) then return map end
end

-- o grupo já está cheio para uma quest de grupo
local function groupFull()
	local n = GetNumGroupMembers and GetNumGroupMembers() or 0
	return not (IsInRaid and IsInRaid()) and n >= 5
end

-- a quest de grupo do passo atual, ou nil
local function myEliteQuest()
	local o = ns.API and ns.API.CurrentObjective and ns.API.CurrentObjective()
	if not (o and o.needGroup and o.questID) then return nil end
	if C_QuestLog and C_QuestLog.IsOnQuest and not C_QuestLog.IsOnQuest(o.questID) then return nil end
	return o.questID
end

local function questName(qid)
	local t = C_QuestLog and C_QuestLog.GetTitleForQuestID and C_QuestLog.GetTitleForQuestID(qid)
	if type(t) == "string" and t ~= "" and not ns.IsSecret(t) then return t end
	return ns.L.QUEST_FALLBACK:format(tostring(qid))
end

local function whisper(target, qid, map)
	local M = mesh()
	if M and M.Whisper then pcall(M.Whisper, M, B.PREFIX, B.Encode(qid, map), target) end
end

local function announce()
	if not on() or inInstance() or groupFull() then return end
	local qid, map = myEliteQuest(), myMap()
	if not (qid and map) then return end
	local now = time()
	if not B.Allow(announced, qid, now, B.ANNOUNCE_GAP) then return end
	local CN = _G.ChehulNet
	for _, name in ipairs(B.Targets(CN and CN.peers, map, now, curto(ns.PlayerName()))) do whisper(name, qid, map) end
end

local function invite(name)
	if C_PartyInfo and C_PartyInfo.InviteUnit then
		pcall(C_PartyInfo.InviteUnit, name)
	elseif InviteUnit then
		pcall(InviteUnit, name)
	end
end

local function onRecv(payload, sender, dist)
	if dist ~= "WHISPER" or ns.IsSecret(payload, sender) or not on() or inInstance() then return end
	local qid, map = B.Decode(payload)
	local who = curto(sender)
	if not qid or not who or who == curto(ns.PlayerName()) then return end
	if myEliteQuest() ~= qid or myMap() ~= map or groupFull() then return end
	local now = time()
	if not B.Allow(offered, who .. ":" .. qid, now, B.OFFER_GAP) then return end
	-- apresenta-se de volta uma vez: quem me avisou também me vê
	if B.Allow(replied, who .. ":" .. qid, now, B.REPLY_GAP) then whisper(sender, qid, map) end
	if ns.Toast then
		ns.Toast:Show({ title = ns.L.BUDDY_TITLE, text = ns.L.BUDDY_TEXT:format(who, questName(qid)),
			color = ns.UI.COL.tip, hold = 15, glyph = "estrela",
			onClick = function() invite(sender) end })
	end
end

do
	local M = mesh()
	if M and M.Register then M:Register(B.PREFIX, onRecv) end
end

ns:Every(15, function() pcall(announce) end)
