-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Thousand Needles (27-33)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Mulgore (30-31)",
	rev = "c1394a5f",
}, [[
step
  ding 26
step
  talk Dorn Plainstalker##2986
  accept Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  kill Galak Messenger##10617 |goto Thousand Needles 39.43,33.1 |tip Loot the quest item here — it starts the quest.
  accept Assassination Plot##4881 |goto Thousand Needles 39.43,33.1
step
  only haveq(5881)
  note Maggran wishes you to deliver a letter to Grish Longrunner at the Great Lift in the Barrens.
  talk Grish Longrunner##12576
  turnin Calling in the Reserves##5881 |goto Thousand Needles 31.86,21.66
step
  talk Brave Moonhorn##10079
  accept Message to Freewind Post##4542 |goto Thousand Needles 32.24,22.17
step
  note {fp}Nyse
  goto Thousand Needles 45.14,49.11 |tip {vendor}
step
  note Bring the Urgent Message to Cliffwatcher Longhorn at Freewind Post.
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
  note Kill 12 Galak Scouts, 10 Galak Wranglers, and 6 Galak Windchasers, and then return to Cliffwatcher Longhorn in Freewind Post.
  kill Galak Wrangler##4093 |q 4841/2 |goto Thousand Needles 43.65,39.34
  kill Galak Windchaser##4096 |q 4841/3 |goto Thousand Needles 44.44,38.41
  kill Galak Scout##4094 |q 4841 |goto Thousand Needles 43.29,37.97
step
  note Slay Arnak Grimtotem and bring proof of your deed to Cliffwatcher Longhorn in Freewind Post.
  collect Arnak's Hoof##12884 |q 5147 |goto Thousand Needles 38.11,26.87 |tip {dropsfrom}Arnak Grimtotem
step
  talk Lakota Windsong##10646
  accept Free at Last##4904 |goto Thousand Needles 37.95,26.45
step
  note Escort Lakota Windsong from the Darkcloud Pinnacle, and then talk to Thalia Amberhide at Freewind Post.
  goto Thousand Needles 30.93,37.12 |tip Escort Lakota Windsong from the Darkcloud Pinnacle.
step
  note Report your findings to Motega Firemane.
  talk Motega Firemane##10428
  turnin Serpent Wild##4865 |goto Thousand Needles 21.54,32.35
step
  note Warn Kanati Greycloud at Whitereach Post of the plot to kill him.
  talk Kanati Greycloud##10638
  turnin Assassination Plot##4881 |goto Thousand Needles 21.25,32.06
step
  talk Motega Firemane##10428
  accept Sacred Fire##5062 |goto Thousand Needles 21.54,32.35
step
  note If you have faith, leap from the planks overlooking Thousand Needles.
  goto Thousand Needles 26.43,32.93
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
  only level>=30
  talk Wizlo Bearingshiner##10941
  accept Hypercapacitor Gizmo##5151 |goto Thousand Needles 21.43,32.55
step
  only haveq(5151)
  note Slay the beast and bring back the Hypercapacitor Gizmo and Panther Cage Key to Wizlo Bearingshiner.
  kill Enraged Panther##10992 |q 5151 |goto Thousand Needles 22.76,24.62 |elite
  collect Hypercapacitor Gizmo##12946 |q 5151 |goto Thousand Needles 22.76,24.62
step
  note Bring 10 Highperch Wyvern Eggs to Elu in Freewind Post.
  collect 10 Highperch Wyvern Egg##12356 |q 4767 |goto Thousand Needles 12.56,37.37
step
  talk Pao'ka Swiftmountain##10427
  accept Homeward Bound##4770 |goto Thousand Needles 17.89,40.57
step
  note Escort Pao'ka Swiftmountain from Highperch, and then talk to Motega Firemane in Whitereach Post.
  goto Thousand Needles 15.15,32.65 |tip Escort Pao'ka from Highperch
step
  talk Motega Firemane##10428
  turnin Homeward Bound##4770 |goto Thousand Needles 21.54,32.35
step
  only haveq(5151)
  talk Wizlo Bearingshiner##10941
  turnin Hypercapacitor Gizmo##5151 |goto Thousand Needles 21.43,32.55
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
  only level>=27
  talk Jandia##4877
  accept Stolen Freewind Supplies##98069 |goto Thousand Needles 46.21,51.51
step
  only haveq(98069)
  note Bring 8 Stolen Freewind Supplies to Jandia in Freewind Post.
  collect 8 Stolen Freewind Supplies##279383 |q 98069 |goto Thousand Needles 46.21,51.51
step
  only level>=27
  talk Jandia##4877
  accept Stop the Screeching##98070 |goto Thousand Needles 46.21,51.51
step
  only haveq(98069)
  talk Jandia##4877
  turnin Stolen Freewind Supplies##98069 |goto Thousand Needles 46.21,51.51
step
  talk Dorn Plainstalker##2986
  turnin Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  talk Dorn Plainstalker##2986
  accept Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  note Gather 10 bushels of Incendia Agave, and then consult Magatha Grimtotem on Elder Rise in Thunderbluff.
  collect 10 Incendia Agave##12732 |q 5062 |goto Thousand Needles 36.47,35.43
step
  note Locate and retrieve the three Secret Notes in Darkcloud Pinnacle.
  collect Secret Note #2##12766 |q 5064/2 |goto Thousand Needles 33.76,39.99 |tip {dropsfrom}Document Chest
  collect Secret Note #3##12768 |q 5064/3 |goto Thousand Needles 39.34,41.53 |tip {dropsfrom}Document Chest
  collect Secret Note #1##12765 |q 5064 |goto Thousand Needles 31.79,32.58 |tip {dropsfrom}Document Chest
step
  note Bring Grenka's Claw to Dorn Plainstalker in Thousand Needles.
  collect Grenka's Claw##5843 |q 1150 |goto Thousand Needles 26.6,55.8 |tip {dropsfrom}Grenka Bloodscreech
step
  only haveq(98070)
  note Slay 5 Screeching Harpies, 5 Screeching Roguefeather Harpies and 5 Screeching Windcaller Harpies.
  kill Screeching Windcaller##4104 |q 98070/3 |goto Thousand Needles 26.31,53.67
  kill Screeching Harpy##4100 |q 98070/1 |goto Thousand Needles 26.49,52.26
  kill Screeching Roguefeather##4101 |q 98070 |goto Thousand Needles 27.35,51
step
  talk Cliffwatcher Longhorn##10537
  turnin Grimtotem Spying##5064 |goto Thousand Needles 45.67,50.74
step
  only haveq(98070)
  talk Jandia##4877
  turnin Stop the Screeching##98070 |goto Thousand Needles 46.21,51.51
step
  talk Dorn Plainstalker##2986
  turnin Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  only level>=30
  talk Dorn Plainstalker##2986
  accept Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  only haveq(1151)
  note Bring Fragments of Rok'Alim to Dorn Plainstalker in Thousand Needles.
  kill Rok'Alim the Pounder##4499 |q 1151 |goto Thousand Needles 17.1,38.1 |elite
  collect Fragments of Rok'Alim##5844 |q 1151 |goto Thousand Needles 17.1,38.1
step
  only haveq(1151)
  talk Dorn Plainstalker##2986
  turnin Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  only completed(1151)
  talk Dorn Plainstalker##2986
  accept Test of Lore##1152 |goto Thousand Needles 53.95,41.49
step
  only level>=28
  talk Fizzle Brassbolts##4454
  accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  only level>=28
  talk Wizzle Brassbolts##4453
  accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  only level>=28
  talk Kravel Koalbeard##4452
  accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
  only level>=29
  talk Pozzik##4630
  accept Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  only haveq(1176)
  note Get 10 Hollow Vulture Bones for Pozzik in the Shimmering Flats.
  collect 10 Hollow Vulture Bone##5848 |q 1176 |goto Thousand Needles 87.4,64.92 |tip {dropsfrom}Salt Flats Scavenger, Salt Flats Vulture
step
  only haveq(1104)
  note Bring 6 Salty Scorpid Venoms to Fizzle Brassbolts in the Shimmering Flats.
  collect 6 Salty Scorpid Venom##5794 |q 1104 |goto Thousand Needles 75.17,59.51 |tip {dropsfrom}Scorpid Reaver, Scorpid Terror, Vile Sting
step
  only haveq(1105)
  note Bring 9 Hardened Tortoise Shells to Wizzle Brassbolts in the Shimmering Flats.
  collect 9 Hardened Tortoise Shell##5795 |q 1105 |goto Thousand Needles 74.69,56.36 |tip {dropsfrom}Sparkleshell Tortoise, Sparkleshell Borer, Sparkleshell Snapper
step
  only haveq(1110)
  note Bring 30 Rocket Car Parts to Kravel Koalbeard in the Shimmering Flats.
  collect 30 Rocket Car Parts##5798 |q 1110 |goto Thousand Needles 72.52,72.34 |tip {dropsfrom}Rocket Car Rubble
step
  only haveq(1104)
  talk Fizzle Brassbolts##4454
  turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  only haveq(1105)
  talk Wizzle Brassbolts##4453
  turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  only haveq(1110)
  talk Kravel Koalbeard##4452
  turnin Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
  only haveq(1176)
  talk Pozzik##4630
  turnin Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  only level>=28
  talk Trackmaster Zherin##4629
  accept A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  only haveq(1175)
  note Kill 10 Saltstone Basilisks, 10 Saltstone Crystalhides and 6 Saltstone Gazers for Trackmaster Zherin on the Shimmering Flats.
  kill Saltstone Crystalhide##4151 |q 1175/2 |goto Thousand Needles 73.81,76.19
  kill Saltstone Gazer##4150 |q 1175/3 |goto Thousand Needles 77.95,89.18
  kill Saltstone Basilisk##4147 |q 1175 |goto Thousand Needles 73.64,59.44
step
  only haveq(1175)
  talk Trackmaster Zherin##4629
  turnin A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  only Shaman level>=30
  talk Rau Cliffrunner##4722
  accept Eyes on the Sky##79364 |goto Thousand Needles 46.14,51.71
step
  only Shaman haveq(79364)
  note Speak with Prate Cloudseer in Thousand Needles.
  talk Prate Cloudseer##5905
  turnin Eyes on the Sky##79364 |goto Thousand Needles 53.54,42.65
step
  only level>=32
  talk Cliffwatcher Longhorn##10537
  accept Family Tree##5361 |goto Thousand Needles 45.67,50.74
step
  only level>=30
  talk Kravel Koalbeard##4452
  accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
step
  only haveq(1067)
  note Bring Lydon's Toxin to Apothecary Zamah in Thunder Bluff.
  talk Apothecary Zamah##3419
  turnin Return to Thunder Bluff##1067 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  only completed(1067)
  talk Apothecary Zamah##3419
  accept The Flying Machine Airport##1086 |goto Thunder Bluff 22.81,20.89
step
  only completed(1195)
  talk Zangen Stonehoof##4721
  accept The Sacred Flame##1196 |goto Thunder Bluff 54.97,51.41
step
  talk Magatha Grimtotem##4046
  turnin Sacred Fire##5062 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  only level>=28
  talk Magatha Grimtotem##4046
  accept Arikara##5088 |goto Thunder Bluff 69.85,30.91
step
  only haveq(3369)
  note Bring the Nightmare Shard to Hamuul Runetotem on Elder Rise.
  talk Arch Druid Hamuul Runetotem##5769
  turnin In Nightmares##3369 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  only haveq(1130)
  note Speak with Melor Stonehoof in Thunder Bluff.
  talk Melor Stonehoof##3441
  turnin Melor Sends Word##1130 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  talk Melor Stonehoof##3441
  accept Steelsnap##1131 |goto Thunder Bluff 61.54,80.92
step
  only Warrior level>=30
  talk Torm Ragetotem##3041
  accept The Islander##1718 |goto Thunder Bluff 57.24,87.37
step
  only completed(1195)
  note Deliver the Filled Etched Phial to Rau Cliffrunner at the Freewind Post.
  talk Rau Cliffrunner##4722
  turnin The Sacred Flame##1196 |goto Thousand Needles 46.14,51.71
step
  only completed(1195)
  talk Rau Cliffrunner##4722
  accept The Sacred Flame##1197 |goto Thousand Needles 46.14,51.71
step
  only haveq(5088)
  note Slay Arikara. Bring her remains and the Incendia powder to Motega Firemane in Whitereach Post as proof of your deed.
  click Sacred Fire of Life##175944 |q 5088 |goto Thousand Needles 38.06,35.37
step
  only completed(1195)
  note Retrieve the Cloven Hoof for Rau Cliffrunner at the Freewind Post.
  collect Cloven Hoof##5869 |q 1197 |goto Thousand Needles 42.01,31.47 |tip {dropsfrom}Ancient Brazier
step
  only haveq(5088)
  talk Motega Firemane##10428
  turnin Arikara##5088 |goto Thousand Needles 21.54,32.35
step
  note Bring Steelsnap's Rib to Melor Stonehoof in Thunder Bluff.
  collect Steelsnap's Rib##5837 |q 1131 |goto Thousand Needles 17.79,19.79 |tip {dropsfrom}Steelsnap
step
  only completed(1195)
  talk Rau Cliffrunner##4722
  turnin The Sacred Flame##1197 |goto Thousand Needles 46.14,51.71
step
  only Warrior haveq(1718)
  note Speak with Klannoc Macleod.
  talk Klannoc Macleod##6236
  turnin The Islander##1718 |goto The Barrens 68.62,49.16 |tip {turninat}The Barrens
step
  only Warrior completed(1718) level>=30
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior haveq(1719)
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  kill Big Will##6238 |q 1719 |goto The Barrens 68.61,48.72
step
  only Warrior haveq(1719)
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16 |tip {turninat}The Barrens
step
  only haveq(1111)
  note Bring Kravel's Parts Order to Wharfmaster Dizzywig in Ratchet.
  talk Wharfmaster Dizzywig##3453
  turnin Wharfmaster Dizzywig##1111 |goto The Barrens 63.35,38.45 |tip {turninat}The Barrens
step
  only completed(1111) level>=30
  talk Wharfmaster Dizzywig##3453
  accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
step
  only Warlock completed(4782) level>=31
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only Warlock completed(4784) level>=31
  talk Menara Voidrender##6266
  accept The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  only Warlock completed(4784) haveq(4786)
  note Wait for Menara Voidrender to complete your robe and then speak to her again.
  talk Menara Voidrender##6266 |q 4786 |goto The Barrens 62.51,35.45
step
  only Warlock completed(4784) haveq(4786)
  talk Menara Voidrender##6266
  turnin The Completed Robe##4786 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only level>=29
  talk Korran##3428
  accept The Swarm Grows##1145 |goto The Barrens 51.07,29.63
step
  only level>=30
  talk Regthar Deathgate##3389
  accept The Kolkar of Desolace##1362 |goto The Barrens 45.34,28.41
step
  only haveq(1145)
  note Deliver Korran's Sealed Note to Belgrom Rockmaul in Orgrimmar.
  talk Belgrom Rockmaul##4485
  turnin The Swarm Grows##1145 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  only completed(1145) level>=29
  talk Belgrom Rockmaul##4485
  accept The Swarm Grows##1146 |goto Orgrimmar 75.23,34.24
step
  only level>=30
  talk Craven Drok##5639
  accept Alliance Relations##1431 |goto Orgrimmar 51.3,45.9
step
  only Warlock not completed(4736) not completed(4738) not completed(4739) not haveq(4736) not haveq(4738) not haveq(4739) level>=31
  talk Zevrost##3326
  accept In Search of Menara Voidrender##4737 |goto Orgrimmar 48.47,45.43
step
  only Warlock level>=30
  talk Gan'rul Bloodeye##5875
  accept Seeking Strahad##2996 |goto Orgrimmar 48.25,45.28
step
  only Shaman not completed(1532) not haveq(1532) level>=30
  talk Searn Firewarder##5892
  accept Call of Air##1531 |goto Orgrimmar 37.96,37.73
step
  only haveq(1431)
  note Speak to Keldran in Orgrimmar.
  talk Keldran##5640
  turnin Alliance Relations##1431 |goto Orgrimmar 22.56,52.63 |tip {turninat}Orgrimmar
step
  only Shaman not completed(1532) not haveq(1532) haveq(1531)
  note Find Prate Cloudseer in Thousand Needles.
  talk Prate Cloudseer##5905
  turnin Call of Air##1531 |goto Thousand Needles 53.54,42.65
step
  only haveq(1146)
  note Deliver Belgrom's Sealed Note to Moktar Krin in Thousand Needles.
  talk Moktar Krin##4483
  turnin The Swarm Grows##1146 |goto Thousand Needles 67.58,63.94
step
  only completed(1146) level>=29
  talk Moktar Krin##4483
  accept The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
  only haveq(1112)
  note Bring Kravel's Parts to Kravel Koalbeard in the Shimmering Flats.
  talk Kravel Koalbeard##4452
  turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.27
step
  only completed(1112) level>=30
  talk Kravel Koalbeard##4452
  accept Delivery to the Gnomes##1114 |goto Thousand Needles 77.79,77.27
step
  only haveq(1114)
  note Bring the Delicate Car Parts to Fizzle Brassbolts in Shimmering Flats.
  talk Fizzle Brassbolts##4454
  turnin Delivery to the Gnomes##1114 |goto Thousand Needles 78.06,77.13
step
  only haveq(1147)
  note Kill 5 Silithid Searchers, 5 Silithid Hive Drones, and 5 Silithid Invaders and return to Moktar Krin in Thousand Needles.
  kill Silithid Searcher##4130 |q 1147/1 |goto Thousand Needles 69.91,82.48
  kill Silithid Hive Drone##4133 |q 1147/2 |goto Thousand Needles 68.88,85.88
  kill Silithid Invader##4131 |q 1147 |goto Thousand Needles 65.31,86.73
step
  only completed(1146) level>=28
  kill Silithid Searcher##4130 |goto Thousand Needles 69.91,82.48 |tip Loot the quest item here — it starts the quest.
  accept Parts of the Swarm##1148 |goto Thousand Needles 69.91,82.48
step
  only haveq(1148)
  note Bring 1 Silithid Heart, 5 Silithid Talons, and 3 Intact Silithid Carapaces, to Korran at the Crossroads.
  collect 1 Silithid Heart##5855 |q 1148 |goto Thousand Needles 69.91,82.48 |tip {dropsfrom}Silithid Searcher, Silithid Invader, Silithid Hive Drone
step
  only haveq(1147)
  talk Moktar Krin##4483
  turnin The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
  only Warlock haveq(2996)
  note Speak to Strahad Farsan in Ratchet.
  talk Strahad Farsan##6251
  turnin Seeking Strahad##2996 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  only Warlock not completed(4736) not completed(4738) not completed(4739) not haveq(4736) not haveq(4738) not haveq(4739) haveq(4737)
  note Speak to Menara Voidrender in the Barrens.
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4737 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only haveq(1148)
  talk Korran##3428
  turnin Parts of the Swarm##1148 |goto The Barrens 51.07,29.63 |tip {turninat}The Barrens
step
  only completed(1148)
  talk Korran##3428
  accept Parts of the Swarm##1184 |goto The Barrens 51.07,29.63
step
  only Warlock completed(4782) haveq(4783)
  note Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.
  collect 10 Vial of Hatefury Blood##6989 |q 4783/1 |goto Desolace 73.55,19.11 |tip {dropsfrom}Hatefury Rogue, Hatefury Trickster, Hatefury Felsworn
  collect 1 Lesser Infernal Stone##6990 |q 4783 |goto Desolace 51.45,75.61 |tip {dropsfrom}Lesser Infernal, Demon Portal Guardian
step
  only Warlock completed(4782) haveq(4783)
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only haveq(1152)
  note Find Braug Dimspirit near the entrance to Talondeep Path in Stonetalon Mountains.
  talk Braug Dimspirit##4489
  turnin Test of Lore##1152 |goto Stonetalon Mountains 78.8,45.69 |tip {turninat}Stonetalon Mountains
step
  only completed(1152)
  talk Braug Dimspirit##4489
  accept Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  only completed(1067)
  note Bring the Toxic Fogger to the Venture Co. sky port, then return to Apothecary Zamah.
  goto Stonetalon Mountains 66.44,45.46 |tip Place the Toxic Fogger
step
  only completed(1067)
  talk Apothecary Zamah##3419
  turnin The Flying Machine Airport##1086 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  talk Melor Stonehoof##3441
  turnin Steelsnap##1131 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  only haveq(1184)
  note Return to Belgrom Rockmaul in Orgrimmar.
  talk Belgrom Rockmaul##4485
  turnin Parts of the Swarm##1184 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  only haveq(1154)
  note Find the Legacy of the Aspects and return it to Braug Dimspirit near the entrance to Talondeep Path in Stonetalon Mountains.
  collect Legacy of the Aspects##5860 |q 1154 |goto Ashenvale 75.57,74.37 |tip {dropsfrom}The Legacy of the Aspects
step
  only haveq(1154)
  talk Braug Dimspirit##4489
  turnin Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69 |tip {turninat}Stonetalon Mountains
step
  only completed(1154)
  talk Braug Dimspirit##4489
  accept Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  only haveq(6627)
  note Answer Braug Dimspirit's question successfully and then speak to him again. He will remain in Stonetalon Mountains when you are ready.
  talk Braug Dimspirit##4489
  turnin Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69 |tip {turninat}Stonetalon Mountains
step
  only completed(6627)
  talk Braug Dimspirit##4489
  accept Test of Lore##1159 |goto Stonetalon Mountains 78.8,45.69
step
  note {travel}Mulgore
  goto Mulgore 32.54,20.67
]])
