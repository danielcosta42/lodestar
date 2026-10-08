--=============================================================================
-- TravelPlanner — onde o jogador está: zona (em inglês), continente, se já está na
-- zona-alvo e a zona da Pedra de Lar. A viagem em si é do Journey/Travel.
--=============================================================================
local ADDON, ns = ...
local TP = {}
ns.TravelPlanner = TP

-- Continentes: EK = Reinos do Leste, K = Kalimdor
local CONTINENT = {
	-- Reinos do Leste
	["Tirisfal Glades"]="EK", ["Silverpine Forest"]="EK", ["Western Plaguelands"]="EK",
	["Eastern Plaguelands"]="EK", ["Hillsbrad Foothills"]="EK", ["Alterac Mountains"]="EK",
	["Arathi Highlands"]="EK", ["The Hinterlands"]="EK", ["Undercity"]="EK",
	["Dun Morogh"]="EK", ["Loch Modan"]="EK", ["Wetlands"]="EK", ["Searing Gorge"]="EK",
	["Badlands"]="EK", ["Burning Steppes"]="EK", ["Ironforge"]="EK",
	["Elwynn Forest"]="EK", ["Westfall"]="EK", ["Redridge Mountains"]="EK", ["Duskwood"]="EK",
	["Deadwind Pass"]="EK", ["Stranglethorn Vale"]="EK", ["Blasted Lands"]="EK",
	["Swamp of Sorrows"]="EK", ["Stormwind City"]="EK",
	-- Kalimdor
	["Teldrassil"]="K", ["Darkshore"]="K", ["Ashenvale"]="K", ["Felwood"]="K", ["Winterspring"]="K",
	["Moonglade"]="K", ["Darnassus"]="K",
	["Durotar"]="K", ["Azshara"]="K", ["The Barrens"]="K", ["Orgrimmar"]="K",
	["Mulgore"]="K", ["Thousand Needles"]="K", ["Stonetalon Mountains"]="K", ["Desolace"]="K",
	["Feralas"]="K", ["Dustwallow Marsh"]="K", ["Tanaris"]="K", ["Un'Goro Crater"]="K",
	["Silithus"]="K", ["Thunder Bluff"]="K",
}
local localizedZone = ns.LocalizedZone

--------------------------------------------------------------------------------
-- Continente do player: sobe a cadeia de mapas (uiMap -> pai) até achar uma zona
-- conhecida em CONTINENT. uiMapToZone é o inverso de ns.zoneUiMap.
--------------------------------------------------------------------------------
local uiMapToZone
local function ensureUiMapToZone()
	if uiMapToZone then return end
	uiMapToZone = {}
	if ns.zoneUiMap then
		for name, id in pairs(ns.zoneUiMap) do
			-- Vários nomes-fake (raids de SoD) colidem no mesmo uiMapID de zonas reais
			-- (ex.: Blasted Lands e "The Tainted Scar" = 1419). Prefira a zona REAL
			-- (a que está em CONTINENT) sobre o fake, senão PlayerZoneEng dá nil ali.
			local cur = uiMapToZone[id]
			if not cur or (CONTINENT[name] and not CONTINENT[cur]) then
				uiMapToZone[id] = name
			end
		end
	end
end
local function mapContinent(uiMapID)
	ensureUiMapToZone()
	local guard = 0
	while uiMapID and guard < 12 do
		guard = guard + 1
		local eng = uiMapToZone[uiMapID]
		if eng and CONTINENT[eng] then return CONTINENT[eng] end
		local info = C_Map and C_Map.GetMapInfo and C_Map.GetMapInfo(uiMapID)
		uiMapID = info and info.parentMapID
		if uiMapID == 0 then uiMapID = nil end
	end
	return nil
end
function TP:ZoneContinent(eng) return CONTINENT[eng] end

function TP:PlayerContinent()
	local m = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	return m and mapContinent(m) or nil
end

-- Zona (inglês) onde o player está — sobe a cadeia de mapas até uma zona conhecida.
function TP:PlayerZoneEng()
	ensureUiMapToZone()
	local m = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	local guard = 0
	while m and guard < 12 do
		guard = guard + 1
		local eng = uiMapToZone[m]
		if eng and CONTINENT[eng] then return eng end
		local info = C_Map and C_Map.GetMapInfo and C_Map.GetMapInfo(m)
		m = info and info.parentMapID
		if m == 0 then m = nil end
	end
	return nil
end

-- Está na zona-alvo? Usa o MAPA, não GetZoneText — que em sub-zonas especiais
-- (Ogri'la, Skettis, Netherwing Ledge...) retorna o nome da sub-zona e faria a
-- viagem achar que você está "fora" da zona quando na verdade já chegou.
function TP:InZone(targetEng)
	if not targetEng then return true end
	local cur = self:PlayerZoneEng()
	if cur then return cur == targetEng end
	local pz = (GetZoneText and GetZoneText() or ""):lower()          -- fallback localizado
	return pz == "" or localizedZone(targetEng):lower() == pz
end

--------------------------------------------------------------------------------
-- bindMap: nome-de-subzona (como GetBindLocation retorna) -> nome da zona-pai.
-- Construído 1x via C_Map.GetAreaInfo sobre ns.subZoneToParent (dados Questie).
--------------------------------------------------------------------------------
local bindMap
local function buildBindMap()
	bindMap = {}
	local GAI = C_Map and C_Map.GetAreaInfo
	if not (GAI and ns.subZoneToParent) then return end
	local pcache = {}
	for sub, parent in pairs(ns.subZoneToParent) do
		local subName = GAI(sub)
		if subName then
			local zoneName = pcache[parent]
			if zoneName == nil then zoneName = GAI(parent) or false; pcache[parent] = zoneName end
			if zoneName then bindMap[subName:lower()] = zoneName end
		end
	end
end

-- Zona (localizada) onde a Pedra de Lar está vinculada, ou nil.
function TP:HearthZone()
	local bind = GetBindLocation and GetBindLocation()
	if not bind or bind == "" then return nil end
	if not bindMap then buildBindMap() end
	-- subzona conhecida -> zona-pai; senão o próprio bind (cidades = nome da zona)
	return (bindMap and bindMap[bind:lower()]) or bind
end
