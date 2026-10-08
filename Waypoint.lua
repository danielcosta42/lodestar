--=============================================================================
-- Waypoint — alvo do passo atual: distância, proximidade, seta na tela + pin.
-- Seta própria (textura Lodestar) com sombra e cor por proximidade.
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
-- Destino avulso (treinador, ponto arbitrário): é o destino manual do Destinations,
-- que passa na frente do passo do guia.
function WP:SetCustom(zone, x, y, label, map)
	ns.Destinations:Set("manual", { zone = zone, map = map, x = tonumber(x), y = tonumber(y), label = label or ns.L.DEST })
	self:Update()
	if ns.Viewer then ns.Viewer:Refresh() end
end

function WP:ClearCustom()
	ns.Destinations:Clear("manual")
	self:Update()
end

-- /ls way e o campo do painel Viagem: sem zona, vale o mapa onde o jogador está
function WP:Way(text)
	local x, y, zone = WP.ParseWay(text)
	if not x then return false end
	local map = not zone and C_Map.GetBestMapForUnit("player") or nil
	self:SetCustom(zone, x, y, ns.L.WAYPOINT, map)
	local info = map and C_Map.GetMapInfo(map)
	ns:Printf("%s: %s %.1f, %.1f", ns.L.WAYPOINT, zone or info and info.name or "?", x, y)
	return true
end

-- Shift+clique (mapa ou minimapa) em (uiMapID, x, y 0-100): em cima do destino manual
-- atual (`near`), limpa; senão, novo destino ali.
function WP:ClickDest(map, x, y, near)
	if near then
		self:ClearCustom()
		return ns:Print(ns.L.DEST_CLEARED)
	end
	self:SetCustom(nil, x, y, ns.L.WAYPOINT, map)
	local info = C_Map.GetMapInfo(map)
	ns:Printf("%s: %s %.1f, %.1f", ns.L.WAYPOINT, info and info.name or "?", x, y)
end

-- há destino que não é o guia (manual ou corpo): a seta aparece mesmo com o guia fechado
local function explicitDest()
	local D = ns.Destinations
	return D and (D:Get("corpse") or D:Get("manual")) and true or false
end

--------------------------------------------------------------------------------
-- Texto da perna: o que fazer e quanto tempo leva
--------------------------------------------------------------------------------
function WP.FmtTime(s)
	s = math.max(0, math.floor(s + 0.5))
	if s >= 3600 then return ("%dh%02dm"):format(math.floor(s / 3600), math.floor(s % 3600 / 60)) end
	if s >= 60 then return ("%dm%02ds"):format(math.floor(s / 60), s % 60) end
	return ("%ds"):format(s)
end

-- "x y [zona]" (vírgula também separa) -> x, y (0-100), zona ou nil
function WP.ParseWay(text)
	local x, y, zone = (text or ""):match("^%s*([%d%.]+)[%s,]+([%d%.]+)%s*(.-)%s*$")
	x, y = tonumber(x), tonumber(y)
	if not (x and y and x <= 100 and y <= 100) then return nil end
	return x, y, zone ~= "" and zone or nil
end

function WP.LegText(route, i, secs)
	local L = ns.L
	local leg, nxt = route.legs[i], route.legs[i + 1]
	local text
	if leg.k == "walk" then
		if nxt and nxt.k == "flight" then
			text = (nxt.discover and L.LEG_TO_NEW_FLIGHT or L.LEG_TO_FLIGHT):format(leg.name or "?")
		elseif nxt and nxt.k == "ship" then
			local ship = L["SHIP_" .. (nxt.ship or "boat")]
			text = nxt.name and L.LEG_TO_DOCK_TO:format(ship, nxt.name) or L.LEG_TO_DOCK:format(ship)
		elseif nxt and nxt.k == "tram" then
			text = L.LEG_TO_TRAM
		else
			text = route.dest and route.dest.label or L.DEST
		end
	elseif leg.k == "flight" then
		text = L.LEG_FLY:format(leg.name or "?")
	elseif leg.k == "ship" then
		local ship = L["SHIP_" .. (leg.ship or "boat")]
		text = leg.name and L.LEG_SHIP_TO:format(ship, leg.name) or L.LEG_SHIP:format(ship)
	elseif leg.k == "tram" then
		text = L.LEG_TRAM
	elseif leg.k == "hearth" then
		text = L.LEG_HEARTH
	else
		text = L.LEG_TELEPORT:format(leg.name or "")
	end
	return ("%s · %s"):format(text, WP.FmtTime(secs or leg.s or 0))
