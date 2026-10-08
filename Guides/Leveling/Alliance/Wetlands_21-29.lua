-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Wetlands (21-29)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Elwynn Forest (21-28)",
	rev = "f54b9f06",
}, [[
step
  only completed(161)
  talk Ashlan Stonesmirk##1073
  accept A Dark Threat Looms##274 |goto Wetlands 50.05,18.17
step
  talk Einar Stonegrip##2093
  accept Daily Delivery##469 |goto Wetlands 49.92,39.37
step
  note {fp}Shellei Brondir
  goto Wetlands 9.49,59.69 |tip {vendor}
step
  talk James Halloran##2094
  turnin Daily Delivery##469 |goto Wetlands 8.55,55.74
step
  talk Karl Boran##1242
  accept Claws from the Deep##279 |goto Wetlands 8.32,58.57
step
  talk First Mate Fitzsimmons##1239
  accept The Greenwarden##463 |goto Wetlands 10.9,59.64
step
  talk James Halloran##2094
  accept Young Crocolisk Skins##484 |goto Wetlands 8.55,55.74
step
  talk Valstag Ironjaw##2086
  accept Spoils of War##98197 |goto Wetlands 10.1,56.9
step
  note Kill 12 Bluegill Murlocs.
  kill Bluegill Murloc##1024 |q 279 |goto Wetlands 15.26,39.83
step
  note Recover 6 Khaz Modan Timber and 30 Khaz Modan Iron from Menethil Harbor for Valstag Ironjaw.
  collect Khaz Modan Timber##279821 |q 98197 |goto Wetlands 6,52.8
step
  talk Karl Boran##1242
  turnin Claws from the Deep##279 |goto Wetlands 8.32,58.57
step
  talk Valstag Ironjaw##2086
  turnin Spoils of War##98197 |goto Wetlands 10.1,56.9
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
  talk Rethiel the Greenwarden##1244
  turnin The Greenwarden##463 |goto Wetlands 56.37,40.4
step
  talk Rethiel the Greenwarden##1244
  accept Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  note Obtain 4 Young Crocolisk Skins for James Halloran in Menethil Harbor.
  collect 4 Young Crocolisk Skin##3397 |q 484 |goto Wetlands 55.11,45.65 |tip {dropsfrom}Young Wetlands Crocolisk
step
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
  note Ormer Ironbraid at the Whelgar Excavation Site wants you to kill 10 Mottled Screechers and 10 Mottled Raptors.
  kill Mottled Raptor##1020 |q 294 |goto Wetlands 23.89,47.15
step
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
  talk James Halloran##2094
  turnin Young Crocolisk Skins##484 |goto Wetlands 8.55,55.74
step
  talk Tarrel Rockweaver##2096
  accept In Search of The Excavation Team##305 |goto Wetlands 11.5,52.17
step
  talk Sida##2111
  accept Digging Through the Ooze##470 |goto Wetlands 11.8,57.99
step
  only completed(942)
  talk Archaeologist Flagongut##2911
  accept The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
  note Kill 15 Mosshide Gnolls and 10 Mosshide Mongrels, then return to Rethiel the Greenwarden in the Wetlands.
  kill Mosshide Gnoll##1007 |q 276 |goto Wetlands 61.89,71.88
step
  note One of the oozes at Ironbeard's Tomb has Sida's bag, retrieve it and bring it back to her in Menethil Harbor.
  collect Sida's Bag##3349 |q 470 |goto Wetlands 44.63,24.76 |tip {dropsfrom}Crimson Ooze, Black Ooze, Monstrous Ooze
step
  talk Rethiel the Greenwarden##1244
  turnin Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  talk Rethiel the Greenwarden##1244
  accept Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  note Bring Rethiel the Greenwarden 9 Crude Flints.
  collect Crude Flint##2611 |q 277 |goto Wetlands 61.2,58.26 |tip {dropsfrom}Mosshide Mistweaver, Mosshide Fenrunner, Mosshide Trapper
step
  talk Rethiel the Greenwarden##1244
  turnin Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  talk Merrin Rockweaver##1076
  turnin In Search of The Excavation Team##305 |goto Wetlands 38.91,52.34
step
  talk Merrin Rockweaver##1076
  accept In Search of The Excavation Team##306 |goto Wetlands 38.91,52.34
step
  only completed(942)
  note Archaeologist Flagongut in Menethil Harbor wants you to bring him the Stone of Relu and Flagongut's Fossil.
  collect Stone of Relu##5233 |q 943 |goto Wetlands 23.89,47.15 |tip {dropsfrom}Mottled Raptor, Mottled Screecher, Mottled Scytheclaw
step
  talk Tarrel Rockweaver##2096
  turnin In Search of The Excavation Team##306 |goto Wetlands 11.5,52.17
step
  talk Sida##2111
  turnin Digging Through the Ooze##470 |goto Wetlands 11.8,57.99
step
  only completed(942)
  talk Archaeologist Flagongut##2911
  turnin The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
  talk Karl Boran##1242
  accept Reclaiming Goods##281 |goto Wetlands 8.32,58.57
step
  talk James Halloran##2094
  accept Apprentice's Duties##471 |goto Wetlands 8.55,55.74
step
  turnin Reclaiming Goods##281 |goto Wetlands 13.52,41.38
step
  click Damaged Crate##261
  accept The Search Continues##284 |goto Wetlands 13.52,41.38
step
  turnin The Search Continues##284 |goto Wetlands 13.6,38.22
step
  click Sealed Barrel##142151
  accept Search More Hovels##285 |goto Wetlands 13.6,38.22
step
  turnin Search More Hovels##285 |goto Wetlands 13.94,34.81
step
  click Half-buried Barrel##259
  accept Return the Statuette##286 |goto Wetlands 13.94,34.81
step
  talk Karl Boran##1242
  turnin Return the Statuette##286 |goto Wetlands 8.32,58.57
step
  talk First Mate Fitzsimmons##1239
  accept The Third Fleet##288 |goto Wetlands 10.9,59.64
step
  note Buy First Mate Fitzsimmons a Flagon of Mead.
  buy Flagon of Mead##2594 |q 288 |goto Stranglethorn Vale 27.04,77.17
step
  talk Harlo Barnaby##2097
  accept Fall of Dun Modr##472 |goto Wetlands 10.85,55.9
step
  talk First Mate Fitzsimmons##1239
  turnin The Third Fleet##288 |goto Wetlands 10.9,59.64
step
  talk Longbraid the Grim##1071
  turnin Fall of Dun Modr##472 |goto Wetlands 49.8,18.26
step
  note Collect 6 Giant Crocolisk Skins and bring them to James Halloran in Menethil Harbor.
  collect 6 Giant Crocolisk Skin##3348 |q 471 |goto Wetlands 19.03,24.79 |tip {dropsfrom}Giant Wetlands Crocolisk
step
  talk Rethiel the Greenwarden##1244
  accept Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##295 |goto Wetlands 38.18,50.89
step
  talk Prospector Whelgar##1077
  accept Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
  note Ormer Ironbraid wants you to kill 10 Mottled Scytheclaw raptors and 10 Mottled Razormaw raptors then return to him at the Whelgar Excavation Site.
  kill Mottled Scytheclaw##1022 |q 295 |goto Wetlands 35.3,49.49
step
  note Prospector Whelgar wants you to scour the excavation site in search of the 4 missing tablet fragments: Ados, Modr, Golm and Neru.
  collect Ados Fragment##2658 |q 299 |goto Wetlands 35,47.9 |tip {dropsfrom}Ancient Relic
step
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##295 |goto Wetlands 38.18,50.89
step
  talk Prospector Whelgar##1077
  turnin Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
  talk James Halloran##2094
  turnin Apprentice's Duties##471 |goto Wetlands 8.55,55.74
step
  only completed(455)
  talk Valstag Ironjaw##2086
  accept Report to Captain Stoutfist##473 |goto Wetlands 10.1,56.9
step
  only completed(455)
  talk Captain Stoutfist##2104
  turnin Report to Captain Stoutfist##473 |goto Wetlands 9.86,57.49
step
  talk Captain Stoutfist##2104
  accept War Banners##464 |goto Wetlands 9.86,57.49
step
  note Kill 12 Fen Creepers, then return to Rethiel the Greenwarden in the Wetlands.
  kill Fen Creeper##1040 |q 275 |goto Wetlands 35.56,33.45
step
  note Bring 8 Dragonmaw War Banners to Captain Stoutfist.
  collect 8 Dragonmaw War Banner##3337 |q 464 |goto Wetlands 45.83,45.42 |tip {dropsfrom}Dragonmaw Raider, Dragonmaw Swamprunner, Dragonmaw Centurion
step
  talk Rethiel the Greenwarden##1244
  turnin Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  talk Captain Stoutfist##2104
  turnin War Banners##464 |goto Wetlands 9.86,57.49
step
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
  note Ormer Ironbraid at the Whelgar Excavation Site wants you to kill Sarltooth and return to him with one of his talons once the task is fulfilled.
  collect Sarltooth's Talon##3638 |q 296 |goto Wetlands 33.26,51.51 |tip {dropsfrom}Sarltooth
step
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
  talk First Mate Fitzsimmons##1239
  accept The Cursed Crew##289 |goto Wetlands 10.9,59.64
step
  only not completed(322) not completed(324) not haveq(322) not haveq(324)
  talk Glorin Steelbrow##1217
  accept Lightforge Ingots##526 |goto Wetlands 10.58,60.59
step
  note Kill 13 Cursed Sailors, 5 Cursed Marines and First Mate Snellig. Bring Snellig's Snuffbox to First Mate Fitzsimmons in Menethil Harbor.
  kill Cursed Sailor##1157 |q 289 |goto Wetlands 14.03,30.28
step
  only not completed(322) not completed(324) not haveq(322) not haveq(324)
  note Gather 5 lightforge ingots, then return to Glorin Steelbrow in the Wetlands.
  collect 5 Lightforge Ingot##2702 |q 526 |goto Wetlands 12.62,64.32 |tip {dropsfrom}Bluegill Raider
step
  talk First Mate Fitzsimmons##1239
  turnin The Cursed Crew##289 |goto Wetlands 10.9,59.64
step
  only not completed(322) not completed(324) not haveq(322) not haveq(324)
  talk Glorin Steelbrow##1217
  turnin Lightforge Ingots##526 |goto Wetlands 10.58,60.59
step
  only completed(161)
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##274 |goto Loch Modan 46.05,13.61 |tip {turninat}Loch Modan
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Call of Water##94501 |goto Loch Modan 41.89,19.03 |tip {turninat}Loch Modan
step
  only Warrior completed(1702)
  talk Furen Longbeard##5413
  accept Fire Hardened Mail##1701 |goto Stormwind City 64.62,37.23
step
  only completed(269)
  talk Bishop Farthing##1212
  accept The Doomed Fleet##270 |goto Stormwind City 49.93,45.99
step
  only completed(391)
  talk Warden Thelwater##1719
  accept The Curious Visitor##392 |goto Stormwind City 51.49,69.38
step
  only Warrior completed(1702)
  note Gather the materials Furen Longbeard requires, and bring them to him in Stormwind.
  collect Scorched Spider Fang##6838 |q 1701 |goto Wetlands 52.66,63.02 |tip {dropsfrom}Leech Stalker, Cave Stalker
step
  only Warrior completed(1702)
  talk Furen Longbeard##5413
  turnin Fire Hardened Mail##1701 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  only completed(269)
  talk Glorin Steelbrow##1217
  turnin The Doomed Fleet##270 |goto Wetlands 10.58,60.59
step
  only completed(391)
  talk Baros Alexston##1646
  turnin The Curious Visitor##392 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  only completed(161)
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##278 |goto Loch Modan 46.05,13.61
step
  only completed(269)
  talk Glorin Steelbrow##1217
  accept Lightforge Iron##321 |goto Wetlands 10.58,60.59
step
  only completed(391)
  talk Baros Alexston##1646
  accept Shadow of the Past##393 |goto Stormwind City 57.74,47.86
step
  only completed(161)
  note Chief Engineer Hinderweir wants you to gather Lurker Venom, a Mo'grosh Crystal, and a Crocolisk Tear.
  collect Lurker Venom##2606 |q 278 |goto Loch Modan 62.62,64.13 |tip {dropsfrom}Cliff Lurker, Wood Lurker, Forest Lurker
step
  only completed(161)
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##278 |goto Loch Modan 46.05,13.61 |tip {turninat}Loch Modan
step
  only completed(269)
  turnin Lightforge Iron##321 |goto Wetlands 12.11,64.19
step
  only completed(391)
  talk Master Mathias Shaw##332
  turnin Shadow of the Past##393 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(161)
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##280 |goto Loch Modan 46.05,13.61
step
  only completed(269)
  click Waterlogged Chest##2734
  accept The Lost Ingots##324 |goto Wetlands 12.11,64.19
step
  only completed(269)
  note Gather 5 Lightforge Ingots, then return to Glorin Steelbrow in the Wetlands.
  collect 5 Lightforge Ingot##2702 |q 324 |goto Wetlands 12.62,64.32 |tip {dropsfrom}Bluegill Raider
step
  only completed(161)
  turnin A Dark Threat Looms##280 |goto Loch Modan 50.58,14.3 |tip {turninat}Loch Modan
step
  only completed(269)
  talk Glorin Steelbrow##1217
  turnin The Lost Ingots##324 |goto Wetlands 10.58,60.59
step
  only completed(161)
  click Explosive Charge##1585
  accept A Dark Threat Looms##283 |goto Loch Modan 50.58,14.3
step
  only completed(269)
  talk Glorin Steelbrow##1217
  accept Blessed Arm##322 |goto Wetlands 10.58,60.59
step
  only completed(161)
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##283 |goto Loch Modan 46.05,13.61 |tip {turninat}Loch Modan
step
  only completed(269)
  talk Grimand Elmore##1416
  turnin Blessed Arm##322 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  note {travel}Elwynn Forest
  goto Elwynn Forest 65.22,69.71
]])
