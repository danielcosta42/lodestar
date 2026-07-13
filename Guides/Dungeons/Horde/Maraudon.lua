-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Maraudon", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Selendra##13699
  accept Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  talk Elder Splitrock##15556
  accept Splitrock the Elder##8635 |goto Maraudon - Dungeon -1,-1
step
  note Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace.
  kill Princess Theradras##12201 |q 7064 |goto Maraudon - Dungeon -1,-1
step
  talk Selendra##13699
  turnin Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  talk Elder Splitrock##15556
  turnin Splitrock the Elder##8635 |goto Maraudon - Dungeon -1,-1
]])
