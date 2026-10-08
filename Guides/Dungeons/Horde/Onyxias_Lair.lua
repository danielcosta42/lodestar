-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Onyxia's Lair", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "2521e154",
}, [[
step
  only completed(6602)
  kill Onyxia##10184 |goto Onyxia's Lair - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept Victory for the Horde##7490 |goto Onyxia's Lair - Dungeon -1,-1
step
  only completed(6602)
  talk Thrall##4949
  turnin Victory for the Horde##7490 |goto Orgrimmar 31.73,37.82
]])
