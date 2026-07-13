--=============================================================================
-- Consumables — Checklist pré-raid (Onda 2c). Lê as bags e marca o que falta:
-- flask, poções, comida, água, bandagem. Integração ChehulNet: preço dos itens
-- faltando via Profession Helper (PH.TSM). Standalone: só o preço não aparece.
--=============================================================================
local ADDON, ns = ...
local C = {}
ns.Consumables = C
local UI = ns.UI

-- Categorias de consumível de raid TBC. have = soma nas bags; done se have>=need.
-- IDs resolvidos por GetItemInfo em runtime — id errado só some, não quebra.
local CATS = {
	{ key = "flask",   need = 1, items = { 22854, 22851, 22853, 22861, 22866 } },
	{ key = "hp",      need = 5, items = { 22829 } },   -- Super Healing Potion
	{ key = "mp",      need = 5, items = { 22832 } },   -- Super Mana Potion
	{ key = "food",    need = 1, items = { 33872, 27659, 27665, 27657, 27663 } },
	{ key = "water",   need = 1, items = { 27860, 29395 } },
	{ key = "bandage", need = 5, items = { 21991 } },   -- Heavy Netherweave Bandage
}

local function count(items)
	local n = 0
	for _, id in ipairs(items) do n = n + ((GetItemCount and GetItemCount(id)) or 0) end
	return n
end

-- menor preço conhecido (PH.TSM) dos itens da categoria; nil sem PH
local function priceOf(items)
	local ph = _G.ProfessionHelper
	if not (ph and ph.TSM and ph.TSM.GetItemPrice) then return nil end
	for _, id in ipairs(items) do
		local name = GetItemInfo and GetItemInfo(id)
		if name then
			local ok, p = pcall(function() return ph.TSM:GetItemPrice(name) end)
			if ok and p and p > 0 then return p end
		end
	end
end

function C:Status()
	local out = {}
	for _, cat in ipairs(CATS) do
		local have = count(cat.items)
		local done = have >= cat.need
		out[#out + 1] = { key = cat.key, have = have, need = cat.need, done = done,
			price = (not done) and priceOf(cat.items) or nil }
	end
	return out
end

--------------------------------------------------------------------------------
local frame, rows
local ROW_H = 30

local function makeRow(parent)
	local C2 = UI.COL
	local r = CreateFrame("Frame", nil, parent); r:SetHeight(ROW_H)
	r.mark = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.mark, 14); r.mark:SetPoint("LEFT", 12, 0)
	r.name = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.name, 13, { color = C2.active })
	r.name:SetPoint("LEFT", r.mark, "RIGHT", 8, 0)
	r.right = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.right, 12, { num = true, color = C2.muted })
	r.right:SetPoint("RIGHT", -12, 0); r.right:SetJustifyH("RIGHT")
	return r
end

function C:Refresh()
	if not frame then return end
	local list = self:Status()
	rows = rows or {}
	local y = -52
	for i, st in ipairs(list) do
		local r = rows[i] or makeRow(frame); rows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", 8, y); r:SetPoint("TOPRIGHT", -8, y)
		r.name:SetText(ns.L["CONS_" .. st.key:upper()] or st.key)
		if st.done then
			r.mark:SetText("|cff5fbf88+|r")
			r.right:SetText(st.have .. "/" .. st.need); r.right:SetTextColor(UI.unpackc(UI.COL.muted))
		else
			r.mark:SetText("|cffe0796e–|r")
			local txt = st.have .. "/" .. st.need
			if st.price and GetCoinTextureString then txt = txt .. "   " .. GetCoinTextureString(st.price * st.need) end
			r.right:SetText(txt); r.right:SetTextColor(UI.unpackc(UI.COL.amber))
		end
		r:Show(); y = y - ROW_H
	end
	for i = #list + 1, #rows do rows[i]:Hide() end
	frame:SetHeight(52 + #list * ROW_H + 14)
end

local function build()
	if frame then return frame end
	local Col = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarConsumes" })
	frame:SetSize(320, 260); frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	UI.CornerFlourish(frame)

	local header = UI.Panel(frame, { color = Col.header, border = false })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(44)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", Col.accent)
	line:SetPoint("TOPLEFT"); line:SetPoint("TOPRIGHT"); line:SetHeight(2)
	local title = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(title, 15, { title = true, color = Col.active })
	title:SetPoint("LEFT", 14, 0); title:SetText(ns.L.CONS_TITLE)
	local close = UI.CloseButton(header, function() frame:Hide() end); close:SetPoint("RIGHT", -8, 0)

	frame:SetScript("OnShow", function() C:Refresh() end)
	return frame
end

function C:Show() build(); frame:Show() end
function C:Toggle() build(); if frame:IsShown() then frame:Hide() else frame:Show() end end

ns:On("BAG_UPDATE_DELAYED", function() if frame and frame:IsShown() then C:Refresh() end end)
