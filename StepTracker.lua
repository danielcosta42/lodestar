--=============================================================================
-- StepTracker: escuta o jogo e auto-avança / auto-aceita / auto-entrega quests.
--=============================================================================
local ADDON, ns = ...

--------------------------------------------------------------------------------
-- Coalescência: muitos eventos disparam em rajada; agrupamos num check só.
--------------------------------------------------------------------------------
local pending = false
local function scheduleCheck()
	if pending then return end
	pending = true
	C_Timer.After(0.15, function()
		pending = false
		if ns.currentGuide then ns:CheckProgress() end
	end)
end
ns.scheduleCheck = scheduleCheck

for _, ev in ipairs({
	"QUEST_ACCEPTED", "QUEST_TURNED_IN", "QUEST_REMOVED", "QUEST_LOG_UPDATE",
	"UNIT_QUEST_LOG_CHANGED", "QUEST_WATCH_UPDATE", "BAG_UPDATE_DELAYED",
	"PLAYER_LEVEL_UP", "PLAYER_MONEY", "ZONE_CHANGED", "ZONE_CHANGED_NEW_AREA",
}) do
	ns:On(ev, scheduleCheck)
end

--------------------------------------------------------------------------------
-- Coleta os questIDs relevantes do step atual (para casar com auto-accept/turnin)
--------------------------------------------------------------------------------
local function stepQuestIDs(verb)
	local ids = {}
	local step = ns:GetStep()
	if not step then return ids end
	for _, goal in ipairs(step.goals) do
		if goal.verb == verb and goal.id and ns:IsGoalActive(goal) then
			ids[goal.id] = true
		end
	end
	return ids
end

--------------------------------------------------------------------------------
-- Helpers de NPC / gossip
--------------------------------------------------------------------------------
local GI = C_GossipInfo

local function npcID()
	local guid = UnitGUID and (UnitGUID("npc") or UnitGUID("target"))
	if not guid then return nil end
	local _, _, _, _, _, id = strsplit("-", guid)
	return tonumber(id)
end

local function stepTalksTo(step, npc)
	for _, g in ipairs(step.goals) do
		if (g.verb == "talk" or g.verb == "click") and g.id == npc then return true end
	end
	return false
end

-- "Modo guloso": pega TODAS as quests do NPC ao qual o passo te mandou (hubs/
-- dailies), não só as listadas. Usa uma SESSÃO por-NPC com janela de tempo: assim
-- que o passo avança ao aceitar a 1ª quest, a sessão segue pegando as demais no
-- re-abrir do gossip. Escopo por GUID+tempo evita "vazar" p/ outros NPCs.
local grabNPC, grabUntil
local function shouldGrab()
	local npc = npcID()
	if not npc then return false end
	if grabNPC == npc and grabUntil and GetTime() < grabUntil then
		grabUntil = GetTime() + 3          -- mantém viva enquanto o gossip re-abre
		return true
	end
	local step = ns:GetStep()              -- inicia se o passo te manda pegar quest aqui
	if step and stepTalksTo(step, npc) then
		for _, g in ipairs(step.goals) do
			if g.verb == "accept" then
				grabNPC, grabUntil = npc, GetTime() + 3
				return true
			end
		end
	end
	return false
end

--------------------------------------------------------------------------------
-- Auto-accept: ao abrir a janela de detalhe da quest. Guloso no NPC do passo;
-- senão só aceita as quests que o passo pede.
--------------------------------------------------------------------------------
ns:On("QUEST_DETAIL", function()
	if not (ns.db and ns.db.autoAccept and ns.currentGuide) then return end
	local qid = GetQuestID and GetQuestID()
	local wanted = stepQuestIDs("accept")
	local greedy = shouldGrab()
	-- se não sabemos o id (cliente antigo), aceita se guloso ou se o step pede accept
	if not qid then
		if greedy or next(wanted) then AcceptQuest() end
		return
	end
	if greedy or wanted[qid] then AcceptQuest() end
end)

--------------------------------------------------------------------------------
-- REDE DE SEGURANÇA "nunca travado": se você está no NPC do passo e ele NÃO
-- oferece a quest de accept (nem está no seu log/concluída), o passo está
-- quebrado -> pula sozinho. Garante que dado imperfeito nunca trave o jogador.
--------------------------------------------------------------------------------

