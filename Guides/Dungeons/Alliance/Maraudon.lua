-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Maraudon", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Keeper Marandis##13698
  accept Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  talk Elder Splitrock##15556
  accept Splitrock the Elder##8635 |goto Maraudon - Dungeon -1,-1
step
  note Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
  kill Princess Theradras##12201 |q 7065 |goto Maraudon - Dungeon -1,-1 |elite
step
  talk Keeper Marandis##13698
  turnin Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  talk Elder Splitrock##15556
  turnin Splitrock the Elder##8635 |goto Maraudon - Dungeon -1,-1
]])
