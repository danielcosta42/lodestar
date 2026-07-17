-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Desolace (33-42)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Dustwallow Marsh (36-41)",
}, [[
step
  note {fp}Thalon
  goto Desolace 21.6,74.13 |tip {vendor}
step
  talk Felgur Twocuts##5395
  accept Khan Dez'hepah##1365 |goto Desolace 56.19,59.57
step
  note Bring Khan Dez'hepah's Head to Felgur Twocuts in Desolace.
  collect Khan Dez'hepah's Head##6066 |q 1365 |goto Desolace 73.38,41.62 |tip {dropsfrom}Khan Dez'hepah
step
  talk Gurda Wildmane##5412
  accept Magram Alliance##1367 |goto Desolace 56.29,59.68
step
  talk Gurda Wildmane##5412
  accept Gelkis Alliance##1368 |goto Desolace 56.29,59.68
step
  talk Takata Steelblade##5641
  accept Alliance Relations##1433 |goto Desolace 52.57,54.39
step
  talk Takata Steelblade##5641
  accept Befouled by Satyr##1434 |goto Desolace 52.57,54.39
step
  talk Nataka Longhorn##11259
  accept Catch of the Day##5386 |goto Desolace 55.41,55.81
step
  note Talk to Jinar'Zillen at Shadowprey Village, and then bring Nataka Longhorn 2 Bloodbelly fish.
  collect Bloodbelly Fish##13546 |q 5386 |goto Desolace 55.41,55.81
step
  talk Smeed Scrabblescrew##11596
  accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  note Bring five Tamed Kodos and the Kodo Kombobulator back to Smeed Scrabblescrew at Scrabblescrew's Camp.
  kill Tamed Kodo##11627 |q 5561
step
  talk Parqual Fintallas##4488
  accept Test of Lore##1160 |goto Undercity 57.8,65.42
step
  note Find The Beginnings of the Undead Threat, and return it to Parqual Fintallas in Undercity.
  collect Test of Lore##5861 |q 1160 |goto Undercity 57.8,65.42
step
  talk Parqual Fintallas##4488
  accept Final Passage##1394 |goto Undercity 57.8,65.42
step
  talk Hornizz Brimbuzzle##6019
  accept Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  note Bring 8 Ghost-o-plasms and the Crate of Ghost Magnets to Hornizz Brimbuzzle in Desolace.
  collect 8 Ghost-o-plasm##15849 |q 6134 |goto Desolace 47.83,61.83 |tip {dropsfrom}Magrami Spectre
step
  talk Cavindra##13697
  accept Legends of Maraudon##7044 |goto Desolace 32.1,63.96
step
  note Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
  collect Celebrian Diamond##17703 |q 7044 |goto Maraudon - Dungeon -1,-1 |tip {dropsfrom}Lord Vyletongue
step
  only Warlock
  talk Demisette Cloyce##461
  accept Knowledge of the Orb of Orahil##4968 |goto Stormwind City 25.28,78.22
step
  talk Taiga Wisemane##11624
  accept Hand of Iruxos##5381 |goto Desolace 25.82,68.21
step
  note Retrieve the Demon Box from Thunder Axe Fortress, and return it, along with the Demon Pick to Taiga Wisemane in Shadowprey Village.
  collect Demon Box##13542 |q 5381 |goto Desolace 25.82,68.21 |tip {dropsfrom}Demon Spirit
step
  talk Roon Wildmane##11877
  accept Hunting in Stranglethorn##5763 |goto Desolace 25.05,72.27
step
  talk Mai'Lahii##12031
  accept Clam Bait##6142 |goto Desolace 22.64,71.97
step
  note Find 10 pieces of Soft-shelled Clam Meat and bring it back to Mai'Lahii at Shadowprey Village.
  kill Deepstrider Giant##4686 |goto Desolace 66.26,32.79 |elite
  collect 10 Soft-shelled Clam Meat##15924 |q 6142 |goto Desolace 66.26,32.79
step
  talk Drulzegar Skraghook##12340
  accept Other Fish to Fry##6143 |goto Desolace 23.32,72.87
step
  talk Vark Battlescar##11823
  accept Vyletongue Corruption##7029 |goto Desolace 23.22,70.33
step
  note Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
  kill Noxxious Scion##13696 |q 7029
step
  talk Uthek the Wise##5397
  turnin Gelkis Alliance##1368 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  note Bring 6 bags of Crudely Dried Meat to Uthek the Wise in the Gelkis Village.
  collect 6 Crudely Dried Meat##6069 |q 1370 |goto Desolace 72.43,77.26 |tip {dropsfrom}Sack of Meat
step
  talk Melor Stonehoof##3441
  accept Frostmaw##1136 |goto Thunder Bluff 61.54,80.92
step
  note Bring Frostmaw's Mane to Melor Stonehoof in Thunder Bluff.
  collect Frostmaw##5811 |q 1136 |goto Thunder Bluff 61.54,80.92
step
  talk Varimathras##2425
  accept An Unholy Alliance##6521 |goto Undercity 56.25,92.2
step
  note Bring Ambassador Malcin's Head to Varimathras in the Undercity.
  collect An Unholy Alliance##17009 |q 6521 |goto Undercity 56.25,92.2
step
  talk Centaur Pariah##13717
  accept The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  note Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
  collect Amulet of Union##17758 |q 7067 |goto Desolace 50.42,86.65
step
  talk Warug##5398
  turnin Magram Alliance##1367 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Broken Tears##1369 |goto Desolace 74.97,68.16
step
  note Maintain your reputation with the Magram, and bring 3 Broken Tears to Warug in the Magram Village.
  collect 3 Broken Tears##6083 |q 1369 |goto Desolace 37.41,87.07 |tip {dropsfrom}Gelkis Windchaser, Gelkis Earthcaller, Tear of Theradras
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4968 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Dorn Plainstalker##2986
  turnin Final Passage##1394 |goto Thousand Needles 53.95,41.49 |tip {turninat}Thousand Needles
step
  talk Genavie Callow##4486
  accept To Steal From Thieves##1164 |goto Undercity 63.83,49.45
step
  note Bring Kenata, Fardel, and Marcel Dabyrie's Heads to Genavie Callow in Undercity.
  collect To Steal From Thieves##5830 |q 1164 |goto Undercity 63.83,49.45
step
  kill Burning Blade Augur##4663 |goto Desolace 55.28,27.4 |tip Loot the quest item here — it starts the quest.
  accept The Corrupter##1480 |goto Desolace 55.28,27.4
step
  talk Orokk Omosh##7790
  accept Trampled Under Foot##2753 |goto Orgrimmar 79.24,22.4
step
  note Bring four Green Iron Helms, four Green Iron Bracers, and two Green Iron Leggings to Orokk Omosh in Orgrimmar.
  collect Green Iron Helm##3836 |q 2753 |goto Orgrimmar 79.24,22.4
step
  talk Nogg##3412
  accept Rig Wars##2841 |goto Orgrimmar 75.99,25.41
step
  note Retrieve the Rig Blueprints and Thermaplugg's Safe Combination from Gnomeregan and bring them to Nogg in Orgrimmar.
  collect Rig Wars##9153 |q 2841 |goto Orgrimmar 75.99,25.41
step
  talk Sovik##3413
  accept Chief Engineer Scooty##2842 |goto Orgrimmar 75.49,25.36
step
  talk Nogg##3412
  accept Nogg's Ring Redo##2950 |goto Orgrimmar 75.99,25.41
step
  note Bring the Brilliant Gold Ring, a Silver Bar, a Moss Agate, and 30 silver coins to Nogg in Orgrimmar.
  collect Silver Bar##2842 |q 2950 |goto Azuremyst Isle 28.62,68.23 |tip {dropsfrom}Battered Chest, Tattered Chest
step
  only Warlock
  talk Kaal Soulreaper##4563
  accept Knowledge of the Orb of Orahil##4969 |goto Undercity 86.21,15.93
step
  talk Bibbly F'utzbuckle##11438
  accept Bone Collector##5501 |goto Desolace 62.33,38.99
step
  note Bring 10 Kodo Bones from the Kodo Graveyard to Bibbly F'utzbuckle at Kormek's Hut.
  collect 10 Kodo Bone##13703 |q 5501 |goto Desolace 52.86,60.09 |tip {dropsfrom}Kodo Bones
step
  talk Willow##13656
  accept Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  note Collect 15 Theradric Crystal Carvings for Willow in Desolace.
  collect 15 Theradric Crystal Carving##17684 |q 7028 |goto Maraudon - Dungeon -1,-1 |tip {dropsfrom}Putridus Satyr, Putridus Trickster, Putridus Shadowstalker
step
  note Slay 7 Hatefury Rogues, 7 Hatefury Felsworn, 7 Hatefury Betrayers, and 7 Hatefury Hellcallers, and return to Takata Steelblade in Desolace.
  kill Hatefury Rogue##4670 |q 1434 |goto Desolace 74.45,18.85
step
  talk Hemet Nesingwary Jr.##715
  turnin Hunting in Stranglethorn##5763 |goto Stranglethorn Vale 35.66,10.81 |tip {turninat}Stranglethorn Vale
step
  talk Azore Aldamort##11863
  accept Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  note Get the Sceptre of Light and then return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Sceptre of Light##15750 |q 5741 |goto Desolace 55.17,30.15 |tip {dropsfrom}Burning Blade Seer
step
  click Rackmore's Log##177787
  accept Claim Rackmore's Treasure!##6161 |goto Desolace 36.07,30.41
step
  note Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
  collect Rackmore's Silver Key##15878 |q 6161 |goto Desolace 24.08,76.56 |tip {dropsfrom}Drysnap Crawler, Drysnap Pincer
step
  note Slay 7 Slitherblade Myrmidon, 7 Slitherblade Naga, and 5 Slitherblade Sorceresses, and then talk to Drulzegar at Shadowprey in Desolace.
  kill Slitherblade Myrmidon##4714 |q 6143 |goto Desolace 32.18,14.81
step
  talk Nataka Longhorn##11259
  turnin Catch of the Day##5386 |goto Desolace 55.41,55.81
step
  talk Maurin Bonesplitter##4498
  turnin Alliance Relations##1433 |goto Desolace 52.25,53.44
step
  talk Takata Steelblade##5641
  turnin Befouled by Satyr##1434 |goto Desolace 52.57,54.39
step
  talk Smeed Scrabblescrew##11596
  turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  talk Maurin Bonesplitter##4498
  turnin The Corrupter##1480 |goto Desolace 52.25,53.44
step
  talk Felgur Twocuts##5395
  turnin Khan Dez'hepah##1365 |goto Desolace 56.19,59.57
step
  talk Felgur Twocuts##5395
  accept Centaur Bounty##1366 |goto Desolace 56.19,59.57
step
  note Bring 15 Centaur Ears to Felgur Twocuts in Desolace.
  collect 15 Centaur Ear##6067 |q 1366 |goto Desolace 69.23,46.87 |tip {dropsfrom}Kolkar Centaur, Kolkar Scout, Kolkar Mauler
step
  talk Maurin Bonesplitter##4498
  accept The Burning of Spirits##1435 |goto Desolace 52.25,53.44
step
  note Return the Burning Gem and 15 Infused Burning Gems to Maurin Bonesplitter in Desolace.
  collect Infused Burning Gem##6435 |q 1435 |goto Desolace 52.25,53.44
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1481 |goto Desolace 52.25,53.44
step
  note Bring a Shadowstalker Scalp to Maurin Bonesplitter in Desolace.
  collect Shadowstalker Scalp##6441 |q 1481 |goto Desolace 76.49,21.26 |tip {dropsfrom}Hatefury Shadowstalker
step
  talk Parqual Fintallas##4488
  turnin Test of Lore##1160 |goto Undercity 57.8,65.42 |tip {turninat}Undercity
step
  talk Hornizz Brimbuzzle##6019
  turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  talk Taiga Wisemane##11624
  turnin Hand of Iruxos##5381 |goto Desolace 25.82,68.21
step
  talk Scooty##7853
  turnin Chief Engineer Scooty##2842 |goto Stranglethorn Vale 27.6,77.48 |tip {turninat}Stranglethorn Vale
step
  talk Vark Battlescar##11823
  turnin Vyletongue Corruption##7029 |goto Desolace 23.22,70.33
step
  talk Mai'Lahii##12031
  turnin Clam Bait##6142 |goto Desolace 22.64,71.97
step
  talk Drulzegar Skraghook##12340
  turnin Other Fish to Fry##6143 |goto Desolace 23.32,72.87
step
  talk Taiga Wisemane##11624
  accept Portals of the Legion##5581 |goto Desolace 25.82,68.21
step
  note Banish 6 Portals at Mannoroc Coven and return to Taiga Wisemane at Shadowprey Village.
  kill Demon Portal Guardian##11937 |q 5581
step
  talk Uthek the Wise##5397
  turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Ongeku##1373 |goto Desolace 36.22,79.25
step
  note Maintain your reputation with the Gelkis, and bring a Draenethyst Shard to Uthek the Wise in the Gelkis Village in Desolace.
  collect Draenethyst Shard##6190 |q 1373 |goto Swamp of Sorrows 65.07,21.97 |tip {dropsfrom}Ongeku
step
  talk Centaur Pariah##13717
  turnin The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  talk Melor Stonehoof##3441
  turnin Frostmaw##1136 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  talk Varimathras##2425
  turnin An Unholy Alliance##6521 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
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
  talk Nogg##3412
  turnin Nogg's Ring Redo##2950 |goto Orgrimmar 75.99,25.41 |tip {turninat}Orgrimmar
step
  talk Genavie Callow##4486
  turnin To Steal From Thieves##1164 |goto Undercity 63.83,49.45 |tip {turninat}Undercity
step
  talk Nogg##3412
  turnin Rig Wars##2841 |goto Orgrimmar 75.99,25.41 |tip {turninat}Orgrimmar
step
  talk Orokk Omosh##7790
  turnin Trampled Under Foot##2753 |goto Orgrimmar 79.24,22.4 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4969 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Willow##13656
  turnin Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Bibbly F'utzbuckle##11438
  turnin Bone Collector##5501 |goto Desolace 62.33,38.99
step
  talk Orokk Omosh##7790
  accept Horns of Frenzy##2754 |goto Orgrimmar 79.24,22.4
step
  note Bring two Solid Iron Mauls, two Silvered Bronze Boots, and two Silvered Bronze Gauntlets to Orokk Omosh in Orgrimmar.
  collect Solid Iron Maul##3851 |q 2754 |goto Orgrimmar 79.24,22.4
step
  turnin Claim Rackmore's Treasure!##6161 |goto Desolace 30.0,8.71
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  note Get the Book of the Ancients and return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Book of the Ancients##15803 |q 6027 |goto Desolace 38.88,27.16 |tip {dropsfrom}Lord Kragaru
step
  talk Maurin Bonesplitter##4498
  turnin The Burning of Spirits##1435 |goto Desolace 52.25,53.44
step
  talk Maurin Bonesplitter##4498
  turnin The Corrupter##1481 |goto Desolace 52.25,53.44
step
  talk Felgur Twocuts##5395
  turnin Centaur Bounty##1366 |goto Desolace 56.19,59.57
step
  talk Takata Steelblade##5641
  accept Alliance Relations##1436 |goto Desolace 52.57,54.39
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1482 |goto Desolace 52.25,53.44
step
  note Bring an Oracle Crystal to Maurin Bonesplitter in Desolace.
  collect Oracle Crystal##6442 |q 1482 |goto Desolace 31.57,10.15 |tip {dropsfrom}Slitherblade Oracle
step
  talk Keldran##5640
  turnin Alliance Relations##1436 |goto Orgrimmar 22.56,52.63 |tip {turninat}Orgrimmar
step
  talk Taiga Wisemane##11624
  turnin Portals of the Legion##5581 |goto Desolace 25.82,68.21
step
  talk Uthek the Wise##5397
  turnin Ongeku##1373 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Khan Jehn##1374 |goto Desolace 36.22,79.25
step
  note Bring the Khan Jehn's Head to Uthek the Wise in the Gelkis Village in Desolace.
  collect Khan Jehn's Head##6072 |q 1374 |goto Desolace 65.95,80.41 |tip {dropsfrom}Khan Jehn
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
  talk Orokk Omosh##7790
  turnin Horns of Frenzy##2754 |goto Orgrimmar 79.24,22.4 |tip {turninat}Orgrimmar
step
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Maurin Bonesplitter##4498
  turnin The Corrupter##1482 |goto Desolace 52.25,53.44
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1484 |goto Desolace 52.25,53.44
step
  talk Uthek the Wise##5397
  turnin Khan Jehn##1374 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Khan Hratha##1380 |goto Desolace 36.22,79.25
step
  note Maintain your reputation with the Gelkis, and bring the Maraudine Key Fragment to Uthek the Wise in the Gelkis Village.
  collect Maraudine Key Fragment##6077 |q 1380 |goto Desolace 36.22,79.25 |tip {dropsfrom}Khan Hratha
step
  talk Warug##5398
  turnin Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  note Maintain your Magram reputation, and bring the Maraudine Key Fragment to Warug in the Magram Village in Desolace.
  collect Maraudine Key Fragment##6077 |q 1381 |goto Desolace 74.97,68.16 |tip {dropsfrom}Khan Hratha
step
  talk Takata Steelblade##5641
  turnin The Corrupter##1484 |goto Desolace 52.57,54.39
step
  talk Takata Steelblade##5641
  accept The Corrupter##1488 |goto Desolace 52.57,54.39
step
  talk Uthek the Wise##5397
  turnin Khan Hratha##1380 |goto Desolace 36.22,79.25
step
  note Slay Lord Azrethoc and Jugkar Grim'rod and return to Takata Steelblade in Desolace.
  kill Lord Azrethoc##5760 |q 1488 |goto Desolace 56.95,75.74 |elite
step
  talk Warug##5398
  turnin Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  talk Takata Steelblade##5641
  turnin The Corrupter##1488 |goto Desolace 52.57,54.39
step
  talk Celebras the Redeemed##13716
  turnin Legends of Maraudon##7044
step
  note {travel}Dustwallow Marsh
  goto Dustwallow Marsh 35.21,30.66
]])
