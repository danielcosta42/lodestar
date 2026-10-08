-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Blackwing Lair - Blackhand's Command", {
	author = "Lodestar Generator",
	rev = "2fe8f13f",
}, [[
step
  kill Scarshield Quartermaster##9046 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip Loot the quest item here — it starts the quest.
  accept Blackhand's Command##7761 |goto Eastern Kingdoms - the continent map 49.12,64.1
step
  note That is one stupid orc. It would appear as if you need to find this brand and gain the Mark of Drakkisath in order to access the Orb of Command.
  turnin Blackhand's Command##7761 |goto Blackrock Spire - Dungeon -1,-1
]])
