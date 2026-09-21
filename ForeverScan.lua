--=============================================================================
-- ForeverScan — colhe do próprio cliente o que nenhum banco público tem.
--
-- O conteúdo novo do Forever (Riverglades, Zephras Isle, Shen'dralas) é do
-- SERVIDOR: o cliente traz 6.600 ids de quest e mais nada — sem título, sem
-- nível, sem zona, sem giver, sem objetivo. Não está em DB2, não está na
-- Questie, e não vai ser dataminado. Quem sabe é o cliente logado.
--
-- Três frentes:
--   1. varredura: pede o dado de cada quest desconhecida (`RequestLoadQuestByID`)
--      e guarda o que o servidor responder. `/ls scan`.
--   2. captura passiva: enquanto se joga, guarda quem dá e quem entrega cada
--      quest (id do NPC, mapa e coordenada), os objetivos e o waypoint que o
--      próprio servidor aponta.
--   3. colheita no gossip: todo NPC com quest lista o que oferece ANTES de você
--      aceitar. É a frente mais barata e a de maior rendimento — um clique num
--      NPC rende todas as quests dele.
--
-- Tudo vai para LodestarDB.scan; `tools/import_scan.py` transforma em rota.
--
-- ATENÇÃO: SavedVariables NÃO volta no login neste cliente. A tabela nasce
-- vazia e o logout sobrescreve o arquivo com só aquela sessão. Não dá pra
-- acumular aqui — quem acumula é o importador, que mescla muitos arquivos e os
-- `.bak`. Por isso cada sessão se identifica (`meta`), pra mesclagem saber de
-- onde cada coisa veio.
--=============================================================================
local ADDON, ns = ...
local S = {}
ns.Scan = S

local QL = C_QuestLog or {}
local GOSSIP = C_GossipInfo or {}

-- 12 pedidos por segundo: o servidor responde um a um e uma rajada maior
-- arrisca desconectar. 2.800 ids levam ~4 minutos.
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
	-- ponytail: grava uiMapID; a tradução pra areaID do Questie é do importador,
	-- que tem o zones.json inteiro pra inverter. C_MapExplorationInfo daria a
	-- areaID na origem, mas só devolve área JÁ EXPLORADA — personagem novo em
	-- zona nova não teria nada, que é exatamente o caso que importa.
end

local function store()
	local db = ns.db
	if not db then return nil end
	db.scan = db.scan or { quests = {}, givers = {}, enders = {}, waypoints = {} }
	-- De onde veio esta colheita. Sem isso, mesclar contribuição de estranhos é
	-- adivinhação: build diferente tem id diferente, e facção decide a rota.
	if not db.scan.meta then
		local _, build, _, interface = GetBuildInfo()
		db.scan.meta = {
			build     = build,
			interface = interface,
			locale    = GetLocale and GetLocale() or nil,
			faction   = UnitFactionGroup and UnitFactionGroup("player") or nil,
		}
	end
	return db.scan
end

--------------------------------------------------------------------------------
-- O que o cliente sabe de uma quest
--------------------------------------------------------------------------------
-- Título vazio é o bug clássico daqui: "" é VERDADEIRO em Lua, então `q.name or
-- ...` grudaria a string vazia e a varredura nunca pediria o id de novo.
local function title(qid)
	local t = QL.GetTitleForQuestID and QL.GetTitleForQuestID(qid)
	if type(t) == "string" and t ~= "" then return t end
end

local function record(qid, extra)
	local sc = store()
	if not (sc and qid) then return end
	local q = sc.quests[qid] or {}
	sc.quests[qid] = q
	q.name = q.name or title(qid)
	if not q.level and QL.GetQuestDifficultyLevel then
		local lvl = QL.GetQuestDifficultyLevel(qid)
		if lvl and lvl > 0 then q.level = lvl end
	end
	-- Facção e zona: dois campos que o roteador EXIGE e que nenhuma outra fonte
	-- nossa tem. Globais legados, então perguntamos se existem.
	if q.faction == nil and GetQuestFactionGroup then
		local f = GetQuestFactionGroup(qid)      -- 0 neutro, 1 Aliança, 2 Horda
		if f then q.faction = f end
	end
	if not q.uiMap and GetQuestUiMapID then
		local m = GetQuestUiMapID(qid)
		if m and m > 0 then q.uiMap = m end
	end
	if q.repeatable == nil and QL.IsRepeatableQuest then
		local ok, r = pcall(QL.IsRepeatableQuest, qid)
		if ok then q.repeatable = r and true or false end
	end
	if extra then
		for k, v in pairs(extra) do q[k] = v end
	end
	return q
end

-- Objetivos como o servidor os descreve (texto, tipo e quanto falta).
-- Em objetivo de item o texto costuma vir vazio no QUEST_ACCEPTED (o nome do
-- item ainda não carregou); por isso o sweep relê a cada 5s.
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
-- A lista vem gerada (ForeverData.lua): os ids que este cliente tem e o
-- Anniversary não. Só é expandida quando alguém manda varrer.
local function queue()
	local out = {}
	for id in (ns.foreverUnknown or ""):gmatch("%d+") do
		out[#out + 1] = tonumber(id)
	end
	return out
end

-- Já temos o dado deste id? `HaveQuestData` é o teste canônico do cliente.
local function cached(qid)
	if HaveQuestData then
		local ok, tem = pcall(HaveQuestData, qid)
		if ok and tem then return true end
	end
	local sc = store()
	return sc and sc.quests[qid] and sc.quests[qid].name ~= nil
end

local function step()
	for _ = 1, POR_TICK do
		pos = pos + 1
		local qid = fila[pos]
		if not qid then
			S:Stop()
			return
		end
		if cached(qid) then
			record(qid)                       -- já está em cache: só colhe
		else
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
-- `ok == false` é AMBÍGUO (pode ser id inexistente, recusa ou throttle), então
-- não marcamos nada como inexistente — só deixamos de colher.
ns:On("QUEST_DATA_LOAD_RESULT", function(_, qid, ok)
	if ok then record(tonumber(qid)) end
end)

--------------------------------------------------------------------------------
-- 2. Captura passiva enquanto se joga
--------------------------------------------------------------------------------
-- "questnpc" é o token certo na janela de quest; "npc" é o genérico de gossip.
local function questUnit()
	if UnitExists and UnitExists("questnpc") then return "questnpc" end
	return "npc"
end

local function party(qid, tabela, unit)
	local sc = store()
	if not (sc and qid) then return end
	local map, x, y = here()
	local npc, nome = ns.UnitNpc(unit or questUnit())
	local antigo = sc[tabela][qid]
	-- Registro com id de NPC vale mais que um sem: não deixa o pior sobrescrever.
	if antigo and antigo.npc and not npc then return end
	sc[tabela][qid] = { npc = npc, name = nome, map = map, x = x, y = y,
	                    zone = GetZoneText and GetZoneText() or nil, src = "play" }
end

ns:On("QUEST_DETAIL", function()
	local qid = GetQuestID and GetQuestID()
	if not qid or qid == 0 then return end
	record(qid)
	party(qid, "givers")
end)

ns:On("QUEST_COMPLETE", function()
	local qid = GetQuestID and GetQuestID()
	if not qid or qid == 0 then return end
	party(qid, "enders")
end)

ns:On("QUEST_ACCEPTED", function(_, a1, a2)
	local qid = a2 or a1                     -- no Forever o evento traz só o id
	record(tonumber(qid), { obj = objectives(tonumber(qid)) })
end)

ns:On("QUEST_TURNED_IN", function(_, qid)
	qid = tonumber(qid)
	record(qid, { done = true })
	local sc = store()
	if sc and not sc.enders[qid] then party(qid, "enders") end
end)

--------------------------------------------------------------------------------
-- 3. Colheita no gossip
--
-- GetAvailableQuests devolve TODA quest que este NPC oferece — com id e nível —
-- sem aceitar nada. Um clique rende o NPC inteiro, e o nível vem de graça (não
-- existe API de nível exigido neste cliente).
--------------------------------------------------------------------------------
local function harvestGossip()
	local sc = store()
	if not sc then return end
	local unit = questUnit()
	for _, lista in ipairs({ "GetAvailableQuests", "GetActiveQuests" }) do
		if GOSSIP[lista] then
			local ok, quests = pcall(GOSSIP[lista])
			if ok and type(quests) == "table" then
				for _, q in ipairs(quests) do
					local qid = q.questID
					if qid and qid > 0 then
						record(qid, q.questLevel and q.questLevel > 0
							and { level = q.questLevel } or nil)
						party(qid, lista == "GetAvailableQuests" and "givers" or "enders", unit)
					end
				end
			end
		end
	end
end

ns:On("GOSSIP_SHOW", harvestGossip)
ns:On("QUEST_GREETING", harvestGossip)

--------------------------------------------------------------------------------
-- 4. Waypoints: o servidor aponta onde é o objetivo atual de cada quest do log.
-- É a coordenada que nenhum banco público tem para as zonas novas.
--------------------------------------------------------------------------------
local function sweepWaypoints()
	if not (QL.GetNextWaypointForMap and QL.GetNumQuestLogEntries) then return end
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
				local pontos = sc.waypoints[qid]
				pontos[#pontos + 1] = { map = map, x = x * 100, y = y * 100 }
				-- ponytail: guarda os pontos crus; o dedup fica no importador,
				-- que vê o conjunto todo e sabe qual virou passo.
				if #pontos > 40 then table.remove(pontos, 1) end
			end
			local extra = { obj = objectives(qid) }
			if QL.GetNextWaypointText then
				local ok, txt = pcall(QL.GetNextWaypointText, qid)
				if ok and type(txt) == "string" and txt ~= "" then extra.waypointText = txt end
			end
			-- info.level é fonte melhor de nível que GetQuestDifficultyLevel
			if info.level and info.level > 0 then extra.level = info.level end
			record(qid, extra)
		end
	end
end

ns:On("_READY", function()
	if ns.Every then ns:Every(SWEEP, sweepWaypoints) end
end)