end

-- ícone da perna de pedra ou teleporte (o que lançar)
local function legIcon(leg)
	if leg.k == "hearth" then return GetItemIcon and GetItemIcon(6948) end
	if leg.k == "teleport" and leg.spell and GetSpellTexture then return GetSpellTexture(leg.spell) end
end

-- O alvo da seta: o fim da perna atual da rota. Na última perna até um passo do guia,
-- é o próprio objetivo (é ele que conclui o `goto` do passo). Sem rota: o destino ativo.
local legGoal = {}
function WP:PickTarget()
	local T = ns.Travel
	local route = T and T:Route()
	local leg = route and route.legs[route.leg]
	if leg then
		if route.leg == #route.legs and route.kind == "guide" and route.dest and route.dest.goal then
			return route.dest.goal
		end
		local secs = leg.s
		local p = leg.k == "walk" and T.PlayerWorld()
		if p and p.c == leg.b.c then
			local dx, dy = leg.b.x - p.x, leg.b.y - p.y
			secs = math.sqrt(dx * dx + dy * dy) / T:Speed()
		end
		legGoal.verb, legGoal._leg, legGoal.world, legGoal.legKind = "goto_", true, leg.b, leg.k
		legGoal.text, legGoal.icon = WP.LegText(route, route.leg, secs), legIcon(leg)
		legGoal.goto_ = nil
		return legGoal
	end
	local dest, kind
	if ns.Destinations then dest, kind = ns.Destinations:Active() end   -- `and` cortaria o kind
	if not dest then return nil end
	if kind == "guide" then return dest.goal end
	return { verb = "goto_", text = dest.label, _custom = kind == "manual", _corpse = kind == "corpse",
		goto_ = { zone = dest.zone, map = dest.map, x = dest.x, y = dest.y, radius = 6 } }
end

local function targetMapID(goal)
	if not goal.goto_ then return nil end        -- alvo de perna: ponto de mundo, sem mapa
	if goal.goto_.map then return goal.goto_.map end
	local z = goal.goto_.zone
	if z then
		if ns.zoneMap[z] then return ns.zoneMap[z] end                 -- visitada
		if ns.zoneUiMap and ns.zoneUiMap[z] then return ns.zoneUiMap[z] end  -- tabela shippada
	end
	return GetBestMap and GetBestMap("player")
end
ns.TargetMapID = targetMapID

-- Ponto (zona, x, y em 0-100) no mapa `shown`, em 0-1 — pode cair fora de 0-1. Mapa
-- de outra zona ou de continente: pela coordenada de mundo. Sem isso, com o mapa
-- aberto em Tirisfal e o alvo em Silverpine, nada se desenhava.
local GetMapPosFromWorld = C_Map and C_Map.GetMapPosFromWorldPos
function WP:MapPos(zone, x, y, shown)
	local tmap = targetMapID({ goto_ = { zone = zone } })
	if not (tmap and shown) then return nil end
	if tmap == shown then return x / 100, y / 100 end
	if not (GetWorldPos and GetMapPosFromWorld and mkVec) then return nil end
	local cont, wpos = GetWorldPos(tmap, mkVec(x / 100, y / 100))
	if not (cont and wpos) then return nil end
	local _, pos = GetMapPosFromWorld(cont, wpos, shown)
	if pos then return pos.x, pos.y end
end

-- O jogador no mapa `shown`, em 0-1 (pode cair fora: mapa de outra zona).
function WP:PlayerMapPos(shown)
	local pm = GetBestMap and GetBestMap("player")
	local p = pm and GetPlayerMapPos and GetPlayerMapPos(pm, "player")
	if not (p and shown) then return nil end
	if pm == shown then return p.x, p.y end
	if not (GetWorldPos and GetMapPosFromWorld) then return nil end
	local cont, wpos = GetWorldPos(pm, p)
	if not (cont and wpos) then return nil end
	local _, pos = GetMapPosFromWorld(cont, wpos, shown)
	if pos then return pos.x, pos.y end
