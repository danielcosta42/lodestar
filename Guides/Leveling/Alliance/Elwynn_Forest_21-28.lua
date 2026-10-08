-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Elwynn Forest (21-28)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Duskwood (30-35)",
	rev = "44b4adcf",
}, [[
step
  only completed(373)
  talk Baros Alexston##1646
  accept Bazil Thredd##389 |goto Stormwind City 57.74,47.86
step
  only completed(118)
  talk Smith Argus##514
  accept Return to Verner##119 |goto Elwynn Forest 41.71,65.54
step
  talk Theocritus##313
  accept A Watchful Eye##94 |goto Elwynn Forest 65.22,69.71
step
  only completed(69)
  talk Innkeeper Farley##295
  accept The Legend of Stalvan##70 |goto Elwynn Forest 43.77,65.8
step
  only completed(69)
  note Retrieve Stalvan's Undelivered Letter from the chest and deliver it to the Canal District in Stormwind.
  collect An Undelivered Letter##910 |q 70 |goto Elwynn Forest 44.3,65.82 |tip {dropsfrom}Storage Chest
step
  only completed(74)
  talk Marshal Haggard##294
  accept The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
step
  only completed(74)
  note Marshal Haggard wants you to check the chest upstairs for the Faded Journal Page.
  collect A Faded Journal Page##921 |q 75 |goto Elwynn Forest 85.7,69.54 |tip {dropsfrom}Marshal Haggard's Chest
step
  only completed(74)
  talk Marshal Haggard##294
  turnin The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
step
  only completed(74)
  talk Marshal Haggard##294
  accept The Legend of Stalvan##78 |goto Elwynn Forest 84.61,69.38
step
  only completed(118)
  talk Verner Osgood##415
  turnin Return to Verner##119 |goto Redridge Mountains 25.88,47.27 |tip {turninat}Redridge Mountains
step
  turnin A Watchful Eye##94 |goto Redridge Mountains 79.4,46.83 |tip {turninat}Redridge Mountains
step
  only completed(373)
  talk Warden Thelwater##1719
  turnin Bazil Thredd##389 |goto Stormwind City 51.49,69.38 |tip {turninat}Stormwind City
step
  only completed(69)
  talk Caretaker Folsom##297
  turnin The Legend of Stalvan##70 |goto Stormwind City 42.53,72.36 |tip {turninat}Stormwind City
step
  talk Brother Kristoff##1444
  accept Speaking of Fortitude##343 |goto Stormwind City 55.04,54.16
step
  talk Brother Sarno##7917
  accept Tinkmaster Overspark##2923 |goto Stormwind City 51.05,48.39
step
  only Warrior completed(1701)
  talk Furen Longbeard##5413
  accept Furen's Armor##1782 |goto Stormwind City 64.62,37.23
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Bink##5144
  accept High Sorcerer Andromath##1939 |goto Ironforge 27.25,8.3
step
  only not Dwarf not NightElf not Skyborne Mage completed(1940)
  talk Wynne Larson##1309
  accept Astral Knot Garment##1942 |goto Stormwind City 51.84,83.51
step
  talk Thomas##4982
  accept The Missing Diplomat##1274 |goto Stormwind City 49.64,44.48
step
  talk Milton Sheaf##1440
  turnin Speaking of Fortitude##343 |goto Stormwind City 77.07,30.21 |tip {turninat}Stormwind City
step
  talk Tinkmaster Overspark##7944
  turnin Tinkmaster Overspark##2923 |goto Ironforge 69.55,50.33 |tip {turninat}Ironforge
step
  only Warrior completed(1701)
  talk Furen Longbeard##5413
  turnin Furen's Armor##1782 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Mage
  talk High Sorcerer Andromath##5694
  turnin High Sorcerer Andromath##1939 |goto Stormwind City 48.71,87.62 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Mage completed(1940)
  talk Wynne Larson##1309
  turnin Astral Knot Garment##1942 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  talk Bishop DeLavey##4960
  turnin The Missing Diplomat##1274 |goto Stormwind City 80.24,44.07 |tip {turninat}Stormwind City
step
  only completed(74)
  talk Tavernkeep Smitts##273
  turnin The Legend of Stalvan##78 |goto Duskwood 73.78,44.49 |tip {turninat}Duskwood
step
  only completed(118)
  talk Verner Osgood##415
  accept Underbelly Scales##122 |goto Redridge Mountains 25.88,47.27
step
  only completed(118)
  talk Verner Osgood##415
  accept A Baying of Gnolls##124 |goto Redridge Mountains 25.88,47.27
step
  click Old Lion Statue##31
  accept Looking Further##248 |goto Redridge Mountains 79.4,46.83
step
  talk Milton Sheaf##1440
  accept Brother Paxton##344 |goto Stormwind City 77.07,30.21
step
  only completed(69)
  talk Caretaker Folsom##297
  accept The Legend of Stalvan##72 |goto Stormwind City 42.53,72.36
step
  only Human Warrior completed(1701)
  talk Furen Longbeard##5413
  accept Grimand Elmore##1700 |goto Stormwind City 64.62,37.23
step
  only NightElf Warrior completed(1701)
  talk Furen Longbeard##5413
  accept Mathiel##1703 |goto Stormwind City 64.62,37.23
step
  only not Human not NightElf not Skyborne Warrior completed(1701)
  talk Furen Longbeard##5413
  accept Klockmort Spannerspan##1704 |goto Stormwind City 64.62,37.23
step
  only Warrior completed(1701)
  talk Grimand Elmore##1416
  accept Burning Blood##1705 |goto Stormwind City 59.73,33.78
step
  only Warrior completed(1701)
  talk Klockmort Spannerspan##6169
  accept Iron Coral##1708 |goto Ironforge 67.92,46.1
step
  talk Bishop DeLavey##4960
  accept The Missing Diplomat##1241 |goto Stormwind City 80.24,44.07
step
  only completed(118)
  note Gather 6 Underbelly Whelp Scales from Black Dragon Whelps, and bring them to Verner Osgood in Redridge.
  collect 6 Underbelly Whelp Scale##1221 |q 122 |goto Redridge Mountains 38.42,77.96 |tip {dropsfrom}Black Dragon Whelp, Snarlflare
step
  only completed(118)
  note Kill 10 Redridge Brutes and 8 Redridge Mystics, then return to Verner Osgood.
  kill Redridge Brute##426 |q 124 |goto Redridge Mountains 18.91,34.91
step
  only Warrior completed(1701)
  note Bring 20 vials of Burning Blood and 1 Burning Rock to Grimand Elmore in Stormwind.
  collect 20 Burning Blood##6844 |q 1705 |goto Duskwood 65.13,67.39 |tip {dropsfrom}Nightbane Dark Runner, Nightbane Vile Fang, Nightbane Shadow Weaver
step
  only Warrior completed(1701)
  note Bring 20 loads of Searing Coral to Klockmort Spannerspan in Ironforge.
  collect 20 Searing Coral##6848 |q 1708 |goto Wetlands 8.92,70.18 |tip {dropsfrom}Iron Coral
step
  only completed(118)
  talk Verner Osgood##415
  turnin Underbelly Scales##122 |goto Redridge Mountains 25.88,47.27 |tip {turninat}Redridge Mountains
step
  only completed(118)
  talk Verner Osgood##415
  turnin A Baying of Gnolls##124 |goto Redridge Mountains 25.88,47.27 |tip {turninat}Redridge Mountains
step
  turnin Looking Further##248 |goto Redridge Mountains 58.16,49.84 |tip {turninat}Redridge Mountains
step
  talk Brother Paxton##951
  turnin Brother Paxton##344 |goto Elwynn Forest 49.61,40.41
step
  only completed(69)
  turnin The Legend of Stalvan##72 |goto Stormwind City 42.47,72.05 |tip {turninat}Stormwind City
step
  only Human Warrior completed(1701)
  talk Grimand Elmore##1416
  turnin Grimand Elmore##1700 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only NightElf Warrior completed(1701)
  talk Mathiel##6142
  turnin Mathiel##1703 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  only not Human not NightElf not Skyborne Warrior completed(1701)
  talk Klockmort Spannerspan##6169
  turnin Klockmort Spannerspan##1704 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  only Warrior completed(1701)
  talk Grimand Elmore##1416
  turnin Burning Blood##1705 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only Warrior completed(1701)
  talk Klockmort Spannerspan##6169
  turnin Iron Coral##1708 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  talk Jorgen##4959
  turnin The Missing Diplomat##1241 |goto Stormwind City 76.29,85.12 |tip {turninat}Stormwind City
step
  talk Brother Paxton##951
  accept Ink Supplies##345 |goto Elwynn Forest 49.61,40.41
step
  only completed(118)
  talk Verner Osgood##415
  accept Howling in the Hills##126 |goto Redridge Mountains 25.88,47.27
step
  talk Theocritus##313
  accept Morganth##249 |goto Elwynn Forest 65.22,69.71
step
  only completed(74)
  talk Tavernkeep Smitts##273
  accept The Legend of Stalvan##79 |goto Duskwood 73.78,44.49
step
  talk Jorgen##4959
  accept The Missing Diplomat##1242 |goto Stormwind City 76.29,85.12
step
  only completed(118)
  note Bring Yowler's Paw to Verner Osgood in Lakeshire.
  collect Yowler's Paw##3614 |q 126 |goto Redridge Mountains 22.56,21.38 |tip {dropsfrom}Yowler
step
  note Defeat Morganth.
  kill Morganth##397 |goto Redridge Mountains 75.02,49.49 |elite
  collect Pendant of Shadow##3617 |q 249 |goto Redridge Mountains 75.02,49.49
step
  talk Foreman Oslow##341
  turnin Ink Supplies##345 |goto Redridge Mountains 27.05,48.64 |tip {turninat}Redridge Mountains
step
  only completed(118)
  talk Verner Osgood##415
  turnin Howling in the Hills##126 |goto Redridge Mountains 25.88,47.27 |tip {turninat}Redridge Mountains
step
  talk Theocritus##313
  turnin Morganth##249 |goto Elwynn Forest 65.22,69.71
step
  only completed(74)
  talk Commander Althea Ebonlocke##264
  turnin The Legend of Stalvan##79 |goto Duskwood 73.54,46.82 |tip {turninat}Duskwood
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1242 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  talk Foreman Oslow##341
  accept Rethban Ore##347 |goto Redridge Mountains 27.05,48.64
step
  only completed(74)
  talk Commander Althea Ebonlocke##264
  accept The Legend of Stalvan##80 |goto Duskwood 73.54,46.82
step
  talk Elling Trias##482
  accept The Missing Diplomat##1243 |goto Stormwind City 66.03,74.1
step
  note Gather 5 loads of Rethban Ore and bring it to Brother Paxton in the Northshire Library.
  collect 5 Rethban Ore##2798 |q 347 |goto Redridge Mountains 16.19,17.37 |tip {dropsfrom}Redridge Drudger, Tin Vein, Copper Vein
step
  talk Brother Paxton##951
  turnin Rethban Ore##347 |goto Elwynn Forest 49.61,40.41
step
  only completed(74)
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##80 |goto Duskwood 72.54,46.87 |tip {turninat}Duskwood
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1243 |goto Duskwood 74.83,44.22 |tip {turninat}Duskwood
step
  talk Brother Paxton##951
  accept Return to Kristoff##346 |goto Elwynn Forest 49.61,40.41
step
  only completed(74)
  talk Clerk Daltry##267
  accept The Legend of Stalvan##97 |goto Duskwood 72.54,46.87
step
  talk Brother Kristoff##1444
  turnin Return to Kristoff##346 |goto Stormwind City 55.04,54.16 |tip {turninat}Stormwind City
step
  only completed(74)
  talk Commander Althea Ebonlocke##264
  turnin The Legend of Stalvan##97 |goto Duskwood 73.54,46.82 |tip {turninat}Duskwood
step
  note {travel}Stormwind City
  goto Stormwind City 40.14,85.31
]])
