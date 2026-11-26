--=============================================================================
-- Nearby — "Enquanto está aqui" (issue #92): o que dos próximos passos dá para fazer onde você está — objetivo cuja
-- quest já está no diário, entrega de quest pronta, quest para pegar mais à frente — quando está perto (até 3, com a
-- distância). Feito agora, o passo lá na frente já chega pronto ou mais curto. Clique guia até lá.
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
		if c.dist and c.dist <= (radius or N.RADIUS) then
			local cur = byQuest[c.q or c]
			if not cur or c.dist < cur.dist then byQuest[c.q or c] = c end
		end
	end
	local out = {}
	for _, c in pairs(byQuest) do out[#out + 1] = c end
	table.sort(out, function(a, b)
		if a.dist ~= b.dist then return a.dist < b.dist end
		return (a.q or 0) < (b.q or 0)
	end)
	for i = #out, (limit or N.MAX) + 1, -1 do out[i] = nil end
	return out
end

-- Assinatura do que mostrar (para só redesenhar a janela quando muda; a distância vai no chip, que já se atualiza).
function N.Signature(list)
	local parts = {}
	for _, c in ipairs(list or {}) do parts[#parts + 1] = (c.kind or "") .. ":" .. tostring(c.q) end
	return table.concat(parts, ",")
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local QL = C_QuestLog or {}
local current, sig = {}, ""

local function questOf(g) return ns.QuestState and ns.QuestState.QuestOf(g) end

-- Os candidatos dos passos à frente (o atual já está na janela).
function N:Candidates()
	local g = ns.currentGuide
	if not (g and ns.Waypoint) then return {} end
	local steps = g.steps
	local cur = ns.char.currentStep or 1
	local out = {}
	for i = cur + 1, math.min(#steps, cur + N.AHEAD) do
		local st = steps[i]
		if ns:IsStepActive(st) then
			for _, goal in ipairs(st.goals) do
				local q = questOf(goal)
				if q and goal.goto_ and goal.goto_.zone and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
					local kind
					if goal.verb == "turnin" then
						if ns.IsQuestInLog(q) and QL.IsComplete and QL.IsComplete(q) then kind = "turnin" end
					elseif goal.verb == "accept" then
						if not ns.IsQuestInLog(q) and not ns.IsQuestDone(q) then kind = "accept" end
					elseif goal.q and ns.IsQuestInLog(q) then
						kind = "objective"
					end
					if kind then
						local d = ns.Waypoint:DistanceTo(goal)
						if d then out[#out + 1] = { q = q, dist = d, kind = kind, goal = goal, step = i } end
					end
				end
			end
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
	local s = N.Signature(list)
	if s ~= sig then
		sig = s
		if ns.Viewer then ns.Viewer:Refresh() end
	end
end
N.Scan = scan

function N:GoTo(c)
	local gt = c.goal.goto_
	ns.Waypoint:SetCustom(gt.zone, gt.x, gt.y, N.Label(c))
end

function N.Label(c)
	local L = ns.L
	local title = ns.QuestState and ns.QuestState.Title(c.q) or tostring(c.q)
	if c.kind == "turnin" then return L.NB_TURNIN:format(title) end
	if c.kind == "accept" then return L.NB_ACCEPT:format(title, c.goal.text or "") end
	local verb = L["VERB_" .. (c.goal.verb == "goto_" and "goto" or c.goal.verb)] or c.goal.verb
	return ("%s %s"):format(verb, c.goal.text or title)
end

ns:Every(2, function() local ok, err = pcall(scan); if not ok then ns:Debug("Nearby", err) end end)
