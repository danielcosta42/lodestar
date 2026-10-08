--=============================================================================
-- Guide: registro de guias, condições, e máquina de estado do progresso.
--=============================================================================
local ADDON, ns = ...

ns.guides = ns.guides or {}          -- [key] = { key, meta, body, steps }

--------------------------------------------------------------------------------
-- APIs com guarda de compatibilidade (Vanilla/TBC/Wrath/Retail)
--------------------------------------------------------------------------------
local QuestLog = C_QuestLog or {}
local function IsQuestComplete(id)
	if QuestLog.IsQuestFlaggedCompleted then return QuestLog.IsQuestFlaggedCompleted(id) end
	if IsQuestFlaggedCompleted then return IsQuestFlaggedCompleted(id) end
	return false
end
local function IsQuestInLog(id)
	if QuestLog.GetLogIndexForQuestID then return QuestLog.GetLogIndexForQuestID(id) ~= nil end
	if GetQuestLogIndexByID then return (GetQuestLogIndexByID(id) or 0) > 0 end
	return false
end
ns.IsQuestInLog, ns.IsQuestDone = IsQuestInLog, IsQuestComplete
-- `obj`: aquele objetivo. Sem índice, a quest inteira: o passo cita o 1º alvo e a nota diz o
-- resto — concluir no 1º avançava o guia com objetivos por fazer.
local function QuestObjectiveDone(id, obj)
	local objectives
	if QuestLog.GetQuestObjectives then objectives = QuestLog.GetQuestObjectives(id) end
	if not objectives then return false end
	if obj then
		local o = objectives[obj]
		return o and o.finished or false
	end
	if #objectives == 0 then return false end
	for _, o in ipairs(objectives) do
		if not o.finished then return false end
	end
	return true
end
local ItemCount = (C_Item and C_Item.GetItemCount) or GetItemCount or function() return 0 end

--------------------------------------------------------------------------------
-- Conteúdo que este cliente não tem (ForeverData.lua, gerado pelo gen_forever.py)
--
-- Os guias saem do banco do Forever, então isto é rede de segurança: quest que
-- um guia cite e este cliente não tenha vira passo pulado, e guia que fique
-- sem passo nenhum não abre.
--------------------------------------------------------------------------------
local goneQuest = ns.foreverGoneQuests

-- Próximo guia do encadeamento. Ponteiro pendurado (o guia seguinte não existe)
-- encerra a cadeia em vez de estourar.
function ns:NextGuideKey(guide)
	local nxt = guide.meta and guide.meta.next
	if nxt and self.guides[nxt] then return nxt end
end

--------------------------------------------------------------------------------
-- Condições (para `only` e `complete`)
--------------------------------------------------------------------------------
local CLASSES = {
	WARRIOR=1, PALADIN=1, HUNTER=1, ROGUE=1, PRIEST=1,
	SHAMAN=1, MAGE=1, WARLOCK=1, DRUID=1, DEATHKNIGHT=1,
}
local RACES = {
	HUMAN=1, DWARF=1, NIGHTELF=1, GNOME=1, DRAENEI=1,
	ORC=1, SCOURGE=1, TAUREN=1, TROLL=1, BLOODELF=1,
}
local RACE_ALIAS = { UNDEAD = "SCOURGE" }  -- fala comum -> token da API

local function playerClass() return (select(2, UnitClass("player"))) end
local function playerRace()  return (select(2, UnitRace("player")))  end

-- Skyborne (Forever) são duas raças, 95 na Aliança e 96 na Horda. O token em
-- inglês ainda não é público, então a raça é reconhecida pelo id.
local SKYBORNE = { [95] = true, [96] = true }
local function isSkyborne() return SKYBORNE[select(3, UnitRace("player"))] or false end

