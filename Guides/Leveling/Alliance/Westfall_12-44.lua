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
  note Farmer Saldean wants you to kill 20 Harvest Watchers.
  kill Harvest Watcher##114 |q 9 |goto Westfall 45.61,35.13
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
  accept A Swift Message##6181 |goto Westfall 57.0,47.17
step
  talk Grimbooze Thunderbrew##239
  accept Sweet Amber##48 |goto Westfall 44.62,80.25
step
  note Bring Holy Spring Water to Grimbooze Thunderbrew.
  collect Holy Spring Water##737 |q 48 |goto Stranglethorn Vale 28.96,61.93 |tip {dropsfrom}The Holy Spring
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
  talk Farmer Furlbrow##237
  turnin The Forgotten Heirloom##64 |goto Westfall 59.95,19.36
step
  talk Verna Furlbrow##238
  turnin Poor Old Blanchy##151 |goto Westfall 59.92,19.42
step
  note Kill 7 Tidehunters, 7 Warriors, 7 Oracles and 7 Coastrunners and return to Captain Grayson at the Westfall Lighthouse.
  kill Murloc Coastrunner##126 |q 152 |goto Westfall 45.37,8.99
step
  talk Salma Saldean##235
  turnin Westfall Stew##38 |goto Westfall 56.42,30.52
step
  talk Farmer Saldean##233
  turnin The Killing Fields##9 |goto Westfall 56.04,31.23
step
  talk Salma Saldean##235
  turnin Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
step
  note Gryan Stoutmantle wants you to kill 15 Defias Trappers and 15 Defias Smugglers then return to him on Sentinel Hill.
  kill Defias Trapper##504 |q 12 |goto Westfall 46.4,34.58
step
  talk Wiley the Black##266
  turnin The Defias Brotherhood##65 |goto Redridge Mountains 26.48,45.35 |tip {turninat}Redridge Mountains
step
  only Human
  talk Thor##523
  turnin A Swift Message##6181 |goto Westfall 56.55,52.64
step
  talk Captain Danuvin##821
  turnin Patrolling Westfall##102 |goto Westfall 56.42,47.62
step
  talk Master Mathias Shaw##332
  turnin The Defias Brotherhood##135 |goto Stormwind City 75.78,59.84 |tip {turninat}Stormwind City
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
  talk Gryan Stoutmantle##234
  accept The People's Militia##13 |goto Westfall 56.33,47.52
step
  talk The Defias Traitor##467
  accept The Defias Brotherhood##155 |goto Westfall 55.68,47.5
step
  only Human
  talk Thor##523
  accept Continue to Stormwind##6281 |goto Westfall 56.55,52.64
step
  talk Grimbooze Thunderbrew##239
  turnin Sweet Amber##48 |goto Westfall 44.62,80.25
step
  talk Grimbooze Thunderbrew##239
  accept Sweet Amber##49 |goto Westfall 44.62,80.25
step
  note Grimbooze Thunderbrew wants a Sack of Barley, a Sack of Rye and a Sack of Corn.
  collect Sack of Barley##738 |q 49 |goto Swamp of Sorrows 62.54,23.11 |tip {dropsfrom}Sack of Barley
step
  note Gryan Stoutmantle wants you to kill 15 Defias Pillagers and 15 Defias Looters and return to him on Sentinel Hill.
  kill Defias Pillager##589 |q 13 |goto Westfall 38.81,66.41
step
  talk Captain Grayson##392
  turnin Keeper of the Flame##103 |goto Westfall 30.01,86.02
step
  talk Captain Grayson##392
  turnin The Coastal Menace##104 |goto Westfall 30.01,86.02
step
  talk Captain Grayson##392
  turnin The Coast Isn't Clear##152 |goto Westfall 30.01,86.02
step
  only Human
  talk Osric Strang##1323
  turnin Continue to Stormwind##6281 |goto Stormwind City 74.31,47.24 |tip {turninat}Stormwind City
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##13 |goto Westfall 56.33,47.52
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
  collect Head of VanCleef##3637 |q 166 |goto The Deadmines - Dungeon - The Deadmines -1,-1 |tip {dropsfrom}Edwin VanCleef
step
  talk Scout Riell##820
  accept Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  note Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas.
  collect Red Silk Bandana##915 |q 214 |goto Westfall 42.88,74.49 |tip {dropsfrom}Defias Henchman, Defias Miner, Defias Conjurer
step
  talk Grimbooze Thunderbrew##239
  turnin Sweet Amber##49 |goto Westfall 44.62,80.25
step
  talk Grimbooze Thunderbrew##239
  accept Sweet Amber##50 |goto Westfall 44.62,80.25
step
  note Grimbooze Thunderbrew wants Truesilver.
  collect Truesilver Bar##6037 |q 50 |goto Stranglethorn Vale 41.52,50.76 |tip {dropsfrom}Solid Chest
step
  note Gryan Stoutmantle wants you to kill 15 Defias Highwaymen, 5 Defias Pathstalkers and 5 Defias Knuckledusters then return to him on Sentinel Hill.
  kill Defias Highwayman##122 |q 14 |goto Westfall 48.14,79.1
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##166 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  turnin The People's Militia##14 |goto Westfall 56.33,47.52
step
  talk Scout Riell##820
  turnin Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  talk Grimbooze Thunderbrew##239
  turnin Sweet Amber##50 |goto Westfall 44.62,80.25
step
  talk Grimbooze Thunderbrew##239
  accept Sweet Amber##51 |goto Westfall 44.62,80.25
step
  note Bring a Sycamore Branch to Grimbooze Thunderbrew.
  collect A Sycamore Branch##742 |q 51 |goto Feralas 55.43,67.61 |tip {dropsfrom}Cursed Sycamore
step
  talk Grimbooze Thunderbrew##239
  turnin Sweet Amber##51 |goto Westfall 44.62,80.25
step
  talk Grimbooze Thunderbrew##239
  accept Sweet Amber##53 |goto Westfall 44.62,80.25
step
  note Bring Grimbooze Thunderbrew a bundle of Charred Oak.
  collect Bundle of Charred Oak##743 |q 53 |goto Searing Gorge 54.49,50.47 |tip {dropsfrom}The Charred Oak
step
  talk Grimbooze Thunderbrew##239
  turnin Sweet Amber##53 |goto Westfall 44.62,80.25
step
  note {travel}Darkshore
  goto Darkshore 43.55,76.29
]])
