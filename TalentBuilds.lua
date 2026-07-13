--=============================================================================
-- TalentBuilds — dados de build por classe/spec. Cada ponto é {tab, tier, col}
-- (posição na grade de talentos: tab 1-3, tier = linha 1..7, col = coluna 1..4).
-- Resolver por tier/coluna é À PROVA DE IDIOMA (GetTalentInfo dá tier/coluna).
--
-- ATENÇÃO: builds abaixo são EXEMPLOS do caminho de leveling (núcleo da spec).
-- As posições precisam de conferência in-game; adicionar/ajustar aqui é trivial.
-- Formato: order = lista ordenada de {tab, tier, col}, repetida por rank.
--=============================================================================
local ADDON, ns = ...

-- atalho p/ repetir um ponto N vezes (N ranks seguidos)
local function reps(t, tab, tier, col, n)
	for _ = 1, n do t[#t + 1] = { tab, tier, col } end
end

ns.talentBuilds = {}
local function build(class, spec, tab, picks, default)
	local order = {}
	for _, p in ipairs(picks) do reps(order, tab, p[1], p[2], p[3] or 1) end
	ns.talentBuilds[class] = ns.talentBuilds[class] or {}
	table.insert(ns.talentBuilds[class], { name = spec, tab = tab, order = order, default = default })
end

-- picks = { {tier, col, ranks}, ... } na ordem de aprendizado
build("MAGE", "Gelo (leveling)", 3, {
	{1,1,3}, {2,1,3}, {2,3,1}, {3,1,3}, {2,4,2}, {3,3,1}, {4,2,5}, {5,2,1}, {5,3,3},
}, true)

build("WARRIOR", "Armas (leveling)", 1, {
	{1,2,3}, {2,1,3}, {2,4,2}, {3,2,3}, {3,4,5}, {4,3,1}, {5,3,2}, {6,2,1},
}, true)

build("HUNTER", "Feras (leveling)", 1, {
	{1,1,5}, {2,2,5}, {2,4,1}, {3,2,5}, {4,1,1}, {4,3,2}, {5,3,1},
}, true)

build("PRIEST", "Sombra (leveling)", 3, {
	{1,1,3}, {1,3,2}, {2,1,3}, {2,4,1}, {3,1,5}, {4,2,1}, {4,3,3}, {5,3,1},
}, true)

build("ROGUE", "Combate (leveling)", 2, {
	{1,1,5}, {2,1,5}, {2,3,2}, {3,2,5}, {4,1,2}, {4,3,1}, {5,3,3},
}, true)

build("WARLOCK", "Aflição (leveling)", 1, {
	{1,1,5}, {2,1,2}, {2,2,3}, {3,2,5}, {3,4,1}, {4,3,2}, {5,3,1},
}, true)

build("PALADIN", "Retribuição (leveling)", 3, {
	{1,1,5}, {2,1,3}, {2,3,1}, {3,2,3}, {3,3,2}, {4,2,1}, {5,3,1},
}, true)

build("SHAMAN", "Aprimoramento (leveling)", 2, {
	{1,2,5}, {2,1,2}, {2,2,3}, {3,2,5}, {4,1,2}, {4,3,1}, {5,3,1},
}, true)

build("DRUID", "Feral (leveling)", 2, {
	{1,1,5}, {2,1,2}, {2,2,3}, {3,2,3}, {3,3,2}, {4,2,1}, {5,3,1},
}, true)
