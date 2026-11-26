--=============================================================================
-- PartySync — o grupo sincronizado (issue #92). Com membros do grupo que também usam o Lodestar: sob o objetivo
-- compartilhado, a contagem de cada um ("Ana 5/8 · Bia pronta"), quem não tem a quest do passo, e Compartilhar
-- (pelo próprio jogo) no clique direito da linha. Só no grupo de casa, nunca em raide; só ids de quest e contagens,
-- em mensagem de addon escondida; nada vai ao chat. Configurações > Grupo desliga.
--
--   LS3|S|qid:estado,qid:estado,...     estado = "h/n" (no diário, contagem) | "c" (pronta) | "x" (sem a quest)
--
-- No topo, o núcleo puro (codec, testado fora do jogo). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local P = {}
ns.PartySync = P

P.PREFIX = "LSParty"
P.MAX = 240           -- cabe com folga em uma mensagem de addon (255)

-- states = { [qid] = "h/n" | "c" | "x" } -> texto (ids em ordem; o que não cabe fica de fora)
function P.Encode(states)
	local ids = {}
	for q in pairs(states or {}) do ids[#ids + 1] = q end
	table.sort(ids)
	local parts, len = {}, 6
	for _, q in ipairs(ids) do
		local piece = q .. ":" .. states[q]
		if len + #piece + 1 > P.MAX then break end
		parts[#parts + 1] = piece
		len = len + #piece + 1
	end
	return "LS3|S|" .. table.concat(parts, ",")
end

-- texto -> { [qid] = { have, need } | "c" | "x" } ou nil (formato desconhecido, valor fora do esperado)
function P.Decode(msg)
	if type(msg) ~= "string" or #msg > 255 then return nil end
	local body = msg:match("^LS3|S|(.*)$")
	if not body then return nil end
	local out = {}
	for piece in body:gmatch("[^,]+") do
		local q, st = piece:match("^(%d+):(.+)$")
		q = tonumber(q)
		if not q or q > 9999999 then return nil end
		local h, n = st:match("^(%d+)/(%d+)$")
		if h then
			h, n = tonumber(h), tonumber(n)
			if n < 1 or n > 1000 or h > n then return nil end
			out[q] = { h, n }
		elseif st == "c" or st == "x" then
			out[q] = st
		else
			return nil
		end
	end
	return out
end

-- A linha sob o objetivo: { { name, state } } -> "Ana 5/8 · Bia pronta · Caio sem a quest" (L = textos)
function P.Line(entries, L)
	local parts = {}
	for _, e in ipairs(entries or {}) do
		local s = e.state
		if type(s) == "table" then parts[#parts + 1] = ("%s %d/%d"):format(e.name, s[1], s[2])
		elseif s == "c" then parts[#parts + 1] = (L and L.PS_READY or "%s ready"):format(e.name)
		elseif s == "x" then parts[#parts + 1] = (L and L.PS_MISSING or "%s lacks it"):format(e.name) end
	end
	return table.concat(parts, " · ")
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local QL = C_QuestLog or {}
local send = (C_ChatInfo and C_ChatInfo.SendAddonMessage) or SendAddonMessage
if C_ChatInfo and C_ChatInfo.RegisterAddonMessagePrefix then pcall(C_ChatInfo.RegisterAddonMessagePrefix, P.PREFIX) end

local peers = {}          -- [nome] = { t, q = { [qid] = estado } }
P.TTL = 600

local function inParty()
	local home = LE_PARTY_CATEGORY_HOME or 1
	return IsInGroup and IsInGroup(home) and not (IsInRaid and IsInRaid())
end
local function on() return ns.db and ns.db.partySync ~= false end

-- as quests que importam: as do passo atual e dos 5 seguintes
local function interest()
	local ids = {}
	local g = ns.currentGuide
	if not g then return ids end
	local cur = ns.char.currentStep or 1
	for i = cur, math.min(#g.steps, cur + 5) do
		for _, goal in ipairs(g.steps[i].goals) do
			local q = ns.QuestState and ns.QuestState.QuestOf(goal)
			if q and ns:IsGoalActive(goal) then ids[q] = true end
		end
	end
	return ids
end

local function states()
	local out = {}
	for q in pairs(interest()) do
		if not ns.IsQuestInLog(q) then
			if not ns.IsQuestDone(q) then out[q] = "x" end
		elseif QL.IsComplete and QL.IsComplete(q) then
			out[q] = "c"
		else
			local h, n = ns.QuestState.Counts(ns.QuestState.Objectives(q))
			out[q] = h and ("%d/%d"):format(h, n) or "0/1"
		end
	end
	return out
end

local lastSent, sentAt = nil, 0
local function broadcast(force)
	if not (on() and inParty() and send) then return end
	local msg = P.Encode(states())
	if not force and msg == lastSent and GetTime() - sentAt < 60 then return end
	lastSent, sentAt = msg, GetTime()
	pcall(send, P.PREFIX, msg, "PARTY")
end
P.Broadcast = broadcast

local pending
local function later(force)
	if pending then return end
	pending = true
	C_Timer.After(2, function() pending = nil; broadcast(force) end)
end
for _, ev in ipairs({ "QUEST_LOG_UPDATE", "QUEST_ACCEPTED", "QUEST_TURNED_IN", "_GUIDE_LOADED" }) do
	ns:On(ev, function() later(false) end)
end
ns:On("GROUP_ROSTER_UPDATE", function() later(true) end)
ns:Every(30, function() broadcast(false) end)   -- de tempos em tempos, para quem entrou agora

local function short(name) return name and (name:match("^([^%-]+)") or name) end

ns:On("CHAT_MSG_ADDON", function(_, prefix, msg, channel, sender)
	if prefix ~= P.PREFIX or channel ~= "PARTY" or not on() then return end
	if ns.IsSecret(sender) or ns.IsSecret(msg) then return end
	-- no Forever o remetente vem "Nome Sobrenome" (ns.PlayerName); a nossa própria mensagem também volta
	local who = short(sender)
	if not who or who == ns.PlayerName() or who == UnitName("player") then return end
	local q = P.Decode(msg)
	if not q then return end
	peers[who] = { t = GetTime(), q = q }
	if ns.Viewer then ns.Viewer:Refresh() end
end)

-- quem do grupo (com o Lodestar) tem o quê desta quest
function P:For(qid)
	local out = {}
	if not (on() and inParty() and qid) then return out end
	for name, p in pairs(peers) do
		local first = name:match("^(%S+)") or name
		local inGroup = UnitInParty and (UnitInParty(name) or UnitInParty(first))
		if GetTime() - p.t > P.TTL or not inGroup then
			peers[name] = nil
		elseif p.q[qid] then
			out[#out + 1] = { name = first, state = p.q[qid] }
		end
	end
	table.sort(out, function(a, b) return a.name < b.name end)
	return out
end

-- alguém do grupo não tem a quest (e eu tenho, e o jogo deixa compartilhar)?
function P:CanShare(qid)
	if not ns.IsQuestInLog(qid) then return false end
	if QL.IsPushableQuest and not QL.IsPushableQuest(qid) then return false end
	for _, e in ipairs(P:For(qid)) do if e.state == "x" then return true end end
	return false
end

function P.Share(qid)
	if not (QL.SetSelectedQuest and QuestLogPushQuest) then return end
	QL.SetSelectedQuest(qid)
	pcall(QuestLogPushQuest)
end
