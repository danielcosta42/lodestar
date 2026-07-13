--=============================================================================
-- Trail — "caminho de formiga" contínuo até o objetivo (linha suave + brilho).
--   * minimapa: linha do centro na direção do alvo;
--   * mapa-múndi: linha do player até o alvo (coords exatas).
-- WoW Classic não permite desenhar no mundo 3D (sem matriz de câmera exposta).
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local ACC = UI.COL.accent
local C_Map = C_Map

-- alcance do minimapa em jardas por nível de zoom (aprox.; calibrável)
local MM_RANGE = { [0] = 233.33, [1] = 200, [2] = 166.66, [3] = 133.33, [4] = 100, [5] = 66.66 }
local function minimapRange()
	local zoom = (Minimap and Minimap.GetZoom and Minimap:GetZoom()) or 3
	return (MM_RANGE[zoom] or 133.33) * ((ns.db and ns.db.minimap.rangeMult) or 1)
end

local function line(parent, thick, alpha)
	local l = parent:CreateLine()
	l:SetDrawLayer("OVERLAY")
	l:SetThickness(thick)
	l:SetColorTexture(ACC[1], ACC[2], ACC[3], alpha)
	l:Hide()
	return l
end

local function pulse(frame)
	frame:SetAlpha(0.82 + 0.18 * math.sin(GetTime() * 2.2))
end

--------------------------------------------------------------------------------
-- direção até o alvo, em coordenadas de tela do minimapa (right, up)
--------------------------------------------------------------------------------
-- fallback: direção via posição normalizada (quando não há world-pos)
local function normalizedDir(goal)
	local pmap = C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	local tmap = ns.TargetMapID and ns.TargetMapID(goal)
	if not (pmap and tmap) or pmap ~= tmap then return nil end
	local ppos = C_Map.GetPlayerMapPosition and C_Map.GetPlayerMapPosition(pmap, "player")
	if not ppos then return nil end
	local ndx = goal.goto_.x / 100 - ppos.x     -- +x = leste
	local ndy = goal.goto_.y / 100 - ppos.y     -- +y = sul
	local wx, wy = 1, 1
	if C_Map.GetMapWorldSize then
		local ok, a, b = pcall(C_Map.GetMapWorldSize, pmap)
		if ok and a and a > 0 and b and b > 0 then wx, wy = a, b end
	end
	return ndx * wx, -(ndy * wy)                 -- (leste, norte)
end

local function minimapVector(goal)
	local right, up
	-- NÃO usar "ns.Waypoint and ns.Waypoint:DistanceTo(...)": o `and` trunca
	-- os múltiplos retornos para 1 valor (dx/dy virariam nil).
	local dist, dx, dy
	if ns.Waypoint then dist, dx, dy = ns.Waypoint:DistanceTo(goal) end  -- dx=norte, dy=oeste
	if dist then
		right, up = -dy, dx                       -- direita=leste=-oeste, cima=norte
	else
		right, up = normalizedDir(goal)
		if not right then return nil end
	end
	if GetCVar and GetCVar("rotateMinimap") == "1" then
		local f = GetPlayerFacing and GetPlayerFacing() or 0
		local c, s = math.cos(f), math.sin(f)
		right, up = right * c + up * s, -right * s + up * c
	end
	local mag = math.sqrt(right * right + up * up)
	if mag < 1e-6 then return nil end
	return right / mag, up / mag, dist   -- dist em jardas (nil no fallback)
end

--------------------------------------------------------------------------------
-- trilha no minimapa
--------------------------------------------------------------------------------
local mmFrame, mmGlow, mmCore, mmEnd
local function ensureMM()
	if mmFrame then return end
	mmFrame = CreateFrame("Frame", "LodestarMMTrail", Minimap)
	mmFrame:SetAllPoints(Minimap)
	mmFrame:SetFrameStrata("HIGH")
	mmFrame:SetFrameLevel((Minimap:GetFrameLevel() or 3) + 8)
	mmGlow = line(mmFrame, 8, 0.28)
	mmCore = line(mmFrame, 3, 0.9)
	mmEnd = mmFrame:CreateTexture(nil, "OVERLAY")   -- anel no destino
	mmEnd:SetTexture(UI.MEDIA .. "ring")
	mmEnd:SetVertexColor(UI.unpackc(ACC))
	mmEnd:SetSize(15, 15)
	mmEnd:Hide()
	mmFrame:SetScript("OnUpdate", pulse)
end

local function hideMM()
	if mmCore then mmGlow:Hide(); mmCore:Hide(); mmEnd:Hide() end
end

