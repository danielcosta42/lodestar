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
-- coleta os pontos dos próximos passos (janela), sem duplicar coordenada
--------------------------------------------------------------------------------
local function upcomingPins()
	local pins, seen = {}, {}
	local g = ns.currentGuide
	if not g then return pins end
	local first = ns.char.currentStep or 1
	local last = math.min(#g.steps, first + 25)
	for i = first, last do
		local step = g.steps[i]
		if step then
			for _, goal in ipairs(step.goals) do
				local gt = goal.goto_
				if gt and gt.zone and gt.x and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
					local key = ("%s:%d:%d:%s"):format(gt.zone, gt.x, gt.y, goal.verb or "")
					if not seen[key] then
						seen[key] = true
						pins[#pins + 1] = { zone = gt.zone, x = gt.x, y = gt.y,
							verb = goal.verb, text = goal.text, step = i, current = (i == first) }
					end
				end
			end
		end
	end
	return pins
end

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
	local col, letter = kindOf(info.verb)
	local sz = info.current and 20 or 15
	p:SetSize(sz, sz)
	p.dot:SetVertexColor(UI.unpackc(info.current and UI.COL.accent or col))
	if letter then p.letter:SetText(letter); p.letter:Show() else p.letter:Hide() end
	local vb = ns.L["VERB_" .. (info.verb == "goto_" and "goto" or (info.verb or "goto"))] or ""
	p._text = ("%s: %s"):format(vb, ns:LocalizeText(info.text or ""))
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
		local map = ns.zoneUiMap and ns.zoneUiMap[info.zone]
		if map == shown then
			local p = acquire(canvas)
			style(p, info)
			p:ClearAllPoints()
			p:SetPoint("CENTER", canvas, "TOPLEFT", (info.x / 100) * w, -(info.y / 100) * h)
			p:Show()
		end
	end
end

ns.GuideMap = { Update = update }
ns:Every(0.3, function() if WorldMapFrame and WorldMapFrame:IsShown() then pcall(update) elseif #active > 0 then releaseAll() end end)
