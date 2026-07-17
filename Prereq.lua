--=============================================================================
-- Prereq — INJETOR de cadeias de pré-requisito (inline, invisível).
--
-- Em vez de mostrar um banner "faça #X antes" que tira o jogador do fluxo, os
-- passos da cadeia que FALTA são SPLICADOS como passos nativos dentro do guia,
-- logo antes do passo travado. O jogador só segue a seta; concluir a cadeia uma
-- vez conta em todos os guias (flags de quest do WoW já são globais).
--
-- Fonte dos passos: HARVEST em runtime do guia que já ensina a cadeia. Resíduo
-- (quest que nenhum guia ensina) vira passo SINTETIZADO a partir de ns.questGiver.
--
-- A injeção é ESTÁTICA e determinística: depende só de CONTEÚDO (o guia ensina a
-- quest? existe guia-fonte que ensina?), nunca do estado do jogo. Logo guide.steps
-- é idêntico toda vez => índices/progresso estáveis (_gkey e char.steps são por
-- índice). Passos já concluídos se auto-escondem via CheckProgress.
--   ns.questPre[qid]   = { prereqQuestIDs }   (de PrereqData.lua)
--   ns.questGiver[qid] = { zoneName, x, y }   (de PrereqData.lua)
--=============================================================================
local ADDON, ns = ...

local Prereq = {}
ns.Prereq = Prereq

--------------------------------------------------------------------------------
-- Índices (lazy; invalidados por Prereq:Reindex quando um guia é importado).
--   teaches[guideKey]  = set(questID)   — quests que o guia ENSINA (accept/turnin/|q)
--   questToGuides[qid] = { guideKey,… }  — guias (da facção do player) que a ensinam
--------------------------------------------------------------------------------
local teaches, questToGuides

