--=============================================================================
-- RouteMinimap — a rota em volta do jogador no minimapa, em pontilhado com setas, por
-- pernas: a pé pelo caminho do terreno, o voo pelo traçado, o barco pelo trajeto. Para na
-- borda; a próxima parada vira anel (preso na borda se longe). Respeita o minimapa
-- giratório. Substitui a antiga linha reta do Trail.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local G = ns.RouteGeom

-- alcance do minimapa em jardas pelo zoom, aberto ou fechado (calibrável em Avançado)
local function minimapRange()
	local zoom = (Minimap and Minimap.GetZoom and Minimap:GetZoom()) or 3
	local indoor = IsIndoors and IsIndoors() or false
	return G.MinimapRange(zoom, indoor) * ((ns.db and ns.db.minimap.rangeMult) or 1)
end

local SPACING, SETA, INSET = 6, 5, 0.92   -- pixels entre pontos; seta a cada tantos; fração do raio
local overlay
local dots, arrows, rings = {}, {}, {}
local nDots, nArrows, nRings = 0, 0, 0
local lastSig                         -- o que está desenhado; igual = não refaz

local function ensure()
	if overlay then return overlay end
	overlay = CreateFrame("Frame", "LodestarRouteMinimap", Minimap)
	overlay:SetAllPoints(Minimap)
	overlay:SetFrameStrata("HIGH")
	overlay:SetFrameLevel((Minimap:GetFrameLevel() or 3) + 8)
	return overlay
end

-- marca (ponto, seta, anel) com sombra escura por baixo: lê sobre qualquer terreno
local function put(list, n, file, size, col, alpha, x, y, rot)
	local t = list[n]
	if not t then
		t = UI.Media(overlay, file, "OVERLAY")
		t.sh = UI.Media(overlay, file, "ARTWORK")
		list[n] = t
	end
	t:SetSize(size, size); t.sh:SetSize(size + 2, size + 2)
	t:SetVertexColor(col[1], col[2], col[3], alpha)
	t.sh:SetVertexColor(0, 0, 0, 0.6 * alpha)
	if rot then t:SetRotation(rot); t.sh:SetRotation(rot) end
	t:ClearAllPoints(); t:SetPoint("CENTER", overlay, "CENTER", x, y)
	t.sh:ClearAllPoints(); t.sh:SetPoint("CENTER", overlay, "CENTER", x, y)
	t:Show(); t.sh:Show()
end

local function hideAll()
	for _, list in ipairs({ dots, arrows, rings }) do
		for i = 1, #list do list[i]:Hide(); list[i].sh:Hide() end
	end
	nDots, nArrows, nRings = 0, 0, 0
	lastSig = nil
end

