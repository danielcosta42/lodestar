--=============================================================================
-- Waypoint — alvo do passo atual: distância, proximidade, seta na tela + pin.
-- Seta própria (textura Lodestar) com sombra e cor por proximidade.
-- Usa TomTom para a seta/pin quando presente.
--=============================================================================
local ADDON, ns = ...
local WP = {}
ns.Waypoint = WP
local UI = ns.UI

local C_Map = C_Map
local GetWorldPos = C_Map and C_Map.GetWorldPosFromMapPos
local GetPlayerMapPos = C_Map and C_Map.GetPlayerMapPosition
local GetBestMap = C_Map and C_Map.GetBestMapForUnit
local GetMapInfo = C_Map and C_Map.GetMapInfo
local mkVec = CreateVector2D

ns.zoneMap = ns.zoneMap or {}
local function rememberZone()
	local m = GetBestMap and GetBestMap("player")
	if m and GetMapInfo then
		local info = GetMapInfo(m)
		if info and info.name then ns.zoneMap[info.name] = m end
	end
end
ns:On("ZONE_CHANGED_NEW_AREA", rememberZone)
ns:On("ZONE_CHANGED", rememberZone)
ns:On("PLAYER_ENTERING_WORLD", rememberZone)

--------------------------------------------------------------------------------
-- Waypoint customizado (treinador, ponto arbitrário): tem prioridade sobre o passo.
function WP:SetCustom(zone, x, y, label)
	self.custom = { verb = "goto_", text = label or ns.L.DEST, _custom = true,
		goto_ = { zone = zone, x = tonumber(x), y = tonumber(y), radius = 6 } }
	self:Update()
	if ns.Viewer then ns.Viewer:Refresh() end
end

function WP:ClearCustom()
	self.custom = nil
	self:Update()
end

function WP:PickTarget()
	if self.custom then return self.custom end
	local step = ns:GetStep()
	if not step then return nil end
	for _, goal in ipairs(step.goals) do
		if goal.goto_ and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
			return goal
		end
	end
	for _, goal in ipairs(step.goals) do
		if goal.goto_ and ns:IsGoalActive(goal) then return goal end
	end
	return nil
end

local function targetMapID(goal)
	local z = goal.goto_.zone
	if z then
		if ns.zoneMap[z] then return ns.zoneMap[z] end                 -- visitada
		if ns.zoneUiMap and ns.zoneUiMap[z] then return ns.zoneUiMap[z] end  -- tabela shippada
	end
	return GetBestMap and GetBestMap("player")
end
ns.TargetMapID = targetMapID

function WP:DistanceTo(goal)
	if not (GetWorldPos and GetPlayerMapPos and mkVec) then return nil end
	local pmap = GetBestMap("player")
	local tmap = targetMapID(goal)
	if not (pmap and tmap) then return nil end
	local ppos = GetPlayerMapPos(pmap, "player")
	if not ppos then return nil end
	-- world-pos é global do continente: comparar por continente (pc==tc),
	-- não por mapa exato — assim funciona entre sub-zonas (ex: Shattrath).
	local pc, pw = GetWorldPos(pmap, ppos)
	local tc, tw = GetWorldPos(tmap, mkVec(goal.goto_.x / 100, goal.goto_.y / 100))
	if not (pw and tw) or pc ~= tc then return nil end
	local dx, dy = tw.x - pw.x, tw.y - pw.y
	return math.sqrt(dx * dx + dy * dy), dx, dy
end

--------------------------------------------------------------------------------
-- TomTom bridge
--------------------------------------------------------------------------------
local tomtomUID
local function clearTomTom()
	if tomtomUID and TomTom and TomTom.RemoveWaypoint then
		pcall(TomTom.RemoveWaypoint, TomTom, tomtomUID)
	end
	tomtomUID = nil
end
local function setTomTom(goal)
	if not (TomTom and TomTom.AddWaypoint) then return false end
	clearTomTom()
	local map = targetMapID(goal)
	if not map then return false end
	local ok, uid = pcall(TomTom.AddWaypoint, TomTom, map,
		goal.goto_.x / 100, goal.goto_.y / 100,
		{ title = ("Lodestar: %s"):format(goal.text or goal.verb), crazy = true })
	if ok then tomtomUID = uid; return true end
	return false
end

