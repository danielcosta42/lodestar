--=============================================================================
-- TravelPanel — o painel Viagem (bússola no cabeçalho do guia, /ls travel): para onde
-- a rota vai (corpo, manual ou guia) e "Limpar"; o serviço mais perto, um botão por
-- tipo (profissão abre a lista); coordenada digitada; as pernas da rota com tempo.
--=============================================================================
local ADDON, ns = ...
if not ns.On then return end
local TP = {}
ns.TravelPanel = TP
local UI = ns.UI

local W, PAD, ROW = 300, 12, 15
local MAX_LEGS = 10
local frame, destKind, destText, clearBtn, corpseText, legRows, totalText, noRoute, profList, status
local legTop                                   -- y onde começam as pernas

local function section(parent, y, text)
	local fs = parent:CreateFontString(nil, "OVERLAY")
	UI.SetFont(fs, 10, { num = true, color = UI.COL.muted })
	fs:SetPoint("TOPLEFT", PAD, -y)
	fs:SetText(text:upper())
	return fs
end

local function line(parent, y, size, col)
	local fs = parent:CreateFontString(nil, "OVERLAY")
	UI.SetFont(fs, size or 12, { color = col or UI.COL.active })
	fs:SetPoint("TOPLEFT", PAD, -y)
	fs:SetWidth(W - 2 * PAD); fs:SetJustifyH("LEFT"); fs:SetWordWrap(false)
	return fs
end

-- nome da profissão: a tradução, se houver; o ns.L devolve "[CHAVE]" para o que falta
function TP.ProfLabel(prof)
	return rawget(ns.L, "PROF_" .. (prof:upper():gsub("%s+", "_"))) or prof
end

-- serviço pedido pelo painel: a falha aparece aqui, não no chat
local function say(msg)
	status:SetText(msg or ""); status:Show()
	if C_Timer then C_Timer.After(6, function() if status:GetText() == msg then status:Hide() end end) end
end
local function goService(kind, sub)
	local ok, msg = ns.Services:GoTo(kind, sub, true)
	if not ok then say(msg) end
end

