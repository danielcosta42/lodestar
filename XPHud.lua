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
-- Núcleo puro (testado fora do jogo)
--------------------------------------------------------------------------------
-- XP das quests do diário (#126): `quests` = { { xp, pronta }, ... } -> total, prontas
function H.QuestXP(quests)
	local total, prontas = 0, 0
	for _, q in ipairs(quests or {}) do
		local xp = tonumber(q[1]) or 0
		if xp > 0 then
			total = total + xp
			if q[2] then prontas = prontas + xp end
		end
	end
	return total, prontas
end

-- Segundos até juntar `falta` de XP, com `quests` de XP já no diário (#126). Duas contas, fica a menor:
--   * as quests do diário descontam do que falta e o resto vem à XP/hora de monstro (`mob`: sem as entregas, que senão
--     contariam duas vezes) — o tempo de fazê-las já corre dentro dela;
--   * tudo à XP/hora total da sessão (`total`), monstro e entregas, como se o resto da sessão fosse igual.
-- A primeira acerta o começo (nada entregue ainda: a total é só de monstro); a segunda, a sessão longa (as quests que
-- ainda nem estão no diário). Entregar uma quest já descontada não muda a primeira. -> s, 0 quando as quests
-- bastam, nil sem como prever
function H.Eta(falta, mob, quests, total)
	falta = falta or 0
	local resto = falta - (quests or 0)
	if resto <= 0 then return 0 end
	local a = mob and mob > 0 and resto / mob * 3600 or nil
	local b = total and total > 0 and falta / total * 3600 or nil
	if a and b then return math.min(a, b) end
	return a or b
end

if not ns.On then return end

--------------------------------------------------------------------------------
-- Sessão de XP (para XP/hora)
--------------------------------------------------------------------------------
local sessXP, sessStart, prevXP, prevMax, prevLvl = 0, nil, nil, nil, nil
local sessQuestXP, entregues = 0, {}       -- a XP das entregas na sessão e as quests entregues (#126)

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

-- XP/hora da sessão: a total e a de monstro (sem as entregas de quest)
local function xpPerHour()
	if not sessStart then return 0, 0 end
	local hrs = (GetTime() - sessStart) / 3600
	if hrs <= 0 then return 0, 0 end
	return sessXP / hrs, math.max(0, sessXP - sessQuestXP) / hrs
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

-- XP p/ passar de cada nível (1..59), Classic.
local XP_TO_NEXT = {
	400,900,1400,2100,2800,3600,4500,5400,6500,7600,8700,9800,11000,12300,13600,
	15000,16400,17800,19300,20800,22400,24000,25500,27200,28900,30500,32200,33900,
	36300,38800,41600,44600,48000,51400,55000,58700,62400,66200,70200,74300,78500,
	82800,87100,91600,96300,101000,105800,110700,115700,120900,126100,131500,137000,
	142500,148200,154000,159900,165800,172000,                                  -- 1..59
}
-- tempo estimado até o nível máximo do cliente: resto do nível atual + os próximos, menos as quests do diário.
local MAXLVL = ns.Client.maxLevel
local function etaToMax(mob, total, lvl, curXP, curMax, qxp)
	if lvl >= MAXLVL then return nil end
	local remain = (curMax or 0) - (curXP or 0)
	for L = lvl + 1, MAXLVL - 1 do remain = remain + (XP_TO_NEXT[L] or 0) end
	return H.Eta(remain, mob, qxp, total)
end

-- as quests do diário com a XP de cada uma (a função que a interface do Forever usa: fora da documentação, pode sumir).
-- Sem a que falhou, a escondida, a que o jogador pulou no guia e a que acabou de entregar (a XP dela já chegou e ela
-- ainda pode estar no diário por um instante).
local QL = C_QuestLog or {}
local function questsDoDiario()
	local out = {}
	if not (type(GetQuestLogRewardXP) == "function" and QL.GetNumQuestLogEntries and QL.GetInfo) then return out end
	local skipped = ns.char and ns.char.skipped or {}
	for i = 1, QL.GetNumQuestLogEntries() or 0 do
		local info = QL.GetInfo(i)
		local id = info and not info.isHeader and not info.isHidden and info.questID
		if id and id > 0 and not skipped[id] and not entregues[id] and not (QL.IsFailed and QL.IsFailed(id)) then
			local ok, xp = pcall(GetQuestLogRewardXP, id)
			local pronta = (QL.ReadyForTurnIn and QL.ReadyForTurnIn(id)) or (QL.IsComplete and QL.IsComplete(id))
			if ok and type(xp) == "number" and xp > 0 then out[#out + 1] = { xp, pronta and true or false } end
		end
	end
	return out
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
-- preso à janela do guia: sem sombra nem contorno próprios (parece um só cartão); solto: cartão completo
local function docked(on)
	if frame.shadow then frame.shadow:SetShown(not on) end
	if frame.line then frame.line:SetShown(not on) end
	-- os cantos de cima retos: encosta na janela do guia sem vão
	if not frame.topFill then
		frame.topFill = UI.Rect(frame, "BACKGROUND", UI.COL.bg)
		frame.topFill:SetPoint("TOPLEFT"); frame.topFill:SetPoint("TOPRIGHT"); frame.topFill:SetHeight(12)
	end
	frame.topFill:SetShown(on)
end

-- coordenada da tela (escala do UIParent): a janela do guia tem escala própria (Configurações), e comparar o
-- GetTop de um com o GetBottom do outro em escalas diferentes nunca acertava o encaixe (issue #102)
local function screen(f, v) return v and v * f:GetEffectiveScale() / UIParent:GetEffectiveScale() end

local function applyAnchor()
	if not frame then return end
	frame:ClearAllPoints()
	frame:SetScale((ns.db.viewer and ns.db.viewer.scale) or 1)     -- o tamanho da janela do guia, presa ou solta
	local p = ns.db.xpHudPos
	-- posição solta salva antes do #102 (sem o ponto relativo): não dá para restaurar certo; volta a grudar
	if p and p.detached and not p.rel then p = { detached = false }; ns.db.xpHudPos = p end
	local vf = ns.Viewer and ns.Viewer.GetFrame and ns.Viewer:GetFrame()
	if p and p.detached then
		frame:SetWidth(ns.db.viewer.width or 340)
		-- o ponto da tela relativo é o salvo (antes só o da barra: TOPLEFT preso ao BOTTOMLEFT voltava fora do lugar)
		-- o deslocamento foi salvo na escala de então: a escala da janela mudou, a barra fica no mesmo lugar da tela
		local k = (p.scale or frame:GetScale()) / frame:GetScale()
		frame:SetPoint(p.point or "TOP", UIParent, p.rel or p.point or "TOP", (p.x or 0) * k, (p.y or -120) * k)
		docked(false)                                               -- painel completo
	elseif vf then
		frame:SetPoint("TOPLEFT", vf, "BOTTOMLEFT", 0, 1)            -- rente + largura cheia
		frame:SetPoint("TOPRIGHT", vf, "BOTTOMRIGHT", 0, 1)
		docked(true)                                                -- sem emenda: parece 1 popup
	else
		frame:SetWidth(ns.db.viewer.width or 340)
		frame:SetPoint("TOP", UIParent, "TOP", 0, -120)
		docked(false)
	end
end

local function build()
	if frame then return frame end
	local C = UI.COL
	frame = UI.Panel(UIParent, { name = "LodestarXPHud" })
	frame:SetSize(ns.db.viewer.width or 340, 62)
	frame:SetMovable(true); frame:EnableMouse(true); frame:RegisterForDrag("LeftButton")
	frame:SetClampedToScreen(true)
	frame:SetScript("OnDragStart", function(self)
		-- grudado -> solta na posição atual e passa a flutuar
		if not (ns.db.xpHudPos and ns.db.xpHudPos.detached) then
			local L, T = self:GetLeft(), self:GetTop()
			-- a posição inteira já no começo (sem o ponto relativo ela pareceria salva antes do #102 e voltaria a grudar)
			ns.db.xpHudPos = { detached = true, point = "TOPLEFT", rel = "BOTTOMLEFT", x = L or 0, y = T or 0,
				scale = self:GetScale() }
			self:ClearAllPoints(); self:SetWidth(ns.db.viewer.width or 340)
			docked(false)
			if L and T then self:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", L, T) end
		end
		self:StartMoving()
	end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		-- soltou perto do rodapé do Viewer? re-gruda (snap-to-dock)
		local vf = ns.Viewer and ns.Viewer.GetFrame and ns.Viewer:GetFrame()
		if vf and vf:IsShown() and self:GetTop() and vf:GetBottom() then
			local gap = math.abs(screen(self, self:GetTop()) - screen(vf, vf:GetBottom()))
			local over = screen(self, self:GetRight() or 0) > screen(vf, vf:GetLeft() or 0)
				and screen(self, self:GetLeft() or 0) < screen(vf, vf:GetRight() or 1e9)
			if gap < 44 and over then
				ns.db.xpHudPos = { detached = false }
				applyAnchor()
				return
			end
		end
		local pt, _, rel, x, y = self:GetPoint()
		ns.db.xpHudPos = { detached = true, point = pt, rel = rel, x = x, y = y, scale = self:GetScale() }
	end)
	frame:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		local q, pr = H.QuestXP(questsDoDiario())
		if q > 0 then
			GameTooltip:AddLine(ns.L.XP_HUD_QUESTS:format(fmtNum(q), fmtNum(pr)), 1, 1, 1, true)
		end
		GameTooltip:AddLine(ns.L.XP_HUD_DRAG, 0.7, 0.7, 0.7, true)
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
	build()
	if not (frame.IsMovingOrSizing and frame:IsMovingOrSizing()) then applyAnchor() end   -- arrastando: não puxa de volta
	frame:Show()

	local C = UI.COL
	local xp = UnitXP("player") or 0
	local pct = math.floor(xp / max * 100)
	local rested = GetXPExhaustion and GetXPExhaustion()
	local restTag = (rested and rested > 0) and "  |cff59b0ffz|r" or ""
	frame.l1:SetText(("%s %d  |cff" .. UI.Hex("dim") .. "%d%%|r%s"):format(ns.L.LEVEL_SHORT, lvl, pct, restTag))
	frame.bar:SetProgress(xp / max)

	local xph, mob = xpPerHour()
	local qxp = H.QuestXP(questsDoDiario())                   -- a XP das quests do diário desconta do que falta (#126)
	local eta = H.Eta(max - xp, mob, qxp, xph)
	local etaMax = etaToMax(mob, xph, lvl, xp, max, qxp)
	local l2 = ("%s/h  ·  %s"):format(fmtNum(xph), eta == 0 and ns.L.ETA_QUESTS or ns.L.ETA_LEVEL:format(fmtTime(eta)))
	if etaMax and etaMax > 0 and lvl < MAXLVL - 1 then l2 = l2 .. ("  ·  %d: %s"):format(MAXLVL, fmtTime(etaMax)) end
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
-- a XP da entrega (o jogo manda: quest, XP, dinheiro) fica fora da XP/hora de monstro
ns:On("QUEST_TURNED_IN", function(_, qid, xpReward)
	sessQuestXP = sessQuestXP + (tonumber(xpReward) or 0)
	if qid then entregues[qid] = true end
end)
ns:On("PLAYER_LEVEL_UP", function() if ns.XPHud then ns.XPHud:Update() end end)
ns:On("_GUIDE_LOADED", function() if ns.XPHud then ns.XPHud:Update() end end)
ns:Every(2, function() if ns.XPHud then ns.XPHud:Update() end end)   -- atualiza ETA/relógio
