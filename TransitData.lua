--=============================================================================
-- TransitData — infraestrutura de locomoção do TBC com PONTOS PRECISOS.
-- Cais de barco, torres de zepelim, portais e o Portal Sombrio (zona + x,y).
-- ns.transit.{boats,zeppelins,portals} = referência completa (todos os hubs).
-- ns.transit.{embark,darkPortal,terrace,moonglade} = lookups do TravelPlanner.
-- Coordenadas em 0-100 (formato de mapa do WoW).
--=============================================================================
local ADDON, ns = ...

ns.transit = {
	--------------------------------------------------------------------------
	-- BARCOS (fac: A=Aliança, N=neutro)
	--------------------------------------------------------------------------
	boats = {
		{ hub = "Menethil Harbor",    zone = "Wetlands",          x = 4.6,  y = 57.2, fac = "A",
		  to = { "Dustwallow Marsh", "Darkshore" } },                 -- Theramore (cais sul) / Auberdine (cais norte 5.0,62.5)
		{ hub = "Auberdine",          zone = "Darkshore",         x = 36.8, y = 44.3, fac = "A",
		  to = { "Wetlands", "Azuremyst Isle" } },                    -- Menethil / Exodar (verif. Questie)
		{ hub = "Rut'theran Village", zone = "Teldrassil",        x = 55.5, y = 92.5, fac = "A",
		  to = { "Darkshore" } },                                     -- Auberdine (+ portal p/ Darnassus)
		{ hub = "Theramore Isle",     zone = "Dustwallow Marsh",  x = 71.3, y = 56.3, fac = "A",
		  to = { "Wetlands" } },                                      -- Menethil (Questie)
		{ hub = "Valaar's Berth",     zone = "Azuremyst Isle",    x = 24.2, y = 54.5, fac = "A",
		  to = { "Darkshore" } },                                     -- Auberdine (Questie; era 73,65 errado)
		{ hub = "Ratchet",            zone = "The Barrens",       x = 63.5, y = 38.6, fac = "N",
		  to = { "Stranglethorn Vale" } },                            -- Booty Bay (Questie)
		{ hub = "Booty Bay",          zone = "Stranglethorn Vale",x = 27.0, y = 77.3, fac = "N",
		  to = { "The Barrens" } },                                   -- Ratchet (verif. Zygor)
	},
	--------------------------------------------------------------------------
	-- ZEPELINS (Horda)
	--------------------------------------------------------------------------
	zeppelins = {
		{ hub = "Orgrimmar Zeppelins", zone = "Durotar",           x = 50.7, y = 13.2, fac = "H",
		  to = { "Tirisfal Glades", "Stranglethorn Vale" } },        -- Undercity / Grom'gol (Questie)
		{ hub = "Undercity Zeppelin",  zone = "Tirisfal Glades",    x = 61.3, y = 59.0, fac = "H",
		  to = { "Durotar", "Stranglethorn Vale" } },                -- Orgrimmar / Grom'gol (Questie)
		{ hub = "Grom'gol Base Camp",  zone = "Stranglethorn Vale", x = 31.5, y = 29.6, fac = "H",
		  to = { "Durotar", "Tirisfal Glades" } },                   -- Orgrimmar / Undercity (Questie)
	},
	--------------------------------------------------------------------------
	-- PORTAIS
	--------------------------------------------------------------------------
	portals = {
		{ hub = "Terrace of Light", zone = "Shattrath City",     x = 55.0, y = 47.0,
		  note = "portais p/ as capitais das duas facções" },
		{ hub = "Dark Portal",      zone = "Blasted Lands",      x = 58.2, y = 55.5,
		  to = { "Hellfire Peninsula" } },                            -- Azeroth -> Outland
		{ hub = "Dark Portal",      zone = "Hellfire Peninsula",  x = 88.6, y = 50.2,
		  to = { "Blasted Lands" } },                                 -- Outland -> Azeroth
	},

	--------------------------------------------------------------------------
	-- LOOKUPS do planner (hop = {zone, x, y} p/ a seta mirar o ponto exato)
	--------------------------------------------------------------------------
	-- Ponto de embarque na SUA facção + continente atual (EK / K).
	embark = {
		A = { EK = { zone = "Wetlands",        x = 4.6,  y = 57.2 },   -- Porto Menethil (cais Theramore)
		      K  = { zone = "Darkshore",       x = 36.8, y = 44.3 } }, -- Auberdine (Questie)
		H = { EK = { zone = "Tirisfal Glades", x = 61.3, y = 59.0 },   -- torre de Undercity (Questie)
		      K  = { zone = "Durotar",         x = 50.7, y = 13.2 } }, -- torres de Orgrimmar (Questie)
	},
	darkPortal = {
		EK = { zone = "Blasted Lands",      x = 58.2, y = 55.5 },      -- ir p/ Outland (Questie+web)
		O  = { zone = "Hellfire Peninsula", x = 88.6, y = 50.2 },      -- voltar p/ Azeroth (Questie+web)
	},
	-- Terraça da Luz: os 8 portais eram script-spawned (sem coord em nenhum DB;
	-- removidos na Cata). Ficam em 2 alcovas na borda: Horda a SE (ao lado da
	-- treinadora Iorioa 58.7,47.1), Aliança no espelho a SW. Aponto o cluster de
	-- cada facção — na prática é precisão por-alcova (o portal rotulado está ali).
	terrace = {
		A = { zone = "Shattrath City", x = 48.8,  y = 48.29 },    -- SW/IF/Darn/Exodar (espelho estim.)
		H = { zone = "Shattrath City", x = 59.20, y = 48.29 },    -- Org/TB/UC/Silvermoon (verif. in-game)
	},
	moonglade = { zone = "Moonglade",      x = 44.2, y = 45.5 },       -- Teleporte de druida (Questie)
}
