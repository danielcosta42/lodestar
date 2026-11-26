--=============================================================================
-- TomTomShim — compatibilidade com o TomTom (specs/revamp-polestar, R14; opcional, desligado). Sem o TomTom instalado,
-- `TomTom:AddWaypoint(mapa, x, y, opções)` de outros addons e `/way [#mapa|zona] x y [nome]` viram o destino manual do
-- Lodestar (a seta, a rota, a bússola); `RemoveWaypoint` limpa. Com o TomTom, nada muda: ele é quem responde.
-- No topo, o núcleo puro (ParseWay, testado fora do jogo). Abaixo, a API mínima.
--=============================================================================
local ADDON, ns = ...
local TT = {}
ns.TomTomShim = TT

local function num(s)
	s = s and s:gsub(",$", "")
	local n = tonumber(s)
	return n and n >= 0 and n <= 100 and n or nil
end

-- "/way #1429 42.5 65.2 Casa" | "/way Elwynn Forest 42.5, 65.2 Casa" | "/way 42.5 65.2"
-- -> { map = 1429 } ou { zone = "Elwynn Forest" } ou {}, x, y, nome
function TT.ParseWay(text)
	if type(text) ~= "string" then return nil end
	local words = {}
	for w in text:gsub(",", " "):gmatch("%S+") do words[#words + 1] = w end
	for i = 1, #words - 1 do
		local x, y = num(words[i]), num(words[i + 1])
		if x and y then
			local where, before = {}, table.concat(words, " ", 1, i - 1)
			local id = before:match("^#(%d+)$")
			if id then where.map = tonumber(id)
			elseif before ~= "" then where.zone = before end
			local label = table.concat(words, " ", i + 2)
			return where, x, y, label ~= "" and label or nil
		end
	end
	return nil
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local AO = C_AddOns or {}

-- O TomTom vai carregar (ou já carregou)? Instalado e ligado para este personagem.
local function tomtomPresent()
	if rawget(_G, "TomTom") and not (TomTom.__lodestar) then return true end
	local loaded = AO.IsAddOnLoaded or IsAddOnLoaded
	if loaded and loaded("TomTom") then return true end
	-- a ordem dos argumentos mudou entre versões (addon, personagem) x (personagem, addon): vale a que responder
	local state, me = AO.GetAddOnEnableState or GetAddOnEnableState, UnitName("player")
	if state then
		for _, args in ipairs({ { "TomTom", me }, { me, "TomTom" } }) do
			local ok, s = pcall(state, args[1], args[2])
			if ok and tonumber(s) and tonumber(s) > 0 then return true end
		end
	end
	return false
end

-- o mapa (uiMapID) de um nome de zona no idioma do cliente ou em inglês
local function mapOfZone(zone)
	if not zone then return nil end
	if ns.zoneUiMap and ns.zoneUiMap[zone] then return ns.zoneUiMap[zone] end
	local low = zone:lower()
	for eng, id in pairs(ns.zoneUiMap or {}) do
		if eng:lower() == low or ns.LocalizedZone(eng):lower() == low then return id end
	end
end

local current           -- o "uid" do último ponto que veio por aqui

-- O que não tem aqui responde nada (um addon que chama AddZWaypoint, GetKey... não estoura).
local function nothing() return nil end
local shim = setmetatable({ __lodestar = true }, { __index = function() return nothing end })

function shim:AddWaypoint(map, x, y, opts)
	if not (tonumber(map) and tonumber(x) and tonumber(y) and ns.Waypoint) then return nil end
	local label = type(opts) == "table" and (opts.title or opts.desc) or nil
	ns.Waypoint:SetCustom(nil, x * 100, y * 100, label or ns.L.WAYPOINT, tonumber(map))
	current = { map, x, y, label }
	return current
end
function shim:AddMFWaypoint(map, _, x, y, opts) return self:AddWaypoint(map, x, y, opts) end
function shim:RemoveWaypoint(uid)
	if uid and uid == current and ns.Waypoint then ns.Waypoint:ClearCustom(); current = nil end
end
function shim:ClearAllWaypoints() if current and ns.Waypoint then ns.Waypoint:ClearCustom(); current = nil end end
function shim:SetClosestWaypoint() end
function shim:SetCrazyArrow(uid) return uid end
function shim:WaypointExists() return false end
function shim:IsValidWaypoint(uid) return uid ~= nil and uid == current end
function shim:GetDistanceToWaypoint() return nil end

local function slashWay(msg)
	msg = (msg or ""):gsub("^%s+", ""):gsub("%s+$", "")
	if msg == "" or msg == "off" or msg == "reset" or msg == "clear" then
		if ns.Waypoint then ns.Waypoint:ClearCustom() end
		return ns:Print(ns.L.DEST_CLEARED)
	end
	local where, x, y, label = TT.ParseWay(msg)
	if not where then return ns:Print(ns.L.WAY_USAGE) end
	local map = where.map or mapOfZone(where.zone) or (not where.zone and C_Map.GetBestMapForUnit("player"))
	if not map then return ns:Printf(ns.L.WAY_NOZONE, where.zone or "?") end
	ns.Waypoint:SetCustom(nil, x, y, label or ns.L.WAYPOINT, map)
	local info = C_Map.GetMapInfo(map)
	ns:Printf("%s: %s %.1f, %.1f", label or ns.L.WAYPOINT, info and info.name or "?", x, y)
end

function TT:Install()
	if self.installed or not (ns.db and ns.db.tomtomShim) or tomtomPresent() then return end
	self.installed = true
	_G.TomTom = shim
	if not (SlashCmdList.TOMTOM_WAY or SlashCmdList.WAY) then
		SLASH_LODESTARWAY1 = "/way"
		SlashCmdList.LODESTARWAY = slashWay
	end
end

ns:On("_INIT", function() TT:Install() end)
TT.SlashWay = slashWay
