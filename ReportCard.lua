--=============================================================================
-- ReportCard — o "boletim de leveling": dá uma NOTA (S/A/B/C/D) à sua run com
-- base em ritmo (/played vs par), mortes e quests, e cospe um card bonito e
-- compartilhável a cada marco. É o que transforma leveling numa run com placar.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local RC = {}
ns.ReportCard = RC

-- par de /played (horas) p/ cada marco — médias TBC aprox.; ajustável.
local PAR = { [10] = 3, [20] = 8, [30] = 16, [40] = 26, [50] = 40, [58] = 58, [70] = 88 }
local PTS = { 10, 20, 30, 40, 50, 58, 70 }

local function parHours(L)
	if L <= 10 then return PAR[10] * L / 10 end
	for i = 1, #PTS - 1 do
		local a, b = PTS[i], PTS[i + 1]
		if L <= b then return PAR[a] + (PAR[b] - PAR[a]) * (L - a) / (b - a) end
	end
	return PAR[70]
end

-- nota: mistura ritmo-vs-par e mortes -> letra + cor
local function grade(L, played, deaths)
	local pace = (parHours(L) * 3600) / math.max(1, played)     -- >1 = mais rápido que o par
	local dp10 = (deaths or 0) / math.max(1, L / 10)
	local s = pace * 100 - dp10 * 6
	if s >= 135 then return "S", { 1.0, 0.84, 0.25 }, s end
	if s >= 112 then return "A", { 0.45, 0.85, 0.45 }, s end
	if s >= 92 then return "B", { 0.45, 0.70, 1.0 }, s end
	if s >= 72 then return "C", { 0.92, 0.66, 0.36 }, s end
	return "D", { 0.86, 0.42, 0.42 }, s
end

local function fmtDur(sec)
	sec = math.max(0, math.floor(sec or 0))
	local d = math.floor(sec / 86400)
	local h = math.floor((sec % 86400) / 3600)
	local m = math.floor((sec % 3600) / 60)
	if d > 0 then return string.format("%dd %dh %dm", d, h, m) end   -- ex.: 27d 1h 47m
	if h > 0 then return string.format("%dh %dm", h, m) end
	return string.format("%dm", m)
end

--------------------------------------------------------------------------------
-- código compartilhável
--------------------------------------------------------------------------------
function RC:ShareCode(L, played, letter)
	local r = ns.RunTracker:Run()
	local class = select(2, UnitClass("player")) or "?"
	return ("LODESTAR|%s|%d|%d|%d|%d|%s"):format(
		class, L, played or 0, ns.char.deaths or 0, r.quests or 0, letter or "?")
end

--------------------------------------------------------------------------------
-- painel do card
--------------------------------------------------------------------------------
local card
local function build()
	if card then return card end
	local C = UI.COL
	card = UI.Panel(UIParent, { name = "LodestarCard", color = C.panel })
	card:SetSize(320, 340); card:SetPoint("CENTER")
	card:SetFrameStrata("FULLSCREEN_DIALOG"); card:SetToplevel(true)
	card:EnableMouse(true); card:SetMovable(true); card:RegisterForDrag("LeftButton")
	card:SetScript("OnDragStart", card.StartMoving); card:SetScript("OnDragStop", card.StopMovingOrSizing)

	local top = UI.Rect(card, "ARTWORK", C.accent)
	top:SetPoint("TOPLEFT"); top:SetPoint("TOPRIGHT"); top:SetHeight(3)

	local logo = card:CreateTexture(nil, "ARTWORK")
	logo:SetTexture(UI.ICON .. "logo-estrela-64")
	logo:SetSize(20, 20); logo:SetPoint("TOPLEFT", 14, -12)
	card.word = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.word, 13, { color = C.accent })
	card.word:SetPoint("LEFT", logo, "RIGHT", 6, 0); card.word:SetText("LODESTAR")
	card.sub = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.sub, 10, { color = C.muted }); card.sub:SetPoint("LEFT", card.word, "RIGHT", 6, 0)
	card.sub:SetText(ns.L.CARD_SUB)

	card.close = UI.CloseButton(card, function() card:Hide() end)
	card.close:SetPoint("TOPRIGHT", -6, -8)

	-- nota gigante
	card.grade = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.grade, 96, { outline = "THICKOUTLINE" })
	card.grade:SetPoint("TOP", 0, -44)

	card.who = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.who, 15, { color = C.active }); card.who:SetPoint("TOP", card.grade, "BOTTOM", 0, -2)

	-- stats
	card.stats = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.stats, 13, { num = true, color = C.active })
	card.stats:SetPoint("TOP", card.who, "BOTTOM", 0, -14)
	card.stats:SetJustifyH("CENTER"); card.stats:SetSpacing(6)

	card.ghost = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.ghost, 12, { num = true, color = C.accent })
	card.ghost:SetPoint("TOP", card.stats, "BOTTOM", 0, -10)

	card.copy = UI.Button(card, ns.L.CARD_COPY, 130, 24)
	card.copy:SetPoint("BOTTOMLEFT", 16, 14)
	card.shot = UI.Button(card, ns.L.CARD_SHOT, 130, 24)
	card.shot:SetPoint("BOTTOMRIGHT", -16, 14)
	card.shot:SetScript("OnClick", function()
		card.copy:Hide(); card.shot:Hide(); card.close:Hide()
		if Screenshot then Screenshot() end
		if C_Timer then C_Timer.After(0.4, function()
			card.copy:Show(); card.shot:Show(); card.close:Show()
		end) end
	end)
	card:Hide()
	return card
end

function RC:Show(L)
	build()
	local r = ns.RunTracker:Run()
	local played = r.levelPlayed[L] or ns.RunTracker:LivePlayed()
	local letter, col = grade(L, played, ns.char.deaths)
	local className = UnitClass("player") or ""
	card.grade:SetText(letter); card.grade:SetTextColor(UI.unpackc(col))
	card.who:SetText(("%s %d · %s"):format(ns.L.LEVEL_SHORT, L, className))
	card.stats:SetText(("%s: %s        %s: %d\n%s: %d"):format(
		ns.L.CARD_PLAYED, fmtDur(played), ns.L.CARD_DEATHS, ns.char.deaths or 0,
		ns.L.CARD_QUESTS, r.quests or 0))

	-- ghost racing: delta vs oponente no mesmo nível
	local opp = ns.RunTracker:Opponent()
	if opp and opp.levelPlayed and opp.levelPlayed[L] then
		local d = opp.levelPlayed[L] - played              -- >0 = você mais rápido
		local ahead = d >= 0
		card.ghost:SetText(("%s %s: %s%s"):format(ahead and ns.L.CARD_AHEAD or ns.L.CARD_BEHIND,
			opp.name or "?", ahead and "-" or "+", fmtDur(math.abs(d))))
		card.ghost:SetTextColor(UI.unpackc(ahead and UI.COL.done or UI.COL.amber))
		card.ghost:Show()
	else
		card.ghost:SetText(""); card.ghost:Hide()
	end

	card.copy:SetScript("OnClick", function()
		if ns.Share then ns.Share:ShowText(ns.L.CARD_COPY, ns.L.CARD_COPY_H, RC:ShareCode(L, played, letter), false) end
	end)
	card:Show()
end

-- chamado pelo RunTracker a cada ding (com o /played sincronizado)
function RC:OnLevel(L, total)
	if ns.RunTracker.MILESTONES[L] and ns.db and ns.db.reportCard ~= false then
		self:Show(L)
	end
end
