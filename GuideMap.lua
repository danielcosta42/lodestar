--=============================================================================
-- GuideMap — marca no mapa-múndi os pontos dos PRÓXIMOS passos do guia (aceitar,
-- entregar, objetivos), não só o alvo atual. Ajuda a se reconectar ao desviar.
-- Estilo Questie, porém guide-scoped (usa os passos do guia, não um DB de quest).
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI

-- cor + rótulo por tipo de goal
local function kindOf(verb)
	if verb == "accept" then return UI.COL.done, "!" end        -- pegar quest (verde)
	if verb == "turnin" then return UI.COL.accent, "?" end       -- entregar (ouro)
	return UI.COL.amber, nil                                     -- objetivo (âmbar)
end

--------------------------------------------------------------------------------
-- coleta os pontos dos próximos passos, em ordem, sem duplicar coordenada.
-- A regra no mapa: a linha/seta é o passo atual; os pontos numerados são o que
-- vem depois, na ordem do guia; apagado é o que ainda não dá para fazer de
-- passagem (objetivo ou entrega de quest que não está no log).
--------------------------------------------------------------------------------
local MAX_PINS = 8      -- mais que isso no mapa vira ruído, não rota

local function inLog(id)
	if C_QuestLog and C_QuestLog.GetLogIndexForQuestID then return C_QuestLog.GetLogIndexForQuestID(id) ~= nil end
	if GetQuestLogIndexByID then return (GetQuestLogIndexByID(id) or 0) > 0 end
	return false
end

local function upcomingPins()
	local pins, seen = {}, {}
	local g = ns.currentGuide
	if not g then return pins end
	local first = ns.char.currentStep or 1
	local last = math.min(#g.steps, first + 25)
	for i = first, last do
		local step = g.steps[i]
		-- passo de outra classe/raça, ou atrás de pré-req não feito, não é rota sua
		if step and ns:IsStepActive(step) then
			for _, goal in ipairs(step.goals) do
				local gt = goal.goto_
				if gt and gt.zone and gt.x and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
					local key = ("%s:%d:%d:%s"):format(gt.zone, gt.x, gt.y, goal.verb or "")
					if not seen[key] then
						seen[key] = true
						local qid = (goal.verb == "turnin" and goal.id) or (goal.q and goal.q.id)
						pins[#pins + 1] = { zone = gt.zone, x = gt.x, y = gt.y,
							verb = goal.verb, text = goal.text, step = i, current = (i == first),
							order = #pins + 1, later = qid and i ~= first and not inLog(qid) or false }
						if #pins >= MAX_PINS then return pins end
					end
				end
			end
		end
	end
	return pins
end
ns.GuideMapPins = upcomingPins           -- teste

--------------------------------------------------------------------------------
-- pool de pins no canvas do mapa-múndi
--------------------------------------------------------------------------------
local pool, active = {}, {}
local function releaseAll()
	for _, p in ipairs(active) do p:Hide() end
	wipe(active)
end
local function acquire(canvas)
	local p = table.remove(pool)
	if not p then
		p = CreateFrame("Frame", nil, canvas)
		p:SetFrameStrata("TOOLTIP")
		p.dot = UI.Glyph(p, "losango", "OVERLAY", 64); p.dot:SetAllPoints()
		p.letter = p:CreateFontString(nil, "OVERLAY")
		UI.SetFont(p.letter, 11, { color = { 1, 1, 1, 1 } })
		p.letter:SetPoint("CENTER", 0, 0)
		p:SetScript("OnEnter", function(self)
			if not self._text then return end
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:AddLine(self._text, 1, 1, 1, true)
			GameTooltip:Show()
		end)
		p:SetScript("OnLeave", function() GameTooltip:Hide() end)
	end
	p:SetParent(canvas)
	active[#active + 1] = p
	return p
end

local function style(p, info)
	local col = kindOf(info.verb)                -- cor = tipo (pegar, entregar, objetivo)
	local sz = info.current and 20 or 16
	p:SetSize(sz, sz)
	p.dot:SetVertexColor(UI.unpackc(info.current and UI.COL.accent or col))
	-- número = ordem no guia; vai apagando adiante, e o que ainda não dá fica fraco
	p:SetAlpha(info.later and 0.35 or math.max(0.55, 1 - (info.order - 1) * 0.07))
	p.letter:SetText(info.order); p.letter:Show()
	local vb = ns.L["VERB_" .. (info.verb == "goto_" and "goto" or (info.verb or "goto"))] or ""
	p._text = ("%d. %s: %s"):format(info.order, vb, ns:LocalizeText(info.text or ""))
		.. (info.later and ("\n|cff888888" .. ns.L.MAP_LATER .. "|r") or "")
end

--------------------------------------------------------------------------------
local function update()
	local WMF = WorldMapFrame
	if not (ns.db and ns.db.guideMap and ns:UIShown()
		and WMF and WMF.GetCanvas and WMF:IsShown()) then return releaseAll() end
	local shown = WMF.GetMapID and WMF:GetMapID()
	local ok, canvas = pcall(WMF.GetCanvas, WMF)
	if not (shown and ok and canvas) then return releaseAll() end
	local w, h = canvas:GetSize()
	if not w or w == 0 then return releaseAll() end

	releaseAll()
	for _, info in ipairs(upcomingPins()) do
		-- qualquer mapa aberto que contenha o ponto (zona vizinha, continente)
		local x, y = ns.Waypoint:MapPos(info.zone, info.x, info.y, shown)
		if x and x >= 0 and x <= 1 and y >= 0 and y <= 1 then
			local p = acquire(canvas)
			style(p, info)
			p:ClearAllPoints()
			p:SetPoint("CENTER", canvas, "TOPLEFT", x * w, -y * h)
			p:Show()
		end
	end
end

ns.GuideMap = { Update = update }
ns:Every(0.3, function() if WorldMapFrame and WorldMapFrame:IsShown() then pcall(update) elseif #active > 0 then releaseAll() end end)