local function inLogOrDone(qid)
	local QL = C_QuestLog
	if QL then
		if QL.GetLogIndexForQuestID and QL.GetLogIndexForQuestID(qid) then return true end
		if QL.IsQuestFlaggedCompleted and QL.IsQuestFlaggedCompleted(qid) then return true end
	end
	return false
end

local function gossipOffered()
	local t, any = {}, false
	if GI then
		if GI.GetAvailableQuests then
			for _, q in ipairs(GI.GetAvailableQuests()) do if q.questID then t[q.questID] = true; any = true end end
		end
		if GI.GetActiveQuests then
			for _, q in ipairs(GI.GetActiveQuests()) do if q.questID then t[q.questID] = true; any = true end end
		end
	end
	return t, any
end

local function skipIfUnavailable()
	if not (ns.db and ns.db.autoSkip and ns.currentGuide) then return end
	local step = ns:GetStep(); if not step then return end
	local npc = npcID(); if not (npc and stepTalksTo(step, npc)) then return end
	local offered, any = gossipOffered()
	if not any then return end                    -- NPC sem quests listadas: não decide
	local pending, blocked = false, true
	for _, g in ipairs(step.goals) do
		if g.verb == "accept" and g.id and ns:IsGoalActive(g) and not ns:IsGoalComplete(g) then
			pending = true
			if offered[g.id] or inLogOrDone(g.id) then blocked = false end
		end
	end
	if pending and blocked then                    -- NPC tem quests, mas nenhuma do passo
		ns:Print(ns.L.SKIP_UNAVAILABLE)
		ns:AdvanceStep(1)
	end
end
ns:On("GOSSIP_SHOW", skipIfUnavailable)

-- NPCs multi-quest usam a janela "greeting": roteia a próxima disponível p/ o
-- fluxo normal de accept (QUEST_DETAIL auto-aceita se casar com o passo).
ns:On("QUEST_GREETING", function()
	if not (ns.db and ns.db.autoAccept and ns.currentGuide) then return end
	if not shouldGrab() then return end        -- guia te mandou a este NPC (talk/click)
	-- pega TODAS as quests da janela (uma por vez; a greeting re-abre após aceitar)
	if GetNumAvailableQuests and SelectAvailableQuest and (GetNumAvailableQuests() or 0) > 0 then
		SelectAvailableQuest(1)
	end
end)

-- Gossip: seleciona a quest/opção certa no diálogo do NPC.
--  1) |gossip N num goal do step -> escolhe a opção N;
--  2) quest disponível que casa com goal `accept` -> pega;
--  3) quest ativa completa que casa com goal `turnin` -> entrega.
ns:On("GOSSIP_SHOW", function()
	if not ns.currentGuide then return end
	local step = ns:GetStep()
	if not step then return end

	-- 1) opção explícita via |gossip N
	if ns.db.autoGossip then
		for _, g in ipairs(step.goals) do
			local n = tonumber(g.gossip)
			if n and ns:IsGoalActive(g) and not ns:IsGoalComplete(g) then
				if GI and GI.GetOptions and GI.SelectOption then
					local opts = GI.GetOptions()
					local o = opts and opts[n]
					if o then pcall(GI.SelectOption, o.gossipOptionID or o.orderIndex or n); return end
				elseif SelectGossipOption then
					pcall(SelectGossipOption, n); return
				end
			end
		end
	end

	-- 2) aceitar quest disponível: guloso no NPC do passo (TODAS), senão só as pedidas.
	--    Seleciona uma; as demais entram quando o gossip re-abre após aceitar.
	if ns.db.autoAccept then
		local greedy = shouldGrab()
		local want = stepQuestIDs("accept")
		if GI and GI.GetAvailableQuests then
			for _, q in ipairs(GI.GetAvailableQuests()) do
				if q.questID and (greedy or want[q.questID]) then
					pcall(GI.SelectAvailableQuest, q.questID); return
				end
			end
		elseif GetNumGossipAvailableQuests and (GetNumGossipAvailableQuests() or 0) >= 1
			and (greedy or next(want)) and SelectGossipAvailableQuest then
			pcall(SelectGossipAvailableQuest, 1); return   -- fallback clássico
		end
	end

	-- 3) entregar quest ativa completa que o step pede
	if ns.db.autoTurnin then
		local want = stepQuestIDs("turnin")
		if GI and GI.GetActiveQuests then
			for _, q in ipairs(GI.GetActiveQuests()) do
				if q.questID and want[q.questID] and q.isComplete then
					pcall(GI.SelectActiveQuest, q.questID); return
				end
			end
		end
	end
