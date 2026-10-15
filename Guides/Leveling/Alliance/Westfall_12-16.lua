-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Westfall (12-16)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Dun Morogh (13-26)",
	rev = "509d64e0",
}, [[
step
  ding 11
step
  talk Gilbert Gray##267118
  accept Fishin' Time##95065 |goto Stormwind City 26.27,47.08
step
  note {fp}Thor
  goto Westfall 56.55,52.64 |tip {vendor}
step
  note Bring 1 Shiny Bauble and 3 Nightcrawlers to Gilbert Gray at the harbor in Stormwind.
  talk Gina MacGregor##843
  buy 3 Nightcrawlers##6530 |q 95065 |goto Westfall 57.64,54.05
step
  only haveq(109)
  note Talk to Gryan Stoutmantle. He usually can be found in the stone tower on Sentinel Hill, just off the road, in the middle of Westfall.
  talk Gryan Stoutmantle##234
  turnin Report to Gryan Stoutmantle##109 |goto Westfall 56.33,47.52
step
  only Skyborne haveq(98021)
  note Report To Gryan Stoutmantle at Sentinel Hill in Westfall.
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
  accept Testing the Wells##92742 |goto Westfall 52.48,53.05
step
  note Use the Well Water Sample Kit to collect samples from the wells at the Jansen Stead and the Molsen Farm.
  collect Jansen Stead Water Sample##254546 |q 92742/1
  collect Molsen Farm Water Sample##254547 |q 92742
step
  talk Alba Fairmoon##253092
  accept Murloc Gills##92744 |goto Westfall 52.48,53.05
step
  only Human
  note Bring Lewis' Note to Thor the gryphon master.
  talk Thor##523
  turnin A Swift Message##6181 |goto Westfall 56.55,52.64
step
  talk Alba Fairmoon##253092
  turnin Testing the Wells##92742 |goto Westfall 52.48,53.05
step
  only Human
  talk Thor##523
  accept Continue to Stormwind##6281 |goto Westfall 56.55,52.64
step
  talk Captain Danuvin##821
  accept Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
  talk Alba Fairmoon##253092
  accept The State of the Mines##92745 |goto Westfall 52.48,53.05
step
  talk Salma Saldean##235
  accept Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  only haveq(184)
  note Bring Furlbrow's Deed to Farmer Furlbrow.
  talk Farmer Furlbrow##237
  turnin Furlbrow's Deed##184 |goto Westfall 59.95,19.36
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
  note Bring 8 Gnoll Paws to Captain Danuvin on Sentinel Hill.
  collect 8 Gnoll Paw##725 |q 102 |goto Westfall 52.16,14.11 |tip {dropsfrom}Riverpaw Gnoll, Riverpaw Mongrel, Riverpaw Scout
step
  note Slay 4 Kobold Diggers in the Jangolode Mine and 6 Riverpaw Miners in the Gold Coast Quarry.
  kill Kobold Digger##1236 |q 92745/1 |goto Westfall 45.32,20.46
  kill Riverpaw Miner##1426 |q 92745 |goto Westfall 30.27,49.65
step
  note Alba Fairmoon wants you to collect 7 Longshore Murloc Gills along the shoreline of Westfall.
  collect 7 Longshore Murloc Gill##254548 |q 92744 |goto Westfall 45.02,8.89 |tip {dropsfrom}Murloc Coastrunner, Murloc Raider, Murloc Minor Oracle
step
  note Gryan Stoutmantle wants you to kill 15 Defias Trappers and 15 Defias Smugglers then return to him on Sentinel Hill.
  kill Defias Smuggler##95 |q 12/2 |goto Westfall 45.8,26.58
  kill Defias Trapper##504 |q 12 |goto Westfall 47.39,36.32
step
  note Salma Saldean needs 8 Goretusk livers to make a Goretusk Liver Pie.
  collect 8 Goretusk Liver##723 |q 22 |goto Westfall 50.42,29.35 |tip {dropsfrom}Young Goretusk, Goretusk, Great Goretusk
step
  note Verna Furlbrow in Westfall wants you to bring her 8 Handfuls of Oats.
  collect 8 Handful of Oats##1528 |q 151 |goto Westfall 48.96,34.17 |tip {dropsfrom}Sack of Oats
step
  talk Farmer Furlbrow##237
  turnin The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
step
  talk Verna Furlbrow##238
  turnin Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##12 |goto Westfall 56.33,47.52
step
  talk Captain Danuvin##821
  turnin Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
  talk Alba Fairmoon##253092
  turnin Murloc Gills##92744 |goto Westfall 52.48,53.05
step
  talk Alba Fairmoon##253092
  turnin The State of the Mines##92745 |goto Westfall 52.48,53.05
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##13 |goto Westfall 56.33,47.52
step
  talk Scout Galiaan##878
  accept Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
  talk Alba Fairmoon##253092
  accept Moonbrook Espionage##92747 |goto Westfall 52.48,53.05
step
  note Gryan Stoutmantle wants you to kill 15 Defias Pillagers and 15 Defias Looters and return to him on Sentinel Hill.
  kill Defias Looter##590 |q 13/2 |goto Westfall 38.65,58.11
  kill Defias Pillager##589 |q 13 |goto Westfall 38.76,69.61
step
  note Collect 8 Suspicious Industrial Supplies from Moonbrook.
  collect 8 Suspicious Industrial Supplies##254676 |q 92747 |goto Westfall 42.5,68.7 |tip {dropsfrom}Suspicious Crate
step
  talk Salma Saldean##235
  turnin Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  note Verna Furlbrow wants you to deliver her recipe for Westfall Stew to Salma Saldean.
  talk Salma Saldean##235
  turnin Westfall Stew##36 |goto Westfall 56.42,30.52
step
  talk Salma Saldean##235
  accept Westfall Stew##38 |goto Westfall 56.42,30.52
step
  talk Farmer Saldean##233
  accept The Killing Fields##9 |goto Westfall 56.04,31.23
step
  note Salma Saldean wants 3 Stringy Vulture Meat, 3 Goretusk Snouts, 3 Murloc Eyes, 3 Okra.
  collect 3 Stringy Vulture Meat##729 |q 38/1 |goto Westfall 51.87,27.69 |tip {dropsfrom}Young Fleshripper, Fleshripper, Greater Fleshripper
  collect 3 Goretusk Snout##731 |q 38/3 |goto Westfall 50.42,29.35 |tip {dropsfrom}Young Goretusk, Goretusk
  collect 3 Okra##732 |q 38/4 |goto Westfall 47.88,33.47 |tip {dropsfrom}Harvest Golem, Rusty Harvest Golem, Harvest Watcher
  collect 3 Murloc Eye##730 |q 38 |goto Westfall 34.28,15.91 |tip {dropsfrom}Murloc Minor Oracle, Murloc Coastrunner, Murloc Raider
step
  talk Salma Saldean##235
  turnin Westfall Stew##38 |goto Westfall 56.42,30.52
step
  talk Ozwin Ironsprocket##253395
  accept Harvesting the Harvesters##92909 |goto Westfall 51.58,32.23
step
  kill Harvest Golem##36 |goto Westfall 47.88,33.47 |tip Loot the quest item here — it starts the quest.
  accept Harvesting the Harvesters##92910 |goto Westfall 47.88,33.47
step
  talk Ozwin Ironsprocket##253395
  accept Harvesting the Harvesters##92911 |goto Westfall 51.58,32.23
step
  note Farmer Saldean wants you to kill 20 Harvest Watchers.
  kill Harvest Watcher##114 |q 9 |goto Westfall 45.9,36.14
step
  note Ozwin Ironsprocket at Saldean's Farm wants you to bring him 14 Golem Isosprings and 5 Harvester Gyrostabilizers.
  collect 14 Golem Isospring##255007 |q 92909 |goto Westfall 47.88,33.47 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Rusty Harvest Golem
step
  note Ozwin Ironsprocket at Saldean's Farm wants you to bring him 8 Golem Isosprings, 4 Copper Modulators, and a Crude Scope.
  collect 8 Golem Isospring##255007 |q 92911 |goto Westfall 47.88,33.47 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Rusty Harvest Golem
step
  talk Ozwin Ironsprocket##253395
  turnin Harvesting the Harvesters##92909 |goto Westfall 51.58,32.23
step
  note Bring the Precessive Autocognition Assembly to Ozwin Ironsprocket at Saldean's Farm.
  talk Ozwin Ironsprocket##253395
  turnin Harvesting the Harvesters##92910 |goto Westfall 51.58,32.23
step
  talk Ozwin Ironsprocket##253395
  turnin Harvesting the Harvesters##92911 |goto Westfall 51.58,32.23
step
  note Bring 15 Red Leather Bandanas to Scout Galiaan at Sentinel Hill.
  collect 15 Red Leather Bandana##829 |q 153 |goto Westfall 45.8,26.58 |tip {dropsfrom}Defias Smuggler, Defias Pathstalker, Defias Footpad
step
  talk Farmer Saldean##233
  turnin The Killing Fields##9 |goto Westfall 56.04,31.23
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##13 |goto Westfall 56.33,47.52
step
  talk Scout Galiaan##878
  turnin Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
  talk Alba Fairmoon##253092
  turnin Moonbrook Espionage##92747 |goto Westfall 52.48,53.05
step
  talk Alba Fairmoon##253092
  accept Explosive Consultation##92748 |goto Westfall 52.48,53.05
step
  talk Captain Grayson##392
  accept Keeper of the Flame##103 |goto Westfall 30.01,86.02
step
  note Bring 5 Flasks of Oil to Captain Grayson at the Westfall Lighthouse.
  collect 5 Flask of Oil##814 |q 103 |goto Westfall 47.88,33.47 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Rusty Harvest Golem
step
  kill Murloc Coastrunner##126 |goto Westfall 45.02,8.89 |tip Loot the quest item here — it starts the quest.
  accept Captain Sander's Hidden Treasure##136 |goto Westfall 45.02,8.89
step
  note Find Captain Sanders' footlocker and search it for the next clue.
  turnin Captain Sander's Hidden Treasure##136 |goto Westfall 25.91,47.75
step
  click Captain's Footlocker##35
  accept Captain Sander's Hidden Treasure##138 |goto Westfall 25.91,47.75
step
  note Find the old barrel near the ruined chimney and search it for your next clue.
  turnin Captain Sander's Hidden Treasure##138 |goto Westfall 40.52,47.79
step
  click Broken Barrel##36
  accept Captain Sander's Hidden Treasure##139 |goto Westfall 40.52,47.79
step
  talk Captain Grayson##392
  turnin Keeper of the Flame##103 |goto Westfall 30.01,86.02
step
  note Search the empty jug next to the windmill for the next clue.
  turnin Captain Sander's Hidden Treasure##139 |goto Westfall 40.63,17.03
step
  click Old Jug##34
  accept Captain Sander's Hidden Treasure##140 |goto Westfall 40.63,17.03
step
  note Locate Captain Sanders' chest and open it for your reward.
  turnin Captain Sander's Hidden Treasure##140 |goto Westfall 25.97,16.91
step
  talk Gryan Stoutmantle##234
  accept The People's Militia##14 |goto Westfall 56.33,47.52
step
  note Gryan Stoutmantle wants you to kill 15 Defias Highwaymen, 5 Defias Pathstalkers and 5 Defias Knuckledusters then return to him on Sentinel Hill.
  kill Defias Highwayman##122 |q 14/1 |goto Westfall 48.14,77.25
  kill Defias Knuckleduster##449 |q 14/3 |goto Westfall 49.26,78.89
  kill Defias Pathstalker##121 |q 14 |goto Westfall 37.41,75.38
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##14 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##65 |goto Westfall 56.33,47.52
step
  talk Captain Grayson##392
  accept The Coast Isn't Clear##152 |goto Westfall 30.01,86.02
step
  talk Captain Grayson##392
  accept The Coastal Menace##104 |goto Westfall 30.01,86.02
step
  note Bring a scale of Old Murk-Eye to Captain Grayson at the Westfall Lighthouse.
  collect Scale of Old Murk-Eye##3636 |q 104 |goto Westfall 29.27,75.95 |tip {dropsfrom}Old Murk-Eye
step
  talk Captain Grayson##392
  turnin The Coastal Menace##104 |goto Westfall 30.01,86.02
step
  note Kill 7 Tidehunters, 7 Warriors, 7 Oracles and 7 Coastrunners and return to Captain Grayson at the Westfall Lighthouse.
  kill Murloc Tidehunter##127 |q 152/3 |goto Westfall 27.93,74.54
  kill Murloc Oracle##517 |q 152/4 |goto Westfall 27.69,70.02
  kill Murloc Warrior##171 |q 152/2 |goto Westfall 28.42,33.41
  kill Murloc Coastrunner##126 |q 152 |goto Westfall 45.02,8.89
step
  talk Captain Grayson##392
  turnin The Coast Isn't Clear##152 |goto Westfall 30.01,86.02
step
  talk Gilbert Gray##267118
  turnin Fishin' Time##95065 |goto Stormwind City 26.27,47.08 |tip {turninat}Stormwind City
step
  talk Manifest Clerk Philmor##268511
  accept Philmor's Favor##97220 |goto Stormwind City 30.43,28.85
step
  only Human Paladin completed(1642)
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1643 |goto Stormwind City 50.48,47.49
step
  talk Baros Alexston##1646
  accept Humble Beginnings##399 |goto Stormwind City 57.74,47.86
step
  note Travel to the Dwarven District in Stormwind and find an engineer who can help.
  talk Sprite Jumpsprocket##11026
  turnin Explosive Consultation##92748 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  talk Sprite Jumpsprocket##11026
  accept Explosive Consultation##92752 |goto Stormwind City 61.88,30.56
step
  only Human
  note Buy a gryphon ride from the gryphon master Thor, then bring Lewis' Note to Osric Strang, in the shop Limited Immunity, in the Old Town of Stormwind.
  talk Osric Strang##1323
  turnin Continue to Stormwind##6281 |goto Stormwind City 77.17,60.99 |tip {turninat}Stormwind City
step
  only Human
  talk Osric Strang##1323
  accept Dungar Longdrink##6261 |goto Stormwind City 77.17,60.99
step
  only Human
  note Bring Osric's Crate to Dungar Longdrink the gryphon master.
  talk Dungar Longdrink##352
  turnin Dungar Longdrink##6261 |goto Stormwind City 70.95,72.51 |tip {turninat}Stormwind City
step
  only Human
  talk Dungar Longdrink##352
  accept Return to Lewis##6285 |goto Stormwind City 70.95,72.51
step
  note Bring the Gatehouse Shipment to the stockroom entrance located in Trias' Cheese shop in the Trade District.
  talk Elaine Trias##483
  turnin Philmor's Favor##97220 |goto Stormwind City 66.56,73.37 |tip {turninat}Stormwind City
step
  talk Elaine Trias##483
  accept Gatehouse Goods##97222 |goto Stormwind City 66.56,73.37
step
  note Carry the Gatehouse Shipment up the stairs in Trias' shop and leave it outside the door.
  talk Elaine Trias##483
  turnin Gatehouse Goods##97222 |goto Stormwind City 66.56,73.37 |tip {turninat}Stormwind City
step
  only Human Paladin completed(1642)
  note Search the Trade District of Stormwind for Stephanie Turner.
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1643 |goto Stormwind City 63.84,72.21 |tip {turninat}Stormwind City
step
  only Dwarf Paladin completed(1646)
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1647 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin completed(1646)
  note Search the outer ring of Ironforge for John Turner.
  talk John Turner##6175
  turnin The Tome of Divinity##1647 |goto Ironforge 23.34,61.86 |tip {turninat}Ironforge
step
  only Dwarf Paladin not completed(2999) not completed(3000) not haveq(2999) not haveq(3000)
  talk Azar Stronghammer##1232
  accept Tome of Divinity##2997 |goto Dun Morogh 47.6,52.07
step
  only Dwarf Paladin not completed(2999) not completed(3000) not haveq(2999) not haveq(3000)
  note Speak to Tiza Battleforge in Ironforge.
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##2997 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Human Paladin not completed(3681) not haveq(3681)
  talk Brother Wilhelm##927
  accept Tome of Divinity##2998 |goto Elwynn Forest 41.1,66.04
step
  only Human Paladin not completed(3681) not haveq(3681)
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin Tome of Divinity##2998 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  note Return to Alba Fairmoon in Westfall.
  talk Alba Fairmoon##253092
  turnin Explosive Consultation##92752 |goto Westfall 52.48,53.05
step
  only Human
  note Buy a gryphon ride to Sentinel Hill from the gryphon master Dungar Longdrink, then take Osric's Crate to Lewis at Sentinel Hill.
  talk Quartermaster Lewis##491
  turnin Return to Lewis##6285 |goto Westfall 57,47.17
step
  note Go to Baros Alexston's house in Westfall and search for his compass, then return it to him in Cathedral Square of Stormwind.
  collect A Simple Compass##2998 |q 399 |goto Westfall 36.24,54.52 |tip {dropsfrom}Alexston's Chest
step
  talk Baros Alexston##1646
  turnin Humble Beginnings##399 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  note {travel}Dun Morogh
  goto Dun Morogh 50.44,49.09
]])
