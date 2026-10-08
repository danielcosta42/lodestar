--=============================================================================
-- Compass — faixa de bússola no topo da tela, no traço das marcações do jogo: sem
-- painel, tracinhos a cada 15° (os de 90° maiores, com a letra) que somem em fade nas
-- pontas, o pino de waypoint do jogo no destino, o ícone de navegação na próxima parada
-- e, mais fraco, o passo do guia quando a rota vai a outro lugar. Fora do campo de
-- visão, presos na ponta. Embaixo do centro: distância da parada e tempo total.
--=============================================================================
local ADDON, ns = ...
local CP = {}
ns.Compass = CP

local FOV = math.pi                     -- 180°: a faixa inteira é a metade da frente
local STEP = math.rad(15)
local LETTER = { [0] = "N", [6] = "W", [12] = "S", [18] = "E" }   -- tracinho i = i*15°, anti-horário

-- Tracinhos visíveis na faixa: { { i, x, alpha, major, k }, ... }. `half` = meia largura
-- em pixels; `fade` = quantos pixels antes da ponta eles começam a sumir.
function CP.Ticks(facing, fov, half, fade)
	local out, edge = {}, fov / 2
	for i = 0, 23 do
		local rel = (i * STEP - facing + math.pi) % (2 * math.pi) - math.pi
		if math.abs(rel) <= edge + 1e-9 then
			local x = math.max(-half, math.min(half, -rel / edge * half))
			local f = math.max(0, math.min(1, (half - math.abs(x)) / fade))
			local major = i % 6 == 0
			out[#out + 1] = { i = i, x = x, alpha = f * f * (major and 0.9 or 0.55), major = major, k = LETTER[i] }
		end
	end
	return out
end

if not ns.On then return end
local UI = ns.UI
local G = ns.RouteGeom

local W, H, FADE = 360, 40, 56
local PARCH = { 0.72, 0.67, 0.55 }      -- o tom de pergaminho das marcações do jogo
local TICK_Y, MARK_Y = -6, -10
local frame, ticks, markers, info, mover
local lastSig                         -- o que está desenhado; igual = não refaz

-- ícone do próprio jogo quando o cliente tem o atlas; senão, o nosso
local function icon(t, atlas, size, fallback)
	if C_Texture and C_Texture.GetAtlasInfo and C_Texture.GetAtlasInfo(atlas) then
		t:SetAtlas(atlas)
		t._atlas = true
	else
		t:SetTexture(fallback)
	end
	t:SetSize(size, size)
end

local function build()
	if frame then return frame end
	local C = UI.COL
	local db = ns.db.compass
	frame = CreateFrame("Frame", "LodestarCompass", UIParent)
	frame:SetSize(W, H)
	frame:SetPoint(db.point or "TOP", UIParent, db.point or "TOP", db.x or 0, db.y or -14)
	frame:SetFrameStrata("MEDIUM")
	frame:SetMovable(true); frame:SetClampedToScreen(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function(self) if not db.locked then self:StartMoving() end end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local p, _, _, x, y = self:GetPoint()
		db.point, db.x, db.y = p, x, y
	end)
	-- destravada: fundo e dica, para ver onde pegar
	mover = UI.Rect(frame, "BACKGROUND", { 0, 0, 0, 0.45 }); mover:SetAllPoints()

	ticks = {}
	for i = 0, 23 do
		local major = i % 6 == 0
		local t = UI.Rect(frame, "ARTWORK", { PARCH[1], PARCH[2], PARCH[3], 1 })
		t:SetSize(1, major and 6 or 3)
		if LETTER[i] then
			t.label = frame:CreateFontString(nil, "ARTWORK")
			UI.SetFont(t.label, 10, { num = true, color = LETTER[i] == "N" and C.accent or PARCH })
			t.label:SetText(ns.L["COMPASS_" .. LETTER[i]] or LETTER[i])
			t.label:SetPoint("TOP", t, "BOTTOM", 0, -2)
		end
		ticks[i] = t
	end
	local center = UI.Rect(frame, "OVERLAY", C.accent)
	center:SetSize(1, 8); center:SetPoint("TOP", frame, "TOP", 0, -2)

	markers = {}
	for _, k in ipairs({ "step", "stop", "dest" }) do      -- nessa ordem: o destino por cima
		local t = frame:CreateTexture(nil, "OVERLAY", nil, k == "dest" and 2 or (k == "stop" and 1 or 0))
		if k == "dest" then
			icon(t, "Waypoint-MapPin-Tracked", 18, UI.GLYPH .. "alvo-64")
		elseif k == "stop" then
			icon(t, "Navigation-Tracked-Icon", 15, UI.MEDIA .. "ring")
		else
			t:SetTexture(UI.MEDIA .. "ring"); t:SetSize(10, 10)
		end
		markers[k] = t
	end
	info = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(info, 11, { num = true, color = C.active })
	info:SetPoint("TOP", frame, "TOP", 0, -24)
	CP:ApplyDisplay()
	return frame
end

-- tamanho e trava; travada, não pega o mouse (não rouba o clique nem o arrastar da câmera)
function CP:ApplyDisplay()
	if not frame then return end
	local db = ns.db.compass
	frame:SetScale(db.scale or 1)
	frame:EnableMouse(not db.locked)
	mover:SetShown(not db.locked)
end

-- marcador no ponto de mundo `w`; preso na ponta (e mais fraco) fora do campo
local function place(tex, p, w, facing, tint, alpha)
	if not w or w.c ~= p.c then tex:Hide(); return end
	local x, clamped = G.CompassX(p.x, p.y, w.x, w.y, facing, FOV, W / 2 - 6)
	tex:ClearAllPoints(); tex:SetPoint("CENTER", frame, "TOP", x, MARK_Y)
	tex:SetVertexColor(tint[1], tint[2], tint[3])
	tex:SetAlpha((clamped and 0.5 or 1) * alpha)
	tex:Show()
end

local WHITE, RED = { 1, 1, 1 }, { 1, 0.3, 0.3 }

local function update()
	local db = ns.db and ns.db.compass
	local route = ns.Travel and ns.Travel:Route()
	local p = route and ns.Travel.PlayerWorld()
	if not (db and db.enabled and route and p and (route.kind ~= "guide" or ns:UIShown())) then
		if frame then frame:Hide() end
		lastSig = nil
		return
	end
	build():Show()
	local sig = ("%s|%d|%.1f|%.1f|%.3f|%.0f|%d"):format(tostring(route), route.leg, p.x, p.y,
		GetPlayerFacing and GetPlayerFacing() or 0, ns.Travel:Speed() * 10,
		GetServerTime and GetServerTime() or 0)       -- o segundo: a contagem do barco anda parada
	if sig == lastSig then return end
	lastSig = sig
	local C = UI.COL
	local facing = GetPlayerFacing and GetPlayerFacing() or 0
	for i = 0, 23 do
		ticks[i]:Hide()
		if ticks[i].label then ticks[i].label:Hide() end
	end
	for _, t in ipairs(CP.Ticks(facing, FOV, W / 2, FADE)) do
		local tex = ticks[t.i]
		tex:ClearAllPoints(); tex:SetPoint("TOP", frame, "TOP", t.x, TICK_Y)
		tex:SetAlpha(t.alpha); tex:Show()
		if tex.label then tex.label:SetAlpha(math.min(1, t.alpha + 0.1)); tex.label:Show() end
	end
	local leg = route.legs[route.leg]
	local last = route.legs[#route.legs]
	local nxt = route.legs[route.leg + 1]
	local red = route.dest and route.dest.red
	-- os ícones do jogo já vêm coloridos: só tinge o que precisa dizer algo (corpo, voo novo)
	local stopTint = markers.stop._atlas and WHITE or C.tip
	if nxt and nxt.discover then stopTint = C.amber end
	place(markers.stop, p, leg and leg ~= last and leg.b or nil, facing, stopTint, 1)
	place(markers.dest, p, last and last.b, facing, red and RED or (markers.dest._atlas and WHITE or C.accent), 1)
	-- o próximo passo do guia, quando a rota vai a outro lugar (manual, corpo, serviço)
	local step = route.kind ~= "guide" and ns.Destinations and ns.Destinations.GuideTarget()
	place(markers.step, p, step and ns.Travel.World(step.zone, step.x, step.y) or nil, facing, C.done, 0.6)
	local d = leg and leg.b.c == p.c and math.sqrt((leg.b.x - p.x) ^ 2 + (leg.b.y - p.y) ^ 2)
	if d and leg.k == "walk" and leg.path and ns.Terrain then d = select(3, ns.Terrain.Ahead(leg.path, p, 0)) end
	info:SetText((d and (ns.L.YARDS:format(d) .. "  ·  ") or "") .. ns.Waypoint.FmtTime(
		ns.Travel.Remaining(route, p, ns.Travel:Speed(), GetServerTime and GetServerTime())))
end

ns:Every(0.05, function()
	local ok, err = pcall(update)
	if not ok then ns:Debug("Compass:", err); lastSig = nil; if frame then frame:Hide() end end
end)
