-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Un'Goro Crater (50-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Searing Gorge (48-50)",
	rev = "744ef74b",
}, [[
step
  ding 49
step
  talk Arch Druid Fandral Staghelm##3516
  accept Un'Goro Soil##3764 |goto Darnassus 34.81,9.26
step
  note {fp}Gryfe
  goto Un'Goro Crater 45.23,5.83 |tip {vendor}
step
  only level>=49
  talk Spark Nilminer##9272
  accept Roll the Bones##3882 |goto Un'Goro Crater 43.5,7.42
step
  only level>=49
  talk Shizzle##9998
  accept Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
  only haveq(4503)
  note Collect 8 Webbed Diemetradon Scales and 8 Webbed Pterrordax Scales for Shizzle in Marshal's Refuge.
  collect 8 Webbed Diemetradon Scale##11830 |q 4503/1 |goto Un'Goro Crater 65.42,35.31 |tip {dropsfrom}Young Diemetradon, Diemetradon, Elder Diemetradon
  collect 8 Webbed Pterrordax Scale##11831 |q 4503 |goto Un'Goro Crater 78.7,39.55 |tip {dropsfrom}Fledgling Pterrordax, Pterrordax, Frenzied Pterrordax
step
  note Bring 20 Un'Goro Soil samples to Jenal at the Cenarion Enclave in Darnassus.
  collect 20 Un'Goro Soil##11018 |q 3764 |goto Un'Goro Crater 47,52.9 |tip {dropsfrom}Un'Goro Dirt Pile
step
  kill Ravasaur##6505 |goto Un'Goro Crater 64.16,74.25 |tip Loot the quest item here — it starts the quest.
  accept Williden's Journal##3884 |goto Un'Goro Crater 64.16,74.25
step
  only haveq(3882)
  note Bring 8 Dinosaur Bones to Spark Nilminer in Un'Goro Crater.
  collect 8 Dinosaur Bone##11114 |q 3882 |goto Un'Goro Crater 32.66,73.52
step
  only haveq(3882)
  talk Spark Nilminer##9272
  turnin Roll the Bones##3882 |goto Un'Goro Crater 43.5,7.42
step
  note Return the journal to Williden Marshal somewhere in Un'Goro Crater.
  talk Williden Marshal##9270
  turnin Williden's Journal##3884 |goto Un'Goro Crater 43.95,7.14
step
  only haveq(4503)
  talk Shizzle##9998
  turnin Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
  talk Hol'anyee Marshal##9271
  accept Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
  talk Muigin##9119
  accept Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
  click A Wrecked Raft##161505
  accept It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.02,68.6
step
  note Look around in the pond for a clue about who this wrecked raft may belong to.
  turnin It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.11,69.06
step
  click A Small Pack##161504
  accept It's a Secret to Everybody##3845 |goto Un'Goro Crater 63.11,69.06
step
  note Examine the items inside the pack and bring them to their owner.
  collect Large Compass##11104 |q 3845/1
  collect Curled Map Parchment##11105 |q 3845/2
  collect Lion-headed Key##11106 |q 3845
step
  only Druid level>=50
  talk Torwa Pathfinder##9619
  accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  note Use the Scraping Vial to collect a Hive Wall Sample from one of the Gorishi hive hatcheries in Un'Goro Crater. Look for the chambers with the hanging larval spawns.
  collect Hive Wall Sample##11131 |q 3883 |goto Un'Goro Crater 48.69,85.32 |tip {dropsfrom}Gorishi Hive Hatchery
step
  only Druid haveq(9052)
  note Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
  collect 8 Gorishi Sting##22435 |q 9052/1 |goto Un'Goro Crater 50.14,75.97 |tip {dropsfrom}Gorishi Wasp, Gorishi Stinger
  collect 8 Bloodcap##22434 |q 9052 |goto Un'Goro Crater 44.62,42.45 |tip {dropsfrom}Bloodpetal Sprout
step
  note Collect 15 Bloodpetals and return to Muigin.
  collect 15 Bloodpetal##11316 |q 4141 |goto Un'Goro Crater 67.79,31.77 |tip {dropsfrom}Bloodpetal Lasher, Bloodpetal Flayer, Bloodpetal Thresher
step
  talk Linken##8737
  turnin It's a Secret to Everybody##3845 |goto Un'Goro Crater 44.66,8.1
step
  talk Hol'anyee Marshal##9271
  turnin Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
  talk Muigin##9119
  turnin Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
  talk Linken##8737
  accept It's a Secret to Everybody##3908 |goto Un'Goro Crater 44.66,8.1
step
  talk Muigin##9119
  accept A Visit to Gregan##4142 |goto Un'Goro Crater 42.94,9.64
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
  note Find A-Me 01 in Un'Goro Crater.
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.66,16.76
step
  note Bring a Crate of Foodstuffs and Research Equipment to Williden Marshal in Un'Goro Crater.
  collect Crate of Foodstuffs##11113 |q 3881/1 |goto Un'Goro Crater 68.54,36.54
  collect Research Equipment##11112 |q 3881 |goto Un'Goro Crater 38.45,66.06
step
  note Collect 7 Power Crystals of each color: red, blue, yellow, and green. Bring them to J.D. Collie at Marshal's Refuge.
  collect Red Power Crystal##11186 |q 4284 |goto Un'Goro Crater 58.1,49.8
step
  only completed(4143)
  collect Bloodpetal Sprout##11315 |q 4144 |goto Un'Goro Crater 44.62,42.45
step
  talk Williden Marshal##9270
  turnin Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
  only completed(4143)
  talk Muigin##9119
  turnin Bloodpetal Sprouts##4144 |goto Un'Goro Crater 42.94,9.64
step
  talk J.D. Collie##9117
  turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
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
  note Discover the location of the Western Crystal Pylon.
  click Western Crystal Pylon##164956 |q 4288 |goto Un'Goro Crater 23.86,59.19
step
  only Druid haveq(9052)
  talk Torwa Pathfinder##9619
  turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  only Druid completed(9052) level>=50
  talk Torwa Pathfinder##9619
  accept Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
step
  only Druid haveq(9051)
  note Stab a Devilsaur with the Devilsaur Barb. Return to Torwa Pathfinder in Un'Goro Crater when you have completed this task.
  talk Torwa Pathfinder##9619
  turnin Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  note Find the carcass of Lar'korwi's freshest kill and steal a Piece of Threshadon Carcass before returning to Torwa Pathfinder in Un'Goro Crater.
  collect Piece of Threshadon Carcass##11504 |q 4290 |goto Un'Goro Crater 68.74,56.71 |tip {dropsfrom}Fresh Threshadon Carcass
step
  talk Torwa Pathfinder##9619
  turnin The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.96
step
  note Bring 2 Ravasaur Pheromone Glands to Torwa Pathfinder near the entrance to Un'Goro Crater.
  collect 2 Ravasaur Pheromone Gland##11509 |q 4291 |goto Un'Goro Crater 66,66 |tip {dropsfrom}Lar'korwi Mate
step
  talk Torwa Pathfinder##9619
  turnin The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.96
step
  note Discover the location of the Eastern Crystal Pylon in Un'Goro Crater.
  click Eastern Crystal Pylon##164957 |q 4287 |goto Un'Goro Crater 77.16,49.98
step
  note Discover the location of the Northern Crystal Pylon in Un'Goro Crater.
  click Northern Crystal Pylon##164955 |q 4285 |goto Un'Goro Crater 56.52,12.54
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
  talk J.D. Collie##9117
  accept Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.7
step
  note Speak with J.D. Collie in a moment.
  talk J.D. Collie##9117
  turnin Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.7
step
  click Beware of Pterrordax##174682
  accept Beware of Pterrordax##4501 |goto Un'Goro Crater 43.53,8.44
step
  only level>=50
  talk Spraggle Frock##9997
  accept Lost!##4492 |goto Un'Goro Crater 43.62,8.5
step
  only haveq(4492)
  note Find Ringo at Fire Plume Ridge.
  goto Un'Goro Crater 43.71,8.29 |tip Escort Ringo to Spraggle Frock at Marshal's Refuge
step
  only level>=51
  talk Krakle##10302
  accept Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  note Kill 10 Pterrordax and 15 Frenzied Pterrordax, then speak to Spraggle Frock at Marshal's Refuge.
  kill Frenzied Pterrordax##9167 |q 4501/2 |goto Un'Goro Crater 32.4,42
  kill Pterrordax##9166 |q 4501 |goto Un'Goro Crater 56.2,88.2
step
  talk Torwa Pathfinder##9619
  accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
step
  only haveq(4492)
  talk Ringo##9999
  turnin Lost!##4492 |goto Un'Goro Crater 51.9,49.85
step
  only haveq(974)
  note Krakle in Un'Goro Crater wants you to find the hottest area of Fire Plume Ridge.
  click Fire Plume Ridge Hot Spot##148503 |q 974 |goto Un'Goro Crater 49.69,45.64
step
  only completed(4492) level>=50
  talk Ringo##9999
  accept A Little Help From My Friends##4491 |goto Un'Goro Crater 51.9,49.85
step
  only haveq(4491)
  note Lead Ringo to Spraggle Frock at Marshal's Refuge.
  goto Un'Goro Crater 43.71,8.29 |tip Escort Ringo to Spraggle Frock at Marshal's Refuge
step
  only haveq(4491)
  talk Spraggle Frock##9997
  turnin A Little Help From My Friends##4491 |goto Un'Goro Crater 43.62,8.5
step
  talk Spraggle Frock##9997
  turnin Beware of Pterrordax##4501 |goto Un'Goro Crater 43.62,8.5
step
  only haveq(974)
  talk Krakle##10302
  turnin Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
step
  only completed(974) level>=51
  talk Krakle##10302
  accept The New Springs##980 |goto Un'Goro Crater 30.93,50.44
step
  note Bring 2 Un'Goro Gorilla Pelts, 2 Un'Goro Stomper Pelts, and 2 Un'Goro Thunderer Pelts to Torwa Pathfinder at the entrance of Un'Goro Crater.
  collect 2 Un'Goro Gorilla Pelt##11478 |q 4289 |goto Un'Goro Crater 67.66,16.62 |tip {dropsfrom}Un'Goro Gorilla
step
  talk Torwa Pathfinder##9619
  turnin The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
step
  only level>=50
  talk Torwa Pathfinder##9619
  accept The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.96
step
  talk Torwa Pathfinder##9619
  accept The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.64,75.96
step
  only haveq(4301)
  note Bring U'cha's Pelt to Torwa Pathfinder at the entrance of Un'Goro Crater.
  collect U'cha's Pelt##11476 |q 4301 |goto Un'Goro Crater 68.14,12.56 |tip {dropsfrom}U'cha
step
  note Using the contents of Torwa's Pouch, summon Lar'korwi and defeat him. Then bring Lar'korwi's Head to Torwa Pathfinder near the entrance to Un'Goro Crater.
  collect Lar'korwi's Head##11510 |q 4292 |goto Un'Goro Crater 79.65,49.83 |tip {dropsfrom}Lar'korwi
step
  talk Torwa Pathfinder##9619
  turnin The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.64,75.96
step
  only haveq(4301)
  talk Torwa Pathfinder##9619
  turnin The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.96
step
  talk Jenal##9047
  turnin Un'Goro Soil##3764 |goto Darnassus 31.49,8.23 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  accept Morrowgrain Research##3781 |goto Darnassus 34.81,9.26
step
  note Take the Arch Druid's Seed Voucher to Mathrengyl Bearwalker in the Cenarion Enclave of Darnassus.
  talk Mathrengyl Bearwalker##4217
  turnin Morrowgrain Research##3781 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Mathrengyl Bearwalker##4217
  accept Morrowgrain Research##3785 |goto Darnassus 35.37,8.4
step
  note Use an Evergreen Pouch with a Packet of Tharlendis Seeds and two Un'Goro Soil samples to try and cultivate samples of Morrowgrain.
  collect 10 Morrowgrain##11040 |q 3785 |goto Darnassus 35.37,8.4
step
  talk Mathrengyl Bearwalker##4217
  turnin Morrowgrain Research##3785 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  note Take a Bloodpetal to Gregan Brewspewer in Feralas.
  talk Gregan Brewspewer##7775
  turnin A Visit to Gregan##4142 |goto Feralas 45.12,25.57 |tip {turninat}Feralas
step
  talk Quintis Jonespyre##7879
  accept The Mystery of Morrowgrain##3791 |goto Feralas 32.45,43.79
step
  note Bring 10 Morrowgrain to Quintis Jonespyre in Feathermoon Stronghold.
  collect 10 Morrowgrain##11040 |q 3791 |goto Feralas 32.45,43.79
step
  talk Quintis Jonespyre##7879
  turnin The Mystery of Morrowgrain##3791 |goto Feralas 32.45,43.79 |tip {turninat}Feralas
step
  only not completed(3787) not haveq(3787)
  talk Innkeeper Shyria##7736
  accept Jonespyre's Request##3788 |goto Feralas 30.97,43.49
step
  only not completed(3787) not haveq(3787)
  note Speak with Quintis Jonespyre in Feathermoon Stronghold.
  talk Quintis Jonespyre##7879
  turnin Jonespyre's Request##3788 |goto Feralas 32.45,43.79 |tip {turninat}Feralas
step
  note {travel}Searing Gorge
  goto Searing Gorge 39.06,38.99
]])
