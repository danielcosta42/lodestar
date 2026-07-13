--=============================================================================
-- Attunements — Painel de Prontidão de Raid (Onda 1b do roadmap ChehulNet).
-- Mostra, por raid, se você está atunado / em progresso (X/Y) / não iniciado,
-- com botão pra abrir o guia de atunação. Dados em RaidAttuneData.lua; os
-- finalQuestIds batem com os do GuildOS (consistência entre os addons da família).
--=============================================================================
local ADDON, ns = ...
local A = {}
ns.Attunements = A
local UI = ns.UI
local QL = C_QuestLog

local function isDone(id)
	if QL and QL.IsQuestFlaggedCompleted then return QL.IsQuestFlaggedCompleted(id) end
	if IsQuestFlaggedCompleted then return IsQuestFlaggedCompleted(id) end
	return false
end

-- Status por raid, filtrado pela facção do player.
function A:Status()
	local pf = UnitFactionGroup and UnitFactionGroup("player")
	local out = {}
	for _, r in ipairs(ns.raidAttune or {}) do
		local okFac = r.faction == "" or (r.faction == "A" and pf == "Alliance")
			or (r.faction == "H" and pf == "Horde")
		if okFac then
			local done, total = 0, #r.chain
			for _, q in ipairs(r.chain) do if isDone(q) then done = done + 1 end end
			local complete = isDone(r.final)
			out[#out + 1] = {
				short = r.short, tier = r.tier, key = r.key, done = done, total = total,
				state = complete and "done" or (done > 0 and "progress" or "none"),
			}
		end
	end
	return out
end

--------------------------------------------------------------------------------
local frame, rows
local ROW_H = 30

local function stateInfo(state)
	local C = UI.COL
	if state == "done"     then return { 0.38, 0.74, 0.52 }, ns.L.ATT_DONE end
	if state == "progress" then return C.amber,               ns.L.ATT_PROGRESS end
	return C.muted, ns.L.ATT_NONE
end

local function makeRow(parent, i)
	local C = UI.COL
	local r = UI.Panel(parent, { color = { 1, 1, 1, i % 2 == 0 and 0.03 or 0 }, border = false })
	r:SetHeight(ROW_H)
	r.name = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.name, 13, { color = C.active })
	r.name:SetPoint("LEFT", 12, 0)
	r.tier = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.tier, 10, { num = true, color = C.muted })
	r.tier:SetPoint("LEFT", r.name, "RIGHT", 8, 0)
	r.status = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.status, 12, { num = true })
	r.status:SetPoint("RIGHT", -84, 0); r.status:SetJustifyH("RIGHT")
	r.btn = UI.Button(r, ns.L.SET_OPEN, 64, 20); r.btn:SetPoint("RIGHT", -10, 0)
	return r
end

function A:Refresh()
	if not frame then return end
	local list = self:Status()
	rows = rows or {}
	local y = -52
	for i, st in ipairs(list) do
		local r = rows[i] or makeRow(frame, i)
		rows[i] = r
		r:ClearAllPoints()
		r:SetPoint("TOPLEFT", 8, y); r:SetPoint("TOPRIGHT", -8, y)
		r.name:SetText(st.short)
		r.tier:SetText(st.tier)
		local col, label = stateInfo(st.state)
		local txt = label
		if st.state == "progress" then txt = txt .. "  " .. st.done .. "/" .. st.total end
		r.status:SetText(txt); r.status:SetTextColor(UI.unpackc(col))
		if st.key and ns.guides and ns.guides[st.key] then
			r.btn:Show()
			r.btn:SetScript("OnClick", function() ns:LoadGuide(st.key); if ns.Viewer then ns.Viewer:Show() end end)
		else
			r.btn:Hide()
		end
		r:Show()
		y = y - ROW_H
	end
	for i = #list + 1, #rows do rows[i]:Hide() end
	frame:SetHeight(52 + #list * ROW_H + 12)
end

local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarRaids" })
	frame:SetSize(340, 300)
	frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
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
	title:SetPoint("LEFT", 14, 0); title:SetText(ns.L.ATT_TITLE)
	local close = UI.CloseButton(header, function() frame:Hide() end)
	close:SetPoint("RIGHT", -8, 0)

	frame:SetScript("OnShow", function() A:Refresh() end)
	return frame
end

function A:Show() build(); frame:Show() end
function A:Hide() if frame then frame:Hide() end end
function A:Toggle() build(); if frame:IsShown() then frame:Hide() else frame:Show() end end

-- re-render quando uma quest é completada (mantém o painel vivo se aberto)
ns:On("QUEST_TURNED_IN", function() if frame and frame:IsShown() then A:Refresh() end end)
