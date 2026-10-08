-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Westfall (12-18)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Redridge Mountains (15-23)",
}, [[
step
  talk Gilbert Gray##267118
  accept Fishin' Time##95065 |goto Stormwind City 26.29,47.15
step
  note Bring 1 Shiny Bauble and 3 Nightcrawlers to Gilbert Gray at the harbor in Stormwind.
  buy 1 Shiny Bauble##6529 |q 95065 |goto Elwynn Forest 41.82,67.16
step
  only Skyborne completed(94947)
  talk Highlord Bolvar Fordragon##1748
  accept Exploring the Alliance##93963 |goto Stormwind City 80.21,38.35
step
  only Skyborne completed(94947)
  talk Highlord Bolvar Fordragon##1748
  accept Journey to Sentinel Hill##98021 |goto Stormwind City 80.21,38.35
step
  only Human Paladin completed(1642)
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1643 |goto Stormwind City 50.48,47.49
step
  only Dwarf Paladin completed(1646)
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1647 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin not completed(2997) not completed(3000) not haveq(2997) not haveq(3000)
  talk Brandur Ironhammer##5149
  accept Tome of Divinity##2999 |goto Ironforge 23.13,6.14
step
  only Human Paladin not completed(2998) not haveq(2998)
  talk Brandur Ironhammer##5149
  accept Tome of Divinity##3681 |goto Ironforge 23.13,6.14
step
  talk Verna Furlbrow##238
  accept Westfall Stew##36 |goto Westfall 59.92,19.42
step
  talk Farmer Furlbrow##237
  accept The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
step
  talk Verna Furlbrow##238
  accept Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
  note Farmer Furlbrow wants you to retrieve his pocket watch from the wardrobe in his farmhouse at the pumpkin farm to the West.
  collect Furlbrow's Pocket Watch##841 |q 64 |goto Westfall 49.33,19.28 |tip {dropsfrom}Furlbrow's Wardrobe
step
  talk Farmer Furlbrow##237
  turnin The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
step
  talk Salma Saldean##235
  turnin Westfall Stew##36 |goto Westfall 56.42,30.52
step
  talk Salma Saldean##235
  accept Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  talk Salma Saldean##235
  accept Westfall Stew##38 |goto Westfall 56.42,30.52
step
  note Verna Furlbrow in Westfall wants you to bring her 8 Handfuls of Oats.
  collect Handful of Oats##1528 |q 151 |goto Westfall 48.96,34.17 |tip {dropsfrom}Sack of Oats, Noggle's Satchel
step
  note {fp}Thor
  goto Westfall 56.55,52.64 |tip {vendor}
step
  only Skyborne completed(94947)
  talk Gryan Stoutmantle##234
  turnin Journey to Sentinel Hill##98021 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##12 |goto Westfall 56.33,47.52
step
  only Human
  talk Quartermaster Lewis##491
  accept A Swift Message##6181 |goto Westfall 57,47.17
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
  talk Captain Danuvin##821
  accept Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
  talk Alba Fairmoon##253092
  accept The State of the Mines##92745 |goto Westfall 52.49,53.06
step
  note Salma Saldean needs 8 Goretusk livers to make a Goretusk Liver Pie.
  collect Goretusk Liver##723 |q 22 |goto Westfall 44.71,56.93 |tip {dropsfrom}Goretusk, Bellygrub, Young Goretusk
step
  note Salma Saldean wants 3 Stringy Vulture Meat, 3 Goretusk Snouts, 3 Murloc Eyes, 3 Okra.
  collect Stringy Vulture Meat##729 |q 38 |goto Westfall 61.14,54.85 |tip {dropsfrom}Greater Fleshripper, Young Fleshripper, Vultros
step
  only Human
  talk Thor##523
  turnin A Swift Message##6181 |goto Westfall 56.55,52.64
step
  talk Alba Fairmoon##253092
  turnin Testing the Wells##92742 |goto Westfall 52.49,53.06
step
  only Human
  talk Thor##523
  accept Continue to Stormwind##6281 |goto Westfall 56.55,52.64
step
  note Bring 8 Gnoll Paws to Captain Danuvin on Sentinel Hill.
  collect 8 Gnoll Paw##725 |q 102 |goto Westfall 62.67,75.93 |tip {dropsfrom}Riverpaw Taskmaster, Riverpaw Gnoll, Riverpaw Mongrel
step
  talk Verna Furlbrow##238
  turnin Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
  note Alba Fairmoon wants you to collect 7 Longshore Murloc Gills along the shoreline of Westfall.
  collect 7 Longshore Murloc Gill##254548 |q 92744 |goto Westfall 45.02,8.89 |tip {dropsfrom}Murloc Coastrunner, Murloc Tidehunter, Murloc Warrior
step
  note Slay 4 Kobold Diggers in the Jangolode Mine and 6 Riverpaw Miners in the Gold Coast Quarry.
  kill Kobold Digger##1236 |q 92745 |goto Westfall 45.32,20.46
step
  talk Salma Saldean##235
  turnin Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  talk Salma Saldean##235
  turnin Westfall Stew##38 |goto Westfall 56.42,30.52
step
  note Gryan Stoutmantle wants you to kill 15 Defias Trappers and 15 Defias Smugglers then return to him on Sentinel Hill.
  kill Defias Trapper##504 |q 12 |goto Westfall 47.39,36.32
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##12 |goto Westfall 56.33,47.52
step
  talk Captain Danuvin##821
  turnin Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
  talk Alba Fairmoon##253092
  turnin Murloc Gills##92744 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253092
  turnin The State of the Mines##92745 |goto Westfall 52.49,53.06
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##13 |goto Westfall 56.33,47.52
step
  talk Scout Galiaan##878
  accept Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
  note Gryan Stoutmantle wants you to kill 15 Defias Pillagers and 15 Defias Looters and return to him on Sentinel Hill.
  kill Defias Pillager##589 |q 13 |goto Westfall 38.76,69.61
step
  talk Farmer Saldean##233
  accept The Killing Fields##9 |goto Westfall 56.04,31.23
step
  talk Ozwin Ironsprocket##253395
  accept Harvesting the Harvesters##92909 |goto Westfall 51.59,32.19
step
  kill Harvest Golem##36 |goto Westfall 47.88,33.47 |tip Loot the quest item here — it starts the quest.
  accept Harvesting the Harvesters##92910 |goto Westfall 47.88,33.47
step
  talk Ozwin Ironsprocket##253395
  accept Harvesting the Harvesters##92911 |goto Westfall 51.59,32.19
step
  note Farmer Saldean wants you to kill 20 Harvest Watchers.
  kill Harvest Watcher##114 |q 9 |goto Westfall 45.9,36.14
step
  note Bring 15 Red Leather Bandanas to Scout Galiaan at Sentinel Hill.
  collect 15 Red Leather Bandana##829 |q 153 |goto Westfall 45.8,26.58 |tip {dropsfrom}Defias Smuggler, Defias Pathstalker, Defias Highwayman
step
  note Ozwin Ironsprocket at Saldean's Farm wants you to bring him 14 Golem Isosprings and 5 Harvester Gyrostabilizers.
  collect Golem Isospring##255007 |q 92909 |goto Westfall 47.88,33.47 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Harvest Reaper
step
  note Ozwin Ironsprocket at Saldean's Farm wants you to bring him 8 Golem Isosprings, 4 Copper Modulators, and a Crude Scope.
  collect Golem Isospring##255007 |q 92911 |goto Westfall 47.88,33.47 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Harvest Reaper
step
  talk Farmer Saldean##233
  turnin The Killing Fields##9 |goto Westfall 56.04,31.23
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
  talk Gryan Stoutmantle##234
  turnin The People's Militia##13 |goto Westfall 56.33,47.52
step
  talk Scout Galiaan##878
  turnin Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
  talk Gilbert Gray##267118
  turnin Fishin' Time##95065 |goto Stormwind City 26.29,47.15 |tip {turninat}Stormwind City
step
  only Human Paladin completed(1642)
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1643 |goto Stormwind City 63.84,72.21 |tip {turninat}Stormwind City
step
  only Dwarf Paladin completed(1646)
  talk John Turner##6175
  turnin The Tome of Divinity##1647 |goto Ironforge 23.34,61.86 |tip {turninat}Ironforge
step
  only Dwarf Paladin not completed(2997) not completed(3000) not haveq(2997) not haveq(3000)
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##2999 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Human Paladin not completed(2998) not haveq(2998)
  talk Duthorian Rall##6171
  turnin Tome of Divinity##3681 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  talk Baros Alexston##1646
  accept Humble Beginnings##399 |goto Stormwind City 57.74,47.86
step
  talk Manifest Clerk Philmor##268511
  accept Philmor's Favor##97220 |goto Stormwind City 30.68,28.95
step
  talk Elaine Trias##483
  accept Gatehouse Goods##97222 |goto Stormwind City 66.56,73.37
step
  talk Captain Grayson##392
  accept Keeper of the Flame##103 |goto Westfall 30.01,86.02
step
  kill Murloc Coastrunner##126 |goto Westfall 45.02,8.89 |tip Loot the quest item here — it starts the quest.
  accept Captain Sander's Hidden Treasure##136 |goto Westfall 45.02,8.89
step
  talk Alba Fairmoon##253092
  accept Moonbrook Espionage##92747 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253092
  accept Explosive Consultation##92748 |goto Westfall 52.49,53.06
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
  talk Jasper Fel##1325
  accept Detonation at a Distance##92751 |goto Stormwind City 80.28,70.07
step
  talk Sprite Jumpsprocket##11026
  accept Explosive Consultation##92752 |goto Stormwind City 61.88,30.56
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Jennea Cannon##5497
  accept Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Skyborne Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
  collect 3 Filled Containment Coffer##7292 |q 1920 |goto Stormwind City 49.56,85.8
step
  talk Mouse##6271
  accept Of Mice and Milk##93928 |goto Westfall 35.91,76.59
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##65 |goto Westfall 56.33,47.52
step
  talk Wilder Thistlenettle##656
  accept Collecting Memories##168 |goto Stormwind City 70.31,40.82
step
  talk Alba Fairmoon##253092
  accept Destruction in Deadmines##92753 |goto Westfall 52.49,53.06
step
  talk Alba Fairmoon##253279
  accept Destruction in Deadmines##92819 |goto Westfall 38.75,84.16
step
  talk Captain Grayson##392
  accept The Coast Isn't Clear##152 |goto Westfall 30.01,86.02
step
  talk Captain Grayson##392
  accept The Coastal Menace##104 |goto Westfall 30.01,86.02
step
  talk Wilder Thistlenettle##656
  accept Oh Brother. . .##167 |goto Stormwind City 70.31,40.82
step
  only completed(1072)
  talk Lomac Gearstrip##4081
  accept Ineptitude + Chemicals = Fun##1073 |goto Ironforge 72.08,51.88
step
  only completed(1075)
  talk Collin Mauren##4078
  accept Devils in Westfall##1076 |goto Stormwind City 53.02,86.64
step
  only Rogue
  talk Master Mathias Shaw##332
  accept Mathias and the Defias##2360 |goto Stormwind City 78.31,70.74
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649)
  talk Duthorian Rall##6171
  accept The Tome of Valor##1650 |goto Stormwind City 50.48,47.49
step
  only Shaman
  click Forgotten Shrine##619896
  accept Call of Water##94503 |goto Westfall 45.45,59.89
step
  only Skyborne completed(94947)
  note Speak with Randal Emerson in Stormwind Keep to receive further instructions. Use the instructions received to locate and speak with King Magni Bronzebeard, High Tinker Mekkatorque, and Tyrande Whisperwind.
  talk Randal Emerson##275491 |q 93963 |goto Stormwind City 79.05,44.78
step
  note Go to Baros Alexston's house in Westfall and search for his compass, then return it to him in Cathedral Square of Stormwind.
  collect A Simple Compass##2998 |q 399 |goto Westfall 36.24,54.52 |tip {dropsfrom}Alexston's Chest
step
  note Bring 5 Flasks of Oil to Captain Grayson at the Westfall Lighthouse.
  collect 5 Flask of Oil##814 |q 103 |goto Westfall 47.88,33.47 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Harvest Reaper
step
  note Collect 8 Suspicious Industrial Supplies from Moonbrook.
  collect 8 Suspicious Industrial Supplies##254676 |q 92747 |goto Westfall 42.5,68.7 |tip {dropsfrom}Suspicious Crate
step
  note Retrieve 4 Miners' Union Cards and return them to Wilder Thistlenettle in Stormwind.
  kill Skeletal Miner##623 |goto Westfall 41.61,81.67 |elite
  collect 4 Miners' Union Card##1894 |q 168 |goto Westfall 41.61,81.67
step
  note Kill 7 Tidehunters, 7 Warriors, 7 Oracles and 7 Coastrunners and return to Captain Grayson at the Westfall Lighthouse.
  kill Murloc Coastrunner##126 |q 152 |goto Westfall 45.02,8.89
step
  note Bring a scale of Old Murk-Eye to Captain Grayson at the Westfall Lighthouse.
  collect Scale of Old Murk-Eye##3636 |q 104 |goto Westfall 29.27,75.95 |tip {dropsfrom}Old Murk-Eye
step
  note Bring Foreman Thistlenettle's Explorers' League Badge to Wilder Thistlenettle in Stormwind.
  kill Foreman Thistlenettle##626 |goto Westfall 42.22,82.61 |elite
  collect Thistlenettle's Badge##1875 |q 167 |goto Westfall 42.22,82.61
step
  only completed(1072)
  note Bring 4 Minor Mana Potions and 2 Elixirs of Minor Fortitude to Lomac Gearstrip in Ironforge.
  collect 4 Minor Mana Potion##2455 |q 1073 |goto Westfall 45.8,26.58 |tip {dropsfrom}Defias Smuggler, Riverpaw Taskmaster, Harvest Watcher
step
  only completed(1075)
  note Bring Dust Devil Debris to Collin Mauren in Stormwind.
  collect Dust Devil Debris##5669 |q 1076 |goto Westfall 45.61,49.32 |tip {dropsfrom}Dust Devil
step
  only Skyborne completed(94947)
  talk Highlord Bolvar Fordragon##1748
  turnin Exploring the Alliance##93963 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  talk Baros Alexston##1646
  turnin Humble Beginnings##399 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  talk Elaine Trias##483
  turnin Philmor's Favor##97220 |goto Stormwind City 66.56,73.37 |tip {turninat}Stormwind City
step
  talk Elaine Trias##483
  turnin Gatehouse Goods##97222 |goto Stormwind City 66.56,73.37 |tip {turninat}Stormwind City
step
  talk Captain Grayson##392
  turnin Keeper of the Flame##103 |goto Westfall 30.01,86.02
step
  turnin Captain Sander's Hidden Treasure##136 |goto Westfall 25.91,47.75
step
  talk Alba Fairmoon##253092
  turnin Moonbrook Espionage##92747 |goto Westfall 52.49,53.06
step
  talk Sprite Jumpsprocket##11026
  turnin Explosive Consultation##92748 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  talk Sprite Jumpsprocket##11026
  turnin A Dynamite Plan##92749 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  talk Jasper Fel##1325
  turnin Detonation at a Distance##92750 |goto Stormwind City 80.28,70.07 |tip {turninat}Stormwind City
step
  talk Sprite Jumpsprocket##11026
  turnin Detonation at a Distance##92751 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  talk Alba Fairmoon##253092
  turnin Explosive Consultation##92752 |goto Westfall 52.49,53.06
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Jennea Cannon##5497
  turnin Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  talk Hemet Nesingwary##715
  turnin Of Mice and Milk##93928 |goto Stranglethorn Vale 35.66,10.81 |tip {turninat}Stranglethorn Vale
step
  talk Wiley the Black##266
  turnin The Defias Brotherhood##65 |goto Redridge Mountains 21.39,45.35 |tip {turninat}Redridge Mountains
step
  talk Wilder Thistlenettle##656
  turnin Collecting Memories##168 |goto Stormwind City 70.31,40.82 |tip {turninat}Stormwind City
step
  talk Alba Fairmoon##253279
  turnin Destruction in Deadmines##92753 |goto Westfall 38.75,84.16
step
  talk Alba Fairmoon##253279
  turnin Destruction in Deadmines##92819 |goto Westfall 38.75,84.16
step
  talk Captain Grayson##392
  turnin The Coast Isn't Clear##152 |goto Westfall 30.01,86.02
step
  talk Captain Grayson##392
  turnin The Coastal Menace##104 |goto Westfall 30.01,86.02
step
  talk Wilder Thistlenettle##656
  turnin Oh Brother. . .##167 |goto Stormwind City 70.31,40.82 |tip {turninat}Stormwind City
step
  only completed(1072)
  talk Lomac Gearstrip##4081
  turnin Ineptitude + Chemicals = Fun##1073 |goto Ironforge 72.08,51.88 |tip {turninat}Ironforge
step
  only completed(1075)
  talk Collin Mauren##4078
  turnin Devils in Westfall##1076 |goto Stormwind City 53.02,86.64 |tip {turninat}Stormwind City
step
  only Rogue
  talk Agent Kearnen##7024
  turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649)
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1650 |goto Westfall 41.69,89.24
step
  only Shaman
  talk Minor Manifestation of Water##5895
  turnin Call of Water##94503 |goto Silverpine Forest 38.65,44.58 |tip {turninat}Silverpine Forest
