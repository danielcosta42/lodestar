--=============================================================================
-- QuestLogTidy — arrumar o diário (specs/revamp-polestar, R6): as quests do diário que o resto da rota não usa, cada
-- uma com Abandonar, e à parte as concluídas que nenhum passo à frente entrega. A rota é o guia ativo do passo atual
-- em diante, os guias seguintes da cadeia (até 4) e as outras abas, do passo salvo em diante. Nada é abandonado sem o
-- clique; a confirmação é a do próprio jogo. A conta é de QuestState.RouteQuests/Tidy (puros, testados).
--=============================================================================
local ADDON, ns = ...
local T = {}
ns.QuestLogTidy = T
local UI = ns.UI

local W, ROW_H, MAX_ROWS = 380, 24, 16
local frame, rows = nil, {}

-- o que a rota ainda vai fazer
local function routeLists()
	local lists, seen = {}, {}
	local function add(g, from)
		if g and not seen[g.key] then
			seen[g.key] = true
			lists[#lists + 1] = { steps = ns.ensureParsed(g), from = from }
		end
	end
	local g = ns.currentGuide
	if g then
		add(g, ns.char.currentStep)
		local nxt, n = ns:NextGuideKey(g), 0
		while nxt and n < 4 do
			n = n + 1
			add(ns.guides[nxt], 1)
			nxt = ns:NextGuideKey(ns.guides[nxt])
		end
	end
	for _, k in ipairs(ns.char.openGuides or {}) do add(ns.guides[k], ns.char.steps[k] or 1) end
	return lists
end

local function logEntries()
	local out, QL = {}, C_QuestLog or {}
	if not (QL.GetNumQuestLogEntries and QL.GetInfo) then return out end
	for i = 1, QL.GetNumQuestLogEntries() or 0 do
		local info = QL.GetInfo(i)
		if info and info.questID and not info.isHeader and not info.isHidden then
			local complete = QL.IsComplete and QL.IsComplete(info.questID) or false
			out[#out + 1] = { id = info.questID, title = info.title, level = info.level, complete = complete }
		end
	end
	return out
end

function T:Lists()
	local QS = ns.QuestState
	local used, turnins = QS.RouteQuests(routeLists(), QS.IsActive)
	return QS.Tidy(logEntries(), used, turnins)
end

--------------------------------------------------------------------------------
local function makeRow(parent)
	local C = UI.COL
	local r = CreateFrame("Frame", nil, parent); r:SetHeight(ROW_H)
	r.name = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.name, 12, { color = C.active })
	r.name:SetPoint("LEFT", 12, 0); r.name:SetPoint("RIGHT", -96, 0)
	r.name:SetJustifyH("LEFT"); r.name:SetWordWrap(false)
	r.btn = UI.Button(r, ns.L.Q_MENU_ABANDON, 80, 20); r.btn:SetPoint("RIGHT", -10, 0)
	return r
end

local function heading(text)
	local fs = frame.content:CreateFontString(nil, "OVERLAY")
	UI.SetFont(fs, 10, { num = true, color = UI.COL.accent })
	fs:SetText(text)
	return fs
end

function T:Refresh()
	if not (frame and frame:IsShown()) then return end
	local L, C = ns.L, UI.COL
	for _, r in ipairs(rows) do r:Hide() end
	local unused, finished = self:Lists()
	local y, n = 0, 0
	local function section(head, list, empty)
		head:ClearAllPoints(); head:SetPoint("TOPLEFT", 12, -y); head:Show()
		y = y + 18
		if #list == 0 then
			n = n + 1
			local r = rows[n] or makeRow(frame.content); rows[n] = r
			r:ClearAllPoints(); r:SetPoint("TOPLEFT", 0, -y); r:SetPoint("TOPRIGHT", 0, -y)
			r.name:SetText(empty); r.name:SetTextColor(UI.unpackc(C.muted)); r.btn:Hide(); r:Show()
			y = y + ROW_H
			return
		end
		for i, e in ipairs(list) do
			if i > MAX_ROWS then break end
			n = n + 1
			local r = rows[n] or makeRow(frame.content); rows[n] = r
			r:ClearAllPoints(); r:SetPoint("TOPLEFT", 0, -y); r:SetPoint("TOPRIGHT", 0, -y)
			r.name:SetText(("|cff" .. UI.Hex("dim") .. "[%s]|r %s"):format(tostring(e.level or "?"), e.title or ns.QuestState.Title(e.id)))
			r.name:SetTextColor(UI.unpackc(C.active))
			r.btn:SetScript("OnClick", function() ns.QuestState.Abandon(e.id) end)
			r.btn:Show(); r:Show()
			y = y + ROW_H
		end
	end
	section(frame.headUnused, unused, L.TIDY_NONE_UNUSED)
	y = y + 8
	section(frame.headDone, finished, L.TIDY_NONE_DONE)
	frame.content:SetHeight(y)
	frame:SetHeight(56 + y + 34)
end

local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarQuestLogTidy" })
	frame:SetSize(W, 240); frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	tinsert(UISpecialFrames, "LodestarQuestLogTidy")
	UI.CornerFlourish(frame)

	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(44)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", C.accent)
	line:SetPoint("TOPLEFT"); line:SetPoint("TOPRIGHT"); line:SetHeight(2)
	local title = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(title, 15, { title = true, color = C.active })
	title:SetPoint("LEFT", 14, 0); title:SetText(ns.L.TIDY_TITLE)
	local close = UI.CloseButton(header, function() frame:Hide() end); close:SetPoint("RIGHT", -8, 0)

	frame.content = CreateFrame("Frame", nil, frame)
	frame.content:SetPoint("TOPLEFT", 0, -56); frame.content:SetPoint("TOPRIGHT", 0, -56)
	frame.headUnused = heading(ns.L.TIDY_UNUSED)
	frame.headDone = heading(ns.L.TIDY_DONE)

	local foot = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(foot, 10, { color = C.muted })
	foot:SetPoint("BOTTOMLEFT", 12, 10); foot:SetPoint("BOTTOMRIGHT", -12, 10)
	foot:SetJustifyH("LEFT"); foot:SetWordWrap(true); foot:SetText(ns.L.TIDY_FOOT)

	frame:SetScript("OnShow", function() T:Refresh() end)
	frame:Hide()
	return frame
end

function T:Show() build(); frame:Show() end
function T:Toggle() build(); if frame:IsShown() then frame:Hide() else frame:Show() end end

local pending
local function later()
	if pending or not (frame and frame:IsShown()) then return end
	pending = true
	C_Timer.After(0.3, function() pending = nil; T:Refresh() end)
end
ns:On("QUEST_LOG_UPDATE", later)
ns:On("QUEST_REMOVED", later)
