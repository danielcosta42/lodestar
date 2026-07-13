--=============================================================================
-- Talents — detecta pontos de talento não-gastos e sugere o próximo talento da
-- build (ns.talentBuilds), com botão "Aprender" (1 clique via LearnTalent).
-- Talentos resolvidos por {tab, tier, coluna} -> índice (à prova de idioma).
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local T = {}
ns.Talents = T

--------------------------------------------------------------------------------
-- Consulta do estado dos talentos
--------------------------------------------------------------------------------
local function unspent()
	return (UnitCharacterPoints and UnitCharacterPoints("player")) or 0
end

local function currentBuild()
	local class = select(2, UnitClass("player"))
	local list = ns.talentBuilds and ns.talentBuilds[class]
	if not list then return nil end
	local choice = ns.char and ns.char.talentBuild
	if choice then
		for _, b in ipairs(list) do if b.name == choice then return b end end
	end
	for _, b in ipairs(list) do if b.default then return b end end
	return list[1]
end

local function spentPoints()
	local total = 0
	for tab = 1, (GetNumTalentTabs and GetNumTalentTabs() or 3) do
		for i = 1, (GetNumTalents and GetNumTalents(tab) or 0) do
			total = total + (select(5, GetTalentInfo(tab, i)) or 0)
		end
	end
	return total
end

-- {tab,tier,col} -> índice do talento nesse tab (scan de GetTalentInfo)
local function talentIndex(tab, tier, col)
	for i = 1, (GetNumTalents and GetNumTalents(tab) or 0) do
		local _, _, tt, cc = GetTalentInfo(tab, i)
		if tt == tier and cc == col then return i end
	end
end

-- Próximo talento a aprender: (tab, idx, nome) ou nil.
local function nextPick()
	local b = currentBuild()
	if not (b and GetTalentInfo) then return nil end
	local pick = b.order[spentPoints() + 1]
	if not pick then return nil end
	local idx = talentIndex(pick[1], pick[2], pick[3])
	if not idx then return nil end
	return pick[1], idx, (GetTalentInfo(pick[1], idx))
end

--------------------------------------------------------------------------------
-- Painel
--------------------------------------------------------------------------------
local panel
local function reanchor()
	panel:ClearAllPoints()
	local xf = ns.XPHud and ns.XPHud.GetFrame and ns.XPHud:GetFrame()
	local vf = ns.Viewer and ns.Viewer.GetFrame and ns.Viewer:GetFrame()
	if xf and xf:IsShown() then panel:SetPoint("TOP", xf, "BOTTOM", 0, -6)
	elseif vf and vf:IsShown() then panel:SetPoint("TOP", vf, "BOTTOM", 0, -6)
	else panel:SetPoint("TOP", UIParent, "TOP", 0, -160) end
end

local function build()
	if panel then return panel end
	local C = UI.COL
	panel = UI.Panel(UIParent, { name = "LodestarTalents", color = C.panel, accentStripe = true })
	panel:SetSize(ns.db.viewer.width or 340, 34)

	local star = UI.Glyph(panel, "estrela", "ARTWORK", 64)
	star:SetSize(14, 14); star:SetPoint("LEFT", 9, 0); star:SetVertexColor(UI.unpackc(C.accent))

	panel.text = panel:CreateFontString(nil, "OVERLAY")
	UI.SetFont(panel.text, 12, { color = C.active })
	panel.text:SetPoint("LEFT", star, "RIGHT", 7, 0)
	panel.text:SetPoint("RIGHT", panel, "RIGHT", -84, 0)
	panel.text:SetJustifyH("LEFT"); panel.text:SetWordWrap(false)

	panel.btn = UI.Button(panel, ns.L.TALENT_LEARN, 72, 20)
	panel.btn:SetPoint("RIGHT", -8, 0)
	panel.btn:SetScript("OnClick", function()
		if panel._pick and LearnTalent then pcall(LearnTalent, panel._pick[1], panel._pick[2]) end
		if C_Timer then C_Timer.After(0.1, function() T:Update() end) end
	end)
	panel:Hide()
	return panel
end

function T:Update()
	if not (ns.db and ns.db.talents and ns:UIShown()) then if panel then panel:Hide() end return end
	local pts = unspent()
	if pts <= 0 then if panel then panel:Hide() end return end
	build()
	local tab, idx, name = nextPick()
	if name then
		panel._pick = { tab, idx }
		panel.text:SetText(("|cff8a94a0%s:|r %s"):format(ns.L.TALENT_NEXT, name))
		panel.btn:Show()
	else
		panel._pick = nil
		panel.text:SetText(ns.L.TALENT_POINTS:format(pts))   -- sem build p/ a classe
		panel.btn:Hide()
	end
	reanchor(); panel:Show()
end

--------------------------------------------------------------------------------
-- Avisa quando surgem pontos novos (uma vez por transição)
--------------------------------------------------------------------------------
local lastPts = 0
local function refresh(toast)
	local p = unspent()
	if toast and p > lastPts and p > 0 and ns.Toast and ns.db and ns.db.talents then
		ns.Toast:Show({ title = ns.L.TALENTS_T, text = ns.L.TALENT_POINTS:format(p),
			color = ns.UI.COL.accent, hold = 6, glyph = "estrela" })
	end
	lastPts = p
	T:Update()
end

ns:On("CHARACTER_POINTS_CHANGED", function() refresh(true) end)
ns:On("PLAYER_LEVEL_UP", function() if C_Timer then C_Timer.After(0.5, function() refresh(true) end) end end)
ns:On("PLAYER_ENTERING_WORLD", function() lastPts = unspent(); refresh(false) end)
ns:On("_GUIDE_LOADED", function() refresh(false) end)