-- lista de profissões ao lado do painel (o botão "Treinador de profissão")
local function toggleProfList(anchor)
	if profList and profList:IsShown() then return profList:Hide() end
	if not profList then
		profList = UI.Panel(frame, { color = UI.COL.bg })
		profList:SetFrameStrata("DIALOG")
		local names = {}
		for prof in pairs(ns.profTrainers or {}) do names[#names + 1] = prof end
		table.sort(names)
		for i, prof in ipairs(names) do
			local b = UI.Button(profList, TP.ProfLabel(prof), 120, 20)
			b:SetPoint("TOPLEFT", 6, -6 - (i - 1) * 22)
			b:SetScript("OnClick", function()
				profList:Hide()
				goService("proftrainer", prof)
			end)
		end
		profList:SetSize(132, 12 + #names * 22 - 2)
	end
	profList:ClearAllPoints(); profList:SetPoint("TOPLEFT", anchor, "TOPRIGHT", 6, 0)
	profList:Show()
end

local function build()
	if frame then return frame end
	local C, L = UI.COL, ns.L
	frame = UI.Panel(UIParent, { name = "LodestarTravel" })
	frame:SetWidth(W)
	frame:SetPoint("CENTER", 220, 40)
	frame:SetFrameStrata("HIGH"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	tinsert(UISpecialFrames, "LodestarTravel")       -- Esc fecha

	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(28)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local accent = UI.Rect(header, "ARTWORK", C.accent)
	accent:SetPoint("TOPLEFT"); accent:SetPoint("TOPRIGHT"); accent:SetHeight(2)
	local icon = UI.Glyph(header, "seta-rota", "ARTWORK", 64); icon:SetSize(14, 14)
	icon:SetPoint("LEFT", 9, 0); icon:SetVertexColor(UI.unpackc(C.accent))
	local title = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(title, 13, { color = C.active })
	title:SetPoint("LEFT", icon, "RIGHT", 6, 0); title:SetText(L.TRAVEL_TITLE)
	UI.CloseButton(header, function() frame:Hide() end):SetPoint("RIGHT", -6, 0)

	-- destino
	local y = 38
	section(frame, y, L.TRAVEL_DEST)
	clearBtn = UI.Button(frame, L.TRAVEL_CLEAR, 64, 18)
	clearBtn:SetPoint("TOPRIGHT", -PAD, -y + 4)
	clearBtn:SetScript("OnClick", function() ns.Waypoint:ClearCustom() end)
	y = y + 16
	destKind = line(frame, y, 10, C.accent)
	y = y + 13
	destText = line(frame, y, 12)
	y = y + 16
	corpseText = line(frame, y, 11, { 0.9, 0.3, 0.3, 1 })
	y = y + 20

	-- serviço mais perto: dois por linha
	section(frame, y, L.TRAVEL_NEAREST)
	y = y + 15
	local bw = (W - 2 * PAD - 6) / 2
	for i, kind in ipairs(ns.Services.KINDS) do
		local b = UI.Button(frame, L["SERVICE_" .. kind:upper()] or kind, bw, 21)
		b:SetPoint("TOPLEFT", PAD + ((i - 1) % 2) * (bw + 6), -y - math.floor((i - 1) / 2) * 25)
		b:SetScript("OnClick", function(self)
			if kind == "proftrainer" then return toggleProfList(self) end
			goService(kind)
		end)
	end
	y = y + math.ceil(#ns.Services.KINDS / 2) * 25
	status = line(frame, y, 11, C.amber); status:Hide()
	y = y + 16

	-- coordenada
	section(frame, y, L.TRAVEL_COORD)
	y = y + 15
	local box = CreateFrame("EditBox", nil, frame)
	box:SetPoint("TOPLEFT", PAD, -y); box:SetSize(W - 2 * PAD - 50, 21)
	box:SetFontObject(ChatFontNormal); box:SetAutoFocus(false); box:SetTextInsets(6, 6, 0, 0)
	UI.Rect(box, "BACKGROUND", C.panel):SetAllPoints()
	UI.AddBorder(box, C.border)
	local function go()
		if ns.Waypoint:Way(box:GetText()) then box:SetText(""); box:ClearFocus()
		else ns:Print(L.TRAVEL_COORD_BAD) end
	end
	box:SetScript("OnEnterPressed", go)
	box:SetScript("OnEscapePressed", box.ClearFocus)
	local goBtn = UI.Button(frame, L.TRAVEL_GO, 44, 21)
	goBtn:SetPoint("LEFT", box, "RIGHT", 6, 0)
	goBtn:SetScript("OnClick", go)
	y = y + 25
	local hint = line(frame, y, 10, C.muted)
	hint:SetWordWrap(true); hint:SetText(L.TRAVEL_HINT)
	y = y + 28

	-- rota
	section(frame, y, L.TRAVEL_ROUTE)
	totalText = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(totalText, 11, { num = true, color = C.amber })
	totalText:SetPoint("TOPRIGHT", -PAD, -y)
	y = y + 16
	legTop = y
	noRoute = line(frame, y, 11, C.muted); noRoute:SetText(L.TRAVEL_NOROUTE)
	legRows = {}
	for i = 1, MAX_LEGS do legRows[i] = line(frame, y + (i - 1) * ROW, 11) end

	frame:SetScript("OnShow", function() TP.Refresh() end)
	frame:Hide()
	return frame
end

local KIND_COL = { corpse = { 0.9, 0.3, 0.3, 1 } }

function TP.Refresh()
	if not (frame and frame:IsShown()) then return end
	local C, L, D, T = UI.COL, ns.L, ns.Destinations, ns.Travel
	local dest, kind = D:Active()
	destKind:SetText(kind and L["TRAVEL_KIND_" .. kind:upper()] or "")
	destKind:SetTextColor(UI.unpackc(KIND_COL[kind] or C.accent))
	destText:SetText(dest and (dest.label or L.DEST) or L.TRAVEL_NODEST)
	clearBtn:SetShown(D:Get("manual") ~= nil)
	local corpse = D:Get("corpse")
	local info = corpse and corpse.map and C_Map.GetMapInfo(corpse.map)
	corpseText:SetText(corpse and L.TRAVEL_CORPSE:format(info and info.name or "?") or "")

	local route = T:Route()
	local n = route and math.min(#route.legs, MAX_LEGS) or 0
	noRoute:SetShown(n == 0)
	for i, row in ipairs(legRows) do
		if i <= n then
			row:SetText(("%d. %s"):format(i, ns.Waypoint.LegText(route, i, nil, GetServerTime and GetServerTime())))
			local col = i == route.leg and C.accent or C.active
			row:SetTextColor(col[1], col[2], col[3], i < route.leg and 0.4 or 1)
			row:Show()
		else
			row:Hide()
		end
	end
	local p = route and T.PlayerWorld()
	totalText:SetText(p and ns.Waypoint.FmtTime(T.Remaining(route, p, T:Speed(), GetServerTime and GetServerTime())) or "")
	frame:SetHeight(legTop + math.max(1, n) * ROW + PAD)
end

function TP:Toggle()
	build()
	frame:SetShown(not frame:IsShown())
end

ns:Every(1, function()
	local ok, err = pcall(TP.Refresh)
	if not ok then ns:Debug("TravelPanel:", err) end
end)
