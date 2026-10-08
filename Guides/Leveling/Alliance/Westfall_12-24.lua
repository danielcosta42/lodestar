-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Westfall (12-24)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Darkshore (13-20)",
}, [[
step
  note {fp}Kirk Maxwell
  goto Westfall 52.94,53.07 |tip {vendor}
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
  note Farmer Saldean wants you to kill 20 Harvest Watchers.
  kill Harvest Watcher##114 |q 9 |goto Westfall 45.61,35.13
step
  turnin Captain Sander's Hidden Treasure##136 |goto Westfall 25.91,47.75
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
  only Rogue
  talk Agent Kearnen##7024
  accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
step
  only Rogue
  note Steal the Defias Tower Key, break into the Defias Tower and uncover the contents of the Duskwood Chest. Take whatever information you find back to Mathias Shaw in Stormwind. Read Kearnen's Journal to gain insight about the tower.
  collect Klaven Mortwake's Journal##7908 |q 2359 |goto Westfall 70.41,73.93 |tip {dropsfrom}Duskwood Chest
step
  talk Alba Fairmoon##253279
  turnin Destruction in Deadmines##92753 |goto Westfall 38.75,84.16
step
  only Paladin
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  talk Alba Fairmoon##253279
  accept Destruction in Deadmines##92819 |goto Westfall 38.75,84.16
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
  talk Verna Furlbrow##238
  turnin Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
  talk Farmer Furlbrow##237
  turnin The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
step
  talk Hemet Nesingwary##715
  turnin Of Mice and Milk##93928 |goto Stranglethorn Vale 35.66,10.81 |tip {turninat}Stranglethorn Vale
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
  talk Salma Saldean##235
  turnin Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  talk Salma Saldean##235
  turnin Westfall Stew##38 |goto Westfall 56.42,30.52
step
  talk Sprite Jumpsprocket##11026
  turnin Explosive Consultation##92748 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
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
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  talk Magistrate Solomon##344
  turnin Messenger to Westfall##144 |goto Redridge Mountains 24.9,44.45 |tip {turninat}Redridge Mountains
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
  talk Captain Danuvin##821
  turnin Patrolling Westfall##102 |goto Westfall 56.42,47.62
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
  talk Alba Fairmoon##253279
  turnin Destruction in Deadmines##92819 |goto Westfall 38.75,84.16
step
  only Paladin
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  only Paladin
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1652 |goto Westfall 41.69,89.24
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
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52
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
  note {travel}Darkshore
  goto Darkshore 39.05,43.55
]])
