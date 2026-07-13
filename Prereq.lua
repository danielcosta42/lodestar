--=============================================================================
-- Prereq — desbloqueio de quests travadas por pré-requisito de OUTRO guia.
-- Se o passo atual quer aceitar uma quest que exige um prereq que você ainda não
-- fez, e esse prereq é ensinado por outro guia (ex.: liberação de Ogri'la), o
-- Viewer oferece abrir esse guia numa ABA. Assim você nunca fica preso.
--   ns.questPre[qid] = { prereqIDs }   (de PrereqData.lua)
--=============================================================================
local ADDON, ns = ...

local QL = C_QuestLog
local function isDone(id)
	if QL and QL.IsQuestFlaggedCompleted then return QL.IsQuestFlaggedCompleted(id) end
	if IsQuestFlaggedCompleted then return IsQuestFlaggedCompleted(id) end
	return false
end
local function inLog(id)
	if QL and QL.GetLogIndexForQuestID then return QL.GetLogIndexForQuestID(id) ~= nil end
	if GetQuestLogIndexByID then return (GetQuestLogIndexByID(id) or 0) > 0 end
	return false
end

-- índice: qual guia (da facção do player) ENSINA cada quest de accept. Lazy: só
-- monta na 1ª necessidade (evita hitch no login); os guias já estão registrados.
local questToGuide
local function buildIndex()
	questToGuide = {}
	local pf = UnitFactionGroup and UnitFactionGroup("player")
	for key, g in pairs(ns.guides or {}) do
		local f = g.meta and g.meta.faction
		if not f or f == pf then
			for id in (g.body or ""):gmatch("accept%s+[^\r\n]-##(%d+)") do
				id = tonumber(id)
				if id and not questToGuide[id] then questToGuide[id] = key end
			end
		end
	end
end
-- Reindexa só quando um guia é IMPORTADO (novo conteúdo); troca de aba não mexe.
function ns:PrereqReindex() questToGuide = nil end

-- Prereq incompleto MAIS FUNDO (o que se faz primeiro) ensinado por um guia
-- DIFERENTE do atual. Recursivo com `seen` p/ evitar ciclos. Retorna (pid, guideKey).
local function deepestBlocking(qid, curKey, seen)
	local pre = ns.questPre and ns.questPre[qid]
	if not pre then return nil end
	for _, p in ipairs(pre) do
		if not seen[p] then
			seen[p] = true
			if not (isDone(p) or inLog(p)) then
				local dq, dk = deepestBlocking(p, curKey, seen)   -- prereq do prereq primeiro
				if dk then return dq, dk end
				local gk = questToGuide[p]
				if gk and gk ~= curKey then return p, gk end
			end
		end
	end
	return nil
end

-- O passo está travado por um prereq de OUTRO guia?
-- Retorna { quest = nome, guide = chave, pid = id } ou nil.
function ns:PrereqBlock(step)
	if not (step and ns.questPre and ns.currentGuide) then return nil end
	if not questToGuide then buildIndex() end
	local curKey = ns.currentGuide.key
	for _, g in ipairs(step.goals) do
		if g.verb == "accept" and g.id and self:IsGoalActive(g) and not self:IsGoalComplete(g)
			and not (isDone(g.id) or inLog(g.id)) then
			local pid, gk = deepestBlocking(g.id, curKey, {})
			if gk then
				local name = C_QuestLog and C_QuestLog.GetTitleForQuestID
					and C_QuestLog.GetTitleForQuestID(pid)
				return { quest = name or ("#" .. pid), guide = gk, pid = pid }
			end
		end
	end
	return nil
end