step
  only Human
  talk Osric Strang##1323
  turnin Continue to Stormwind##6281 |goto Stormwind City 77.17,60.99 |tip {turninat}Stormwind City
step
  only Human Paladin completed(1642)
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21
step
  only Dwarf Paladin completed(1646)
  talk John Turner##6175
  accept The Tome of Divinity##1648 |goto Ironforge 23.34,61.86
step
  click Captain's Footlocker##35
  accept Captain Sander's Hidden Treasure##138 |goto Westfall 25.91,47.75
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Jennea Cannon##5497
  accept Gathering Materials##1921 |goto Stormwind City 49.56,85.8
step
  only Rogue
  talk Agent Kearnen##7024
  accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649)
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  only Human Paladin completed(1642)
  note Bring 10 Linen Cloth to Stephanie Turner in Stormwind.
  collect 10 Linen Cloth##2589 |q 1644 |goto Alterac Mountains 21.33,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Dwarf Paladin completed(1646)
  note Bring 10 Linen Cloth to John Turner in Ironforge.
  collect 10 Linen Cloth##2589 |q 1648 |goto Alterac Mountains 21.33,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only not Dwarf not NightElf not Skyborne Mage
  note Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
  collect 10 Linen Cloth##2589 |q 1921 |goto Alterac Mountains 21.33,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Rogue
  note Steal the Defias Tower Key, break into the Defias Tower and uncover the contents of the Duskwood Chest. Take whatever information you find back to Mathias Shaw in Stormwind. Read Kearnen's Journal to gain insight about the tower.
  collect Klaven Mortwake's Journal##7908 |q 2359 |goto Westfall 70.41,73.93 |tip {dropsfrom}Duskwood Chest
