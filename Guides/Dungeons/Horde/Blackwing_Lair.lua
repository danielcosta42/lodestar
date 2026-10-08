-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackwing Lair", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "0b5c0195",
}, [[
step
  kill Nefarian##11583 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Lord of Blackrock##7783 |goto Blackwing Lair - Dungeon -1,-1
step
  talk Thrall##4949
  turnin The Lord of Blackrock##7783 |goto Orgrimmar 31.73,37.82
]])
