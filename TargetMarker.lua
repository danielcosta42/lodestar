--=============================================================================
-- TargetMarker — destaca os alvos do passo atual:
--   * mouseover: linha no tooltip quando o NPC é alvo do guia;
--   * nameplate: marcador (seta) acima do mob a matar / NPC a falar.
--=============================================================================
local ADDON, ns = ...
local TM = {}
ns.TargetMarker = TM
local UI = ns.UI

local KILL_COL = { 0.97, 0.45, 0.30 }   -- vermelho-alaranjado (matar)
local TALK_COL = { 0.98, 0.80, 0.42 }   -- âmbar (interagir)

local interactN, killN = {}, {}
local active, pool = {}, {}
local hasPlates = C_NamePlate and C_NamePlate.GetNamePlateForUnit

--------------------------------------------------------------------------------
-- id de criatura a partir do GUID ("Creature-0-...-...-...-<id>-...")
--------------------------------------------------------------------------------
local function npcID(guid)
	if not guid then return nil end
	local kind, _, _, _, _, id = strsplit("-", guid)
	if kind == "Creature" or kind == "Vehicle" then return tonumber(id) end
	return nil
end

function TM:Kind(id)
	if not id then return nil end
	if killN[id] then return "kill" end
	if interactN[id] then return "talk" end
	return nil
end

--------------------------------------------------------------------------------
-- marcadores de nameplate
--------------------------------------------------------------------------------
local function makeMarker()
	local m = table.remove(pool)
	if m then return m end
	m = CreateFrame("Frame", nil, UIParent)
	m:SetSize(26, 26)
	m:SetFrameStrata("HIGH")
	local sh = m:CreateTexture(nil, "BACKGROUND"); sh:SetPoint("CENTER", 1, -1); sh:SetSize(26, 26)
	sh:SetVertexColor(0, 0, 0, 0.5)
	local tex = m:CreateTexture(nil, "OVERLAY"); tex:SetAllPoints()
	m.tex = tex; m.sh = sh
	m._t = 0
	m:SetScript("OnUpdate", function(self, e)
		self._t = self._t + e
		if self._plate then
			self:SetPoint("BOTTOM", self._plate, "TOP", 0, 6 + 3 * math.sin(self._t * 4))
		end
	end)
	return m
end

local function detach(unit)
	local m = active[unit]
	if m then
		m:Hide(); m:SetParent(UIParent); m._plate = nil
		active[unit] = nil
		pool[#pool + 1] = m
	end
end

local function attach(unit)
	if not (hasPlates and ns.db and ns.db.markTargets) then return end
	detach(unit)
	local kind = TM:Kind(npcID(UnitGUID(unit)))
	if not kind then return end
	local plate = C_NamePlate.GetNamePlateForUnit(unit)
	if not plate then return end
	local m = makeMarker()
	m._plate = plate
	m:SetParent(plate)
	local glyph = kind == "kill" and "alvo" or "falar"
	m.tex:SetTexture(UI.GLYPH .. glyph .. "-128")
	m.sh:SetTexture(UI.GLYPH .. glyph .. "-128")
	m.tex:SetVertexColor(UI.unpackc(kind == "kill" and KILL_COL or TALK_COL))
	m:ClearAllPoints()
	m:SetPoint("BOTTOM", plate, "TOP", 0, 8)
	m:Show()
	active[unit] = m
end

function TM:RefreshPlates()
	for u in pairs(active) do detach(u) end
	if not hasPlates then return end
	for _, plate in ipairs(C_NamePlate.GetNamePlates()) do
		local u = plate.namePlateUnitToken
		if u then attach(u) end
	end
end

ns:On("NAME_PLATE_UNIT_ADDED", function(_, unit) attach(unit) end)
ns:On("NAME_PLATE_UNIT_REMOVED", function(_, unit) detach(unit) end)

--------------------------------------------------------------------------------
-- recomputa os alvos do passo atual (com detecção de mudança)
--------------------------------------------------------------------------------
function TM:Rebuild()
	wipe(interactN); wipe(killN)
	local step = ns:UIShown() and ns:GetStep()
	if step then
		for _, g in ipairs(step.goals) do
			if g.id and ns:IsGoalActive(g) and not ns:IsGoalComplete(g) then
				if g.verb == "kill" then killN[g.id] = true
				elseif g.verb == "talk" or g.verb == "click" then interactN[g.id] = true end
			end
		end
	end
	-- assinatura para só re-escanear nameplates quando mudar
	local parts = {}
	for id in pairs(killN) do parts[#parts + 1] = "k" .. id end
	for id in pairs(interactN) do parts[#parts + 1] = "t" .. id end
	table.sort(parts)
	local sig = table.concat(parts, ",")
	if sig ~= self._sig then
		self._sig = sig
		self:RefreshPlates()
	end
end

ns:Every(0.3, function() if ns.db then TM:Rebuild() end end)
ns:On("_GUIDE_LOADED", function() TM:Rebuild() end)

--------------------------------------------------------------------------------
-- mouseover: linha no tooltip
--------------------------------------------------------------------------------
local function onTooltipUnit(tt)
	if not (ns.db and ns.db.markTargets) then return end
	local _, unit = tt:GetUnit()
	if not unit then return end
	local kind = TM:Kind(npcID(UnitGUID(unit)))
	if not kind then return end
	local c = kind == "kill" and KILL_COL or TALK_COL
	tt:AddLine(kind == "kill" and ns.L.TM_KILL or ns.L.TM_TALK, c[1], c[2], c[3])
	tt:Show()
end

if GameTooltip and GameTooltip.HookScript then
	pcall(GameTooltip.HookScript, GameTooltip, "OnTooltipSetUnit", onTooltipUnit)
end
