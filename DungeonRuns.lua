--=============================================================================
-- DungeonRuns — contador de "corridas" (clears) da dungeon do passo atual.
-- Um passo de spam declara no goal: |dungeon <Nome> |boss <npcID[ npcID...]> |runs N
-- Detectamos a morte do boss final via combat log e incrementamos o contador
-- por dungeon (salvo no char). O Viewer mostra "N/M" no passo.
--=============================================================================
local ADDON, ns = ...
local DR = {}
ns.DungeonRuns = DR

--------------------------------------------------------------------------------
-- Alvos do passo atual: mapa [npcID] = nomeDaDungeon. Cacheado por passo/guia
-- para não recalcular a cada evento de combate (que dispara em rajada).
--------------------------------------------------------------------------------
local cacheGuide, cacheStep, cacheTargets, cacheDungeon
local function currentTargets()
	if cacheGuide == ns.currentGuide and cacheStep == ns.char.currentStep then
		return cacheTargets, cacheDungeon
	end
	local targets, dungeon = nil, nil
	local step = ns:GetStep()
	if step then
		for _, g in ipairs(step.goals) do
			if g.boss and g.dungeon then
				dungeon = g.dungeon
				for id in tostring(g.boss):gmatch("%d+") do
					targets = targets or {}
					targets[tonumber(id)] = g.dungeon
				end
			end
		end
	end
	cacheGuide, cacheStep, cacheTargets, cacheDungeon = ns.currentGuide, ns.char.currentStep, targets, dungeon
	return targets, dungeon
end

local function npcIDFromGUID(guid)
	if not guid then return nil end
	local _, _, _, _, _, id = strsplit("-", guid)
	return tonumber(id)
end

--------------------------------------------------------------------------------
-- Detecção: boss final do passo morreu -> +1 corrida naquela dungeon.
--------------------------------------------------------------------------------
ns:On("COMBAT_LOG_EVENT_UNFILTERED", function()
	if not ns.currentGuide then return end
	local targets = currentTargets()
	if not targets then return end
	local _, sub, _, _, _, _, _, destGUID = CombatLogGetCurrentEventInfo()
	-- só UNIT_DIED: PARTY_KILL dispara junto no golpe final e contaria 2x a mesma morte.
	if sub ~= "UNIT_DIED" then return end
	local id = npcIDFromGUID(destGUID)
	local dungeon = id and targets[id]
	if not dungeon then return end
	ns.char.dungeonRuns = ns.char.dungeonRuns or {}
	local n = (ns.char.dungeonRuns[dungeon] or 0) + 1
	ns.char.dungeonRuns[dungeon] = n
	ns:Debug("corrida:", dungeon, n)
	if ns.Toast then
		ns.Toast:Show({ title = ns.L.RUN_DONE, text = ("%s  ×%d"):format(dungeon, n),
			color = ns.UI.COL.done, glyph = "check" })
	end
	if ns.scheduleCheck then ns.scheduleCheck() end   -- passo `run` avança ao bater a meta
	if ns.Viewer then ns.Viewer:Refresh() end
end)

--------------------------------------------------------------------------------
function DR:CountFor(dungeon)
	return (dungeon and ns.char.dungeonRuns and ns.char.dungeonRuns[dungeon]) or 0
end

-- Zera o contador de uma dungeon (ex.: ao (re)entrar num passo). Não usado por
-- padrão — mantemos o acumulado do char —, exposto p/ um comando futuro.
function DR:Reset(dungeon)
	if ns.char.dungeonRuns then ns.char.dungeonRuns[dungeon] = nil end
	if ns.Viewer then ns.Viewer:Refresh() end
end