end)

--------------------------------------------------------------------------------
-- Auto-turnin: completar e receber recompensa quando a quest casa com `turnin`.
-- Só entrega automaticamente quando NÃO há recompensa de escolha (evita erro).
--------------------------------------------------------------------------------
ns:On("QUEST_PROGRESS", function()
	if not (ns.db and ns.db.autoTurnin and ns.currentGuide) then return end
	local qid = GetQuestID and GetQuestID()
	local wanted = stepQuestIDs("turnin")
	if IsQuestCompletable and IsQuestCompletable() then
		if not qid or wanted[qid] or next(wanted) then
			CompleteQuest()
		end
	end
end)

-- Pontua uma recompensa: equipável usa o peso de classe do GearAdvisor (mais
-- inteligente); senão o valor de venda desempata.
local function rewardScore(link)
	if not link then return 0 end
	if IsEquippableItem and IsEquippableItem(link) then
		local s = ns.GearAdvisor and ns.GearAdvisor:Score(link) or 0
		return 1000 + s          -- qualquer equipável domina itens de valor
	end
	local price = select(11, GetItemInfo(link))
	return (price or 0) / 10000
end
local function bestRewardIndex(n)
	local best, bestScore = 1, nil
	for i = 1, n do
		local link = GetQuestItemLink and GetQuestItemLink("choice", i)
		local s = rewardScore(link)
		if not bestScore or s > bestScore then bestScore, best = s, i end
	end
	return best
end

ns:On("QUEST_COMPLETE", function()
	if not (ns.db and ns.db.autoTurnin and ns.currentGuide) then return end
	local n = GetNumQuestChoices and GetNumQuestChoices() or 0
	-- pcall: entregar com bolsa cheia / item único já equipado lança erro visível
	if n <= 1 then
		if not pcall(GetQuestReward, n == 1 and 1 or nil) then
			ns:Print("|cffffcc00" .. ns.L.CHOOSE_REWARD .. "|r")
		end
		return
	end
	-- múltiplas escolhas: |reward N do guia tem prioridade; senão a melhor heurística
	local pick
	local step = ns:GetStep()
	if step then
		for _, g in ipairs(step.goals) do
			if g.verb == "turnin" and g.reward and ns:IsGoalActive(g) then pick = g.reward; break end
		end
	end
	if not pick and ns.db.autoReward then pick = bestRewardIndex(n) end
	if not (pick and pick >= 1 and pick <= n and pcall(GetQuestReward, pick)) then
		ns:Print("|cffffcc00" .. ns.L.CHOOSE_REWARD .. "|r")
	end
end)

--------------------------------------------------------------------------------
-- Auto-compartilhar quest no grupo ao aceitar (se possível).
--------------------------------------------------------------------------------
ns:On("QUEST_ACCEPTED", function(_, arg1, arg2)
	if not (ns.db and ns.db.autoShareQuest) then return end
	if not (IsInGroup and IsInGroup()) then return end
	local qid = arg2 or arg1          -- Classic passa (logIndex, questID) ou (questID)
	if not qid then return end
	local QL = C_QuestLog
	if QL and QL.IsPushableQuest and not QL.IsPushableQuest(qid) then return end
	if QL and QL.SetSelectedQuest and QuestLogPushQuest then
		QL.SetSelectedQuest(qid)
		pcall(QuestLogPushQuest)
	end
end)

--------------------------------------------------------------------------------
-- Feedback ao subir de nível
--------------------------------------------------------------------------------
ns:On("PLAYER_LEVEL_UP", function(_, level)
	ns:Debug("subiu para nível", level)
	scheduleCheck()
end)