-- Avalia um token único. Retorna true/false.
local function evalToken(tok)
	local raw = tok
	local negate = false
	if tok:sub(1, 4) == "not " then negate = true; tok = tok:sub(5) end
	local U = tok:upper():gsub("%s", "")
	local result

	local fn, arg = tok:match("^(%a+)%(([^)]*)%)$")   -- ex: completed(783)
	if fn then
		fn = fn:lower()
		if fn == "completed" then   -- completed(a,b): qualquer uma (preSingle do banco)
			result = false
			for id in arg:gmatch("%d+") do
				if IsQuestComplete(tonumber(id)) then result = true; break end
			end
		elseif fn == "haveq" then result = IsQuestInLog(tonumber(arg))
		elseif fn == "hasitem" then
			local id, n = arg:match("^(%d+),?(%d*)$")
			result = ItemCount(tonumber(id)) >= (tonumber(n) or 1)
		else result = false end
	elseif tok == "isdead" then
		result = UnitIsDeadOrGhost("player")
	elseif tok:match("^level%s*[<>=]") then
		local op, n = tok:match("^level%s*([<>=]=?)%s*(%d+)$")
		local lvl = UnitLevel("player")
		n = tonumber(n)
		if op == ">=" then result = lvl >= n
		elseif op == "<=" then result = lvl <= n
		elseif op == ">" then result = lvl > n
		elseif op == "<" then result = lvl < n
		elseif op == "==" or op == "=" then result = lvl == n end
	elseif U == "FOREVER" then
		result = ns.Client.isForever
	elseif U == "ANNIVERSARY" or U == "TBC" then
		result = not ns.Client.isForever
	elseif U == "ALLIANCE" or U == "HORDE" then
		result = (UnitFactionGroup("player") or ""):upper() == U
	elseif CLASSES[U] then
		result = playerClass() == U
	elseif U == "SKYBORNE" then
		result = isSkyborne()
	elseif RACES[U] or RACE_ALIAS[U] then
		result = playerRace():upper() == (RACE_ALIAS[U] or U)
	else
		ns:Debug("condição desconhecida:", raw)
		result = true      -- desconhecida = não bloqueia
	end

	if negate then return not result end
	return result and true or false
end

