--=============================================================================
-- Intro — tela de boas-vindas na primeira execução (onboarding). Explica o
-- básico e abre a biblioteca. /ls intro reexibe.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local I = {}
ns.Intro = I

local frame
local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarIntro" })
	frame:SetSize(440, 300); frame:SetPoint("CENTER")
	frame:SetFrameStrata("FULLSCREEN_DIALOG"); frame:SetToplevel(true)
	frame:EnableMouse(true)

	local accent = UI.Rect(frame, "ARTWORK", C.accent)
	accent:SetPoint("TOPLEFT"); accent:SetPoint("TOPRIGHT"); accent:SetHeight(2)

	local star = UI.Glyph(frame, "estrela", "ARTWORK", 128)
	star:SetSize(30, 30); star:SetPoint("TOP", 0, -18); star:SetVertexColor(UI.unpackc(C.accent))

	frame.title = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.title, 18, { color = C.active })
	frame.title:SetPoint("TOP", star, "BOTTOM", 0, -6)
	frame.title:SetText(ns.L.INTRO_TITLE)

	frame.body = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.body, 13, { color = C.muted })
	frame.body:SetPoint("TOPLEFT", 26, -96); frame.body:SetPoint("TOPRIGHT", -26, -96)
	frame.body:SetJustifyH("LEFT"); frame.body:SetSpacing(6)
	frame.body:SetText(ns.L.INTRO_BODY)

	local btn = UI.Button(frame, ns.L.INTRO_START, 180, 28)
	btn:SetPoint("BOTTOM", 0, 18)
	btn:SetScript("OnClick", function()
		ns.db.seenIntro = true
		frame:Hide()
		if ns.GuideMenu then ns.GuideMenu:Open() end
	end)
	return frame
end

function I:Show() build(); frame:Show() end

ns:On("_READY", function()
	if not (ns.db and ns.db.seenIntro) then
		if C_Timer then C_Timer.After(1.5, function() I:Show() end) end
	end
end)
