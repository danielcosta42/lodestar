-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Blackrock Depths - Dungeon -- Shadowforge City (54-59)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Blackrock Spire - Dungeon (59-60)",
}, [[
step
  click Spectral Chalice##164869
  accept The Spectral Chalice##4083 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  collect Star Ruby##7910 |q 4083 |goto Badlands 40.97,77.75 |tip {dropsfrom}Rock Elemental, Blue Dragonspawn, Bloodscalp Hunter
step
  talk Mistress Nagmara##9500
  accept The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  collect 4 Gromsblood##8846 |q 4201 |goto Swamp of Sorrows 12.71,59.3 |tip {dropsfrom}Dreaming Whelp, Mosshide Brute, Leper Gnome
step
  talk Marshal Windsor##9023
  accept Abandoned Hope##4242 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk King Magni Bronzebeard##2784
  accept Kharan Mighthammer##4341 |goto Ironforge 39.09,56.2
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
  talk Elder Morndeep##15549
  turnin Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Maxwell##9560
  turnin Abandoned Hope##4242 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  turnin The Spectral Chalice##4083 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Kharan Mighthammer##9021
  turnin Kharan Mighthammer##4341 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Ipfelkofer Ironkeg##24710
  turnin The Best of Brews##11486 |goto Dun Morogh 48.01,39.83 |tip {turninat}Dun Morogh
step
  kill Anvilrage Overseer##8889 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |tip Loot the quest item here — it starts the quest.
  accept A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Kharan Mighthammer##9021
  accept Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  turnin A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Kharan Mighthammer##9021
  turnin Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  accept A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Return Marshal Windsor's Lost Information.
  collect Marshal Windsor's Lost Information##11464 |q 4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite |tip {dropsfrom}General Angerforge
step
  talk Kharan Mighthammer##9021
  accept The Bearer of Bad News##4361 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk King Magni Bronzebeard##2784
  turnin The Bearer of Bad News##4361 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  talk Marshal Windsor##9023
  turnin A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk King Magni Bronzebeard##2784
  accept The Fate of the Kingdom##4362 |goto Ironforge 39.09,56.2
step
  note Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan.
  kill Emperor Dagran Thaurissan##9019 |q 4362 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  talk Princess Moira Bronzebeard##8929
  turnin The Fate of the Kingdom##4362 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess's Surprise##4363 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk King Magni Bronzebeard##2784
  turnin The Princess's Surprise##4363 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  note {travel}Blackrock Spire - Dungeon
  goto Blackrock Spire - Dungeon -1,-1
]])
