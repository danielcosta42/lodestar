-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackwing Lair", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "abb1f1f9",
}, [[
step
  kill Nefarian##11583 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Lord of Blackrock##7781 |goto Blackwing Lair - Dungeon -1,-1
step
  talk Highlord Bolvar Fordragon##1748
  turnin The Lord of Blackrock##7781 |goto Stormwind City 80.21,38.35
]])
