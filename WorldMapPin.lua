--=============================================================================
-- WorldMapPin — marca o alvo do passo atual no mapa-múndi (rota didática).
-- Defensivo: só age se a API de canvas existir; casa quando o mapa exibido
-- é o da zona-alvo.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI

local pin

local function ensurePin(canvas)
	if pin then return pin end
	pin = CreateFrame("Frame", "LodestarMapPin", canvas)
	pin:SetSize(22, 22)
	pin:SetFrameStrata("TOOLTIP")
	local ring = UI.Glyph(pin, "alvo", "OVERLAY", 128); ring:SetAllPoints()
	ring:SetVertexColor(UI.unpackc(UI.COL.accent))
	pin.ring = ring
	-- pulso sutil
	pin._t = 0
	pin:SetScript("OnUpdate", function(self, e)
		self._t = self._t + e
		local s = 1 + 0.12 * math.sin(self._t * 3)
		ring:SetSize(22 * s, 22 * s)
	end)
	return pin
end

local function update()
	local WMF = WorldMapFrame
	if not (WMF and WMF.GetCanvas and WMF:IsShown()) then
		if pin then pin:Hide() end
		return
	end
	if not ns:UIShown() then if pin then pin:Hide() end return end
	local goal = ns.Waypoint and ns.Waypoint:PickTarget()
	if not goal or not goal.goto_ then
		if pin then pin:Hide() end
		return
	end
	local shown = WMF.GetMapID and WMF:GetMapID()
	if not shown then if pin then pin:Hide() end return end

	-- coords a marcar: o ALVO (se este é o mapa dele) ou, se o alvo está longe,
	-- o HUB de transporte (cais/portal/torre) caso você esteja vendo a zona dele.
	local px, py
	local tmap = ns.TargetMapID and ns.TargetMapID(goal)
	if shown == tmap then
		px, py = goal.goto_.x, goal.goto_.y
	elseif ns.TravelPlanner and goal.goto_.zone then
		local _, hop = ns.TravelPlanner:Plan(goal.goto_.zone)
		if hop and hop.zone and ns.zoneUiMap and ns.zoneUiMap[hop.zone] == shown then
			px, py = hop.x, hop.y
		end
	end
	if not px then if pin then pin:Hide() end return end

	local ok, canvas = pcall(WMF.GetCanvas, WMF)
	if not ok or not canvas then
		if pin then pin:Hide() end
		return
	end
	local p = ensurePin(canvas)
	p:SetParent(canvas)
	local w, h = canvas:GetSize()
	if not w or w == 0 then p:Hide(); return end
	p:ClearAllPoints()
	p:SetPoint("CENTER", canvas, "TOPLEFT", (px / 100) * w, -(py / 100) * h)
	p:Show()
end

-- roda periodicamente só quando o mapa está aberto (barato)
ns:Every(0.25, function()
	if WorldMapFrame and WorldMapFrame:IsShown() then
		local ok = pcall(update)
		if not ok and pin then pin:Hide() end
	elseif pin and pin:IsShown() then
		pin:Hide()
	end
end)
