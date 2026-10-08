-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Onyxia's Lair", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "f8602b58",
}, [[
step
  only completed(6502)
  kill Onyxia##10184 |goto Onyxia's Lair - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept Victory for the Alliance##7495 |goto Onyxia's Lair - Dungeon -1,-1
step
  only completed(6502)
  talk Highlord Bolvar Fordragon##1748
  turnin Victory for the Alliance##7495 |goto Stormwind City 80.21,38.35
]])
