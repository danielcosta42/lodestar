--=============================================================================
-- TargetButton — o botão de alvo (issue #92): mira o mob ou o NPC do passo com um clique ou com o atalho, e marca
-- com ícone de raide (caveira no inimigo, estrela no NPC) — pela própria macro (`/tm`): neste cliente o SetRaidTarget é
-- protegido e só o clique seguro pode marcar (issue #119). Vários alvos no passo: cada clique fora de combate passa
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

-- A macro do alvo: quebra de linha fora (o nome vem do jogo ou do guia; uma quebra viraria outro comando). Com
-- `icon` (fora de combate), limpa o alvo antes — sem o mob por perto, o /targetexact deixaria o alvo de antes e a
-- marca cairia nele — e marca o que virou alvo com o `~` do /tm: só se ele não tem marca nenhuma (não alterna nem
-- troca a de outro).
function T.Macro(name, icon)
	local nome = tostring(name or ""):gsub("[\r\n]", " ")
	if not icon then return "/targetexact " .. nome end
	return "/cleartarget\n/targetexact " .. nome .. "\n/tm [@target,exists,nodead] ~" .. tonumber(icon)
end

-- O ícone de raide: 8 caveira (inimigo), 1 estrela (NPC).
function T.Icon(enemy) return enemy and 8 or 1 end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI

local button, index, targets, pendingApply = nil, 1, {}, false
local dirty = true

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

local function ensure()
	if button then return button end
	local C = UI.HUD
	button = CreateFrame("Button", "LodestarTarget", UIParent, "SecureActionButtonTemplate")
	button:SetSize(38, 38)
	button:SetFrameStrata("MEDIUM")
	button:RegisterForClicks("AnyUp", "AnyDown")
	button:SetAttribute("type", "macro")
	-- a macro roda na borda de soltar, de mouse e de tecla (o clique de mouse já é assim; a tecla seguia o
	-- ActionButtonUseKeyDown): o PostClick age depois dela, nunca antes
	button:SetAttribute("useOnKeyDown", false)
	local bg = UI.Panel(button, { color = { 0, 0, 0, 0.85 }, borderColor = UI.HUD.border })
	bg:SetAllPoints()
	button.icon = UI.Glyph(button, "alvo", "ARTWORK", 64)
	button.icon:SetPoint("TOPLEFT", 7, -7); button.icon:SetPoint("BOTTOMRIGHT", -7, 7)
	button.count = button:CreateFontString(nil, "OVERLAY")
	UI.SetFont(button.count, 11, { num = true, hud = true, color = C.active })
	button.count:SetPoint("BOTTOMRIGHT", -2, 2)
	-- depois do clique seguro (borda de soltar, a mesma da macro): fora de combate, passa ao próximo
	button:SetScript("PostClick", function(_, _, down)
		if down or InCombatLockdown() then return end
		if #targets > 1 then
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
		-- some e esquece a macro: o atalho (CLICK) roda num botão escondido
		if button then button:SetAttribute("macrotext", nil); button:Hide() end
		return
	end
	local b = ensure()
	if index > #targets then index = 1 end
	local t = targets[index]
	local icone = ns.db.markTarget ~= false and canMark() and T.Icon(t.enemy) or nil
	b:SetAttribute("macrotext", T.Macro(t.name, icone))
	b._marca = icone
	b.icon:SetVertexColor(UI.unpackc(t.enemy and UI.HUD.danger or UI.HUD.tip))
	b.count:SetText(#targets > 1 and ("%d/%d"):format(index, #targets) or "")
	reanchor(b)
	b:Show()
end

for _, ev in ipairs({ "QUEST_LOG_UPDATE", "_GUIDE_LOADED", "PLAYER_REGEN_ENABLED", "UNIT_QUEST_LOG_CHANGED" }) do
	ns:On(ev, function() dirty = true end)
end
-- entrando em combate (antes do bloqueio): a macro só mira — sem o /cleartarget, que largaria o alvo da luta quando o
-- mob do passo não está por perto
ns:On("PLAYER_REGEN_DISABLED", function()
	if button and button._marca and not InCombatLockdown() then
		local t = targets[index]
		if t then button:SetAttribute("macrotext", T.Macro(t.name)); button._marca = nil end
	end
end)
local lastStep, lastShown
ns:Every(0.5, function()
	local step, shown = ns:GetStep(), ns:UIShown() and true or false
	if dirty or pendingApply or step ~= lastStep or shown ~= lastShown then
		dirty, lastStep, lastShown = false, step, shown
		T.Apply()
	elseif button and button:IsShown() then
		reanchor(button)
	end
end)
