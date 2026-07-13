-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Un'Goro Crater (52-55)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Blackrock Depths - Dungeon -- Shadowforge City (54-60)",
}, [[
step
  note {fp}Gryfe
  goto Un'Goro Crater 45.23,5.83 |tip {vendor}
step
  talk Williden Marshal##9270
  accept Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
  talk Spark Nilminer##9272
  accept Roll the Bones##3882 |goto Un'Goro Crater 43.5,7.42
step
  talk Hol'anyee Marshal##9271
  accept Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
  talk Linken##8737
  accept It's a Secret to Everybody##3908 |goto Un'Goro Crater 44.66,8.1
step
  talk Linken##8737
  accept A Gnome's Assistance##3941 |goto Un'Goro Crater 44.66,8.1
step
  talk J.D. Collie##9117
  accept Linken's Adventure##3961 |goto Un'Goro Crater 41.92,2.7
step
  talk Larion##9118
  accept Larion and Muigin##4145 |goto Un'Goro Crater 45.54,8.72
step
  talk Larion##9118
  accept Bloodpetal Zapper##4148 |goto Un'Goro Crater 45.54,8.72
step
  talk Karna Remtravel##9618
  accept Chasing A-Me 01##4243 |goto Un'Goro Crater 46.38,13.44
step
  talk J.D. Collie##9117
  accept Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  talk Spraggle Frock##9997
  accept Lost!##4492 |goto Un'Goro Crater 43.62,8.5
step
  talk Shizzle##9998
  accept Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.66,16.76
step
  talk A-Me 01##9623
  accept Chasing A-Me 01##4244 |goto Un'Goro Crater 67.66,16.76
step
  note Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
  kill Bloodpetal Lasher##6509 |q 4145 |goto Un'Goro Crater 67.86,31.66
step
  talk Ringo##9999
  turnin Lost!##4492 |goto Un'Goro Crater 51.9,49.85
step
  talk Donova Snowden##9298
  turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  talk Krakle##10302
  accept Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  talk Elder Thunderhorn##15583
  accept Thunderhorn the Elder##8681 |goto Un'Goro Crater 50.35,76.07
step
  talk Torwa Pathfinder##9619
  accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  talk J.D. Collie##9117
  turnin A Gnome's Assistance##3941 |goto Un'Goro Crater 41.92,2.7
step
  talk Williden Marshal##9270
  turnin Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
  talk Spark Nilminer##9272
  turnin Roll the Bones##3882 |goto Un'Goro Crater 43.5,7.42
step
  talk Hol'anyee Marshal##9271
  turnin Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
  talk Larion##9118
  turnin Larion and Muigin##4145 |goto Un'Goro Crater 45.54,8.72
step
  talk Larion##9118
  turnin Bloodpetal Zapper##4148 |goto Un'Goro Crater 45.54,8.72
step
  talk Shizzle##9998
  turnin Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
  talk Linken##8737
  turnin Linken's Adventure##3961 |goto Un'Goro Crater 44.66,8.1
step
  talk J.D. Collie##9117
  turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  accept Linken's Memory##3942 |goto Un'Goro Crater 41.92,2.7
step
  talk Linken##8737
  accept It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1
step
  talk Larion##9118
  accept Marvon's Workshop##4147 |goto Un'Goro Crater 45.54,8.72
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4244 |goto Un'Goro Crater 67.66,16.76
step
  talk Liv Rizzlefix##8496
  turnin Marvon's Workshop##4147 |goto The Barrens 62.45,38.73 |tip {turninat}The Barrens
step
  note Krakle in Un'Goro Crater wants you to find the hottest area of Fire Plume Ridge.
  kill Krakle's Thermometer##10541 |q 974 |goto Un'Goro Crater 49.71,48.53
step
  note Travel to Fire Plume Ridge, south of Marshal's Refuge.
  kill Blazerunner##9376 |q 3962 |goto Un'Goro Crater 49.41,49.33
step
  talk Krakle##10302
  turnin Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  talk Krakle##10302
  accept The New Springs##980 |goto Un'Goro Crater 30.93,50.44
step
  talk Eridan Bluewind##9116
  turnin Linken's Memory##3942 |goto Felwood 51.35,81.51 |tip {turninat}Felwood
step
  talk Elder Thunderhorn##15583
  turnin Thunderhorn the Elder##8681 |goto Un'Goro Crater 50.35,76.07
step
  talk Torwa Pathfinder##9619
  turnin The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  turnin The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk Linken##8737
  turnin It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1
step
  talk Donova Snowden##9298
  turnin The New Springs##980 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  talk Torwa Pathfinder##9619
  turnin The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  turnin The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  turnin Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  turnin The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  turnin A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  note {travel}Blackrock Depths - Dungeon -- Shadowforge City
  goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
]])
