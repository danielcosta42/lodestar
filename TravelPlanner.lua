--=============================================================================
-- TravelPlanner — sugere a MELHOR forma de chegar ao destino a partir de onde o
-- player está: Pedra de Lar (resolvendo a zona da pedra até de vilas), portal de
-- Shattrath (hub do TBC), Portal Sombrio, barco/zepelim ou voo.
--=============================================================================
local ADDON, ns = ...
local TP = {}
ns.TravelPlanner = TP

-- Continentes: EK = Reinos do Leste, K = Kalimdor, O = Outland
local CONTINENT = {
	-- Reinos do Leste
	["Eversong Woods"]="EK", ["Ghostlands"]="EK", ["Silvermoon City"]="EK", ["Isle of Quel'Danas"]="EK",
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
	["Moonglade"]="K", ["Darnassus"]="K", ["Azuremyst Isle"]="K", ["Bloodmyst Isle"]="K", ["The Exodar"]="K",
	["Durotar"]="K", ["Azshara"]="K", ["The Barrens"]="K", ["Orgrimmar"]="K",
	["Mulgore"]="K", ["Thousand Needles"]="K", ["Stonetalon Mountains"]="K", ["Desolace"]="K",
	["Feralas"]="K", ["Dustwallow Marsh"]="K", ["Tanaris"]="K", ["Un'Goro Crater"]="K",
	["Silithus"]="K", ["Thunder Bluff"]="K",
	-- Outland
	["Hellfire Peninsula"]="O", ["Zangarmarsh"]="O", ["Terokkar Forest"]="O", ["Nagrand"]="O",
	["Blade's Edge Mountains"]="O", ["Netherstorm"]="O", ["Shadowmoon Valley"]="O", ["Shattrath City"]="O",
}
local OUTLAND = {}
for z, c in pairs(CONTINENT) do if c == "O" then OUTLAND[z] = true end end
-- Isle of Quel'Danas é acessado por portal em Shattrath (2.4)
OUTLAND["Isle of Quel'Danas"] = nil

-- Zonas alcançadas pelo Teleporte: Cerro da Lua (druida) — Moonglade é isolada.
local MOONGLADE_REGION = { ["Moonglade"] = true, ["Felwood"] = true, ["Winterspring"] = true }

