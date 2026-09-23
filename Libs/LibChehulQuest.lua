--=============================================================================
-- LibChehulQuest — colhe do cliente do WoW: Forever o que so o servidor sabe,
-- e repassa pela malha para quem tem o companion.
--
-- COPIA VERBATIM entre os addons da familia (Lodestar, GuildOS, ...). Nao edite
-- numa copia so: mexeu, sobe o MINOR e copia para todos. Diferente do guarda do
-- ChehulNet, que reusa a PRIMEIRA copia carregada, aqui e LibStub normal — a
-- copia mais NOVA vence, entao um addon desatualizado nao prende os outros.
--
-- Por que existe: o cliente do Forever traz 6.600 ids de quest e mais nada. O
-- resto e servidor. E o dado se divide em duas metades:
--
--   "o que e"    texto, nivel, objetivos, ids-alvo.  O proprio cliente guarda em
--                Cache/WDB quando pergunta por id. Nao precisa de ninguem no mapa.
--   "onde fica"  giver, ender, coordenada, waypoint. So sabe quem passou por la.
--
-- Esta lib colhe as duas, mas so repassa "onde" — sao ~35 bytes por registro. O
-- sink completa "o que e" sozinho, pedindo o id ao servidor: a resposta cai no
-- WDB DELE, e o companion le do disco.
--
-- O host manda:
--   store()    -> tabela onde persistir (SavedVariables do host)
--   mayRelay() -> bool, consentimento para MANDAR (colher local nao depende disso)
--   isSink()   -> bool, esta maquina tem companion e recebe dos outros
--=============================================================================
local MAJOR, MINOR = "LibChehulQuest-1.0", 1
if not LibStub then return end
local lib = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then return end          -- ja ha uma copia igual ou mais nova

local QL     = C_QuestLog or {}
local GOSSIP = C_GossipInfo or {}

local PREFIX  = "ChehulQuest"       -- prefixo aberto da malha
local PROTO   = "CQ1"
local SINK_CAP = "qsink"            -- anunciado no `caps` do HELLO do ChehulNet
local SWEEP   = 5                   -- reler waypoints das quests do log (s)
local FLUSH   = 10                  -- tentar repassar a cada N segundos
local LOTE    = 10                  -- registros por mensagem

lib.host    = lib.host or nil       -- { store, mayRelay, isSink }
lib.buffer  = lib.buffer or {}      -- [chave] = registro cru, o que ainda nao foi mandado
lib.enviado = lib.enviado or {}     -- [chave] = true, para nao repetir na sessao
lib.novos   = lib.novos or {}       -- ids que chegaram de fora e o sink ainda nao pediu

--------------------------------------------------------------------------------
-- Identidade de unidade (copias proprias: a lib nao pode depender do host)
--------------------------------------------------------------------------------
local function ehSecreto(v)
	if not issecretvalue then return false end
	local ok, secreto = pcall(issecretvalue, v)
	return ok and secreto and true or false
end

-- Identidade restrita? Pergunta antes em vez de tentar e estourar.
local function identidadeSecreta(unit)
	if not C_Secrets then return false end
	if C_Secrets.HasSecretRestrictions and not C_Secrets.HasSecretRestrictions() then
		return false
	end
	if C_Secrets.ShouldUnitIdentityBeSecret then
		local ok, secreto = pcall(C_Secrets.ShouldUnitIdentityBeSecret, unit)
		if ok then return secreto and true or false end
	end
	return false
end

-- "Creature-0-4467-0-25-6-00001" -> 6. Jogador, secreto ou fora do formato: nil.
local function npcID(guid)
	if not guid or ehSecreto(guid) then return nil end
	local kind, _, _, _, _, id = strsplit("-", guid)
	if kind == "Creature" or kind == "Vehicle" then return tonumber(id) end
	return nil
end

local function unidadeDeQuest()
	if UnitExists and UnitExists("questnpc") then return "questnpc" end
	return "npc"
end

local function npcAqui(unit)
	unit = unit or unidadeDeQuest()
	if not (unit and UnitExists and UnitExists(unit)) then return nil end
	if identidadeSecreta(unit) then return nil end
	local id = npcID(UnitGUID and UnitGUID(unit))
	local nome = UnitName and UnitName(unit)
	if ehSecreto(nome) then nome = nil end
	return id, nome
end

--------------------------------------------------------------------------------
-- Onde estou
--------------------------------------------------------------------------------
local function aqui()
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

