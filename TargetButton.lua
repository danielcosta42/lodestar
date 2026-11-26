--=============================================================================
-- TargetButton — o botão de alvo (issue #92): mira o mob ou o NPC do passo com um clique ou com o atalho, e marca
-- com ícone de raide (caveira no inimigo, estrela no NPC). Vários alvos no passo: cada clique fora de combate passa
-- para o próximo. O /targetexact pede o nome no idioma do cliente: o Lodestar aprende o nome de cada NPC do guia ao
-- ver a unidade (placa, mouse, alvo) e, sem ele, usa o do guia.
--
-- Botão SEGURO: atributos e posição só fora de combate; ancorado no UIParent (como o item da quest), nunca na
-- janela do guia. No topo, o núcleo puro (testado fora do jogo).
--=============================================================================
local ADDON, ns = ...
local T = {}
ns.TargetButton = T

-- Os alvos do passo: kill (inimigo) e talk (NPC) ativos e por fazer, um por id, na ordem do guia.
-- names[id] = nome aprendido; sem ele, o texto do guia.
function T.Targets(goals, isActive, isComplete, names)
	local out, seen = {}, {}
	for _, g in ipairs(goals or {}) do
		if (g.verb == "kill" or g.verb == "talk") and g.id and not seen[g.id]
			and (not isActive or isActive(g)) and not (isComplete and isComplete(g)) then
			seen[g.id] = true
			local name = names and names[g.id] or g.text
			if name and name ~= "" then
				out[#out + 1] = { id = g.id, name = name, enemy = g.verb == "kill" }
			end
		end
	end
	return out
end

-- A macro do alvo: quebra de linha fora (o nome vem do jogo ou do guia; uma quebra viraria outro comando).
function T.Macro(name)
	return "/targetexact " .. tostring(name or ""):gsub("[\r\n]", " ")
end

-- O ícone de raide: 8 caveira (inimigo), 1 estrela (NPC).
function T.Icon(enemy) return enemy and 8 or 1 end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI

local button, index, targets, pendingApply = nil, 1, {}, false

local function names() ns.db.npcNames = ns.db.npcNames or {}; return ns.db.npcNames end

-- os ids que importam: os do passo atual e dos próximos (o que se aprende serve logo)
local function wanted()
	local ids = {}
	local g = ns.currentGuide
	if not g then return ids end
	for i = ns.char.currentStep or 1, math.min(#g.steps, (ns.char.currentStep or 1) + 20) do
		for _, goal in ipairs(g.steps[i].goals) do
			if (goal.verb == "kill" or goal.verb == "talk") and goal.id then ids[goal.id] = true end
		end
	end
	return ids
end
local wantedIds = {}

local function learn(unit)
	if not (unit and UnitExists(unit)) or ns.IsSecret(unit) then return end
	local id = ns.NpcID(UnitGUID(unit))
	if not (id and wantedIds[id]) then return end
	local name = UnitName(unit)
	if name and not ns.IsSecret(name) and name ~= "" then names()[id] = name end
end
ns:On("NAME_PLATE_UNIT_ADDED", function(_, unit) learn(unit) end)
ns:On("UPDATE_MOUSEOVER_UNIT", function() learn("mouseover") end)
ns:On("PLAYER_TARGET_CHANGED", function() learn("target") end)

-- a marca: sozinho ou em grupo; em raide só quem lidera ou ajuda; nunca troca uma marca que já está lá
local function canMark()
	if IsInRaid and IsInRaid() then
		return (UnitIsGroupLeader and UnitIsGroupLeader("player")) or (UnitIsGroupAssistant and UnitIsGroupAssistant("player"))
	end
	return true
end
local function mark(t)
	if ns.db.markTarget == false or not (t and UnitExists("target")) then return end
	if not canMark() or (GetRaidTargetIndex and GetRaidTargetIndex("target")) then return end
	local id = ns.NpcID(UnitGUID("target"))
	if id ~= t.id then return end                       -- o /targetexact pegou outro (ou nada)
	if SetRaidTarget then pcall(SetRaidTarget, "target", T.Icon(t.enemy)) end
end

local function ensure()
	if button then return button end
	local C = UI.HUD
	button = CreateFrame("Button", "LodestarTarget", UIParent, "SecureActionButtonTemplate")
	button:SetSize(38, 38)
	button:SetFrameStrata("MEDIUM")
	button:RegisterForClicks("AnyUp", "AnyDown")
	button:SetAttribute("type", "macro")
	local bg = UI.Panel(button, { color = { 0, 0, 0, 0.85 }, borderColor = UI.HUD.border })
	bg:SetAllPoints()
	button.icon = UI.Glyph(button, "alvo", "ARTWORK", 64)
	button.icon:SetPoint("TOPLEFT", 7, -7); button.icon:SetPoint("BOTTOMRIGHT", -7, 7)
	button.count = button:CreateFontString(nil, "OVERLAY")
	UI.SetFont(button.count, 11, { num = true, hud = true, color = C.active })
	button.count:SetPoint("BOTTOMRIGHT", -2, 2)
	-- depois do clique seguro: marca o que virou alvo e, fora de combate, passa ao próximo
	button:SetScript("PostClick", function(_, _, down)
		if down == false then return end
		local t = targets[index]
		C_Timer.After(0.05, function() mark(t) end)
		if #targets > 1 and not InCombatLockdown() then
			index = index % #targets + 1
			T.Apply()
		end
	end)
	button:SetScript("OnEnter", function(self)
		local t = targets[index]
		if not t then return end
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(t.name, 1, 1, 1)
		GameTooltip:AddLine(ns.L.TB_TIP, 0.62, 0.66, 0.72, true)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", function() GameTooltip:Hide() end)
	button:Hide()
	return button
end

-- ao lado do item da quest: em cima da janela do guia, à esquerda (fora de combate)
local function reanchor(b)
	if InCombatLockdown() then return end
	local vf = ns.Viewer and ns.Viewer:GetFrame()
	b:ClearAllPoints()
	if vf and vf:IsShown() and vf:GetLeft() and vf:GetTop() then
		local k = vf:GetEffectiveScale() / UIParent:GetEffectiveScale()
		b:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", vf:GetLeft() * k, vf:GetTop() * k + 10)
	else
		b:SetPoint("CENTER", UIParent, "CENTER", -60, -150)
	end
end

function T.Apply()
	if InCombatLockdown() then pendingApply = true; return end
	pendingApply = false
	local step = ns:GetStep()
	wantedIds = wanted()
	local show = ns:UIShown() and ns.db.targetButton ~= false and step
	targets = show and T.Targets(step.goals, function(g) return ns:IsGoalActive(g) end,
		function(g) return ns:IsGoalComplete(g) end, names()) or {}
	if #targets == 0 then
		if button then button:Hide() end
		return
	end
	local b = ensure()
	if index > #targets then index = 1 end
	local t = targets[index]
	b:SetAttribute("macrotext", T.Macro(t.name))
	b.icon:SetVertexColor(UI.unpackc(t.enemy and UI.HUD.danger or UI.HUD.tip))
	b.count:SetText(#targets > 1 and ("%d/%d"):format(index, #targets) or "")
	reanchor(b)
	b:Show()
end

local dirty = true
for _, ev in ipairs({ "QUEST_LOG_UPDATE", "_GUIDE_LOADED", "PLAYER_REGEN_ENABLED", "UNIT_QUEST_LOG_CHANGED" }) do
	ns:On(ev, function() dirty = true end)
end
local lastStep
ns:Every(0.5, function()
	local step = ns:GetStep()
	if dirty or pendingApply or step ~= lastStep then
		dirty, lastStep = false, step
		T.Apply()
	elseif button and button:IsShown() then
		reanchor(button)
	end
end)