-- Quests que um corpo de guia ensina: accept/turnin (##id = quest) e objetivos |q.
-- (talk NPC##id e collect Item##id NÃO entram: aquele id é NPC/item, não quest.)
local function scanTeaches(body)
	local set = {}
	for id in body:gmatch("accept%s+[^\r\n]-##(%d+)") do set[tonumber(id)] = true end
	for id in body:gmatch("turnin%s+[^\r\n]-##(%d+)") do set[tonumber(id)] = true end
	for id in body:gmatch("|q%s+(%d+)") do set[tonumber(id)] = true end
	return set
end

local function buildIndex()
	teaches, questToGuides = {}, {}
	local pf = UnitFactionGroup and UnitFactionGroup("player")
	for key, g in pairs(ns.guides or {}) do
		local f = g.meta and g.meta.faction
		if not f or f == pf then
			local set = scanTeaches(g.body or "")
			teaches[key] = set
			for qid in pairs(set) do
				local lst = questToGuides[qid]
				if not lst then lst = {}; questToGuides[qid] = lst end
				lst[#lst + 1] = key
			end
		end
	end
end

-- Reindexa só quando um guia é IMPORTADO (conteúdo novo). Guias já parseados
-- mantêm seus steps até serem recarregados — não re-injetamos no meio da sessão.
function Prereq:Reindex() teaches, questToGuides = nil, nil end
function ns:PrereqReindex() Prereq:Reindex() end   -- alias compat

--------------------------------------------------------------------------------
-- Helpers de cadeia
--------------------------------------------------------------------------------
-- Conjunto de TODOS os ancestrais (pré-reqs transitivos) de `qid` via ns.questPre.
-- Usado só p/ escolher o melhor guia-fonte. `seen` evita ciclos. NÃO inclui `qid`.
local function closureSet(qid, set, seen)
	local pre = ns.questPre and ns.questPre[qid]
	if not pre then return end
	for _, p in ipairs(pre) do
		if not seen[p] then
			seen[p] = true; set[p] = true
			closureSet(p, set, seen)
		end
	end
end

-- Vínculo de quest de um goal: accept/turnin => id; objetivo => q.id; senão nil.
local function goalQuest(goal)
	if (goal.verb == "accept" or goal.verb == "turnin") and goal.id then return goal.id end
	if goal.q and goal.q.id then return goal.q.id end
	return nil
end

local function titleFor(q)
	local n = C_QuestLog and C_QuestLog.GetTitleForQuestID and C_QuestLog.GetTitleForQuestID(q)
	return n or ("#" .. q)
end

-- Clona um goal em tabela nova (não compartilhar referência com o guia-fonte),
-- limpando os índices do guia-fonte (serão reatribuídos ao splicar).
local function cloneGoal(g)
	local c = {}
	for k, v in pairs(g) do c[k] = v end
	c._gkey, c._step, c._idx, c.index = nil, nil, nil, nil
	if g.goto_ then local t = {}; for k, v in pairs(g.goto_) do t[k] = v end; c.goto_ = t end
	if g.q    then local t = {}; for k, v in pairs(g.q)    do t[k] = v end; c.q    = t end
	if g.tips then local t = {}; for i, v in ipairs(g.tips) do t[i] = v end; c.tips = t end
	return c
end

-- Clona um passo do guia-fonte mantendo só os goals relevantes à cadeia:
--   • goals SEM vínculo de quest (talk/note/goto/use) → mantém (guia/coords/dica)
--   • goals cuja quest ∈ Cfinal                        → mantém
--   • goals amarrados a quest ∉ Cfinal                 → descarta (batching alheio)
-- Passo sem nenhum goal acionável (∈ Cfinal) é descartado (retorna nil).
local function harvestStep(step, Cfinal)
	local goals, actionable = {}, false
	for _, g in ipairs(step.goals) do
		local q = goalQuest(g)
		if q == nil then
			goals[#goals + 1] = cloneGoal(g)
		elseif Cfinal[q] then
			goals[#goals + 1] = cloneGoal(g); actionable = true
		end
	end
	if not actionable then return nil end
	local s = { goals = goals, notes = {} }
	if step.only  then s.only  = step.only  end
	if step.label then s.label = step.label end
	return s
end

-- Passo sintetizado p/ uma quest de resíduo (nenhum guia ensina): manda o jogador
-- pegá-la no NPC (com |goto do questGiver). Sem giver, vira nota mínima. Sempre
-- com cara de passo nativo — nunca um banner.
local function synthStep(q)
	local title = titleFor(q)
	local giver = ns.questGiver and ns.questGiver[q]
	local goal
	if giver then
		goal = { verb = "accept", id = q, text = title, raw = title,
		         goto_ = { zone = giver[1], x = giver[2], y = giver[3] } }
	else
		goal = { verb = "note", text = ("Complete: %s (#%d)"):format(title, q) }
	end
	return { goals = { goal }, notes = {}, _injected = "synth" }
end

-- Melhor guia-fonte p/ um conjunto de quests: o que cobre o MÁXIMO de Cset,
-- da facção do player, ≠ do guia atual. Retorna (guideKey, coberturaN) ou nil.
local function bestSource(curKey, Cset)
	local best, bestN, seen = nil, nil, {}
	for q in pairs(Cset) do
		for _, key in ipairs(questToGuides[q] or {}) do
			if key ~= curKey and not seen[key] then
				seen[key] = true
				local n = 0
				for qq in pairs(Cset) do if teaches[key][qq] then n = n + 1 end end
				if not bestN or n > bestN then best, bestN = key, n end
			end
		end
	end
	if best and bestN and bestN > 0 then return best, bestN end
	return nil
end

-- Monta o bloco de passos p/ desbloquear `entry`, resolvendo E/OU por um WALK:
-- em cada gate, se o guia atual (G) já ensina algum galho → nada a fazer ali; se
-- o guia-fonte (S) cobre um galho → segue só o galho de S; só quando NENHUM galho
-- está coberto é que injeta (AND-safe: pega todos). Assim uma alternativa de E/OU
-- que G/S já satisfazem nunca é injetada em duplicidade.
--   harvest[q]  = quests que S ensina (viram passos harvestados de S)
--   residual    = quests que ninguém ensina (viram passos sintetizados)
-- Marca em `injected` (dedup entre entradas do mesmo guia). nil se nada a fazer.
local function buildBlock(curKey, entry, Gset, injected)
	-- fonte S: guia (≠ G) que cobre o máximo dos ancestrais de `entry`
	local pset = {}; closureSet(entry, pset, {})
	local S = bestSource(curKey, pset)
	local Sset = (S and teaches[S]) or {}

	local harvest, residual, visited = {}, {}, {}
	local function walk(d)
		local pre = ns.questPre[d]
		if not pre then return end
		for _, p in ipairs(pre) do if Gset[p] then return end end   -- gate coberto por G
		local viaS = false
		for _, p in ipairs(pre) do if Sset[p] or harvest[p] then viaS = true; break end end
		for _, p in ipairs(pre) do
			if not Gset[p] and not visited[p] then
				if viaS then
					if Sset[p] then visited[p] = true; harvest[p] = true; walk(p) end
				else                                                   -- nenhum galho coberto
					visited[p] = true
					if Sset[p] then harvest[p] = true else residual[#residual + 1] = p end
					walk(p)
				end
			end
		end
	end
	walk(entry)

	for q in pairs(harvest) do if injected[q] then harvest[q] = nil end end   -- dedup

	local out = {}
	-- resíduo sintetizado, raízes primeiro (descoberta é topo→base)
	for i = #residual, 1, -1 do
		local q = residual[i]
		if not injected[q] then out[#out + 1] = synthStep(q); injected[q] = true end
	end
	-- harvest de S, na ordem original de S
	if S and next(harvest) then
		local sBase = ns.GetBaseSteps(ns.guides[S])
		for _, step in ipairs(sBase) do
			local cloned = harvestStep(step, harvest)
			if cloned then cloned._injected = S; out[#out + 1] = cloned end
		end
		for q in pairs(harvest) do injected[q] = true end
	end
	return #out > 0 and out or nil
end

--------------------------------------------------------------------------------
-- API pública: injeta as cadeias que faltam em `base` (passos-base do guia).
-- Retorna um NOVO array de passos (ou `base` inalterado se nada foi injetado).
-- Chamado por ns.ensureParsed (Guide.lua) ANTES da indexação (_gkey).
--------------------------------------------------------------------------------
function Prereq:InjectChains(guide, base)
	if not (ns.questPre and next(ns.questPre)) then return base end
	if not teaches then buildIndex() end
	local Gset = teaches[guide.key] or scanTeaches(guide.body or "")
	local injected, out, changed = {}, {}, false

	for _, step in ipairs(base) do
		for _, g in ipairs(step.goals) do
			if g.verb == "accept" and g.id and ns.questPre[g.id] then
				-- travado? o guia NÃO ensina nenhum pré-req direto de g.id. (Se ensina
				-- ao menos um galho, o próprio guia conduz até g.id — sem injeção.)
				local blocked = true
				for _, p in ipairs(ns.questPre[g.id]) do
					if Gset[p] then blocked = false; break end
				end
				if blocked then
					local block = buildBlock(guide.key, g.id, Gset, injected)
					if block then
						for _, s in ipairs(block) do out[#out + 1] = s end
						changed = true
					end
				end
			end
		end
		out[#out + 1] = step
	end

	return changed and out or base
end