--------------------------------------------------------------------------------
-- Seta própria
--------------------------------------------------------------------------------
local arrow
local function ensureArrow()
	if arrow then return arrow end
	local C = UI.COL
	arrow = CreateFrame("Frame", "LodestarArrow", UIParent)
	arrow:SetSize(50, 50)
	local dbp = ns.db.arrow
	arrow:SetPoint(dbp.point or "CENTER", UIParent, dbp.point or "CENTER",
		dbp.x or 0, dbp.y or 150)
	arrow:SetMovable(true); arrow:EnableMouse(true)
	arrow:RegisterForDrag("LeftButton")
	arrow:SetScript("OnDragStart", arrow.StartMoving)
	arrow:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local p, _, _, x, y = self:GetPoint()
		dbp.point, dbp.x, dbp.y = p, x, y
	end)

	local shadow = UI.Glyph(arrow, "seta-rota", "BACKGROUND", 128)
	shadow:SetPoint("CENTER", 2, -2); shadow:SetSize(48, 48)
	shadow:SetVertexColor(0, 0, 0, 0.55)
	arrow.shadow = shadow

	local tex = UI.Glyph(arrow, "seta-rota", "ARTWORK", 128)
	tex:SetPoint("CENTER"); tex:SetSize(48, 48)
	arrow.tex = tex

	-- rótulo (distância + alvo) num painelzinho sob a seta
	local plate = UI.Panel(arrow, { color = { 0, 0, 0, 0.72 } })
	plate:SetPoint("TOP", arrow, "BOTTOM", 0, -3)
	plate:SetSize(140, 34)
	arrow.plate = plate
	arrow.dist = plate:CreateFontString(nil, "OVERLAY")
	UI.SetFont(arrow.dist, 16, { num = true, color = C.accent })
	arrow.dist:SetPoint("TOP", 0, -3)
	arrow.name = plate:CreateFontString(nil, "OVERLAY")
	UI.SetFont(arrow.name, 10, { num = true, color = C.muted })
	arrow.name:SetPoint("BOTTOM", 0, 4)
	arrow.name:SetPoint("LEFT", 6, 0); arrow.name:SetPoint("RIGHT", -6, 0)
	arrow.name:SetJustifyH("CENTER"); arrow.name:SetWordWrap(false)
	return arrow
end

local function verbWord(goal)
	if goal.verb == "note" then return "" end
	return ns.L["VERB_" .. (goal.verb == "goto_" and "goto" or goal.verb)] or ns.L.VERB_goto
end

-- nome localizado (quest usa nome do client)
local function goalName(goal)
	if (goal.verb == "accept" or goal.verb == "turnin") and goal.id
		and C_QuestLog and C_QuestLog.GetTitleForQuestID then
		local n = C_QuestLog.GetTitleForQuestID(goal.id)
		if n and n ~= "" then return n end
	end
	return goal.text or ""
end

-- nome localizado da zona (para casar com GetZoneText do client)
local function localizedZone(engZone)
	if ns.zoneUiMap and ns.zoneUiMap[engZone] and C_Map and C_Map.GetMapInfo then
		local info = C_Map.GetMapInfo(ns.zoneUiMap[engZone])
		if info and info.name then return info.name end
	end
	return engZone
end
ns.localizedZone = localizedZone

--------------------------------------------------------------------------------
-- Contexto de desenho compartilhado (seta e trilha desenham a MESMA coisa):
--   retorna (goalParaDesenhar, viajando)
--   * na zona-alvo   -> o próprio goal, viajando=false
--   * na zona do hop -> goal sintético do cais/portal, viajando=false
--   * viajando (portal/pedra/teleporte) -> goal, viajando=true (não desenhe a pé)
--------------------------------------------------------------------------------
function WP:DrawContext()
	local goal = self:PickTarget()
	if not (goal and goal.goto_ and goal.goto_.zone) then return goal, false end
	local pz = (GetZoneText and GetZoneText() or ""):lower()
	if pz == "" or localizedZone(goal.goto_.zone):lower() == pz then
		return goal, false                                  -- já na zona: caminho normal
	end
	local plan, hop
	if ns.TravelPlanner then plan, hop = ns.TravelPlanner:Plan(goal.goto_.zone) end
	if hop and hop.zone and localizedZone(hop.zone):lower() == pz then
		return { verb = "goto_", _hop = true,               -- na zona do hub: aponta o ponto
			goto_ = { zone = hop.zone, x = hop.x, y = hop.y } }, false
	end
	return goal, plan ~= nil                                 -- há plano -> viajando (não desenha)
end

