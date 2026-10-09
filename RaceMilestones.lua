--=============================================================================
-- RaceMilestones — os marcos da corrida (dados). Cada fase nova do jogo acrescenta linhas;
-- o id é estável (vai pela rede e fica salvo) e versões antigas ignoram o que não conhecem.
--
--   kind  level    v = nível
--         quest    v = ids de quest (qualquer um entregue conta: Aliança e Horda)
--         dungeon  primeiro chefe derrotado numa masmorra
--         skill    v = pontos numa profissão (perícia abandonável)
--   min   o menor /played (s) em que dá para bater o marco: bem abaixo do recorde, só para
--         descartar o impossível que chega pela rede
--=============================================================================
local ADDON, ns = ...
local H = 3600

ns.RACE_MILESTONES = {
	{ id = "l10", kind = "level", v = 10, min = 0.25 * H },
	{ id = "l20", kind = "level", v = 20, min = 2 * H },
	{ id = "l30", kind = "level", v = 30, min = 6 * H },
	{ id = "l40", kind = "level", v = 40, min = 12 * H },
	{ id = "l50", kind = "level", v = 50, min = 20 * H },
	{ id = "l60", kind = "level", v = 60, min = 30 * H },
	{ id = "dg", kind = "dungeon", min = 1 * H },
	{ id = "p300", kind = "skill", v = 300, min = 10 * H },
	{ id = "mc", kind = "quest", v = { 7848 }, min = 25 * H },          -- Attunement to the Core
	{ id = "ony", kind = "quest", v = { 6502, 6602 }, min = 25 * H },   -- Drakefire Amulet / Blood of the Black Dragon Champion
}
