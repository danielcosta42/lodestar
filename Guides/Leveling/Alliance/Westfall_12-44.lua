-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Westfall (12-44)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Darkshore (12-20)",
}, [[
step
  note {fp}Thor
  goto Westfall 56.55,52.64 |tip {vendor}
step
  talk Verna Furlbrow##238
  accept Westfall Stew##36 |goto Westfall 59.92,19.42
step
  talk Farmer Furlbrow##237
  accept The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
step
  note Farmer Furlbrow wants you to retrieve his pocket watch from the wardrobe in his farmhouse at the pumpkin farm to the West.
  collect Furlbrow's Pocket Watch##841 |q 64 |goto Westfall 49.33,19.28 |tip {dropsfrom}Furlbrow's Wardrobe
step
  kill Murloc Coastrunner##126 |goto Westfall 45.37,8.99 |tip Loot the quest item here — it starts the quest.
  accept Captain Sander's Hidden Treasure##136 |goto Westfall 45.37,8.99
step
  talk Verna Furlbrow##238
  accept Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
  note Verna Furlbrow in Westfall wants you to bring her 8 Handfuls of Oats.
  collect Handful of Oats##1528 |q 151 |goto Westfall 49.67,34.48 |tip {dropsfrom}Sack of Oats, Noggle's Satchel
step
  talk Prospector Stormpike##1356
  accept Powder to Ironband##302 |goto Ironforge 74.64,11.74
step
  talk Grimand Elmore##1416
  accept Stormpike's Delivery##353 |goto Stormwind City 51.76,12.08
step
  only Mage
  talk Dink##7312
  accept Report to Jennea##1919 |goto Ironforge 27.16,8.57
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Kingly Shakedown##2298 |goto Ironforge 51.96,14.84
step
  talk Mountaineer Stormpike##1343
  turnin Stormpike's Delivery##353 |goto Loch Modan 24.76,18.4 |tip {turninat}Loch Modan
step
  talk Salma Saldean##235
  turnin Westfall Stew##36 |goto Westfall 56.42,30.52
step
  talk Farmer Saldean##233
  accept The Killing Fields##9 |goto Westfall 56.04,31.23
step
  talk Salma Saldean##235
  accept Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  note Salma Saldean needs 8 Goretusk livers to make a Goretusk Liver Pie.
  collect Goretusk Liver##723 |q 22 |goto Westfall 43.87,56.93 |tip {dropsfrom}Goretusk, Bellygrub, Young Goretusk
step
  talk Salma Saldean##235
  accept Westfall Stew##38 |goto Westfall 56.42,30.52
step
  note Salma Saldean wants 3 Stringy Vulture Meat, 3 Goretusk Snouts, 3 Murloc Eyes, 3 Okra.
  collect Stringy Vulture Meat##729 |q 38 |goto Westfall 59.4,54.85 |tip {dropsfrom}Greater Fleshripper, Young Fleshripper, Vultros
step
  talk Baros Alexston##1646
  accept Humble Beginnings##399 |goto Stormwind City 49.19,30.28
step
  note Go to Baros Alexston's house in Westfall and search for his compass, then return it to him in Cathedral Square of Stormwind.
  collect Humble Beginnings##2998 |q 399 |goto Stormwind City 49.19,30.28
step
  only Rogue
  talk Erion Shadewhisper##4214
  accept Erion's Behest##2260 |goto Darnassus 34.52,25.93
step
  note Farmer Saldean wants you to kill 20 Harvest Watchers.
  kill Harvest Watcher##114 |q 9 |goto Westfall 45.61,35.13
step
  turnin Captain Sander's Hidden Treasure##136 |goto Westfall 25.91,47.75
step
  talk Jern Hornhelm##1105
  turnin Powder to Ironband##302 |goto Loch Modan 37.24,47.38 |tip {turninat}Loch Modan
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Erion's Behest##2260 |goto Stormwind City 75.76,60.36 |tip {turninat}Stormwind City
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Kingly Shakedown##2298 |goto Stormwind City 75.76,60.36 |tip {turninat}Stormwind City
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##12 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##65 |goto Westfall 56.33,47.52
step
  talk Captain Danuvin##821
  accept Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
  note Bring 8 Gnoll Paws to Captain Danuvin on Sentinel Hill.
  collect 8 Gnoll Paw##725 |q 102 |goto Westfall 62.26,74.96 |tip {dropsfrom}Riverpaw Taskmaster, Riverpaw Gnoll, Riverpaw Mongrel
step
  talk General Marcus Jonathan##466
  accept Messenger to Stormwind##121 |goto Stormwind City 63.97,75.32
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
step
  click Captain's Footlocker##35
  accept Captain Sander's Hidden Treasure##138 |goto Westfall 25.91,47.75
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  note Track down the Defias Messenger in Westfall and bring his message to Stoutmantle.
  collect A Mysterious Message##1381 |q 142 |goto Westfall 45.1,69.33 |tip {dropsfrom}Defias Messenger
step
  talk Gryan Stoutmantle##234
  accept Messenger to Westfall##144 |goto Westfall 56.33,47.52
step
  talk Scout Galiaan##878
  accept Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
  note Bring 15 Red Leather Bandanas to Scout Galiaan at Sentinel Hill.
  collect 15 Red Leather Bandana##829 |q 153 |goto Westfall 45.85,26.58 |tip {dropsfrom}Defias Smuggler, Defias Pathstalker, Defias Highwayman
step
  talk Tormus Deepforge##6031
  accept Supplying the Front##1578 |goto Ironforge 48.64,42.48
step
  note Bring 6 Copper Axes and 6 Copper Chain Belts to Thorvald in the southern guard tower of Loch Modan.
  collect 6 Supplying the Front##2845 |q 1578 |goto Ironforge 48.64,42.48
step
  talk Tormus Deepforge##6031
  accept Gearing Redridge##1618 |goto Ironforge 48.64,42.48
step
  note Tormus Deepforge wants you to bring 4 Runed Copper Belts and 4 Heavy Copper Mauls to Verner Osgood in Redridge.
  collect 4 Gearing Redridge##2857 |q 1618 |goto Ironforge 48.64,42.48
step
  talk Gnoarn##6569
  accept Find Bingles##2039 |goto Ironforge 69.18,50.55
step
  talk Gnoarn##6569
  accept Speak with Shoni##2041 |goto Ironforge 69.18,50.55
step
  only Rogue
  talk Renzik "The Shiv"##6946
  accept Redridge Rendezvous##2281 |goto Stormwind City 75.76,60.36
step
  only Human
  talk Quartermaster Lewis##491
  accept A Swift Message##6181 |goto Westfall 57.0,47.17
step
  talk Prophet Velen##17468
  accept Truth or Fiction##9699 |goto The Exodar 32.87,54.5
step
  talk Thorvald Deepforge##6030
  turnin Supplying the Front##1578 |goto Loch Modan 23.67,74.32 |tip {turninat}Loch Modan
step
  only Mage
  talk Jennea Cannon##5497
  turnin Report to Jennea##1919 |goto Stormwind City 38.62,79.3 |tip {turninat}Stormwind City
step
  click Old Footlocker##3643
  accept The Legend of Stalvan##68 |goto Westfall 41.51,66.73
step
  talk Captain Grayson##392
  accept Keeper of the Flame##103 |goto Westfall 30.01,86.02
step
  note Bring 5 Flasks of Oil to Captain Grayson at the Westfall Lighthouse.
  collect 5 Flask of Oil##814 |q 103 |goto Westfall 47.46,36.27 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Harvest Reaper
step
  talk Captain Grayson##392
  accept The Coastal Menace##104 |goto Westfall 30.01,86.02
step
  note Bring a scale of Old Murk-Eye to Captain Grayson at the Westfall Lighthouse.
  collect Scale of Old Murk-Eye##3636 |q 104 |goto Westfall 29.27,75.95 |tip {dropsfrom}Old Murk-Eye
step
  talk Captain Grayson##392
  accept The Coast Isn't Clear##152 |goto Westfall 30.01,86.02
step
  talk Chief Archaeologist Greywhisker##2912
  accept Trouble In Darkshore?##730 |goto Darnassus 31.24,84.51
step
  only Mage
  talk Jennea Cannon##5497
  accept Investigate the Blue Recluse##1920 |goto Stormwind City 38.62,79.3
step
  only Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
  collect 3 Filled Containment Coffer##7292 |q 1920 |goto Stormwind City 38.62,79.3
step
  talk Priestess A'moora##7313
  accept Tears of the Moon##2518 |goto Darnassus 36.65,85.93
step
  note Priestess A'moora in the Temple of the Moon at Darnassus wants you to bring her Lady Sathrah's Silvery Spinnerets.
  collect Tears of the Moon##8344 |q 2518 |goto Darnassus 36.65,85.93
step
  talk Verna Furlbrow##238
  turnin Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
  talk Shoni the Shilent##6579
  turnin Speak with Shoni##2041 |goto Stormwind City 55.51,12.51 |tip {turninat}Stormwind City
step
  talk Farmer Furlbrow##237
  turnin The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
step
  note Kill 7 Tidehunters, 7 Warriors, 7 Oracles and 7 Coastrunners and return to Captain Grayson at the Westfall Lighthouse.
  kill Murloc Coastrunner##126 |q 152 |goto Westfall 45.37,8.99
step
  talk Farmer Saldean##233
  turnin The Killing Fields##9 |goto Westfall 56.04,31.23
step
  talk Baros Alexston##1646
  turnin Humble Beginnings##399 |goto Stormwind City 49.19,30.28 |tip {turninat}Stormwind City
step
  talk Salma Saldean##235
  turnin Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  talk Salma Saldean##235
  turnin Westfall Stew##38 |goto Westfall 56.42,30.52
step
  note Gryan Stoutmantle wants you to kill 15 Defias Trappers and 15 Defias Smugglers then return to him on Sentinel Hill.
  kill Defias Trapper##504 |q 12 |goto Westfall 46.4,34.58
step
  talk Master Mathias Shaw##332
  turnin The Defias Brotherhood##135 |goto Stormwind City 75.78,59.84 |tip {turninat}Stormwind City
step
  turnin Captain Sander's Hidden Treasure##138 |goto Westfall 40.52,47.79
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##12 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  talk Magistrate Solomon##344
  turnin Messenger to Westfall##144 |goto Redridge Mountains 29.99,44.45 |tip {turninat}Redridge Mountains
step
  talk Scout Galiaan##878
  turnin Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
  only Human
  talk Thor##523
  turnin A Swift Message##6181 |goto Westfall 56.55,52.64
step
  talk Wiley the Black##266
  turnin The Defias Brotherhood##65 |goto Redridge Mountains 26.48,45.35 |tip {turninat}Redridge Mountains
step
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##68 |goto Duskwood 72.54,46.87 |tip {turninat}Duskwood
step
  talk Verner Osgood##415
  turnin Gearing Redridge##1618 |goto Redridge Mountains 30.97,47.27 |tip {turninat}Redridge Mountains
step
  talk Archaeologist Hollee##2913
  turnin Trouble In Darkshore?##730 |goto Darkshore 37.44,41.84 |tip {turninat}Darkshore
step
  talk Vindicator Boros##17684
  turnin Truth or Fiction##9699 |goto Bloodmyst Isle 55.42,55.27 |tip {turninat}Bloodmyst Isle
step
  talk Captain Danuvin##821
  turnin Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
  only Rogue
  talk Lucius##6966
  turnin Redridge Rendezvous##2281 |goto Redridge Mountains 28.06,52.04 |tip {turninat}Redridge Mountains
step
  talk Bingles Blastenheimer##6577
  turnin Find Bingles##2039 |goto Loch Modan 63.56,47.92 |tip {turninat}Loch Modan
step
  talk Magistrate Solomon##344
  turnin Messenger to Stormwind##121 |goto Redridge Mountains 29.99,44.45 |tip {turninat}Redridge Mountains
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##13 |goto Westfall 56.33,47.52
step
  click Broken Barrel##36
  accept Captain Sander's Hidden Treasure##139 |goto Westfall 40.52,47.79
step
  talk The Defias Traitor##467
  accept The Defias Brotherhood##155 |goto Westfall 55.68,47.5
step
  only Human
  talk Thor##523
  accept Continue to Stormwind##6281 |goto Westfall 56.55,52.64
step
  only Mage
  talk Jennea Cannon##5497
  turnin Investigate the Blue Recluse##1920 |goto Stormwind City 38.62,79.3 |tip {turninat}Stormwind City
step
  talk Captain Grayson##392
  turnin The Coast Isn't Clear##152 |goto Westfall 30.01,86.02
step
  talk Priestess A'moora##7313
  turnin Tears of the Moon##2518 |goto Darnassus 36.65,85.93 |tip {turninat}Darnassus
step
  talk Captain Grayson##392
  turnin Keeper of the Flame##103 |goto Westfall 30.01,86.02
step
  talk Captain Grayson##392
  turnin The Coastal Menace##104 |goto Westfall 30.01,86.02
step
  only Mage
  talk Jennea Cannon##5497
  accept Gathering Materials##1921 |goto Stormwind City 38.62,79.3
step
  only Mage
  note Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
  collect 10 Linen Cloth##2589 |q 1921 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Kobold Miner, Mine Spider
step
  note Gryan Stoutmantle wants you to kill 15 Defias Pillagers and 15 Defias Looters and return to him on Sentinel Hill.
  kill Defias Pillager##589 |q 13 |goto Westfall 38.81,66.41
step
  turnin Captain Sander's Hidden Treasure##139 |goto Westfall 40.63,17.03
step
  click Old Jug##34
  accept Captain Sander's Hidden Treasure##140 |goto Westfall 40.63,17.03
step
  turnin Captain Sander's Hidden Treasure##140 |goto Westfall 25.97,16.91
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##13 |goto Westfall 56.33,47.52
step
  only Human
  talk Osric Strang##1323
  turnin Continue to Stormwind##6281 |goto Stormwind City 74.31,47.24 |tip {turninat}Stormwind City
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##14 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##166 |goto Westfall 56.33,47.52
step
  note Kill Edwin VanCleef and bring his head to Gryan Stoutmantle.
  collect Head of VanCleef##3637 |q 166 |goto The Deadmines - Dungeon - The Deadmines -1,-1 |elite |tip {dropsfrom}Edwin VanCleef
step
  talk Scout Riell##820
  accept Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  note Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas.
  collect Red Silk Bandana##915 |q 214 |goto Westfall 42.88,74.49 |tip {dropsfrom}Defias Henchman, Defias Miner, Defias Conjurer
step
  only Mage
  talk Wynne Larson##1309
  turnin Gathering Materials##1921 |goto Stormwind City 41.57,76.35 |tip {turninat}Stormwind City
step
  only Mage
  talk Wynne Larson##1309
  accept Manaweave Robe##1941 |goto Stormwind City 41.57,76.35
step
  note Gryan Stoutmantle wants you to kill 15 Defias Highwaymen, 5 Defias Pathstalkers and 5 Defias Knuckledusters then return to him on Sentinel Hill.
  kill Defias Highwayman##122 |q 14 |goto Westfall 48.14,79.1
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##14 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##166 |goto Westfall 56.33,47.52
step
  talk Scout Riell##820
  turnin Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  only Mage
  talk Wynne Larson##1309
  turnin Manaweave Robe##1941 |goto Stormwind City 41.57,76.35 |tip {turninat}Stormwind City
step
  note {travel}Darkshore
  goto Darkshore 43.55,76.29
]])
