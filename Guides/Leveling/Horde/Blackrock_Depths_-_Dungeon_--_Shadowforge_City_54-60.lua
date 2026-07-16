-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Blackrock Depths - Dungeon -- Shadowforge City (54-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Felwood (52-58)",
}, [[
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess Saved?##4004 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Mistress Nagmara##9500
  accept The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  collect 4 Gromsblood##8846 |q 4201 |goto Swamp of Sorrows 12.71,59.3 |tip {dropsfrom}Dreaming Whelp, Mosshide Brute, Leper Gnome
step
  talk Elder Morndeep##15549
  accept Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Coren Direbrew##23872
  accept The Best of Brews##11487 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Mistress Nagmara##9500
  turnin The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Elder Morndeep##15549
  turnin Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Thrall##4949
  turnin The Princess Saved?##4004 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Tapper Swindlekeg##24711
  turnin The Best of Brews##11487 |goto Durotar 45.59,17.23 |tip {turninat}Durotar
step
  note {travel}Felwood
  goto Felwood 50.93,85.01
]])
