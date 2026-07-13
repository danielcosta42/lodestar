--=============================================================================
-- Milestones — avisos de progressão (treinar/montaria) e /ls train, /ls prof.
--=============================================================================
local ADDON, ns = ...
local M = {}
ns.Milestones = M

local function pickInZone(list)
	local cur = GetZoneText and GetZoneText() or ""
	for _, t in ipairs(list) do
		if t.zone == cur then return t end
	end
	return list[1]
end

--------------------------------------------------------------------------------
-- /ls train — treinador da classe
--------------------------------------------------------------------------------
function M:GotoTrainer()
	local L = ns.L
	local class = select(2, UnitClass("player"))
	local fac = UnitFactionGroup("player")
	local list = ns.classTrainers and ns.classTrainers[class] and ns.classTrainers[class][fac]
	if not list or #list == 0 then
		return ns:Printf(L.TRAINER_NONE, class or "?", fac or "?")
	end
	local pick = pickInZone(list)
	ns.Waypoint:SetCustom(pick.zone, pick.x, pick.y, L.TRAINER_LABEL:format(pick.n))
	if ns.Toast then
		ns.Toast:Show({ title = L.CLASS_TRAINER,
			text = ("%s — %s"):format(pick.n, pick.zone), color = ns.UI.COL.tip, hold = 6 })
	end
	ns:Printf(L.TRAINER_POINT, pick.n, class or "?", pick.zone)
end

--------------------------------------------------------------------------------
-- /ls prof <nome> — treinador de profissão
--------------------------------------------------------------------------------
function M:GotoProfTrainer(name)
	local L = ns.L
	if not name or name == "" then return ns:Print(L.PROF_USAGE) end
	name = name:lower()
	local key
	for prof in pairs(ns.profTrainers or {}) do
		if prof:lower():find(name, 1, true) then key = prof; break end
	end
	if not key then return ns:Printf(L.PROF_NOTFOUND, name) end
	local fac = UnitFactionGroup("player")
	local list = ns.profTrainers[key] and ns.profTrainers[key][fac]
	if not list or #list == 0 then return ns:Printf(L.PROF_NONE, key, fac or "?") end
	local pick = pickInZone(list)
	ns.Waypoint:SetCustom(pick.zone, pick.x, pick.y, L.PROF_LABEL:format(key, pick.n))
	if ns.Toast then
		ns.Toast:Show({ title = L.PROF_LABEL:format(key, ""),
			text = ("%s — %s"):format(pick.n, pick.zone), color = ns.UI.COL.tip, hold = 6 })
	end
	ns:Printf(L.PROF_POINT, pick.n, key, pick.zone)
end

--------------------------------------------------------------------------------
-- Avisos ao subir de nível (montaria TBC 30/60/70; treinar a cada 2 níveis)
--------------------------------------------------------------------------------
ns:On("PLAYER_LEVEL_UP", function(_, level)
	level = tonumber(level) or UnitLevel("player")
	local T, L, A = ns.Toast, ns.L, ns.UI.COL
	if not T then return end
	if level == 30 then
		T:Show({ title = L.MOUNT_30_T, text = L.MOUNT_30_S, color = A.accent, hold = 7 })
	elseif level == 60 then
		T:Show({ title = L.MOUNT_60_T, text = L.MOUNT_60_S, color = A.accent, hold = 7 })
	elseif level == 70 then
		T:Show({ title = L.MOUNT_70_T, text = L.MOUNT_70_S, color = A.accent, hold = 8 })
	elseif level < 60 and level % 2 == 0 then
		T:Show({ title = L.TRAIN_T, text = L.TRAIN_S, color = A.tip, hold = 5 })
	end
end)

--------------------------------------------------------------------------------
-- Nudge de Pedra de Lar: sugere vincular no hub onde você vai passar um tempo,
-- economizando deslocamento. Shattrath é o caso especial (hub central do TBC).
--------------------------------------------------------------------------------
local function localizedZone(engZone)
	if ns.zoneUiMap and ns.zoneUiMap[engZone] and C_Map and C_Map.GetMapInfo then
		local info = C_Map.GetMapInfo(ns.zoneUiMap[engZone])
		if info and info.name then return info.name end
	end
	return engZone
end

-- Quantos dos próximos ~20 passos acontecem na zona atual (sinal de "vou ficar").
local function upcomingHereCount(curLower)
	local guide = ns.currentGuide
	if not guide then return 0 end
	local here = 0
	local first = ns.char.currentStep or 1
	local last = math.min(#guide.steps, first + 20)
	for i = first, last do
		local step = guide.steps[i]
		if step then
			for _, g in ipairs(step.goals) do
				if g.goto_ and g.goto_.zone then
					if localizedZone(g.goto_.zone):lower() == curLower then here = here + 1 end
					break   -- conta 1 zona por passo
				end
			end
		end
	end
	return here
end

ns:On("ZONE_CHANGED_NEW_AREA", function()
	local T = ns.Toast
	if not T then return end
	local z = GetZoneText and GetZoneText() or ""
	if z == "" then return end

	-- 1) Shattrath: portais p/ todas as capitais -> a melhor pedra do TBC
	if z:find("Shattrath") then
		if not ns.char.sawShattrath then
			ns.char.sawShattrath = true
			T:Show({ title = ns.L.SET_HEARTH_T, text = ns.L.SET_HEARTH_SHAT,
				color = ns.UI.COL.tip, hold = 9, glyph = "estrela" })
		end
		return
	end

	-- 2) hub de leveling: >=8 dos próximos passos são aqui e a pedra está longe
	ns.char.hearthNudge = ns.char.hearthNudge or {}
	local zl = z:lower()
	if ns.char.hearthNudge[zl] then return end
	local hz = ns.TravelPlanner and ns.TravelPlanner:HearthZone()
	if hz and hz:lower() == zl then return end          -- já vinculada nesta zona
	if upcomingHereCount(zl) >= 8 then
		ns.char.hearthNudge[zl] = true
		T:Show({ title = ns.L.SET_HEARTH_T, text = ns.L.SET_HEARTH_HUB:format(z),
			color = ns.UI.COL.tip, hold = 8, glyph = "estrela" })
	end
end)
