-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Wetlands (21-29)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Elwynn Forest (21-28)",
	rev = "5e2ad300",
}, [[
step
  ding 20
step
  only completed(161)
  talk Ashlan Stonesmirk##1073
  accept A Dark Threat Looms##274 |goto Wetlands 50.05,18.17
step
  note {fp}Shellei Brondir
  goto Wetlands 9.49,59.69 |tip {vendor}
step
  only level>=20
  talk Karl Boran##1242
  accept Claws from the Deep##279 |goto Wetlands 8.32,58.57
step
  only level>=20
  talk First Mate Fitzsimmons##1239
  accept The Greenwarden##463 |goto Wetlands 10.9,59.64
step
  talk James Halloran##2094
  accept Young Crocolisk Skins##484 |goto Wetlands 8.55,55.74
step
  talk Valstag Ironjaw##2086
  accept Spoils of War##98197 |goto Wetlands 10.1,56.9
step
  only level>=20
  talk Caitlin Grassman##1480
  accept Alchemical Hazards##98282 |goto Wetlands 11.88,58.82
step
  only haveq(279)
  note Kill 12 Bluegill Murlocs.
  kill Bluegill Murloc##1024 |q 279 |goto Wetlands 15.26,39.83
step
  note Recover 6 Khaz Modan Timber and 30 Khaz Modan Iron from Menethil Harbor for Valstag Ironjaw.
  collect 30 Khaz Modan Iron##279822 |q 98197/2 |goto Wetlands 11.4,53
  collect 6 Khaz Modan Timber##279821 |q 98197 |goto Wetlands 6,52.8
step
  only haveq(279)
  talk Karl Boran##1242
  turnin Claws from the Deep##279 |goto Wetlands 8.32,58.57
step
  talk Valstag Ironjaw##2086
  turnin Spoils of War##98197 |goto Wetlands 10.1,56.9
step
  only haveq(463)
  note Find the Greenwarden.
  talk Rethiel the Greenwarden##1244
  turnin The Greenwarden##463 |goto Wetlands 56.37,40.4
step
  only level>=20
  talk Rethiel the Greenwarden##1244
  accept Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  note Obtain 4 Young Crocolisk Skins for James Halloran in Menethil Harbor.
  collect 4 Young Crocolisk Skin##3397 |q 484 |goto Wetlands 55.11,45.65 |tip {dropsfrom}Young Wetlands Crocolisk
step
  talk Einar Stonegrip##2093
  accept Daily Delivery##469 |goto Wetlands 49.92,39.37
step
  only haveq(98282)
  note Collect an Unruptured Stalker Gland from Thelgen Rock for Caitlin Grassman in Menethil Harbor.
  collect Unruptured Stalker Gland##280319 |q 98282 |goto Wetlands 52.66,63.02 |tip {dropsfrom}Leech Stalker, Cave Stalker
step
  note Deliver the Bundle of Crocolisk Skins to James Halloran, the tanner, in Menethil Harbor.
  talk James Halloran##2094
  turnin Daily Delivery##469 |goto Wetlands 8.55,55.74
step
  talk James Halloran##2094
  turnin Young Crocolisk Skins##484 |goto Wetlands 8.55,55.74
step
  only haveq(98282)
  talk Caitlin Grassman##1480
  turnin Alchemical Hazards##98282 |goto Wetlands 11.88,58.82
step
  talk Sida##2111
  accept Digging Through the Ooze##470 |goto Wetlands 11.8,57.99
step
  only completed(942)
  talk Archaeologist Flagongut##2911
  accept The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
  only level>=21
  talk Tarrel Rockweaver##2096
  accept In Search of The Excavation Team##305 |goto Wetlands 11.5,52.17
step
  only haveq(305)
  note Tarrel Rockweaver wants you to travel to the Excavation Site and contact Merrin Rockweaver.
  talk Merrin Rockweaver##1076
  turnin In Search of The Excavation Team##305 |goto Wetlands 38.91,52.34
step
  only level>=22
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
  only completed(305) level>=21
  talk Merrin Rockweaver##1076
  accept In Search of The Excavation Team##306 |goto Wetlands 38.91,52.34
step
  note One of the oozes at Ironbeard's Tomb has Sida's bag, retrieve it and bring it back to her in Menethil Harbor.
  collect Sida's Bag##3349 |q 470 |goto Wetlands 44.63,24.76 |tip {dropsfrom}Crimson Ooze, Black Ooze, Monstrous Ooze
step
  only haveq(294)
  note Ormer Ironbraid at the Whelgar Excavation Site wants you to kill 10 Mottled Screechers and 10 Mottled Raptors.
  kill Mottled Raptor##1020 |q 294/1 |goto Wetlands 23.89,47.15
  kill Mottled Screecher##1021 |q 294 |goto Wetlands 24.22,52.53
step
  only completed(942)
  note Archaeologist Flagongut in Menethil Harbor wants you to bring him the Stone of Relu and Flagongut's Fossil.
  collect Stone of Relu##5233 |q 943/1 |goto Wetlands 23.89,47.15 |tip {dropsfrom}Mottled Raptor, Mottled Screecher, Mottled Scytheclaw
  collect Flagongut's Fossil##5234 |q 943 |goto Wetlands 38.86,52.21
step
  only haveq(294)
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
  talk Sida##2111
  turnin Digging Through the Ooze##470 |goto Wetlands 11.8,57.99
step
  only completed(942)
  talk Archaeologist Flagongut##2911
  turnin The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
  only completed(279)
  talk Karl Boran##1242
  accept Reclaiming Goods##281 |goto Wetlands 8.32,58.57
step
  talk Karl Boran##1242
  accept Return the Statuette##98189 |goto Wetlands 8.32,58.57
step
  talk Captain Stoutfist##2104
  accept A Friend of the Family##98190 |goto Wetlands 9.86,57.49
step
  note Bring the Menethil Statuette to Captain Stoutfist in Menethil Keep.
  talk Captain Stoutfist##2104
  turnin Return the Statuette##98189 |goto Wetlands 9.86,57.49
step
  only haveq(281)
  note Search the crates and barrels at the coastal Murloc camps.
  turnin Reclaiming Goods##281 |goto Wetlands 13.52,41.38
step
  only completed(281)
  click Damaged Crate##261
  accept The Search Continues##284 |goto Wetlands 13.52,41.38
step
  only haveq(284)
  note Search for the Menethil Statuette.
  turnin The Search Continues##284 |goto Wetlands 13.6,38.22
step
  only completed(284)
  click Sealed Barrel##142151
  accept Search More Hovels##285 |goto Wetlands 13.6,38.22
step
  only haveq(285)
  note Continue searching the Murloc hovels for the Menethil Statuette.
  turnin Search More Hovels##285 |goto Wetlands 13.94,34.81
step
  only completed(285)
  click Half-buried Barrel##259
  accept Return the Statuette##286 |goto Wetlands 13.94,34.81
step
  only haveq(306)
  note Return to Tarrel Rockweaver with Merrin's note.
  talk Tarrel Rockweaver##2096
  turnin In Search of The Excavation Team##306 |goto Wetlands 11.5,52.17
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94497 |goto Wetlands 65.75,76.45
step
  only Shaman
  note Fill the Empty Brown Waterskin at the bottom of the waterfalls below Hervdana's cave and return it to her in the Wetlands.
  collect Full Brown Waterskin##265734 |q 94497 |goto Wetlands 65.75,76.45
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94499 |goto Wetlands 65.75,76.45
step
  only Shaman
  note Fill the Empty Red Waterskin at Stonewatch Falls near the Nightcrawler Murlocs and return to Hervdana Saegrund in the Wetlands.
  collect Full Red Waterskin##265748 |q 94499 |goto Wetlands 65.75,76.45
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94500 |goto Wetlands 65.75,76.45
step
  only Shaman
  note Fill the Unfilled Blue Waterskin at the waters of Astranaar in Ashenvale and return to Hervdana Saegrund in the Wetlands.
  collect Full Blue Waterskin##265773 |q 94500 |goto Wetlands 65.75,76.45
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94501 |goto Wetlands 65.75,76.45
step
  only haveq(276)
  note Kill 15 Mosshide Gnolls and 10 Mosshide Mongrels, then return to Rethiel the Greenwarden in the Wetlands.
  kill Mosshide Mongrel##1008 |q 276/2 |goto Wetlands 60.74,64.31
  kill Mosshide Gnoll##1007 |q 276 |goto Wetlands 61.89,71.88
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94497 |goto Wetlands 65.75,76.45
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94499 |goto Wetlands 65.75,76.45
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94500 |goto Wetlands 65.75,76.45
step
  only haveq(276)
  talk Rethiel the Greenwarden##1244
  turnin Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  only completed(276)
  talk Rethiel the Greenwarden##1244
  accept Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  only haveq(277)
  note Bring Rethiel the Greenwarden 9 Crude Flints.
  collect 9 Crude Flint##2611 |q 277 |goto Wetlands 61.2,58.26 |tip {dropsfrom}Mosshide Mistweaver, Mosshide Fenrunner, Mosshide Trapper
step
  only haveq(277)
  talk Rethiel the Greenwarden##1244
  turnin Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  only completed(277)
  talk Rethiel the Greenwarden##1244
  accept Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  only haveq(275)
  note Kill 12 Fen Creepers, then return to Rethiel the Greenwarden in the Wetlands.
  kill Fen Creeper##1040 |q 275 |goto Wetlands 35.56,33.45
step
  only haveq(275)
  talk Rethiel the Greenwarden##1244
  turnin Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  only haveq(286)
  note Bring Karl Boran the Menethil Statuette.
  talk Karl Boran##1242
  turnin Return the Statuette##286 |goto Wetlands 8.32,58.57
step
  talk James Halloran##2094
  accept Apprentice's Duties##471 |goto Wetlands 8.55,55.74
step
  note Collect 6 Giant Crocolisk Skins and bring them to James Halloran in Menethil Harbor.
  collect 6 Giant Crocolisk Skin##3348 |q 471 |goto Wetlands 19.03,24.79 |tip {dropsfrom}Giant Wetlands Crocolisk
step
  talk James Halloran##2094
  turnin Apprentice's Duties##471 |goto Wetlands 8.55,55.74
step
  only level>=22
  talk First Mate Fitzsimmons##1239
  accept The Third Fleet##288 |goto Wetlands 10.9,59.64
step
  only haveq(288)
  note Buy First Mate Fitzsimmons a Flagon of Mead.
  talk Innkeeper Helbrek##1464
  buy Flagon of Mead##2594 |q 288 |goto Wetlands 10.7,60.95
step
  only level>=25
  talk Harlo Barnaby##2097
  accept Fall of Dun Modr##472 |goto Wetlands 10.85,55.9
step
  talk James Halloran##2094
  accept Crocs of the Sky##98072 |goto Wetlands 8.55,55.74
step
  only haveq(288)
  talk First Mate Fitzsimmons##1239
  turnin The Third Fleet##288 |goto Wetlands 10.9,59.64
step
  only completed(294) level>=22
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##295 |goto Wetlands 38.18,50.89
step
  only level>=22
  talk Prospector Whelgar##1077
  accept Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
  only haveq(295)
  note Ormer Ironbraid wants you to kill 10 Mottled Scytheclaw raptors and 10 Mottled Razormaw raptors then return to him at the Whelgar Excavation Site.
  kill Mottled Scytheclaw##1022 |q 295/1 |goto Wetlands 35.3,49.49
  kill Mottled Razormaw##1023 |q 295 |goto Wetlands 33.85,48.27
step
  only haveq(299)
  note Prospector Whelgar wants you to scour the excavation site in search of the 4 missing tablet fragments: Ados, Modr, Golm and Neru.
  collect Ados Fragment##2658 |q 299 |goto Wetlands 35,47.9 |tip {dropsfrom}Ancient Relic
step
  only haveq(295)
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##295 |goto Wetlands 38.18,50.89
step
  only haveq(299)
  talk Prospector Whelgar##1077
  turnin Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
  note Collect 8 Pristine Crimson Scales and bring them to James Halloran in Menethil Harbor.
  collect 8 Pristine Crimson Scale##279385 |q 98072 |goto Wetlands 63.43,48.8 |tip {dropsfrom}Red Whelp, Lost Whelp, Flamesnorting Whelp
step
  only haveq(472)
  note Search for Longbraid near the town of Dun Modr.
  talk Longbraid the Grim##1071
  turnin Fall of Dun Modr##472 |goto Wetlands 49.8,18.26
step
  talk James Halloran##2094
  turnin Crocs of the Sky##98072 |goto Wetlands 8.55,55.74
step
  only completed(455) level>=23
  talk Valstag Ironjaw##2086
  accept Report to Captain Stoutfist##473 |goto Wetlands 10.1,56.9
step
  only level>=23
  talk Captain Stoutfist##2104
  accept From the Ashes##98221 |goto Wetlands 9.86,57.49
step
  only completed(455) haveq(473)
  note Speak with Captain Stoutfist.
  talk Captain Stoutfist##2104
  turnin Report to Captain Stoutfist##473 |goto Wetlands 9.86,57.49
step
  only level>=23
  talk Captain Stoutfist##2104
  accept War Banners##464 |goto Wetlands 9.86,57.49
step
  only completed(288) level>=22
  talk First Mate Fitzsimmons##1239
  accept The Cursed Crew##289 |goto Wetlands 10.9,59.64
step
  only not completed(322) not completed(324) not haveq(322) not haveq(324)
  talk Glorin Steelbrow##1217
  accept Lightforge Ingots##526 |goto Wetlands 10.58,60.59
step
  talk Sylessa Duskwhisper##270844
  accept Bloom of the Heavens##98208 |goto Wetlands 7.96,55.85
step
  note Recover Nord'el for Sylessa Duskwhisper in Menethil Harbor.
  collect Nord'el##279915 |q 98208 |goto Wetlands 7.96,55.85
step
  only level>=22
  talk Captain Stoutfist##2104
  accept This Land Was Their Land##98230 |goto Wetlands 9.86,57.49
step
  talk James Halloran##2094
  accept Crimson Crate Delivery##98240 |goto Wetlands 8.55,55.74
step
  talk Sylessa Duskwhisper##270844
  turnin Bloom of the Heavens##98208 |goto Wetlands 7.96,55.85
step
  only not completed(322) not completed(324) not haveq(322) not haveq(324)
  note Gather 5 lightforge ingots, then return to Glorin Steelbrow in the Wetlands.
  collect 5 Lightforge Ingot##2702 |q 526 |goto Wetlands 12.62,64.32 |tip {dropsfrom}Bluegill Raider
step
  only haveq(289)
  note Kill 13 Cursed Sailors, 5 Cursed Marines and First Mate Snellig. Bring Snellig's Snuffbox to First Mate Fitzsimmons in Menethil Harbor.
  kill Cursed Sailor##1157 |q 289 |goto Wetlands 14.03,30.28
step
  only haveq(289)
  talk First Mate Fitzsimmons##1239
  turnin The Cursed Crew##289 |goto Wetlands 10.9,59.64
step
  only not completed(322) not completed(324) not haveq(322) not haveq(324)
  talk Glorin Steelbrow##1217
  turnin Lightforge Ingots##526 |goto Wetlands 10.58,60.59
step
  only completed(295)
  talk Ormer Ironbraid##1078
  accept Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
  only haveq(296)
  note Ormer Ironbraid at the Whelgar Excavation Site wants you to kill Sarltooth and return to him with one of his talons once the task is fulfilled.
  collect Sarltooth's Talon##3638 |q 296 |goto Wetlands 33.26,51.51 |tip {dropsfrom}Sarltooth
step
  only haveq(296)
  talk Ormer Ironbraid##1078
  turnin Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
  only haveq(98221)
  note Captain Stoutfist in Menethil Keep wants you to destroy the 4 sets of Attack Plans in the Angerfang Encampment.
  get From the Ashes |q 98221 |goto Wetlands 53.25,54.08
step
  only haveq(98230)
  note Find Howin Kindfeather east of Menethil Harbor, along the road.
  talk Howin Kindfeather##270637
  turnin This Land Was Their Land##98230 |goto Wetlands 49.36,42.05
step
  note Bring the Crimson Crate to Howin Kindfeather off the road to the east of Menethil Harbor.
  talk Howin Kindfeather##270637
  turnin Crimson Crate Delivery##98240 |goto Wetlands 49.36,42.05
step
  talk Howin Kindfeather##270637
  accept Razormaw Needling##98245 |goto Wetlands 49.36,42.05
step
  talk Howin Kindfeather##270637
  accept Trying Times##98246 |goto Wetlands 49.36,42.05
step
  note Gather 12 Perfect Razormaw Eggs for Howin Kindfeather.
  collect 12 Perfect Razormaw Egg##280132 |q 98246 |goto Wetlands 49.36,42.05
step
  only haveq(464)
  note Bring 8 Dragonmaw War Banners to Captain Stoutfist.
  collect 8 Dragonmaw War Banner##3337 |q 464 |goto Wetlands 45.83,45.42 |tip {dropsfrom}Dragonmaw Raider, Dragonmaw Swamprunner, Dragonmaw Centurion
step
  talk Howin Kindfeather##270637
  turnin Trying Times##98246 |goto Wetlands 49.36,42.05
step
  note Collect 10 Razormaw Incisors for Howin Kindfeather.
  collect 10 Razormaw Incisor##280103 |q 98245 |goto Wetlands 67.84,30.74 |tip {dropsfrom}Highland Razormaw, Elder Razormaw
step
  talk Howin Kindfeather##270637
  turnin Razormaw Needling##98245 |goto Wetlands 49.36,42.05
step
  only haveq(464)
  talk Captain Stoutfist##2104
  turnin War Banners##464 |goto Wetlands 9.86,57.49
step
  only haveq(98221)
  talk Captain Stoutfist##2104
  turnin From the Ashes##98221 |goto Wetlands 9.86,57.49
step
  only completed(161)
  note Ashlan Stonesmirk wants you to return to Chief Engineer Hinderweir and inform him of the new discovery.
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##274 |goto Loch Modan 46.05,13.61 |tip {turninat}Loch Modan
step
  only completed(161)
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##278 |goto Loch Modan 46.05,13.61
step
  only Shaman
  note Bring the Vial of Purest Water to Norric Lochthane in Loch Modan.
  talk Norric Lochthane##258043
  turnin Call of Water##94501 |goto Loch Modan 41.86,19.02 |tip {turninat}Loch Modan
step
  only completed(161)
  note Chief Engineer Hinderweir wants you to gather Lurker Venom, a Mo'grosh Crystal, and a Crocolisk Tear.
  kill Mo'grosh Ogre##1178 |q 278/2 |goto Loch Modan 69.67,25.54 |elite
  collect Mo'grosh Crystal##2607 |q 278/2 |goto Loch Modan 69.67,25.54
  collect Crocolisk Tear##2939 |q 278/3 |goto Loch Modan 56.87,39.12 |tip {dropsfrom}Loch Crocolisk, Daggerfang, Large Loch Crocolisk
  collect Lurker Venom##2606 |q 278 |goto Loch Modan 62.62,64.13 |tip {dropsfrom}Cliff Lurker, Wood Lurker, Forest Lurker
step
  only completed(161)
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##278 |goto Loch Modan 46.05,13.61 |tip {turninat}Loch Modan
step
  only completed(161)
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##280 |goto Loch Modan 46.05,13.61
step
  only completed(161)
  note Chief Engineer Hinderweir wants you to swim down to the base of the dam, locate the powder keg and stir in the Disarming Mixture to prevent an explosion.
  turnin A Dark Threat Looms##280 |goto Loch Modan 50.58,14.3 |tip {turninat}Loch Modan
step
  only completed(161)
  click Explosive Charge##1585
  accept A Dark Threat Looms##283 |goto Loch Modan 50.58,14.3
step
  only completed(161)
  note The Disarming Mixture seemed to take effect. Return to Chief Engineer Hinderweir to report the good news.
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##283 |goto Loch Modan 46.05,13.61 |tip {turninat}Loch Modan
step
  note Bring the Menethil Statuette to Highlord Bolvar Fordragon in Stormwind Keep.
  talk Highlord Bolvar Fordragon##1748
  turnin A Friend of the Family##98190 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  only completed(269)
  talk Bishop Farthing##1212
  accept The Doomed Fleet##270 |goto Stormwind City 49.93,45.99
step
  only completed(269)
  note Go to Menethil Harbor in the Wetlands, and speak with Glorin Steelbrow.
  talk Glorin Steelbrow##1217
  turnin The Doomed Fleet##270 |goto Wetlands 10.58,60.59
step
  only completed(269)
  talk Glorin Steelbrow##1217
  accept Lightforge Iron##321 |goto Wetlands 10.58,60.59
step
  only completed(269)
  note Search the wreckage of The Flying Osprey in the Wetlands.
  turnin Lightforge Iron##321 |goto Wetlands 12.11,64.19
step
  only completed(269)
  click Waterlogged Chest##2734
  accept The Lost Ingots##324 |goto Wetlands 12.11,64.19
step
  only completed(269)
  note Gather 5 Lightforge Ingots, then return to Glorin Steelbrow in the Wetlands.
  collect 5 Lightforge Ingot##2702 |q 324 |goto Wetlands 12.62,64.32 |tip {dropsfrom}Bluegill Raider
step
  only completed(269)
  talk Glorin Steelbrow##1217
  turnin The Lost Ingots##324 |goto Wetlands 10.58,60.59
step
  only completed(269)
  talk Glorin Steelbrow##1217
  accept Blessed Arm##322 |goto Wetlands 10.58,60.59
step
  only completed(269)
  note Take the Crate of Lightforge Ingots to Grimand Elmore in Stormwind.
  talk Grimand Elmore##1416
  turnin Blessed Arm##322 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  note {travel}Stormwind City
  goto Stormwind City 55.04,54.16
]])
