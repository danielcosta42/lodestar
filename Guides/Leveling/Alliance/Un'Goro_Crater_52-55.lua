-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Un'Goro Crater (52-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Tanaris (47-60)",
}, [[
step
  talk Tymor##8507
  accept An Easy Pickup##3450 |goto Ironforge 30.96,4.83
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
  talk Muigin##9119
  accept Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
  note Collect 15 Bloodpetals and return to Muigin.
  collect 15 Bloodpetal##11316 |q 4141 |goto Un'Goro Crater 67.86,31.66 |tip {dropsfrom}Bloodpetal Lasher, Bloodpetal Flayer, Bloodpetal Thresher
step
  talk Muigin##9119
  accept Bloodpetal Sprouts##4144 |goto Un'Goro Crater 42.94,9.64
step
  kill Devilsaur##6498 |goto Un'Goro Crater 34.6,23.68 |elite
  collect Bloodpetal Sprout##11315 |q 4144 |goto Un'Goro Crater 34.6,23.68
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
  only Priest
  talk Malakai Cross##3045
  accept Cenarion Aid##8254 |goto Thunder Bluff 24.56,22.57
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.66,16.76
step
  talk Historian Karnik##2916
  accept Passing the Burden##3448 |goto Ironforge 77.54,11.82
step
  talk A-Me 01##9623
  accept Chasing A-Me 01##4244 |goto Un'Goro Crater 67.66,16.76
step
  note Find a Mithril Casing and return to A-Me 01 in Un'Goro Crater.
  collect Mithril Casing##10561 |q 4244 |goto Searing Gorge 34.69,51.89 |tip {dropsfrom}Clunk, Frostwolf Shredder Unit, Stormpike Shredder Unit
step
  talk Laris Geardawdle##9616
  accept A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.38
step
  note Bring 6 Filled Cursed Ooze Jars and 6 Filled Tainted Ooze Jars to Laris Geardawdle in Ironforge.
  collect 6 Filled Cursed Ooze Jar##11947 |q 4512 |goto Felwood 40.4,70.82 |tip {dropsfrom}Cursed Ooze
step
  talk Ringo##9999
  turnin Lost!##4492 |goto Un'Goro Crater 51.9,49.85
step
  only Priest
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62 |tip {turninat}Azshara
step
  talk Royal Factor Bathrilor##10782
  accept Good Natured Emma##5048 |goto Stormwind City 57.17,48.07
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Chillwind Point##8415 |goto Stormwind City 48.43,50.22
step
  talk Krakle##10302
  accept Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Chillwind Point##8415 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  talk Xiggs Fuselighter##8517
  turnin An Easy Pickup##3450 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
step
  talk Xiggs Fuselighter##8517
  accept Signal for Pickup##3451 |goto Ironforge 70.87,94.56
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
  only Mage
  talk Maginor Dumas##331
  accept Magecraft##8250 |goto Stormwind City 49.25,87.77
step
  only Warlock
  talk Demisette Cloyce##461
  accept An Imp's Request##8419 |goto Stormwind City 39.24,84.96
step
  only Warlock
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8419 |goto Blasted Lands 57.91,51.54 |tip {dropsfrom}Felhunter, Felguard Sentry, Legashi Satyr
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
  talk Muigin##9119
  turnin Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
  talk Muigin##9119
  turnin Bloodpetal Sprouts##4144 |goto Un'Goro Crater 42.94,9.64
step
  talk J.D. Collie##9117
  turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  turnin A Gnome's Assistance##3941 |goto Un'Goro Crater 41.92,2.7
step
  talk Tymor##8507
  turnin Passing the Burden##3448 |goto Ironforge 30.96,4.83 |tip {turninat}Ironforge
step
  talk Linken##8737
  turnin Linken's Adventure##3961 |goto Un'Goro Crater 44.66,8.1
step
  talk Tymor##8507
  accept Arcane Runes##3449 |goto Ironforge 30.96,4.83
step
  note Using the Drawing Kit, make rubbings of the Rune of Beth'Amara, the Rune of Jin'yael, the Rune of Markri, and the Rune of Sael'hai before heading to the small island off of the southern peninsula of Azshara and signaling Pilot Xiggs Fuselighter to pick them up.
  collect Rubbing: Rune of Beth'Amara##10563 |q 3449 |goto Azshara 36.91,53.17 |tip {dropsfrom}Rune of Beth'Amara
step
  talk J.D. Collie##9117
  accept Linken's Memory##3942 |goto Un'Goro Crater 41.92,2.7
step
  talk Linken##8737
  accept It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1
step
  talk Muigin##9119
  accept A Visit to Gregan##4142 |goto Un'Goro Crater 42.94,9.64
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4244 |goto Un'Goro Crater 67.66,16.76
step
  talk Laris Geardawdle##9616
  turnin A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.38 |tip {turninat}Ironforge
step
  talk Ol' Emma##3520
  turnin Good Natured Emma##5048 |goto Stormwind City 60.2,57.03 |tip {turninat}Stormwind City
step
  only Warlock
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02 |tip {turninat}Felwood
step
  talk Ol' Emma##3520
  accept Good Luck Charm##5050 |goto Stormwind City 60.2,57.03
step
  note Krakle in Un'Goro Crater wants you to find the hottest area of Fire Plume Ridge.
  collect Fire Plume Ridge Hot Spot##148503 |q 974 |goto Un'Goro Crater 49.69,45.64
step
  note Travel to Fire Plume Ridge, south of Marshal's Refuge.
  kill Blazerunner##9376 |q 3962 |goto Un'Goro Crater 49.41,49.33 |elite
step
  only Mage
  talk Sanath Lim-yo##8395
  turnin Magecraft##8250 |goto Azshara 28.11,50.09 |tip {turninat}Azshara
step
  talk Janice Felstone##10778
  turnin Good Luck Charm##5050 |goto Western Plaguelands 38.4,54.05 |tip {turninat}Western Plaguelands
step
  talk Krakle##10302
  turnin Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
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
  talk Pilot Xiggs Fuselighter##8392
  turnin Arcane Runes##3449 |goto Azshara 77.81,91.4 |tip {turninat}Azshara
step
  talk Xiggs Fuselighter##8517
  turnin Signal for Pickup##3451 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
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
  talk Gregan Brewspewer##7775
  turnin A Visit to Gregan##4142 |goto Feralas 45.12,25.57 |tip {turninat}Feralas
step
  talk Linken##8737
  turnin It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1
step
  talk Linken##8737
  accept It's a Secret to Everybody##3908 |goto Un'Goro Crater 44.66,8.1
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
