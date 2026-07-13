--=============================================================================
-- XPHud — painel compacto de ritmo: XP/hora, tempo estimado pro próximo nível e
-- indicador "adiantado / no ritmo / atrasado" vs a faixa de nível do guia atual.
-- Ancorado sob o Viewer por padrão; arraste pra destacar. Toggle ns.db.xpHud.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local H = {}
ns.XPHud = H

--------------------------------------------------------------------------------
-- Sessão de XP (para XP/hora)
--------------------------------------------------------------------------------
local sessXP, sessStart, prevXP, prevMax, prevLvl = 0, nil, nil, nil, nil

local function onXP()
	local xp, max, lvl = UnitXP("player"), UnitXPMax("player"), UnitLevel("player")
	if prevXP then
		local gained
		if lvl > (prevLvl or lvl) then
			gained = math.max(0, (prevMax or 0) - prevXP) + xp   -- terminou o nível + progresso novo
		else
			gained = xp - prevXP
		end
		if gained and gained > 0 then sessXP = sessXP + gained end
	end
	prevXP, prevMax, prevLvl = xp, max, lvl
end

local function xpPerHour()
	if not sessStart then return 0 end
	local hrs = (GetTime() - sessStart) / 3600
	if hrs <= 0 then return 0 end
	return sessXP / hrs
end

--------------------------------------------------------------------------------
-- formatação
--------------------------------------------------------------------------------
local function fmtNum(n)
	n = n or 0
	if n >= 1e6 then return ("%.1fM"):format(n / 1e6) end
	if n >= 1000 then return ("%.0fk"):format(n / 1000) end
	return tostring(math.floor(n))
end
local function fmtTime(sec)
	if not sec or sec ~= sec or sec == math.huge or sec <= 0 then return "--" end
	local h = math.floor(sec / 3600)
	local m = math.floor((sec % 3600) / 60)
	return h > 0 and ("%dh%02d"):format(h, m) or ("%dm"):format(m)
end

-- XP p/ passar de cada nível (1..69). 1-59 = Classic exato; 60-69 = TBC (aprox.).
local XP_TO_NEXT = {
	400,900,1400,2100,2800,3600,4500,5400,6500,7600,8700,9800,11000,12300,13600,
	15000,16400,17800,19300,20800,22400,24000,25500,27200,28900,30500,32200,33900,
	36300,38800,41600,44600,48000,51400,55000,58700,62400,66200,70200,74300,78500,
	82800,87100,91600,96300,101000,105800,110700,115700,120900,126100,131500,137000,
	142500,148200,154000,159900,165800,172000,                                  -- 1..59
	290000,322900,359600,400300,445300,494700,548800,607900,672200,742000,      -- 60..69 (TBC)
}
-- tempo estimado até o nível 70 (resto do nível atual + soma dos próximos)
local function etaToMax(xph, lvl, curXP, curMax)
	if not xph or xph <= 0 or lvl >= 70 then return nil end
	local remain = (curMax or 0) - (curXP or 0)
	for L = lvl + 1, 69 do remain = remain + (XP_TO_NEXT[L] or 0) end
	return remain / xph * 3600
end

-- diferença de ritmo vs faixa do guia: >0 = adiantado, <0 = atrasado (em níveis)
local function pace()
	local g = ns.currentGuide
	if not (g and g.key and ns.char) then return nil end
	local lo, hi = g.key:match("%((%d+)%s*%-%s*(%d+)%)")
	lo, hi = tonumber(lo), tonumber(hi)
	if not (lo and hi and hi >= lo) then return nil end
	local total = g.steps and #g.steps or 1
	local frac = math.min(1, math.max(0, (ns.char.currentStep or 1) / total))
	local expected = lo + (hi - lo) * frac
	return (UnitLevel("player") or lo) - expected
end

--------------------------------------------------------------------------------
-- UI
--------------------------------------------------------------------------------
local frame
local function applyAnchor()
	if not frame then return end
	frame:ClearAllPoints()
	local p = ns.db.xpHudPos
	local vf = ns.Viewer and ns.Viewer.GetFrame and ns.Viewer:GetFrame()
	if p and p.detached then
		frame:SetWidth(ns.db.viewer.width or 340)
		frame:SetPoint(p.point or "TOP", UIParent, p.point or "TOP", p.x or 0, p.y or -120)
		if frame._border then frame._border.TOP:Show() end          -- painel completo
	elseif vf then
		frame:SetPoint("TOPLEFT", vf, "BOTTOMLEFT", 0, 1)            -- rente + largura cheia
		frame:SetPoint("TOPRIGHT", vf, "BOTTOMRIGHT", 0, 1)
		if frame._border then frame._border.TOP:Hide() end           -- sem emenda: parece 1 popup
	else
		frame:SetWidth(ns.db.viewer.width or 340)
		frame:SetPoint("TOP", UIParent, "TOP", 0, -120)
		if frame._border then frame._border.TOP:Show() end
	end
end

