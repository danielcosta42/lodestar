--=============================================================================
-- Destinations — para onde a rota vai. Três fontes, nesta ordem: o corpo (fantasma),
-- um destino manual (Shift+clique, coordenada, serviço próximo) e o passo do guia.
-- Ao limpar uma, vale a de baixo.
--
--   dest = { zone = "Westfall" | map = uiMapID, x, y (0-100), label, red = bool }
--=============================================================================
local ADDON, ns = ...
local D = {}
ns.Destinations = D

local ORDER = { "corpse", "manual", "guide" }
local slots = {}

function D:Set(kind, dest)
	slots[kind] = dest
	if ns.Travel and ns.Travel.Replan then ns.Travel:Replan(true) end
end

function D:Clear(kind)
	if slots[kind] == nil then return end
	slots[kind] = nil
	if ns.Travel and ns.Travel.Replan then ns.Travel:Replan(true) end
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
ns:On("PLAYER_DEAD", syncCorpse)
ns:On("PLAYER_ALIVE", syncCorpse)
ns:On("PLAYER_UNGHOST", syncCorpse)
ns:On("PLAYER_ENTERING_WORLD", syncCorpse)