-- Zona-alvo -> capital cujo PORTAL de Shattrath te deixa mais perto, por facção.
-- (Shattrath tem portais p/ as capitais; a capital serve as zonas ao redor dela.)
local ZONE_CAPITAL = {
	-- Reino de Silvermoon (Sangue-Elfo / Horda)
	["Eversong Woods"] = { H = "Silvermoon City" }, ["Ghostlands"] = { H = "Silvermoon City" },
	["Silvermoon City"] = { H = "Silvermoon City" }, ["Isle of Quel'Danas"] = { H = "Silvermoon City", A = "Silvermoon City" },
	-- Undercity (Horda) — leste dos Reinos do Leste
	["Tirisfal Glades"] = { H = "Undercity" }, ["Silverpine Forest"] = { H = "Undercity" },
	["Western Plaguelands"] = { H = "Undercity", A = "Ironforge" },
	["Eastern Plaguelands"] = { H = "Undercity", A = "Ironforge" },
	["Hillsbrad Foothills"] = { H = "Undercity", A = "Ironforge" },
	["Alterac Mountains"] = { H = "Undercity", A = "Ironforge" },
	["Arathi Highlands"] = { H = "Undercity", A = "Ironforge" },
	["The Hinterlands"] = { H = "Undercity", A = "Ironforge" },
	-- Ironforge (Aliança) — norte dos Reinos do Leste
	["Dun Morogh"] = { A = "Ironforge" }, ["Loch Modan"] = { A = "Ironforge" },
	["Wetlands"] = { A = "Ironforge" }, ["Searing Gorge"] = { A = "Ironforge", H = "Undercity" },
	["Badlands"] = { A = "Ironforge", H = "Undercity" },
	["Burning Steppes"] = { A = "Ironforge", H = "Undercity" },
	["Ironforge"] = { A = "Ironforge" },
	-- Stormwind (Aliança) — sul dos Reinos do Leste
	["Elwynn Forest"] = { A = "Stormwind City" }, ["Westfall"] = { A = "Stormwind City" },
	["Redridge Mountains"] = { A = "Stormwind City" }, ["Duskwood"] = { A = "Stormwind City" },
	["Deadwind Pass"] = { A = "Stormwind City" },
	["Stranglethorn Vale"] = { A = "Stormwind City", H = "Orgrimmar" },
	["Blasted Lands"] = { A = "Stormwind City", H = "Orgrimmar" },
	["Swamp of Sorrows"] = { A = "Stormwind City", H = "Orgrimmar" },
	["Stormwind City"] = { A = "Stormwind City" },
	-- Darnassus (Aliança) — norte de Kalimdor
	["Teldrassil"] = { A = "Darnassus" }, ["Darkshore"] = { A = "Darnassus" },
	["Ashenvale"] = { A = "Darnassus", H = "Orgrimmar" },
	["Felwood"] = { A = "Darnassus", H = "Thunder Bluff" },
	["Winterspring"] = { A = "Darnassus", H = "Thunder Bluff" },
	["Moonglade"] = { A = "Darnassus", H = "Thunder Bluff" },
	["Darnassus"] = { A = "Darnassus" },
	-- The Exodar (Aliança / Draenei)
	["Azuremyst Isle"] = { A = "The Exodar" }, ["Bloodmyst Isle"] = { A = "The Exodar" },
	["The Exodar"] = { A = "The Exodar" },
	-- Orgrimmar (Horda) — leste/centro de Kalimdor
	["Durotar"] = { H = "Orgrimmar" }, ["Azshara"] = { H = "Orgrimmar" },
	["The Barrens"] = { H = "Orgrimmar" }, ["Orgrimmar"] = { H = "Orgrimmar" },
	-- Thunder Bluff (Horda) — centro/sul de Kalimdor
	["Mulgore"] = { H = "Thunder Bluff" }, ["Thousand Needles"] = { H = "Thunder Bluff" },
	["Stonetalon Mountains"] = { H = "Thunder Bluff", A = "Darnassus" },
	["Desolace"] = { H = "Thunder Bluff", A = "Darnassus" },
	["Feralas"] = { H = "Thunder Bluff", A = "Darnassus" },
	["Dustwallow Marsh"] = { H = "Thunder Bluff", A = "Stormwind City" },
	["Tanaris"] = { H = "Thunder Bluff", A = "Stormwind City" },
	["Un'Goro Crater"] = { H = "Thunder Bluff", A = "Stormwind City" },
	["Silithus"] = { H = "Thunder Bluff", A = "Stormwind City" },
	["Thunder Bluff"] = { H = "Thunder Bluff" },
}

local function localizedZone(engZone)
	if ns.zoneUiMap and ns.zoneUiMap[engZone] and C_Map and C_Map.GetMapInfo then
		local info = C_Map.GetMapInfo(ns.zoneUiMap[engZone])
		if info and info.name then return info.name end
	end
	return engZone
end

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

