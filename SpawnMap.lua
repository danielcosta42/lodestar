--=============================================================================
-- SpawnMap — onde nasce o que o passo pede (issue #121, specs/areas-spawn): as áreas do SpawnAreas.lua (gerado por
-- tools/gen_spawnareas.py, do QuestieDB) no mapa-múndi como manchas — miolo translúcido e contorno, como o cliente
-- de hoje —, e a seta que, a cada clique, passa do ponto do guia para a próxima área, da mais perto dele para a mais
-- longe.
--
-- No topo, o núcleo puro (testado fora do jogo, tools/travel-tests.lua); abaixo, o que roda no jogo.
--
--   SA.Decode(s, zonas)                  -> { kind, id, areas = { { zone, x, y, n, hull = { x1, y1, ... } }, ... } }
--   SA.For(q)                            -> { [objetivo] = decodificado, alias = { [npc] = objetivo } } | nil
--   SA.Match(entry, goal)                -> o objetivo (índice) que o goal do guia pede, ou nil
--   SA.PolyDist(poly, x, y)              -> do ponto ao contorno convexo (0 dentro), nas unidades dele
--   SA.Slots(areas, gx, gy)              -> a volta da seta: o ponto do guia (com a área dele) e as outras áreas
--   SA.Cycle(st, key, slots)             -> o da vez (o primeiro quando `key` muda), o índice, quantos
--   SA.Advance(st)                       -> passa para o próximo (dá a volta); false com um só
--   SA.Near(quests, pos, radius, wOf)    -> { { q, obj, area, d }, ... } a até `radius` jardas de `pos` (issue #122)
--   SA.NearPlayer(quests, radius)        -> o mesmo, do jogador (no jogo)
--   SA.Hull(xy) / SA.Rounded(xy, pad) / SA.Spans(poly, dy) -> a geometria do desenho
--
-- `worldOf(zona, x, y)` -> { c, x, y } (o Travel.World).
--=============================================================================
local _, ns = ...
local SA = {}
ns.SpawnAreas = SA

local sqrt, atan2, cos, sin, ceil, max, min, pi = math.sqrt, math.atan2, math.cos, math.sin, math.ceil, math.max,
	math.min, math.pi

SA.INSIDE = 1.5            -- unidades do mapa (0-100): o ponto do guia a até isso da borda conta como dentro da área
SA.CACHE = 64              -- quests decodificadas guardadas (todas, sob o Lua 5.1, passariam de 8 MB)

--------------------------------------------------------------------------------
-- os dados
--------------------------------------------------------------------------------
local function b36(s, i) return tonumber(s:sub(i, i + 1), 36) end

-- "<c|o|i><id>;<área>;..." (formato no cabeçalho do gerador): números de 2 letras em base 36, coordenada x10
function SA.Decode(s, zones)
	zones = zones or ns.spawnZones or {}
	local head, rest = s:match("^([^;]*)(.*)$")
	local out = { kind = head:sub(1, 1), id = tonumber(head:sub(2)), areas = {} }
	for a in rest:gmatch(";([^;]+)") do
		local z, cx, cy, n = b36(a, 1), b36(a, 3) / 10, b36(a, 5) / 10, b36(a, 7)
		local hull = {}
		for i = 9, #a - 3, 4 do
			hull[#hull + 1] = b36(a, i) / 10
			hull[#hull + 1] = b36(a, i + 2) / 10
		end
		if #hull == 0 then hull[1], hull[2] = cx, cy end         -- um ponto só
		out.areas[#out.areas + 1] = { zone = zones[z], x = cx, y = cy, n = n, hull = hull }
	end
	return out
end

-- Decodificado sob demanda, por quest, e guardado (pela tabela crua: trocar o ns.spawnQuest num teste não pega o
-- velho) até SA.CACHE quests; passou disso, esquece tudo e começa de novo (quem está usando uma área segura a dele).
local decoded, nDecoded = {}, 0
function SA.For(q)
	local raw = q and ns.spawnQuest and ns.spawnQuest[q]
	if not raw then return nil end
	local c = decoded[raw]
	if c then return c end
	if nDecoded >= SA.CACHE then decoded, nDecoded = {}, 0 end
	c = { alias = raw.a, q = q }
	for i, s in ipairs(raw) do
		local o = SA.Decode(s)
		for k, a in ipairs(o.areas) do a.q, a.obj, a.k = q, i, k end
		c[i] = o
	end
	decoded[raw], nDecoded = c, nDecoded + 1
	return c
end
function SA.Cached() return nDecoded end

-- Que tipo de objetivo cada verbo do guia pede (o id do goal é o do mob, do item ou do objeto).
local KIND = { kill = { c = true }, collect = { i = true, o = true }, get = { i = true }, click = { o = true } }
SA.KIND = KIND

-- O objetivo do goal: pelo id (do tipo que o verbo pede); o mob do guia que deixa cair o item de um objetivo (alias,
-- do gerador); o índice do `|q quest/obj`; sem id nem índice, o único objetivo com área do tipo que o verbo pede.
function SA.Match(entry, goal)
	local ok = entry and goal and KIND[goal.verb]
	if not ok then return nil end
	if goal.id then
		for i, o in ipairs(entry) do if o.id == goal.id and ok[o.kind] then return i end end
		local a = entry.alias and entry.alias[goal.id]
		if a and entry[a] then return a end
	end
	local obj = goal.q and goal.q.obj
	if obj and entry[obj] then return obj end
	if goal.id then return nil end
	local only
	for i, o in ipairs(entry) do
		if #o.areas > 0 and ok[o.kind] then
			if only then return nil end
			only = i
		end
	end
	return only
end

--------------------------------------------------------------------------------
-- dentro, perto, a ordem e a vez
--------------------------------------------------------------------------------
-- Do ponto ao contorno convexo {x1, y1, ...} (em qualquer sentido): 0 dentro; fora, até o lado mais perto. Um ponto
-- só, a distância a ele; dois, ao segmento.
function SA.PolyDist(p, x, y)
	local n = #p / 2
	if n == 1 then return sqrt((p[1] - x) ^ 2 + (p[2] - y) ^ 2) end
	local pos, neg, best = false, false, math.huge
	for i = 1, n do
		local ax, ay, bx, by = p[2 * i - 1], p[2 * i], p[i % n * 2 + 1], p[i % n * 2 + 2]
		local dx, dy = bx - ax, by - ay
		local cr = dx * (y - ay) - dy * (x - ax)
		if cr > 1e-9 then pos = true elseif cr < -1e-9 then neg = true end
		local len = dx * dx + dy * dy
		local t = len > 0 and max(0, min(1, ((x - ax) * dx + (y - ay) * dy) / len)) or 0
		best = min(best, sqrt((ax + t * dx - x) ^ 2 + (ay + t * dy - y) ^ 2))
	end
	if n >= 3 and not (pos and neg) then return 0 end
	return best
end

-- A volta da seta num objetivo com áreas na zona do passo: primeiro o próprio ponto do guia (gx, gy) — o alvo de
-- sempre, o mesmo do pino do mapa e da distância na janela —, com a área onde ele cai (dentro dela, da mais funda;
-- senão a até SA.INSIDE da borda, a de mais nascimentos); depois as outras áreas, da borda mais perto do ponto do guia
-- para a mais longe. Ponto do guia fora de toda área: ele sozinho, e depois todas. Cada um: { x, y, area, k (a área é
-- a k-ésima de `of`), guide = o ponto do guia }.
function SA.Slots(areas, gx, gy)
	local list = {}
	for i, a in ipairs(areas) do
		list[i] = { a = a, d = SA.PolyDist(a.hull, gx, gy), c = (a.x - gx) ^ 2 + (a.y - gy) ^ 2 }
	end
	table.sort(list, function(p, q)
		local pin, qin = p.d <= SA.INSIDE, q.d <= SA.INSIDE
		if pin ~= qin then return pin end
		if pin then
			-- dentro de verdade (o contorno vem com uma casa: 0.25 de folga), da mais funda, antes de perto da borda: na
			-- emenda de duas áreas, a que tem o ponto
			local p0, q0 = p.d <= 0.25, q.d <= 0.25
			if p0 ~= q0 then return p0 end
			if p0 and p.d ~= q.d then return p.d < q.d end
			if p.a.n ~= q.a.n then return p.a.n > q.a.n end
		end
		if p.d ~= q.d then return p.d < q.d end
		return p.c < q.c
	end)
	local out, of = {}, #list
	local first = list[1] and list[1].d <= SA.INSIDE and list[1].a or nil
	out[1] = { x = gx, y = gy, area = first, k = first and 1 or nil, of = of, guide = true }
	for i = first and 2 or 1, #list do
		local a = list[i].a
		out[#out + 1] = { x = a.x, y = a.y, area = a, k = i, of = of }
	end
	return out
end

-- O da vez. `key` novo (outro objetivo, outro passo) ou outra volta: o primeiro (o ponto do guia).
function SA.Cycle(st, key, slots)
	if st.key ~= key or st.list ~= slots then st.key, st.list, st.i = key, slots, 1 end
	return st.list[st.i], st.i, #st.list
end

function SA.Advance(st)
	local n = st.list and #st.list or 0
	if n < 2 then return false end
	st.i = st.i % n + 1
	return true
end

-- O ponto de mundo da área e o contorno dela no mundo (no continente do ponto), guardados na própria área (o que não
-- caiu no mapa não fica guardado: tenta de novo na próxima).
function SA.AreaWorld(a, worldOf)
	if a._wf ~= worldOf then
		local w = worldOf(a.zone, a.x, a.y)
		if not w then return nil end
		local poly = {}
		for i = 1, #a.hull - 1, 2 do
			local p = worldOf(a.zone, a.hull[i], a.hull[i + 1])
			if not (p and p.c == w.c) then return nil end
			poly[#poly + 1] = p.x; poly[#poly + 1] = p.y
		end
		a._wf, a._w, a._wp = worldOf, w, poly
	end
	return a._w, a._wp
end

-- Os objetivos das quests `quests` (lista de ids) com alguma área a até `radius` jardas de `pos` (mundo), da mais
-- perto para a mais longe: { q, obj (índice), area, d (jardas até o contorno da área; 0 dentro dele) }. Para o issue
-- #122 ("dentro da área desenhada": d == 0; o desenho incha o contorno uns poucos pixels).
function SA.Near(quests, pos, radius, worldOf)
	local out = {}
	if not pos then return out end
	for _, q in ipairs(quests or {}) do
		local e = SA.For(q)
		for i, o in ipairs(e or {}) do
			for _, a in ipairs(o.areas) do
				local w, poly = SA.AreaWorld(a, worldOf)
				if w and w.c == pos.c then
					local d = SA.PolyDist(poly, pos.x, pos.y)
					if d <= radius then out[#out + 1] = { q = q, obj = i, area = a, d = d } end
				end
			end
		end
	end
	table.sort(out, function(p, q) return p.d < q.d end)
	return out
end

--------------------------------------------------------------------------------
-- a geometria da mancha (em pixels do mapa aberto)
--------------------------------------------------------------------------------
-- Contorno convexo de {x1, y1, x2, y2, ...} (cadeia monótona), com área positiva; 1 ou 2 pontos voltam sozinhos.
function SA.Hull(xy)
	local pts, seen = {}, {}
	for i = 1, #xy - 1, 2 do
		local k = xy[i] .. ":" .. xy[i + 1]
		if not seen[k] then seen[k] = true; pts[#pts + 1] = { xy[i], xy[i + 1] } end
	end
	table.sort(pts, function(a, b) if a[1] ~= b[1] then return a[1] < b[1] end return a[2] < b[2] end)
	local out = {}
	if #pts <= 2 then
		for _, p in ipairs(pts) do out[#out + 1] = p[1]; out[#out + 1] = p[2] end
		return out
	end
	local function cross(o, a, b) return (a[1] - o[1]) * (b[2] - o[2]) - (a[2] - o[2]) * (b[1] - o[1]) end
	local h = {}
	for _, p in ipairs(pts) do
		while #h >= 2 and cross(h[#h - 1], h[#h], p) <= 0 do h[#h] = nil end
		h[#h + 1] = p
	end
	local low = #h + 1
	for i = #pts - 1, 1, -1 do
		local p = pts[i]
		while #h >= low and cross(h[#h - 1], h[#h], p) <= 0 do h[#h] = nil end
		h[#h + 1] = p
	end
	h[#h] = nil                                    -- o primeiro de novo
	for _, p in ipairs(h) do out[#out + 1] = p[1]; out[#out + 1] = p[2] end
	return out
end

-- O contorno inchado de `pad` em toda volta, de cantos redondos (a soma com um disco): a mancha do cliente. Um ponto
-- vira círculo; dois, uma pílula. `xy` vem do SA.Hull (área positiva).
function SA.Rounded(xy, pad, step)
	step = step or pi / 6
	local n, out = #xy / 2, {}
	local function put(x, y, a) out[#out + 1] = x + pad * cos(a); out[#out + 1] = y + pad * sin(a) end
	if n == 1 then
		local k = ceil(2 * pi / step)
		for j = 0, k - 1 do put(xy[1], xy[2], j * 2 * pi / k) end
		return out
	end
	for i = 1, n do
		local px, py = xy[(i - 2) % n * 2 + 1], xy[(i - 2) % n * 2 + 2]
		local x, y = xy[2 * i - 1], xy[2 * i]
		local nx, ny = xy[i % n * 2 + 1], xy[i % n * 2 + 2]
		-- a normal de fora de cada lado (dy, -dx): do lado que chega ao canto até o que sai dele
		local a1 = atan2(-(x - px), y - py)
		local d = (atan2(-(nx - x), ny - y) - a1) % (2 * pi)
		local k = max(1, ceil(d / step))
		for j = 0, k do put(x, y, a1 + d * j / k) end
	end
	return out
end

-- O miolo em faixas horizontais {y0, y1, xl, xr, ...} de altura ~`dy`: a largura de cada uma é a do meio dela. A
-- borda de baixo de uma é o mesmo número que a de cima da seguinte: no jogo, uma emenda na outra sem fresta.
function SA.Spans(p, dy)
	local n, out = #p / 2, {}
	if n < 3 then return out end
	local y0, y1 = math.huge, -math.huge
	for i = 2, #p, 2 do y0, y1 = min(y0, p[i]), max(y1, p[i]) end
	if y1 - y0 <= 0 then return out end
	local rows = max(1, ceil((y1 - y0) / dy))
	local h = (y1 - y0) / rows
	for r = 0, rows - 1 do
		local top, bot = y0 + r * h, r == rows - 1 and y1 or y0 + (r + 1) * h
		local ym = (top + bot) / 2
		local xl, xr = math.huge, -math.huge
		for i = 1, n do
			local ax, ay, bx, by = p[2 * i - 1], p[2 * i], p[i % n * 2 + 1], p[i % n * 2 + 2]
			if (ay <= ym and by > ym) or (by <= ym and ay > ym) then
				local x = ax + (ym - ay) * (bx - ax) / (by - ay)
				xl, xr = min(xl, x), max(xr, x)
			end
		end
		if xr > xl then out[#out + 1] = top; out[#out + 1] = bot; out[#out + 1] = xl; out[#out + 1] = xr end
	end
	return out
end

--------------------------------------------------------------------------------
-- no jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI, WP = ns.UI, ns.Waypoint

local function enabled() return ns.db and ns.db.spawnAreas ~= false end

local function worldOf(zone, x, y) return ns.Travel and ns.Travel.World(zone, x, y) end

-- Os objetivos das quests `quests` com área a até `radius` jardas do jogador (o SA.Near com o mundo do jogo; #122).
function SA.NearPlayer(quests, radius)
	local T = ns.Travel
	return SA.Near(quests, T and T.PlayerWorld(), radius, worldOf)
end

-- O objetivo de cada goal do guia: a quest, o índice, as áreas (o mapa desenha todas) — e a volta da seta, só para o
-- goal com `|goto` numa zona que tem área: a seta troca o ponto do guia por outra área, nunca inventa um alvo para o
-- goal que não tinha. Uma vez por goal.
local goalInfo = setmetatable({}, { __mode = "k" })
local function infoOf(goal)
	local c = goalInfo[goal]
	if c ~= nil then return c or nil end
	local q = goal.q and goal.q.id
	local entry = q and SA.For(q)
	local k = entry and SA.Match(entry, goal)
	local o = k and entry[k]
	if not (o and #o.areas > 0) then goalInfo[goal] = false; return nil end
	c = { q = q, k = k, obj = o, entry = entry }
	local g = goal.goto_
	if g and g.zone and g.x and g.y and g.x >= 0 and g.y >= 0 then
		local list = {}
		for _, a in ipairs(o.areas) do if a.zone == g.zone then list[#list + 1] = a end end
		if #list > 0 then c.slots = SA.Slots(list, g.x, g.y) end
	end
	goalInfo[goal] = c
	return c
end

-- O diário diz que aquele objetivo já está feito (o goal sem índice só conclui com a quest inteira). Só quando o
-- diário tem o mesmo número de objetivos que o banco e o do índice é do mesmo tipo: a ordem é a mesma.
local TYPE = { c = "monster", i = "item", o = "object" }
local function objDone(c)
	local QS = ns.QuestState
	local objs = QS and QS.Objectives and ns.IsQuestInLog and ns.IsQuestInLog(c.q) and QS.Objectives(c.q)
	if type(objs) ~= "table" or #objs ~= #c.entry then return false end
	local o = objs[c.k]
	return (o and o.finished and (not o.type or o.type == TYPE[c.obj.kind])) and true or false
end

-- tem área (e o mapa vai desenhá-la)?
function SA.Has(goal)
	return enabled() and goal and infoOf(goal) ~= nil or false
end

-- o objetivo do goal já está feito pelo diário. Com índice no `|q`, ou com a quest de um objetivo só, o
-- IsGoalComplete já sabe: nem pergunta ao diário.
local function doneBy(goal, c)
	return not (goal.q and goal.q.obj) and #c.entry > 1 and objDone(c)
end

-- (o Destinations pula para o objetivo seguinte do passo)
function SA.Done(goal)
	local c = SA.Has(goal) and infoOf(goal)
	return c and doneBy(goal, c) or false
end

local state = {}

-- O destino do guia na vez da seta (o Destinations.GuideTarget chama): { zone, x, y, label, goal, area, spawn } —
-- `goal` faz as vezes do objetivo (verbo, nome, quest) com o `goto_` no ponto da vez. O primeiro é o próprio ponto do
-- guia (o alvo de sempre); `area` é a área dele, se ele cai numa. nil: sem volta (vale o `goto_`, como antes).
function SA.Target(goal)
	if not enabled() then return nil end
	local c = infoOf(goal)
	if not (c and c.slots) then return nil end
	local slot, _, n = SA.Cycle(state, goal, c.slots)
	if not slot then return nil end
	if state.dest and state.destS == slot then return state.dest end
	local g = goal.goto_
	local tag = slot.k and n > 1 and ns.L.SPAWN_AREA:format(slot.k, slot.of) or nil
	local label = tag and ("%s · %s"):format(goal.text or "", tag) or goal.text
	local to = slot.guide and g or { zone = g.zone, x = slot.x, y = slot.y }
	local proxy = setmetatable({ goto_ = to, _spawn = tag, _area = slot.area, _goal = goal }, { __index = goal })
	state.dest = { zone = g.zone, x = to.x, y = to.y, label = label, goal = proxy, area = slot.area, spawn = true }
	state.destS = slot
	return state.dest
end

-- o destino do guia agora está na volta das áreas (e há outro para onde ir)?
local function cycling()
	local D = ns.Destinations
	if not (enabled() and D) then return false end
	local dest, kind = D:Active()
	if kind ~= "guide" or not (dest and dest.spawn) then return false end
	if D.Stops and D:Stops()[1] then return false end      -- a seta está na parada (#117), não no passo
	return state.list and #state.list > 1
end

local lastSig
-- Clique na seta: o próximo da volta (a rota, o caminho, a bússola e a seta seguem). Com um só, nada.
function SA.Click()
	if not cycling() then return false end
	SA.Advance(state)
	state.dest = nil
	local T = ns.Travel
	if T and T.Replan and not (T.Busy and T:Busy()) then T:Replan(true) end
	if ns.Waypoint then ns.Waypoint:Update() end
	lastSig = nil
	return true
end

-- a dica da seta (o tooltip): só quando o clique faz algo
function SA.ArrowHint()
	if not cycling() then return nil end
	local slot = state.list[state.i]
	if slot.k then return ns.L.SPAWN_ARROW_TIP:format(slot.k, slot.of) end
	return ns.L.SPAWN_ARROW_TIP0:format(slot.of)
end

-- Configurações: ligar/desligar vale na hora (a seta volta ao ponto do passo)
function SA.Refresh()
	state.key, state.dest, lastSig = nil, nil, nil
	local T = ns.Travel
	if T and T.Replan and not (T.Busy and T:Busy()) then T:Replan(true) end
	if ns.Waypoint then ns.Waypoint:Update() end
end

-- Os objetivos do passo atual que ainda faltam, com área: { info, ... } (um por objetivo de quest)
local function stepObjectives()
	local out, seen = {}, {}
	local step = ns.GetStep and ns:GetStep()
	for _, goal in ipairs(step and step.goals or {}) do
		local c = infoOf(goal)
		if c and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) and not doneBy(goal, c) then
			local key = c.q .. ":" .. c.k
			if not seen[key] then seen[key] = true; out[#out + 1] = c end
		end
	end
	return out
end
SA.StepObjectives = stepObjectives

--------------------------------------------------------------------------------
-- o desenho no mapa-múndi
--------------------------------------------------------------------------------
local overlay
local fills, lines = {}, {}
local nFill, nLine = 0, 0

local function ensure(canvas)
	-- como o overlay da rota (RouteMap: a mesma camada, feita do mesmo jeito, e um nível acima deste): a rota fica
	-- por cima da mancha, e os pinos do guia (GuideMap, TOOLTIP) também. Sem o nível explícito, a ordem com a rota
	-- era a do acaso (os dois no nível do mapa + 1).
	if not overlay then
		overlay = CreateFrame("Frame", "LodestarSpawnMap", canvas)
		overlay:SetFrameStrata("HIGH")
	end
	overlay:SetParent(canvas); overlay:SetAllPoints(canvas)
	if canvas.GetFrameLevel then overlay:SetFrameLevel((canvas:GetFrameLevel() or 1) + 1) end
	overlay:Show()
	return overlay
end

local function clear()
	for i = 1, #fills do fills[i]:Hide() end
	for i = 1, #lines do lines[i]:Hide() end
	nFill, nLine = 0, 0
end

local function hideAll()
	clear()
	lastSig = nil
	if overlay then overlay:Hide() end
end

-- uma faixa do miolo: os dois cantos pelos pontos (a borda comum de duas faixas é o mesmo número)
local function band(x0, y0, x1, y1, col, alpha, sub)
	nFill = nFill + 1
	local t = fills[nFill]
	if not t then t = overlay:CreateTexture(nil, "BORDER"); fills[nFill] = t end
	t:SetDrawLayer("BORDER", sub)
	t:SetColorTexture(col[1], col[2], col[3], alpha)
	t:ClearAllPoints()
	t:SetPoint("TOPLEFT", overlay, "TOPLEFT", x0, -y0)
	t:SetPoint("BOTTOMRIGHT", overlay, "TOPLEFT", x1, -y1)
	t:Show()
end

local function seg(x0, y0, x1, y1, col, alpha, thick, sub)
	local l = lines[nLine + 1]
	if not l then
		if not overlay.CreateLine then return end            -- cliente sem linhas: só o miolo
		l = overlay:CreateLine(nil, "ARTWORK")
		lines[nLine + 1] = l
	end
	nLine = nLine + 1
	l:SetDrawLayer("ARTWORK", sub)
	l:SetColorTexture(col[1], col[2], col[3], alpha)
	l:SetThickness(thick)
	l:SetStartPoint("TOPLEFT", overlay, x0, -y0)
	l:SetEndPoint("TOPLEFT", overlay, x1, -y1)
	l:Show()
end

-- o contorno da área no mapa aberto, em pixels; nil se algum canto não cai nele
local function project(a, shown, w, h)
	-- zona que não se acha no mapa: o MapPos cairia no mapa do jogador
	if not (a.zone and (ns.zoneMap[a.zone] or (ns.zoneUiMap and ns.zoneUiMap[a.zone]))) then return nil end
	local xy = {}
	for i = 1, #a.hull - 1, 2 do
		local mx, my = WP:MapPos(a.zone, a.hull[i], a.hull[i + 1], shown)
		if not mx then return nil end
		xy[#xy + 1] = mx * w; xy[#xy + 1] = my * h
	end
	return xy
end

local function drawArea(a, shown, w, h, target)
	local xy = project(a, shown, w, h)
	if not xy then return end
	local pad = max(5, w * 0.008)
	local poly = SA.Rounded(SA.Hull(xy), pad)
	local x0, y0, x1, y1 = math.huge, math.huge, -math.huge, -math.huge
	for i = 1, #poly - 1, 2 do
		x0, x1 = min(x0, poly[i]), max(x1, poly[i])
		y0, y1 = min(y0, poly[i + 1]), max(y1, poly[i + 1])
	end
	if x1 < 0 or y1 < 0 or x0 > w or y0 > h then return end     -- fora do mapa aberto
	local C = UI.HUD          -- sobre o mapa: a paleta fixa (UI.lua), a mesma do RouteMap e do GuideMap
	local fill, edge = C.amber, target and C.accentBright or C.amber
	local s = SA.Spans(poly, max(1.5, (y1 - y0) / 48))
	-- a da seta numa camada acima das outras (no mesmo nível o jogo não garante a ordem)
	local up = target and 2 or 0
	for i = 1, #s - 3, 4 do band(s[i + 2], s[i], s[i + 3], s[i + 1], fill, target and 0.30 or 0.16, up) end
	local n = #poly / 2
	for i = 1, n do
		local ax, ay, bx, by = poly[2 * i - 1], poly[2 * i], poly[i % n * 2 + 1], poly[i % n * 2 + 2]
		seg(ax, ay, bx, by, C.shadow, 0.45, target and 4.5 or 3, 1 + up)          -- sombra: lê sobre areia e neve
		seg(ax, ay, bx, by, edge, target and 1 or 0.8, target and 2.5 or 1.5, 2 + up)
	end
end

local function update()
	local WMF = WorldMapFrame
	if not (enabled() and ns:UIShown() and WMF and WMF:IsShown() and WMF.GetCanvas) then return hideAll() end
	local shown = WMF.GetMapID and WMF:GetMapID()
	local ok, canvas = pcall(WMF.GetCanvas, WMF)
	if not (shown and ok and canvas) then return hideAll() end
	local w, h = canvas:GetSize()
	if not w or w == 0 then return hideAll() end
	local objs = stepObjectives()
	if #objs == 0 then return hideAll() end
	local g = ns.Destinations and ns.Destinations.GuideTarget()
	local target = g and g.area
	local parts = { tostring(shown), ("%d"):format(w), ("%d"):format(h), tostring(target) }
	for _, c in ipairs(objs) do parts[#parts + 1] = c.q .. ":" .. c.k end
	local sig = table.concat(parts, "|")
	if sig == lastSig and overlay and overlay:IsShown() then return end
	lastSig = sig
	ensure(canvas)
	clear()
	for _, c in ipairs(objs) do
		for _, a in ipairs(c.obj.areas) do if a ~= target then drawArea(a, shown, w, h, false) end end
	end
	if target then drawArea(target, shown, w, h, true) end          -- a da seta por cima, mais forte
end
SA.Update = update
-- quantas faixas e linhas estão no mapa (o teste de fumaça)
function SA.Drawn() return nFill, nLine end

ns:Every(0.25, function()
	if WorldMapFrame and WorldMapFrame:IsShown() then
		local ok, err = pcall(update)
		if not ok then ns:Debug("SpawnMap:", err); hideAll() end
	elseif overlay and overlay:IsShown() then
		hideAll()
	end
end)
