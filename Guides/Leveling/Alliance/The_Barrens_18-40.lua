-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/The Barrens (18-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Duskwood (24-30)",
}, [[
step
  note {fp}Reggifuz
  goto The Barrens 62.18,39.21 |tip {vendor}
step
  talk Mebok Mizzyrix##3446
  accept Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  note Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
  collect 5 Intact Raptor Horn##5055 |q 865 |goto The Barrens 52.69,45.68 |tip {dropsfrom}Sunscale Scytheclaw, Ishamuhale, Takk the Leaper
step
  talk Gazlowe##3391
  accept Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Sputtervalve##3442
  accept Samophlange##894 |goto The Barrens 62.98,37.22
step
  click WANTED##3972
  accept WANTED: Baron Longshore##895 |goto The Barrens 62.59,37.47
step
  note Bring the head of Baron Longshore to Gazlowe in Ratchet.
  collect Baron Longshore's Head##5084 |q 895 |goto The Barrens 63.3,49 |tip {dropsfrom}Baron Longshore
step
  talk Wharfmaster Dizzywig##3453
  accept Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  note Retrieve the Cats Eye Emerald from one of the Venture Co. Overseers or Enforcers for Wharfmaster Dizzywig at Ratchet.
  collect Cats Eye Emerald##5097 |q 896 |goto The Barrens 60.81,3.81 |tip {dropsfrom}Venture Co. Enforcer, Venture Co. Overseer, Boss Copperplug
step
  talk Crane Operator Bigglefuzz##3665
  accept Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  note Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
  kill Mad Magglish##3655 |goto The Barrens 46.46,34.66 |elite
  collect 99-Year-Old Port##5334 |q 959 |goto The Barrens 46.46,34.66
step
  talk Wharfmaster Dizzywig##3453
  accept Passage to Booty Bay##1040 |goto The Barrens 63.35,38.45
step
  talk Mebok Mizzyrix##3446
  accept Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  note Bring 15 Deepmoss Eggs to Mebok Mizzyrix in Ratchet.
  collect 15 Deepmoss Egg##5570 |q 1069 |goto Stonetalon Mountains 61.35,53.71 |tip {dropsfrom}Deepmoss Eggs
step
  talk Sputtervalve##3442
  accept Further Instructions##1095 |goto The Barrens 62.98,37.22
step
  talk Wharfmaster Dizzywig##3453
  accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
step
  talk Gazlowe##3391
  accept Goblin Sponsorship##1180 |goto The Barrens 62.68,36.23
step
  talk Mebok Mizzyrix##3446
  accept Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  note Grab a Crate with Holes.
  collect Blueleaf Tuber##5876 |q 1221 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Sputtervalve##3442
  accept Ziz Fizziks##1483 |goto The Barrens 62.98,37.22
step
  only Warlock
  talk Strahad Farsan##6251
  accept Tome of the Cabal##1758 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Strahad Farsan##6251
  accept The Binding##1795 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring Robes of the Arcana to Menara Voidrender in the Barrens.
  collect Robes of Arcana##5770 |q 1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  accept Fragments of the Orb of Orahil##1799 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
  collect Infernal Orb##7291 |q 1799 |goto Desolace 79.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  only Warlock
  talk Strahad Farsan##6251
  accept Summon Felsteed##4490 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.
  collect 10 Vial of Hatefury Blood##6989 |q 4783 |goto Desolace 74.45,18.85 |tip {dropsfrom}Hatefury Rogue, Hatefury Trickster, Hatefury Felsworn
step
  only Warlock
  talk Acolyte Wytula##6254
  accept Shard of a Felhound##4962 |goto The Barrens 62.64,35.3
step
  only Warlock
  note Take the Felhas Ruby and use it on one of the Felhounds found in Desolace. After successful, bring the Felhas Ruby and the Imprisoned Felhound Spirit back to Menara Voidrender in the Barrens.
  collect Imprisoned Felhound Spirit##12648 |q 4962 |goto Desolace 52.91,68.14 |tip {dropsfrom}Mana Eater
step
  only Warlock
  talk Acolyte Magaz##6252
  accept Shard of an Infernal##4963 |goto The Barrens 62.56,35.23
step
  only Warlock
  note Take the Infus Emerald and use it on one of the Infernals found in Desolace. After successful, bring the Infus Emerald and the Imprisoned Infernal Spirit back to Menara Voidrender in the Barrens.
  collect Imprisoned Infernal Spirit##12649 |q 4963 |goto Desolace 53.77,77.08 |tip {dropsfrom}Lesser Infernal
step
  talk Bainham##267309
  accept Chol'aruk the Ravener##97005 |goto The Barrens 61.8,39.4
step
  note Bring Chol'aruk's Head to Bainham in the Barrens.
  collect Chol'aruk's Head##276070 |q 97005 |goto The Barrens 57.76,27.43 |tip {dropsfrom}Chol'aruk
step
  only Warlock
  note Using the Tome of the Cabal, summon and subdue a felhunter, then return the Tome of the Cabal to Strahad Farsan in Ratchet.
  use Summoned Felhunter##6268 |q 1795 |goto The Barrens 62.6,35.31 |tip {useit}
step
  talk Kravel Koalbeard##4452
  turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.27 |tip {turninat}Thousand Needles
step
  talk Master Mathias Shaw##332
  accept Look to an Old Friend##350 |goto Stormwind City 78.31,70.74
step
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1247 |goto Stormwind City 74.26,59.17
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  talk Gnoarn##6569
  accept The Day After##2927 |goto Ironforge 69.18,50.55
step
  only Warrior
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  kill Big Will##6238 |q 1719 |goto The Barrens 68.61,48.72
step
  note Kill 12 Southsea Brigands and 6 Southsea Cannoneers for Gazlowe in Ratchet.
  kill Southsea Brigand##3381 |q 887 |goto The Barrens 63.83,46.24
step
  only Warlock
  talk Tabetha##6546
  turnin Fragments of the Orb of Orahil##1799 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Caravaneer Ruzzgot##3945
  turnin Passage to Booty Bay##1040 |goto Stranglethorn Vale 27.37,74.08 |tip {turninat}Stranglethorn Vale
step
  talk Wharfmaster Lozgil##4631
  turnin Goblin Sponsorship##1180 |goto Stranglethorn Vale 26.35,73.56 |tip {turninat}Stranglethorn Vale
step
  talk Ziz Fizziks##4201
  turnin Further Instructions##1095 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Ziz Fizziks##4201
  turnin Ziz Fizziks##1483 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Elling Trias##482
  turnin Look to an Old Friend##350 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1247 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  talk Ozzie Togglevolt##1268
  turnin The Day After##2927 |goto Dun Morogh 45.89,49.39 |tip {turninat}Dun Morogh
step
  talk Elling Trias##482
  accept The Head of the Beast##394 |goto Stormwind City 66.03,74.1
step
  talk Elling Trias##482
  accept The Missing Diplomat##1246 |goto Stormwind City 66.03,74.1
step
  only Warlock
  talk Takar the Seer##6244
  accept Heartswood##1738 |goto The Barrens 49.31,57.1
step
  only Warlock
  note Retrieve the Heartswood from Ashenvale and bring it to Gakin the Darkbinder in the Mage Quarter of Stormwind.
  collect Heartswood##6912 |q 1738 |goto Ashenvale 31.55,31.57
step
  only Warlock
  talk Doan Karhan##6247
  accept The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Warlock
  note Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
  collect 3 Soran'ruk Fragment##6914 |q 1740 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Acolyte
step
  talk Elling Trias##482
  accept Infiltrating the Castle##2745 |goto Stormwind City 66.03,74.1
step
  talk Nalpak##5767
  accept Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  note Nalpak in the Wailing Caverns wants 20 Deviate Hides.
  kill Deviate Coiler##3630 |goto The Barrens 46.2,36.2 |elite
  collect Deviate Hide##6443 |q 1486 |goto The Barrens 46.2,36.2
step
  talk Ebru##5768
  accept Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  talk Falla Sagewind##8418
  accept In Nightmares##3370 |goto The Barrens 48.18,32.78
step
  talk Mathrengyl Bearwalker##4217
  turnin In Nightmares##3370 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only Warlock
  talk Krom Stoutarm##6294
  turnin Tome of the Cabal##1758 |goto Ironforge 74.19,9.39 |tip {turninat}Ironforge
step
  turnin Samophlange##894 |goto The Barrens 52.4,11.65
step
  talk Wizzlecrank's Shredder##3439
  accept Ignition##858 |goto The Barrens 56.52,7.45
step
  note Get the Ignition Key and bring it to Wizzlecrank.
  collect Ignition Key##5050 |q 858 |goto The Barrens 56.27,8.58 |tip {dropsfrom}Supervisor Lugwizzle
step
  click Control Console##4141
  accept Samophlange##900 |goto The Barrens 52.4,11.65
step
  only Warlock
  talk Briarthorn##5172
  accept In Search of Menara Voidrender##4736 |goto Ironforge 50.35,5.66
step
  note Close off the Fuel Control Valve, the Regulator Valve and the Main Control Valve then use the control console again.
  collect Main Control Valve##4072 |q 900 |goto The Barrens 52.33,11.56
step
  note Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs.
  kill Deviate Ravager##3636 |q 1487 |goto Wailing Caverns - Dungeon -1,-1 |elite
step
  only Warlock
  talk Gakin the Darkbinder##6122
  turnin Heartswood##1738 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  talk Grand Mason Marblesten##2790
  accept A King's Tribute##689 |goto Ironforge 39.04,88.05
step
  note Grand Mason Marblesten of Ironforge wants 5 pieces of Alterac Granite.
  collect Alterac Granite##4521 |q 689 |goto Hillsbrad Foothills 43.85,30.19
step
  only Warlock
  talk Demisette Cloyce##461
  accept In Search of Menara Voidrender##4738 |goto Stormwind City 39.24,84.96
step
  talk Myriam Moonsinger##12866
  accept A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  note Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
  kill Razorfen Battleguard##7873 |q 6626 |goto The Barrens 47.48,90.1 |elite
step
  talk Wharfmaster Dizzywig##3453
  turnin Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4736 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4738 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Strahad Farsan##6251
  turnin The Binding##1795 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Summon Felsteed##4490 |goto The Barrens 62.63,35.5
step
  talk Mebok Mizzyrix##3446
  turnin Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  talk Tyrion##7766
  turnin Infiltrating the Castle##2745 |goto Stormwind City 73.23,35.58 |tip {turninat}Stormwind City
step
  talk Crane Operator Bigglefuzz##3665
  turnin Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  talk Mebok Mizzyrix##3446
  turnin Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  talk Mebok Mizzyrix##3446
  turnin Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Shard of a Felhound##4962 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Shard of an Infernal##4963 |goto The Barrens 62.51,35.45
step
  talk Bainham##267309
  turnin Chol'aruk the Ravener##97005 |goto The Barrens 61.8,39.4
step
  talk Gazlowe##3391
  turnin Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  turnin WANTED: Baron Longshore##895 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept The Missing Shipment##890 |goto The Barrens 62.68,36.23
step
  talk Mebok Mizzyrix##3446
  accept Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  note Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet.
  kill Devouring Ectoplasm##3638 |goto The Barrens 47.91,33.38 |elite
  collect 6 Wailing Essence##6464 |q 1491 |goto The Barrens 47.91,33.38
step
  talk Tyrion##7766
  accept Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58
step
  note Bring 3 Silk Cloth and 2 of Clara's Fresh Apples to Tyrion in Stormwind.
  collect 3 Silk Cloth##4306 |q 2746 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4781 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring a Gold Bar to Xizk Goodstitch in Stranglethorn Vale.
  collect Gold Bar##3577 |q 4781 |goto Redridge Mountains 22.78,46.73 |tip {dropsfrom}Battered Chest, Solid Chest
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring some Fine Gold Thread, 2 Smoldering Coals, and a Soul Shard to Menara Voidrender in the Barrens.
  collect Fine Gold Thread##12293 |q 4784 |goto Stranglethorn Vale 28.71,76.89 |tip {dropsfrom}Xizk Goodstitch
step
  talk Master Mathias Shaw##332
  turnin The Head of the Beast##394 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1246 |goto Stormwind City 74.26,59.17 |tip {turninat}Stormwind City
step
  talk Master Mathias Shaw##332
  accept Brotherhood's End##395 |goto Stormwind City 78.31,70.74
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Windwatcher##1791 |goto The Barrens 68.62,49.16
step
  only Warlock
  talk Doan Karhan##6247
  turnin The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  talk Nalpak##5767
  turnin Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  talk Ebru##5768
  turnin Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  turnin Samophlange##900 |goto The Barrens 52.4,11.65
step
  talk Wizzlecrank's Shredder##3439
  turnin Ignition##858 |goto The Barrens 56.52,7.45
step
  click Control Console##4141
  accept Samophlange##901 |goto The Barrens 52.4,11.65
step
  note Get the Console Key from Tinkerer Sniggles to use on the control console.
  collect Console Key##5089 |q 901 |goto The Barrens 52.84,10.39 |tip {dropsfrom}Tinkerer Sniggles
step
  only Warlock
  talk Xizk Goodstitch##2670
  turnin Components for the Enchanted Gold Bloodrobe##4781 |goto Stranglethorn Vale 28.71,76.89 |tip {turninat}Stranglethorn Vale
step
  talk Grand Mason Marblesten##2790
  turnin A King's Tribute##689 |goto Ironforge 39.04,88.05 |tip {turninat}Ironforge
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  talk Grand Mason Marblesten##2790
  accept A King's Tribute##700 |goto Ironforge 39.04,88.05
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  talk Tyrion##7766
  turnin Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58 |tip {turninat}Stormwind City
step
  talk Mebok Mizzyrix##3446
  turnin Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  talk Wharfmaster Dizzywig##3453
  turnin The Missing Shipment##890 |goto The Barrens 63.35,38.45
step
  talk Wharfmaster Dizzywig##3453
  accept The Missing Shipment##892 |goto The Barrens 63.35,38.45
step
  only Warlock
  talk Menara Voidrender##6266
  accept The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Wait for Menara Voidrender to complete your robe and then speak to her again.
  kill Menara Voidrender##6266 |q 4786 |goto The Barrens 62.51,35.45
step
  talk Baros Alexston##1646
  turnin Brotherhood's End##395 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Windwatcher##1791 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  talk Baros Alexston##1646
  accept An Audience with the King##396 |goto Stormwind City 57.74,47.86
step
  talk King Magni Bronzebeard##2784
  turnin A King's Tribute##700 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  turnin Samophlange##901 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##902 |goto The Barrens 52.4,11.65
step
  talk Sputtervalve##3442
  turnin Samophlange##902 |goto The Barrens 62.98,37.22
step
  only Warlock
  talk Menara Voidrender##6266
  turnin The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  talk Gazlowe##3391
  turnin The Missing Shipment##892 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note Retrieve the Shipment of Boots and Telescopic Lens for Gazlowe in Ratchet.
  collect Shipment of Boots##5076 |q 888 |goto The Barrens 62.63,49.63 |tip {dropsfrom}Drizzlik's Emporium
step
  talk Lady Katrana Prestor##1749
  turnin An Audience with the King##396 |goto Stormwind City 80.1,38.17 |tip {turninat}Stormwind City
step
  talk Gazlowe##3391
  turnin Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note {travel}Duskwood
  goto Duskwood 71.93,46.42
]])
