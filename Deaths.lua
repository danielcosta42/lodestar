--=============================================================================
-- Deaths — conta mortes (por personagem) e aponta uma seta até o seu corpo
-- enquanto você está como fantasma (volta ao corpo mais fácil).
--=============================================================================
local ADDON, ns = ...

local function corpseArrow()
	local ghost = UnitIsGhost and UnitIsGhost("player")
	if not ghost then
		-- vivo: limpa o waypoint do corpo, se for o ativo
		local c = ns.Waypoint and ns.Waypoint.custom
		if c and c._corpse and ns.Waypoint then ns.Waypoint:ClearCustom() end
		return
	end
	local DI = C_DeathInfo
	local m = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	if not (DI and DI.GetCorpseMapPosition and m and ns.Waypoint) then return end
	local pos = DI.GetCorpseMapPosition(m)
	if not pos then return end
	local x, y = pos:GetXY()
	if not x or (x == 0 and y == 0) then return end
	ns.Waypoint:SetCustom(GetZoneText and GetZoneText() or nil, x * 100, y * 100, ns.L.CORPSE)
	if ns.Waypoint.custom then ns.Waypoint.custom._corpse = true end
end

ns:On("PLAYER_DEAD", function()
	ns.char.deaths = (ns.char.deaths or 0) + 1
	if ns.Toast then
		ns.Toast:Show({ title = ns.L.YOU_DIED, text = ns.L.DEATHS_N:format(ns.char.deaths),
			color = ns.UI.COL.amber, hold = 5, glyph = "alvo" })
	end
end)
ns:On("PLAYER_ALIVE", corpseArrow)        -- dispara ao soltar o espírito e ao reviver
ns:On("PLAYER_UNGHOST", corpseArrow)
ns:On("CORPSE_IN_RANGE", corpseArrow)
ns:Every(1, corpseArrow)                  -- mantém a seta enquanto fantasma