-- Uma condição é uma lista de tokens separados por espaço, tudo em AND.
-- (Tokens com parênteses ou "not X" são tratados como unidade.)
function ns:EvalCondition(cond)
	if not cond or cond == "" then return true end
	-- Quebra em AND lógico por espaços, juntando "not X" e "level >= N".
	local tokens, i = {}, 1
	local words = {}
	for w in cond:gmatch("%S+") do words[#words + 1] = w end
	while i <= #words do
		local w = words[i]
		if w == "not" and words[i + 1] then
			tokens[#tokens + 1] = "not " .. words[i + 1]
			i = i + 2
		elseif w == "level" then
			-- junta "level >= 5" (3 tokens) ou "level >=5" (2 tokens)
			local op, num = words[i + 1] or "", words[i + 2]
			if num and num:match("^%d+$") then
				tokens[#tokens + 1] = "level" .. op .. num
				i = i + 3
			else
				tokens[#tokens + 1] = "level" .. op
				i = i + 2
			end
		else
			tokens[#tokens + 1] = w
			i = i + 1
		end
	end
	for _, tok in ipairs(tokens) do
		if not evalToken(tok) then return false end
	end
	return true
end

--------------------------------------------------------------------------------
-- Registro
--------------------------------------------------------------------------------
function ns:RegisterGuide(key, meta, body)
	self.guides[key] = { key = key, meta = meta or {}, body = body, steps = nil }
end

-- Resolve uma chave a partir de trecho (case-insensitive). Exata > substring.
function ns:ResolveGuideKey(query)
	if self.guides[query] then return query end
	local q = query:lower()
	for key in pairs(self.guides) do
		if key:lower():find(q, 1, true) then return key end
	end
	return nil
end

-- Passos-base (parse cru, sem injeção nem indexação). Cacheado p/ o injetor de
-- pré-requisitos reusar ESTE guia como fonte de harvest sem recursão.
local function getBaseSteps(guide)
	if not guide._baseSteps then guide._baseSteps = ns:ParseGuide(guide.body) end
	return guide._baseSteps
end
ns.GetBaseSteps = getBaseSteps

-- Parseia sob demanda: base -> injeta cadeias de pré-requisito inline -> indexa.
-- A indexação (_gkey/_step) roda POR CIMA do array já splicado, então os passos
-- injetados viram passos de primeira classe (seta, mapa, progresso, Back/Skip).
-- Quest de um goal: `accept`/`turnin` trazem o id no próprio alvo; os demais
-- (collect/kill/click...) trazem a quest a que servem no modificador `|q`.
local function questOf(goal)
	if goal.verb == "accept" or goal.verb == "turnin" then return goal.id end
	return goal.q and goal.q.id
end

-- Sobrou algo que o addon sabe dar por concluído sozinho? (ns:IsGoalTrackable só
-- existe mais abaixo no arquivo, mas isto só roda com o guia já em uso.)
local function anyTrackable(goals)
	for _, goal in ipairs(goals) do
		if ns:IsGoalTrackable(goal) then return true end
	end
	return false
end

-- Tira do guia os passos cuja quest não existe neste cliente.
--
-- Um passo é pelo que ele serve: "talk NPC / accept Quest |goto x,y" existe para
-- aquela quest. Tirando só o goal da quest sobraria um "talk" sem coordenada que
-- nunca completa — e o avanço automático para ali, que é justamente o que isto
-- evita. Então o passo inteiro sai, a menos que sobre algo que se complete
-- sozinho (um `ding`, um `collect` com conta própria, um `goto` com coordenada).
--
-- O passo que muda é COPIADO: o array cru fica em guide._baseSteps, intacto —
-- índices e progresso salvos têm de bater entre sessões.
--
-- Roda ANTES da indexação, então _gkey/_step batem com o array devolvido.
local function stripMissingQuests(steps)
	if not goneQuest then return steps end
	local out = {}
	for _, step in ipairs(steps) do
		local goals, hadQuest, keptQuest = {}, false, false
		for _, goal in ipairs(step.goals) do
			local qid = questOf(goal)
			if qid then hadQuest = true end
			if not (qid and goneQuest[qid]) then
				goals[#goals + 1] = goal
				if qid then keptQuest = true end
			end
		end
		if #goals == #step.goals then
			out[#out + 1] = step                       -- nada mudou: mesmo passo
		elseif #goals > 0 and not (hadQuest and not keptQuest and not anyTrackable(goals)) then
			local copy = {}
			for k, v in pairs(step) do copy[k] = v end
			copy.goals = goals
			out[#out + 1] = copy
		end
	end
	return out
end

local function ensureParsed(guide)
	if guide.steps then return guide.steps end
	local base = getBaseSteps(guide)
	-- os passos do próprio guia: o gerador já esconde (por condição) o que depende de quest
	-- de outro guia — injetar a cadeia aqui punha passos impossíveis e travava todo caminho
	local steps = base
	steps = stripMissingQuests(steps)
	guide.steps = steps
	for si, step in ipairs(steps) do
		step.index = si
		for gi, goal in ipairs(step.goals) do
			goal._gkey = ("%s\0%d\0%d"):format(guide.key, si, gi)
			goal._step = si
			goal._idx = gi
		end
	end
	return guide.steps
end
ns.ensureParsed = ensureParsed

--------------------------------------------------------------------------------
-- Estado / navegação — vários guias abertos como ABAS.
--   char.openGuides = { key, ... }     ordem das abas
--   char.steps[key] = índice do step   progresso por guia (persistente)
--   char.currentGuide / char.currentStep = aba ativa; currentStep é o ESPELHO
--   que todo o resto do addon (XPHud, Waypoint, mapa...) lê.
--------------------------------------------------------------------------------
function ns:IsGuideOpen(key)
	for _, k in ipairs(self.char.openGuides) do if k == key then return true end end
	return false
end

-- Salva o passo do guia ativo no store por-guia (fonte da verdade ao trocar/logar).
function ns:SyncStep()
	if self.currentGuide then
		self.char.steps[self.currentGuide.key] = self.char.currentStep
	end
end

-- Abre um guia (como aba) e o ativa. Se já estiver aberto, apenas troca p/ ele
-- retomando o passo salvo. `keepProgress` retoma em vez de zerar; `silent` evita
-- print/toast (usado ao trocar de aba, que não deve poluir o chat).
-- Assinatura do conteúdo do guia: a revisão que o gerador grava no meta (muda quando
-- ele é regerado, ver migrateStep); guia importado, sem ela, usa o tamanho do texto.
local function guideSig(guide)
	return guide.meta and guide.meta.rev or #(guide.body or "")
end

function ns:LoadGuide(key, keepProgress, silent)
	local guide = self.guides[key]
	if not guide then return self:Printf(ns.L.GUIDE_NOTFOUND, key) end
	-- Tirando os passos de quest que este cliente não tem, alguns guias não
	-- sobram: abrir uma aba vazia (0/0 na barra) não ajuda ninguém.
	if #ensureParsed(guide) == 0 then return self:Printf(ns.L.GUIDE_NOCONTENT, key) end
	self:SyncStep()                                   -- guarda o passo da aba que sai
	local wasOpen = self:IsGuideOpen(key)
	if not wasOpen then table.insert(self.char.openGuides, key) end
	self.currentGuide = guide
	self.char.currentGuide = key
	self.char.hold = nil
	if keepProgress or wasOpen then
		self.char.currentStep = self.char.steps[key] or 1   -- retoma (troca de aba/login)
	else
		self.char.currentStep = 1                           -- guia novo: começa do zero
		if self.db and self.db.viewer then self.db.viewer.hidden = false end   -- mostra a UI
	end
	self.char.steps[key] = self.char.currentStep
	self.char.sigs = self.char.sigs or {}
	self.char.sigs[key] = guideSig(guide)
	if not silent and not (keepProgress and wasOpen) then
		self:Printf(ns.L.GUIDE_LOADED_MSG, key, #guide.steps)
	end
	self.fire("_GUIDE_LOADED", guide, silent)
	self:CheckProgress()
	if self.Viewer then self.Viewer:Refresh() end
	if self.Waypoint then self.Waypoint:Update() end
end

-- Troca p/ uma aba já aberta (sem print/toast, sem resetar progresso).
function ns:SwitchGuide(key)
	if not self:IsGuideOpen(key) then return end
	if self.currentGuide and self.currentGuide.key == key then return end
	self:LoadGuide(key, true, true)
end

-- Fecha a aba de um guia. O progresso (steps/completedGoals) é preservado, então
-- reabrir pelo menu retoma via CheckProgress. Fechando a aba ATIVA, ativa a
-- vizinha; se não sobrar nenhuma aba, cai no estado vazio (empty state).
function ns:CloseGuide(key)
	key = key or (self.currentGuide and self.currentGuide.key)
	if not key then return end
	local list = self.char.openGuides
	local idx
	for i, k in ipairs(list) do if k == key then idx = i; break end end
	if not idx then return end
	local wasActive = self.currentGuide and self.currentGuide.key == key
	if wasActive then self:SyncStep() end
	table.remove(list, idx)
	if not wasActive then
		if self.Viewer then self.Viewer:Refresh() end   -- só redesenha a tira de abas
		return
	end
	-- fechou a aba ativa: ativa a vizinha (a próxima; senão a anterior)
	local nextKey = list[idx] or list[idx - 1] or list[#list]
	self.currentGuide = nil
	if nextKey then
		self:LoadGuide(nextKey, true, true)
	else
		self.char.currentGuide = nil
		self.char.currentStep = 1
		if self.Viewer then self.Viewer:Refresh() end
		self:RefreshHUDs()
		if self.Waypoint then self.Waypoint:Update() end
	end
end

-- Encadeia p/ o próximo guia (meta.next): a aba concluída dá lugar à nova, no
-- mesmo lugar da tira — assim o leveling avança de zona sem acumular abas mortas.
function ns:ChainGuide(oldKey, newKey)
	local list = self.char.openGuides
	local pos
	for i, k in ipairs(list) do if k == oldKey then pos = i; break end end
	self.char.steps[oldKey] = nil                     -- guia concluído: esquece progresso
	if self:IsGuideOpen(newKey) then
		if pos then table.remove(list, pos) end        -- próximo já é aba: some a antiga
	elseif pos then
		list[pos] = newKey                             -- ocupa a mesma posição
	else
		table.insert(list, newKey)
	end
	self.currentGuide = nil                            -- força ativar como novo
	self:LoadGuide(newKey, true)                       -- toast do novo guia aparece
end

function ns:GetStep(idx)
	if not self.currentGuide then return nil end
	return self.currentGuide.steps[idx or self.char.currentStep]
end

--------------------------------------------------------------------------------
-- Conclusão de goals
--------------------------------------------------------------------------------
-- a quest do goal (objetivo `|q` ou entrega)
local function goalQuest(goal)
	return goal.q and goal.q.id or (goal.verb == "turnin" and goal.id) or nil
end

-- missão descartada (o NPC não a oferecia): seus passos seguintes não valem mais, a não
-- ser que ela esteja no diário ou já entregue (o jogador a fez por conta própria)
local function droppedGoal(char, goal)
	local q = goalQuest(goal)
	return q and char and char.dropped and char.dropped[q] and not IsQuestInLog(q)
		and not IsQuestComplete(q) or false
end

function ns:IsGoalActive(goal)
	if droppedGoal(self.char, goal) then return false end
	return self:EvalCondition(goal.only)
end

ns:On("QUEST_ACCEPTED", function(_, a, b)       -- (id) ou (índice no diário, id)
	local q = b or a
	if q and ns.char and ns.char.dropped then ns.char.dropped[q] = nil end
end)

-- Um goal é "rastreável" se dá pra detectar conclusão automaticamente.
function ns:IsGoalTrackable(goal)
	if goal.verb == "note" then return false end
	if goal.verb == "run" then return goal.runs ~= nil end   -- completa por nº de corridas
	if goal.complete then return true end
	if goal.verb == "accept" or goal.verb == "turnin" then return goal.id ~= nil end
	if goal.verb == "ding" then return true end
	if goal.verb == "buy" then return goal.id ~= nil end
	if goal.q then return true end
	if goal.verb == "collect" and goal.id and goal.count then return true end
	if goal.verb == "goto_" and goal.goto_ then return true end
	return false
end

function ns:IsGoalComplete(goal)
	-- conclusão manual (checkbox) sempre vale
	if self.char.completedGoals[goal._gkey] then return true end
	if goal.complete then return self:EvalCondition(goal.complete) end

	local v = goal.verb
	if v == "note" then return true end
	if v == "run" then   -- spam de dungeon: completo quando bater o nº de corridas
		local n = ns.DungeonRuns and ns.DungeonRuns:CountFor(goal.dungeon) or 0
		return goal.runs ~= nil and n >= (tonumber(goal.runs) or 0)
	end
	if v == "accept" then return goal.id and (IsQuestInLog(goal.id) or IsQuestComplete(goal.id)) end
	if v == "turnin" then return goal.id and IsQuestComplete(goal.id) end
	if v == "ding" then return UnitLevel("player") >= (tonumber(goal.text) or goal.count or 0) end
	if v == "buy" then return goal.id and ItemCount(goal.id) >= (goal.count or 1) end

	-- Objetivo ligado a quest: se a quest já foi entregue, o objetivo está feito
	-- (GetQuestObjectives devolve nil para quests fora do log => ficava travado).
	if goal.q then
		return IsQuestComplete(goal.q.id) or QuestObjectiveDone(goal.q.id, goal.q.obj)
	end
	if v == "collect" and goal.id and goal.count then
		return ItemCount(goal.id) >= goal.count
	end
	if v == "goto_" then return goal._reached == true end

	return false   -- soft (talk/click/use/...) só via checkbox manual
end

-- Step completo = todos os goals ativos e rastreáveis estão completos,
-- e existe pelo menos um goal rastreável (senão avança manual). Goal de missão
-- descartada conta como feito: o passo que só tinha ela não trava o guia.
function ns:IsStepComplete(step)
	local anyTrackable = false
	for _, goal in ipairs(step.goals) do
		if droppedGoal(self.char, goal) then
			anyTrackable = true
		elseif self:IsGoalActive(goal) and self:IsGoalTrackable(goal) then
			anyTrackable = true
			if not self:IsGoalComplete(goal) then return false end
		end
	end
	return anyTrackable
end

-- Pula steps cujo `only` não bate para o char atual.
function ns:IsStepActive(step)
	return self:EvalCondition(step.only)
end

function ns:AdvanceStep(delta)
	delta = delta or 1
	local guide = self.currentGuide
	if not guide then return end
	local idx = self.char.currentStep + delta
	-- pula steps inativos na direção do movimento
	while guide.steps[idx] and not self:IsStepActive(guide.steps[idx]) do
		idx = idx + (delta >= 0 and 1 or -1)
	end
	if idx < 1 then return end                   -- nada ativo antes: fica onde está
	if idx > #guide.steps then
		-- fim do guia: encadeia para o próximo, se houver
		local nxt = self:NextGuideKey(guide)
		if nxt then
			self:Print("guia concluído, carregando o próximo...")
			return self:ChainGuide(guide.key, nxt)
		end
		idx = #guide.steps
		if not guide._doneShown then                -- uma vez: todo evento passa por aqui de novo
			guide._doneShown = true
			self:Print("|cff88ff88" .. ns.L.GUIDE_DONE .. "|r")
		end
	end
	self.char.currentStep = idx
	self.char.steps[guide.key] = idx        -- persiste o passo por-guia (p/ trocar/logar)
	-- voltar à mão segura o passo: o próximo evento não o pula de novo (até avançar à mão)
	self.char.hold = delta < 0 and idx or nil
	if self.Viewer then self.Viewer:Refresh() end
	if self.Waypoint then self.Waypoint:Update() end
end

-- Marca/desmarca conclusão manual de um goal.
function ns:MarkGoal(goal, done)
	if done == nil then done = not self.char.completedGoals[goal._gkey] end
	self.char.completedGoals[goal._gkey] = done or nil
	self.char.hold = nil                         -- marcou: o guia volta a andar sozinho
	self:CheckProgress()
	if self.Viewer then self.Viewer:Refresh() end
end

-- Chamado quando o estado do jogo muda: auto-avança por TODOS os steps já
-- concluídos/inativos (importante ao retomar um guia salvo).
function ns:CheckProgress()
	local guide = self.currentGuide
	if not guide then return end
	local guard = 0
	while guard <= #guide.steps do
		guard = guard + 1
		if self.currentGuide ~= guide then break end   -- encadeou p/ outro guia
		local step = self:GetStep()
		if not step then break end
		if self.char.hold == self.char.currentStep then        -- o jogador voltou aqui à mão
			-- ...e o passo está por fazer: solta a trava, para seguir quando concluir
			if self:IsStepActive(step) and not self:IsStepComplete(step) then self.char.hold = nil end
			break
		end
		if self:IsStepActive(step) and not self:IsStepComplete(step) then break end
		local before = self.char.currentStep
		self:AdvanceStep(1)
		if self.currentGuide == guide and self.char.currentStep == before then break end
	end
	if self.Viewer then self.Viewer:Refresh() end
	if self.Waypoint then self.Waypoint:Update() end
end

-- Zona inicial por raça (token não-localizado de UnitRace).
local RACE_START = {
	HUMAN = "Elwynn Forest", DWARF = "Dun Morogh", GNOME = "Dun Morogh",
	NIGHTELF = "Teldrassil", DRAENEI = "Azuremyst Isle",
	ORC = "Durotar", TROLL = "Durotar", TAUREN = "Mulgore",
	SCOURGE = "Tirisfal Glades", BLOODELF = "Eversong Woods",
}

-- A ilha da raça nova (Forever): a cadeia de leveling não passa por ela, e o
-- autopilot só a oferece a Skyborne ou a quem já está lá.
local SKYBORNE_START = "Zephras Isle"

local function findStartGuide()
	local race = (select(2, UnitRace("player")) or ""):upper()
	local zone = isSkyborne() and SKYBORNE_START or RACE_START[race]
	if not zone then return nil end
	local pf = UnitFactionGroup("player")
	-- a zona pode ter duas faixas (Teldrassil 4-10 e 48-55): começa pela mais baixa
	local best, bestLo
	for key, g in pairs(ns.guides) do
		if key:sub(1, 9) == "Leveling/" and key:find(zone, 1, true)
			and (not g.meta.faction or g.meta.faction == pf) then
			local lo = tonumber(key:match("%((%d+)%s*%-")) or 0
			if not bestLo or lo < bestLo then best, bestLo = key, lo end
		end
	end
	return best
end

-- AUTOPILOT: melhor guia de leveling p/ QUALQUER nível — faixa (lo-hi) que contém
-- o nível do player, com desempate pela ZONA atual (via mapa, à prova de locale).
function ns:BestGuideForPlayer()
	local lvl = UnitLevel("player") or 1
	local pf = UnitFactionGroup("player")
	local curEng                                    -- zona atual em inglês (desempate)
	local m = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	if m and ns.zoneUiMap then
		for name, id in pairs(ns.zoneUiMap) do if id == m then curEng = name; break end end
	end
	local ilha = isSkyborne() or curEng == SKYBORNE_START
	local TP = self.TravelPlanner
	local curCont = TP and TP.PlayerContinent and TP:PlayerContinent()
	local best, bestScore
	for key, g in pairs(self.guides) do
		if key:sub(1, 9) == "Leveling/" and (not g.meta.faction or g.meta.faction == pf)
			and (ilha or not key:find(SKYBORNE_START, 1, true)) then
			local lo, hi = key:match("%((%d+)%s*%-%s*(%d+)%)")
			lo, hi = tonumber(lo), tonumber(hi)
			if lo and hi then
				-- o nível manda: guia já passado pesa mais que o que ainda vem (o que
				-- sobra nele é cinza — no 11, o Elwynn 3-10 abria numa quest nível 5)
				local score = (lvl < lo and (lo - lvl) * 2) or (lvl > hi and (lvl - hi) * 3) or 0
				local zone = key:match("^Leveling/[^/]+/(.-) %(")
				local cont = TP and TP.ZoneContinent and TP:ZoneContinent(zone)
				if curCont and cont and cont ~= curCont then
					score = score + 4                -- outro continente: é viagem
				end
				if curEng and zone == curEng then
					score = score - 1.5              -- zona atual: só desempata
				end
				-- desempate: a faixa em que o nível fica mais no meio (uma 34-60 de
				-- dez quests não pode ganhar de uma 48-52 no nível 50); no empate
				-- exato, a chave — a ordem do pairs muda a cada carga
				score = score + math.abs(lvl - (lo + hi) / 2) / 100
				if not bestScore or score < bestScore or (score == bestScore and key < best) then
					bestScore, best = score, key
				end
			end
		end
	end
	return best
end

-- O passo salvo é um número na lista de passos do guia. Guia regerado (passos em outra
-- ordem) ou save de antes da 2.4 (contava os passos injetados) faz o número apontar
-- para outro lugar: recua até logo depois do último passo concluído — seguir o número
-- velho pulava missões.
local function migrateStep(guide, i)
	local steps = ensureParsed(guide)
	local j = math.min(i, #steps)
	while j > 1 and not (ns:IsStepActive(steps[j - 1]) and ns:IsStepComplete(steps[j - 1])) do
		j = j - 1
	end
	return math.max(j, 1)
end

-- Restaura as abas/guia salvos (migrando o estado antigo single-guia); senão
-- faz onboarding de char novo.
ns:On("_READY", function()
	local char = ns.char
	char.openGuides = char.openGuides or {}
	char.steps = char.steps or {}
	-- Migração: char de versão anterior só tinha currentGuide/currentStep.
	if #char.openGuides == 0 and char.currentGuide and ns.guides[char.currentGuide] then
		char.openGuides[1] = char.currentGuide
		char.steps[char.currentGuide] = char.currentStep or 1
	end
	-- Guia regerado com outra faixa no título (Silverpine Forest 11-20 -> 11-18): aba e
	-- passo seguem para o da mesma zona cuja faixa mais se sobrepõe.
	local function renomeado(old)
		local pre, lo, hi = old:match("^(Leveling/.+) %((%d+)%-(%d+)%)$")
		if not pre or ns.guides[old] then return nil end
		local best, bestOv
		for k in pairs(ns.guides) do
			local p2, l2, h2 = k:match("^(Leveling/.+) %((%d+)%-(%d+)%)$")
			if p2 == pre then
				local ov = math.min(tonumber(hi), tonumber(h2)) - math.max(tonumber(lo), tonumber(l2))
				if ov >= 0 and (not bestOv or ov > bestOv) then best, bestOv = k, ov end
			end
		end
		return best
	end
	local troca = {}
	for k in pairs(char.steps) do troca[k] = renomeado(k) end
	for _, k in ipairs(char.openGuides) do troca[k] = troca[k] or renomeado(k) end
	for old, new in pairs(troca) do
		if char.steps[new] == nil then char.steps[new] = char.steps[old] end
		char.steps[old] = nil
		if char.currentGuide == old then char.currentGuide = new end
		if char.manualPick == old then char.manualPick = new end
		for i, k in ipairs(char.openGuides) do if k == old then char.openGuides[i] = new end end
	end
	-- Descarta abas cujo guia não existe mais (ex.: guia importado apagado) e as repetidas.
	local vistas = {}
	for i = #char.openGuides, 1, -1 do
		local k = char.openGuides[i]
		if not ns.guides[k] or vistas[k] then table.remove(char.openGuides, i) end
		vistas[k] = true
	end
	char.sigs = char.sigs or {}
	for k, i in pairs(char.steps) do
		local g = ns.guides[k]
		-- save de antes das assinaturas: só os guias de leveling mudaram (passos injetados
		-- e regerados); nos outros, o passo salvo vale e só se grava a assinatura
		if g and char.sigs[k] == nil and k:sub(1, 9) ~= "Leveling/" then
			char.sigs[k] = guideSig(g)
		elseif g and char.sigs[k] ~= guideSig(g) then
			local pre = k .. "\0"                  -- marcas manuais: chave com o número velho
			for gk in pairs(char.completedGoals) do
				if gk:sub(1, #pre) == pre then char.completedGoals[gk] = nil end
			end
			char.steps[k], char.sigs[k] = migrateStep(g, i), guideSig(g)
		end
	end
	if char.currentGuide and char.steps[char.currentGuide] then
		char.currentStep = char.steps[char.currentGuide]
	end
	-- Restaura a aba ativa salva; senão a primeira aba válida que sobrou.
	local key = char.currentGuide
	if not (key and ns.guides[key]) then key = char.openGuides[1] end
	if key and ns.guides[key] then
		-- aba de leveling que o nível já passou (logou no 11 com Tirisfal 5-10 ativo,
		-- e a primeira coisa sugerida era uma quest cinza de Deathknell): abre o guia
		-- recomendado; a antiga fica na aba. Aba que o jogador escolheu à mão fica.
		local hi = key ~= char.manualPick and key:sub(1, 9) == "Leveling/" and tonumber(key:match("%-%s*(%d+)%)$"))
		local best = hi and (UnitLevel("player") or 0) > hi and ns:BestGuideForPlayer()
		ns:LoadGuide(best and best ~= key and best or key, true)   -- mantém o step salvo
		return
	end
	-- AUTOPILOT: char novo usa a zona-inicial da raça; qualquer outro nível usa o
	-- best-fit por faixa+zona. "Instalou, tá guiado" — sem menu, em 100% dos casos.
	local start = (UnitLevel("player") <= 5 and findStartGuide()) or ns:BestGuideForPlayer()
	if start then
		ns:LoadGuide(start)
		return
	end
	if ns.Toast then
		ns.Toast:Show({ title = ns.L.CHOOSE_GUIDE,
			text = ns.L.MENU_HINT, color = ns.UI.COL.tip, hold = 6 })
	end
end)
