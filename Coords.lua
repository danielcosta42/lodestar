--=============================================================================
-- Coords — mostra as coordenadas do player no minimapa e no mapa-múndi.
-- QoL geral (independente do guia); toggle ns.db.coords.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local C_Map = C_Map

local mmText, wmText

local function playerXY()
	local m = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	if not m then return nil end
	local pos = C_Map.GetPlayerMapPosition and C_Map.GetPlayerMapPosition(m, "player")
	if not pos then return nil end
	local x, y = pos:GetXY()
	if not x or (x == 0 and y == 0) then return nil end
	return x * 100, y * 100
end

local function ensure()
	if not mmText and Minimap then
		mmText = Minimap:CreateFontString(nil, "OVERLAY")
		UI.SetFont(mmText, 11, { num = true, color = UI.COL.active })
		mmText:SetPoint("TOP", Minimap, "BOTTOM", 0, -2)
		local sh = Minimap:CreateFontString(nil, "BACKGROUND")   -- sombra p/ legibilidade
		UI.SetFont(sh, 11, { num = true, color = { 0, 0, 0, 0.9 } })
		sh:SetPoint("CENTER", mmText, "CENTER", 1, -1)
		mmText._sh = sh
	end
	if not wmText and WorldMapFrame then
		local anchor = WorldMapFrame:GetCanvasContainer() or WorldMapFrame
		wmText = anchor:CreateFontString(nil, "OVERLAY")
		UI.SetFont(wmText, 13, { num = true, color = UI.COL.active })
		wmText:SetPoint("BOTTOM", anchor, "BOTTOM", 0, 8)
		wmText:SetDrawLayer("OVERLAY", 7)
	end
end

local function update()
	if not (ns.db and ns.db.coords) then
		if mmText then mmText:Hide(); mmText._sh:Hide() end
		if wmText then wmText:Hide() end
		return
	end
	ensure()
	local x, y = playerXY()
	local s = x and ("%.1f, %.1f"):format(x, y) or nil
	if mmText then
		mmText:SetShown(s ~= nil); mmText._sh:SetShown(s ~= nil)
		if s then mmText:SetText(s); mmText._sh:SetText(s) end
	end
	if wmText and WorldMapFrame and WorldMapFrame:IsShown() and s then
		wmText:SetText(s); wmText:Show()
	elseif wmText then
		wmText:Hide()
	end
end

ns.Coords = { Update = update }
ns:Every(0.2, update)
ns:On("_READY", update)
