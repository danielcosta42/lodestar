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
local function QuestObjectiveDone(id, obj)
	local objectives
	if QuestLog.GetQuestObjectives then objectives = QuestLog.GetQuestObjectives(id) end
	if not objectives then return false end
	local o = objectives[obj or 1]
	return o and o.finished or false
end
local ItemCount = (C_Item and C_Item.GetItemCount) or GetItemCount or function() return 0 end

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
		if fn == "completed" then result = IsQuestComplete(tonumber(arg))
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
	elseif U == "ALLIANCE" or U == "HORDE" then
		result = (UnitFactionGroup("player") or ""):upper() == U
	elseif CLASSES[U] then
		result = playerClass() == U
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

-- Parseia sob demanda e anota índices nos goals.
local function ensureParsed(guide)
	if guide.steps then return guide.steps end
	guide.steps = ns:ParseGuide(guide.body)
	for si, step in ipairs(guide.steps) do
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
function ns:LoadGuide(key, keepProgress, silent)
	local guide = self.guides[key]
	if not guide then return self:Printf(ns.L.GUIDE_NOTFOUND, key) end
	ensureParsed(guide)
	self:SyncStep()                                   -- guarda o passo da aba que sai
	local wasOpen = self:IsGuideOpen(key)
	if not wasOpen then table.insert(self.char.openGuides, key) end
	self.currentGuide = guide
	self.char.currentGuide = key
	if keepProgress or wasOpen then
		self.char.currentStep = self.char.steps[key] or 1   -- retoma (troca de aba/login)
	else
		self.char.currentStep = 1                           -- guia novo: começa do zero
		if self.db and self.db.viewer then self.db.viewer.hidden = false end   -- mostra a UI
	end
	self.char.steps[key] = self.char.currentStep
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
function ns:IsGoalActive(goal)
	return self:EvalCondition(goal.only)
end

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
-- e existe pelo menos um goal rastreável (senão avança manual).
function ns:IsStepComplete(step)
	local anyTrackable = false
	for _, goal in ipairs(step.goals) do
		if self:IsGoalActive(goal) and self:IsGoalTrackable(goal) then
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
	if idx < 1 then idx = 1 end
	if idx > #guide.steps then
		-- fim do guia: encadeia para o próximo, se houver
		local nxt = guide.meta.next
		if nxt and self.guides[nxt] then
			self:Print("guia concluído, carregando o próximo...")
			return self:ChainGuide(guide.key, nxt)
		end
		idx = #guide.steps
		self:Print("|cff88ff88" .. ns.L.GUIDE_DONE .. "|r")
	end
	self.char.currentStep = idx
	self.char.steps[guide.key] = idx        -- persiste o passo por-guia (p/ trocar/logar)
	if self.Viewer then self.Viewer:Refresh() end
	if self.Waypoint then self.Waypoint:Update() end
end

-- Marca/desmarca conclusão manual de um goal.
function ns:MarkGoal(goal, done)
	if done == nil then done = not self.char.completedGoals[goal._gkey] end
	self.char.completedGoals[goal._gkey] = done or nil
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

local function findStartGuide()
	local race = (select(2, UnitRace("player")) or ""):upper()
	local zone = RACE_START[race]
	if not zone then return nil end
	local pf = UnitFactionGroup("player")
	for key, g in pairs(ns.guides) do
		if key:sub(1, 9) == "Leveling/" and key:find(zone, 1, true)
			and (not g.meta.faction or g.meta.faction == pf) then
			return key
		end
	end
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
	local best, bestScore
	for key, g in pairs(self.guides) do
		if key:sub(1, 9) == "Leveling/" and (not g.meta.faction or g.meta.faction == pf) then
			local lo, hi = key:match("%((%d+)%s*%-%s*(%d+)%)")
			lo, hi = tonumber(lo), tonumber(hi)
			if lo and hi then
				local score = (lvl >= lo and lvl <= hi) and 0
					or math.min(math.abs(lvl - lo), math.abs(lvl - hi))
				score = score * 2
				if curEng and (key:match("[^/]+$") or ""):find(curEng, 1, true) then
					score = score - 5                -- zona atual bate: forte preferência
				end
				score = score + lo / 1000            -- desempate estável (banda mais cedo)
				if not bestScore or score < bestScore then bestScore, best = score, key end
			end
		end
	end
	return best
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
	-- Descarta abas cujo guia não existe mais (ex.: guia importado apagado).
	for i = #char.openGuides, 1, -1 do
		if not ns.guides[char.openGuides[i]] then table.remove(char.openGuides, i) end
	end
	-- Restaura a aba ativa salva; senão a primeira aba válida que sobrou.
	local key = char.currentGuide
	if not (key and ns.guides[key]) then key = char.openGuides[1] end
	if key and ns.guides[key] then
		ns:LoadGuide(key, true)   -- mantém o step salvo
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
