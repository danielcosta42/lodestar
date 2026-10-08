-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Wetlands (22-31)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Duskwood (24-30)",
}, [[
step
  note {fp}Bethaine Flinthammer
  goto Wetlands 10.53,59.73 |tip {vendor}
step
  talk Ashlan Stonesmirk##1073
  accept A Dark Threat Looms##274 |goto Wetlands 50.05,18.17
step
  talk Motley Garmason##1074
  accept The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  talk Longbraid the Grim##1071
  accept A Grim Task##304 |goto Wetlands 49.8,18.26
step
  note Kill Balgaras the Foul and bring his ear to Longbraid the Grim outside of Dun Modr.
  kill Balgaras the Foul##1364 |goto Wetlands 61.6,28.42 |elite
  collect Ear of Balgaras##3639 |q 304 |goto Wetlands 61.6,28.42
step
  talk Rhag Garmason##1075
  accept The Thandol Span##631 |goto Wetlands 49.9,18.24
step
  only Warlock
  talk Briarthorn##5172
  accept In Search of Menara Voidrender##4736 |goto Ironforge 50.35,5.66
step
  note Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
  kill Dark Iron Dwarf##1051 |q 303 |goto Wetlands 59.49,23.02 |elite
step
  talk Einar Stonegrip##2093
  accept Daily Delivery##469 |goto Wetlands 49.92,39.37
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4736 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Rethiel the Greenwarden##1244
  accept Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  talk Gnoarn##6569
  accept The Day After##2927 |goto Ironforge 69.18,50.55
step
  talk Ozzie Togglevolt##1268
  turnin The Day After##2927 |goto Dun Morogh 45.89,49.39 |tip {turninat}Dun Morogh
step
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
  talk Prospector Whelgar##1077
  accept Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
  note Prospector Whelgar wants you to scour the excavation site in search of the 4 missing tablet fragments: Ados, Modr, Golm and Neru.
  collect Ados Fragment##2658 |q 299 |goto Wetlands 34.7,47.9 |tip {dropsfrom}Ancient Relic
step
  note Ormer Ironbraid at the Whelgar Excavation Site wants you to kill 10 Mottled Screechers and 10 Mottled Raptors.
  kill Mottled Raptor##1020 |q 294 |goto Wetlands 24.31,47.47
step
  talk James Halloran##2094
  turnin Daily Delivery##469 |goto Wetlands 8.55,55.74
step
  talk Karl Boran##1242
  accept Claws from the Deep##279 |goto Wetlands 8.32,58.57
step
  talk First Mate Fitzsimmons##1239
  accept The Third Fleet##288 |goto Wetlands 10.9,59.64
step
  note Buy First Mate Fitzsimmons a Flagon of Mead.
  buy Flagon of Mead##2594 |q 288 |goto Hall of Legends -1,-1
step
  talk Tarrel Rockweaver##2096
  accept In Search of The Excavation Team##305 |goto Wetlands 11.5,52.17
step
  talk Glorin Steelbrow##1217
  accept Lightforge Iron##321 |goto Wetlands 10.58,60.59
step
  talk First Mate Fitzsimmons##1239
  accept The Greenwarden##463 |goto Wetlands 10.9,59.64
step
  talk Captain Stoutfist##2104
  accept War Banners##464 |goto Wetlands 9.86,57.49
step
  note Bring 8 Dragonmaw War Banners to Captain Stoutfist.
  collect 8 Dragonmaw War Banner##3337 |q 464 |goto Wetlands 45.5,45.35 |tip {dropsfrom}Dragonmaw Raider, Dragonmaw Swamprunner, Dragonmaw Centurion
step
  talk Sida##2111
  accept Digging Through the Ooze##470 |goto Wetlands 11.8,57.99
step
  note One of the oozes at Ironbeard's Tomb has Sida's bag, retrieve it and bring it back to her in Menethil Harbor.
  collect Sida's Bag##3349 |q 470 |goto Wetlands 44.58,24.76 |tip {dropsfrom}Crimson Ooze, Black Ooze, Monstrous Ooze
step
  talk Harlo Barnaby##2097
  accept Fall of Dun Modr##472 |goto Wetlands 10.85,55.9
step
  talk Valstag Ironjaw##2086
  accept Report to Captain Stoutfist##473 |goto Wetlands 10.1,56.9
step
  talk James Halloran##2094
  accept Young Crocolisk Skins##484 |goto Wetlands 8.55,55.74
step
  note Obtain 4 Young Crocolisk Skins for James Halloran in Menethil Harbor.
  collect 4 Young Crocolisk Skin##3397 |q 484 |goto Wetlands 52.42,47.18 |tip {dropsfrom}Young Wetlands Crocolisk
step
  talk Glorin Steelbrow##1217
  accept Lightforge Ingots##526 |goto Wetlands 10.58,60.59
step
  note Gather 5 lightforge ingots, then return to Glorin Steelbrow in the Wetlands.
  collect 5 Lightforge Ingot##2702 |q 526 |goto Wetlands 12.62,64.38 |tip {dropsfrom}Bluegill Raider
step
  talk Archaeologist Flagongut##2911
  accept The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
  note Archaeologist Flagongut in Menethil Harbor wants you to bring him the Stone of Relu and Flagongut's Fossil.
  collect Stone of Relu##5233 |q 943 |goto Wetlands 24.31,47.47 |tip {dropsfrom}Mottled Raptor, Mottled Screecher, Mottled Scytheclaw
step
  talk Red Jack Flint##4455
  accept Fiora Longears##1132 |goto Wetlands 9.96,57.96
step
  talk Mikhail##4963
  accept The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  talk Vincent Hyal##5082
  accept James Hyal##1302 |goto Wetlands 10.8,60.4
step
  talk Valstag Ironjaw##2086
  accept Spoils of War##98197 |goto Wetlands 10.1,56.9
step
  note Recover 6 Khaz Modan Timber and 30 Khaz Modan Iron from Menethil Harbor for Valstag Ironjaw.
  collect Khaz Modan Timber##279821 |q 98197 |goto Wetlands 8.3,55.2
step
  talk Caitlin Grassman##1480
  accept Alchemical Hazards##98282 |goto Wetlands 11.88,58.82
step
  note Collect an Unruptured Stalker Gland from Thelgen Rock for Caitlin Grassman in Menethil Harbor.
  collect Unruptured Stalker Gland##280319 |q 98282 |goto Wetlands 52.66,62.81 |tip {dropsfrom}Leech Stalker, Cave Stalker
step
  note Kill 12 Bluegill Murlocs.
  kill Bluegill Murloc##1024 |q 279 |goto Wetlands 15.26,39.92
step
  note Subdue Tapoke Jahn before he escapes, and then return to Mikhail in Menethil.
  use Tapoke "Slim" Jahn##4962 |q 1249 |goto Wetlands 10.54,60.26 |tip {useit}
step
  talk Master Mathias Shaw##332
  accept Look to an Old Friend##350 |goto Stormwind City 78.31,70.74
step
  talk Elling Trias##482
  accept The Head of the Beast##394 |goto Stormwind City 66.03,74.1
step
  talk Grand Mason Marblesten##2790
  accept A King's Tribute##689 |goto Ironforge 39.04,88.05
step
  note Grand Mason Marblesten of Ironforge wants 5 pieces of Alterac Granite.
  collect Alterac Granite##4521 |q 689 |goto Hillsbrad Foothills 43.85,30.19
step
  talk Elling Trias##482
  accept The Missing Diplomat##1246 |goto Stormwind City 66.03,74.1
step
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1247 |goto Stormwind City 74.26,59.17
step
  only Warlock
  talk Demisette Cloyce##461
  accept In Search of Menara Voidrender##4738 |goto Stormwind City 39.24,84.96
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94497 |goto Wetlands 65.73,76.43
step
  only Shaman
  note Fill the Empty Brown Waterskin at the bottom of the waterfalls below Hervdana's cave and return it to her in the Wetlands.
  collect Full Brown Waterskin##265734 |q 94497 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94499 |goto Wetlands 65.73,76.43
step
  only Shaman
  note Fill the Empty Red Waterskin at Stonewatch Falls near the Nightcrawler Murlocs and return to Hervdana Saegrund in the Wetlands.
  collect Full Red Waterskin##265748 |q 94499 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94500 |goto Wetlands 65.73,76.43
step
  only Shaman
  note Fill the Unfilled Blue Waterskin at the waters of Astranaar in Ashenvale and return to Hervdana Saegrund in the Wetlands.
  collect Full Blue Waterskin##265773 |q 94500 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94501 |goto Wetlands 65.73,76.43
step
  note Kill 15 Mosshide Gnolls and 10 Mosshide Mongrels, then return to Rethiel the Greenwarden in the Wetlands.
  kill Mosshide Gnoll##1007 |q 276 |goto Wetlands 61.78,72.24
step
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##274 |goto Loch Modan 46.05,13.61 |tip {turninat}Loch Modan
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Call of Water##94501 |goto Loch Modan 41.89,19.03 |tip {turninat}Loch Modan
step
  talk Motley Garmason##1074
  turnin The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  talk Longbraid the Grim##1071
  turnin A Grim Task##304 |goto Wetlands 49.8,18.26
step
  talk Longbraid the Grim##1071
  turnin Fall of Dun Modr##472 |goto Wetlands 49.8,18.26
step
  turnin The Thandol Span##631 |goto Wetlands 51.28,7.95
step
  talk Motley Garmason##1074
  accept The Fury Runs Deep##378 |goto Wetlands 49.67,18.23
step
  note Motley Garmason wants Kam Deepfury's head brought to him at Dun Modr.
  collect Head of Deepfury##3640 |q 378 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Kam Deepfury
step
  click Ebenezer Rustlocke's Corpse##2652
  accept The Thandol Span##632 |goto Wetlands 51.28,7.95
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4738 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Rethiel the Greenwarden##1244
  turnin Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  talk Clerk Lendry##5083
  turnin James Hyal##1302 |goto Dustwallow Marsh 67.88,48.24 |tip {turninat}Dustwallow Marsh
step
  talk Rethiel the Greenwarden##1244
  turnin The Greenwarden##463 |goto Wetlands 56.37,40.4
step
  talk Fiora Longears##4456
  turnin Fiora Longears##1132 |goto Dustwallow Marsh 66.46,45.15 |tip {turninat}Dustwallow Marsh
step
  talk Rethiel the Greenwarden##1244
  accept Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  note Bring Rethiel the Greenwarden 9 Crude Flints.
  collect Crude Flint##2611 |q 277 |goto Wetlands 61.13,58.26 |tip {dropsfrom}Mosshide Mistweaver, Mosshide Fenrunner, Mosshide Trapper
step
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
  talk Prospector Whelgar##1077
  turnin Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
  talk Merrin Rockweaver##1076
  turnin In Search of The Excavation Team##305 |goto Wetlands 38.91,52.34
step
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##295 |goto Wetlands 38.18,50.89
step
  talk Merrin Rockweaver##1076
  accept In Search of The Excavation Team##306 |goto Wetlands 38.91,52.34
step
  note Ormer Ironbraid wants you to kill 10 Mottled Scytheclaw raptors and 10 Mottled Razormaw raptors then return to him at the Whelgar Excavation Site.
  kill Mottled Scytheclaw##1022 |q 295 |goto Wetlands 34.45,48.73
step
  talk Glorin Steelbrow##1217
  turnin Lightforge Ingots##526 |goto Wetlands 10.58,60.59
step
  talk Valstag Ironjaw##2086
  turnin Spoils of War##98197 |goto Wetlands 10.1,56.9
step
  talk Karl Boran##1242
  turnin Claws from the Deep##279 |goto Wetlands 8.32,58.57
step
  talk First Mate Fitzsimmons##1239
  turnin The Third Fleet##288 |goto Wetlands 10.9,59.64
step
  talk Archaeologist Flagongut##2911
  turnin The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
  talk Tarrel Rockweaver##2096
  turnin In Search of The Excavation Team##306 |goto Wetlands 11.5,52.17
step
  turnin Lightforge Iron##321 |goto Wetlands 12.11,64.19
step
  talk Captain Stoutfist##2104
  turnin War Banners##464 |goto Wetlands 9.86,57.49
step
  talk Sida##2111
  turnin Digging Through the Ooze##470 |goto Wetlands 11.8,57.99
step
  talk Captain Stoutfist##2104
  turnin Report to Captain Stoutfist##473 |goto Wetlands 9.86,57.49
step
  talk Mikhail##4963
  turnin The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  talk James Halloran##2094
  turnin Young Crocolisk Skins##484 |goto Wetlands 8.55,55.74
step
  talk Karl Boran##1242
  accept Reclaiming Goods##281 |goto Wetlands 8.32,58.57
step
  talk First Mate Fitzsimmons##1239
  accept The Cursed Crew##289 |goto Wetlands 10.9,59.64
step
  click Waterlogged Chest##2734
  accept The Lost Ingots##324 |goto Wetlands 12.11,64.19
step
  note Gather 5 Lightforge Ingots, then return to Glorin Steelbrow in the Wetlands.
  collect 5 Lightforge Ingot##2702 |q 324 |goto Wetlands 12.62,64.38 |tip {dropsfrom}Bluegill Raider
step
  talk Captain Stoutfist##2104
  accept Nek'rosh's Gambit##465 |goto Wetlands 9.86,57.49
step
  talk James Halloran##2094
  accept Apprentice's Duties##471 |goto Wetlands 8.55,55.74
step
  note Collect 6 Giant Crocolisk Skins and bring them to James Halloran in Menethil Harbor.
  collect 6 Giant Crocolisk Skin##3348 |q 471 |goto Wetlands 19.03,24.17 |tip {dropsfrom}Giant Wetlands Crocolisk
step
  talk Tapoke "Slim" Jahn##4962
  accept The Missing Diplomat##1250 |goto Wetlands 10.54,60.26
step
  note Kill 13 Cursed Sailors, 5 Cursed Marines and First Mate Snellig. Bring Snellig's Snuffbox to First Mate Fitzsimmons in Menethil Harbor.
  kill Cursed Sailor##1157 |q 289 |goto Wetlands 13.93,30.28
step
  talk Master Mathias Shaw##332
  turnin The Head of the Beast##394 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94497 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94499 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94500 |goto Wetlands 65.73,76.43
step
  talk Grand Mason Marblesten##2790
  turnin A King's Tribute##689 |goto Ironforge 39.04,88.05 |tip {turninat}Ironforge
step
  talk Elling Trias##482
  turnin Look to an Old Friend##350 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1246 |goto Stormwind City 74.26,59.17 |tip {turninat}Stormwind City
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1247 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  talk Master Mathias Shaw##332
  accept Brotherhood's End##395 |goto Stormwind City 78.31,70.74
step
  talk Grand Mason Marblesten##2790
  accept A King's Tribute##700 |goto Ironforge 39.04,88.05
step
  talk Elling Trias##482
  accept Infiltrating the Castle##2745 |goto Stormwind City 66.03,74.1
step
  talk Rhag Garmason##1075
  turnin The Thandol Span##632 |goto Wetlands 49.9,18.24
step
  talk Motley Garmason##1074
  turnin The Fury Runs Deep##378 |goto Wetlands 49.67,18.23
step
  talk Rhag Garmason##1075
  accept The Thandol Span##633 |goto Wetlands 49.9,18.24
step
  turnin Nek'rosh's Gambit##465 |goto Wetlands 47.46,47.01
step
  click Dragonmaw Catapult##1609
  accept Defeat Nek'rosh##474 |goto Wetlands 47.46,47.01
step
  note Kill Chieftain Nek'rosh
  kill Chieftain Nek'rosh##2091 |goto Wetlands 53.51,54.67 |elite
  collect Nek'rosh's Head##3625 |q 474 |goto Wetlands 53.51,54.67
step
  talk Baros Alexston##1646
  turnin Brotherhood's End##395 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  talk Rethiel the Greenwarden##1244
  turnin Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  talk Tyrion##7766
  turnin Infiltrating the Castle##2745 |goto Stormwind City 73.23,35.58 |tip {turninat}Stormwind City
step
  talk Rethiel the Greenwarden##1244
  accept Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  talk Baros Alexston##1646
  accept An Audience with the King##396 |goto Stormwind City 57.74,47.86
step
  talk Tyrion##7766
  accept Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58
step
  note Bring 3 Silk Cloth and 2 of Clara's Fresh Apples to Tyrion in Stormwind.
  collect 3 Silk Cloth##4306 |q 2746 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##295 |goto Wetlands 38.18,50.89
step
  talk King Magni Bronzebeard##2784
  turnin A King's Tribute##700 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
  note Ormer Ironbraid at the Whelgar Excavation Site wants you to kill Sarltooth and return to him with one of his talons once the task is fulfilled.
  collect Sarltooth's Talon##3638 |q 296 |goto Wetlands 33.26,51.51 |tip {dropsfrom}Sarltooth
step
  turnin Reclaiming Goods##281 |goto Wetlands 13.52,41.38
step
  talk First Mate Fitzsimmons##1239
  turnin The Cursed Crew##289 |goto Wetlands 10.9,59.64
step
  talk Glorin Steelbrow##1217
  turnin The Lost Ingots##324 |goto Wetlands 10.58,60.59
step
  talk James Halloran##2094
  turnin Apprentice's Duties##471 |goto Wetlands 8.55,55.74
step
  talk Captain Stoutfist##2104
  turnin Defeat Nek'rosh##474 |goto Wetlands 9.86,57.49
step
  talk Mikhail##4963
  turnin The Missing Diplomat##1250 |goto Wetlands 10.6,60.77
step
  click Damaged Crate##261
  accept The Search Continues##284 |goto Wetlands 13.52,41.38
step
  talk First Mate Fitzsimmons##1239
  accept Lifting the Curse##290 |goto Wetlands 10.9,59.64
step
  note Get the Intrepid Strongbox Key from Captain Halyndor.
  collect Intrepid Strongbox Key##2629 |q 290 |goto Wetlands 15.45,23.61 |tip {dropsfrom}Captain Halyndor
step
  talk Glorin Steelbrow##1217
  accept Blessed Arm##322 |goto Wetlands 10.58,60.59
step
  talk Mikhail##4963
  accept The Missing Diplomat##1264 |goto Wetlands 10.6,60.77
step
  note Destroy the cache of explosives.
  collect Cache of Explosives##2704 |q 633 |goto Arathi Highlands 48.79,88.05
step
  talk Rhag Garmason##1075
  turnin The Thandol Span##633 |goto Wetlands 49.9,18.24
step
  talk Rhag Garmason##1075
  accept Plea To The Alliance##634 |goto Wetlands 49.9,18.24
step
  note Kill 12 Fen Creepers, then return to Rethiel the Greenwarden in the Wetlands.
  kill Fen Creeper##1040 |q 275 |goto Wetlands 33.01,32.92
step
  talk Lady Katrana Prestor##1749
  turnin An Audience with the King##396 |goto Stormwind City 80.1,38.17 |tip {turninat}Stormwind City
step
  talk Rethiel the Greenwarden##1244
  turnin Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  talk Tyrion##7766
  turnin Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58 |tip {turninat}Stormwind City
step
  talk Grimand Elmore##1416
  turnin Blessed Arm##322 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  talk Commander Samaul##4964
  turnin The Missing Diplomat##1264 |goto Dustwallow Marsh 68.02,48.71 |tip {turninat}Dustwallow Marsh
step
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
  talk Captain Nials##2700
  turnin Plea To The Alliance##634 |goto Arathi Highlands 45.83,47.56 |tip {turninat}Arathi Highlands
step
  turnin The Search Continues##284 |goto Wetlands 13.6,38.22
step
  turnin Lifting the Curse##290 |goto Wetlands 14.38,24.04
step
  click Sealed Barrel##142151
  accept Search More Hovels##285 |goto Wetlands 13.6,38.22
step
  click Intrepid's Locked Strongbox##112948
  accept The Eye of Paleth##292 |goto Wetlands 14.38,24.04
step
  turnin Search More Hovels##285 |goto Wetlands 13.94,34.81
step
  talk Glorin Steelbrow##1217
  turnin The Eye of Paleth##292 |goto Wetlands 10.58,60.59
step
  click Half-buried Barrel##259
  accept Return the Statuette##286 |goto Wetlands 13.94,34.81
step
  talk Glorin Steelbrow##1217
  accept Cleansing the Eye##293 |goto Wetlands 10.58,60.59
step
  talk Archbishop Benedictus##1284
  turnin Cleansing the Eye##293 |goto Stormwind City 50.31,45.47 |tip {turninat}Stormwind City
step
  talk Karl Boran##1242
  turnin Return the Statuette##286 |goto Wetlands 8.32,58.57
step
  note {travel}Duskwood
  goto Duskwood 71.93,46.42
]])
