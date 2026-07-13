--=============================================================================
-- Minimap — botão redondo minimalista para abrir/fechar o Viewer.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI

local RADIUS = 80

local function build()
	if not Minimap then return end
	local btn = CreateFrame("Button", "LodestarMinimapButton", Minimap)
	btn:SetSize(30, 30)
	btn:SetFrameStrata("MEDIUM")
	btn:SetFrameLevel(8)
	btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	-- fundo escuro + acento + anel
	local bg = UI.Media(btn, "dot", "BACKGROUND"); bg:SetSize(26, 26)
	bg:SetPoint("CENTER"); bg:SetVertexColor(0.09, 0.10, 0.12, 0.95)
	local icon = UI.Icon(btn, "minimapa", "ARTWORK", 64); icon:SetSize(20, 20); icon:SetPoint("CENTER")
	local ring = UI.Media(btn, "ring", "OVERLAY"); ring:SetSize(28, 28)
	ring:SetPoint("CENTER"); ring:SetVertexColor(UI.unpackc(UI.COL.border))
	btn.ring = ring

	local function updatePos()
		local a = math.rad(ns.db.minimap.angle or 208)
		btn:SetPoint("CENTER", Minimap, "CENTER",
			math.cos(a) * RADIUS, math.sin(a) * RADIUS)
	end
	updatePos()

	-- arrastar ao redor do minimapa
	btn:RegisterForDrag("LeftButton")
	local function dragUpdate()
		local mx, my = Minimap:GetCenter()
		local scale = Minimap:GetEffectiveScale()
		local cx, cy = GetCursorPosition()
		cx, cy = cx / scale, cy / scale
		ns.db.minimap.angle = math.deg(math.atan2(cy - my, cx - mx))
		updatePos()
	end
	btn:SetScript("OnDragStart", function() btn:SetScript("OnUpdate", dragUpdate) end)
	btn:SetScript("OnDragStop", function() btn:SetScript("OnUpdate", nil) end)

	btn:SetScript("OnClick", function(_, mouse)
		if mouse == "RightButton" then
			if ns.Viewer then ns.Viewer:ToggleCollapse() end
		elseif not ns.currentGuide and ns.GuideMenu then
			ns.GuideMenu:Toggle()          -- sem guia carregado: abre a biblioteca
		elseif ns.Viewer then
			ns.Viewer:Toggle()
		end
	end)

	btn:SetScript("OnEnter", function()
		ring:SetVertexColor(UI.unpackc(UI.COL.accent))
		GameTooltip:SetOwner(btn, "ANCHOR_LEFT")
		GameTooltip:AddLine("|cfff0c26aLodestar|r")
		GameTooltip:AddLine("Clique: abrir/fechar", 0.8, 0.8, 0.8)
		GameTooltip:AddLine("Clique-direito: recolher", 0.8, 0.8, 0.8)
		GameTooltip:AddLine("Arraste: mover ao redor", 0.6, 0.6, 0.6)
		GameTooltip:Show()
	end)
	btn:SetScript("OnLeave", function()
		ring:SetVertexColor(UI.unpackc(UI.COL.border))
		GameTooltip:Hide()
	end)

	if ns.db.minimap.hide then btn:Hide() end
	ns.minimapButton = btn
end

ns:On("_READY", build)