local function update()
	local route = ns.Travel and ns.Travel:Route()
	-- rota do guia só com o guia aberto; destino próprio (manual, corpo) sempre
	if not (route and ns.db and ns.db.trail and (route.kind ~= "guide" or ns:UIShown()) and Minimap and G) then
		return hideAll()
	end
	local p = ns.Travel.PlayerWorld()
	if not p then return hideAll() end
	local radius = Minimap:GetWidth() / 2 * INSET
	if radius <= 0 then return hideAll() end
	local ydPerPx = minimapRange() / (Minimap:GetWidth() / 2)
	local facing = GetPlayerFacing and GetPlayerFacing() or 0
	local rotate = GetCVar and GetCVar("rotateMinimap") == "1"
	-- parado, mesma rota e mesmo zoom: o desenho de antes vale
	local sig = ("%s|%d|%.1f|%.1f|%.3f|%.3f|%d"):format(tostring(route), route.leg, p.x, p.y,
		rotate and facing or 0, ydPerPx, route.pv or 0)
	if sig == lastSig then return end
	hideAll()
	lastSig = sig
	ensure()
	local C = UI.COL
	local col = route.dest and route.dest.red and { 0.9, 0.2, 0.2 } or C.accent
	local function px(x, y)            -- mundo -> pixels do minimapa, sem prender na borda
		local rx, ry = G.ToMinimap(p.x, p.y, x, y, facing, rotate, ydPerPx, math.huge)
		return rx, ry
	end
	local function clip(x0, y0, x1, y1) return G.ClipCircle(x0, y0, x1, y1, radius) end
	for i = route.leg, #route.legs do
		local leg = route.legs[i]
		local alpha = i == route.leg and 1 or 0.55
		local pts = ns.RouteMap.LegPoints(leg, i == route.leg and p or nil)
		local xy = {}
		for k = 1, #pts - 2, 3 do
			local bx, by = false, false
			if pts[k + 2] == p.c then bx, by = px(pts[k], pts[k + 1]) end
			xy[#xy + 1], xy[#xy + 2] = bx, by
		end
		for _, run in ipairs(G.Runs(xy, clip)) do
			local m = G.Marks(run, SPACING, SETA)
			for k = 1, #m - 2, 3 do
				if m[k + 2] then
					nArrows = nArrows + 1
					put(arrows, nArrows, "chevron", 9, col, alpha, m[k], m[k + 1], m[k + 2])
				else
					nDots = nDots + 1
					put(dots, nDots, "dot", 3, col, alpha, m[k], m[k + 1])
				end
			end
		end
	end
	-- próxima parada (ou o destino), presa na borda se estiver longe
	local leg = route.legs[route.leg]
	if leg and leg.b.c == p.c then
		local rx, ry = G.ToMinimap(p.x, p.y, leg.b.x, leg.b.y, facing, rotate, ydPerPx, radius)
		local nxt = route.legs[route.leg + 1]
		local c = nxt and nxt.discover and C.amber or (nxt and nxt.k == "ship" and C.tip or col)
		nRings = nRings + 1
		put(rings, nRings, "ring", nxt and 13 or 16, c, 1, rx, ry)
	end
end

ns:Every(0.1, function()
	local ok, err = pcall(update)
	if not ok then ns:Debug("RouteMinimap:", err); hideAll() end
end)

-- Shift+clique no minimapa: destino manual ali (cursor -> jardas -> mundo); em cima do
-- atual, limpa.
local function shiftClick()
	local p = ns.Travel.PlayerWorld()
	local map = C_Map.GetBestMapForUnit("player")
	if not (p and map) then return false end
	local s = Minimap:GetEffectiveScale()
	local x, y = GetCursorPosition()
	local cx, cy = Minimap:GetCenter()
	local right, up = x / s - cx, y / s - cy
	local facing = GetPlayerFacing and GetPlayerFacing() or 0
	local rotate = GetCVar and GetCVar("rotateMinimap") == "1"
	local ydPerPx = minimapRange() / (Minimap:GetWidth() / 2)
	local cur = ns.Destinations:Get("manual")
	local w = cur and ns.Travel.World(cur.zone, cur.x, cur.y, cur.map)
	if w and w.c == p.c then
		local rx, ry = G.ToMinimap(p.x, p.y, w.x, w.y, facing, rotate, ydPerPx, math.huge)
		if (rx - right) ^ 2 + (ry - up) ^ 2 < 100 then
			ns.Waypoint:ClickDest(map, 0, 0, true)
			return true
		end
	end
	local wx, wy = G.FromMinimap(p.x, p.y, right, up, facing, rotate, ydPerPx)
	local _, pos = C_Map.GetMapPosFromWorldPos(p.c, CreateVector2D(wx, wy), map)
	if not pos then return false end
	ns.Waypoint:ClickDest(map, pos.x * 100, pos.y * 100, false)
	return true
end

-- gancho, não troca o script: os outros addons de minimapa seguem funcionando (o clique
-- com Shift também faz o ping do jogo)
if Minimap then
	Minimap:HookScript("OnMouseUp", function(_, button)
		if button == "LeftButton" and IsShiftKeyDown and IsShiftKeyDown() then
			local ok, err = pcall(shiftClick)
			if not ok then ns:Debug("RouteMinimap click:", err) end
		end
	end)
end

--------------------------------------------------------------------------------
-- diagnóstico ( /ls tdebug )
--------------------------------------------------------------------------------
ns.Trail = {}
function ns.Trail.Debug()
	local T = ns.Travel
	local route = T and T:Route()
	ns:Print("|cfff0c26a-- rota --|r trilha:", tostring(ns.db and ns.db.trail), "| guia:", tostring(ns.currentGuide ~= nil))
	local dest, kind
	if ns.Destinations then dest, kind = ns.Destinations:Active() end   -- `and` cortaria o kind
	ns:Print("destino:", kind or "nenhum", dest and (dest.label or "?") or "", dest and (dest.zone or dest.map) or "",
		dest and dest.x or "", dest and dest.y or "")
	local p = T and T.PlayerWorld()
	ns:Print("jogador (mundo):", p and ("%d %.0f %.0f"):format(p.c, p.x, p.y) or "nil",
		"| velocidade:", T and ("%.1f"):format(T:Speed()) or "?")
	if route then
		ns:Print(("rota: %d pernas, %s total, perna atual %d"):format(#route.legs, ns.Waypoint.FmtTime(route.s), route.leg))
		for i, leg in ipairs(route.legs) do
			ns:Print(("  %d. %s%s · %s"):format(i, leg.k, leg.name and (" " .. leg.name) or "", ns.Waypoint.FmtTime(leg.s)))
		end
	else
		ns:Print("rota: nenhuma")
	end
	ns:Print("minimapa: alcance", ("%.0f"):format(minimapRange()), "jd | zoom", Minimap and Minimap:GetZoom(),
		"| pontos", nDots)
	local WMF = WorldMapFrame
	ns:Print("mapa aberto:", tostring(WMF and WMF:IsShown()), "| id:", tostring(WMF and WMF.GetMapID and WMF:GetMapID()),
		"| rota no mapa:", LodestarRouteMap and tostring(LodestarRouteMap:IsShown()) or "nil")
	ns:Print("seta:", LodestarArrow and tostring(LodestarArrow:IsShown()) or "nil", "| pontos do guia:", tostring(ns.db.guideMap))
end
