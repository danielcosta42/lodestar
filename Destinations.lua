--=============================================================================
-- Destinations — para onde a rota vai. Três fontes, nesta ordem: o corpo (fantasma),
-- um destino manual (Guiar das páginas, Shift+clique num serviço ou no Ir da coordenada) e o
-- passo do guia. Ao limpar uma, vale a de baixo.
--
-- Antes do destino, as paradas (#117): serviço ou coordenada que entra no caminho em vez de
-- trocar o destino. A rota vai parada por parada, na ordem em que entraram, e depois ao destino;
-- o corpo passa na frente de tudo (as paradas esperam). Só na sessão: não vão ao SavedVariables.
--
--   dest = { zone = "Westfall" | map = uiMapID, x, y (0-100), label, red = bool }
--   parada = dest + { short = nome curto ("Reparo"), service = tipo do serviço, npc = id do NPC }
--=============================================================================
local ADDON, ns = ...
local D = {}
ns.Destinations = D

local ORDER = { "corpse", "manual", "guide" }
local slots = {}
D.stops = {}               -- as paradas, na ordem em que entraram (por D:Stops())

local function same(a, b)
	return a and b and a.zone == b.zone and a.map == b.map and a.x == b.x and a.y == b.y
end

-- Em voo ou a bordo (#117), não: a rota segue e o relógio do Travel a refaz ao pousar ou desembarcar (a chave da
-- cadeia fica velha até lá).
local function replan()
	local T = ns.Travel
	if not (T and T.Replan) then return end
	if T.Busy and T:Busy() then return end
	T:Replan(true)
end

function D:Set(kind, dest)
	if same(slots[kind], dest) then return end   -- nada mudou: não recalcula a rota
	slots[kind] = dest
	replan()
end

function D:Clear(kind)
	if slots[kind] == nil then return end
	slots[kind] = nil
	replan()
end

function D:Get(kind)
	return kind == "guide" and D.GuideTarget() or slots[kind]
end

function D:Active()
	for _, kind in ipairs(ORDER) do
		local dest = D:Get(kind)
		if dest then return dest, kind end
	end
end

--------------------------------------------------------------------------------
-- paradas (#117)
--------------------------------------------------------------------------------
function D:Stops() return self.stops end

-- Entra no fim da fila. A mesma parada duas vezes (mesmo ponto) fica uma só: devolve false.
function D:AddStop(dest)
	local list = self:Stops()
	for _, s in ipairs(list) do if same(s, dest) then return false end end
	list[#list + 1] = dest
	replan()
	return true
end

-- Tira pela posição na fila ou pela própria parada. false se não estava lá.
function D:RemoveStop(which)
	local list, i = self:Stops(), which
	if type(which) == "table" then
		i = nil
		for k, s in ipairs(list) do if s == which then i = k; break end end
	end
	if not (i and list[i]) then return false end
	table.remove(list, i)
	replan()
	return true
end

-- Chegou ou abriu a janela do serviço: a parada sai e a seta segue para a próxima.
D.DoneStop = D.RemoveStop

-- Todas, ou só as do serviço `service` (/ls train off tira só a do treinador).
function D:ClearStops(service)
	local list = self:Stops()
	local n = #list
	for i = n, 1, -1 do
		if not service or list[i].service == service then table.remove(list, i) end
	end
	if #list ~= n then replan() end
end

-- O que a rota percorre, em ordem: { { dest, kind = "stop" | o tipo do destino }, ... } — as paradas e o destino
-- ativo por último. Fantasma: só o corpo. Sem destino: só as paradas (a última faz as vezes de destino).
function D:Chain()
	local dest, kind = self:Active()
	if kind == "corpse" then return { { dest = dest, kind = kind } } end
	local out = {}
	for _, s in ipairs(self:Stops()) do out[#out + 1] = { dest = s, kind = "stop" } end
	if dest then out[#out + 1] = { dest = dest, kind = kind } end
	return out
end

-- Que tipo de serviço cada janela do jogo conclui. O vendedor só conclui o reparo se conserta (D.MerchantKinds);
-- TRAINER_SHOW se resolve na hora (D.TRAINER: classe pela distância, profissão só pelo próprio NPC — na Grande Forja
-- há treinador de quase toda profissão a 60 jd); o gossip só conclui a parada do próprio NPC (perto de uma estalagem
-- fala-se com muita gente).
D.WINDOW = {
	MERCHANT_SHOW = { repair = true, vendor = true, inn = true },
	BANKFRAME_OPENED = { bank = true },
	AUCTION_HOUSE_SHOW = { auction = true },
	TAXIMAP_OPENED = { flight = true },
	PET_STABLE_SHOW = { stable = true },
	CONFIRM_BINDER = { inn = true },
	HEARTHSTONE_BOUND = { inn = true },
	GOSSIP_SHOW = {},
}
D.TRAINER = { class = { classtrainer = true }, prof = {} }
D.NEAR = 60                 -- jardas da parada em que abrir a janela do serviço conta
D.ARRIVE = 15               -- jardas da parada em que passar por ela conta como chegar (a perna a pé do Travel)

local MERCHANT_NOREPAIR = { vendor = true, inn = true }
-- o que o vendedor aberto conclui: sem conserto (CanMerchantRepair), não o reparo
function D.MerchantKinds(canRepair)
	return canRepair and D.WINDOW.MERCHANT_SHOW or MERCHANT_NOREPAIR
end

-- As paradas que a janela aberta conclui: a do próprio NPC (pelo id), ou a do mesmo tipo de serviço com o
-- jogador a até `radius` jardas dela. `pos` = jogador no mundo; `worldOf(parada)` -> { c, x, y } | nil.
function D.MatchWindow(list, kinds, npc, pos, worldOf, radius)
	local out = {}
	for _, s in ipairs(list or {}) do
		local hit = npc and s.npc == npc
		if not hit and kinds and s.service and kinds[s.service] and pos then
			local w = worldOf(s)
			hit = w and w.c == pos.c and (w.x - pos.x) ^ 2 + (w.y - pos.y) ^ 2 <= (radius or D.NEAR) ^ 2
		end
		if hit then out[#out + 1] = s end
	end
	return out
end

-- As paradas por onde o jogador (`pos`, mundo) está passando: a até `radius` jardas, no mesmo continente (#117).
function D.Reached(list, pos, worldOf, radius)
	local out, r = {}, radius or D.ARRIVE
	if not pos then return out end
	for _, s in ipairs(list or {}) do
		local w = worldOf(s)
		if w and w.c == pos.c and (w.x - pos.x) ^ 2 + (w.y - pos.y) ^ 2 <= r * r then out[#out + 1] = s end
	end
	return out
end

-- O alvo do passo atual do guia: o primeiro objetivo ativo, não feito, com coordenada.
function D.GuideTarget()
	local step = ns.GetStep and ns:GetStep()
	if not (step and ns.UIShown and ns:UIShown()) then return nil end
	for _, goal in ipairs(step.goals) do
		local g = goal.goto_
		if g and g.zone and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
			return { zone = g.zone, x = g.x, y = g.y, label = goal.text, goal = goal }
		end
	end
end

--------------------------------------------------------------------------------
-- o corpo: fantasma com o corpo num mapa conhecido
--------------------------------------------------------------------------------
if not ns.On then return end

local function corpse()
	if not (ns.db and ns.db.corpseRoute ~= false and UnitIsGhost and UnitIsGhost("player")) then return nil end
	if not (C_DeathInfo and C_DeathInfo.GetCorpseMapPosition and C_Map) then return nil end
	-- sobe do mapa atual até o continente: o corpo aparece no primeiro que o contém
	local map, guard = C_Map.GetBestMapForUnit("player"), 0
	while map and guard < 6 do
		guard = guard + 1
		local pos = C_DeathInfo.GetCorpseMapPosition(map)
		if pos and pos.x and pos.x > 0 then
			return { map = map, x = pos.x * 100, y = pos.y * 100, label = ns.L.CORPSE, red = true }
		end
		local info = C_Map.GetMapInfo(map)
		map = info and info.parentMapID
		if map == 0 then map = nil end
	end
end

local function syncCorpse()
	local c = corpse()
	if c then D:Set("corpse", c) else D:Clear("corpse") end
end
D.Sync = syncCorpse                -- Configurações: ligar/desligar a rota até o corpo vale na hora
ns:On("PLAYER_DEAD", syncCorpse)
ns:On("PLAYER_ALIVE", syncCorpse)
ns:On("PLAYER_UNGHOST", syncCorpse)
ns:On("PLAYER_ENTERING_WORLD", syncCorpse)
-- a posição do corpo só aparece depois de soltar o espírito
ns:Every(2, function() if UnitIsGhost and UnitIsGhost("player") then syncCorpse() end end)

--------------------------------------------------------------------------------
-- parada concluída pela janela do serviço (#117)
--------------------------------------------------------------------------------
-- o NPC da janela: GUID secreto ou de objeto (caixa de correio, livro) não dá id — não casa com parada de NPC
local function npcId()
	return ns.NpcID(UnitGUID and UnitGUID("npc"))
end

local function worldOf(s)
	return ns.Travel and ns.Travel.World(s.zone, s.x, s.y, s.map)
end

local function window(kinds)
	local stops = D:Stops()
	if #stops == 0 or (UnitIsGhost and UnitIsGhost("player")) then return end
	local pos = ns.Travel and ns.Travel.PlayerWorld()
	for _, s in ipairs(D.MatchWindow(stops, kinds, npcId(), pos, worldOf)) do D:DoneStop(s) end
end

local function merchant()
	return D.MerchantKinds(CanMerchantRepair and CanMerchantRepair())
end

for event, kinds in pairs(D.WINDOW) do
	if event == "MERCHANT_SHOW" then
		ns:On(event, function() window(merchant()) end)
	else
		ns:On(event, function() window(kinds) end)
	end
end
ns:On("TRAINER_SHOW", function()
	local prof = IsTradeskillTrainer and IsTradeskillTrainer()
	window(prof and D.TRAINER.prof or D.TRAINER.class)
end)
-- o cliente de agora também avisa pela janela de interação: o tipo pelo nome no Enum (o número muda entre versões)
local INTERACTION = { Merchant = D.WINDOW.MERCHANT_SHOW, Banker = D.WINDOW.BANKFRAME_OPENED,
	Auctioneer = D.WINDOW.AUCTION_HOUSE_SHOW, TaxiNode = D.WINDOW.TAXIMAP_OPENED,
	StableMaster = D.WINDOW.PET_STABLE_SHOW, Binder = D.WINDOW.CONFIRM_BINDER }
local PIT = Enum and Enum.PlayerInteractionType
if PIT then
	local byType = {}
	for name, kinds in pairs(INTERACTION) do
		if PIT[name] then byType[PIT[name]] = kinds end
	end
	ns:On("PLAYER_INTERACTION_MANAGER_FRAME_SHOW", function(_, t)
		local kinds = byType[t]
		if kinds == D.WINDOW.MERCHANT_SHOW then kinds = merchant() end
		if kinds then window(kinds) end
	end)
end
