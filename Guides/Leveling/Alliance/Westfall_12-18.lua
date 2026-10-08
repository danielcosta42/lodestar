-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Westfall (12-18)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Loch Modan (12-20)",
}, [[
step
  note {fp}Kirk Maxwell
  goto Westfall 52.94,53.07 |tip {vendor}
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept A Lesson to Learn##26 |goto Darnassus 35.37,8.4
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
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1647 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1785 |goto Ironforge 23.54,8.3
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Kingly Shakedown##2298 |goto Ironforge 51.96,14.84
step
  only Dwarf Paladin
  talk Brandur Ironhammer##5149
  accept Tome of Divinity##2999 |goto Ironforge 23.13,6.14
step
  only Human Paladin
  talk Brandur Ironhammer##5149
  accept Tome of Divinity##3681 |goto Ironforge 23.13,6.14
step
  talk Salma Saldean##235
  turnin Westfall Stew##36 |goto Westfall 56.42,30.52
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
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
  talk Grimand Elmore##1416
  accept Stormpike's Delivery##353 |goto Stormwind City 59.73,33.78
step
  only Rogue
  talk Erion Shadewhisper##4214
  accept Erion's Behest##2260 |goto Darnassus 34.52,25.93
step
  talk Sprite Jumpsprocket##11026
  accept A Dynamite Plan##92749 |goto Stormwind City 61.88,30.56
step
  note Obtain 10 Coarse Dynamite from crafting, trading, or the auction house, then return to Sprite Jumpsprocket in the Dwarven District of Stormwind.
  collect 10 Coarse Dynamite##4365 |q 92749 |goto Stormwind City 61.88,30.56
step
  talk Sprite Jumpsprocket##11026
  accept Detonation at a Distance##92750 |goto Stormwind City 61.88,30.56
step
  talk Sprite Jumpsprocket##11026
  accept Explosive Consultation##92752 |goto Stormwind City 61.88,30.56
step
  talk Ozwin Ironsprocket##253395
  accept Harvesting the Harvesters##92909 |goto Westfall 51.59,32.19
step
  note Ozwin Ironsprocket at Saldean's Farm wants you to bring him 14 Golem Isosprings and 5 Harvester Gyrostabilizers.
  collect Golem Isospring##255007 |q 92909 |goto Westfall 47.46,36.27 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Harvest Reaper
step
  kill Harvest Golem##36 |goto Westfall 47.46,36.27 |tip Loot the quest item here — it starts the quest.
  accept Harvesting the Harvesters##92910 |goto Westfall 47.46,36.27
step
  talk Ozwin Ironsprocket##253395
  accept Harvesting the Harvesters##92911 |goto Westfall 51.59,32.19
step
  note Ozwin Ironsprocket at Saldean's Farm wants you to bring him 8 Golem Isosprings, 4 Copper Modulators, and a Crude Scope.
  collect Golem Isospring##255007 |q 92911 |goto Westfall 47.46,36.27 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Harvest Reaper
step
  only Skyborne
  talk Highlord Bolvar Fordragon##1748
  accept Exploring the Alliance##93963 |goto Stormwind City 80.21,38.35
step
  talk Manifest Clerk Philmor##268511
  accept Philmor's Favor##97220 |goto Stormwind City 30.68,28.95
step
  only Skyborne
  talk Highlord Bolvar Fordragon##1748
  accept Journey to Sentinel Hill##98021 |goto Stormwind City 80.21,38.35
step
  note Farmer Saldean wants you to kill 20 Harvest Watchers.
  kill Harvest Watcher##114 |q 9 |goto Westfall 45.61,35.13
step
  turnin Captain Sander's Hidden Treasure##136 |goto Westfall 25.91,47.75
step
  talk Jern Hornhelm##1105
  turnin Powder to Ironband##302 |goto Loch Modan 37.24,47.38 |tip {turninat}Loch Modan
step
  talk Alba Fairmoon##253092
  turnin Explosive Consultation##92752 |goto Westfall 52.49,53.06
step
  only Human Paladin
  talk Duthorian Rall##6171
  turnin Tome of Divinity##3681 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only Skyborne
  talk Gryan Stoutmantle##234
  turnin Journey to Sentinel Hill##98021 |goto Westfall 56.33,47.52
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
  talk Baros Alexston##1646
  accept Humble Beginnings##399 |goto Stormwind City 57.74,47.86
step
  note Go to Baros Alexston's house in Westfall and search for his compass, then return it to him in Cathedral Square of Stormwind.
  collect A Simple Compass##2998 |q 399 |goto Westfall 36.24,54.52 |tip {dropsfrom}Alexston's Chest
step
  only Human Paladin
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1643 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1788 |goto Stormwind City 49.53,44.99
step
  talk Gnoarn##6569
  accept Find Bingles##2039 |goto Ironforge 69.18,50.55
step
  talk Gnoarn##6569
  accept Speak with Shoni##2041 |goto Ironforge 69.18,50.55
step
  only Dwarf Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Tome of Divinity##3000 |goto Stormwind City 48.43,50.22
step
  only Human
  talk Quartermaster Lewis##491
  accept A Swift Message##6181 |goto Westfall 57,47.17
step
  click Burned-Out Remains##415107
  accept ... and that note you found##79008 |goto Westfall 37.45,50.8
step
  talk Alba Fairmoon##253092
  accept Testing the Wells##92742 |goto Westfall 52.49,53.06
step
  note Use the Well Water Sample Kit to collect samples from the wells at the Jansen Stead and the Molsen Farm.
  collect Jansen Stead Water Sample##254546 |q 92742 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253092
  accept Murloc Gills##92744 |goto Westfall 52.49,53.06
step
  note Alba Fairmoon wants you to collect 7 Longshore Murloc Gills along the shoreline of Westfall.
  collect 7 Longshore Murloc Gill##254548 |q 92744 |goto Westfall 45.37,8.99 |tip {dropsfrom}Murloc Coastrunner, Murloc Tidehunter, Murloc Warrior
step
  talk Alba Fairmoon##253092
  accept The State of the Mines##92745 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253092
  accept Moonbrook Espionage##92747 |goto Westfall 52.49,53.06
step
  note Collect 8 Suspicious Industrial Supplies from Moonbrook.
  collect 8 Suspicious Industrial Supplies##254676 |q 92747 |goto Westfall 42.5,68.7 |tip {dropsfrom}Suspicious Crate
step
  talk Alba Fairmoon##253092
  accept Explosive Consultation##92748 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253092
  accept Destruction in Deadmines##92753 |goto Westfall 52.49,53.06
step
  talk Gilbert Gray##267118
  accept Fishin' Time##95065 |goto Stormwind City 26.29,47.15
step
  note Bring 1 Shiny Bauble and 3 Nightcrawlers to Gilbert Gray at the harbor in Stormwind.
  buy 1 Shiny Bauble##6529 |q 95065 |goto Elwynn Forest 41.82,67.16
step
  talk Afadra Dunwall##264943
  accept The Restless Dead##96394 |goto Ironforge 33.2,47.82
step
  note Kill 15 Enraged Apparitions, 10 Tormented Souls and put the spirit of Anvilmar to rest.
  kill Enraged Apparition##263389 |q 96394
step
  talk Thom Filch##265003
  accept Important Heirlooms##96403 |goto Ironforge 32.41,44.81
step
  note Collect 8 Dwarven Heirlooms from the Hall of Thanes.
  collect 8 Dwarven Heirloom##274289 |q 96403 |goto Ironforge 32.41,44.81
step
  only Skyborne
  note Speak with Randal Emerson in Stormwind Keep to receive further instructions. Use the instructions received to locate and speak with King Magni Bronzebeard, High Tinker Mekkatorque, and Tyrande Whisperwind.
  talk Randal Emerson##275491 |q 93963 |goto Stormwind City 79.14,44.78
step
  turnin ... and that note you found##79008 |goto The Barrens 46.34,73.96 |tip {turninat}The Barrens
step
  click Old Footlocker##3643
  accept The Legend of Stalvan##68 |goto Westfall 41.51,66.73
step
  click Burned-Out Remains##415106
  accept Stepping Stones##79192 |goto The Barrens 46.34,73.96
step
  talk Mouse##6271
  accept Of Mice and Milk##93928 |goto Westfall 51.82,71.78
step
  only Shaman
  click Forgotten Shrine##619896
  accept Call of Water##94503 |goto Westfall 45.45,59.89
step
  talk Master Mathias Shaw##332
  turnin The Defias Brotherhood##135 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  talk Elaine Trias##483
  turnin Philmor's Favor##97220 |goto Stormwind City 66.56,73.37 |tip {turninat}Stormwind City
step
  talk Jasper Fel##1325
  turnin Detonation at a Distance##92750 |goto Stormwind City 80.28,70.07 |tip {turninat}Stormwind City
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Erion's Behest##2260 |goto Stormwind City 78.29,71.14 |tip {turninat}Stormwind City
step
  only Human Paladin
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1643 |goto Stormwind City 63.84,72.21 |tip {turninat}Stormwind City
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Kingly Shakedown##2298 |goto Stormwind City 78.29,71.14 |tip {turninat}Stormwind City
step
  talk General Marcus Jonathan##466
  accept Messenger to Stormwind##121 |goto Stormwind City 69.17,82.72
step
  only Human Paladin
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21
step
  only Human Paladin
  note Bring 10 Linen Cloth to Stephanie Turner in Stormwind.
  collect 10 Linen Cloth##2589 |q 1644 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Rogue
  talk Renzik "The Shiv"##6946
  accept Redridge Rendezvous##2281 |goto Stormwind City 78.29,71.14
step
  only Rogue
  talk Agent Kearnen##7024
  accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
step
  only Rogue
  note Steal the Defias Tower Key, break into the Defias Tower and uncover the contents of the Duskwood Chest. Take whatever information you find back to Mathias Shaw in Stormwind. Read Kearnen's Journal to gain insight about the tower.
  collect Klaven Mortwake's Journal##7908 |q 2359 |goto Westfall 70.41,73.93 |tip {dropsfrom}Duskwood Chest
step
  talk Jasper Fel##1325
  accept Detonation at a Distance##92751 |goto Stormwind City 80.28,70.07
step
  talk Elaine Trias##483
  accept Gatehouse Goods##97222 |goto Stormwind City 66.56,73.37
step
  talk Alba Fairmoon##253279
  turnin Destruction in Deadmines##92753 |goto Westfall 38.75,84.16
step
  only Paladin
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  only Mage
  talk Jennea Cannon##5497
  accept Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8
step
  only Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
  collect 3 Filled Containment Coffer##7292 |q 1920 |goto Stormwind City 49.56,85.8
step
  talk Priestess A'moora##7313
  accept Tears of the Moon##2518 |goto Darnassus 36.65,85.93
step
  note Priestess A'moora in the Temple of the Moon at Darnassus wants you to bring her Lady Sathrah's Silvery Spinnerets.
  collect Silvery Spinnerets##8344 |q 2518 |goto Teldrassil 42,25.4 |tip {dropsfrom}Lady Sathrah
step
  talk Alba Fairmoon##253279
  accept Destruction in Deadmines##92819 |goto Westfall 38.75,84.16
step
  only Dwarf Paladin
  talk John Turner##6175
  turnin The Tome of Divinity##1647 |goto Ironforge 23.34,61.86 |tip {turninat}Ironforge
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
  only Dwarf Paladin
  talk John Turner##6175
  accept The Tome of Divinity##1648 |goto Ironforge 23.34,61.86
step
  only Dwarf Paladin
  note Bring 10 Linen Cloth to John Turner in Ironforge.
  collect 10 Linen Cloth##2589 |q 1648 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  talk Verna Furlbrow##238
  turnin Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##2999 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##3000 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  talk Farmer Furlbrow##237
  turnin The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
step
  talk Hemet Nesingwary##715
  turnin Of Mice and Milk##93928 |goto Stranglethorn Vale 35.66,10.81 |tip {turninat}Stranglethorn Vale
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1785 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  note Kill 7 Tidehunters, 7 Warriors, 7 Oracles and 7 Coastrunners and return to Captain Grayson at the Westfall Lighthouse.
  kill Murloc Coastrunner##126 |q 152 |goto Westfall 45.37,8.99
step
  note Slay 4 Kobold Diggers in the Jangolode Mine and 6 Riverpaw Miners in the Gold Coast Quarry.
  kill Kobold Digger##1236 |q 92745 |goto Westfall 45.32,19.99
step
  talk Farmer Saldean##233
  turnin The Killing Fields##9 |goto Westfall 56.04,31.23
step
  only Skyborne
  talk Highlord Bolvar Fordragon##1748
  turnin Exploring the Alliance##93963 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  talk Salma Saldean##235
  turnin Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  talk Shoni the Shilent##6579
  turnin Speak with Shoni##2041 |goto Stormwind City 62.63,34.11 |tip {turninat}Stormwind City
step
  talk Salma Saldean##235
  turnin Westfall Stew##38 |goto Westfall 56.42,30.52
step
  talk Sprite Jumpsprocket##11026
  turnin Explosive Consultation##92748 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  talk Sprite Jumpsprocket##11026
  turnin A Dynamite Plan##92749 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  talk Sprite Jumpsprocket##11026
  turnin Detonation at a Distance##92751 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  talk Mountaineer Stormpike##1343
  turnin Stormpike's Delivery##353 |goto Loch Modan 24.76,18.4 |tip {turninat}Loch Modan
step
  talk Ozwin Ironsprocket##253395
  turnin Harvesting the Harvesters##92909 |goto Westfall 51.59,32.19
step
  talk Ozwin Ironsprocket##253395
  turnin Harvesting the Harvesters##92910 |goto Westfall 51.59,32.19
step
  talk Ozwin Ironsprocket##253395
  turnin Harvesting the Harvesters##92911 |goto Westfall 51.59,32.19
step
  note Gryan Stoutmantle wants you to kill 15 Defias Trappers and 15 Defias Smugglers then return to him on Sentinel Hill.
  kill Defias Trapper##504 |q 12 |goto Westfall 46.4,34.58
step
  turnin Captain Sander's Hidden Treasure##138 |goto Westfall 40.52,47.79
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##12 |goto Westfall 56.33,47.52
step
  talk Afadra Dunwall##264943
  turnin The Restless Dead##96394 |goto Ironforge 33.2,47.82 |tip {turninat}Ironforge
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  talk Baros Alexston##1646
  turnin Humble Beginnings##399 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  talk Magistrate Solomon##344
  turnin Messenger to Westfall##144 |goto Redridge Mountains 24.9,44.45 |tip {turninat}Redridge Mountains
step
  talk Thom Filch##265003
  turnin Important Heirlooms##96403 |goto Ironforge 32.41,44.81 |tip {turninat}Ironforge
step
  talk Scout Galiaan##878
  turnin Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
  only Human
  talk Thor##523
  turnin A Swift Message##6181 |goto Westfall 56.55,52.64
step
  only Shaman
  talk Minor Manifestation of Water##5895
  turnin Call of Water##94503 |goto Silverpine Forest 38.65,44.58 |tip {turninat}Silverpine Forest
step
  talk Wiley the Black##266
  turnin The Defias Brotherhood##65 |goto Redridge Mountains 21.39,45.35 |tip {turninat}Redridge Mountains
step
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##68 |goto Duskwood 72.54,46.87 |tip {turninat}Duskwood
step
  talk Alba Fairmoon##253092
  turnin Testing the Wells##92742 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253092
  turnin Murloc Gills##92744 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253092
  turnin The State of the Mines##92745 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253092
  turnin Moonbrook Espionage##92747 |goto Westfall 52.49,53.06
step
  turnin Stepping Stones##79192 |goto Stonetalon Mountains 40.79,52.61 |tip {turninat}Stonetalon Mountains
step
  talk Gilbert Gray##267118
  turnin Fishin' Time##95065 |goto Stormwind City 26.29,47.15 |tip {turninat}Stormwind City
step
  talk Archaeologist Hollee##2913
  turnin Trouble In Darkshore?##730 |goto Darkshore 37.44,41.84 |tip {turninat}Darkshore
step
  talk Magistrate Solomon##344
  turnin Messenger to Stormwind##121 |goto Redridge Mountains 24.9,44.45 |tip {turninat}Redridge Mountains
step
  talk Captain Danuvin##821
  turnin Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
  only Rogue
  talk Lucius##6966
  turnin Redridge Rendezvous##2281 |goto Redridge Mountains 22.97,52.04 |tip {turninat}Redridge Mountains
step
  talk Bingles Blastenheimer##6577
  turnin Find Bingles##2039 |goto Loch Modan 63.56,47.92 |tip {turninat}Loch Modan
step
  only Human Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1788 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
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
  note Gryan Stoutmantle wants you to kill 15 Defias Pillagers and 15 Defias Looters and return to him on Sentinel Hill.
  kill Defias Pillager##589 |q 13 |goto Westfall 38.81,66.41
step
  only Human
  talk Osric Strang##1323
  turnin Continue to Stormwind##6281 |goto Stormwind City 77.17,60.99 |tip {turninat}Stormwind City
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Klaven's Tower##2359 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  talk Elaine Trias##483
  turnin Gatehouse Goods##97222 |goto Stormwind City 66.56,73.37 |tip {turninat}Stormwind City
step
  only Human Paladin
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21 |tip {turninat}Stormwind City
step
  only Human Paladin
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1780 |goto Stormwind City 63.84,72.21
step
  only Mage
  talk Jennea Cannon##5497
  turnin Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  talk Alba Fairmoon##253279
  turnin Destruction in Deadmines##92819 |goto Westfall 38.75,84.16
step
  talk Priestess A'moora##7313
  turnin Tears of the Moon##2518 |goto Darnassus 36.65,85.93 |tip {turninat}Darnassus
step
  only Paladin
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  only Paladin
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1652 |goto Westfall 41.69,89.24
step
  only Mage
  talk Jennea Cannon##5497
  accept Gathering Materials##1921 |goto Stormwind City 49.56,85.8
step
  only Mage
  note Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
  collect 10 Linen Cloth##2589 |q 1921 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  talk Captain Grayson##392
  turnin The Coast Isn't Clear##152 |goto Westfall 30.01,86.02
step
  talk Captain Grayson##392
  turnin Keeper of the Flame##103 |goto Westfall 30.01,86.02
step
  talk Captain Grayson##392
  turnin The Coastal Menace##104 |goto Westfall 30.01,86.02
step
  only Dwarf Paladin
  talk John Turner##6175
  turnin The Tome of Divinity##1648 |goto Ironforge 23.34,61.86 |tip {turninat}Ironforge
step
  only Dwarf Paladin
  talk John Turner##6175
  accept The Tome of Divinity##1778 |goto Ironforge 23.34,61.86
step
  turnin Captain Sander's Hidden Treasure##139 |goto Westfall 40.63,17.03
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1778 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  click Old Jug##34
  accept Captain Sander's Hidden Treasure##140 |goto Westfall 40.63,17.03
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1779 |goto Ironforge 27.63,12.18
step
  turnin Captain Sander's Hidden Treasure##140 |goto Westfall 25.97,16.91
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##13 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52
step
  only Human Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1780 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Valor##1652 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##14 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##166 |goto Westfall 56.33,47.52
step
  note Kill Edwin VanCleef and bring his head to Gryan Stoutmantle.
  collect Head of VanCleef##3637 |q 166 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Edwin VanCleef
step
  talk Scout Riell##820
  accept Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  note Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas.
  kill Defias Henchman##594 |goto Westfall 42.88,74.49 |elite
  collect Red Silk Bandana##915 |q 214 |goto Westfall 42.88,74.49
step
  only Human Paladin
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1781 |goto Stormwind City 50.48,47.49
step
  note Gryan Stoutmantle wants you to kill 15 Defias Highwaymen, 5 Defias Pathstalkers and 5 Defias Knuckledusters then return to him on Sentinel Hill.
  kill Defias Highwayman##122 |q 14 |goto Westfall 48.14,79.1
step
  only Mage
  talk Wynne Larson##1309
  turnin Gathering Materials##1921 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  only Mage
  talk Wynne Larson##1309
  accept Manaweave Robe##1941 |goto Stormwind City 51.84,83.51
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1779 |goto Ironforge 23.54,8.3 |tip {turninat}Ironforge
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1783 |goto Ironforge 23.54,8.3
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
  only Human Paladin
  talk Gazin Tenorm##6173
  turnin The Tome of Divinity##1781 |goto Stormwind City 49.53,44.99 |tip {turninat}Stormwind City
step
  only Human Paladin
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1786 |goto Stormwind City 49.53,44.99
step
  only Human Paladin
  note Take the Symbol of Life and resurrect Henze Faulk in Elwynn.
  kill Henze Faulk##6172 |q 1786 |goto Elwynn Forest 72.6,51.41
step
  only Dwarf Paladin
  note Take the Symbol of Life and resurrect Narm Faulk in Dun Morogh.
  kill Narm Faulk##6177 |q 1783 |goto Dun Morogh 78.32,58.09
step
  only Mage
  talk Wynne Larson##1309
  turnin Manaweave Robe##1941 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  only Human Paladin
  talk Henze Faulk##6172
  turnin The Tome of Divinity##1786 |goto Elwynn Forest 72.6,51.41 |tip {turninat}Elwynn Forest
step
  only Dwarf Paladin
  talk Narm Faulk##6177
  turnin The Tome of Divinity##1783 |goto Dun Morogh 78.32,58.09 |tip {turninat}Dun Morogh
step
  note {travel}Loch Modan
  goto Loch Modan 37.02,47.81
]])