step
  only Human Paladin completed(1642)
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21 |tip {turninat}Stormwind City
step
  only Dwarf Paladin completed(1646)
  talk John Turner##6175
  turnin The Tome of Divinity##1648 |goto Ironforge 23.34,61.86 |tip {turninat}Ironforge
step
  turnin Captain Sander's Hidden Treasure##138 |goto Westfall 40.52,47.79
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  turnin Gathering Materials##1921 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Klaven's Tower##2359 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649)
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  only Human
  talk Osric Strang##1323
  accept Dungar Longdrink##6261 |goto Stormwind City 77.17,60.99
step
  only Dwarf Paladin completed(1646)
  talk John Turner##6175
  accept The Tome of Divinity##1778 |goto Ironforge 23.34,61.86
step
  only Human Paladin completed(1642)
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1780 |goto Stormwind City 63.84,72.21
step
  click Broken Barrel##36
  accept Captain Sander's Hidden Treasure##139 |goto Westfall 40.52,47.79
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##14 |goto Westfall 56.33,47.52
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  accept Manaweave Robe##1941 |goto Stormwind City 51.84,83.51
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649)
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1652 |goto Westfall 41.69,89.24
step
  note Gryan Stoutmantle wants you to kill 15 Defias Highwaymen, 5 Defias Pathstalkers and 5 Defias Knuckledusters then return to him on Sentinel Hill.
  kill Defias Highwayman##122 |q 14 |goto Westfall 48.14,77.25
