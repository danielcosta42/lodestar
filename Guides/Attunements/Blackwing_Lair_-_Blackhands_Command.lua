-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Blackwing Lair - Blackhand's Command", {
	author = "Lodestar Generator",
	rev = "b1f4958f",
}, [[
step
  kill Scarshield Quartermaster##9046 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip Loot the quest item here — it starts the quest.
  accept Blackhand's Command##7761 |goto Eastern Kingdoms - the continent map 49.12,64.1
step
  turnin Blackhand's Command##7761 |goto Blackrock Spire - Dungeon -1,-1
]])
