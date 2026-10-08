--=============================================================================
-- FlightMap — ao abrir o mestre de voo, aponta uma seta (pulsando) sobre o destino
-- do voo da rota; sem voo na rota, sobre a zona dos próximos passos do guia. Pelo
-- TaxiFrame clássico (TaxiButton{i} + TaxiNode*).
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI

local marker

--------------------------------------------------------------------------------
-- seta pra baixo, ACIMA do ponto, com bob vertical (filha do TaxiFrame)
--------------------------------------------------------------------------------
local function ensureMarker()
	if marker then return marker end
	if not TaxiFrame then return nil end
	marker = CreateFrame("Frame", nil, TaxiFrame)
	marker:SetSize(22, 22)
	marker:SetFrameLevel((TaxiFrame:GetFrameLevel() or 1) + 20)
	local sh = UI.Glyph(marker, "seta-rota", "BACKGROUND", 128)
	sh:SetPoint("CENTER", 1, -1); sh:SetSize(22, 22)
	sh:SetRotation(math.pi); sh:SetVertexColor(0, 0, 0, 0.55)
	local tex = UI.Glyph(marker, "seta-rota", "OVERLAY", 128); tex:SetAllPoints()
	tex:SetRotation(math.pi); tex:SetVertexColor(UI.unpackc(UI.COL.accent))
	marker._t = 0
	marker:SetScript("OnUpdate", function(self, e)
		self._t = self._t + e
		if self._parent then
			self:SetPoint("BOTTOM", self._parent, "TOP", 0, 6 + 3.5 * math.sin(self._t * 5))
		end
	end)
	return marker
end

local function clearMarker()
	if marker then marker:Hide() end
end

local function place(button)
	local m = ensureMarker()
	if not m then return false end
	m._parent = button
	m:ClearAllPoints()
	m:SetPoint("BOTTOM", button, "TOP", 0, 6)
	m:Show()
	return true
end

--------------------------------------------------------------------------------
-- destinos possíveis: zonas dos próximos passos + a zona do próximo guia
--------------------------------------------------------------------------------
local localizedZone = ns.LocalizedZone

local function destinationZones()
	local zones, seen = {}, {}
	local guide = ns.currentGuide
	if not guide then return zones end
	local function add(z)
		if z and z ~= "" and not seen[z] then seen[z] = true; zones[#zones + 1] = z end
	end
	-- passos à frente (janela ampla)
	local last = math.min(#guide.steps, ns.char.currentStep + 60)
	for i = ns.char.currentStep, last do
		local step = guide.steps[i]
		if step then
			for _, g in ipairs(step.goals) do
				if g.goto_ and g.goto_.zone then add(g.goto_.zone) end
			end
		end
	end
	-- zona do próximo guia (destino de viagem, mesmo que longe na lista)
	local nxt = ns:NextGuideKey(guide)
	if nxt then
		local z = nxt:match("[^/]+$")
		if z then add((z:gsub("%s*%(.-%)%s*$", ""))) end
	end
	return zones
end

-- O nó de destino da perna de voo da rota, no idioma do cliente: o mapa de voo aberto
-- lista os nós com o id (o mesmo do TravelData), e o nome dali casa com TaxiNodeName.
local function routeFlightName()
	local route = ns.Travel and ns.Travel:Route()
	if not (route and C_TaxiMap and C_TaxiMap.GetAllTaxiNodes) then return nil end
	for i = route.leg, #route.legs do
		local leg = route.legs[i]
		if leg.k == "flight" then
			local mapID = (GetTaxiMapID and GetTaxiMapID()) or C_Map.GetBestMapForUnit("player")
			local ok, list = pcall(C_TaxiMap.GetAllTaxiNodes, mapID)
			for _, info in ipairs(ok and type(list) == "table" and list or {}) do
				if info.nodeID == leg.to then return info.name end
			end
			return nil
		end
	end
end

--------------------------------------------------------------------------------
local function highlight()
	clearMarker()
	local dbg = ns.db and ns.db.debug
	if not (NumTaxiNodes and TaxiNodeName and TaxiNodeGetType) then return end
	local want = routeFlightName()
	if want then
		for i = 1, NumTaxiNodes() or 0 do
			if TaxiNodeName(i) == want then
				local btn = _G["TaxiButton" .. i]
				if btn then place(btn) end
				return ns:Printf("%s |cfff0c26a%s|r", ns.L.FLY_TO, want)
			end
		end
		if dbg then ns:Printf("FlightMap: nó da rota '%s' não está neste mapa", want) end
	end
	if not ns:UIShown() then return end
	local zones = destinationZones()
	local n = NumTaxiNodes() or 0
	if dbg then ns:Printf("FlightMap: %d nós | destinos: %s", n, table.concat(zones, ", ")) end
	if #zones == 0 or n == 0 then return end
	local cur = (GetZoneText and GetZoneText() or ""):lower()

	for _, zone in ipairs(zones) do
		local eng, loc = zone:lower(), localizedZone(zone):lower()
		if loc ~= cur and eng ~= cur then
			for i = 1, n do
				local t = TaxiNodeGetType(i)
				if t ~= "NONE" and t ~= "CURRENT" then
					local name = (TaxiNodeName(i) or ""):lower()
					if name:find(loc, 1, true) or name:find(eng, 1, true) then
						local btn = _G["TaxiButton" .. i]
						local ok = btn and place(btn)
						if dbg then
							ns:Printf("FlightMap: casou nó #%d '%s' (tipo %s) botão=%s",
								i, TaxiNodeName(i), tostring(t), ok and "sim" or "NÃO")
						end
						ns:Printf("%s |cfff0c26a%s|r", ns.L.FLY_TO, TaxiNodeName(i))
						return
					end
				end
			end
		end
	end
	if dbg then ns:Print("FlightMap: nenhum nó de taxi casou com os destinos") end
end

--------------------------------------------------------------------------------
-- os botões do taxi são posicionados ao processar o evento; pequeno atraso
ns:On("TAXIMAP_OPENED", function() C_Timer.After(0.1, highlight) end)
ns:On("TAXIMAP_CLOSED", clearMarker)