--------------------------------------------------------------------------------
-- Armazenamento
--------------------------------------------------------------------------------
local function store()
	if not (lib.host and lib.host.store) then return nil end
	local sc = lib.host.store()
	if not sc then return nil end
	sc.quests    = sc.quests or {}
	sc.givers    = sc.givers or {}
	sc.enders    = sc.enders or {}
	sc.waypoints = sc.waypoints or {}
	if not sc.meta then
		local _, build, _, interface = GetBuildInfo()
		sc.meta = {
			build     = build,
			interface = interface,
			locale    = GetLocale and GetLocale() or nil,
			faction   = UnitFactionGroup and UnitFactionGroup("player") or nil,
		}
	end
	return sc
end

-- "" e VERDADEIRO em Lua: titulo vazio grudaria e o id nunca seria repedido.
local function titulo(qid)
	local t = QL.GetTitleForQuestID and QL.GetTitleForQuestID(qid)
	if type(t) == "string" and t ~= "" then return t end
end

local function objetivos(qid)
	if not QL.GetQuestObjectives then return nil end
	local lista = QL.GetQuestObjectives(qid)
	if not lista or #lista == 0 then return nil end
	local out = {}
	for i, o in ipairs(lista) do
		out[i] = { text = o.text, type = o.type, need = o.numRequired }
	end
	return out
end

function lib:Record(qid, extra)
	local sc = store()
	if not (sc and qid) then return end
	local q = sc.quests[qid] or {}
	sc.quests[qid] = q
	q.name = q.name or titulo(qid)
	if not q.level and QL.GetQuestDifficultyLevel then
		local lvl = QL.GetQuestDifficultyLevel(qid)
		if lvl and lvl > 0 then q.level = lvl end
	end
	if q.faction == nil and GetQuestFactionGroup then
		local f = GetQuestFactionGroup(qid)     -- 0 neutro, 1 Alianca, 2 Horda
		if f then q.faction = f end
	end
	if not q.uiMap and GetQuestUiMapID then
		local m = GetQuestUiMapID(qid)
		if m and m > 0 then q.uiMap = m end
	end
	if extra then for k, v in pairs(extra) do q[k] = v end end
	return q
end

--------------------------------------------------------------------------------
-- Buffer de repasse
--
-- So "onde": e o que ninguem descobre sem estar la. A chave evita mandar duas
-- vezes o mesmo registro na mesma sessao.
--------------------------------------------------------------------------------
local function enfileira(chave, registro)
	if lib.enviado[chave] then return end
	lib.buffer[chave] = registro
end

local function ponto(map, x, y)
	return ("%d:%d:%d"):format(map or 0, math.floor((x or 0) * 100), math.floor((y or 0) * 100))
end

local function anota(qid, tabela, unit)
	local sc = store()
	if not (sc and qid) then return end
	local map, x, y = aqui()
	local npc, nome = npcAqui(unit)
	local antigo = sc[tabela][qid]
	-- Registro COM id de NPC vale mais que um sem: o pior nao sobrescreve o melhor.
	if antigo and antigo.npc and not npc then return end
	sc[tabela][qid] = { npc = npc, name = nome, map = map, x = x, y = y,
	                    zone = GetZoneText and GetZoneText() or nil, src = "play" }
	if map and x and npc then
		local tag = (tabela == "givers") and "g" or "e"
		enfileira(tag .. qid, ("%s:%d:%d:%s"):format(tag, qid, npc, ponto(map, x, y)))
	end
end

--------------------------------------------------------------------------------
-- Captura passiva
--------------------------------------------------------------------------------
local f = lib.frame or (CreateFrame and CreateFrame("Frame")) or nil
lib.frame = f

local eventos = {}

function eventos.QUEST_DETAIL()
	local qid = GetQuestID and GetQuestID()
	if not qid or qid == 0 then return end
	lib:Record(qid)
	anota(qid, "givers")
end

function eventos.QUEST_COMPLETE()
	local qid = GetQuestID and GetQuestID()
	if not qid or qid == 0 then return end
	anota(qid, "enders")
end

function eventos.QUEST_ACCEPTED(a1, a2)
	local qid = tonumber(a2 or a1)
	lib:Record(qid, { obj = objetivos(qid) })
end

function eventos.QUEST_TURNED_IN(qid)
	qid = tonumber(qid)
	lib:Record(qid, { done = true })
	local sc = store()
	if sc and not sc.enders[qid] then anota(qid, "enders") end
end

-- O servidor responde um id por vez. `ok == false` e AMBIGUO (id inexistente,
-- recusa ou throttle), entao nao marca nada como inexistente.
function eventos.QUEST_DATA_LOAD_RESULT(qid, ok)
	if ok then lib:Record(tonumber(qid)) end
