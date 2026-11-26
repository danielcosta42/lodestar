--=============================================================================
-- PartyTell — avisar o grupo (specs/revamp-polestar, R13; opcional, desligado): quando uma quest do diário fica pronta
-- para entregar, uma linha no chat do grupo, "Lodestar: [Quest] pronta para entregar". Só em grupo (não raide, não
-- campo de batalha); uma vez por quest; nada no login, no /reload nem para o que já estava pronto ao entrar no grupo.
-- No topo, o núcleo puro (Ready, testado fora do jogo). Abaixo, o envio.
--=============================================================================
local ADDON, ns = ...
local P = {}
ns.PartyTell = P

-- As quests que passaram de "por fazer" a "pronta" entre dois retratos do diário ({ [id] = pronta }). Quest que não
-- estava no retrato de antes (aceita agora, login) não conta: ela já chegou pronta.
function P.Ready(before, now)
	local out = {}
	if not (before and now) then return out end
	for id, done in pairs(now) do
		if done and before[id] == false then out[#out + 1] = id end
	end
	table.sort(out)
	return out
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local last, sent = nil, {}

local function snapshot()
	local t, QL = {}, C_QuestLog or {}
	if not (QL.GetNumQuestLogEntries and QL.GetInfo and QL.IsComplete) then return t end
	for i = 1, QL.GetNumQuestLogEntries() or 0 do
		local info = QL.GetInfo(i)
		if info and info.questID and not info.isHeader then t[info.questID] = QL.IsComplete(info.questID) and true or false end
	end
	return t
end

local function inParty()
	-- o grupo de casa: num grupo só de instância o canal PARTY não existe (seria INSTANCE_CHAT)
	local home = LE_PARTY_CATEGORY_HOME or 1
	if not (IsInGroup and IsInGroup(home)) or (IsInRaid and IsInRaid()) then return false end
	local inInst, kind = IsInInstance()
	return not (inInst and (kind == "pvp" or kind == "arena"))
end

local function link(qid)
	if GetQuestLink then
		local ok, l = pcall(GetQuestLink, qid)
		if ok and type(l) == "string" and l:find("|H") then return l end
	end
	return "[" .. (ns.QuestState and ns.QuestState.Title(qid) or tostring(qid)) .. "]"
end

local function check()
	local now = snapshot()
	local ready = P.Ready(last, now)
	last = now
	if not (ns.db and ns.db.partyTell and inParty()) then return end
	for _, qid in ipairs(ready) do
		if not sent[qid] then
			sent[qid] = true
			pcall(SendChatMessage, ("Lodestar: %s %s"):format(link(qid), ns.L.PT_READY), "PARTY")
		end
	end
end

local pending
ns:On("QUEST_LOG_UPDATE", function()
	if pending then return end
	pending = true
	C_Timer.After(0.6, function() pending = nil; pcall(check) end)
end)
-- entrou num grupo: o que já estava pronto não é notícia
ns:On("GROUP_JOINED", function() last = snapshot() end)
