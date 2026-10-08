-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Thousand Needles (27-35)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Desolace (33-39)",
	rev = "de661e1b",
}, [[
step
  talk Brave Moonhorn##10079
  accept Message to Freewind Post##4542 |goto Thousand Needles 32.24,22.17
step
  kill Galak Messenger##10617 |goto Thousand Needles 39.43,33.1 |tip Loot the quest item here — it starts the quest.
  accept Assassination Plot##4881 |goto Thousand Needles 39.43,33.1
step
  talk Kanati Greycloud##10638
  turnin Assassination Plot##4881 |goto Thousand Needles 21.25,32.06
step
  talk Kanati Greycloud##10638
  accept Protect Kanati Greycloud##4966 |goto Thousand Needles 21.25,32.06
step
  note Protect Kanati Greycloud from the centaur attack.
  kill Galak Assassin##10720 |q 4966 |goto Thousand Needles 21.26,31.81
step
  talk Kanati Greycloud##10638
  turnin Protect Kanati Greycloud##4966 |goto Thousand Needles 21.25,32.06
step
  note {fp}Nyse
  goto Thousand Needles 45.14,49.11 |tip {vendor}
step
  talk Cliffwatcher Longhorn##10537
  turnin Message to Freewind Post##4542 |goto Thousand Needles 45.67,50.74
step
  talk Cliffwatcher Longhorn##10537
  accept Pacify the Centaur##4841 |goto Thousand Needles 45.67,50.74
step
  talk Hagar Lightninghoof##10539
  accept Alien Egg##4821 |goto Thousand Needles 44.64,50.29
step
  note Return the Alien Egg to Hagar Lightninghoof in Freewind Post.
  collect Alien Egg##12467 |q 4821 |goto Thousand Needles 52.34,55.25
step
  talk Hagar Lightninghoof##10539
  turnin Alien Egg##4821 |goto Thousand Needles 44.64,50.29
step
  talk Hagar Lightninghoof##10539
  accept Serpent Wild##4865 |goto Thousand Needles 44.64,50.29
step
  talk Elu##10377
  accept Wind Rider##4767 |goto Thousand Needles 44.93,48.92
step
  click Wanted Poster - Arnak Grimtotem##176115
  accept Wanted - Arnak Grimtotem##5147 |goto Thousand Needles 46,50.86
step
  talk Dorn Plainstalker##2986
  accept Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  note Kill 12 Galak Scouts, 10 Galak Wranglers, and 6 Galak Windchasers, and then return to Cliffwatcher Longhorn in Freewind Post.
  kill Galak Scout##4094 |q 4841 |goto Thousand Needles 43.29,37.97
step
  talk Dorn Plainstalker##2986
  turnin Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  talk Lakota Windsong##10646
  accept Free at Last##4904 |goto Thousand Needles 37.95,26.45
step
  note Slay Arnak Grimtotem and bring proof of your deed to Cliffwatcher Longhorn in Freewind Post.
  collect Arnak's Hoof##12884 |q 5147 |goto Thousand Needles 38.11,26.87 |tip {dropsfrom}Arnak Grimtotem
step
  talk Motega Firemane##10428
  turnin Serpent Wild##4865 |goto Thousand Needles 21.54,32.35
step
  talk Motega Firemane##10428
  accept Sacred Fire##5062 |goto Thousand Needles 21.54,32.35
step
  talk Pao'ka Swiftmountain##10427
  accept Homeward Bound##4770 |goto Thousand Needles 17.89,40.57
step
  note Bring 10 Highperch Wyvern Eggs to Elu in Freewind Post.
  collect 10 Highperch Wyvern Egg##12356 |q 4767 |goto Thousand Needles 12.56,37.37
step
  talk Elu##10377
  turnin Wind Rider##4767 |goto Thousand Needles 44.93,48.92
step
  talk Cliffwatcher Longhorn##10537
  turnin Pacify the Centaur##4841 |goto Thousand Needles 45.67,50.74
step
  talk Thalia Amberhide##10645
  turnin Free at Last##4904 |goto Thousand Needles 45.97,51.61
step
  talk Cliffwatcher Longhorn##10537
  turnin Wanted - Arnak Grimtotem##5147 |goto Thousand Needles 45.67,50.74
step
  talk Cliffwatcher Longhorn##10537
  accept Grimtotem Spying##5064 |goto Thousand Needles 45.67,50.74
step
  talk Dorn Plainstalker##2986
  accept Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  talk Fizzle Brassbolts##4454
  accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  talk Wizzle Brassbolts##4453
  accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  note Bring 6 Salty Scorpid Venoms to Fizzle Brassbolts in the Shimmering Flats.
  collect 6 Salty Scorpid Venom##5794 |q 1104 |goto Thousand Needles 82.76,79.73 |tip {dropsfrom}Scorpid Terror, Scorpid Reaver, Vile Sting
step
  talk Fizzle Brassbolts##4454
  turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  note Gather 10 bushels of Incendia Agave, and then consult Magatha Grimtotem on Elder Rise in Thunderbluff.
  collect 10 Incendia Agave##12732 |q 5062 |goto Thousand Needles 36.47,35.43
step
  note Locate and retrieve the three Secret Notes in Darkcloud Pinnacle.
  collect Secret Note #1##12765 |q 5064 |goto Thousand Needles 31.79,32.58 |tip {dropsfrom}Document Chest
step
  talk Motega Firemane##10428
  turnin Homeward Bound##4770 |goto Thousand Needles 21.54,32.35
step
  talk Wizlo Bearingshiner##10941
  accept Hypercapacitor Gizmo##5151 |goto Thousand Needles 21.43,32.55
step
  note Slay the beast and bring back the Hypercapacitor Gizmo and Panther Cage Key to Wizlo Bearingshiner.
  kill Enraged Panther##10992 |goto Thousand Needles 22.76,24.62 |elite
  collect Hypercapacitor Gizmo##12946 |q 5151 |goto Thousand Needles 22.76,24.62
step
  talk Wizlo Bearingshiner##10941
  turnin Hypercapacitor Gizmo##5151 |goto Thousand Needles 21.43,32.55
step
  note Bring Grenka's Claw to Dorn Plainstalker in Thousand Needles.
  collect Grenka's Claw##5843 |q 1150 |goto Thousand Needles 26.6,55.8 |tip {dropsfrom}Grenka Bloodscreech
step
  talk Cliffwatcher Longhorn##10537
  turnin Grimtotem Spying##5064 |goto Thousand Needles 45.67,50.74
step
  talk Dorn Plainstalker##2986
  turnin Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  talk Dorn Plainstalker##2986
  accept Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  note Bring 9 Hardened Tortoise Shells to Wizzle Brassbolts in the Shimmering Flats.
  collect 9 Hardened Tortoise Shell##5795 |q 1105 |goto Thousand Needles 74.69,56.36 |tip {dropsfrom}Sparkleshell Tortoise, Sparkleshell Snapper, Sparkleshell Borer
step
  talk Wizzle Brassbolts##4453
  turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Kravel Koalbeard##4452
  accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
  talk Pozzik##4630
  accept Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  note Bring 30 Rocket Car Parts to Kravel Koalbeard in the Shimmering Flats.
  collect 30 Rocket Car Parts##5798 |q 1110 |goto Thousand Needles 72.52,72.34 |tip {dropsfrom}Rocket Car Rubble
step
  note Get 10 Hollow Vulture Bones for Pozzik in the Shimmering Flats.
  collect Hollow Vulture Bone##5848 |q 1176 |goto Thousand Needles 87.4,64.92 |tip {dropsfrom}Salt Flats Scavenger, Salt Flats Vulture
step
  talk Kravel Koalbeard##4452
  turnin Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
  talk Pozzik##4630
  turnin Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  note Bring Fragments of Rok'Alim to Dorn Plainstalker in Thousand Needles.
  kill Rok'Alim the Pounder##4499 |goto Thousand Needles 17.1,38.1 |elite
  collect Fragments of Rok'Alim##5844 |q 1151 |goto Thousand Needles 17.1,38.1
step
  talk Dorn Plainstalker##2986
  turnin Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  talk Dorn Plainstalker##2986
  accept Test of Lore##1152 |goto Thousand Needles 53.95,41.49
step
  talk Trackmaster Zherin##4629
  accept A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  note Kill 10 Saltstone Basilisks, 10 Saltstone Crystalhides and 6 Saltstone Gazers for Trackmaster Zherin on the Shimmering Flats.
  kill Saltstone Basilisk##4147 |q 1175 |goto Thousand Needles 73.64,59.44
step
  talk Trackmaster Zherin##4629
  turnin A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  talk Cliffwatcher Longhorn##10537
  accept Family Tree##5361 |goto Thousand Needles 45.67,50.74
step
  talk Kravel Koalbeard##4452
  accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
step
  talk Nataka Longhorn##11259
  turnin Family Tree##5361 |goto Desolace 55.41,55.81 |tip {turninat}Desolace
step
  talk Wharfmaster Dizzywig##3453
  turnin Wharfmaster Dizzywig##1111 |goto The Barrens 63.35,38.45 |tip {turninat}The Barrens
step
  only completed(1195)
  talk Zangen Stonehoof##4721
  accept The Sacred Flame##1196 |goto Thunder Bluff 54.97,51.41
step
  talk Melor Stonehoof##3441
  accept Steelsnap##1131 |goto Thunder Bluff 61.54,80.92
step
  only Warrior completed(1844)
  talk Orm Stonehoof##6410
  accept Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98
step
  talk Craven Drok##5639
  accept Alliance Relations##1431 |goto Orgrimmar 51.3,45.9
step
  only Shaman not completed(1532) not haveq(1532)
  talk Searn Firewarder##5892
  accept Call of Air##1531 |goto Orgrimmar 37.96,37.73
step
  only completed(1145)
  talk Belgrom Rockmaul##4485
  accept The Swarm Grows##1146 |goto Orgrimmar 75.23,34.24
step
  note Bring Steelsnap's Rib to Melor Stonehoof in Thunder Bluff.
  collect Steelsnap's Rib##5837 |q 1131 |goto Thousand Needles 17.79,19.79 |tip {dropsfrom}Steelsnap
step
  only completed(1195)
  talk Rau Cliffrunner##4722
  turnin The Sacred Flame##1196 |goto Thousand Needles 46.14,51.71
step
  talk Melor Stonehoof##3441
  turnin Steelsnap##1131 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  only Warrior completed(1844)
  talk Orm Stonehoof##6410
  turnin Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  talk Keldran##5640
  turnin Alliance Relations##1431 |goto Orgrimmar 22.56,52.63 |tip {turninat}Orgrimmar
step
  only Shaman not completed(1532) not haveq(1532)
  talk Prate Cloudseer##5905
  turnin Call of Air##1531 |goto Thousand Needles 53.54,42.65
step
  only completed(1145)
  talk Moktar Krin##4483
  turnin The Swarm Grows##1146 |goto Thousand Needles 67.58,63.94
step
  only completed(1195)
  talk Rau Cliffrunner##4722
  accept The Sacred Flame##1197 |goto Thousand Needles 46.14,51.71
step
  only completed(1145)
  talk Moktar Krin##4483
  accept The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
  only completed(1145)
  kill Silithid Searcher##4130 |goto Thousand Needles 69.91,82.48 |tip Loot the quest item here — it starts the quest.
  accept Parts of the Swarm##1148 |goto Thousand Needles 69.91,82.48
step
  talk Wharfmaster Dizzywig##3453
  accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
step
  only completed(1195)
  note Retrieve the Cloven Hoof for Rau Cliffrunner at the Freewind Post.
  collect Cloven Hoof##5869 |q 1197 |goto Thousand Needles 42.01,31.47 |tip {dropsfrom}Ancient Brazier
step
  only completed(1145)
  note Kill 5 Silithid Searchers, 5 Silithid Hive Drones, and 5 Silithid Invaders and return to Moktar Krin in Thousand Needles.
  kill Silithid Searcher##4130 |q 1147 |goto Thousand Needles 69.91,82.48
step
  only completed(1145)
  note Bring 1 Silithid Heart, 5 Silithid Talons, and 3 Intact Silithid Carapaces, to Korran at the Crossroads.
  collect 1 Silithid Heart##5855 |q 1148 |goto Thousand Needles 69.91,82.48 |tip {dropsfrom}Silithid Searcher, Silithid Invader, Silithid Ravager
step
  only completed(1195)
  talk Rau Cliffrunner##4722
  turnin The Sacred Flame##1197 |goto Thousand Needles 46.14,51.71
step
  only completed(1145)
  talk Moktar Krin##4483
  turnin The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
  only completed(1145)
  talk Korran##3428
  turnin Parts of the Swarm##1148 |goto The Barrens 51.07,29.63 |tip {turninat}The Barrens
step
  talk Kravel Koalbeard##4452
  turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.27
step
  talk Magatha Grimtotem##4046
  turnin Sacred Fire##5062 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  only completed(1145)
  talk Korran##3428
  accept Parts of the Swarm##1184 |goto The Barrens 51.07,29.63
step
  talk Kravel Koalbeard##4452
  accept Delivery to the Gnomes##1114 |goto Thousand Needles 77.79,77.27
step
  only completed(1145)
  talk Belgrom Rockmaul##4485
  turnin Parts of the Swarm##1184 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  talk Fizzle Brassbolts##4454
  turnin Delivery to the Gnomes##1114 |goto Thousand Needles 78.06,77.13
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##1152 |goto Stonetalon Mountains 78.8,45.69 |tip {turninat}Stonetalon Mountains
step
  talk Magatha Grimtotem##4046
  accept Arikara##5088 |goto Thunder Bluff 69.85,30.91
step
  note Slay Arikara. Bring her remains and the Incendia powder to Motega Firemane in Whitereach Post as proof of your deed.
  collect Sacred Fire of Life##175944 |q 5088 |goto Thousand Needles 38.06,35.37
step
  talk Motega Firemane##10428
  turnin Arikara##5088 |goto Thousand Needles 21.54,32.35
step
  talk Braug Dimspirit##4489
  accept Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  note Find the Legacy of the Aspects and return it to Braug Dimspirit near the entrance to Talondeep Path in Stonetalon Mountains.
  collect Legacy of the Aspects##5860 |q 1154 |goto Ashenvale 75.57,74.37 |tip {dropsfrom}The Legacy of the Aspects
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69 |tip {turninat}Stonetalon Mountains
step
  talk Braug Dimspirit##4489
  accept Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69 |tip {turninat}Stonetalon Mountains
step
  talk Braug Dimspirit##4489
  accept Test of Lore##1159 |goto Stonetalon Mountains 78.8,45.69
step
  talk Parqual Fintallas##4488
  turnin Test of Lore##1159 |goto Undercity 57.8,65.42 |tip {turninat}Undercity
step
  note {travel}Desolace
  goto Desolace 56.29,59.68
]])