local function updateArrow(goal)
	local a = ensureArrow()
	local C = UI.COL

	-- Plano de viagem (quando fora da zona-alvo). Se o método tem um "hop" (cais/
	-- portal/torre) e você JÁ está na zona dele, a seta passa a mirar o ponto exato.
	local plan
	local tz0 = goal.goto_ and goal.goto_.zone
	if tz0 and ns.TravelPlanner then
		local pz0 = (GetZoneText and GetZoneText() or ""):lower()
		if pz0 ~= "" and localizedZone(tz0):lower() ~= pz0 then
			local hop
			plan, hop = ns.TravelPlanner:Plan(tz0)
			if hop and hop.zone and localizedZone(hop.zone):lower() == pz0 then
				goal = { verb = "goto_", text = plan, _hop = true,
					goto_ = { zone = hop.zone, x = hop.x, y = hop.y, radius = 8 } }
				plan = nil    -- agora é navegação local precisa até o hub
			end
		end
	end

	local dist, dx, dy = WP:DistanceTo(goal)
	if not dist then
		-- destino em outro continente: sem direção, mas mostra p/ onde viajar
		if goal.goto_ and goal.goto_.zone then
			a.tex:Hide(); a.shadow:Hide()
			a.dist:SetText("")
			a.name:SetTextColor(UI.unpackc(C.amber))
			a.name:SetText(plan or ns.L.OUT_OF_ZONE:format(localizedZone(goal.goto_.zone)))
			a:Show()
		else
			a:Hide()
		end
		return
	end
	a.tex:Show(); a.shadow:Show(); a:Show()
	local bearing = math.atan2(dy, dx)
	local facing = GetPlayerFacing and GetPlayerFacing() or 0
	local rel = bearing - facing + (ns.db.arrow.offset or 0)
	a.tex:SetRotation(rel)
	a.shadow:SetRotation(rel)

	-- Fora da zona-alvo? Modo GLOBAL: aponta pra zona, não finge apontar o objetivo.
	local tzone = goal.goto_ and goal.goto_.zone
	local pzone = (GetZoneText and GetZoneText() or ""):lower()
	local outOfZone = tzone and pzone ~= "" and localizedZone(tzone):lower() ~= pzone

	a.dist:SetText(ns.L.YARDS:format(dist))
	if goal._hop then
		-- navegação precisa até o cais / portal / torre (você está na zona certa)
		local near = dist <= 14
		a.tex:SetVertexColor(UI.unpackc(near and C.done or C.amber))
		a.dist:SetTextColor(UI.unpackc(near and C.done or C.amber))
		a.name:SetTextColor(UI.unpackc(C.active))
		a.name:SetText(goal.text or "")
	elseif outOfZone then
		a.tex:SetVertexColor(UI.unpackc(C.amber))          -- âmbar = viagem
		a.name:SetTextColor(UI.unpackc(C.active))
		if plan then
			a.dist:SetText("")                             -- método claro: distância irrelevante
			a.name:SetText(plan)
		else
			a.dist:SetTextColor(UI.unpackc(C.amber))       -- "Vá para X": distância ajuda (andar/voar)
			a.name:SetText(ns.L.OUT_OF_ZONE:format(localizedZone(tzone)))
		end
	else
		local near = dist <= 14                             -- modo local/preciso
		if near then a.tex:SetVertexColor(UI.unpackc(C.done)) else a.tex:SetVertexColor(1, 1, 1, 1) end
		a.dist:SetTextColor(UI.unpackc(near and C.done or C.amber))
		a.name:SetTextColor(UI.unpackc(C.muted))
		a.name:SetText(("%s: %s"):format(verbWord(goal), ns:LocalizeText(goalName(goal))))
	end
end

--------------------------------------------------------------------------------
function WP:Update()
	local goal = self:PickTarget()
	-- waypoint avulso (/way, treinador) aparece mesmo sem guia / com guia fechado
	if not goal or not (ns.db and ns.db.arrow.enabled) or not (self.custom or ns:UIShown()) then
		clearTomTom()
		if arrow then arrow:Hide() end
		return
	end
	if setTomTom(goal) then
		if arrow then arrow:Hide() end
	else
		updateArrow(goal)
	end
end

-- ticker: rotação/distância e proximidade -> conclui `goto`
ns:Every(0.1, function()
	if not (WP.custom or ns:UIShown()) then if arrow then arrow:Hide() end return end
	local goal = WP:PickTarget()
	if not goal then if arrow then arrow:Hide() end return end
	if not tomtomUID then updateArrow(goal) end
	local dist = WP:DistanceTo(goal)
	if dist then
		local radius = (goal.goto_.radius or 0) > 0 and goal.goto_.radius or 12
		if goal.verb == "goto_" and dist <= radius then
			if goal._custom then
				WP:ClearCustom()          -- chegou ao destino avulso: volta ao guia
			elseif not goal._reached then
				goal._reached = true
				ns:CheckProgress()
			end
		end
	end
end)

ns:On("_GUIDE_LOADED", function() WP:Update() end)
