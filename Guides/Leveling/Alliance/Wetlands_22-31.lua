-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Wetlands (22-31)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Ashenvale (21-32)",
}, [[
step
  note {fp}Shellei Brondir
  goto Wetlands 9.49,59.69 |tip {vendor}
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
  get A Grim Task |q 304 |goto Wetlands 49.8,18.26
step
  talk Rhag Garmason##1075
  accept The Thandol Span##631 |goto Wetlands 49.9,18.24
step
  talk Rhag Garmason##1075
  accept The Thandol Span##633 |goto Wetlands 49.9,18.24
step
  note Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
  kill Dark Iron Dwarf##1051 |q 303 |goto Wetlands 59.49,23.02
step
  talk Einar Stonegrip##2093
  accept Daily Delivery##469 |goto Wetlands 49.92,39.37
step
  talk Rethiel the Greenwarden##1244
  accept Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
  talk Prospector Whelgar##1077
  accept Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
  note Prospector Whelgar wants you to scour the excavation site in search of the 4 missing tablet fragments: Ados, Modr, Golm and Neru.
  get Uncovering the Past |q 299 |goto Wetlands 38.81,52.39
step
  note Ormer Ironbraid at the Whelgar Excavation Site wants you to kill 10 Mottled Screechers and 10 Mottled Raptors.
  kill Mottled Raptor##1020 |q 294 |goto Wetlands 24.31,47.47
step
  note Kill 15 Mosshide Gnolls and 10 Mosshide Mongrels, then return to Rethiel the Greenwarden in the Wetlands.
  kill Mosshide Gnoll##1007 |q 276 |goto Wetlands 61.78,72.24
step
  note Destroy the cache of explosives.
  collect Cache of Explosives##2704 |q 633 |goto Arathi Highlands 48.79,88.05
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
  get The Third Fleet |q 288 |goto Wetlands 10.9,59.64
step
  talk Glorin Steelbrow##1217
  accept Cleansing the Eye##293 |goto Wetlands 10.58,60.59
step
  talk Tarrel Rockweaver##2096
  accept In Search of The Excavation Team##305 |goto Wetlands 11.5,52.17
step
  talk Glorin Steelbrow##1217
  accept Lightforge Iron##321 |goto Wetlands 10.58,60.59
step
  talk Glorin Steelbrow##1217
  accept Blessed Arm##322 |goto Wetlands 10.58,60.59
step
  talk First Mate Fitzsimmons##1239
  accept The Greenwarden##463 |goto Wetlands 10.9,59.64
step
  talk Sida##2111
  accept Digging Through the Ooze##470 |goto Wetlands 11.8,57.99
step
  note One of the oozes at Ironbeard's Tomb has Sida's bag, retrieve it and bring it back to her in Menethil Harbor.
  get Digging Through the Ooze |q 470 |goto Wetlands 11.8,57.99
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
  get Young Crocolisk Skins |q 484 |goto Wetlands 8.55,55.74
step
  talk Glorin Steelbrow##1217
  accept Lightforge Ingots##526 |goto Wetlands 10.58,60.59
step
  note Gather 5 lightforge ingots, then return to Glorin Steelbrow in the Wetlands.
  get Lightforge Ingots |q 526 |goto Wetlands 10.58,60.59
step
  talk Archaeologist Flagongut##2911
  accept The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
  note Archaeologist Flagongut in Menethil Harbor wants you to bring him the Stone of Relu and Flagongut's Fossil.
  get The Absent Minded Prospector |q 943 |goto Wetlands 10.84,60.43
step
  talk Red Jack Flint##4455
  accept Fiora Longears##1132 |goto Wetlands 9.96,57.96
step
  talk Mikhail##4963
  accept The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  talk Vincent Hyal##5082
  accept James Hyal##1302 |goto Wetlands 8.39,61.75
step
  note Kill 12 Bluegill Murlocs.
  kill Bluegill Murloc##1024 |q 279 |goto Wetlands 15.26,39.92
step
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##274 |goto Loch Modan 46.05,13.61 |tip {turninat}Loch Modan
step
  talk Archbishop Benedictus##1284
  turnin Cleansing the Eye##293 |goto Stormwind City 39.59,27.19 |tip {turninat}Stormwind City
step
  talk Motley Garmason##1074
  turnin The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  talk Longbraid the Grim##1071
  turnin A Grim Task##304 |goto Wetlands 49.8,18.26
step
  talk Grimand Elmore##1416
  turnin Blessed Arm##322 |goto Stormwind City 51.76,12.08 |tip {turninat}Stormwind City
step
  talk Longbraid the Grim##1071
  turnin Fall of Dun Modr##472 |goto Wetlands 49.8,18.26
step
  turnin The Thandol Span##631 |goto Wetlands 51.28,7.95
step
  talk Rhag Garmason##1075
  turnin The Thandol Span##633 |goto Wetlands 49.9,18.24
step
  talk Motley Garmason##1074
  accept The Fury Runs Deep##378 |goto Wetlands 49.67,18.23
step
  note Motley Garmason wants Kam Deepfury's head brought to him at Dun Modr.
  get The Fury Runs Deep |q 378 |goto Wetlands 49.67,18.23
step
  talk Rhag Garmason##1075
  accept Plea To The Alliance##634 |goto Wetlands 49.9,18.24
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
  talk Rethiel the Greenwarden##1244
  accept Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  note Bring Rethiel the Greenwarden 9 Crude Flints.
  get Fire Taboo |q 277 |goto Wetlands 56.37,40.4
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
  talk Fiora Longears##4456
  turnin Fiora Longears##1132 |goto Darkshore 33.77,42.37 |tip {turninat}Darkshore
step
  talk Captain Nials##2700
  turnin Plea To The Alliance##634 |goto Arathi Highlands 45.83,47.56 |tip {turninat}Arathi Highlands
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
  talk Captain Stoutfist##2104
  accept War Banners##464 |goto Wetlands 9.86,57.49
step
  note Bring 8 Dragonmaw War Banners to Captain Stoutfist.
  get War Banners |q 464 |goto Wetlands 9.86,57.49
step
  talk James Halloran##2094
  accept Apprentice's Duties##471 |goto Wetlands 8.55,55.74
step
  note Collect 6 Giant Crocolisk Skins and bring them to James Halloran in Menethil Harbor.
  get Apprentice's Duties |q 471 |goto Wetlands 8.55,55.74
step
  talk Tapoke "Slim" Jahn##4962
  accept The Missing Diplomat##1250 |goto Wetlands 10.54,60.26
step
  note Kill 13 Cursed Sailors, 5 Cursed Marines and First Mate Snellig. Bring Snellig's Snuffbox to First Mate Fitzsimmons in Menethil Harbor.
  kill Cursed Sailor##1157 |q 289 |goto Wetlands 13.93,30.28
step
  talk Motley Garmason##1074
  turnin The Fury Runs Deep##378 |goto Wetlands 49.67,18.23
step
  talk Rethiel the Greenwarden##1244
  turnin Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  talk Rethiel the Greenwarden##1244
  accept Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##295 |goto Wetlands 38.18,50.89
step
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
  note Ormer Ironbraid at the Whelgar Excavation Site wants you to kill Sarltooth and return to him with one of his talons once the task is fulfilled.
  get Ormer's Revenge |q 296 |goto Wetlands 38.18,50.89
step
  turnin Reclaiming Goods##281 |goto Wetlands 13.52,41.38
step
  talk First Mate Fitzsimmons##1239
  turnin The Cursed Crew##289 |goto Wetlands 10.9,59.64
step
  talk Captain Stoutfist##2104
  turnin War Banners##464 |goto Wetlands 9.86,57.49
step
  talk James Halloran##2094
  turnin Apprentice's Duties##471 |goto Wetlands 8.55,55.74
step
  talk Mikhail##4963
  turnin The Missing Diplomat##1250 |goto Wetlands 10.6,60.77
step
  talk First Mate Fitzsimmons##1239
  accept Lifting the Curse##290 |goto Wetlands 10.9,59.64
step
  note Get the Intrepid Strongbox Key from Captain Halyndor.
  get Lifting the Curse |q 290 |goto Wetlands 10.9,59.64
step
  talk Captain Stoutfist##2104
  accept Nek'rosh's Gambit##465 |goto Wetlands 9.86,57.49
step
  talk Mikhail##4963
  accept The Missing Diplomat##1264 |goto Wetlands 10.6,60.77
step
  turnin Nek'rosh's Gambit##465 |goto Wetlands 47.46,47.01
step
  note Kill 8 Fen Creepers, then return to Rethiel the Greenwarden in the Wetlands.
  kill Fen Creeper##1040 |q 275 |goto Wetlands 33.01,32.92
step
  talk Rethiel the Greenwarden##1244
  turnin Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  talk Commander Samaul##4964
  turnin The Missing Diplomat##1264 |goto Dustwallow Marsh 68.02,48.71 |tip {turninat}Dustwallow Marsh
step
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
  turnin Lifting the Curse##290 |goto Wetlands 14.38,24.04
step
  note {travel}Ashenvale
  goto Ashenvale 35.77,49.1
]])
