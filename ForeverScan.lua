--=============================================================================
-- ForeverScan — colhe do próprio cliente o que nenhum banco público tem ainda.
--
-- O conteúdo novo do Forever (Riverglades, Zephras Isle, Darkspear Islands,
-- Shen'dralas) é do servidor: não está em DB2, não está no Wowhead, não está na
-- Questie. Quem sabe é o cliente logado — e ele responde por id.
--
-- Duas frentes:
--   1. varredura: pede o dado de cada quest desconhecida (`RequestLoadQuestByID`)
--      e guarda nome e nível quando o servidor responde. `/ls scan`.
--   2. captura passiva: enquanto você joga, guarda quem dá e quem entrega cada
--      quest (id do NPC, mapa e coordenada), os objetivos e o waypoint que o
--      próprio servidor aponta para o objetivo atual.
--
-- Tudo vai para LodestarDB.scan; `tools/import_scan.py` transforma em rota.
-- Nada disso roda no Anniversary, onde o dado já é conhecido.
--=============================================================================
local ADDON, ns = ...
local S = {}
ns.Scan = S

local QL = C_QuestLog or {}

-- 12 pedidos por segundo: o servidor responde um a um e uma rajada maior
-- arrisca desconectar. 2.400 ids levam ~3 minutos.
local POR_TICK, INTERVALO = 3, 0.25
local SWEEP = 5                       -- varredura dos waypoints das quests do log

local ticker, fila, pos, pedidos

--------------------------------------------------------------------------------
-- Onde estou
--------------------------------------------------------------------------------
local function here()
	local map = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	if not map then return nil end
	local p = C_Map.GetPlayerMapPosition and C_Map.GetPlayerMapPosition(map, "player")
	if not p then return map end
	-- `a and f()` devolve UM valor: o par x,y tem que sair de uma chamada crua.
	local x, y
	if p.GetXY then x, y = p:GetXY() elseif p.x then x, y = p.x, p.y end
	if not (x and y) then return map end
	return map, x * 100, y * 100
end

local function store()
	local db = ns.db
	if not db then return nil end
	db.scan = db.scan or { quests = {}, givers = {}, enders = {}, waypoints = {} }
	return db.scan
end

--------------------------------------------------------------------------------
-- O que o cliente sabe de uma quest
--------------------------------------------------------------------------------
local function record(qid, extra)
	local sc = store()
	if not (sc and qid) then return end
	local q = sc.quests[qid] or {}
	sc.quests[qid] = q
	q.name = q.name or (QL.GetTitleForQuestID and QL.GetTitleForQuestID(qid)) or nil
	if not q.level and QL.GetQuestDifficultyLevel then
		local lvl = QL.GetQuestDifficultyLevel(qid)
		if lvl and lvl > 0 then q.level = lvl end
	end
	if extra then
		for k, v in pairs(extra) do q[k] = v end
	end
	return q
end

-- Objetivos como o servidor os descreve (texto, tipo e quanto falta).
local function objectives(qid)
	if not QL.GetQuestObjectives then return nil end
	local list = QL.GetQuestObjectives(qid)
	if not list or #list == 0 then return nil end
	local out = {}
	for i, o in ipairs(list) do
		out[i] = { text = o.text, type = o.type, need = o.numRequired }
	end
	return out
end

--------------------------------------------------------------------------------
-- 1. Varredura por id
--------------------------------------------------------------------------------
-- A lista vem gerada (ForeverData.lua): os ids que o cliente tem e nenhum banco
-- público conhece. Só é expandida quando alguém manda varrer.
local function queue()
	local out = {}
	for id in (ns.foreverUnknown or ""):gmatch("%d+") do
		out[#out + 1] = tonumber(id)
	end
	return out
end

local function step()
	local sc = store()
	for _ = 1, POR_TICK do
		pos = pos + 1
		local qid = fila[pos]
		if not qid then
			S:Stop()
			return
		end
		if not (sc and sc.quests[qid] and sc.quests[qid].name) then
			pedidos = pedidos + 1
			if QL.RequestLoadQuestByID then QL.RequestLoadQuestByID(qid) end
		end
	end
	if pos % 300 < POR_TICK then
		ns:Printf(ns.L.SCAN_PROGRESS, pos, #fila, S:Count())
	end
end

function S:Start()
	if ticker then return ns:Print(ns.L.SCAN_ALREADY) end
	fila, pos, pedidos = queue(), 0, 0
	if #fila == 0 then return ns:Print(ns.L.SCAN_NOLIST) end
	store()
	ticker = C_Timer and C_Timer.NewTicker and C_Timer.NewTicker(INTERVALO, step)
	if not ticker then return ns:Print(ns.L.SCAN_NOTIMER) end
	ns:Printf(ns.L.SCAN_START, #fila)
end

function S:Stop()
	if ticker then ticker:Cancel(); ticker = nil end
	ns:Printf(ns.L.SCAN_STOP, S:Count())
end

function S:Running() return ticker ~= nil end

function S:Count()
	local sc, n = store(), 0
	if sc then for _ in pairs(sc.quests) do n = n + 1 end end
	return n
end

function S:Status()
	local sc = store()
	if not sc then return end
	local q, g, e = 0, 0, 0
	for _ in pairs(sc.quests) do q = q + 1 end
	for _ in pairs(sc.givers) do g = g + 1 end
	for _ in pairs(sc.enders) do e = e + 1 end
	ns:Printf(ns.L.SCAN_STATUS, q, g, e, ticker and ("%d/%d"):format(pos or 0, #(fila or {})) or "-")
end

function S:Clear()
	local db = ns.db
	if db then db.scan = nil end
	ns:Print(ns.L.SCAN_CLEARED)
end

-- O servidor responde um id de cada vez: é aqui que o nome chega.
ns:On("QUEST_DATA_LOAD_RESULT", function(_, qid, ok)
	if ok then record(tonumber(qid)) end
end)

--------------------------------------------------------------------------------
-- 2. Captura passiva enquanto se joga
--------------------------------------------------------------------------------
local function party(qid, tabela)
	local sc = store()
	if not (sc and qid) then return end
	local map, x, y = here()
	local npc = ns.NpcID(UnitGUID and UnitGUID("npc"))
	local nome = UnitName and UnitName("npc")
	if ns.IsSecret(nome) then nome = nil end
	sc[tabela][qid] = { npc = npc, name = nome, map = map, x = x, y = y,
	                    zone = GetZoneText and GetZoneText() or nil }
end

ns:On("QUEST_DETAIL", function()
	if not ns.Client.isForever then return end
	local qid = GetQuestID and GetQuestID()
	if not qid or qid == 0 then return end
	record(qid)
	party(qid, "givers")
end)

ns:On("QUEST_COMPLETE", function()
	if not ns.Client.isForever then return end
	local qid = GetQuestID and GetQuestID()
	if not qid or qid == 0 then return end
	party(qid, "enders")
end)

ns:On("QUEST_ACCEPTED", function(_, a1, a2)
	if not ns.Client.isForever then return end
	local qid = a2 or a1                     -- no Forever o evento traz só o id
	record(tonumber(qid), { obj = objectives(tonumber(qid)) })
end)

ns:On("QUEST_TURNED_IN", function(_, qid)
	if not ns.Client.isForever then return end
	qid = tonumber(qid)
	record(qid, { done = true })
	local sc = store()
	if sc and not sc.enders[qid] then party(qid, "enders") end
end)

-- O servidor aponta para onde é o objetivo atual de cada quest do log: é a
-- coordenada que nenhum banco público tem para as zonas novas.
local function sweepWaypoints()
	if not (ns.Client.isForever and QL.GetNextWaypointForMap and QL.GetNumQuestLogEntries) then return end
	local sc = store()
	if not sc then return end
	local map = here()
	if not map then return end
	for i = 1, QL.GetNumQuestLogEntries() do
		local info = QL.GetInfo and QL.GetInfo(i)
		local qid = info and not info.isHeader and info.questID
		if qid then
			local x, y = QL.GetNextWaypointForMap(qid, map)
			if x and y then
				sc.waypoints[qid] = sc.waypoints[qid] or {}
				sc.waypoints[qid][#sc.waypoints[qid] + 1] = { map = map, x = x * 100, y = y * 100 }
				-- ponytail: guarda os pontos crus; o dedup fica no importador,
				-- que vê o conjunto todo e sabe qual virou passo.
				if #sc.waypoints[qid] > 40 then table.remove(sc.waypoints[qid], 1) end
			end
			record(qid, { obj = objectives(qid) })
		end
	end
end

ns:On("_READY", function()
	if ns.Client.isForever and ns.Every then ns:Every(SWEEP, sweepWaypoints) end
end)
