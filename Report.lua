--=============================================================================
-- Report — relatar um problema (specs/revamp-polestar, R12): uma janela com o texto pronto para copiar e colar numa
-- issue — versão, cliente, guia, passo e seus objetivos, mapa e coordenada, nível, classe, raça, facção, as quests do
-- passo, a automação e os outros addons ligados. Sem nome de personagem, de reino ou de conta; nada sai sozinho.
-- No topo, o núcleo puro (ReportText, testado fora do jogo). Abaixo, a janela.
--=============================================================================
local ADDON, ns = ...
local R = {}
ns.Report = R

R.ISSUES = "https://github.com/danielcosta42/lodestar/issues"

local function yn(v) return v and "on" or "off" end

-- ctx: { version, client, locale, guide, step, total, goals = { {verb, text, id, q, done} }, zone, map, x, y, level,
-- class, race, faction, quests = { {id, title, inLog, done, progress} }, auto = { [nome] = bool }, addons = { nome } }
function R.ReportText(ctx, what)
	ctx = ctx or {}
	local out = {}
	local function add(s) out[#out + 1] = s end
	add("What went wrong: " .. (what or ""))
	add("")
	add(("Lodestar %s · client %s · %s"):format(ctx.version or "?", ctx.client or "?", ctx.locale or "?"))
	if ctx.guide then
		add(("Guide: %s · step %s/%s"):format(ctx.guide, tostring(ctx.step or "?"), tostring(ctx.total or "?")))
		for _, g in ipairs(ctx.goals or {}) do
			local ref = g.id and (" ##" .. g.id) or ""
			if g.q then ref = ref .. " |q " .. g.q end
			add(("  - %s %s%s%s"):format(g.verb or "?", g.text or "", ref, g.done and " [done]" or ""))
		end
	else
		add("Guide: none")
	end
	if ctx.map then
		add(("Where: %s (map %d) %.1f, %.1f"):format(ctx.zone or "?", ctx.map, ctx.x or 0, ctx.y or 0))
	else
		add("Where: " .. (ctx.zone or "?"))
	end
	add(("Character: level %s %s %s (%s)"):format(tostring(ctx.level or "?"), ctx.race or "?", ctx.class or "?",
		ctx.faction or "?"))
	if ctx.quests and #ctx.quests > 0 then
		add("Quests in this step:")
		for _, q in ipairs(ctx.quests) do
			local st = q.done and "turned in" or q.inLog and ("in log" .. (q.progress and (" " .. q.progress) or ""))
				or "not in log"
			add(("  - %d %s: %s"):format(q.id, q.title or "?", st))
		end
	end
	if ctx.auto then
		local names = {}
		for k in pairs(ctx.auto) do names[#names + 1] = k end
		table.sort(names)
		local parts = {}
		for _, k in ipairs(names) do parts[#parts + 1] = k .. " " .. yn(ctx.auto[k]) end
		add("Automation: " .. table.concat(parts, " · "))
	end
	if ctx.addons and #ctx.addons > 0 then
		add("Other addons: " .. table.concat(ctx.addons, ", "))
	end
	if ctx.passages and #ctx.passages > 0 then
		add("Recorded passages (/ls passagem):")
		for _, p in ipairs(ctx.passages) do add("  " .. p) end
	end
	add("")
	add("Issues: " .. R.ISSUES)
	return table.concat(out, "\n")
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI

local function context()
	local ctx = { version = ns.version, locale = GetLocale and GetLocale() }
	local C = ns.Client or {}
	ctx.client = ("%s.%s (%s)"):format(tostring(C.version), tostring(C.build), tostring(C.interface))
	local g = ns.currentGuide
	if g then
		ctx.guide, ctx.step, ctx.total = g.key, ns.char.currentStep, #g.steps
		local step = ns:GetStep()
		local seen = {}
		ctx.quests, ctx.goals = {}, {}
		for _, goal in ipairs(step and step.goals or {}) do
			if ns:IsGoalActive(goal) then
				ctx.goals[#ctx.goals + 1] = { verb = goal.verb == "goto_" and "goto" or goal.verb, text = goal.text,
					id = goal.id, q = goal.q and (goal.q.id .. (goal.q.obj and ("/" .. goal.q.obj) or "")),
					done = ns:IsGoalComplete(goal) }
				local q = ns.QuestState and ns.QuestState.QuestOf(goal)
				if q and not seen[q] then
					seen[q] = true
					local inLog = ns.IsQuestInLog(q)
					ctx.quests[#ctx.quests + 1] = { id = q, title = ns.QuestState.Title(q), inLog = inLog,
						done = ns.IsQuestDone(q),
						progress = inLog and ns.QuestState.Progress(ns.QuestState.Objectives(q)) or nil }
				end
			end
		end
	end
	local map = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	ctx.zone = GetZoneText and GetZoneText() or nil
	if map then
		local pos = C_Map.GetPlayerMapPosition and C_Map.GetPlayerMapPosition(map, "player")
		if pos then
			local x, y = pos:GetXY()
			ctx.map, ctx.x, ctx.y = map, (x or 0) * 100, (y or 0) * 100
		end
	end
	ctx.level = UnitLevel("player")
	ctx.class = select(2, UnitClass("player"))
	ctx.race = select(2, UnitRace("player"))
	ctx.faction = UnitFactionGroup("player")
	local db = ns.db
	ctx.auto = { accept = db.autoAccept, turnin = db.autoTurnin, reward = db.autoReward, gossip = db.autoGossip,
		skip = db.autoSkip ~= false, flight = db.autoFlight }
	local AO = C_AddOns or {}
	local num, info, loaded = AO.GetNumAddOns or GetNumAddOns, AO.GetAddOnInfo or GetAddOnInfo,
		AO.IsAddOnLoaded or IsAddOnLoaded
	ctx.addons = {}
	if num and info and loaded then
		for i = 1, num() or 0 do
			local name = info(i)
			if name and name ~= ADDON and loaded(i) then ctx.addons[#ctx.addons + 1] = name end
		end
	end
	ctx.passages = {}
	if ns.Passages then
		for _, p in ipairs(ns.db.passages or {}) do ctx.passages[#ctx.passages + 1] = ns.Passages.Encode(p) end
	end
	return ctx
end
R.Context = context

local frame
local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarReport" })
	frame:SetSize(520, 400); frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	tinsert(UISpecialFrames, "LodestarReport")
	UI.CornerFlourish(frame)

	local header = UI.Panel(frame, { color = C.header, border = false, top = true })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(44)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", C.accent)
	line:SetPoint("TOPLEFT", 12, 0); line:SetPoint("TOPRIGHT", -12, 0); line:SetHeight(2)   -- dentro da curva do canto
	local title = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(title, 15, { title = true, color = C.active })
	title:SetPoint("LEFT", 14, 0); title:SetText(ns.L.REPORT_TITLE)
	local close = UI.CloseButton(header, function() frame:Hide() end); close:SetPoint("RIGHT", -8, 0)

	local help = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(help, 11, { color = C.muted })
	help:SetPoint("TOPLEFT", 14, -54); help:SetPoint("TOPRIGHT", -14, -54)
	help:SetJustifyH("LEFT"); help:SetWordWrap(true); help:SetText(ns.L.REPORT_HELP)

	local box = UI.Panel(frame, { color = UI.COL.card })
	box:SetPoint("TOPLEFT", 12, -92); box:SetPoint("BOTTOMRIGHT", -12, 44)
	local scroll = CreateFrame("ScrollFrame", nil, box)
	scroll:SetPoint("TOPLEFT", 8, -6); scroll:SetPoint("BOTTOMRIGHT", -8, 6)
	scroll:EnableMouseWheel(true)
	local edit = CreateFrame("EditBox", nil, scroll)
	edit:SetMultiLine(true); edit:SetAutoFocus(false); edit:SetWidth(480)
	edit:SetFontObject(ChatFontNormal or GameFontHighlightSmall)
	edit:SetTextColor(UI.unpackc(C.active))           -- a fonte do chat é branca: no claro, sumiria no cartão
	edit:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	scroll:SetScrollChild(edit)
	scroll:SetScript("OnMouseWheel", function(self, d)
		local max = math.max(0, edit:GetHeight() - self:GetHeight())
		self:SetVerticalScroll(math.max(0, math.min(max, self:GetVerticalScroll() - d * 40)))
	end)
	box:EnableMouse(true)
	box:SetScript("OnMouseDown", function() edit:SetFocus() end)
	frame.edit = edit

	local sel = UI.Button(frame, ns.L.REPORT_SELECT, 120, 24)
	sel:SetPoint("BOTTOMLEFT", 12, 12)
	sel:SetScript("OnClick", function() edit:SetFocus(); edit:HighlightText() end)
	local refresh = UI.Button(frame, ns.L.REPORT_REFRESH, 100, 24)
	refresh:SetPoint("LEFT", sel, "RIGHT", 8, 0)
	refresh:SetScript("OnClick", function() R:Fill() end)
	local url = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(url, 10, { num = true, color = C.muted })
	url:SetPoint("BOTTOMRIGHT", -14, 18); url:SetText(R.ISSUES:gsub("^https://", ""))

	frame:Hide()
	return frame
end

function R:Fill()
	build()
	local ok, ctx = pcall(context)
	frame.edit:SetText(R.ReportText(ok and ctx or { version = ns.version }, ""))
	frame.edit:SetCursorPosition(#"What went wrong: ")
	frame.edit:SetFocus()
end

function R:Show()
	build()
	frame:Show()
	R:Fill()
end
