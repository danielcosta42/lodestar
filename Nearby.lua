--=============================================================================
-- Nearby — "Enquanto está aqui" (issue #92): o que dos próximos passos dá para fazer onde você está — objetivo cuja
-- quest já está no diário, entrega de quest pronta, quest para pegar mais à frente — quando está perto (até 3, com a
-- distância). Feito agora, o passo lá na frente já chega pronto ou mais curto. Clique guia até lá.
-- (issue #118) E o que o guia não cita: quest pronta no diário com o ponto de entrega perto (QuestEnders.lua), e os
-- livros da biblioteca na bolsa quando o jogador está na cidade do bibliotecário — com um aviso uma vez.
--
-- No topo, o núcleo puro (testado fora do jogo, tools/lodestar3-tests.lua). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local N = {}
ns.Nearby = N

N.AHEAD = 40          -- quantos passos à frente olhar
N.RADIUS = 220        -- jardas
N.MAX = 3

-- O que entra: dentro do raio, uma linha por quest (a mais perto), do mais perto para o mais longe, até `limit`.
-- cands = { { q, dist, kind, ... } }
function N.Pick(cands, radius, limit)
	local byQuest = {}
	for _, c in ipairs(cands or {}) do
		if c.dist and c.dist <= (c.radius or radius or N.RADIUS) then
			local cur = byQuest[c.q or c]
			if not cur or c.dist < cur.dist then byQuest[c.q or c] = c end
		end
	end
	local out = {}
	for _, c in pairs(byQuest) do out[#out + 1] = c end
	table.sort(out, function(a, b)
		if a.dist ~= b.dist then return a.dist < b.dist end
		local qa, qb = a.q or 0, b.q or 0                -- id de quest ou "books" (#118): tipos diferentes não se comparam
		if type(qa) ~= type(qb) then return type(qa) < type(qb) end
		return qa < qb
	end)
	for i = #out, (limit or N.MAX) + 1, -1 do out[i] = nil end
	return out
end

-- O NPC do passo (quem dá a quest): o primeiro "talk" com nome (o goal; o nome no idioma do cliente vem depois).
function N.StepNPC(goals)
	for _, g in ipairs(goals or {}) do
		if g.verb == "talk" and g.text and g.text ~= "" then return g end
	end
end

-- A quest já abre? req = { r = nível mínimo, a = { qualquer um destes feito }, g = { todos estes feitos } }
-- (QuestLevels.lua, issue #100); sem dado, abre.
function N.Opens(req, level, isDone)
	if not req then return true end
	if req.r and (level or 0) < req.r then return false end
	for _, id in ipairs(req.g or {}) do
		if type(id) == "table" then                  -- {a, b}: qualquer uma (a exclusiva conta como a pedida)
			local any = false
			for _, x in ipairs(id) do if isDone(x) then any = true; break end end
			if not any then return false end
		elseif not isDone(id) then
			return false
		end
	end
	if req.a and #req.a > 0 then
		for _, id in ipairs(req.a) do if isDone(id) then return true end end
		return false
	end
	return true
end

-- O guia passa por perto de `p` antes do passo `i`? points = { { step, x, y, c } } (mundo), raio em jardas. Se
-- passa, a sugestão não evita volta nenhuma: o guia faz quando chegar lá.
N.REVISIT = 60
function N.Revisits(points, i, p, radius)
	if not p then return false end
	local r2 = (radius or N.REVISIT) ^ 2
	for _, pt in ipairs(points or {}) do
		if pt.step < i and pt.c == p.c and (pt.x - p.x) ^ 2 + (pt.y - p.y) ^ 2 <= r2 then return true end
	end
	return false
end

-- Assinatura do que mostrar (para só redesenhar a janela quando muda; a distância vai no chip, que já se atualiza).
function N.Signature(list)
	local parts = {}
	for _, c in ipairs(list or {}) do parts[#parts + 1] = (c.kind or "") .. ":" .. tostring(c.q) end
	return table.concat(parts, ",")
end

-- As entregas fora do guia (#118): de cada quest pronta (`ready`, ids) que o guia não cita (`noGuia[q]`), o ponto
-- de entrega mais perto (`enders[q]` = { zona, x, y, ... } com a zona em `zones`; `dist(zona, x, y)` -> jd ou nil).
function N.OffGuideTurnins(ready, noGuia, enders, zones, dist)
	local out = {}
	for _, q in ipairs(ready or {}) do
		local e = not (noGuia and noGuia[q]) and enders and enders[q]
		local best
		for i = 1, e and #e - 2 or 0, 3 do
			local z = zones and zones[e[i]]
			local d = z and dist(z, e[i + 1], e[i + 2])
			if d and (not best or d < best.dist) then
				best = { q = q, dist = d, kind = "turnin", offGuide = true,
					goal = { goto_ = { zone = z, x = e[i + 1], y = e[i + 2] } } }
			end
		end
		if best then out[#out + 1] = best end
	end
	return out
end

-- As quests que o guia cita (qualquer passo): essas o próprio guia leva.
function N.GuideQuests(steps, questOf)
	local out = {}
	for _, st in ipairs(steps or {}) do
		for _, goal in ipairs(st.goals or {}) do
			local q = questOf(goal)
			if q then out[q] = true end
		end
	end
	return out
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local QL = C_QuestLog or {}
local current, sig = {}, ""

local function questOf(g) return ns.QuestState and ns.QuestState.QuestOf(g) end

-- Os candidatos dos passos à frente (o atual já está na janela). Quest para pegar só quando ela já abre: nenhum
-- "suba até o nível N" por fazer antes, o nível mínimo e os pré-requisitos do banco (N.Opens). E nada que o guia vá
-- fazer de passagem: se algum passo antes do da sugestão volta a este ponto, ele faz lá (N.Revisits).
function N:Candidates()
	local g = ns.currentGuide
	if not (g and ns.Waypoint) then return {} end
	local steps = g.steps
	local cur = ns.char.currentStep or 1
	local out, gated = {}, false
	local function open(goal) return ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) end
	local T = ns.Travel
	local function world(gt) return T and T.World and T.World(gt.zone, gt.x, gt.y) end
	-- os pontos por onde o guia passa nos próximos passos (para saber se ele volta aqui)
	local points = {}
	for i = cur + 1, math.min(#steps, cur + N.AHEAD) do
		if ns:IsStepActive(steps[i]) then
			for _, goal in ipairs(steps[i].goals) do
				local gt = goal.goto_
				if gt and gt.zone and gt.x and open(goal) then           -- o feito o guia pula: não volta lá
					local w = world(gt)
					if w then points[#points + 1] = { step = i, x = w.x, y = w.y, c = w.c } end
				end
			end
		end
	end
	local level = UnitLevel("player") or 1
	local req = ns.questReq or {}
	for i = cur, math.min(#steps, cur + N.AHEAD) do
		local st = steps[i]
		local active = ns:IsStepActive(st)
		if i > cur and active then
			local npc = N.StepNPC(st.goals)
			for _, goal in ipairs(st.goals) do
				local q = questOf(goal)
				if q and goal.goto_ and goal.goto_.zone and open(goal) then
					local kind
					if goal.verb == "turnin" then
						if ns.IsQuestInLog(q) and QL.IsComplete and QL.IsComplete(q) then kind = "turnin" end
					elseif goal.verb == "accept" then
						if not gated and not ns.IsQuestInLog(q) and not ns.IsQuestDone(q)
							and N.Opens(req[q], level, ns.IsQuestDone) then kind = "accept" end
					elseif goal.q and ns.IsQuestInLog(q) then
						kind = "objective"
					end
					if kind and N.Revisits(points, i, world(goal.goto_)) then kind = nil end
					if kind then
						local d = ns.Waypoint:DistanceTo(goal)
						if d then out[#out + 1] = { q = q, dist = d, kind = kind, goal = goal, step = i, npc = npc } end
					end
				end
			end
		end
		if active then
			for _, goal in ipairs(st.goals) do
				if goal.verb == "ding" and open(goal) then gated = true end
			end
		end
	end
	for _, c in ipairs(N:Extras()) do out[#out + 1] = c end
	return out
end

-- quests prontas no diário (ids)
local function prontas()
	local out = {}
	if not (QL.GetNumQuestLogEntries and QL.GetInfo and QL.IsComplete) then return out end
	for i = 1, QL.GetNumQuestLogEntries() or 0 do
		local info = QL.GetInfo(i)
		if info and info.questID and not info.isHeader and QL.IsComplete(info.questID) then out[#out + 1] = info.questID end
	end
	return out
end

-- as quests do guia aberto, guardadas por guia (o guia não muda enquanto aberto)
local guiaCache, guiaDe = nil, nil
local function doGuia()
	local g = ns.currentGuide
	if guiaDe ~= g then guiaDe, guiaCache = g, N.GuideQuests(g and g.steps, questOf) end
	return guiaCache
end

-- O que o guia não cita (#118): entrega pronta perto e os livros da biblioteca na cidade do bibliotecário.
function N:Extras()
	local out = {}
	local WP = ns.Waypoint
	local function dist(z, x, y) return WP:DistanceTo({ goto_ = { zone = z, x = x, y = y } }) end
	for _, c in ipairs(N.OffGuideTurnins(prontas(), doGuia(), ns.questEnd, ns.questEndZones, dist)) do
		out[#out + 1] = c
	end
	local livros, quem
	if ns.Collect and ns.Collect.BooksToTurnIn then livros, quem = ns.Collect:BooksToTurnIn() end   -- (as duas voltas)
	if livros and #livros > 0 and quem and quem.zone then
		local aqui = ns.TravelPlanner and ns.TravelPlanner.InZone and ns.TravelPlanner:InZone(quem.zone)
		local d = aqui and dist(quem.zone, quem.x, quem.y)
		if d then
			out[#out + 1] = { q = "books", dist = d, radius = math.huge, kind = "books", n = #livros, npc = quem.name,
				goal = { goto_ = { zone = quem.zone, x = quem.x, y = quem.y } } }
		end
	end
	return out
end

function N:List() return current end

local function scan()
	if not (ns.currentGuide and ns:UIShown() and ns.db.nearby ~= false) then
		if #current > 0 then current, sig = {}, ""; if ns.Viewer then ns.Viewer:Refresh() end end
		return
	end
	local list = N.Pick(N:Candidates(), N.RADIUS, N.MAX)
	current = list
	N.Announce(list)
	local s = N.Signature(list)
	if s ~= sig then
		sig = s
		if ns.Viewer then ns.Viewer:Refresh() end
	end
end
N.Scan = scan

-- O aviso (#118): a entrega fora do guia, uma vez por quest na sessão; os livros, uma vez por visita à cidade (sai
-- da lista quando o jogador sai de lá, e avisa de novo na volta).
local avisou = {}
function N.Announce(list)
	local temLivros = false
	for _, c in ipairs(list or {}) do
		local key = c.kind == "books" and "books" or c.offGuide and ("q" .. tostring(c.q))
		if c.kind == "books" then temLivros = true end
		if key and not avisou[key] then
			avisou[key] = true
			if ns.Toast then
				local L = ns.L
				ns.Toast:Show({ title = c.kind == "books" and L.NB_TOAST_BOOKS or L.NB_TOAST_TURNIN, text = N.Label(c),
					color = ns.UI.COL.done, hold = 5 })
			end
		end
	end
	if not temLivros then avisou.books = nil end
end

function N:GoTo(c)
	local gt = c.goal.goto_
	ns.Waypoint:SetCustom(gt.zone, gt.x, gt.y, N.Label(c))
end

function N.Label(c)
	local L = ns.L
	if c.kind == "accept" then
		-- o nome no idioma do cliente quando o jogo o sabe; fora do diário pode não saber: vale o do guia
		local t = QL.GetTitleForQuestID and QL.GetTitleForQuestID(c.q)
		local title = (t and t ~= "" and t) or c.goal.text or tostring(c.q)
		local npc = c.npc and ((ns.db.npcNames or {})[c.npc.id] or c.npc.text)
		return npc and L.NB_ACCEPT:format(title, npc) or L.NB_ACCEPT1:format(title)
	end
	if c.kind == "books" then return L.NB_BOOKS:format(c.n, c.npc or "?") end
	local title = ns.QuestState and ns.QuestState.Title(c.q) or tostring(c.q)
	if c.kind == "turnin" then return L.NB_TURNIN:format(title) end
	local verb = L["VERB_" .. (c.goal.verb == "goto_" and "goto" or c.goal.verb)] or c.goal.verb
	return ("%s %s"):format(verb, c.goal.text or title)
end

ns:Every(2, function() local ok, err = pcall(scan); if not ok then ns:Debug("Nearby", err) end end)