step
  only Human
  talk Dungar Longdrink##352
  turnin Dungar Longdrink##6261 |goto Stormwind City 70.95,72.51 |tip {turninat}Stormwind City
step
  only Dwarf Paladin completed(1646)
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1778 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Human Paladin completed(1642)
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1780 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  turnin Captain Sander's Hidden Treasure##139 |goto Westfall 40.63,17.03
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##14 |goto Westfall 56.33,47.52
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  turnin Manaweave Robe##1941 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649)
  talk Duthorian Rall##6171
  turnin The Tome of Valor##1652 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only Human
  talk Dungar Longdrink##352
  accept Return to Lewis##6285 |goto Stormwind City 70.95,72.51
step
  only Dwarf Paladin completed(1646)
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1779 |goto Ironforge 27.63,12.18
step
  only Human Paladin completed(1642)
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1781 |goto Stormwind City 50.48,47.49
step
  click Old Jug##34
  accept Captain Sander's Hidden Treasure##140 |goto Westfall 40.63,17.03
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649)
  talk Duthorian Rall##6171
  accept The Test of Righteousness##1653 |goto Stormwind City 50.48,47.49
step
  only Human
  talk Quartermaster Lewis##491
  turnin Return to Lewis##6285 |goto Westfall 57,47.17
step
  only Dwarf Paladin completed(1646)
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1779 |goto Ironforge 23.54,8.3 |tip {turninat}Ironforge
step
  only Human Paladin completed(1642)
  talk Gazin Tenorm##6173
  turnin The Tome of Divinity##1781 |goto Stormwind City 49.53,44.99 |tip {turninat}Stormwind City
