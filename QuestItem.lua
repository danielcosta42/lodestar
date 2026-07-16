--=============================================================================
-- QuestItem — botão SEGURO pra USAR o item da missão do passo atual (estilo Zygor).
-- Aparece acima do Viewer quando o passo tem um item usável. Detecta via:
--   1) goal explícito "use <nome>##<itemID>";
--   2) item especial da missão (GetQuestLogSpecialItemInfo — igual ao tracker).
-- SecureActionButton: atributos só mudam FORA de combate; se já configurado,
-- o clique funciona durante o combate. Mudanças em combate são adiadas.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI

local QI = {}
ns.QuestItem = QI

local QuestLog     = C_QuestLog or {}
local GetSpecial   = GetQuestLogSpecialItemInfo or QuestLog.GetQuestLogSpecialItemInfo
local NumEntries   = GetNumQuestLogEntries or QuestLog.GetNumQuestLogEntries
local GetInfo      = QuestLog.GetInfo
local ItemCount    = (C_Item and C_Item.GetItemCount) or GetItemCount or function() return 0 end
local GetIcon      = (C_Item and C_Item.GetItemIconByID) or GetItemIcon or function() return nil end
local GetCooldown  = (C_Item and C_Item.GetItemCooldown) or GetItemCooldown
local QUESTION     = 134400  -- ícone "?"

--------------------------------------------------------------------------------
-- Qual item usável o passo atual pede? Retorna itemID ou nil.
--------------------------------------------------------------------------------
local function linkItemID(link)
	local id = link and link:match("item:(%d+)")
	return id and tonumber(id) or nil
end

function QI:CurrentItem()
	local step = ns:GetStep()
	if not step then return nil end

	-- 1) AUTORITATIVO: item especial da missão (GetQuestLogSpecialItemInfo) — a rede/
	--    salve/bomba que a quest te dá. Cobre os passos "use <criatura>##id |q qid"
	--    (o ##id é o ALVO, não o item). Itera o log com o MESMO índice p/ quest e item.
	if GetSpecial and NumEntries and GetInfo then
		local want
		for _, g in ipairs(step.goals) do
			if ns:IsGoalActive(g) and not ns:IsGoalComplete(g) then
				local qid = ((g.verb == "accept" or g.verb == "turnin") and g.id) or (g.q and g.q.id)
				if qid then want = want or {}; want[qid] = true end
			end
		end
		if want then
			for i = 1, (NumEntries() or 0) do
				local info = GetInfo(i)
				if info and not info.isHeader and info.questID and want[info.questID] then
					local id = linkItemID((GetSpecial(i)))
					if id and ItemCount(id) > 0 then return id end
				end
			end
		end
	end

	-- 2) fallback: passo explícito "use <item>##<itemID>" SEM |q (aí o ##id é mesmo o
	--    item). Passos gerados de "usar na criatura" têm |q e já foram tratados acima —
	--    excluí-los aqui evita ler o ID da criatura como item (colisão de espaço de ID).
	for _, g in ipairs(step.goals) do
		if g.verb == "use" and g.id and not (g.q and g.q.id) and ns:IsGoalActive(g)
			and not ns:IsGoalComplete(g) and ItemCount(g.id) > 0 then
			return g.id
		end
	end
	return nil
end

--------------------------------------------------------------------------------
-- Botão seguro
--------------------------------------------------------------------------------
local button
local function ensureButton()
	if button then return button end
	local C = UI.COL
	button = CreateFrame("Button", "LodestarQuestItem", UIParent, "SecureActionButtonTemplate")
	button:SetSize(42, 42)
	button:SetFrameStrata("MEDIUM")
	button:RegisterForClicks("AnyUp")
	button:SetAttribute("type", "item")

	-- halo pulsante (destaque quando aparece)
	local glow = button:CreateTexture(nil, "BACKGROUND")
	glow:SetPoint("TOPLEFT", -4, 4); glow:SetPoint("BOTTOMRIGHT", 4, -4)
	glow:SetColorTexture(C.accent[1], C.accent[2], C.accent[3], 1)
	glow:SetBlendMode("ADD"); glow:SetAlpha(0)
	button.glow = glow

	local bg = UI.Panel(button, { color = { 0, 0, 0, 0.85 } })
	bg:SetAllPoints()

	button.icon = button:CreateTexture(nil, "ARTWORK")
	button.icon:SetPoint("TOPLEFT", 4, -4); button.icon:SetPoint("BOTTOMRIGHT", -4, 4)
	button.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

	button.cd = CreateFrame("Cooldown", nil, button, "CooldownFrameTemplate")
	button.cd:SetAllPoints(button.icon)

	button.count = button:CreateFontString(nil, "OVERLAY")
	UI.SetFont(button.count, 12, { num = true, color = C.active })
	button.count:SetPoint("BOTTOMRIGHT", -3, 3)

	button._t = 0
	button:SetScript("OnUpdate", function(self, e)
		self._t = self._t + e
		self.glow:SetAlpha(0.18 + 0.22 * (0.5 + 0.5 * math.sin(self._t * 3)))
	end)
	button:SetScript("OnEnter", function(self)
		if not self._item then return end
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetItemByID(self._item)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", GameTooltip_Hide or function() GameTooltip:Hide() end)

	button:Hide()
	return button
end

local function reanchor(b)
	b:ClearAllPoints()
	local vf = ns.Viewer and ns.Viewer.GetFrame and ns.Viewer:GetFrame()
	if vf and vf:IsShown() then
		b:SetPoint("BOTTOM", vf, "TOP", 0, 10)
	else
		b:SetPoint("TOP", UIParent, "TOP", 0, -180)
	end
end

local function refreshMeta(b, id)
	local n = ItemCount(id) or 0
	b.count:SetText(n > 1 and n or "")
	if GetCooldown then
		local s, d = GetCooldown(id)
		if s and d and d > 1 then b.cd:SetCooldown(s, d) else b.cd:SetCooldown(0, 0) end
	end
end

--------------------------------------------------------------------------------
-- Aplica o item desejado (só reconfigura fora de combate; senão fica pendente).
--------------------------------------------------------------------------------
local shownItem, pending

local function apply(desired)
	local b = ensureButton()
	if desired == shownItem then
		if desired then refreshMeta(b, desired) end     -- só atualiza contagem/cd
		return
	end
	if InCombatLockdown() then pending = true; return end  -- retenta pós-combate
	pending = nil
	if not desired then
		b:Hide(); shownItem, b._item = nil, nil
		return
	end
	b:SetAttribute("item", "item:" .. desired)
	b._item = desired
	b.icon:SetTexture(GetIcon(desired) or QUESTION)
	refreshMeta(b, desired)
	reanchor(b)
	b:Show()
	shownItem = desired
end

local function update()
	if not (ns:UIShown() and ns.db and ns.db.questItem ~= false) then
		if shownItem and not InCombatLockdown() then apply(nil) end
		return
	end
	apply(QI:CurrentItem())
end

QI.Update = update
ns:Every(0.3, update)
ns:On("PLAYER_REGEN_ENABLED", function() if pending then update() end end)  -- flush pós-combate
ns:On("_GUIDE_LOADED", update)
