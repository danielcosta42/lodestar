--=============================================================================
-- QuestState — o que o diário do jogo diz de cada quest do guia (specs/revamp-polestar, issue #89): a contagem do
-- objetivo, o tempo que resta, se falhou; pular uma quest (e as que dependem dela) com desfazer; a quest abandonada
-- por engano. No topo, o núcleo puro (testado fora do jogo, tools/revamp-tests.lua). Abaixo, o que roda no jogo.
--
--   Q.Progress(objetivos, obj)        -> "3/8" | "3/8 · 1/5" | nil
--   Q.Dependents(listas, q)           -> { q, dependentes... } (ordem estável)
--   Q.ReturnStep(passos, atual, q)    -> índice do passo que aceita q, do atual para trás
--   Q.UsedAhead(passos, atual, q)     -> algum passo daqui em diante ainda precisa de q no diário?
--=============================================================================
local ADDON, ns = ...
local Q = {}
ns.QuestState = Q

Q.UNDO_S = 20                 -- quanto tempo o Desfazer fica no topo do passo
Q.ALERTS = { 60, 300 }        -- avisos de quest com tempo (s), do menor para o maior

-- A quest de um objetivo: accept/turnin trazem o id no próprio alvo; os demais, no `|q`.
local function questOf(goal)
	if not goal then return nil end
	if goal.verb == "accept" or goal.verb == "turnin" then return goal.id end
	return goal.q and goal.q.id
end
Q.QuestOf = questOf

-- Um objetivo do diário em texto: "3/8". Sim/não (0/1) não vira número: o glifo já diz.
local function oneCount(o)
	local need = o and tonumber(o.numRequired)
	if not need or need <= 1 then return nil end
	local have = math.max(0, math.min(tonumber(o.numFulfilled) or 0, need))
	return ("%d/%d"):format(have, need)
end

function Q.Progress(objectives, obj)
	if type(objectives) ~= "table" then return nil end
	if obj then return oneCount(objectives[obj]) end
	local parts = {}
	for _, o in ipairs(objectives) do
		local p = oneCount(o)
		if p then parts[#parts + 1] = p end
	end
	return #parts > 0 and table.concat(parts, " · ") or nil
end

-- Conta da bolsa de um `collect` sem quest: "2/5" (uma unidade não vira número).
function Q.ItemProgress(have, need)
	need = tonumber(need)
	if not need or need <= 1 then return nil end
	return ("%d/%d"):format(math.max(0, math.min(tonumber(have) or 0, need)), need)
end

-- A contagem crua de um objetivo: (feito, pedido). Com índice, aquele objetivo; sem, a soma dos que têm conta. Um
-- `collect` sem quest conta a bolsa.
function Q.Counts(objectives, obj)
	if type(objectives) ~= "table" then return nil end
	local list = obj and { objectives[obj] } or objectives
	local have, need = 0, 0
	for _, o in ipairs(list) do
		local n = o and tonumber(o.numRequired)
		if n and n > 0 then
			need = need + n
			have = have + math.max(0, math.min(tonumber(o.numFulfilled) or 0, n))
		end
	end
	if need == 0 then return nil end
	return have, need
end

-- 299 -> "4:59"; 3723 -> "1:02:03".
function Q.FmtLeft(s)
	s = math.max(0, math.floor(tonumber(s) or 0))
	local h, m, sec = math.floor(s / 3600), math.floor(s % 3600 / 60), s % 60
	if h > 0 then return ("%d:%02d:%02d"):format(h, m, sec) end
	return ("%d:%02d"):format(m, sec)
end

-- Aviso de quest com tempo: devolve o limite (s) que acabou de ser cruzado, uma vez por quest e limite. Quem já entra
-- abaixo do menor só ouve o menor.
function Q.TimerAlert(state, q, left)
	if not (state and q and left) then return nil end
	for _, th in ipairs(Q.ALERTS) do
		if left <= th then
			if (state[q] or math.huge) > th then
				state[q] = th
				return th
			end
			return nil
		end
	end
	return nil
end

-- Os ids de `completed(...)` de uma condição que não vêm depois de um `not`.
local function completedSets(cond)
	local out = {}
	if type(cond) ~= "string" or cond == "" then return out end
	local prev
	for w in cond:gmatch("%S+") do
		local args = w:match("^completed%(([^)]*)%)$")
		if args and prev ~= "not" then
			local ids = {}
			for id in args:gmatch("%d+") do ids[#ids + 1] = tonumber(id) end
			if #ids > 0 then out[#out + 1] = ids end
		end
		prev = w
	end
	return out
end

-- Toda condição satisfeita só por quests do conjunto? (completed(a,b) é "qualquer uma": pular só `a` não derruba.)
local function dependsOn(cond, set)
	for _, ids in ipairs(completedSets(cond)) do
		local all = true
		for _, id in ipairs(ids) do if not set[id] then all = false; break end end
		if all then return true end
	end
	return false
end

-- A quest e as que dependem dela: passos (ou objetivos) cuja condição pede `completed(q)`, em cadeia. `lists` é uma
-- lista de arrays de passos (os guias abertos).
function Q.Dependents(lists, q)
	local set, order = { [q] = true }, { q }
	local function add(id)
		if id and not set[id] then set[id] = true; order[#order + 1] = id; return true end
		return false
	end
	local changed = true
	while changed do
		changed = false
		for _, steps in ipairs(lists or {}) do
			for _, step in ipairs(steps) do
				local stepDep = dependsOn(step.only, set)
				for _, goal in ipairs(step.goals or {}) do
					if stepDep or dependsOn(goal.only, set) then
						if add(questOf(goal)) then changed = true end
					end
				end
			end
		end
	end
	return order
end

-- Pular: marca os ids e guarda o último pulo (para o Desfazer), com o passo onde aconteceu.
function Q.Skip(char, ids, now, where)
	char.skipped = char.skipped or {}
	for _, id in ipairs(ids) do char.skipped[id] = true end
	char.lastSkip = { ids = ids, t = now, guide = where and where.guide, step = where and where.step }
	return char.lastSkip
end

-- (puro; o Q:Undo do jogo, abaixo, é quem a janela chama)
function Q.UndoLast(char)
	local last = char.lastSkip
	if not last then return nil end
	for _, id in ipairs(last.ids or {}) do
		if char.skipped then char.skipped[id] = nil end
	end
	char.lastSkip = nil
	return last
end

-- Cinza (issue #93), a regra do jogo (GetQuestDifficultyColor): a quest é cinza quando o jogador passou do nível
-- dela mais que a faixa de cinza do cliente (UnitQuestTrivialLevelRange).
function Q.IsGrey(qlvl, plvl, range)
	return (qlvl and plvl and range and plvl - qlvl > range) and true or false
end

-- As quests cinza que saem do guia. grey(q): q é cinza e não está no diário nem feita. Fica a que libera (pelo
-- `only completed`, Q.Dependents) alguma quest que não é cinza: ela abre conteúdo que ainda vale. lists = { steps }.
function Q.GreySkip(lists, grey)
	local out, seen = {}, {}
	for _, steps in ipairs(lists or {}) do
		for _, step in ipairs(steps) do
			for _, goal in ipairs(step.goals or {}) do
				local q = questOf(goal)
				if q and not seen[q] then
					seen[q] = true
					if grey(q) then
						local only = true
						for _, d in ipairs(Q.Dependents(lists, q)) do
							if d ~= q and not grey(d) then only = false; break end
						end
						if only then out[q] = true end
					end
				end
			end
		end
	end
	return out
end

-- Quanto do guia ainda serve: das quests que ele manda pegar, quantas são úteis (useful(q)), e o total.
function Q.Useful(steps, useful)
	local n, total, seen = 0, 0, {}
	for _, step in ipairs(steps or {}) do
		for _, goal in ipairs(step.goals or {}) do
			if goal.verb == "accept" and goal.id and not seen[goal.id] then
				seen[goal.id] = true
				total = total + 1
				if useful(goal.id) then n = n + 1 end
			end
		end
	end
	return n, total
end

function Q.IsSkipped(char, q)
	return q and char and char.skipped and char.skipped[q] or false
end

-- O passo que aceita q, do atual para trás (o "Voltar por ela"). `active(step, goal)` filtra o que não vale para o
-- personagem; sem ele, tudo vale.
function Q.ReturnStep(steps, cur, q, active)
	for i = math.min(cur or 1, #steps), 1, -1 do
		for _, goal in ipairs(steps[i].goals or {}) do
			if goal.verb == "accept" and goal.id == q and (not active or active(steps[i], goal)) then return i end
		end
	end
	return nil
end

-- Daqui em diante, o primeiro objetivo que cita q: se é um aceite, o guia já passa por lá e pega de novo (não precisa
-- avisar); se é objetivo ou entrega, ele precisa de q no diário.
function Q.UsedAhead(steps, cur, q, active)
	for i = math.max(1, cur or 1), #steps do
		for _, goal in ipairs(steps[i].goals or {}) do
			if questOf(goal) == q and (not active or active(steps[i], goal)) then
				return goal.verb ~= "accept"
			end
		end
	end
	return false
end

-- O que a rota ainda usa: `lists` = { { steps = ..., from = índice }, ... }. Devolve as quests citadas daqui em diante
-- (qualquer verbo) e as que algum passo entrega.
function Q.RouteQuests(lists, active)
	local used, turnins = {}, {}
	for _, l in ipairs(lists or {}) do
		local steps = l.steps or {}
		for i = math.max(1, l.from or 1), #steps do
			for _, goal in ipairs(steps[i].goals or {}) do
				local q = questOf(goal)
				if q and (not active or active(steps[i], goal)) then
					used[q] = true
					if goal.verb == "turnin" then turnins[q] = true end
				end
			end
		end
	end
	return used, turnins
end

-- O diário contra a rota: `entries` = { { id, title, complete }, ... }. Sem uso (por fazer e que a rota não cita) e
-- concluídas que nenhum passo à frente entrega. Listas separadas, na ordem do diário.
function Q.Tidy(entries, used, turnins)
	local unused, finished = {}, {}
	for _, e in ipairs(entries or {}) do
		if e.complete then
			if not turnins[e.id] then finished[#finished + 1] = e end
		elseif not used[e.id] then
			unused[#unused + 1] = e
		end
	end
	return unused, finished
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local QL = C_QuestLog or {}
local L = ns.L

function Q.Objectives(qid)
	return QL.GetQuestObjectives and QL.GetQuestObjectives(qid) or nil
end

function Q.Title(qid)
	local t = QL.GetTitleForQuestID and QL.GetTitleForQuestID(qid)
	if t and t ~= "" then return t end
	return L.QUEST_FALLBACK:format(tostring(qid))
end

-- O que resta de uma quest com tempo, em segundos; nil sem tempo.
function Q.TimeLeft(qid)
	if not (qid and ns.IsQuestInLog(qid)) then return nil end
	if QL.GetTimeAllowed then
		local ok, total, elapsed = pcall(QL.GetTimeAllowed, qid)
		if ok and tonumber(total) and tonumber(elapsed) and total > 0 then return math.max(0, total - elapsed) end
	end
	-- o clássico: GetQuestTimers() dá o tempo de cada quest com tempo, na ordem do índice do relógio
	if GetQuestTimers and GetQuestIndexForTimer and QL.GetInfo then
		local timers = { GetQuestTimers() }
		for i, left in ipairs(timers) do
			local info = QL.GetInfo(GetQuestIndexForTimer(i) or 0)
			if info and info.questID == qid then return tonumber(left) end
		end
	end
	return nil
end

function Q.IsFailed(qid)
	return qid and QL.IsFailed and ns.IsQuestInLog(qid) and QL.IsFailed(qid) or false
end

function Q.GoalCounts(goal)
	if goal.q and goal.q.id and ns.IsQuestInLog(goal.q.id) then
		return Q.Counts(Q.Objectives(goal.q.id), goal.q.obj)
	elseif goal.verb == "collect" and goal.id and goal.count then
		return math.min(ns.ItemCount(goal.id) or 0, goal.count), goal.count
	end
end

local function hex(key, fallback)
	return ns.UI and ns.UI.Hex and ns.UI.Hex(key) or fallback
end

-- O texto que vai depois do objetivo: contagem, tempo, falha. `done` já resolvido por quem chama; `noCount`: a
-- janela mostra a contagem à direita, então aqui só o tempo e a falha.
function Q.GoalSuffix(goal, done, noCount)
	local q = questOf(goal)
	if q and Q.IsFailed(q) then return ("  |cff%s%s|r"):format(hex("danger", "ff6b6b"), L.Q_FAILED), true end
	if done then return "" end
	local out = ""
	if not noCount then
		local prog
		if goal.q and goal.q.id and ns.IsQuestInLog(goal.q.id) then
			prog = Q.Progress(Q.Objectives(goal.q.id), goal.q.obj)
		elseif goal.verb == "collect" and goal.id and goal.count then
			prog = Q.ItemProgress(ns.ItemCount(goal.id), goal.count)
		end
		if prog then out = out .. ("  |cff%s%s|r"):format(hex("muted", "d8dde6"), prog) end
	end
	local left = goal.verb ~= "accept" and q and Q.TimeLeft(q)
	if left then out = out .. ("  |cff%s%s|r"):format(hex("amber", "f0c26a"), L.Q_TIME_LEFT:format(Q.FmtLeft(left))) end
	return out, false, left ~= nil and left ~= false
end

-- Os passos dos guias abertos e dos seguintes da cadeia de cada um (para achar quem depende de uma quest em todo
-- guia que a rota ainda vai abrir).
local function openStepLists()
	local lists, seen = {}, {}
	local function add(g)
		local n = 0
		while g and not seen[g.key] and n <= 4 do
			seen[g.key] = true
			lists[#lists + 1] = ns.ensureParsed(g)
			local nxt = ns:NextGuideKey(g)
			g, n = nxt and ns.guides[nxt], n + 1
		end
	end
	add(ns.currentGuide)
	for _, k in ipairs(ns.char.openGuides or {}) do add(ns.guides[k]) end
	return lists
end

local function isActive(step, goal)
	return ns:IsStepActive(step) and ns:EvalCondition(goal.only)
end
Q.IsActive = isActive

local function refresh()
	if ns.Viewer then ns.Viewer:Refresh() end
	if ns.Waypoint then ns.Waypoint:Update() end
end

--------------------------------------------------------------------------------
-- Quest cinza (issue #93): sai do guia enquanto não está no diário (Guide.lua, skippedGoal lê ns.greySkip)
--------------------------------------------------------------------------------
ns.greySkip = {}

function Q.GreyRange()
	local f = UnitQuestTrivialLevelRange
	if not f then return nil end
	local ok, r = pcall(f, "player")
	if not ok or ns.IsSecret(r) then return nil end
	return tonumber(r)
end

-- o nível da quest: o do jogo quando ela está carregada; senão o dos dados (QuestLevels.lua, pfQuest)
function Q.Level(q)
	if QL.GetQuestDifficultyLevel then
		local ok, l = pcall(QL.GetQuestDifficultyLevel, q)
		if ok and not ns.IsSecret(l) and tonumber(l) and l > 0 then return l end
	end
	return ns.questLevel and ns.questLevel[q]
end

function Q.IsGreyQuest(q, plvl)
	local range, lvl = Q.GreyRange(), Q.Level(q)
	if range and lvl then return Q.IsGrey(lvl, plvl or UnitLevel("player"), range) end
	if QL.IsQuestTrivial then
		local ok, t = pcall(QL.IsQuestTrivial, q)
		return ok and t == true
	end
	return false
end

local requested = {}
-- pede ao jogo os dados das quests à frente (o nível dele vale mais que o dos dados)
local function requestAhead()
	local g = ns.currentGuide
	if not (g and QL.RequestLoadQuestByID) then return end
	local cur = ns.char.currentStep or 1
	for i = cur, math.min(#g.steps, cur + 80) do
		for _, goal in ipairs(g.steps[i].goals) do
			local q = goal.verb == "accept" and goal.id
			if q and not requested[q] then requested[q] = true; pcall(QL.RequestLoadQuestByID, q) end
		end
	end
end

function Q:RefreshGrey(plvl)
	local set = {}
	if ns.db.skipGrey ~= false and ns.currentGuide then
		set = Q.GreySkip(openStepLists(), function(q)
			return not ns.IsQuestInLog(q) and not ns.IsQuestDone(q) and Q.IsGreyQuest(q, plvl)
		end)
	end
	local changed = false
	for q in pairs(set) do if not ns.greySkip[q] then changed = true end end
	for q in pairs(ns.greySkip) do if not set[q] then changed = true end end
	ns.greySkip = set
	if changed then ns:CheckProgress(); refresh() end
end

local greyPending
local function greyLater(plvl)
	if greyPending then return end
	greyPending = true
	C_Timer.After(1, function() greyPending = nil; Q:RefreshGrey(plvl) end)
end
ns:On("_GUIDE_LOADED", function() requestAhead(); greyLater() end)
ns:On("PLAYER_LEVEL_UP", function(_, lvl) greyLater(tonumber(lvl)) end)
ns:On("QUEST_DATA_LOAD_RESULT", function() if ns.currentGuide then greyLater() end end)

function Q:SkipQuest(qid)
	if not qid then return end
	local ids = Q.Dependents(openStepLists(), qid)
	local g = ns.currentGuide
	Q.Skip(ns.char, ids, time(), g and { guide = g.key, step = ns.char.currentStep })
	Q._skipAt = GetTime()                         -- o Desfazer no topo vale nesta sessão, por UNDO_S
	if ns.char.abandoned then for _, id in ipairs(ids) do ns.char.abandoned[id] = nil end end
	if #ids > 1 then ns:Printf(L.Q_SKIPPED_N, Q.Title(qid), #ids - 1) else ns:Printf(L.Q_SKIPPED, Q.Title(qid)) end
	C_Timer.After(Q.UNDO_S + 0.2, refresh)        -- o Desfazer sai do topo sozinho
	ns:CheckProgress()
end

function Q:Undo()
	local last = Q.UndoLast(ns.char)
	if not last then return end
	-- o pulo fez o guia andar: volta ao passo onde ele aconteceu
	local g = ns.currentGuide
	if g and last.guide == g.key and last.step and last.step < ns.char.currentStep then ns:GoToStep(last.step) end
	ns:Print(L.Q_UNDONE)
	ns:CheckProgress()
	refresh()
end

-- O que vai no topo do passo: a quest abandonada que o guia ainda usa, ou o último pulo (por UNDO_S).
function Q:Notice()
	local g = ns.currentGuide
	local ab = ns.char.abandoned
	if g and ab then
		for qid in pairs(ab) do
			if ns.IsQuestInLog(qid) or ns.IsQuestDone(qid) or Q.IsSkipped(ns.char, qid)
				or not Q.UsedAhead(g.steps, ns.char.currentStep, qid, isActive) then
				ab[qid] = nil
			else
				return { kind = "abandoned", q = qid, title = Q.Title(qid),
					back = Q.ReturnStep(g.steps, ns.char.currentStep, qid, isActive) }
			end
		end
	end
	local last = ns.char.lastSkip
	if last and last.ids and last.ids[1] and Q._skipAt and GetTime() - Q._skipAt <= Q.UNDO_S then
		return { kind = "skipped", q = last.ids[1], title = Q.Title(last.ids[1]), extra = #last.ids - 1 }
	end
end

-- Mostrar no diário: fora de combate (o diário é protegido durante a luta).
function Q.ShowInLog(qid)
	if InCombatLockdown and InCombatLockdown() then return ns:Print(L.Q_IN_COMBAT) end
	if QuestMapFrame_OpenToQuestDetails then
		if pcall(QuestMapFrame_OpenToQuestDetails, qid) then return end
	end
	if QL.SetSelectedQuest then pcall(QL.SetSelectedQuest, qid) end
	if ToggleQuestLog then pcall(ToggleQuestLog) end
end

-- Abandonar pela confirmação do próprio jogo (o mesmo diálogo do diário).
function Q.Abandon(qid)
	if not (qid and ns.IsQuestInLog(qid)) then return end
	if not (QL.SetSelectedQuest and QL.SetAbandonQuest) then return end
	QL.SetSelectedQuest(qid)
	QL.SetAbandonQuest()
	local name = Q.Title(qid)
	if StaticPopupDialogs and StaticPopupDialogs.ABANDON_QUEST then
		StaticPopup_Show("ABANDON_QUEST", name)
	elseif QL.AbandonQuest then
		StaticPopup_Show("LODESTAR_ABANDON", name)
	end
end
StaticPopupDialogs["LODESTAR_ABANDON"] = {
	text = L.Q_ABANDON_CONFIRM, button1 = YES, button2 = NO,
	OnAccept = function() if QL.AbandonQuest then QL.AbandonQuest() end end,
	timeout = 0, whileDead = true, hideOnEscape = true, preferredIndex = 3,
}

--------------------------------------------------------------------------------
-- Abandonada por engano: QUEST_REMOVED também vem na entrega, então só conta o que não foi entregue
--------------------------------------------------------------------------------
local turnedIn = {}
ns:On("QUEST_TURNED_IN", function(_, qid) if qid then turnedIn[qid] = true end end)

ns:On("QUEST_REMOVED", function(_, qid)
	if not qid then return end
	C_Timer.After(1, function()
		if turnedIn[qid] or ns.IsQuestDone(qid) or ns.IsQuestInLog(qid) then return end
		local g = ns.currentGuide
		if not (g and Q.UsedAhead(g.steps, ns.char.currentStep, qid, isActive)) then return end
		if Q.IsSkipped(ns.char, qid) then return end
		ns.char.abandoned = ns.char.abandoned or {}
		ns.char.abandoned[qid] = true
		refresh()
	end)
end)

ns:On("QUEST_ACCEPTED", function(_, a, b)
	local qid = b or a
	if not qid then return end
	if ns.char.abandoned then ns.char.abandoned[qid] = nil end
	-- o guloso não pega quest pulada: aceitar uma é escolha do jogador, que desfaz o pulo dela
	if ns.char.skipped and ns.char.skipped[qid] then ns.char.skipped[qid] = nil end
end)

--------------------------------------------------------------------------------
-- Avisos de quest com tempo (5 min, 1 min)
--------------------------------------------------------------------------------
local timed, alerted = {}, {}

local function scanTimed()
	wipe(timed)
	if not (QL.GetNumQuestLogEntries and QL.GetInfo) then return end
	for i = 1, QL.GetNumQuestLogEntries() or 0 do
		local info = QL.GetInfo(i)
		if info and info.questID and not info.isHeader and Q.TimeLeft(info.questID) then timed[info.questID] = true end
	end
end
local pendingScan
ns:On("QUEST_LOG_UPDATE", function()
	if pendingScan then return end
	pendingScan = true
	C_Timer.After(0.5, function() pendingScan = nil; pcall(scanTimed) end)
end)

ns:Every(1, function()
	if not next(timed) then return end
	for qid in pairs(timed) do
		local left = Q.TimeLeft(qid)
		if not left then
			timed[qid] = nil
		elseif ns.db.timerAlerts ~= false then
			local th = Q.TimerAlert(alerted, qid, left)
			if th then
				if ns.Toast then
					ns.Toast:Show({ title = L.Q_TIMER_T, text = L.Q_TIMER_S:format(Q.Title(qid), Q.FmtLeft(left)),
						color = ns.UI.COL.amber, hold = 6, glyph = "relogio" })
				end
				if PlaySound then pcall(PlaySound, (SOUNDKIT and SOUNDKIT.RAID_WARNING) or 8959) end
			end
		end
	end
	if ns.Viewer and ns.Viewer.UpdateTimers then ns.Viewer:UpdateTimers() end
end)
