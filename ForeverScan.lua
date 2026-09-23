--=============================================================================
-- ForeverScan — o fio do Lodestar sobre a LibChehulQuest.
--
-- A coleta mora na lib (Libs/LibChehulQuest.lua), que é cópia verbatim entre os
-- addons da família: assim o membro que só tem o GuildOS colhe igual, e repassa
-- pela malha para quem tem o companion.
--
-- Aqui fica o que é do Lodestar: a varredura por id (`/ls scan`), que percorre a
-- lista gerada em ForeverData.lua, e os comandos de status.
--
-- Colher local é a feature do addon e não pede nada a ninguém. MANDAR para outra
-- máquina é opt-in — `ns.db.shareQuests`, desligado por padrão.
--=============================================================================
local ADDON, ns = ...
local S = {}
ns.Scan = S

local QL = C_QuestLog or {}
local lib = LibStub and LibStub("LibChehulQuest-1.0", true)

-- 12 pedidos por segundo: o servidor responde um a um e uma rajada maior
-- arrisca desconectar. 2.800 ids levam ~4 minutos.
local POR_TICK, INTERVALO = 3, 0.25

local ticker, fila, pos, pedidos

local function store()
	local db = ns.db
	if not db then return nil end
	db.scan = db.scan or {}
	return db.scan
end

if lib then
	lib:Enable({
		store    = store,
		-- Repasse é escolha do jogador. O Lodestar não tem companion olhando
		-- para ele, então não se anuncia como sink: quem recebe é o GuildOS.
		mayRelay = function() return ns.db and ns.db.shareQuests and true or false end,
		isSink   = function() return false end,
	})
end

--------------------------------------------------------------------------------
-- Varredura por id
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
	return sc and sc.quests and sc.quests[qid] and sc.quests[qid].name ~= nil
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
			if lib then lib:Record(qid) end          -- já em cache: só colhe
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
	if sc and sc.quests then for _ in pairs(sc.quests) do n = n + 1 end end
	return n
end

function S:Status()
	local sc = store()
	if not sc then return end
	local q, g, e = 0, 0, 0
	for _ in pairs(sc.quests or {}) do q = q + 1 end
	for _ in pairs(sc.givers or {}) do g = g + 1 end
	for _ in pairs(sc.enders or {}) do e = e + 1 end
	ns:Printf(ns.L.SCAN_STATUS, q, g, e, ticker and ("%d/%d"):format(pos or 0, #(fila or {})) or "-")
end

function S:Clear()
	local db = ns.db
	if db then db.scan = nil end
	ns:Print(ns.L.SCAN_CLEARED)
end
