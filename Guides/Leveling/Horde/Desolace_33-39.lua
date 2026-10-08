-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Desolace (33-39)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Dustwallow Marsh (35-43)",
	rev = "7ebff011",
}, [[
step
  only completed(1431)
  talk Keldran##5640
  accept Alliance Relations##1432 |goto Orgrimmar 22.56,52.63
step
  only completed(2949)
  talk Nogg##3412
  accept Nogg's Ring Redo##2950 |goto Orgrimmar 75.99,25.41
step
  only completed(2949)
  note Bring the Brilliant Gold Ring, a Silver Bar, a Moss Agate, and 30 silver coins to Nogg in Orgrimmar.
  collect Silver Bar##2842 |q 2950 |goto Orgrimmar 75.99,25.41 |tip {dropsfrom}Battered Chest, Tattered Chest
step
  only completed(1431)
  talk Takata Steelblade##5641
  turnin Alliance Relations##1432 |goto Desolace 52.57,54.39
step
  talk Gurda Wildmane##5412
  accept Magram Alliance##1367 |goto Desolace 56.29,59.68
step
  talk Gurda Wildmane##5412
  accept Gelkis Alliance##1368 |goto Desolace 56.29,59.68
step
  only completed(1431)
  talk Takata Steelblade##5641
  accept Alliance Relations##1433 |goto Desolace 52.57,54.39
step
  only completed(1431)
  talk Takata Steelblade##5641
  accept Befouled by Satyr##1434 |goto Desolace 52.57,54.39
step
  talk Smeed Scrabblescrew##11596
  accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  talk Felgur Twocuts##5395
  accept Khan Dez'hepah##1365 |goto Desolace 56.19,59.57
step
  only completed(1431)
  talk Maurin Bonesplitter##4498
  turnin Alliance Relations##1433 |goto Desolace 52.25,53.44
step
  talk Smeed Scrabblescrew##11596
  turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  only completed(1431)
  talk Maurin Bonesplitter##4498
  accept The Burning of Spirits##1435 |goto Desolace 52.25,53.44
step
  talk Uthek the Wise##5397
  turnin Gelkis Alliance##1368 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  note {fp}Thalon
  goto Desolace 21.6,74.13 |tip {vendor}
step
  talk Mai'Lahii##12031
  accept Clam Bait##6142 |goto Desolace 22.64,71.97
step
  talk Azore Aldamort##11863
  accept Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  note Find 10 pieces of Soft-shelled Clam Meat and bring it back to Mai'Lahii at Shadowprey Village.
  collect 10 Soft-shelled Clam Meat##15924 |q 6142 |goto Desolace 34.48,29.06 |tip {dropsfrom}Enraged Reef Crawler, Giant Softshell Clam
step
  kill Burning Blade Augur##4663 |goto Desolace 55.95,27.4 |tip Loot the quest item here — it starts the quest.
  accept The Corrupter##1480 |goto Desolace 55.95,27.4
step
  talk Cork Gizelton##11625
  accept Bodyguard for Hire##5821 |goto Desolace 66.54,37.51
step
  note Bring Khan Dez'hepah's Head to Felgur Twocuts in Desolace.
  collect Khan Dez'hepah's Head##6066 |q 1365 |goto Desolace 74.4,44.8 |tip {dropsfrom}Khan Dez'hepah
step
  only completed(1431)
  note Slay 7 Hatefury Rogues, 7 Hatefury Felsworn, 7 Hatefury Betrayers, and 7 Hatefury Hellcallers, and return to Takata Steelblade in Desolace.
  kill Hatefury Rogue##4670 |q 1434 |goto Desolace 73.55,19.11
step
  only completed(1431)
  note Return the Burning Gem and 15 Infused Burning Gems to Maurin Bonesplitter in Desolace.
  collect Infused Burning Gem##6435 |q 1435 |goto Desolace 55.95,27.4 |tip {dropsfrom}Burning Blade Augur, Burning Blade Reaver, Burning Blade Adept
step
  note Get the Sceptre of Light and then return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Sceptre of Light##15750 |q 5741 |goto Desolace 55.17,30.15 |tip {dropsfrom}Burning Blade Seer
step
  talk Warug##5398
  turnin Magram Alliance##1367 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Broken Tears##1369 |goto Desolace 74.97,68.16
step
  note Bring 6 bags of Crudely Dried Meat to Uthek the Wise in the Gelkis Village.
  collect 6 Crudely Dried Meat##6069 |q 1370 |goto Desolace 72.43,78.51 |tip {dropsfrom}Sack of Meat
step
  note Maintain your reputation with the Magram, and bring 3 Broken Tears to Warug in the Magram Village.
  collect 3 Broken Tears##6083 |q 1369 |goto Desolace 39.65,93.3 |tip {dropsfrom}Tear of Theradras
step
  talk Felgur Twocuts##5395
  turnin Khan Dez'hepah##1365 |goto Desolace 56.19,59.57
step
  only completed(1431)
  talk Takata Steelblade##5641
  turnin Befouled by Satyr##1434 |goto Desolace 52.57,54.39
step
  only completed(1431)
  talk Maurin Bonesplitter##4498
  turnin The Burning of Spirits##1435 |goto Desolace 52.25,53.44
step
  talk Maurin Bonesplitter##4498
  turnin The Corrupter##1480 |goto Desolace 52.25,53.44
step
  talk Smeed Scrabblescrew##11596
  turnin Bodyguard for Hire##5821 |goto Desolace 60.86,61.86
step
  talk Felgur Twocuts##5395
  accept Centaur Bounty##1366 |goto Desolace 56.19,59.57
step
  only completed(1431)
  talk Takata Steelblade##5641
  accept Alliance Relations##1436 |goto Desolace 52.57,54.39
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1481 |goto Desolace 52.25,53.44
step
  talk Nataka Longhorn##11259
  accept Catch of the Day##5386 |goto Desolace 55.41,55.81
step
  talk Uthek the Wise##5397
  turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  talk Mai'Lahii##12031
  turnin Clam Bait##6142 |goto Desolace 22.64,71.97
step
  talk Drulzegar Skraghook##12340
  accept Other Fish to Fry##6143 |goto Desolace 23.32,72.87
step
  note Talk to Jinar'Zillen at Shadowprey Village, and then bring Nataka Longhorn 2 Bloodbelly fish.
  collect Bloodbelly Fish##13546 |q 5386 |goto Desolace 22.45,73.12 |tip {dropsfrom}Jinar'Zillen
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  click Rackmore's Log##177787
  accept Claim Rackmore's Treasure!##6161 |goto Desolace 36.07,30.41
step
  note Slay 7 Slitherblade Myrmidon, 7 Slitherblade Naga, and 5 Slitherblade Sorceresses, and then talk to Drulzegar at Shadowprey in Desolace.
  kill Slitherblade Myrmidon##4714 |q 6143 |goto Desolace 32.74,14.68
step
  note Bring 15 Centaur Ears to Felgur Twocuts in Desolace.
  collect 15 Centaur Ear##6067 |q 1366 |goto Desolace 69.35,46.87 |tip {dropsfrom}Kolkar Centaur, Kolkar Scout, Kolkar Mauler
step
  note Bring a Shadowstalker Scalp to Maurin Bonesplitter in Desolace.
  collect Shadowstalker Scalp##6441 |q 1481 |goto Desolace 75.33,21.26 |tip {dropsfrom}Hatefury Shadowstalker
step
  talk Warug##5398
  turnin Broken Tears##1369 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Gizmo for Warug##1371 |goto Desolace 74.97,68.16
step
  note Maintain your reputation with the Magram, and bring an Advanced Target Dummy to Warug in the Magram Village in Desolace.
  collect Advanced Target Dummy##4392 |q 1371 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  turnin Gizmo for Warug##1371 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  note Maintain your reputation with the Magram, and bring the Head of Khan Shaka to Warug in the Magram Village in Desolace.
  collect Khan Shaka's Head##6073 |q 1375 |goto Desolace 40.49,95.49 |tip {dropsfrom}Khan Shaka
step
  talk Felgur Twocuts##5395
  turnin Centaur Bounty##1366 |goto Desolace 56.19,59.57
step
  talk Maurin Bonesplitter##4498
  turnin The Corrupter##1481 |goto Desolace 52.25,53.44
step
  talk Nataka Longhorn##11259
  turnin Catch of the Day##5386 |goto Desolace 55.41,55.81
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1482 |goto Desolace 52.25,53.44
step
  talk Rigger Gizelton##11626
  accept Gizelton Caravan##5943 |goto Desolace 45.4,75.29
step
  talk Drulzegar Skraghook##12340
  turnin Other Fish to Fry##6143 |goto Desolace 23.32,72.87
step
  talk Taiga Wisemane##11624
  accept Hand of Iruxos##5381 |goto Desolace 25.82,68.21
step
  note Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
  collect Rackmore's Silver Key##15878 |q 6161 |goto Desolace 24.7,78.72 |tip {dropsfrom}Drysnap Crawler, Drysnap Pincer
step
  turnin Claim Rackmore's Treasure!##6161 |goto Desolace 30,8.71
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  note Bring an Oracle Crystal to Maurin Bonesplitter in Desolace.
  collect Oracle Crystal##6442 |q 1482 |goto Desolace 33.89,10.15 |tip {dropsfrom}Slitherblade Oracle
step
  note Get the Book of the Ancients and return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Book of the Ancients##15803 |q 6027 |goto Desolace 28.24,6.67 |tip {dropsfrom}Lord Kragaru
step
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Bibbly F'utzbuckle##11438
  accept Bone Collector##5501 |goto Desolace 62.33,38.99
step
  note Retrieve the Demon Box from Thunder Axe Fortress, and return it, along with the Demon Pick to Taiga Wisemane in Shadowprey Village.
  collect Demon Box##13542 |q 5381 |goto Desolace 55,26.6 |tip {dropsfrom}Demon Spirit
step
  talk Warug##5398
  turnin Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  talk Maurin Bonesplitter##4498
  turnin The Corrupter##1482 |goto Desolace 52.25,53.44
step
  talk Smeed Scrabblescrew##11596
  turnin Gizelton Caravan##5943 |goto Desolace 60.86,61.86
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1484 |goto Desolace 52.25,53.44
step
  talk Takata Steelblade##5641
  turnin The Corrupter##1484 |goto Desolace 52.57,54.39
step
  talk Takata Steelblade##5641
  accept The Corrupter##1488 |goto Desolace 52.57,54.39
step
  talk Hornizz Brimbuzzle##6019
  accept Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  note Bring 10 Kodo Bones from the Kodo Graveyard to Bibbly F'utzbuckle at Kormek's Hut.
  collect 10 Kodo Bone##13703 |q 5501 |goto Desolace 53.26,61.24 |tip {dropsfrom}Kodo Bones
step
  note Slay Lord Azrethoc and Jugkar Grim'rod and return to Takata Steelblade in Desolace.
  kill Lord Azrethoc##5760 |q 1488 |goto Desolace 56.95,75.74 |elite
step
  talk Taiga Wisemane##11624
  turnin Hand of Iruxos##5381 |goto Desolace 25.82,68.21
step
  talk Taiga Wisemane##11624
  accept Portals of the Legion##5581 |goto Desolace 25.82,68.21
step
  talk Melizza Brimbuzzle##12277
  accept Get Me Out of Here!##6132 |goto Desolace 33.95,53.5
step
  talk Bibbly F'utzbuckle##11438
  turnin Bone Collector##5501 |goto Desolace 62.33,38.99
step
  note Bring 8 Ghost-o-plasms and the Crate of Ghost Magnets to Hornizz Brimbuzzle in Desolace.
  collect 8 Ghost-o-plasm##15849 |q 6134 |goto Desolace 64.18,91.63 |tip {dropsfrom}Magrami Spectre
step
  talk Takata Steelblade##5641
  turnin The Corrupter##1488 |goto Desolace 52.57,54.39
step
  talk Hornizz Brimbuzzle##6019
  turnin Get Me Out of Here!##6132 |goto Desolace 47.83,61.83
step
  talk Hornizz Brimbuzzle##6019
  turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  note Banish 6 Portals at Mannoroc Coven and return to Taiga Wisemane at Shadowprey Village.
  kill Demon Portal Guardian##11937 |q 5581 |goto Desolace 52.6,77.4
step
  talk Taiga Wisemane##11624
  turnin Portals of the Legion##5581 |goto Desolace 25.82,68.21
step
  talk Warug##5398
  accept Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  note Maintain your Magram reputation, and bring the Maraudine Key Fragment to Warug in the Magram Village in Desolace.
  kill Khan Hratha##5402 |goto Desolace 29.55,52 |elite
  collect Maraudine Key Fragment##6077 |q 1381 |goto Desolace 29.55,52
step
  talk Warug##5398
  turnin Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  only completed(2949)
  talk Nogg##3412
  turnin Nogg's Ring Redo##2950 |goto Orgrimmar 75.99,25.41 |tip {turninat}Orgrimmar
step
  only Warlock not completed(4965) not completed(4968) not completed(4969) not haveq(4965) not haveq(4968) not haveq(4969)
  talk Zevrost##3326
  accept Knowledge of the Orb of Orahil##4967 |goto Orgrimmar 48.47,45.43
step
  only Warlock not completed(4963) not haveq(4963)
  talk Acolyte Wytula##6254
  accept Shard of a Felhound##4962 |goto The Barrens 62.64,35.3
step
  talk Uthel'nay##7311
  accept Shadowshard Fragments##7068 |goto Orgrimmar 39.16,86.27
step
  talk Centaur Pariah##13717
  accept The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  note Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
  collect Amulet of Union##17758 |q 7067 |goto Desolace 50.42,86.65
step
  only Warlock not completed(4963) not haveq(4963)
  note Take the Felhas Ruby and use it on one of the Felhounds found in Desolace. After successful, bring the Felhas Ruby and the Imprisoned Felhound Spirit back to Menara Voidrender in the Barrens.
  collect Imprisoned Felhound Spirit##12648 |q 4962 |goto Desolace 52.91,68.14 |tip {dropsfrom}Mana Eater
step
  note Collect 10 Shadowshard Fragments from Maraudon and return them to Uthel'nay in Orgrimmar.
  kill Shadowshard Rumbler##11777 |goto Desolace 27.23,57.68 |elite
  collect 10 Shadowshard Fragment##17756 |q 7068 |goto Desolace 27.23,57.68
step
  only Warlock not completed(4965) not completed(4968) not completed(4969) not haveq(4965) not haveq(4968) not haveq(4969)
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4967 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only Warlock not completed(4963) not haveq(4963)
  talk Menara Voidrender##6266
  turnin Shard of a Felhound##4962 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Uthel'nay##7311
  turnin Shadowshard Fragments##7068 |goto Orgrimmar 39.16,86.27 |tip {turninat}Orgrimmar
step
  talk Centaur Pariah##13717
  turnin The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  only Warlock
  talk Menara Voidrender##6266
  accept Fragments of the Orb of Orahil##1799 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
  collect Infernal Orb##7291 |q 1799 |goto Desolace 80.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  only Warlock
  talk Tabetha##6546
  turnin Fragments of the Orb of Orahil##1799 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  only completed(1431)
  talk Keldran##5640
  turnin Alliance Relations##1436 |goto Orgrimmar 22.56,52.63 |tip {turninat}Orgrimmar
step
  note {travel}Dustwallow Marsh
  goto Dustwallow Marsh 35.21,30.66
]])