step
  turnin Captain Sander's Hidden Treasure##140 |goto Westfall 25.97,16.91
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649)
  talk Jordan Stilwell##6181
  turnin The Test of Righteousness##1653 |goto Dun Morogh 52.49,36.92 |tip {turninat}Dun Morogh
step
  only Dwarf Paladin completed(1646)
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1783 |goto Ironforge 23.54,8.3
step
  only Human Paladin completed(1642)
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1786 |goto Stormwind City 49.53,44.99
step
  only Dwarf Paladin completed(1646)
  note Take the Symbol of Life and resurrect Narm Faulk in Dun Morogh.
  talk Narm Faulk##6177 |q 1783 |goto Dun Morogh 78.32,58.09
step
  only Human Paladin completed(1642)
  note Take the Symbol of Life and resurrect Henze Faulk in Elwynn.
  talk Henze Faulk##6172 |q 1786 |goto Elwynn Forest 72.6,51.41
step
  only Dwarf Paladin completed(1646)
  talk Narm Faulk##6177
  turnin The Tome of Divinity##1783 |goto Dun Morogh 78.32,58.09 |tip {turninat}Dun Morogh
step
  only Human Paladin completed(1642)
  talk Henze Faulk##6172
  turnin The Tome of Divinity##1786 |goto Elwynn Forest 72.6,51.41 |tip {turninat}Elwynn Forest
