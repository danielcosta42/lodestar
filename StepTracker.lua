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

-- As quests que o guia aceita (ou entrega) daqui em diante, não só no passo atual (issue #100): falando com o NPC
-- de uma quest que o guia pega mais à frente, ou entregando uma pronta antes da hora, a automação age igual. A
-- entrega olha também para trás (a que ficou sem entregar). Fica de fora o que não vale para o personagem: passo
-- de outra classe/raça, quest pulada, descartada ou cinza (IsStepActive, IsGoalActive). id -> goal.
local ACEITE_ADIANTE = 40           -- passos (os mesmos do "Enquanto está aqui")
local function logFull()
	local QL = C_QuestLog
	if not (QL and QL.GetNumQuestLogEntries and QL.GetMaxNumQuestsCanAccept) then return false end
	local _, numQuests = QL.GetNumQuestLogEntries()
	local max = QL.GetMaxNumQuestsCanAccept()
	return numQuests and max and numQuests >= max or false
end
local function guideQuestGoals(verb)
	local out = {}
	local g = ns.currentGuide
	if not g then return out end
	local cur = ns.char.currentStep or 1
	-- aceite: só os próximos passos (escolta começa no aceite; a do fim do guia não pode começar agora) e nunca
	-- com o diário cheio; entrega: o guia inteiro
	if verb == "accept" and logFull() then return out end
	local first = verb == "turnin" and 1 or cur
	local last = verb == "accept" and math.min(#g.steps, cur + ACEITE_ADIANTE) or #g.steps
	for i = first, last do
		local st = g.steps[i]
		if ns:IsStepActive(st) then
			for _, goal in ipairs(st.goals) do
				if goal.verb == verb and goal.id and not out[goal.id] and ns:IsGoalActive(goal)
					and not ns:IsGoalComplete(goal) then
					out[goal.id] = goal
				end
			end
		end
	end
	return out
end
ns.GuideQuestGoals = guideQuestGoals

-- o que a automação pega/entrega: o passo atual e o resto do guia
local function wantedIDs(verb)
	local ids = stepQuestIDs(verb)
	for id in pairs(guideQuestGoals(verb)) do ids[id] = true end
	return ids
end

--------------------------------------------------------------------------------
-- Helpers de NPC / gossip
--------------------------------------------------------------------------------
local GI = C_GossipInfo

local function npcID()
	return ns.NpcID(UnitGUID and (UnitGUID("npc") or UnitGUID("target")))
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
-- a automação só age com o guia aberto: fechar a janela (X) é parar o guia. Shift apertado ao falar com o NPC
-- segura tudo uma vez (specs/revamp-polestar, R9).
local function ativo()
	return ns.currentGuide ~= nil and ns:UIShown() and not (IsShiftKeyDown and IsShiftKeyDown())
end

-- quest que o jogador pulou: o guloso não a pega (aceitar à mão desfaz o pulo, QuestState.lua)
local function skipped(qid)
	return qid and ns.char and ns.char.skipped and ns.char.skipped[qid] or false
end

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
	-- as recompensas desta quest, para o Equipamento, antes que o aceite feche a janela (GearPlan.lua)
	if ns.GearPlan and ns.GearPlan.HarvestRewards then ns.GearPlan.HarvestRewards() end
	if not (ns.db and ns.db.autoAccept and ativo()) then return end
	local qid = GetQuestID and GetQuestID()
	local wanted = wantedIDs("accept")
	local greedy = shouldGrab()
	-- se não sabemos o id (cliente antigo), aceita se guloso ou se o step pede accept
	if not qid then
		if greedy or next(wanted) then AcceptQuest() end
		return
	end
	if (greedy and not skipped(qid)) or wanted[qid] then AcceptQuest() end
end)

--------------------------------------------------------------------------------
-- REDE DE SEGURANÇA "nunca travado": se você está no NPC do passo e ele NÃO
-- oferece a quest de accept (nem está no seu log/concluída), o passo está
-- quebrado -> pula sozinho. Garante que dado imperfeito nunca trave o jogador.
--------------------------------------------------------------------------------

local function inLogOrDone(qid)
	return ns.IsQuestInLog(qid) or ns.IsQuestDone(qid)
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
	if not (ns.db and ns.db.autoSkip and ativo()) then return end
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
		-- a missão sai do guia: os passos seguintes dela (objetivo, entrega) deixam de valer,
		-- senão o travamento só mudava de lugar
		ns.char.dropped = ns.char.dropped or {}
		for _, g in ipairs(step.goals) do
			if g.verb == "accept" and g.id and not inLogOrDone(g.id) then ns.char.dropped[g.id] = true end
		end
		ns:Print(ns.L.SKIP_UNAVAILABLE)
		ns:AdvanceStep(1)
	end
end
ns:On("GOSSIP_SHOW", skipIfUnavailable)

-- NPCs multi-quest usam a janela "greeting": roteia a próxima disponível p/ o
-- fluxo normal de accept (QUEST_DETAIL auto-aceita se casar com o passo).
ns:On("QUEST_GREETING", function()
	if not ativo() then return end
	-- entrega primeiro: a quest pronta que o guia entrega, aqui ou mais adiante (issue #100)
	if ns.db and ns.db.autoTurnin and GetNumActiveQuests and SelectActiveQuest and GetActiveQuestID then
		local want = wantedIDs("turnin")
		local QL = C_QuestLog
		for i = 1, GetNumActiveQuests() or 0 do
			local qid = GetActiveQuestID(i)
			if qid and want[qid] and QL and QL.IsComplete and QL.IsComplete(qid) then SelectActiveQuest(i); return end
		end
	end
	if not (ns.db and ns.db.autoAccept) then return end
	local greedy = shouldGrab()                -- guia te mandou a este NPC (talk/click): pega tudo
	if not greedy and not next(wantedIDs("accept")) then return end
	-- pega as quests da janela (uma por vez; a greeting re-abre após aceitar), menos
	-- cinza e repetível que o passo não pede
	if not (GetNumAvailableQuests and SelectAvailableQuest) then return end
	local want = wantedIDs("accept")
	for i = 1, GetNumAvailableQuests() or 0 do
		local trivial, repeatable, qid
		if GetAvailableQuestInfo then
			local _
			trivial, _, repeatable, _, qid = GetAvailableQuestInfo(i)
		end
		if (qid and want[qid]) or (greedy and not (trivial or repeatable or skipped(qid))) then
			SelectAvailableQuest(i); return
		end
	end
end)

-- Gossip: seleciona a quest/opção certa no diálogo do NPC.
--  1) |gossip N num goal do step -> escolhe a opção N;
--  2) quest disponível que casa com goal `accept` -> pega;
--  3) quest ativa completa que casa com goal `turnin` -> entrega.
ns:On("GOSSIP_SHOW", function()
	if not ativo() then return end
	local step = ns:GetStep()
	if not step then return end

	-- 1) opção explícita via |gossip N — só no NPC que o goal cita
	if ns.db.autoGossip then
		local npc = npcID()
		for _, g in ipairs(step.goals) do
			local n = tonumber(g.gossip)
			if n and (not g.id or g.id == npc) and ns:IsGoalActive(g) and not ns:IsGoalComplete(g) then
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

	-- 2) aceitar quest disponível: guloso no NPC do passo (menos cinza e repetível),
	--    senão só as pedidas.
	--    Seleciona uma; as demais entram quando o gossip re-abre após aceitar.
	if ns.db.autoAccept then
		local greedy = shouldGrab()
		local want = wantedIDs("accept")
		if GI and GI.GetAvailableQuests then
			for _, q in ipairs(GI.GetAvailableQuests()) do
				if q.questID and (want[q.questID] or (greedy and not q.isTrivial and not q.repeatable
					and not skipped(q.questID))) then
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
		local want = wantedIDs("turnin")
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
	if not (ns.db and ns.db.autoTurnin and ativo()) then return end
	-- só a missão que o passo manda entregar, e nunca a que cobra ouro
	local qid = GetQuestID and GetQuestID()
	if not (qid and wantedIDs("turnin")[qid]) then return end
	if GetQuestMoneyToGet and (GetQuestMoneyToGet() or 0) > 0 then return end
	if IsQuestCompletable and IsQuestCompletable() then CompleteQuest() end
end)

-- Pontua uma recompensa: equipável usa o peso de classe do GearAdvisor (mais
-- inteligente); senão o valor de venda desempata.
local function rewardScore(link)
	if not link then return 0 end
	if ns.IsEquippable(link) then
		local s = ns.GearAdvisor and ns.GearAdvisor:Score(link) or 0
		return 1000 + s          -- qualquer equipável domina itens de valor
	end
	local price = select(11, ns.ItemInfo(link))
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
	if ns.GearPlan and ns.GearPlan.HarvestRewards then ns.GearPlan.HarvestRewards() end
	if not (ns.db and ns.db.autoTurnin and ativo()) then return end
	local qid = GetQuestID and GetQuestID()
	if not (qid and wantedIDs("turnin")[qid]) then return end        -- uma que o guia entrega, não outra
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
			if g.verb == "turnin" and g.id == qid and g.reward and ns:IsGoalActive(g) then pick = g.reward; break end
		end
	end
	local ahead = guideQuestGoals("turnin")[qid]          -- entrega de mais adiante: o |reward dela
	if not pick and ahead and ahead.reward then pick = ahead.reward end
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
