-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Thousand Needles (28-41)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Hillsbrad Foothills (24-41)",
}, [[
step
  note {fp}Nyse
  goto Thousand Needles 45.14,49.11 |tip {vendor}
step
  talk Brave Moonhorn##10079
  accept Message to Freewind Post##4542 |goto Thousand Needles 32.24,22.17
step
  talk Kanati Greycloud##10638
  accept Protect Kanati Greycloud##4966 |goto Thousand Needles 21.25,32.06
step
  talk Wizlo Bearingshiner##10941
  accept Hypercapacitor Gizmo##5151 |goto Thousand Needles 21.43,32.55
step
  talk Pao'ka Swiftmountain##10427
  accept Homeward Bound##4770 |goto Thousand Needles 17.89,40.57
step
  talk Cliffwatcher Longhorn##10537
  turnin Message to Freewind Post##4542 |goto Thousand Needles 45.67,50.74
step
  talk Rau Cliffrunner##4722
  accept The Sacred Flame##1197 |goto Thousand Needles 46.14,51.71
step
  talk Elu##10377
  accept Wind Rider##4767 |goto Thousand Needles 44.93,48.92
step
  talk Hagar Lightninghoof##10539
  accept Alien Egg##4821 |goto Thousand Needles 44.64,50.29
step
  talk Cliffwatcher Longhorn##10537
  accept Pacify the Centaur##4841 |goto Thousand Needles 45.67,50.74
step
  talk Cliffwatcher Longhorn##10537
  accept Family Tree##5361 |goto Thousand Needles 45.67,50.74
step
  talk Magistrix Elosai##17093
  accept A Different Approach##9431 |goto Thousand Needles 46.21,50.4
step
  talk Dorn Plainstalker##2986
  accept Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  note Kill 12 Galak Scouts, 10 Galak Wranglers, and 6 Galak Windchasers, and then return to Cliffwatcher Longhorn in Freewind Post.
  kill Galak Scout##4094 |q 4841 |goto Thousand Needles 43.29,37.97
step
  talk Moktar Krin##4483
  accept The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
  talk Fizzle Brassbolts##4454
  accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  talk Wizzle Brassbolts##4453
  accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Fizzle Brassbolts##4454
  accept Martek the Exiled##1106 |goto Thousand Needles 78.06,77.13
step
  talk Kravel Koalbeard##4452
  accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
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
  talk Trackmaster Zherin##4629
  accept A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  talk Pozzik##4630
  accept Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  talk Pozzik##4630
  accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
step
  talk Pozzik##4630
  accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
step
  only Warlock
  talk Magus Tirth##6548
  accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  talk Wizzle Brassbolts##4453
  accept Gahz'rilla##2770 |goto Thousand Needles 78.14,77.12
step
  talk Kravel Koalbeard##4452
  accept Hemet Nesingwary Jr.##5762 |goto Thousand Needles 77.79,77.27
step
  note Kill 5 Silithid Searchers, 5 Silithid Hive Drones, and 5 Silithid Invaders and return to Moktar Krin in Thousand Needles.
  kill Silithid Searcher##4130 |q 1147 |goto Thousand Needles 69.91,83.32
step
  talk Hemet Nesingwary Jr.##715
  turnin Hemet Nesingwary Jr.##5762 |goto Stranglethorn Vale 35.66,10.81 |tip {turninat}Stranglethorn Vale
step
  talk Wizlo Bearingshiner##10941
  turnin Hypercapacitor Gizmo##5151 |goto Thousand Needles 21.43,32.55
step
  talk Motega Firemane##10428
  turnin Homeward Bound##4770 |goto Thousand Needles 21.54,32.35
step
  talk Wizlo Bearingshiner##10941
  turnin A Different Approach##9431 |goto Thousand Needles 21.43,32.55
step
  talk Kanati Greycloud##10638
  turnin Protect Kanati Greycloud##4966 |goto Thousand Needles 21.25,32.06
step
  talk Wizlo Bearingshiner##10941
  accept A Dip in the Moonwell##9433 |goto Thousand Needles 21.43,32.55
step
  talk Elu##10377
  turnin Wind Rider##4767 |goto Thousand Needles 44.93,48.92
step
  talk Rau Cliffrunner##4722
  turnin The Sacred Flame##1197 |goto Thousand Needles 46.14,51.71
step
  talk Martek the Exiled##4618
  turnin Martek the Exiled##1106 |goto Badlands 42.22,52.69 |tip {turninat}Badlands
step
  talk Hagar Lightninghoof##10539
  turnin Alien Egg##4821 |goto Thousand Needles 44.64,50.29
step
  talk Crank Fizzlebub##2498
  turnin Back to Booty Bay##1118 |goto Stranglethorn Vale 27.12,77.21 |tip {turninat}Stranglethorn Vale
step
  talk Cliffwatcher Longhorn##10537
  turnin Pacify the Centaur##4841 |goto Thousand Needles 45.67,50.74
step
  talk Nataka Longhorn##11259
  turnin Family Tree##5361 |goto Desolace 55.41,55.81 |tip {turninat}Desolace
step
  talk Hagar Lightninghoof##10539
  accept Serpent Wild##4865 |goto Thousand Needles 44.64,50.29
step
  talk Cliffwatcher Longhorn##10537
  accept Grimtotem Spying##5064 |goto Thousand Needles 45.67,50.74
step
  talk Wharfmaster Dizzywig##3453
  turnin Wharfmaster Dizzywig##1111 |goto The Barrens 63.35,38.45 |tip {turninat}The Barrens
step
  talk Dorn Plainstalker##2986
  turnin Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  talk Dorn Plainstalker##2986
  accept Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  talk Moktar Krin##4483
  turnin The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
  note Kill 10 Saltstone Basilisks, 10 Saltstone Crystalhides and 6 Saltstone Gazers for Trackmaster Zherin on the Shimmering Flats.
  kill Saltstone Basilisk##4147 |q 1175 |goto Thousand Needles 75.49,59.58
step
  talk Trackmaster Zherin##4629
  turnin A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  talk Pozzik##4630
  turnin Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  only Warlock
  talk Magus Tirth##6548
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  talk Razzeric##4706
  turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
step
  turnin Keeping Pace##1190 |goto Thousand Needles 77.21,77.39
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
  talk Fizzle Brassbolts##4454
  turnin Delivery to the Gnomes##1114 |goto Thousand Needles 78.06,77.13
step
  talk Gnome Pit Boss##4495
  turnin Get the Gnomes Drunk##1120 |goto Thousand Needles 77.56,76.94
step
  talk Goblin Pit Boss##4496
  turnin Get the Goblins Drunk##1121 |goto Thousand Needles 79.9,76.74
step
  talk Wizzle Brassbolts##4453
  accept Encrusted Tail Fins##1107 |goto Thousand Needles 78.14,77.12
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
  only Warlock
  talk Magus Tirth##6548
  accept Rituals of Power##1951 |goto Thousand Needles 78.29,75.7
step
  talk Motega Firemane##10428
  turnin Serpent Wild##4865 |goto Thousand Needles 21.54,32.35
step
  talk Wizlo Bearingshiner##10941
  turnin A Dip in the Moonwell##9433 |goto Thousand Needles 21.43,32.55
step
  talk Motega Firemane##10428
  accept Sacred Fire##5062 |goto Thousand Needles 21.54,32.35
step
  talk Wizlo Bearingshiner##10941
  accept Testing the Tonic##9434 |goto Thousand Needles 21.43,32.55
step
  only Warlock
  talk Tabetha##6546
  turnin Rituals of Power##1951 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Cliffwatcher Longhorn##10537
  turnin Grimtotem Spying##5064 |goto Thousand Needles 45.67,50.74
step
  talk Magistrix Elosai##17093
  turnin Testing the Tonic##9434 |goto Thousand Needles 46.21,50.4
step
  talk Krazek##773
  turnin The Rumormonger##1115 |goto Stranglethorn Vale 26.94,77.21 |tip {turninat}Stranglethorn Vale
step
  talk Crank Fizzlebub##2498
  turnin Report Back to Fizzlebub##1122 |goto Stranglethorn Vale 27.12,77.21 |tip {turninat}Stranglethorn Vale
step
  talk Gazlowe##3391
  turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23 |tip {turninat}The Barrens
step
  talk Magatha Grimtotem##4046
  turnin Sacred Fire##5062 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  talk Dorn Plainstalker##2986
  turnin Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  talk Dorn Plainstalker##2986
  accept Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  talk Razzeric##4706
  turnin Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  talk Wizzle Brassbolts##4453
  turnin Encrusted Tail Fins##1107 |goto Thousand Needles 78.14,77.12
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
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 20.79,47.4
]])
