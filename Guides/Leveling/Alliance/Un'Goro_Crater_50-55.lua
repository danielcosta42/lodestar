-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Un'Goro Crater (50-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Tanaris (53-60)",
}, [[
step
  talk Arch Druid Fandral Staghelm##3516
  accept Un'Goro Soil##3764 |goto Darnassus 34.81,9.26
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
  talk Muigin##9119
  accept Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
  talk Williden Marshal##9270
  accept Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
  only completed(4143)
  talk Muigin##9119
  accept Bloodpetal Sprouts##4144 |goto Un'Goro Crater 42.94,9.64
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
  note Collect 15 Bloodpetals and return to Muigin.
  collect 15 Bloodpetal##11316 |q 4141 |goto Un'Goro Crater 67.79,31.77 |tip {dropsfrom}Bloodpetal Lasher, Bloodpetal Flayer, Bloodpetal Thresher
step
  note Collect 8 Webbed Diemetradon Scales and 8 Webbed Pterrordax Scales for Shizzle in Marshal's Refuge.
  collect 8 Webbed Diemetradon Scale##11830 |q 4503 |goto Un'Goro Crater 65.42,35.31 |tip {dropsfrom}Young Diemetradon, Diemetradon, Elder Diemetradon
step
  note Bring 20 Un'Goro Soil samples to Jenal at the Cenarion Enclave in Darnassus.
  collect 20 Un'Goro Soil##11018 |q 3764 |goto Un'Goro Crater 47,52.9 |tip {dropsfrom}Un'Goro Dirt Pile
step
  only completed(4143)
  collect Bloodpetal Sprout##11315 |q 4144 |goto Un'Goro Crater 44.62,42.45 |tip {dropsfrom}Devilsaur, Ironhide Devilsaur, Tyrant Devilsaur
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
  talk Muigin##9119
  turnin Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
  only completed(4143)
  talk Muigin##9119
  turnin Bloodpetal Sprouts##4144 |goto Un'Goro Crater 42.94,9.64
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
  talk Muigin##9119
  accept A Visit to Gregan##4142 |goto Un'Goro Crater 42.94,9.64
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
  talk Jenal##9047
  turnin Un'Goro Soil##3764 |goto Darnassus 31.49,8.23 |tip {turninat}Darnassus
step
  talk Gregan Brewspewer##7775
  turnin A Visit to Gregan##4142 |goto Feralas 45.12,25.57 |tip {turninat}Feralas
step
  talk Donova Snowden##9298
  turnin The New Springs##980 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  talk Arch Druid Fandral Staghelm##3516
  accept Morrowgrain Research##3781 |goto Darnassus 34.81,9.26
step
  talk Mathrengyl Bearwalker##4217
  turnin Morrowgrain Research##3781 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Donova Snowden##9298
  turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  talk Mathrengyl Bearwalker##4217
  accept Morrowgrain Research##3785 |goto Darnassus 35.37,8.4
step
  note Use an Evergreen Pouch with a Packet of Tharlendis Seeds and two Un'Goro Soil samples to try and cultivate samples of Morrowgrain.
  collect Morrowgrain##11040 |q 3785 |goto Darnassus 35.37,8.4
step
  only not completed(3787) not haveq(3787)
  talk Innkeeper Shyria##7736
  accept Jonespyre's Request##3788 |goto Feralas 30.97,43.49
step
  talk Quintis Jonespyre##7879
  accept The Mystery of Morrowgrain##3791 |goto Feralas 32.45,43.79
step
  note Bring 10 Morrowgrain to Quintis Jonespyre in Feathermoon Stronghold.
  collect 10 Morrowgrain##11040 |q 3791 |goto Feralas 32.45,43.79
step
  talk Mathrengyl Bearwalker##4217
  turnin Morrowgrain Research##3785 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only not completed(3787) not haveq(3787)
  talk Quintis Jonespyre##7879
  turnin Jonespyre's Request##3788 |goto Feralas 32.45,43.79 |tip {turninat}Feralas
step
  talk Quintis Jonespyre##7879
  turnin The Mystery of Morrowgrain##3791 |goto Feralas 32.45,43.79 |tip {turninat}Feralas
step
  note {travel}Tanaris
  goto Tanaris 66.99,22.36
]])