local function updateMinimap()
	if not (ns.db and ns.db.trail and ns:UIShown()) then return hideMM() end
	ensureMM()
	-- guarda separada: "and" trunca múltiplos retornos (traveling viraria nil)
	if not ns.Waypoint then return hideMM() end
	local goal, traveling = ns.Waypoint:DrawContext()
	if not goal or traveling then return hideMM() end       -- viajando (portal/pedra): sem trilha
	local rx, ry, dist = minimapVector(goal)
	if not rx then return hideMM() end
	local radiusPix = Minimap:GetWidth() / 2
	if radiusPix <= 0 then return hideMM() end
	local maxPix = radiusPix * 0.9
	-- comprimento proporcional à distância; se além do alcance, vai até a borda
	local endPix = dist and (dist / minimapRange()) * radiusPix or maxPix
	local onMap = endPix <= maxPix
	local L = math.min(endPix, maxPix)
	for _, l in ipairs({ mmGlow, mmCore }) do
		l:SetStartPoint("CENTER", mmFrame, 0, 0)
		l:SetEndPoint("CENTER", mmFrame, rx * L, ry * L)
		l:Show()
	end
	if onMap then                          -- alvo visível: marca o ponto de chegada
		mmEnd:ClearAllPoints()
		mmEnd:SetPoint("CENTER", mmFrame, "CENTER", rx * L, ry * L)
		mmEnd:Show()
	else
		mmEnd:Hide()
	end
end

--------------------------------------------------------------------------------
-- trilha no mapa-múndi (linha exata player -> alvo)
--------------------------------------------------------------------------------
local wmFrame, wmGlow, wmCore
local function hideWM()
	if wmCore then wmGlow:Hide(); wmCore:Hide() end
end

local function updateWorld()
	local WMF = WorldMapFrame
	if not (ns.db and ns.db.trail and ns:UIShown()
		and WMF and WMF.GetCanvas and WMF:IsShown()) then return hideWM() end
	if not ns.Waypoint then return hideWM() end
	local goal, traveling = ns.Waypoint:DrawContext()
	local shown = WMF.GetMapID and WMF:GetMapID()
	if not goal or traveling or not goal.goto_
		or shown ~= (ns.TargetMapID and ns.TargetMapID(goal)) then
		return hideWM()
	end
	local ppos = C_Map.GetPlayerMapPosition and C_Map.GetPlayerMapPosition(shown, "player")
	if not ppos then return hideWM() end
	local ok, canvas = pcall(WMF.GetCanvas, WMF)
	if not ok or not canvas then return end
	if not wmFrame then
		wmFrame = CreateFrame("Frame", "LodestarWMTrail", canvas)
		wmGlow = line(wmFrame, 16, 0.16)
		wmCore = line(wmFrame, 4, 0.6)
		wmFrame:SetScript("OnUpdate", pulse)
	end
	wmFrame:SetParent(canvas); wmFrame:SetAllPoints(canvas)
	local w, h = canvas:GetSize()
	for _, l in ipairs({ wmGlow, wmCore }) do
		l:SetStartPoint("TOPLEFT", canvas, ppos.x * w, -ppos.y * h)
		l:SetEndPoint("TOPLEFT", canvas, (goal.goto_.x / 100) * w, -(goal.goto_.y / 100) * h)
		l:Show()
	end
end

--------------------------------------------------------------------------------
-- diagnóstico ( /ls tdebug )
--------------------------------------------------------------------------------
ns.Trail = {}
function ns.Trail.Debug()
	ns:Print("|cfff0c26a-- Trail debug --|r")
	ns:Print("trail:", tostring(ns.db and ns.db.trail), "| guia:", tostring(ns.currentGuide ~= nil))
	local goal = ns.Waypoint and ns.Waypoint:PickTarget()
	if not goal then return ns:Print("sem alvo (PickTarget nil)") end
	ns:Print("alvo:", goal.text or "?", "| goto:",
		goal.goto_ and (goal.goto_.zone or "?") or "nil",
		goal.goto_ and goal.goto_.x, goal.goto_ and goal.goto_.y)
	local pmap = C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	local tmap = ns.TargetMapID and ns.TargetMapID(goal)
	ns:Print("pmap:", tostring(pmap), "| tmap:", tostring(tmap))
	local dist, dx, dy = ns.Waypoint:DistanceTo(goal)
	ns:Print("DistanceTo:", tostring(dist), dx, dy)
	local rx, ry, d2 = minimapVector(goal)
	ns:Print("minimapVector:", tostring(rx), tostring(ry))
	ns:Print("range(jardas):", minimapRange(), "| zoom:",
		Minimap and Minimap:GetZoom(), "| Minimap w:", Minimap and Minimap:GetWidth())
	if d2 then
		ns:Print("frac. do raio:", string.format("%.2f", d2 / minimapRange()),
			"(>0.9 = alvo fora do minimapa, linha vai só até a borda)")
	end
	ns:Print("mmCore shown:", mmCore and tostring(mmCore:IsShown()),
		"| mmEnd shown:", mmEnd and tostring(mmEnd:IsShown()))
end

--------------------------------------------------------------------------------
ns:Every(0.1, updateMinimap)
ns:Every(0.25, updateWorld)
