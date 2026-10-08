--=============================================================================
-- RouteMap — a rota no mapa-múndi, por pernas, em pontilhado: a pé em reta, o voo pelo
-- traçado real, o barco pelo trajeto. A perna atual forte, as próximas mais fracas, as
-- feitas somem; anel em cada parada (mestre de voo, cais) e no destino. Em qualquer
-- mapa aberto — zona, vizinha ou continente —, projetada pela coordenada de mundo.
--=============================================================================
local ADDON, ns = ...
local RM = {}
ns.RouteMap = RM

-- Pontos de mundo que a perna desenha: {x, y, c, x, y, c, ...}. A perna a pé atual sai do
-- jogador (`from`); pedra e teleporte são salto, sem linha.
function RM.LegPoints(leg, from)
	local out = {}
	local function put(x, y, c) out[#out + 1] = x; out[#out + 1] = y; out[#out + 1] = c end
	if leg.k == "flight" and leg.p then
		for i = 1, #leg.p - 1, 2 do put(leg.p[i], leg.p[i + 1], leg.a.c) end
	elseif leg.k == "ship" and leg.p then
		for i = 1, #leg.p - 2, 3 do put(leg.p[i], leg.p[i + 1], leg.p[i + 2]) end
	elseif leg.k == "walk" or leg.k == "tram" then
		local a = from or leg.a
		put(a.x, a.y, a.c)
		put(leg.b.x, leg.b.y, leg.b.c)
	end
	return out
end

if not ns.On then return end
local UI = ns.UI
local WP, G = ns.Waypoint, ns.RouteGeom

local SPACING = 9          -- pixels entre pontos no canvas
local overlay
local dots, rings = {}, {}
local nDots, nRings = 0, 0

local function ensure(canvas)
	if not overlay then
		overlay = CreateFrame("Frame", "LodestarRouteMap", canvas)
		overlay:SetFrameStrata("HIGH")
	end
	overlay:SetParent(canvas); overlay:SetAllPoints(canvas); overlay:Show()
	return overlay
end

local function dot(col, alpha, x, y)
	nDots = nDots + 1
	local t = dots[nDots]
	if not t then
		t = UI.Media(overlay, "dot", "OVERLAY")
		t:SetSize(5, 5)
		dots[nDots] = t
	end
	t:SetVertexColor(col[1], col[2], col[3], alpha)
	t:ClearAllPoints(); t:SetPoint("CENTER", overlay, "TOPLEFT", x, -y)
	t:Show()
end

local function ring(col, size, x, y)
	nRings = nRings + 1
	local t = rings[nRings]
	if not t then
		t = UI.Media(overlay, "ring", "OVERLAY")
		rings[nRings] = t
	end
	t:SetSize(size, size)
	t:SetVertexColor(col[1], col[2], col[3], 1)
	t:ClearAllPoints(); t:SetPoint("CENTER", overlay, "TOPLEFT", x, -y)
	t:Show()
end

local function hideAll()
	for i = 1, #dots do dots[i]:Hide() end
	for i = 1, #rings do rings[i]:Hide() end
	nDots, nRings = 0, 0
	if overlay then overlay:Hide() end
end

-- pontos de mundo -> segmentos no mapa aberto, recortados na borda, em pontilhado
local function drawLine(pts, shown, w, h, col, alpha)
	local px, py
	for i = 1, #pts - 2, 3 do
		local mx, my = WP:WorldMapPos({ x = pts[i], y = pts[i + 1], c = pts[i + 2] }, shown)
		if mx and px then
			local x0, y0, x1, y1 = WP.ClipSegment(px, py, mx, my)
			if x0 then
				local d = G.Dots({ x0 * w, y0 * h, x1 * w, y1 * h }, SPACING)
				for k = 1, #d - 1, 2 do dot(col, alpha, d[k], d[k + 1]) end
			end
		end
		px, py = mx, my
	end
end

local function stop(pt, shown, w, h, col, size)
	local x, y = WP:WorldMapPos(pt, shown)
	if x and x >= 0 and x <= 1 and y >= 0 and y <= 1 then ring(col, size, x * w, y * h) end
end

local function update()
	local WMF = WorldMapFrame
	local route = ns.Travel and ns.Travel:Route()
	if not (route and ns.db and ns.db.trail and (route.kind ~= "guide" or ns:UIShown()) and WMF and WMF:IsShown() and WMF.GetCanvas) then
		return hideAll()
	end
	local shown = WMF.GetMapID and WMF:GetMapID()
	local ok, canvas = pcall(WMF.GetCanvas, WMF)
	if not (shown and ok and canvas) then return hideAll() end
	local w, h = canvas:GetSize()
	if not w or w == 0 then return hideAll() end
	ensure(canvas)
	for i = 1, #dots do dots[i]:Hide() end
	for i = 1, #rings do rings[i]:Hide() end
	nDots, nRings = 0, 0
	local C = UI.COL
	local col = route.dest and route.dest.red and { 0.9, 0.2, 0.2 } or C.accent
	local from = ns.Travel.PlayerWorld()
	for i = route.leg, #route.legs do
		local leg = route.legs[i]
		local alpha = i == route.leg and 1 or 0.5
		drawLine(RM.LegPoints(leg, i == route.leg and from or nil), shown, w, h, col, alpha)
		local nxt = route.legs[i + 1]
		if nxt then                          -- parada: mestre de voo, cais, bonde
			local c = nxt.discover and C.amber or (nxt.k == "ship" and C.tip or col)
			stop(leg.b, shown, w, h, c, 14)
		end
	end
	stop(route.legs[#route.legs].b, shown, w, h, col, 20)   -- o destino
end

RM.Update = update

-- Shift+clique no mapa: destino manual ali; em cima do atual, limpa
local function onCanvasClick(map, button)
	if button ~= "LeftButton" or not (IsShiftKeyDown and IsShiftKeyDown()) then return false end
	local ok, done = pcall(function()
		local shown = map:GetMapID()
		local cx, cy = map:GetNormalizedCursorPosition()
		-- mapa-múndi/cósmico não tem chão: deixa o clique seguir
		if not (shown and cx and ns.Travel.World(nil, cx * 100, cy * 100, shown)) then return false end
		local cur = ns.Destinations:Get("manual")
		local mx, my = WP:WorldMapPos(cur and ns.Travel.World(cur.zone, cur.x, cur.y, cur.map), shown)
		WP:ClickDest(shown, cx * 100, cy * 100, mx and math.abs(mx - cx) < 0.015 and math.abs(my - cy) < 0.015)
		return true
	end)
	if not ok then ns:Debug("RouteMap click:", done) end
	return ok and done
end

local clickHooked
ns:Every(0.25, function()
	if WorldMapFrame and WorldMapFrame:IsShown() then
		if not clickHooked and WorldMapFrame.AddCanvasClickHandler then
			clickHooked = true
			WorldMapFrame:AddCanvasClickHandler(onCanvasClick)
		end
		local ok, err = pcall(update)
		if not ok then ns:Debug("RouteMap:", err); hideAll() end
	elseif overlay and overlay:IsShown() then
		hideAll()
	end
end)