--------------------------------------------------------------------------------
-- Sugestão de viagem. Retorna (texto, hop) onde hop = {zone,x,y} do cais/portal
-- para a seta mirar o ponto exato (ou nil = método instantâneo/sem destino físico).
-- Retorno nil = a seta usa "Vá para X". targetEng = inglês.
--------------------------------------------------------------------------------
function TP:Plan(targetEng)
	if not targetEng then return nil end
	local T = ns.transit
	local locTarget = localizedZone(targetEng)
	local hz = self:HearthZone()
	local _, class = UnitClass("player")
	local level = UnitLevel("player") or 1
	local fac = UnitFactionGroup("player") == "Horde" and "H" or "A"
	local cap = (ZONE_CAPITAL[targetEng] or {})[fac]
	local inShat = (GetZoneText and (GetZoneText() or ""):find("Shattrath")) ~= nil
	local hearthShat = hz and hz:find("Shattrath") ~= nil
	local pcon = self:PlayerContinent()
	local tcon = CONTINENT[targetEng]
	local crossCont = tcon and pcon and tcon ~= pcon

	-- 1) Pedra/Recordação já na zona-alvo (vilas via subzona->zona) — instantâneo
	if hz and locTarget and hz:lower() == locTarget:lower() then
		return (class == "SHAMAN") and ns.L.USE_RECALL or ns.L.USE_HEARTH
	end

	-- 2) VOCÊ está em Shattrath: portais da Terraça da Luz (mira o cluster da facção)
	if inShat then
		if cap then return ns.L.PORTAL_TO:format(localizedZone(cap)), T and T.terrace and T.terrace[fac] end
		-- alvo em Outland sem portal: NÃO retorna nil — cai no ponto de voo (passo 7),
		-- mirando o mestre de voo de Shattrath (Nutral). "É só voar" precisa dizer ONDE.
	end

	-- 3) Transporte de CLASSE (só compensa cruzando continente / destino remoto)
	if class == "MAGE" and level >= 20 then
		if crossCont and cap then return ns.L.TELEPORT_TO:format(localizedZone(cap)) end
		if crossCont and tcon == "O" and level >= 64 then
			return ns.L.TELEPORT_TO:format(localizedZone("Shattrath City"))
		end
	elseif class == "DRUID" and level >= 14 and MOONGLADE_REGION[targetEng] then
		if targetEng == "Moonglade" or crossCont then
			return ns.L.TELEPORT_TO:format(localizedZone("Moonglade")), T and T.moonglade
		end
	end

	-- 4) sua PEDRA está em Shattrath: hearth -> Shattrath -> portal/voo
	if hearthShat and (crossCont or cap) then
		if cap then return ns.L.HEARTH_PORTAL:format(localizedZone(cap)) end
		if tcon == "O" then return ns.L.HEARTH_OUTLAND end
	end

	-- 5) você está em Outland, alvo é clássico: voe a Shattrath e use o portal
	if pcon == "O" and cap then
		return ns.L.FLY_SHAT_PORTAL:format(localizedZone(cap))
	end

	-- 6) transferência de continente sem atalho por Shattrath
	if crossCont then
		if tcon == "O" then                                          -- clássico -> Outland
			return ns.L.DARK_PORTAL, T and T.darkPortal and T.darkPortal.EK
		elseif (pcon == "EK" and tcon == "K") or (pcon == "K" and tcon == "EK") then
			local hop = T and T.embark and T.embark[fac] and T.embark[fac][pcon]
			local zoneName = hop and localizedZone(hop.zone) or ""
			local txt = (fac == "H") and ns.L.ZEPPELIN:format(zoneName) or ns.L.SHIP:format(zoneName)
			return txt, hop
		end
	end

	-- 7) MESMO continente, zona diferente: PONTO DE VOO (o caso mais comum). Manda
	-- ao mestre de voo da SUA zona e diz "Pegue o voo para <alvo>". Hop = FM da zona
	-- atual, então a seta/trilha apontam ONDE pegar o voo (não o destino distante).
	if not crossCont and ns.flightMasters then
		local curEng = self:PlayerZoneEng()
		if curEng and curEng ~= targetEng then
			local fm = ns.flightMasters[curEng]
			local pt = fm and fm[fac]   -- só o MF da SUA facção (nada de mandar pro inimigo)
			if pt then
				return ns.L.FLY_PATH:format(locTarget), { zone = curEng, x = pt[1], y = pt[2] }
			end
		end
	end

	return nil
end