end

-- Recorta o segmento (x0,y0)-(x1,y1) ao quadrado 0-1 do mapa (Liang-Barsky): a
-- linha até um alvo fora do mapa para na borda, na direção certa. nil se não cruza.
function WP.ClipSegment(x0, y0, x1, y1)
	local t0, t1, dx, dy = 0, 1, x1 - x0, y1 - y0
	for _, pq in ipairs({ { -dx, x0 }, { dx, 1 - x0 }, { -dy, y0 }, { dy, 1 - y0 } }) do
		local p, q = pq[1], pq[2]
		if p == 0 then
			if q < 0 then return nil end
		else
			local r = q / p
			if p < 0 then
				if r > t1 then return nil end
				if r > t0 then t0 = r end
			else
				if r < t0 then return nil end
				if r < t1 then t1 = r end
			end
		end
	end
	return x0 + t0 * dx, y0 + t0 * dy, x0 + t1 * dx, y0 + t1 * dy
end

-- Ponto de mundo { c, x, y } no mapa `shown`, em 0-1 (pode cair fora).
function WP:WorldMapPos(w, shown)
	if not (w and shown and GetMapPosFromWorld and mkVec) then return nil end
	local _, pos = GetMapPosFromWorld(w.c, mkVec(w.x, w.y), shown)
	if pos then return pos.x, pos.y end
end

function WP:DistanceTo(goal)
	if goal.world then                        -- fim de perna da rota: já em coordenada de mundo
		local p = ns.Travel and ns.Travel.PlayerWorld()
		local w = goal.world
		if not p or p.c ~= w.c then return nil end
		local dx, dy = w.x - p.x, w.y - p.y
		return math.sqrt(dx * dx + dy * dy), dx, dy
	end
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
	-- ícone do que lançar (pedra de lar, teleporte), no lugar da seta
	arrow.icon = arrow:CreateTexture(nil, "OVERLAY")
	arrow.icon:SetSize(34, 34); arrow.icon:SetPoint("CENTER"); arrow.icon:Hide()
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
local localizedZone = ns.LocalizedZone

--------------------------------------------------------------------------------
-- Em VIAGEM (voo/táxi): a direção não importa — mostra ETA (distância restante ÷
-- velocidade real medida por delta de posição). Detecta via UnitOnTaxi.
--------------------------------------------------------------------------------
local taxi = { lastPW = nil, lastT = nil, speed = 0 }
local function fmtETA(s)
	s = math.max(0, math.floor(s + 0.5))
	if s >= 60 then return ("~%dm%02ds"):format(math.floor(s / 60), s % 60) end
	return ("~%ds"):format(s)
end
local function transitETA(goal)
	local pmap = GetBestMap and GetBestMap("player")
	local ppos = pmap and GetPlayerMapPos and GetPlayerMapPos(pmap, "player")
	if not (ppos and GetWorldPos) then return nil end
	local _, pw = GetWorldPos(pmap, ppos)
	if not pw then return nil end
	local now = GetTime and GetTime() or 0
	if taxi.lastPW and taxi.lastT and now > taxi.lastT then
		local dx, dy = pw.x - taxi.lastPW.x, pw.y - taxi.lastPW.y
		local inst = math.sqrt(dx * dx + dy * dy) / (now - taxi.lastT)   -- jardas/seg
		taxi.speed = (taxi.speed > 0) and (taxi.speed * 0.7 + inst * 0.3) or inst
	end
	taxi.lastPW, taxi.lastT = pw, now
	local d = WP:DistanceTo(goal)
	if d and taxi.speed > 1 then return d / taxi.speed end
	return nil
end
local function showTransit(a, goal)
	local C = UI.COL
	a:Show(); a.tex:Show(); a.shadow:Show()
	a.tex:SetRotation(0); a.shadow:SetRotation(0)          -- estático: em voo a direção não guia
	a.tex:SetVertexColor(UI.unpackc(C.amber))
	local eta = transitETA(goal)
	a.dist:SetTextColor(UI.unpackc(C.amber))
	a.dist:SetText(eta and fmtETA(eta) or "…")
	a.name:SetTextColor(UI.unpackc(C.active))
	local zone = goal.goto_ and goal.goto_.zone
	a.name:SetText(ns.L.IN_FLIGHT .. (zone and (": " .. localizedZone(zone)) or ""))