end

-- GetAvailableQuests devolve TODA quest que o NPC oferece, com id e nivel, sem
-- aceitar nenhuma. Um clique rende o NPC inteiro: a frente de maior rendimento.
local function colheGossip()
	if not store() then return end
	local unit = unidadeDeQuest()
	for _, lista in ipairs({ "GetAvailableQuests", "GetActiveQuests" }) do
		if GOSSIP[lista] then
			local ok, quests = pcall(GOSSIP[lista])
			if ok and type(quests) == "table" then
				for _, q in ipairs(quests) do
					local qid = q.questID
					if qid and qid > 0 then
						lib:Record(qid, q.questLevel and q.questLevel > 0
							and { level = q.questLevel } or nil)
						anota(qid, lista == "GetAvailableQuests" and "givers" or "enders", unit)
					end
				end
			end
		end
	end
end
eventos.GOSSIP_SHOW    = colheGossip
eventos.QUEST_GREETING = colheGossip

-- O servidor aponta onde e o objetivo atual de cada quest do log: e a coordenada
-- que nenhum banco publico tem para as zonas novas.
function lib:SweepWaypoints()
	if not (QL.GetNextWaypointForMap and QL.GetNumQuestLogEntries) then return end
	local sc = store()
	if not sc then return end
	local map = aqui()
	if not map then return end
	for i = 1, QL.GetNumQuestLogEntries() do
		local info = QL.GetInfo and QL.GetInfo(i)
		local qid = info and not info.isHeader and info.questID
		if qid then
			local x, y = QL.GetNextWaypointForMap(qid, map)
			if x and y then
				local pontos = sc.waypoints[qid] or {}
				sc.waypoints[qid] = pontos
				pontos[#pontos + 1] = { map = map, x = x * 100, y = y * 100 }
				-- ponytail: guarda os pontos crus; o dedup fica no importador,
				-- que ve o conjunto todo e sabe qual virou passo.
				if #pontos > 40 then table.remove(pontos, 1) end
				-- Chave pelo PONTO, nunca pelo indice: parado no lugar cada sweep
				-- reenfileiraria o mesmo ponto, e depois que a lista satura em 40 o
				-- indice congela — a chave ja estaria em `enviado` e todo ponto novo
				-- daquela quest seria descartado do repasse em silencio.
				local pt = ponto(map, x * 100, y * 100)
				enfileira("w" .. qid .. ":" .. pt, ("w:%d:%s"):format(qid, pt))
			end
			local extra = { obj = objetivos(qid) }
			if QL.GetNextWaypointText then
				local ok, txt = pcall(QL.GetNextWaypointText, qid)
				if ok and type(txt) == "string" and txt ~= "" then extra.waypointText = txt end
			end
			if info.level and info.level > 0 then extra.level = info.level end
			lib:Record(qid, extra)
		end
	end
end

--------------------------------------------------------------------------------
-- Repasse pela malha
--
-- Sussurro direto para quem anuncia `qsink`, nunca transmissao para a guilda
-- inteira: so o sink precisa receber.
--------------------------------------------------------------------------------
local function sinks()
	local CN = _G.ChehulNet
	if not (CN and CN.peers) then return {} end
	local out = {}
	for nome, p in pairs(CN.peers) do
		local caps = p and p.caps
		if type(caps) == "string" and caps:find(SINK_CAP, 1, true) then
			out[#out + 1] = nome
		end
	end
	return out
end

function lib:Flush()
	if not (lib.host and lib.host.mayRelay and lib.host.mayRelay()) then return 0 end
	local mesh = _G.ChehulMesh
	if not (mesh and mesh.Whisper) then return 0 end
	local alvos = sinks()
	if #alvos == 0 then return 0 end

	-- Despeja o buffer INTEIRO, nao so o colhido depois que o sink apareceu: o
	-- membro nao guarda nada entre sessoes (SavedVariables nao volta no login).
	local lote, chaves, n = {}, {}, 0
	for chave, registro in pairs(lib.buffer) do
		lote[#lote + 1] = registro
		chaves[#chaves + 1] = chave
		if #lote >= LOTE then break end
	end
	if #lote == 0 then return 0 end

	local payload = PROTO .. "|" .. table.concat(lote, ";")
	-- `false` = AceComm fora do ar ou alvo vazio. Dar o lote por enviado ali o
	-- perderia pela sessao inteira, e a sessao e tudo que o membro tem (o
	-- SavedVariables nao volta no login). Nao entregou, continua na fila.
	local entregue = false
	for _, alvo in ipairs(alvos) do
		local ok, foi = pcall(mesh.Whisper, mesh, PREFIX, payload, alvo)
		if ok and foi then entregue = true end
	end
	if not entregue then return 0 end
	for _, chave in ipairs(chaves) do
		lib.enviado[chave] = true
		lib.buffer[chave] = nil
		n = n + 1
	end
	return n
end

-- Lado sink: chega de outro jogador. O nome de quem mandou e DESCARTADO — o
-- registro e fato do mundo ("o NPC tal fica em tal ponto"), nada sobre a pessoa.
function lib:OnRelay(payload)
	if not (lib.host and lib.host.isSink and lib.host.isSink()) then return 0 end
	local sc = store()
	if not (sc and type(payload) == "string") then return 0 end
	local proto, corpo = strsplit("|", payload)
	if proto ~= PROTO or not corpo then return 0 end

	local n = 0
	for registro in corpo:gmatch("[^;]+") do
		local tipo, a, b, c, d, e = strsplit(":", registro)
		local qid = tonumber(a)
		if qid then
			if tipo == "g" or tipo == "e" then
				local npc, map = tonumber(b), tonumber(c)
				local x, y = tonumber(d), tonumber(e)
				local tabela = (tipo == "g") and "givers" or "enders"
				if npc and map and x and y and not sc[tabela][qid] then
					sc[tabela][qid] = { npc = npc, map = map, x = x / 100, y = y / 100,
					                    src = "relay" }
					n = n + 1
				end
			elseif tipo == "w" then
				local map, x, y = tonumber(b), tonumber(c), tonumber(d)
				if map and x and y then
					local pontos = sc.waypoints[qid] or {}
					sc.waypoints[qid] = pontos
					pontos[#pontos + 1] = { map = map, x = x / 100, y = y / 100, src = "relay" }
					if #pontos > 40 then table.remove(pontos, 1) end
					n = n + 1
				end
			end
			-- Id que o sink ainda nao conhece: pede ao servidor. A resposta cai no
			-- Cache/WDB DESTA maquina, com texto, objetivos e ids-alvo, e o
			-- companion le do disco. O membro nao precisou mandar nada disso.
			if not (sc.quests[qid] and sc.quests[qid].name) then
				lib.novos[qid] = true
			end
		end
	end
	return n
end

-- Pede ao servidor os ids que chegaram de fora, devagar (um punhado por vez).
function lib:PullNew(quantos)
	if not QL.RequestLoadQuestByID then return 0 end
	local n = 0
	for qid in pairs(lib.novos) do
		lib.novos[qid] = nil
		pcall(QL.RequestLoadQuestByID, qid)
		n = n + 1
		if n >= (quantos or 3) then break end
	end
	return n
end

--------------------------------------------------------------------------------
-- Ligar
--------------------------------------------------------------------------------
function lib:Enable(host)
	-- PRIMEIRO que liga manda, como os tickers abaixo. Dois addons da
	-- familia na mesma sessao compartilham ESTA copia; deixar o ultimo trocar o host
	-- tiraria o sink do oficial (o addon que carrega depois nao recebe) em silencio.
	lib.host = lib.host or host

	-- Refia o frame ANTES do guarda de `ligado`: o LibStub reusa a mesma TABELA, entao
	-- numa sessao com duas copias o `ligado` vem da velha e o OnEvent dela ainda
	-- despacha para os `eventos` dela. Sem refiar, a copia mais nova nunca recebe
	-- evento — o oposto do que o cabecalho promete.
	if f then
		for evento in pairs(eventos) do pcall(f.RegisterEvent, f, evento) end
		f:SetScript("OnEvent", function(_, evento, ...)
			local fn = eventos[evento]
			if fn then fn(...) end
		end)
	end

	if lib.ligado then return end
	lib.ligado = true

	local mesh = _G.ChehulMesh
	if mesh and mesh.Register then
		pcall(mesh.Register, mesh, PREFIX, function(payload) lib:OnRelay(payload) end)
	end

	if C_Timer and C_Timer.NewTicker then
		C_Timer.NewTicker(SWEEP, function() lib:SweepWaypoints() end)
		C_Timer.NewTicker(FLUSH, function()
			lib:Flush()
			if lib.host and lib.host.isSink and lib.host.isSink() then lib:PullNew(3) end
		end)
	end
end

-- O host anuncia isto no `caps` do HELLO quando tem companion vivo.
lib.SINK_CAP = SINK_CAP
