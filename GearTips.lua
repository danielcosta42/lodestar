--=============================================================================
-- GearTips — a melhoria onde o item aparece (specs/revamp-polestar, R11): uma linha no tooltip do item equipável que é
-- melhor que o equipado ("▲ Melhoria +12%") e uma seta verde na escolha de recompensa que mais melhora. A conta é a
-- do GearAdvisor (pesos por classe, proficiência à prova de idioma). Toggle ns.db.gearTips.
--=============================================================================
local ADDON, ns = ...
local G = {}
ns.GearTips = G
local UI = ns.UI

local ARROW = UI.GLYPH .. "chevron-cima-64"
local GREEN = { 0.33, 0.86, 0.47 }

local function on() return ns.db and ns.db.gearTips ~= false and ns.GearAdvisor end

-- "|T...|t Melhoria +12%" em verde (a seta é o glifo do Lodestar, tingido pelo próprio |T)
function G.Line(pct)
	local r, g, b = math.floor(GREEN[1] * 255), math.floor(GREEN[2] * 255), math.floor(GREEN[3] * 255)
	local icon = ("|T%s:12:12:0:0:64:64:0:64:0:64:%d:%d:%d|t"):format(ARROW, r, g, b)
	local txt = pct and pct > 0 and ns.L.GEAR_UPGRADE_PCT:format(pct) or ns.L.GEAR_UPGRADE
	return icon .. " " .. txt
end

--------------------------------------------------------------------------------
-- Tooltip de item (o de retail: um registro serve todos os tooltips)
--------------------------------------------------------------------------------
if TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall and Enum and Enum.TooltipDataType
	and Enum.TooltipDataType.Item and TooltipUtil and TooltipUtil.GetDisplayedItem then
	TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tt)
		if not on() or tt ~= GameTooltip and tt ~= ItemRefTooltip then return end
		local _, link = TooltipUtil.GetDisplayedItem(tt)
		-- o que já está vestido não é melhoria de si mesmo (o melhor dos dois anéis ganharia do pior)
		if not link or ns.IsSecret(link) or ns.IsEquipped(link) then return end
		local ok, gain, pct = pcall(ns.GearAdvisor.Gain, ns.GearAdvisor, link)
		if ok and gain and gain > 0 then
			tt:AddLine(G.Line(pct), GREEN[1], GREEN[2], GREEN[3])
		end
	end)
end

--------------------------------------------------------------------------------
-- Escolha de recompensa: seta verde na que mais melhora
--------------------------------------------------------------------------------
local mark

local function rewardButton(i)
	local f = QuestInfoRewardsFrame
	if f and QuestInfo_GetRewardButton then
		local ok, b = pcall(QuestInfo_GetRewardButton, f, i)
		if ok and b then return b end
	end
	if f and f.RewardButtons and f.RewardButtons[i] then return f.RewardButtons[i] end
	return _G["QuestInfoRewardsFrameQuestInfoItem" .. i] or _G["QuestInfoItem" .. i]
end

local function hideMark() if mark then mark:Hide() end end

local function markBest()
	hideMark()
	if not on() then return end
	local n = GetNumQuestChoices and GetNumQuestChoices() or 0
	if n < 2 then return end
	local best, bestGain
	for i = 1, n do
		local link = GetQuestItemLink and GetQuestItemLink("choice", i)
		local ok, gain = pcall(ns.GearAdvisor.Gain, ns.GearAdvisor, link)
		if ok and gain and gain > 0 and (not bestGain or gain > bestGain) then best, bestGain = i, gain end
	end
	local btn = best and rewardButton(best)
	if not (btn and btn:IsShown()) then return end
	if not mark then
		mark = CreateFrame("Frame", nil, UIParent)
		mark:SetSize(18, 18)
		mark.tex = mark:CreateTexture(nil, "OVERLAY")
		mark.tex:SetAllPoints(); mark.tex:SetTexture(ARROW); mark.tex:SetVertexColor(GREEN[1], GREEN[2], GREEN[3])
	end
	mark:SetParent(btn)
	mark:SetFrameLevel(btn:GetFrameLevel() + 5)
	mark:ClearAllPoints()
	mark:SetPoint("TOPLEFT", btn, "TOPLEFT", -4, 4)
	mark:Show()
end

local function later() C_Timer.After(0.15, function() pcall(markBest) end) end
ns:On("QUEST_COMPLETE", later)
ns:On("QUEST_DETAIL", later)
ns:On("QUEST_FINISHED", hideMark)
