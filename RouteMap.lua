--=============================================================================
-- RouteMap — a rota no mapa-múndi, por pernas, em pontilhado com setas: a pé pelo caminho
-- do terreno (em reta enquanto não há), o voo pelo traçado real, o barco pelo trajeto. A
-- perna atual forte, as próximas mais fracas, as feitas somem; anel em cada parada (mestre
-- de voo, cais) e no destino. Em qualquer mapa aberto — zona, vizinha ou continente —,
-- projetada pela coordenada de mundo.
--=============================================================================
local ADDON, ns = ...
local RM = {}
ns.RouteMap = RM

local CURVA = 20           -- jardas cortadas de cada lado de um canto do caminho a pé

-- Pontos de mundo que a perna desenha: {x, y, c, x, y, c, ...}. A perna a pé atual sai do
-- jogador (`from`); pedra e teleporte são salto, sem linha.
function RM.LegPoints(leg, from)
	local out = {}
	local function put(x, y, c) out[#out + 1] = x; out[#out + 1] = y; out[#out + 1] = c end
	if leg.k == "flight" and leg.p then
		for i = 1, #leg.p - 1, 2 do put(leg.p[i], leg.p[i + 1], leg.a.c) end
	elseif leg.k == "ship" and leg.p then
		for i = 1, #leg.p - 2, 3 do put(leg.p[i], leg.p[i + 1], leg.p[i + 2]) end
	elseif leg.k == "walk" and leg.path and ns.Terrain and ns.RouteGeom then
		-- pelo terreno, de cantos redondos: do jogador o resto do caminho; a perna seguinte, inteira
		local xy, nxt = {}, 1
		if from and from.c == leg.b.c then
			nxt = select(5, ns.Terrain.Ahead(leg.path, from, 0))
			xy[1], xy[2] = from.x, from.y
		end
		for i = nxt, #leg.path do xy[#xy + 1] = leg.path[i].x; xy[#xy + 1] = leg.path[i].y end
		xy = ns.RouteGeom.Round(xy, CURVA)
		for i = 1, #xy - 1, 2 do put(xy[i], xy[i + 1], leg.b.c) end
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

local SPACING, SETA = 9, 6   -- pixels entre pontos no canvas; uma seta a cada tantos pontos
local overlay
local dots, arrows, rings = {}, {}, {}
local nDots, nArrows, nRings = 0, 0, 0
local lastSig                         -- o que está desenhado; igual = não refaz

local function ensure(canvas)
	if not overlay then
		overlay = CreateFrame("Frame", "LodestarRouteMap", canvas)
		overlay:SetFrameStrata("HIGH")
	end
	overlay:SetParent(canvas); overlay:SetAllPoints(canvas); overlay:Show()
	return overlay
end

-- marca (ponto, seta, anel) com sombra escura por baixo: lê sobre qualquer mapa
local function mark(list, n, file, size, col, alpha, x, y, rot)
	local t = list[n]
	if not t then
		t = UI.Media(overlay, file, "OVERLAY")
		t.sh = UI.Media(overlay, file, "ARTWORK")
		list[n] = t
	end
	t:SetSize(size, size); t.sh:SetSize(size + 3, size + 3)
	t:SetVertexColor(col[1], col[2], col[3], alpha)
	t.sh:SetVertexColor(0, 0, 0, 0.6 * alpha)
	if rot then t:SetRotation(rot); t.sh:SetRotation(rot) end
	t:ClearAllPoints(); t:SetPoint("CENTER", overlay, "TOPLEFT", x, -y)
	t.sh:ClearAllPoints(); t.sh:SetPoint("CENTER", overlay, "TOPLEFT", x, -y)
	t:Show(); t.sh:Show()
end

local function clear()
	for _, list in ipairs({ dots, arrows, rings }) do
		for i = 1, #list do list[i]:Hide(); list[i].sh:Hide() end
	end
	nDots, nArrows, nRings = 0, 0, 0
end

local function hideAll()
	clear()
	lastSig = nil
	if overlay then overlay:Hide() end
end

-- pontos de mundo -> trechos no mapa aberto, recortados na borda, em pontilhado com setas
local function drawLine(pts, shown, w, h, col, alpha)
	local xy = {}
	for i = 1, #pts - 2, 3 do
		local mx, my = WP:WorldMapPos({ x = pts[i], y = pts[i + 1], c = pts[i + 2] }, shown)
		xy[#xy + 1] = mx and mx * w or false
		xy[#xy + 1] = mx and my * h or false
	end
	local function clip(x0, y0, x1, y1)
		local a, b, c, d = WP.ClipSegment(x0 / w, y0 / h, x1 / w, y1 / h)
		if a then return a * w, b * h, c * w, d * h end
	end
	for _, run in ipairs(G.Runs(xy, clip)) do
		local m = G.Marks(run, SPACING, SETA, true)
		for k = 1, #m - 2, 3 do
			if m[k + 2] then
				nArrows = nArrows + 1
				mark(arrows, nArrows, "chevron", 12, col, alpha, m[k], m[k + 1], m[k + 2])
			else
				nDots = nDots + 1
				mark(dots, nDots, "dot", 5, col, alpha, m[k], m[k + 1])
			end
		end
	end
end

local function stop(pt, shown, w, h, col, size)
	local x, y = WP:WorldMapPos(pt, shown)
	if x and x >= 0 and x <= 1 and y >= 0 and y <= 1 then
		nRings = nRings + 1
		mark(rings, nRings, "ring", size, col, 1, x * w, y * h)
	end
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
	local from = ns.Travel.PlayerWorld()
	local sig = ("%d|%s|%d|%s|%d|%d|%.0f|%.0f"):format(route.pv or 0,
		tostring(route), route.leg, tostring(shown), w, h,
		from and from.x or 0, from and from.y or 0)
	if sig == lastSig and overlay and overlay:IsShown() then return end
	lastSig = sig
	ensure(canvas)
	clear()
	local C = UI.COL
	local col = route.dest and route.dest.red and { 0.9, 0.2, 0.2 } or C.accent
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
