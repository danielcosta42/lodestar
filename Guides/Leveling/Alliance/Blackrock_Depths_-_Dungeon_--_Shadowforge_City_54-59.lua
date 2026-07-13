-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Blackrock Depths - Dungeon -- Shadowforge City (54-59)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Blackrock Spire - Dungeon (59-60)",
}, [[
step
  talk Mistress Nagmara##9500
  accept The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  kill Dreaming Whelp##741 |q 4201 |goto Swamp of Sorrows 12.71,59.3
step
  talk Marshal Windsor##9023
  accept Abandoned Hope##4242 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  accept A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Return Marshal Windsor's Lost Information.
  kill General Angerforge##9033 |q 4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  talk Kharan Mighthammer##9021
  accept Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess's Surprise##4363 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Elder Morndeep##15549
  accept Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Coren Direbrew##23872
  accept The Best of Brews##11486 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Mistress Nagmara##9500
  turnin The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk King Magni Bronzebeard##2784
  turnin The Princess's Surprise##4363 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  talk Elder Morndeep##15549
  turnin Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Maxwell##9560
  turnin Abandoned Hope##4242 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  talk Kharan Mighthammer##9021
  turnin Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  turnin A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Ipfelkofer Ironkeg##24710
  turnin The Best of Brews##11486 |goto Dun Morogh 48.01,39.83 |tip {turninat}Dun Morogh
step
  talk Kharan Mighthammer##9021
  accept The Bearer of Bad News##4361 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk King Magni Bronzebeard##2784
  turnin The Bearer of Bad News##4361 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  note {travel}Blackrock Spire - Dungeon
  goto Blackrock Spire - Dungeon -1,-1
]])
