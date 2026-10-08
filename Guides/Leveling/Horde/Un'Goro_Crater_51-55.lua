-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Un'Goro Crater (51-55)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Azshara (52-58)",
}, [[
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Un'Goro Soil##3761 |goto Thunder Bluff 78.62,28.56
step
  talk Jes'rimon##8659
  accept Bone-Bladed Weapons##4300 |goto Orgrimmar 55.52,34.08
step
  only completed(4001)
  talk Thrall##4949
  accept The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  kill Devilsaur##6498 |goto Un'Goro Crater 34.6,22.37 |elite |tip Loot the quest item here — it starts the quest.
  accept Williden's Journal##3884 |goto Un'Goro Crater 34.6,22.37
step
  note {fp}Gryfe
  goto Un'Goro Crater 45.23,5.83 |tip {vendor}
step
  talk Spark Nilminer##9272
  accept Roll the Bones##3882 |goto Un'Goro Crater 43.5,7.42
step
  talk Shizzle##9998
  accept Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
  talk Hol'anyee Marshal##9271
  accept Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
  talk Larion##9118
  accept Larion and Muigin##4145 |goto Un'Goro Crater 45.54,8.72
step
  talk Williden Marshal##9270
  accept Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
  only completed(4146)
  talk Larion##9118
  accept Bloodpetal Zapper##4148 |goto Un'Goro Crater 45.54,8.72
step
  talk Karna Remtravel##9618
  accept Chasing A-Me 01##4243 |goto Un'Goro Crater 46.38,13.44
step
  talk J.D. Collie##9117
  accept Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  talk Williden Marshal##9270
  turnin Williden's Journal##3884 |goto Un'Goro Crater 43.95,7.14
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.66,16.76
step
  note Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
  collect Crate of Foodstuffs##11113 |q 3881 |goto Un'Goro Crater 68.54,36.54
step
  note Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
  talk Bloodpetal Lasher##6509 |q 4145 |goto Un'Goro Crater 67.79,31.77
step
  note Collect 8 Webbed Diemetradon Scales and 8 Webbed Pterrordax Scales for Shizzle in Marshal's Refuge.
  collect 8 Webbed Diemetradon Scale##11830 |q 4503 |goto Un'Goro Crater 65.42,35.31 |tip {dropsfrom}Young Diemetradon, Diemetradon, Elder Diemetradon
step
  note Bring 20 Un'Goro Soil samples to Ghede on the Elder Rise of Thunder Bluff.
  collect 20 Un'Goro Soil##11018 |q 3761 |goto Un'Goro Crater 47,52.9 |tip {dropsfrom}Un'Goro Dirt Pile
step
  only completed(4146)
  collect Bloodpetal Sprout##11315 |q 4148 |goto Un'Goro Crater 44.62,42.45 |tip {dropsfrom}Devilsaur, Ironhide Devilsaur, Tyrant Devilsaur
step
  note Collect 7 Power Crystals of each color: red, blue, yellow, and green. Bring them to J.D. Collie at Marshal's Refuge.
  collect 7 Red Power Crystal##11186 |q 4284 |goto Un'Goro Crater 58.1,49.8
step
  note Bring 8 Dinosaur Bones to Spark Nilminer in Un'Goro Crater.
  collect 8 Dinosaur Bone##11114 |q 3882 |goto Un'Goro Crater 32.66,73.52 |tip {dropsfrom}Stegodon, Plated Stegodon, Spiked Stegodon
step
  click A Wrecked Raft##161505
  accept It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.02,68.6
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
step
  note Use the Scraping Vial to collect a Hive Wall Sample from one of the Gorishi hive hatcheries in Un'Goro Crater. Look for the chambers with the hanging larval spawns.
  collect Hive Wall Sample##11131 |q 3883 |goto Un'Goro Crater 48.69,85.32 |tip {dropsfrom}Gorishi Hive Hatchery
step
  note Bring 8 White Ravasaur Claws to Jes'rimon in Orgrimmar.
  collect 8 White Ravasaur Claw##11477 |q 4300 |goto Un'Goro Crater 64.16,74.25 |tip {dropsfrom}Ravasaur, Ravasaur Runner, Ravasaur Hunter
step
  only Druid
  note Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
  collect 8 Gorishi Sting##22435 |q 9052 |goto Un'Goro Crater 50.14,75.97 |tip {dropsfrom}Gorishi Wasp, Gorishi Stinger
step
  turnin It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.11,69.06
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  click A Small Pack##161504
  accept It's a Secret to Everybody##3845 |goto Un'Goro Crater 63.11,69.06
step
  note Examine the items inside the pack and bring them to their owner.
  collect Large Compass##11104 |q 3845 |goto Un'Goro Crater 63.11,69.06
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk Linken##8737
  turnin It's a Secret to Everybody##3845 |goto Un'Goro Crater 44.66,8.1
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
  only completed(4146)
  talk Larion##9118
  turnin Bloodpetal Zapper##4148 |goto Un'Goro Crater 45.54,8.72
step
  talk J.D. Collie##9117
  turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  talk Shizzle##9998
  turnin Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
  talk Linken##8737
  accept It's a Secret to Everybody##3908 |goto Un'Goro Crater 44.66,8.1
step
  talk Larion##9118
  accept Marvon's Workshop##4147 |goto Un'Goro Crater 45.54,8.72
step
  talk J.D. Collie##9117
  accept The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  accept The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  accept The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.7
step
  talk Spraggle Frock##9997
  accept Lost!##4492 |goto Un'Goro Crater 43.62,8.5
step
  click Beware of Pterrordax##174682
  accept Beware of Pterrordax##4501 |goto Un'Goro Crater 43.53,8.44
step
  note Discover the location of the Northern Crystal Pylon in Un'Goro Crater.
  collect Northern Crystal Pylon##164955 |q 4285 |goto Un'Goro Crater 56.52,12.54
step
  talk Ringo##9999
  turnin Lost!##4492 |goto Un'Goro Crater 51.9,49.85
step
  talk Ringo##9999
  accept A Little Help From My Friends##4491 |goto Un'Goro Crater 51.9,49.85
step
  note Discover the location of the Eastern Crystal Pylon in Un'Goro Crater.
  collect Eastern Crystal Pylon##164957 |q 4287 |goto Un'Goro Crater 77.16,49.98
step
  note Find the carcass of Lar'korwi's freshest kill and steal a Piece of Threshadon Carcass before returning to Torwa Pathfinder in Un'Goro Crater.
  collect Piece of Threshadon Carcass##11504 |q 4290 |goto Un'Goro Crater 68.74,56.71 |tip {dropsfrom}Fresh Threshadon Carcass
step
  talk Krakle##10302
  accept Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  note Discover the location of the Western Crystal Pylon.
  collect Western Crystal Pylon##164956 |q 4288 |goto Un'Goro Crater 23.86,59.19
step
  talk Torwa Pathfinder##9619
  turnin The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
step
  note Bring 2 Ravasaur Pheromone Glands to Torwa Pathfinder near the entrance to Un'Goro Crater.
  collect 2 Ravasaur Pheromone Gland##11509 |q 4291 |goto Un'Goro Crater 66,66 |tip {dropsfrom}Lar'korwi Mate
step
  note Kill 10 Pterrordax and 15 Frenzied Pterrordax, then speak to Spraggle Frock at Marshal's Refuge.
  kill Pterrordax##9166 |q 4501 |goto Un'Goro Crater 56.2,88.2
step
  talk Torwa Pathfinder##9619
  turnin The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.96
step
  talk J.D. Collie##9117
  turnin The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  turnin The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  turnin The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.7
step
  talk Spraggle Frock##9997
  turnin A Little Help From My Friends##4491 |goto Un'Goro Crater 43.62,8.5
step
  talk Spraggle Frock##9997
  turnin Beware of Pterrordax##4501 |goto Un'Goro Crater 43.62,8.5
step
  talk J.D. Collie##9117
  accept Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  turnin Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.7
step
  note Bring 2 Un'Goro Gorilla Pelts, 2 Un'Goro Stomper Pelts, and 2 Un'Goro Thunderer Pelts to Torwa Pathfinder at the entrance of Un'Goro Crater.
  collect 2 Un'Goro Gorilla Pelt##11478 |q 4289 |goto Un'Goro Crater 67.66,16.62 |tip {dropsfrom}Un'Goro Gorilla
step
  note Krakle in Un'Goro Crater wants you to find the hottest area of Fire Plume Ridge.
  collect Fire Plume Ridge Hot Spot##148503 |q 974 |goto Un'Goro Crater 49.69,45.64
step
  talk Krakle##10302
  turnin Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  talk Krakle##10302
  accept The New Springs##980 |goto Un'Goro Crater 30.93,50.44
step
  talk Torwa Pathfinder##9619
  turnin The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.64,75.96
step
  note Using the contents of Torwa's Pouch, summon Lar'korwi and defeat him. Then bring Lar'korwi's Head to Torwa Pathfinder near the entrance to Un'Goro Crater.
  collect Lar'korwi's Head##11510 |q 4292 |goto Un'Goro Crater 79.65,49.83 |tip {dropsfrom}Lar'korwi
step
  talk Torwa Pathfinder##9619
  turnin The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.64,75.96
step
  note Bring U'cha's Pelt to Torwa Pathfinder at the entrance of Un'Goro Crater.
  collect U'cha's Pelt##11476 |q 4301 |goto Un'Goro Crater 68.14,12.56 |tip {dropsfrom}U'cha
step
  talk Torwa Pathfinder##9619
  turnin The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.96
step
  talk Ghede##9076
  turnin Un'Goro Soil##3761 |goto Thunder Bluff 77.46,21.97 |tip {turninat}Thunder Bluff
step
  talk Jes'rimon##8659
  turnin Bone-Bladed Weapons##4300 |goto Orgrimmar 55.52,34.08 |tip {turninat}Orgrimmar
step
  only completed(4001)
  talk Thrall##4949
  turnin The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only completed(4974)
  talk Thrall##4949
  accept What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  only completed(6570)
  talk Emberstrife##10321
  accept The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  only completed(6570)
  talk Emberstrife##10321
  accept The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  only completed(6570)
  note You must find the blue dragonflight drake champion, Scryer, and slay him. Pry his skull from his corpse and return it to Emberstrife.
  kill Scryer##10664 |goto Winterspring 52.71,55.89 |elite
  collect The Skull of Scryer##16869 |q 6582 |goto Winterspring 52.71,55.89
step
  only completed(6570)
  note Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.
  kill Chronalis##8197 |goto Tanaris 64.16,48.49 |elite
  collect The Skull of Chronalis##16871 |q 6584 |goto Tanaris 64.16,48.49
step
  only completed(4974)
  talk Thrall##4949
  turnin What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only completed(6570)
  talk Emberstrife##10321
  turnin The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72 |tip {turninat}Dustwallow Marsh
step
  only completed(6570)
  talk Emberstrife##10321
  turnin The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72 |tip {turninat}Dustwallow Marsh
step
  talk Liv Rizzlefix##8496
  turnin Marvon's Workshop##4147 |goto The Barrens 62.45,38.73 |tip {turninat}The Barrens
step
  talk Donova Snowden##9298
  turnin The New Springs##980 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Morrowgrain Research##3782 |goto Thunder Bluff 78.62,28.56
step
  only completed(4974)
  talk Thrall##4949
  accept The Champion of the Horde##6567 |goto Orgrimmar 31.73,37.82
step
  talk Bashana Runetotem##9087
  turnin Morrowgrain Research##3782 |goto Thunder Bluff 71.06,34.19 |tip {turninat}Thunder Bluff
step
  only completed(4974)
  talk Rexxar##10182
  turnin The Champion of the Horde##6567 |goto Desolace 54,2 |tip {turninat}Desolace
step
  talk Donova Snowden##9298
  turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  talk Bashana Runetotem##9087
  accept Morrowgrain Research##3786 |goto Thunder Bluff 71.06,34.19
step
  note Use an Evergreen Pouch with a Packet of Tharlendis Seeds and two Un'Goro Soil samples to try and cultivate samples of Morrowgrain.
  collect Morrowgrain##11040 |q 3786 |goto Thunder Bluff 71.06,34.19
step
  talk Bashana Runetotem##9087
  turnin Morrowgrain Research##3786 |goto Thunder Bluff 71.06,34.19 |tip {turninat}Thunder Bluff
step
  note {travel}Orgrimmar
  goto Orgrimmar 75.23,34.24
]])
