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

-- índice: quais guias (da facção do player) ENSINAM cada quest de accept. Guardamos
-- TODOS os guias por quest (não só o 1º) porque a ordem de pairs() é indefinida: se
-- uma quest é ensinada tanto no guia atual quanto em outro, precisamos saber que o
-- atual a ensina p/ NÃO sugerir um detour indevido. Lazy: monta na 1ª necessidade.
local questToGuide
local function buildIndex()
	questToGuide = {}
	local pf = UnitFactionGroup and UnitFactionGroup("player")
	for key, g in pairs(ns.guides or {}) do
		local f = g.meta and g.meta.faction
		if not f or f == pf then
			for id in (g.body or ""):gmatch("accept%s+[^\r\n]-##(%d+)") do
				id = tonumber(id)
				if id then
					local lst = questToGuide[id]
					if not lst then lst = {}; questToGuide[id] = lst end
					local seenKey = false
					for _, k in ipairs(lst) do if k == key then seenKey = true; break end end
					if not seenKey then lst[#lst + 1] = key end
				end
			end
		end
	end
end

-- Guia que ensina `p` e é DIFERENTE do atual; nil se o atual já ensina `p`
-- (nesse caso é prereq do próprio guia, sem detour) ou se ninguém ensina.
local function otherGuideFor(p, curKey)
	local lst = questToGuide[p]
	if not lst then return nil end
	local other
	for _, k in ipairs(lst) do
		if k == curKey then return nil end
		if not other then other = k end
	end
	return other
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
				local gk = otherGuideFor(p, curKey)
				if gk then return p, gk end
			end
		end
	end
	return nil
end

local function titleFor(pid)
	local name = C_QuestLog and C_QuestLog.GetTitleForQuestID and C_QuestLog.GetTitleForQuestID(pid)
	return name or ("#" .. pid)
end

-- Gate de cadeia DURA (p.nextInChain==qid) ainda não feito. Usado como fallback
-- quando NENHUM guia ensina o prereq: aí não dá pra abrir aba, mas ainda avisamos
-- "faça <quest> antes". Recursivo p/ mostrar o gate MAIS FUNDO (o 1º da cadeia).
local function chainGateFor(qid, seen)
	local p = ns.questChainGate and ns.questChainGate[qid]
	if not p or seen[p] then return nil end
	seen[p] = true
	if isDone(p) or inLog(p) then return nil end   -- prereq feito/em progresso: sem trava
	return chainGateFor(p, seen) or p              -- mostra o mais fundo incompleto
end

-- O passo está travado por um prereq?
--   { quest=nome, guide=chave, pid } → prereq de OUTRO guia (botão "Abrir" a aba)
--   { quest=nome, guide=nil,   pid } → gate de cadeia sem guia (só avisa)
function ns:PrereqBlock(step)
	if not (step and ns.currentGuide) then return nil end
	if not questToGuide then buildIndex() end
	local curKey = ns.currentGuide.key
	for _, g in ipairs(step.goals) do
		if g.verb == "accept" and g.id and self:IsGoalActive(g) and not self:IsGoalComplete(g)
			and not (isDone(g.id) or inLog(g.id)) then
			-- 1) prereq ensinado por outro guia → abre em aba
			if ns.questPre then
				local pid, gk = deepestBlocking(g.id, curKey, {})
				if gk then return { quest = titleFor(pid), guide = gk, pid = pid } end
			end
			-- 2) gate de cadeia dura sem guia → só avisa "faça isto antes"
			local p = chainGateFor(g.id, {})
			if p then return { quest = titleFor(p), guide = nil, pid = p } end
		end
	end
	return nil
end