step
  only Dwarf Paladin completed(1646)
  talk Narm Faulk##6177
  accept The Tome of Divinity##1784 |goto Dun Morogh 78.32,58.09
step
  only Human Paladin completed(1642)
  talk Henze Faulk##6172
  accept The Tome of Divinity##1787 |goto Elwynn Forest 72.6,51.41
step
  only Dwarf Paladin completed(1646)
  note Retrieve a Dark Iron Script from the Dark Iron dwarves near Helm's Bed, and return to Muiredon Battleforge in Ironforge.
  collect Dark Iron Script##6847 |q 1784 |goto Dun Morogh 77.36,61.31 |tip {dropsfrom}Dark Iron Spy
step
  only Human Paladin completed(1642)
  note Retrieve a Defias Script from the Defias Rogue Wizards in Elwynn, and return to Gazin Tenorm in Stormwind.
  collect Defias Script##6846 |q 1787 |goto Elwynn Forest 73.38,52.48 |tip {dropsfrom}Defias Rogue Wizard, Defias Bodyguard
step
  only Dwarf Paladin completed(1646)
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1784 |goto Ironforge 23.54,8.3 |tip {turninat}Ironforge
step
  only Human Paladin completed(1642)
  talk Gazin Tenorm##6173
  turnin The Tome of Divinity##1787 |goto Stormwind City 49.53,44.99 |tip {turninat}Stormwind City
step
  only Dwarf Paladin completed(1646)
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1785 |goto Ironforge 23.54,8.3
step
  only Human Paladin completed(1642)
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1788 |goto Stormwind City 49.53,44.99
step
  only Dwarf Paladin completed(1646)
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1785 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Human Paladin completed(1642)
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1788 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  note {travel}Redridge Mountains
  goto Redridge Mountains 21.39,43.96
]])