end

-- Seta de uma perna da rota: a pé aponta para o fim dela; barco, bonde, pedra e
-- teleporte não têm direção — dizem o que fazer (e mostram o ícone do que lançar).
local STILL = { ship = true, tram = true, hearth = true, teleport = true }
local function legArrow(a, goal)
	local C = UI.COL
	a:Show()
	if goal.icon then a.icon:SetTexture(goal.icon); a.icon:Show() else a.icon:Hide() end
	local dist, dx, dy
	if not STILL[goal.legKind] then dist, dx, dy = WP:DistanceTo(goal) end
	if not dist then
		a.tex:Hide(); a.shadow:Hide()
		a.dist:SetText("")
		a.name:SetTextColor(UI.unpackc(C.amber))
		a.name:SetText(goal.text or "")
		return
	end
	a.tex:Show(); a.shadow:Show()
	local rel = math.atan2(dy, dx) - (GetPlayerFacing and GetPlayerFacing() or 0) + (ns.db.arrow.offset or 0)
	a.tex:SetRotation(rel); a.shadow:SetRotation(rel)
	local near = dist <= 14
	if near then a.tex:SetVertexColor(UI.unpackc(C.done)) else a.tex:SetVertexColor(1, 1, 1, 1) end
	a.dist:SetTextColor(UI.unpackc(near and C.done or C.amber))
	a.dist:SetText(ns.L.YARDS:format(dist))
	a.name:SetTextColor(UI.unpackc(C.active))
	a.name:SetText(goal.text or "")
end

local function updateArrow(goal)
	local a = ensureArrow()
	local C = UI.COL

	if UnitOnTaxi and UnitOnTaxi("player") then a.icon:Hide(); showTransit(a, goal); return end
	taxi.lastPW, taxi.lastT, taxi.speed = nil, nil, 0      -- fora do voo: reseta o tracking
	if goal._leg then return legArrow(a, goal) end
	a.icon:Hide()

	-- sem rota (outro continente sem ligação, instância): "Vá para <zona>"
	local dist, dx, dy = WP:DistanceTo(goal)
	if not dist then
		-- destino em outro continente: sem direção, mas mostra p/ onde viajar
		if goal.goto_ and goal.goto_.zone then
			a.tex:Hide(); a.shadow:Hide()
			a.dist:SetText("")
			a.name:SetTextColor(UI.unpackc(C.amber))
			a.name:SetText(ns.L.OUT_OF_ZONE:format(localizedZone(goal.goto_.zone)))
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
	local outOfZone = tzone and ns.TravelPlanner and not ns.TravelPlanner:InZone(tzone)

	a.dist:SetText(ns.L.YARDS:format(dist))
	if outOfZone then
		a.tex:SetVertexColor(UI.unpackc(C.amber))          -- âmbar = viagem
		a.name:SetTextColor(UI.unpackc(C.active))
		a.dist:SetTextColor(UI.unpackc(C.amber))           -- "Vá para X": distância ajuda (andar/voar)
		a.name:SetText(ns.L.OUT_OF_ZONE:format(localizedZone(tzone)))
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
	if not goal or not (ns.db and ns.db.arrow.enabled) or not (explicitDest() or ns:UIShown()) then
		if arrow then arrow:Hide() end
		return
	end
	updateArrow(goal)
end

-- ticker: rotação/distância e proximidade -> conclui `goto`
ns:Every(0.1, function()
	if not (explicitDest() or ns:UIShown()) then if arrow then arrow:Hide() end return end
	local goal = WP:PickTarget()
	if not goal then if arrow then arrow:Hide() end return end
	updateArrow(goal)
	if UnitOnTaxi and UnitOnTaxi("player") then return end   -- em voo: não "chega" sobrevoando
	if goal._leg then return end                              -- perna da rota: o Travel acompanha
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
