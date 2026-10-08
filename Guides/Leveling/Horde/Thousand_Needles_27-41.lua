-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Thousand Needles (27-41)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Alterac Mountains (34-36)",
}, [[
step
  note {fp}Awenasa
  goto Thousand Needles 45.77,51.07 |tip {vendor}
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
  talk Wizlo Bearingshiner##10941
  accept Hypercapacitor Gizmo##5151 |goto Thousand Needles 21.43,32.55
step
  note Slay the beast and bring back the Hypercapacitor Gizmo and Panther Cage Key to Wizlo Bearingshiner.
  kill Enraged Panther##10992 |goto Thousand Needles 22.76,24.62 |elite
  collect Hypercapacitor Gizmo##12946 |q 5151 |goto Thousand Needles 22.76,24.62
step
  talk Cliffwatcher Longhorn##10537
  turnin Message to Freewind Post##4542 |goto Thousand Needles 45.67,50.74
step
  talk Master Apothecary Faranell##2055
  accept Going, Going, Guano!##1109 |goto Undercity 48.82,69.28
step
  note Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity.
  collect 1 Kraul Guano##5801 |q 1109 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Kraul Bat, Greater Kraul Bat, Blind Hunter
step
  talk Rau Cliffrunner##4722
  accept The Sacred Flame##1197 |goto Thousand Needles 46.14,51.71
step
  note Retrieve the Cloven Hoof for Rau Cliffrunner at the Freewind Post.
  collect Cloven Hoof##5869 |q 1197 |goto Thousand Needles 42.01,31.47 |tip {dropsfrom}Ancient Brazier
step
  only Warlock
  talk Zevrost##3326
  accept In Search of Menara Voidrender##4737 |goto Orgrimmar 48.47,45.43
step
  talk Elu##10377
  accept Wind Rider##4767 |goto Thousand Needles 44.93,48.92
step
  note Bring 10 Highperch Wyvern Eggs to Elu in Freewind Post.
  collect 10 Highperch Wyvern Egg##12356 |q 4767 |goto Thousand Needles 12.19,37.11
step
  talk Hagar Lightninghoof##10539
  accept Alien Egg##4821 |goto Thousand Needles 44.64,50.29
step
  note Return the Alien Egg to Hagar Lightninghoof in Freewind Post.
  collect Alien Egg##12467 |q 4821 |goto Thousand Needles 52.34,55.25
step
  talk Cliffwatcher Longhorn##10537
  accept Pacify the Centaur##4841 |goto Thousand Needles 45.67,50.74
step
  click Wanted Poster - Arnak Grimtotem##176115
  accept Wanted - Arnak Grimtotem##5147 |goto Thousand Needles 46,50.86
step
  note Slay Arnak Grimtotem and bring proof of your deed to Cliffwatcher Longhorn in Freewind Post.
  collect Arnak's Hoof##12884 |q 5147 |goto Thousand Needles 38.11,26.87 |tip {dropsfrom}Arnak Grimtotem
step
  talk Cliffwatcher Longhorn##10537
  accept Family Tree##5361 |goto Thousand Needles 45.67,50.74
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4737 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Belgrom Rockmaul##4485
  accept The Swarm Grows##1146 |goto Orgrimmar 75.23,34.24
step
  talk Dorn Plainstalker##2986
  accept Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  only Warlock
  talk Kaal Soulreaper##4563
  accept In Search of Menara Voidrender##4739 |goto Undercity 86.21,15.93
step
  note Kill 12 Galak Scouts, 10 Galak Wranglers, and 6 Galak Windchasers, and then return to Cliffwatcher Longhorn in Freewind Post.
  kill Galak Scout##4094 |q 4841 |goto Thousand Needles 43.29,37.97
step
  talk Moktar Krin##4483
  turnin The Swarm Grows##1146 |goto Thousand Needles 67.58,63.94
step
  talk Moktar Krin##4483
  accept The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
  talk Fizzle Brassbolts##4454
  accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  note Bring 6 Salty Scorpid Venoms to Fizzle Brassbolts in the Shimmering Flats.
  collect 6 Salty Scorpid Venom##5794 |q 1104 |goto Thousand Needles 82.51,76.75 |tip {dropsfrom}Scorpid Terror, Scorpid Reaver, Vile Sting
step
  talk Wizzle Brassbolts##4453
  accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  note Bring 9 Hardened Tortoise Shells to Wizzle Brassbolts in the Shimmering Flats.
  collect 9 Hardened Tortoise Shell##5795 |q 1105 |goto Thousand Needles 75.38,56.27 |tip {dropsfrom}Sparkleshell Tortoise, Sparkleshell Snapper, Sparkleshell Borer
step
  talk Kravel Koalbeard##4452
  accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
  note Bring 30 Rocket Car Parts to Kravel Koalbeard in the Shimmering Flats.
  collect 30 Rocket Car Parts##5798 |q 1110 |goto Thousand Needles 75.98,71.2 |tip {dropsfrom}Rocket Car Rubble
step
  talk Kravel Koalbeard##4452
  accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
step
  talk Kravel Koalbeard##4452
  accept Delivery to the Gnomes##1114 |goto Thousand Needles 77.79,77.27
step
  talk Kravel Koalbeard##4452
  accept Back to Booty Bay##1118 |goto Thousand Needles 77.79,77.27
step
  talk Kravel Koalbeard##4452
  accept Get the Gnomes Drunk##1120 |goto Thousand Needles 77.79,77.27
step
  talk Kravel Koalbeard##4452
  accept Get the Goblins Drunk##1121 |goto Thousand Needles 77.79,77.27
step
  kill Silithid Searcher##4130 |goto Thousand Needles 69.91,83.32 |tip Loot the quest item here — it starts the quest.
  accept Parts of the Swarm##1148 |goto Thousand Needles 69.91,83.32
step
  note Bring 1 Silithid Heart, 5 Silithid Talons, and 3 Intact Silithid Carapaces, to Korran at the Crossroads.
  collect 1 Silithid Heart##5855 |q 1148 |goto Thousand Needles 69.91,83.32 |tip {dropsfrom}Silithid Searcher, Silithid Invader, Silithid Ravager
step
  talk Trackmaster Zherin##4629
  accept A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  talk Pozzik##4630
  accept Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  note Get 10 Hollow Vulture Bones for Pozzik in the Shimmering Flats.
  collect Hollow Vulture Bone##5848 |q 1176 |goto Thousand Needles 87.4,65.32 |tip {dropsfrom}Salt Flats Scavenger, Salt Flats Vulture
step
  talk Pozzik##4630
  accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
step
  talk Pozzik##4630
  accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
step
  only Mage
  talk Magus Tirth##6548
  accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  talk Wizzle Brassbolts##4453
  accept Gahz'rilla##2770 |goto Thousand Needles 78.14,77.12
step
  note Bring Gahz'rilla's Electrified Scale to Wizzle Brassbolts in the Shimmering Flats.
  collect Gahz'rilla's Electrified Scale##8707 |q 2770 |goto Zul'Farrak - Dungeon -1,-1 |tip {dropsfrom}Gahz'rilla
step
  talk Kravel Koalbeard##4452
  accept Hemet Nesingwary##5762 |goto Thousand Needles 77.79,77.27
step
  only Mage
  note Find the phrase to Tirth's strongbox, then return to Tirth.
  kill "Plucky" Johnson##6626 |q 1950 |goto Thousand Needles 79.61,75.63
step
  note Kill 5 Silithid Searchers, 5 Silithid Hive Drones, and 5 Silithid Invaders and return to Moktar Krin in Thousand Needles.
  kill Silithid Searcher##4130 |q 1147 |goto Thousand Needles 69.91,83.32
step
  talk Hemet Nesingwary##715
  turnin Hemet Nesingwary##5762 |goto Stranglethorn Vale 35.66,10.81 |tip {turninat}Stranglethorn Vale
step
  talk Wizlo Bearingshiner##10941
  turnin Hypercapacitor Gizmo##5151 |goto Thousand Needles 21.43,32.55
step
  talk Master Apothecary Faranell##2055
  turnin Going, Going, Guano!##1109 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Hagar Lightninghoof##10539
  turnin Alien Egg##4821 |goto Thousand Needles 44.64,50.29
step
  talk Cliffwatcher Longhorn##10537
  turnin Wanted - Arnak Grimtotem##5147 |goto Thousand Needles 45.67,50.74
step
  talk Crank Fizzlebub##2498
  turnin Back to Booty Bay##1118 |goto Stranglethorn Vale 27.12,77.21 |tip {turninat}Stranglethorn Vale
step
  talk Elu##10377
  turnin Wind Rider##4767 |goto Thousand Needles 44.93,48.92
step
  talk Cliffwatcher Longhorn##10537
  turnin Pacify the Centaur##4841 |goto Thousand Needles 45.67,50.74
step
  talk Rau Cliffrunner##4722
  turnin The Sacred Flame##1197 |goto Thousand Needles 46.14,51.71
step
  talk Nataka Longhorn##11259
  turnin Family Tree##5361 |goto Desolace 55.41,55.81 |tip {turninat}Desolace
step
  talk Master Apothecary Faranell##2055
  accept Hearts of Zeal##1113 |goto Undercity 48.82,69.28
step
  note Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal.
  collect Heart of Zeal##5805 |q 1113 |goto Scarlet Monastery - Dungeon -1,-1 |elite |tip {dropsfrom}Houndmaster Loksey, Herod, Scarlet Commander Mograine
step
  talk Hagar Lightninghoof##10539
  accept Serpent Wild##4865 |goto Thousand Needles 44.64,50.29
step
  talk Cliffwatcher Longhorn##10537
  accept Grimtotem Spying##5064 |goto Thousand Needles 45.67,50.74
step
  note Locate and retrieve the three Secret Notes in Darkcloud Pinnacle.
  collect Secret Note #1##12765 |q 5064 |goto Thousand Needles 31.79,32.58 |tip {dropsfrom}Document Chest
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4739 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Wharfmaster Dizzywig##3453
  turnin Wharfmaster Dizzywig##1111 |goto The Barrens 63.35,38.45 |tip {turninat}The Barrens
step
  talk Korran##3428
  turnin Parts of the Swarm##1148 |goto The Barrens 51.07,29.63 |tip {turninat}The Barrens
step
  talk Dorn Plainstalker##2986
  turnin Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  talk Dorn Plainstalker##2986
  accept Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  note Bring Grenka's Claw to Dorn Plainstalker in Thousand Needles.
  collect Grenka's Claw##5843 |q 1150 |goto Thousand Needles 26.6,55.6 |tip {dropsfrom}Grenka Bloodscreech
step
  talk Moktar Krin##4483
  turnin The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
  note Kill 10 Saltstone Basilisks, 10 Saltstone Crystalhides and 6 Saltstone Gazers for Trackmaster Zherin on the Shimmering Flats.
  kill Saltstone Basilisk##4147 |q 1175 |goto Thousand Needles 75.49,59.58
step
  talk Fizzle Brassbolts##4454
  turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  talk Wizzle Brassbolts##4453
  turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Wizzle Brassbolts##4453
  turnin Gahz'rilla##2770 |goto Thousand Needles 78.14,77.12
step
  talk Kravel Koalbeard##4452
  turnin Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
  talk Trackmaster Zherin##4629
  turnin A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  talk Fizzle Brassbolts##4454
  turnin Delivery to the Gnomes##1114 |goto Thousand Needles 78.06,77.13
step
  talk Pozzik##4630
  turnin Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  talk Gnome Pit Boss##4495
  turnin Get the Gnomes Drunk##1120 |goto Thousand Needles 77.56,76.94
step
  talk Goblin Pit Boss##4496
  turnin Get the Goblins Drunk##1121 |goto Thousand Needles 79.9,76.74
step
  talk Razzeric##4706
  turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
step
  only Mage
  talk Magus Tirth##6548
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  turnin Keeping Pace##1190 |goto Thousand Needles 77.21,77.39
step
  talk Fizzle Brassbolts##4454
  accept Martek the Exiled##1106 |goto Thousand Needles 78.06,77.13
step
  talk Wizzle Brassbolts##4453
  accept Encrusted Tail Fins##1107 |goto Thousand Needles 78.14,77.12
step
  note Bring 10 Encrusted Tail Fins to Wizzle Brassbolts in the Shimmering Flats.
  kill Saltscale Warrior##871 |goto Stranglethorn Vale 25.2,25.6 |elite
  collect 10 Encrusted Tail Fin##5796 |q 1107 |goto Stranglethorn Vale 25.2,25.6
step
  talk Kravel Koalbeard##4452
  accept The Rumormonger##1115 |goto Thousand Needles 77.79,77.27
step
  talk Kravel Koalbeard##4452
  accept Report Back to Fizzlebub##1122 |goto Thousand Needles 77.79,77.27
step
  talk Pozzik##4630
  accept Goblin Sponsorship##1178 |goto Thousand Needles 80.18,75.88
step
  talk Razzeric##4706
  accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  note Retrieve the Seaforium Booster for Razzeric in the Shimmering Flats.
  collect Seaforium Booster##5862 |q 1187 |goto Dustwallow Marsh 54.07,56.49 |tip {dropsfrom}Gizmorium Shipping Crate
step
  click Rizzle's Unguarded Plans##20805
  accept Rizzle's Schematics##1194 |goto Thousand Needles 77.21,77.39
step
  only Mage
  talk Magus Tirth##6548
  accept Rituals of Power##1951 |goto Thousand Needles 78.29,75.7
step
  only Mage
  note Bring the book Rituals of Power to Tabetha in Dustwallow Marsh.
  collect Rituals of Power##7274 |q 1951 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Motega Firemane##10428
  turnin Serpent Wild##4865 |goto Thousand Needles 21.54,32.35
step
  talk Motega Firemane##10428
  accept Sacred Fire##5062 |goto Thousand Needles 21.54,32.35
step
  note Gather 10 bushels of Incendia Agave, and then consult Magatha Grimtotem on Elder Rise in Thunderbluff.
  collect 10 Incendia Agave##12732 |q 5062 |goto Thousand Needles 36.04,35.43
step
  talk Cliffwatcher Longhorn##10537
  turnin Grimtotem Spying##5064 |goto Thousand Needles 45.67,50.74
step
  talk Martek the Exiled##4618
  turnin Martek the Exiled##1106 |goto Badlands 42.22,52.69 |tip {turninat}Badlands
step
  talk Master Apothecary Faranell##2055
  turnin Hearts of Zeal##1113 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Krazek##773
  turnin The Rumormonger##1115 |goto Stranglethorn Vale 26.95,77.21 |tip {turninat}Stranglethorn Vale
step
  only Mage
  talk Tabetha##6546
  turnin Rituals of Power##1951 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Crank Fizzlebub##2498
  turnin Report Back to Fizzlebub##1122 |goto Stranglethorn Vale 27.12,77.21 |tip {turninat}Stranglethorn Vale
step
  talk Magatha Grimtotem##4046
  turnin Sacred Fire##5062 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  talk Gazlowe##3391
  turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23 |tip {turninat}The Barrens
step
  talk Dorn Plainstalker##2986
  turnin Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  talk Dorn Plainstalker##2986
  accept Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  note Bring Fragments of Rok'Alim to Dorn Plainstalker in Thousand Needles.
  kill Rok'Alim the Pounder##4499 |goto Thousand Needles 17.1,38.1 |elite
  collect Fragments of Rok'Alim##5844 |q 1151 |goto Thousand Needles 17.1,38.1
step
  talk Wizzle Brassbolts##4453
  turnin Encrusted Tail Fins##1107 |goto Thousand Needles 78.14,77.12
step
  talk Razzeric##4706
  turnin Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  talk Pozzik##4630
  turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
  talk Razzeric##4706
  accept Safety First##1188 |goto Thousand Needles 80.33,76.09
step
  talk Shreev##4708
  turnin Safety First##1188 |goto Tanaris 50.96,27.24 |tip {turninat}Tanaris
step
  talk Dorn Plainstalker##2986
  turnin Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  talk Dorn Plainstalker##2986
  accept Test of Lore##1152 |goto Thousand Needles 53.95,41.49
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##1152 |goto Stonetalon Mountains 78.8,45.69 |tip {turninat}Stonetalon Mountains
step
  note {travel}Alterac Mountains
  goto Alterac Mountains 80.5,66.92
]])
