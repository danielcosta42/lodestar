--=============================================================================
-- AreaGoals — "Nesta área" (issue #122, specs/areas-spawn): os objetivos ainda abertos das quests do diário — do
-- passo atual, dos passos à frente e de fora do guia — que dá para fazer onde o jogador está: ele está dentro da
-- área de nascimento desenhada no mapa (SpawnMap, #121: o contorno convexo inchado de SA.PAD da largura da zona).
-- Na janela do guia, um por linha (o tipo, o nome e a contagem do diário), os das quests do passo atual primeiro,
-- até MAX linhas e "+N"; o clique guia à área. As áreas deles vão ao mapa, mais suaves que as do passo.
--
-- No topo, o núcleo puro (testado fora do jogo, tools/lodestar3-tests.lua); abaixo, o jogo.
--
--   AG.LogIndex(entry, objs, nameOf)  -> { [objetivo do banco] = objetivo do diário }
--   AG.Name(text, monster, affix)      -> o nome do objetivo no texto do diário, sem a contagem (e sem o "slain")
--   AG.SlainAffix(fmt)                 -> o affix do AG.Name, do QUEST_MONSTERS_KILLED do cliente
--   AG.GoalKey(goal, ctx)              -> "quest:objetivo do diário" do goal do guia, ou nil
--   AG.Shown(goals, ctx)               -> { ["q:i"] = true }: o que o cartão do passo já mostra
--   AG.Tiers(steps, cur, questOf)      -> { [quest] = { tier = 1 (passo atual) | 2 (à frente), step = i } }
--   AG.Collect(near, ctx)              -> as linhas, na ordem: { q, obj, log, kind, id, name, text, have, need,
--                                         area, d, tier, step }
--   AG.Signature(rows) / AG.Count(row) -> "2/8"
--
-- `near` é o SA.Near (os objetivos com área a até um raio, da área mais perto para a mais longe). `ctx` = { entryOf
-- (SA.For), objsOf (o diário da quest), nameOf(kind, id) -> nomes, tierOf(q) -> tier, step, shown, margin (jardas,
-- ou função da zona), affix = { antes, depois } do "%s slain" do cliente }.
--=============================================================================
local _, ns = ...
local AG = {}
ns.AreaGoals = AG

AG.MAX = 5             -- linhas na janela; o resto vira "+N"
AG.RADIUS = 100        -- jardas: até onde o SA.Near procura (a maior folga possível)
AG.MIN_PAD = 10        -- jardas: a folga mínima em volta do contorno (cidade, zona pequena)
AG.SCAN = 1            -- s entre uma conta e outra (só refaz se o jogador andou, o passo mudou ou o diário mudou)

local TYPE = { c = "monster", i = "item", o = "object" }
AG.TYPE = TYPE

local function typeOk(o, kind) return not o.type or o.type == TYPE[kind] end

local function names(v)
	if type(v) == "table" then return v end
	if type(v) == "string" and v ~= "" then return { v } end
	return {}
end

-- O objetivo do banco (SpawnAreas, na ordem do QuestieDB: mobs, objetos, itens) no diário. Mesma quantidade e mesmo
-- tipo em cada posição: a ordem é a mesma (a guarda do #121). Senão, pelo nome do mob, do item ou do objeto no texto
-- do objetivo ("Silvermane Howler slain: 20/30"); por fim, o único do tipo que sobrou de cada lado. O que não se acha
-- fica de fora (sem a contagem certa, melhor não mostrar).
function AG.LogIndex(entry, objs, nameOf)
	local map = {}
	if type(entry) ~= "table" or type(objs) ~= "table" or #entry == 0 then return map end
	if #objs == #entry then
		local same = true
		for k, e in ipairs(entry) do
			if not (objs[k] and typeOk(objs[k], e.kind)) then same = false; break end
		end
		if same then
			for k = 1, #entry do map[k] = k end
			return map
		end
	end
	local used = {}
	if nameOf then
		for k, e in ipairs(entry) do
			local best, bestLen
			for _, n in ipairs(names(nameOf(e.kind, e.id))) do
				local low = n:lower()
				for j, o in ipairs(objs) do
					if not used[j] and typeOk(o, e.kind) and type(o.text) == "string"
						and o.text:lower():find(low, 1, true) and (not bestLen or #low > bestLen) then
						best, bestLen = j, #low
					end
				end
			end
			if best then map[k] = best; used[best] = true end
		end
	end
	for _, kind in ipairs({ "c", "o", "i" }) do
		local ds, ls = {}, {}
		for k, e in ipairs(entry) do if e.kind == kind and not map[k] then ds[#ds + 1] = k end end
		for j, o in ipairs(objs) do if not used[j] and o.type == TYPE[kind] then ls[#ls + 1] = j end end
		if #ds == 1 and #ls == 1 then map[ds[1]] = ls[1]; used[ls[1]] = true end
	end
	return map
end

local function trim(s) return (s:gsub("^%s+", ""):gsub("%s+$", "")) end
local function plain(s) return (s:gsub("%p", "%%%0")) end

-- O nome do objetivo no texto do diário: sem a contagem, na frente ("3/8 Kobold Vermin slain") ou atrás ("Kobold
-- Vermin slain: 3/8"); do mob, sem o "slain" (affix = o que vem antes e depois do %s no QUEST_MONSTERS_KILLED do
-- cliente: "%s slain: %d/%d" -> { "", " slain" }).
function AG.Name(text, monster, affix)
	local s = trim(tostring(text or ""))
	s = s:gsub("^%d+%s*/%s*%d+%s+", ""):gsub("%s*:%s*%d+%s*/%s*%d+$", "")
	if monster and affix then
		local pre, post = trim(affix[1] or ""), trim(affix[2] or "")
		if post ~= "" then s = s:gsub("%s*" .. plain(post) .. "$", "") end
		if pre ~= "" then s = s:gsub("^" .. plain(pre) .. "%s*", "") end
	end
	return trim(s)
end

-- O "%s slain: %d/%d" do cliente (QUEST_MONSTERS_KILLED; ou "%d/%d %s slain") -> o que vem antes e depois do nome,
-- sem a contagem: o affix do AG.Name (o "slain" sai do nome do mob)
function AG.SlainAffix(f)
	f = type(f) == "string" and f or "%s slain: %d/%d"
	local pre, post = f:match("^(.-)%%[%d%$]*s(.-):")
	if not pre then pre, post = f:match("^(.-)%%[%d%$]*s(.*)$") end
	local function clean(s) return (tostring(s or ""):gsub("%%[%d%$]*d", ""):gsub("/", "")) end
	return { clean(pre), clean(post) }
end

-- O objetivo do diário de um goal do guia: o índice do `|q quest/obj` (o do diário); sem ele, o do banco que o goal
-- pede (SA.Match) levado ao diário; com um objetivo só no diário, ele. ctx = { entryOf, objsOf, nameOf, match }.
function AG.GoalKey(goal, ctx)
	local q = goal and goal.q and goal.q.id
	if not q or goal.verb == "accept" or goal.verb == "turnin" or goal.verb == "note" then return nil end
	if goal.q.obj then return q .. ":" .. goal.q.obj end
	local objs = ctx.objsOf(q)
	if type(objs) ~= "table" then return nil end
	local e = ctx.entryOf(q)
	local k = e and ctx.match and ctx.match(e, goal)
	local li = k and AG.LogIndex(e, objs, ctx.nameOf)[k]
	if li then return q .. ":" .. li end
	if #objs == 1 then return q .. ":1" end
	return nil
end

-- O que o cartão do passo já mostra (os goals ativos de objetivo de quest): não entra em "Nesta área".
function AG.Shown(goals, ctx, active)
	local out = {}
	for _, g in ipairs(goals or {}) do
		if not active or active(g) then
			local key = AG.GoalKey(g, ctx)
			if key then out[key] = true end
		end
	end
	return out
end

-- De onde é cada quest: 1 do passo atual (qualquer goal dele), 2 de um passo à frente (o primeiro); a que nenhum
-- passo daqui em diante cita é de fora do guia (3, sem entrada).
function AG.Tiers(steps, cur, questOf)
	local out = {}
	cur = cur or 1
	for i = cur, #(steps or {}) do
		for _, g in ipairs(steps[i].goals or {}) do
			local q = questOf(g)
			if q and not out[q] then out[q] = { tier = i == cur and 1 or 2, step = i } end
		end
	end
	return out
end

-- As linhas: cada objetivo (quest, objetivo do banco) com uma área a até a folga da zona dela, ainda aberto no
-- diário (nem concluído nem com a conta cheia), que o cartão do passo não mostra; um por objetivo do diário, com a
-- área mais perto. Na ordem: as quests do passo atual, as dos passos à frente, as de fora do guia; em cada grupo, a
-- mais perto (dentro: 0), o passo, a quest, o objetivo.
function AG.Collect(near, ctx)
	local rows, seenObj, seenLog, maps, logs = {}, {}, {}, {}, {}
	for _, n in ipairs(near or {}) do
		local a = n.area
		local lim = ctx.margin
		if type(lim) == "function" then lim = lim(a and a.zone) end
		local okey = n.q .. ":" .. n.obj
		if a and n.d <= (lim or 0) and not seenObj[okey] then
			seenObj[okey] = true
			local q = n.q
			local objs = logs[q]
			if objs == nil then
				objs = ctx.objsOf(q)
				if type(objs) ~= "table" then objs = false end
				logs[q] = objs
			end
			local e = objs and ctx.entryOf(q)
			local map = e and maps[q]
			if e and not map then map = AG.LogIndex(e, objs, ctx.nameOf); maps[q] = map end
			local li = map and map[n.obj]
			local o = li and objs[li]
			local lkey = q .. ":" .. tostring(li)
			local need, have = o and tonumber(o.numRequired) or 0, o and tonumber(o.numFulfilled) or 0
			if o and not o.finished and not (need > 0 and have >= need) and not seenLog[lkey]
				and not (ctx.shown and ctx.shown[lkey]) then
				seenLog[lkey] = true
				local data = e[n.obj]
				local name = AG.Name(o.text, o.type == "monster" or (not o.type and data.kind == "c"), ctx.affix)
				if name == "" and ctx.nameOf then name = names(ctx.nameOf(data.kind, data.id))[1] or "" end
				if name ~= "" then
					local tier, step = 3, nil
					if ctx.tierOf then
						local t, s = ctx.tierOf(q)
						tier, step = t or 3, s
					end
					rows[#rows + 1] = { q = q, obj = n.obj, log = li, kind = data.kind, id = data.id, name = name,
						text = o.text, have = need > 1 and math.max(0, have) or nil, need = need > 1 and need or nil,
						area = a, d = n.d, tier = tier, step = step }
				end
			end
		end
	end
	table.sort(rows, function(x, y)
		if x.tier ~= y.tier then return x.tier < y.tier end
		if x.d ~= y.d then return x.d < y.d end
		local sx, sy = x.step or math.huge, y.step or math.huge
		if sx ~= sy then return sx < sy end
		if x.q ~= y.q then return x.q < y.q end
		return x.log < y.log
	end)
	return rows
end

-- Assinatura do que a janela mostra (só redesenha quando muda): a ordem, a quest, o objetivo, a conta e o grupo.
function AG.Signature(rows)
	local parts = {}
	for _, r in ipairs(rows or {}) do
		parts[#parts + 1] = ("%s:%s:%s:%s"):format(r.q, r.log, r.have or "", r.tier)
	end
	return table.concat(parts, ",")
end

-- A contagem à direita da linha: "2/8"; o objetivo de um só (sim/não), nada
function AG.Count(r)
	return r.need and ("%d/%d"):format(math.min(r.have or 0, r.need), r.need) or ""
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local SA = ns.SpawnAreas
local QL = C_QuestLog or {}

local function enabled() return ns.db and ns.db.areaGoals ~= false end

local rows, sig, covers = {}, "", {}
function AG.List() return rows end

-- As quests do diário (ids): sem cabeçalho, sem a que falhou, sem a que o jogador pulou no guia (ele não quer ser
-- guiado nela). Lidas a cada conta (até 25 linhas do diário; a conta só roda quando algo mudou).
local function questsInLog()
	local out = {}
	if not (QL.GetNumQuestLogEntries and QL.GetInfo) then return out end
	local skipped = ns.char and ns.char.skipped or {}
	for i = 1, QL.GetNumQuestLogEntries() or 0 do
		local info = QL.GetInfo(i)
		local q = info and not info.isHeader and info.questID
		if q and not skipped[q] and not (QL.IsFailed and QL.IsFailed(q)) then out[#out + 1] = q end
	end
	return out
end

local function objsOf(q)
	local QS = ns.QuestState
	return QS and QS.Objectives and ns.IsQuestInLog(q) and QS.Objectives(q) or nil
end

-- Os nomes do que um objetivo pede, no idioma do cliente quando se sabe: o do NPC aprendido ao vê-lo
-- (TargetButton), o do item (o jogo), e o do guia aberto (em inglês, o mesmo do banco).
local VERB_KIND = { kill = "c", talk = "c", collect = "i", get = "i", use = "i", click = "o" }
local guideNames = setmetatable({}, { __mode = "k" })
local function guideNameIndex()
	local g = ns.currentGuide
	if not g then return nil end
	local idx = guideNames[g]
	if idx then return idx end
	idx = { c = {}, i = {}, o = {} }
	for _, st in ipairs(g.steps or {}) do
		for _, goal in ipairs(st.goals or {}) do
			local k = VERB_KIND[goal.verb]
			if k and goal.id and goal.text and goal.text ~= "" then idx[k][goal.id] = idx[k][goal.id] or goal.text end
		end
	end
	guideNames[g] = idx
	return idx
end

local function nameOf(kind, id)
	local out = {}
	if kind == "c" then
		local n = ns.db and ns.db.npcNames and ns.db.npcNames[id]
		if n then out[#out + 1] = n end
	elseif kind == "i" then
		local n = C_Item and C_Item.GetItemNameByID and C_Item.GetItemNameByID(id)
		if not n and GetItemInfo then n = GetItemInfo(id) end
		if type(n) == "string" and n ~= "" then out[#out + 1] = n end
	end
	local idx = guideNameIndex()
	local g = idx and idx[kind] and idx[kind][id]
	if g then out[#out + 1] = g end
	return out
end

-- o affix do "slain" do cliente (AG.SlainAffix), lido uma vez
local affix
local function slainAffix()
	affix = affix or AG.SlainAffix(QUEST_MONSTERS_KILLED)
	return affix
end

-- A largura da zona em jardas (o desenho incha o contorno SA.PAD dela): a folga em volta da área.
local widths = {}
local function zoneWidth(zone)
	local w = zone and widths[zone]
	if w == nil and zone then
		local T = ns.Travel
		local a, b = T and T.World(zone, 0, 50), T and T.World(zone, 100, 50)
		if a and b and a.c == b.c then
			w = math.sqrt((a.x - b.x) ^ 2 + (a.y - b.y) ^ 2)
			widths[zone] = w
		end
	end
	return w
end
function AG.Margin(zone)
	local w = zoneWidth(zone)
	return w and math.max(AG.MIN_PAD, math.min(AG.RADIUS, w * SA.PAD)) or AG.MIN_PAD
end

-- De onde é cada quest: do passo atual (os goals dele, a cada conta) ou de um passo à frente (guardado por guia e
-- passo); a que nenhum cita é de fora do guia.
local ahead, aheadKey, inStep = {}, nil, {}
local function questOf(goal) return ns.QuestState and ns.QuestState.QuestOf(goal) end
local function readTiers(step)
	inStep = {}
	for _, goal in ipairs(step and step.goals or {}) do
		local q = questOf(goal)
		if q then inStep[q] = true end
	end
	local g = ns.currentGuide
	local key = g and (g.key .. ":" .. tostring(ns.char.currentStep))
	if key ~= aheadKey then
		aheadKey = key
		ahead = g and AG.Tiers(g.steps, (ns.char.currentStep or 1) + 1, questOf) or {}
	end
end
local function tierOf(q)
	if inStep[q] then return 1, ns.char.currentStep end
	local t = ahead[q]
	if t then return 2, t.step end
	return 3
end

local function context()
	return { entryOf = SA.For, objsOf = objsOf, nameOf = nameOf, match = SA.Match, tierOf = tierOf,
		margin = AG.Margin, affix = slainAffix() }
end

-- O goal (de um passo à frente) é de um objetivo que "Nesta área" já mostra? (o Nearby não repete)
function AG.Covers(goal)
	if not (goal and #rows > 0) then return false end
	local key = AG.GoalKey(goal, context())
	return key and covers[key] or false
end

local function changed()
	covers = {}
	for _, r in ipairs(rows) do covers[r.q .. ":" .. r.log] = true end
	if ns.Nearby and ns.Nearby.Scan then pcall(ns.Nearby.Scan) end
	if ns.Viewer then ns.Viewer:Refresh() end
end

local dirty, lastPos, lastKey = true, nil, nil
local function scan(force)
	if not (enabled() and ns.currentGuide and ns:UIShown() and SA and SA.NearPlayer) then
		if #rows > 0 then rows, sig = {}, ""; changed() end
		dirty = true
		return
	end
	local T = ns.Travel
	local pos = T and T.PlayerWorld and T.PlayerWorld()
	local key = ns.currentGuide.key .. ":" .. tostring(ns.char.currentStep)
	-- parado (menos de 2 jd), no mesmo passo e com o diário igual: nada mudou
	if not (force or dirty) and key == lastKey and pos and lastPos and pos.c == lastPos.c
		and (pos.x - lastPos.x) ^ 2 + (pos.y - lastPos.y) ^ 2 < 4 then return end
	dirty, lastKey, lastPos = false, key, pos
	local ctx = context()
	local step = ns:GetStep()
	readTiers(step)
	ctx.shown = AG.Shown(step and step.goals, ctx, function(g) return ns:IsGoalActive(g) end)
	rows = AG.Collect(SA.NearPlayer(questsInLog(), AG.RADIUS), ctx)
	local s = AG.Signature(rows)
	if s ~= sig then
		sig = s
		changed()
	end
end
AG.Scan = scan

-- Configurações: ligar/desligar vale na hora (a janela, o "Enquanto está aqui" e o mapa)
function AG.Refresh()
	dirty = true
	scan(true)
	if ns.SpawnAreas and ns.SpawnAreas.Update then pcall(ns.SpawnAreas.Update) end
end

-- As áreas dos objetivos da lista na zona do mapa aberto (o SpawnMap desenha mais suave): { { area, key }, ... }
function AG.MapAreas(shown)
	local out = {}
	if not (enabled() and shown) then return out end
	for _, r in ipairs(rows) do
		local e = SA.For(r.q)
		local o = e and e[r.obj]
		for _, a in ipairs(o and o.areas or {}) do
			local m = a.zone and (ns.zoneMap[a.zone] or (ns.zoneUiMap and ns.zoneUiMap[a.zone]))
			if m == shown then out[#out + 1] = { area = a, key = r.q .. ":" .. r.obj } end
		end
	end
	return out
end

-- O clique: a área mais perto do objetivo (a de onde ele está), no ponto-alvo dela (um nascimento de verdade).
function AG.GoTo(r)
	local a = r and r.area
	if not (a and ns.Waypoint) then return end
	ns.Waypoint:SetCustom(a.zone, a.x, a.y, r.name)
end

ns:On("QUEST_LOG_UPDATE", function() dirty = true end)
ns:On("_GUIDE_LOADED", function() dirty = true end)
ns:Every(AG.SCAN, function() local ok, err = pcall(scan); if not ok then ns:Debug("AreaGoals", err) end end)
