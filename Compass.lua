--=============================================================================
-- Compass — faixa de bússola no topo da tela: N/L/S/O girando com o jogador e três
-- marcadores — a próxima parada da rota, o destino final e o próximo passo do guia
-- (quando é outro ponto). Fora do campo de visão, presos na borda. Ao lado: distância
-- da próxima parada e tempo total da viagem.
--=============================================================================
local ADDON, ns = ...
local CP = {}
ns.Compass = CP
local G = ns.RouteGeom

local FOV = math.rad(140)
local CARDINALS = { { k = "N", a = 0 }, { k = "W", a = math.pi / 2 }, { k = "S", a = math.pi }, { k = "E", a = 3 * math.pi / 2 } }

-- Marcas cardeais visíveis na faixa: { { k = "N", x = ... }, ... }
function CP.Cardinals(facing, fov, half)
	local out = {}
	for _, c in ipairs(CARDINALS) do
		local x, clamped = G.CompassX(0, 0, math.cos(c.a) * 100, math.sin(c.a) * 100, facing, fov, half)
		if not clamped then out[#out + 1] = { k = c.k, x = x } end
	end
	return out
end

if not ns.On then return end
local UI = ns.UI

local W, H = 360, 24
local frame, letters, markers, info

local function build()
	if frame then return frame end
	local C = UI.COL
	local db = ns.db.compass
	frame = UI.Panel(UIParent, { name = "LodestarCompass", color = { 0, 0, 0, 0.55 } })
	frame:SetSize(W, H)
	frame:SetPoint(db.point or "TOP", UIParent, db.point or "TOP", db.x or 0, db.y or -14)
	frame:SetFrameStrata("MEDIUM")
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function(self) if not db.locked then self:StartMoving() end end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local p, _, _, x, y = self:GetPoint()
		db.point, db.x, db.y = p, x, y
	end)
	local center = UI.Rect(frame, "ARTWORK", C.accent)
	center:SetSize(1, H - 6); center:SetPoint("CENTER")
	letters = {}
	for _, c in ipairs(CARDINALS) do
		local fs = frame:CreateFontString(nil, "OVERLAY")
		UI.SetFont(fs, 11, { num = true, color = c.k == "N" and C.accent or C.muted })
		fs:SetText(ns.L["COMPASS_" .. c.k] or c.k)
		letters[c.k] = fs
	end
	markers = {}
	for _, k in ipairs({ "stop", "dest", "step" }) do
		local t = k == "dest" and UI.Glyph(frame, "alvo", "OVERLAY", 64) or UI.Media(frame, "ring", "OVERLAY")
		t:SetSize(k == "dest" and 16 or 12, k == "dest" and 16 or 12)
		markers[k] = t
	end
	info = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(info, 10, { num = true, color = C.amber })
	info:SetPoint("LEFT", frame, "RIGHT", 6, 0)
	return frame
end

function CP:ApplyDisplay()
	if not frame then return end
	frame:SetScale((ns.db.compass.scale or 1))
end

local function place(tex, p, w, facing, col)
	if not w or w.c ~= p.c then tex:Hide(); return end
	local x, clamped = G.CompassX(p.x, p.y, w.x, w.y, facing, FOV, W / 2 - 8)
	tex:ClearAllPoints(); tex:SetPoint("CENTER", frame, "CENTER", x, 0)
	tex:SetVertexColor(col[1], col[2], col[3], clamped and 0.55 or 1)
	tex:Show()
end

local function update()
	local db = ns.db and ns.db.compass
	local route = ns.Travel and ns.Travel:Route()
	local p = route and ns.Travel.PlayerWorld()
	if not (db and db.enabled and route and p and ns:UIShown()) then
		if frame then frame:Hide() end
		return
	end
	build():Show()
	local C = UI.COL
	local facing = GetPlayerFacing and GetPlayerFacing() or 0
	for _, c in ipairs(CARDINALS) do letters[c.k]:Hide() end
	for _, m in ipairs(CP.Cardinals(facing, FOV, W / 2 - 8)) do
		letters[m.k]:ClearAllPoints(); letters[m.k]:SetPoint("CENTER", frame, "CENTER", m.x, 0)
		letters[m.k]:Show()
	end
	local leg = route.legs[route.leg]
	local last = route.legs[#route.legs]
	local red = route.dest and route.dest.red
	place(markers.stop, p, leg and leg ~= last and leg.b or nil, facing, C.tip)
	place(markers.dest, p, last and last.b, facing, red and { 0.9, 0.2, 0.2 } or C.accent)
	-- o próximo passo do guia, quando a rota vai a outro lugar (manual, corpo, serviço)
	local step = route.kind ~= "guide" and ns.Destinations and ns.Destinations.GuideTarget()
	place(markers.step, p, step and ns.Travel.World(step.zone, step.x, step.y) or nil, facing, C.done)
	local d = leg and leg.b.c == p.c and math.sqrt((leg.b.x - p.x) ^ 2 + (leg.b.y - p.y) ^ 2)
	info:SetText((d and (ns.L.YARDS:format(d) .. " · ") or "") .. ns.Waypoint.FmtTime(
		ns.Travel.Remaining(route, p, ns.Travel:Speed())))
end

ns:Every(0.05, function()
	local ok, err = pcall(update)
	if not ok then ns:Debug("Compass:", err); if frame then frame:Hide() end end
end)