local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarXPHud" })
	frame:SetSize(ns.db.viewer.width or 340, 62)
	frame:SetMovable(true); frame:EnableMouse(true); frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function(self)
		-- grudado -> solta na posição atual e passa a flutuar
		if not (ns.db.xpHudPos and ns.db.xpHudPos.detached) then
			local L, T = self:GetLeft(), self:GetTop()
			ns.db.xpHudPos = { detached = true }
			self:ClearAllPoints(); self:SetWidth(ns.db.viewer.width or 340)
			if self._border then self._border.TOP:Show() end
			if L and T then self:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", L, T) end
		end
		self:StartMoving()
	end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		-- soltou perto do rodapé do Viewer? re-gruda (snap-to-dock)
		local vf = ns.Viewer and ns.Viewer.GetFrame and ns.Viewer:GetFrame()
		if vf and vf:IsShown() and self:GetTop() and vf:GetBottom() then
			local gap = math.abs(self:GetTop() - vf:GetBottom())
			local over = (self:GetRight() or 0) > (vf:GetLeft() or 0) and (self:GetLeft() or 0) < (vf:GetRight() or 1e9)
			if gap < 44 and over then
				ns.db.xpHudPos = { detached = false }
				applyAnchor()
				return
			end
		end
		local pt, _, _, x, y = self:GetPoint()
		ns.db.xpHudPos = { detached = true, point = pt, x = x, y = y }
	end)
	frame:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:AddLine(ns.L.XP_HUD_DRAG, 1, 1, 1, true)
		GameTooltip:Show()
	end)
	frame:SetScript("OnLeave", function() GameTooltip:Hide() end)

	frame.l1 = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.l1, 12, { num = true, color = C.active })
	frame.l1:SetPoint("TOPLEFT", 10, -7)

	frame.pace = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.pace, 11, { num = true, color = C.muted })
	frame.pace:SetPoint("TOPRIGHT", -10, -8)

	frame.bar = UI.Bar(frame)
	frame.bar:SetPoint("TOPLEFT", 10, -24)
	frame.bar:SetPoint("TOPRIGHT", -10, -24)
	frame.bar:SetHeight(4)

	frame.l2 = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.l2, 11, { num = true, color = C.muted })
	frame.l2:SetPoint("TOPLEFT", 10, -32)
	frame.l2:SetPoint("RIGHT", frame, "RIGHT", -10, 0)
	frame.l2:SetJustifyH("LEFT")

	frame.ghost = frame:CreateFontString(nil, "OVERLAY")   -- Ghost Racing ao vivo
	UI.SetFont(frame.ghost, 11, { num = true, color = C.accent })
	frame.ghost:SetPoint("TOPLEFT", 10, -45)
	frame.ghost:SetJustifyH("LEFT")
	return frame
end

function H:GetFrame() return frame end
function H:Update()
	if not (ns.db and ns.db.xpHud and ns:UIShown()) then if frame then frame:Hide() end return end
	local lvl = UnitLevel("player") or 1
	local max = UnitXPMax("player") or 0
	if max <= 0 then if frame then frame:Hide() end return end   -- nível máximo: sem XP
	build(); applyAnchor(); frame:Show()

	local C = UI.COL
	local xp = UnitXP("player") or 0
	local pct = math.floor(xp / max * 100)
	local rested = GetXPExhaustion and GetXPExhaustion()
	local restTag = (rested and rested > 0) and "  |cff59b0ffz|r" or ""
	frame.l1:SetText(("%s %d  |cff8a94a0%d%%|r%s"):format(ns.L.LEVEL_SHORT, lvl, pct, restTag))
	frame.bar:SetProgress(xp / max)

	local xph = xpPerHour()
	local eta = xph > 0 and ((max - xp) / xph * 3600) or nil
	local eta70 = etaToMax(xph, lvl, xp, max)
	local l2 = ("%s/h  ·  %s"):format(fmtNum(xph), ns.L.ETA_LEVEL:format(fmtTime(eta)))
	if eta70 and lvl < 69 then l2 = l2 .. ("  ·  70: %s"):format(fmtTime(eta70)) end
	frame.l2:SetText(l2)

	local d = pace()
	if d == nil then
		frame.pace:SetText("")
	elseif d >= 1 then
		frame.pace:SetText(ns.L.PACE_AHEAD); frame.pace:SetTextColor(UI.unpackc(C.done))
	elseif d <= -1 then
		frame.pace:SetText(ns.L.PACE_BEHIND); frame.pace:SetTextColor(UI.unpackc(C.amber))
	else
		frame.pace:SetText(ns.L.PACE_ON); frame.pace:SetTextColor(UI.unpackc(C.accent))
	end

	-- Ghost Racing ao vivo: seu ritmo vs o oponente rumo ao próximo nível
	local opp = ns.RunTracker and ns.RunTracker:Opponent()
	local nextT = opp and opp.levelPlayed and opp.levelPlayed[lvl + 1]
	if nextT then
		local delta = nextT - ns.RunTracker:LivePlayed()   -- >0 = você à frente
		local ahead = delta >= 0
		frame.ghost:SetText(("%s %s: %dm"):format(
			ahead and ns.L.CARD_AHEAD or ns.L.CARD_BEHIND, opp.name or "?",
			math.floor(math.abs(delta) / 60)))
		frame.ghost:SetTextColor(UI.unpackc(ahead and C.done or C.amber))
		frame.ghost:Show()
	else
		frame.ghost:Hide()
	end
end

--------------------------------------------------------------------------------
ns:On("PLAYER_ENTERING_WORLD", function()
	prevXP, prevMax, prevLvl = UnitXP("player"), UnitXPMax("player"), UnitLevel("player")
	sessStart = sessStart or GetTime()
end)
ns:On("PLAYER_XP_UPDATE", function() onXP(); if ns.XPHud then ns.XPHud:Update() end end)
ns:On("PLAYER_LEVEL_UP", function() if ns.XPHud then ns.XPHud:Update() end end)
ns:On("_GUIDE_LOADED", function() if ns.XPHud then ns.XPHud:Update() end end)
ns:Every(2, function() if ns.XPHud then ns.XPHud:Update() end end)   -- atualiza ETA/relógio
