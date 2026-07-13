--=============================================================================
-- Share — exportar/importar guias por string (conteúdo da comunidade). Guias
-- importados persistem em ns.db.customGuides e re-registram no carregamento.
-- Formato: "##LODESTAR##<key>##<faction>##\n<corpo DSL>".
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local S = {}
ns.Share = S

--------------------------------------------------------------------------------
-- (de)serialização
--------------------------------------------------------------------------------
function S:Serialize(key)
	local g = ns.guides and ns.guides[key]
	if not g then return nil end
	local fac = (g.meta and g.meta.faction) or ""
	return ("##LODESTAR##%s##%s##\n%s"):format(key, fac, g.body or "")
end

function S:Deserialize(text)
	local key, fac, body = (text or ""):match("^%s*##LODESTAR##(.-)##(.-)##%s*\n(.*)$")
	if not key or key == "" then return nil end
	return key, (fac ~= "" and fac or nil), body
end

function S:Import(text)
	local key, fac, body = self:Deserialize(text)
	if not (key and body and body:find("%S")) then return false end
	ns.db.customGuides = ns.db.customGuides or {}
	ns.db.customGuides[key] = { body = body, faction = fac }
	ns:RegisterGuide(key, { faction = fac, author = "Import" }, body)
	return true, key
end

-- re-registra os guias importados cedo (antes do restore de guia no _READY)
ns:On("_INIT", function()
	if ns.db and ns.db.customGuides then
		for key, gd in pairs(ns.db.customGuides) do
			ns:RegisterGuide(key, { faction = gd.faction, author = "Import" }, gd.body)
		end
	end
end)

--------------------------------------------------------------------------------
-- diálogo (editbox rolável) — copiar/colar
--------------------------------------------------------------------------------
local dlg
local function build()
	if dlg then return dlg end
	local C = UI.COL
	dlg = UI.Panel(UIParent, { name = "LodestarShare" })
	dlg:SetSize(460, 320); dlg:SetPoint("CENTER")
	dlg:SetFrameStrata("DIALOG"); dlg:SetToplevel(true)
	dlg:EnableMouse(true); dlg:SetMovable(true); dlg:RegisterForDrag("LeftButton")
	dlg:SetScript("OnDragStart", dlg.StartMoving); dlg:SetScript("OnDragStop", dlg.StopMovingOrSizing)

	dlg.title = dlg:CreateFontString(nil, "OVERLAY")
	UI.SetFont(dlg.title, 14, { color = C.accent })
	dlg.title:SetPoint("TOPLEFT", 14, -12)

	local close = UI.CloseButton(dlg, function() dlg:Hide() end)
	close:SetPoint("TOPRIGHT", -6, -6)

	dlg.hint = dlg:CreateFontString(nil, "OVERLAY")
	UI.SetFont(dlg.hint, 11, { color = C.muted })
	dlg.hint:SetPoint("TOPLEFT", 14, -34)

	local sf = CreateFrame("ScrollFrame", "LodestarShareScroll", dlg, "UIPanelScrollFrameTemplate")
	sf:SetPoint("TOPLEFT", 14, -52); sf:SetPoint("BOTTOMRIGHT", -32, 46)
	local box = CreateFrame("EditBox", nil, sf)
	box:SetMultiLine(true); box:SetAutoFocus(false); box:SetFontObject(ChatFontNormal)
	box:SetWidth(400); box:SetScript("OnEscapePressed", function() dlg:Hide() end)
	sf:SetScrollChild(box)
	dlg.box = box

	dlg.action = UI.Button(dlg, ns.L.SHARE_IMPORT, 120, 24)
	dlg.action:SetPoint("BOTTOMRIGHT", -14, 12)
	dlg.action:SetScript("OnClick", function()
		local ok, key = S:Import(dlg.box:GetText())
		if ok then
			ns:Printf(ns.L.SHARE_OK, key)
			dlg:Hide()
			if ns.GuideMenu then ns.GuideMenu:Open() end
		else
			ns:Print(ns.L.SHARE_BAD)
		end
	end)
	return dlg
end

function S:ShowText(title, hint, text, importMode)
	build()
	dlg.title:SetText(title); dlg.hint:SetText(hint)
	dlg.box:SetText(text or "")
	dlg.box:SetFocus(); dlg.box:HighlightText()
	dlg.action:SetShown(importMode and true or false)
	dlg:Show()
end

function S:ShowExport(key)
	key = key or (ns.currentGuide and ns.currentGuide.key)
	local str = key and self:Serialize(key)
	if not str then return ns:Print(ns.L.SHARE_NOGUIDE) end
	self:ShowText(ns.L.SHARE_EXPORT_T, ns.L.SHARE_EXPORT_H, str, false)
end

function S:ShowImport(prefill)
	self:ShowText(ns.L.SHARE_IMPORT_T, ns.L.SHARE_IMPORT_H, prefill or "", true)
end
