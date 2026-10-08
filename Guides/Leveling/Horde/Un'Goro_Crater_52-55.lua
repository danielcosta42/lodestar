-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Un'Goro Crater (52-55)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tanaris (46-60)",
}, [[
step
  talk Williden Marshal##9270
  accept Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
  note Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
  collect Crate of Foodstuffs##11113 |q 3881 |goto Un'Goro Crater 68.54,36.54
step
  talk Spark Nilminer##9272
  accept Roll the Bones##3882 |goto Un'Goro Crater 43.5,7.42
step
  note Bring 8 Dinosaur Bones to Spark Nilminer in Un'Goro Crater.
  kill Stegodon##6501 |goto Un'Goro Crater 35.52,72.3 |elite
  collect 8 Dinosaur Bone##11114 |q 3882 |goto Un'Goro Crater 35.52,72.3
step
  talk Hol'anyee Marshal##9271
  accept Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
  note Use the Scraping Vial to collect a Hive Wall Sample from one of the Gorishi hive hatcheries in Un'Goro Crater. Look for the chambers with the hanging larval spawns.
  collect Hive Wall Sample##11131 |q 3883 |goto Un'Goro Crater 48.69,85.32 |tip {dropsfrom}Gorishi Hive Hatchery
step
  kill Devilsaur##6498 |goto Un'Goro Crater 34.6,23.68 |elite |tip Loot the quest item here — it starts the quest.
  accept Williden's Journal##3884 |goto Un'Goro Crater 34.6,23.68
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
  kill Devilsaur##6498 |goto Un'Goro Crater 34.6,23.68 |elite
  collect Bloodpetal Sprout##11315 |q 4148 |goto Un'Goro Crater 34.6,23.68
step
  talk Karna Remtravel##9618
  accept Chasing A-Me 01##4243 |goto Un'Goro Crater 46.38,13.44
step
  talk J.D. Collie##9117
  accept Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  note Collect 7 Power Crystals of each color: red, blue, yellow, and green. Bring them to J.D. Collie at Marshal's Refuge.
  collect 7 Red Power Crystal##11186 |q 4284 |goto Un'Goro Crater 59.2,51.4
step
  talk Spraggle Frock##9997
  accept Lost!##4492 |goto Un'Goro Crater 43.62,8.5
step
  click Beware of Pterrordax##174682
  accept Beware of Pterrordax##4501 |goto Un'Goro Crater 43.53,8.44
step
  talk Shizzle##9998
  accept Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
  note Collect 8 Webbed Diemetradon Scales and 8 Webbed Pterrordax Scales for Shizzle in Marshal's Refuge.
  collect 8 Webbed Diemetradon Scale##11830 |q 4503 |goto Un'Goro Crater 66.12,33.9 |tip {dropsfrom}Young Diemetradon, Diemetradon, Elder Diemetradon
step
  only Mage
  talk Archmage Shymm##3047
  accept Magecraft##8250 |goto Thunder Bluff 22.76,14.53
step
  only Priest
  talk Malakai Cross##3045
  accept Cenarion Aid##8254 |goto Thunder Bluff 24.56,22.57
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.66,16.76
step
  talk Belgrom Rockmaul##4485
  accept Betrayed##3504 |goto Orgrimmar 75.23,34.24
step
  talk Magatha Grimtotem##4046
  accept Magatha's Payment to Jediga##3562 |goto Thunder Bluff 69.85,30.91
step
  talk A-Me 01##9623
  accept Chasing A-Me 01##4244 |goto Un'Goro Crater 67.66,16.76
step
  note Find a Mithril Casing and return to A-Me 01 in Un'Goro Crater.
  collect Mithril Casing##10561 |q 4244 |goto Searing Gorge 34.69,51.89 |tip {dropsfrom}Clunk, Frostwolf Shredder Unit, Stormpike Shredder Unit
step
  note Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
  kill Bloodpetal Lasher##6509 |q 4145 |goto Un'Goro Crater 67.86,31.66
step
  talk Ringo##9999
  turnin Lost!##4492 |goto Un'Goro Crater 51.9,49.85
step
  only Priest
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62 |tip {turninat}Azshara
step
  talk Jes'rimon##8659
  accept Jes'rimon's Payment to Jediga##3563 |goto Orgrimmar 55.52,34.08
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3568 |goto Undercity 48.71,71.39
step
  note Fill all 4 Empty Vials at the tide pools along the coast of the Ruins of Eldarath in Azshara before returning to Chemist Cuely.
  collect Filled Vial Labeled #1##10691 |q 3568 |goto Azshara 47.98,61.03 |tip {dropsfrom}the First Tide Pool
step
  talk Chemist Fuely##10136
  accept A Sample of Slime...##4293 |goto Undercity 47.45,73.35
step
  note Gather Felwood Slime Samples from any of the slimes in Felwood. Then, using the Testing Equipment next to Chemist Fuely in Undercity, see which of your samples are the most corrupt. Bring 5 of the Corrupted Felwood Samples you find to Chemist Fuely.
  collect 5 Corrupted Felwood Sample##12234 |q 4293 |goto Undercity 47.85,73.48 |tip {dropsfrom}Testing Equipment
step
  talk Jes'rimon##8659
  accept Bone-Bladed Weapons##4300 |goto Orgrimmar 55.52,34.08
step
  note Bring 8 White Ravasaur Claws to Jes'rimon in Orgrimmar.
  collect 8 White Ravasaur Claw##11477 |q 4300 |goto Un'Goro Crater 62.87,74.25 |tip {dropsfrom}Ravasaur, Ravasaur Runner, Ravasaur Hunter
step
  talk Zilzibin Drumlore##7010
  accept March of the Silithid##4494 |goto Orgrimmar 56.26,46.68
step
  talk Royal Overseer Bauhaus##10781
  accept The Jeremiah Blues##5049 |goto Undercity 69.79,43.16
step
  only Rogue
  talk Ormok##3328
  accept A Simple Request##8233 |goto Orgrimmar 43.9,54.63
step
  only Warlock
  talk Zevrost##3326
  accept An Imp's Request##8419 |goto Orgrimmar 48.47,45.43
step
  only Warlock
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8419 |goto Blasted Lands 57.91,51.54 |tip {dropsfrom}Felhunter, Felguard Sentry, Legashi Satyr
step
  talk Ag'tor Bloodfist##8576
  turnin Betrayed##3504 |goto Azshara 22.26,51.48 |tip {turninat}Azshara
step
  only Mage
  talk Sanath Lim-yo##8395
  turnin Magecraft##8250 |goto Azshara 28.11,50.09 |tip {turninat}Azshara
step
  talk Jediga##8587
  turnin Magatha's Payment to Jediga##3562 |goto Azshara 22.56,51.42 |tip {turninat}Azshara
step
  talk Jediga##8587
  turnin Jes'rimon's Payment to Jediga##3563 |goto Azshara 22.56,51.42 |tip {turninat}Azshara
step
  talk Krakle##10302
  accept Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88 |tip {turninat}Alterac Mountains
step
  talk Andron Gant##6522
  accept Andron's Payment to Jediga##3564 |goto Undercity 54.81,76.33
step
  click A Wrecked Raft##161505
  accept It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.02,68.6
step
  talk Torwa Pathfinder##9619
  accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
step
  note Bring 2 Un'Goro Gorilla Pelts, 2 Un'Goro Stomper Pelts, and 2 Un'Goro Thunderer Pelts to Torwa Pathfinder at the entrance of Un'Goro Crater.
  collect 2 Un'Goro Gorilla Pelt##11478 |q 4289 |goto Un'Goro Crater 67.05,16.62 |tip {dropsfrom}Un'Goro Gorilla
step
  talk Torwa Pathfinder##9619
  accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
step
  note Find the carcass of Lar'korwi's freshest kill and steal a Piece of Threshadon Carcass before returning to Torwa Pathfinder in Un'Goro Crater.
  collect Piece of Threshadon Carcass##11504 |q 4290 |goto Un'Goro Crater 68.74,56.71 |tip {dropsfrom}Fresh Threshadon Carcass
step
  only Hunter
  talk Holt Thunderhorn##3039
  accept The Hunter's Charm##8151 |goto Thunder Bluff 57.3,89.79
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  note Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
  collect 8 Gorishi Sting##22435 |q 9052 |goto Un'Goro Crater 50.14,76.41 |tip {dropsfrom}Gorishi Wasp, Gorishi Stinger
step
  note Kill 10 Pterrordax and 15 Frenzied Pterrordax, then speak to Spraggle Frock at Marshal's Refuge.
  kill Pterrordax##9166 |q 4501 |goto Un'Goro Crater 56.2,87.4
step
  talk Spraggle Frock##9997
  turnin Beware of Pterrordax##4501 |goto Un'Goro Crater 43.62,8.5
step
  talk Shizzle##9998
  turnin Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
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
  talk Williden Marshal##9270
  turnin Williden's Journal##3884 |goto Un'Goro Crater 43.95,7.14
step
  talk Larion##9118
  turnin Larion and Muigin##4145 |goto Un'Goro Crater 45.54,8.72
step
  talk Larion##9118
  turnin Bloodpetal Zapper##4148 |goto Un'Goro Crater 45.54,8.72
step
  talk J.D. Collie##9117
  turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  turnin A Gnome's Assistance##3941 |goto Un'Goro Crater 41.92,2.7
step
  talk Linken##8737
  turnin Linken's Adventure##3961 |goto Un'Goro Crater 44.66,8.1
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
  talk Alchemist Pestlezugg##5594
  turnin March of the Silithid##4494 |goto Tanaris 50.89,26.96 |tip {turninat}Tanaris
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4244 |goto Un'Goro Crater 67.66,16.76
step
  talk Liv Rizzlefix##8496
  turnin Marvon's Workshop##4147 |goto The Barrens 62.45,38.73 |tip {turninat}The Barrens
step
  talk Jeremiah Payson##8403
  turnin The Jeremiah Blues##5049 |goto Undercity 67.6,44.16 |tip {turninat}Undercity
step
  talk Chemist Fuely##10136
  turnin A Sample of Slime...##4293 |goto Undercity 47.45,73.35 |tip {turninat}Undercity
step
  talk Jes'rimon##8659
  turnin Bone-Bladed Weapons##4300 |goto Orgrimmar 55.52,34.08 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62 |tip {turninat}Azshara
step
  only Warlock
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02 |tip {turninat}Felwood
step
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3568 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3569 |goto Undercity 48.71,71.39
step
  talk Jeremiah Payson##8403
  accept Good Luck Charm##5050 |goto Undercity 67.6,44.16
step
  note Krakle in Un'Goro Crater wants you to find the hottest area of Fire Plume Ridge.
  collect Fire Plume Ridge Hot Spot##148503 |q 974 |goto Un'Goro Crater 49.69,45.64
step
  note Travel to Fire Plume Ridge, south of Marshal's Refuge.
  kill Blazerunner##9376 |q 3962 |goto Un'Goro Crater 49.41,49.33 |elite
step
  talk Janice Felstone##10778
  turnin Good Luck Charm##5050 |goto Western Plaguelands 38.4,54.05 |tip {turninat}Western Plaguelands
step
  talk Krakle##10302
  turnin Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  talk Jediga##8587
  turnin Andron's Payment to Jediga##3564 |goto Azshara 22.56,51.42 |tip {turninat}Azshara
step
  talk Krakle##10302
  accept The New Springs##980 |goto Un'Goro Crater 30.93,50.44
step
  turnin It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.11,69.06
step
  talk Torwa Pathfinder##9619
  turnin The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  turnin The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  talk Eridan Bluewind##9116
  turnin Linken's Memory##3942 |goto Felwood 51.35,81.51 |tip {turninat}Felwood
step
  click A Small Pack##161504
  accept It's a Secret to Everybody##3845 |goto Un'Goro Crater 63.11,69.06
step
  note Examine the items inside the pack and bring them to their owner.
  collect Large Compass##11104 |q 3845 |goto Un'Goro Crater 63.11,69.06
step
  talk Torwa Pathfinder##9619
  accept The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.96
step
  note Bring 2 Ravasaur Pheromone Glands to Torwa Pathfinder near the entrance to Un'Goro Crater.
  collect 2 Ravasaur Pheromone Gland##11509 |q 4291 |goto Un'Goro Crater 66,67 |tip {dropsfrom}Lar'korwi Mate
step
  talk Torwa Pathfinder##9619
  accept The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.96
step
  note Bring U'cha's Pelt to Torwa Pathfinder at the entrance of Un'Goro Crater.
  collect U'cha's Pelt##11476 |q 4301 |goto Un'Goro Crater 68.14,12.56 |tip {dropsfrom}U'cha
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk Linken##8737
  turnin It's a Secret to Everybody##3845 |goto Un'Goro Crater 44.66,8.1
step
  talk Linken##8737
  turnin It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1
step
  talk Linken##8737
  accept It's a Secret to Everybody##3908 |goto Un'Goro Crater 44.66,8.1
step
  talk Thersa Windsong##8393
  turnin Seeping Corruption##3569 |goto Undercity 49.04,70.8 |tip {turninat}Undercity
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3570 |goto Undercity 48.71,71.39
step
  talk Donova Snowden##9298
  turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
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
  only Druid
  talk Torwa Pathfinder##9619
  turnin Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.64,75.96
step
  note Using the contents of Torwa's Pouch, summon Lar'korwi and defeat him. Then bring Lar'korwi's Head to Torwa Pathfinder near the entrance to Un'Goro Crater.
  collect Lar'korwi's Head##11510 |q 4292 |goto Un'Goro Crater 79.65,49.83 |tip {dropsfrom}Lar'korwi
step
  only Druid
  talk Torwa Pathfinder##9619
  accept A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  note Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder.
  collect Putrid Vine##22444 |q 9053 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Atal'alarion
step
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3570 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  talk Torwa Pathfinder##9619
  turnin The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  note {travel}Tanaris
  goto Tanaris 50.96,27.24
]])
