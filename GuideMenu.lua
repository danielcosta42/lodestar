--=============================================================================
-- GuideMenu — navegador de guias: busca + categorias + filtro por facção.
-- Necessário porque há ~190 guias (Leveling/Dungeons/Attunements/Events).
--=============================================================================
local ADDON, ns = ...
local GM = {}
ns.GuideMenu = GM
local UI = ns.UI

local ROWS = 15
local ROW_H = 22
local CAT_ORDER = { "Leveling", "Class", "Dungeons", "Attunements", "Reputation", "Dailies", "Events" }

local frame, rows, data, offset, search = nil, {}, {}, 0, ""

--------------------------------------------------------------------------------
local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarGuideMenu" })
	frame:SetSize(360, 60 + ROWS * ROW_H)
	frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true)
	frame:SetClampedToScreen(true)

	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT"); header:SetPoint("TOPRIGHT"); header:SetHeight(30)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", C.accent)
	line:SetPoint("TOPLEFT"); line:SetPoint("TOPRIGHT"); line:SetHeight(2)
	local ttl = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(ttl, 13, { color = C.active }); ttl:SetPoint("LEFT", 12, 0)
	ttl:SetText(ns.L.MENU_TITLE)
	local close = UI.CloseButton(header, function() GM:Hide() end)
	close:SetPoint("RIGHT", -6, 0)

	-- busca
	local box = UI.Panel(frame, { color = { 0, 0, 0, 0.4 } })
	box:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 8, -6)
	box:SetPoint("TOPRIGHT", header, "BOTTOMRIGHT", -8, -6)
	box:SetHeight(22)
	local edit = CreateFrame("EditBox", nil, box)
	edit:SetPoint("TOPLEFT", 7, -1); edit:SetPoint("BOTTOMRIGHT", -7, 1)
	edit:SetAutoFocus(false)
	UI.SetFont(edit, 12, { color = C.active })
	edit:SetTextInsets(0, 0, 0, 0)
	local hint = box:CreateFontString(nil, "OVERLAY")
	UI.SetFont(hint, 12, { color = C.muted }); hint:SetPoint("LEFT", 7, 0)
	hint:SetText(ns.L.MENU_SEARCH)
	edit:SetScript("OnTextChanged", function(self)
		search = self:GetText() or ""
		hint:SetShown(search == "")
		offset = 0
		GM:Rebuild()
	end)
	edit:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	frame.edit = edit

	-- lista
	local list = CreateFrame("Frame", nil, frame)
	list:SetPoint("TOPLEFT", box, "BOTTOMLEFT", 0, -6)
	list:SetPoint("TOPRIGHT", box, "BOTTOMRIGHT", 0, -6)
	list:SetHeight(ROWS * ROW_H)
	list:EnableMouseWheel(true)
	list:SetScript("OnMouseWheel", function(_, delta)
		offset = math.max(0, math.min(math.max(0, #data - ROWS), offset - delta * 3))
		GM:Render()
	end)
	frame.list = list

	for i = 1, ROWS do
		local row = CreateFrame("Button", nil, list)
		row:SetHeight(ROW_H)
		row:SetPoint("TOPLEFT", 0, -(i - 1) * ROW_H)
		row:SetPoint("TOPRIGHT", 0, -(i - 1) * ROW_H)
		local hl = UI.Rect(row, "BACKGROUND", { 1, 1, 1, 0.06 }); hl:SetAllPoints(); hl:Hide()
		row.hl = hl
		row.text = row:CreateFontString(nil, "OVERLAY")
		UI.SetFont(row.text, 12.5, { color = C.active })
		row.text:SetPoint("LEFT", 10, 0); row.text:SetPoint("RIGHT", -10, 0)
		row.text:SetJustifyH("LEFT"); row.text:SetWordWrap(false)
		row.tag = row:CreateFontString(nil, "OVERLAY")
		UI.SetFont(row.tag, 10, { num = true, color = C.muted })
		row.tag:SetPoint("RIGHT", -10, 0)
		row:SetScript("OnEnter", function(self) if self._key then hl:Show() end end)
		row:SetScript("OnLeave", function() hl:Hide() end)
		row:SetScript("OnClick", function(self)
			if self._key then ns:LoadGuide(self._key); GM:Hide() end
		end)
		rows[i] = row
	end
	return frame
end

--------------------------------------------------------------------------------
-- Monta a lista achatada (headers + guias), filtrada por facção e busca.
--------------------------------------------------------------------------------
function GM:Rebuild()
	wipe(data)
	local pf = UnitFactionGroup("player")
	local q = search:lower()
	local cats = {}
	for key, g in pairs(ns.guides) do
		local f = g.meta and g.meta.faction
		if (not f or f == pf) and (q == "" or key:lower():find(q, 1, true)) then
			local cat = key:match("^([^/]+)") or "Outros"
			cats[cat] = cats[cat] or {}
			table.insert(cats[cat], { key = key, title = key:match("[^/]+$"), fac = f })
		end
	end
	-- ordem preferida + extras
	local seen, ordered = {}, {}
	for _, c in ipairs(CAT_ORDER) do if cats[c] then ordered[#ordered + 1] = c; seen[c] = true end end
	for c in pairs(cats) do if not seen[c] then ordered[#ordered + 1] = c end end

	for _, cat in ipairs(ordered) do
		local list = cats[cat]
		table.sort(list, function(a, b) return a.title < b.title end)
		data[#data + 1] = { header = ("%s  (%d)"):format(ns.L["CAT_" .. cat] or cat, #list) }
		for _, e in ipairs(list) do data[#data + 1] = e end
	end
	self:Render()
end

function GM:Render()
	local C = UI.COL
	for i = 1, ROWS do
		local row = rows[i]
		local item = data[i + offset]
		if not item then
			row:Hide()
		else
			row:Show()
			row.hl:Hide()
			if item.header then
				row._key = nil
				row.text:SetText("|cfff0c26a" .. item.header:upper() .. "|r")
				UI.SetFont(row.text, 10.5, { num = true, color = C.accent })
				row.text:SetPoint("LEFT", 8, 0)
				row.tag:SetText("")
			else
				row._key = item.key
				UI.SetFont(row.text, 12.5, { color = C.active })
				row.text:SetPoint("LEFT", 20, 0)
				row.text:SetText(item.title)
				row.tag:SetText(item.fac == "Alliance" and "A" or item.fac == "Horde" and "H" or "")
			end
		end
	end
end

--------------------------------------------------------------------------------
function GM:Open() build(); frame:Show(); self:Rebuild(); frame.edit:SetFocus() end
function GM:Hide() if frame then frame:Hide() end end
function GM:Toggle() build(); if frame:IsShown() then frame:Hide() else self:Open() end end
