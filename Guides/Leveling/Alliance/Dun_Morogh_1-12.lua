-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dun Morogh (1-12)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Elwynn Forest (2-10)",
}, [[
step
  talk Pilot Stonegear##1377
  accept The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
  note Gather 8 Wendigo Manes and bring them to Pilot Stonegear.
  collect 8 Wendigo Mane##2671 |q 313 |goto Dun Morogh 42.12,54.63 |tip {dropsfrom}Young Wendigo, Wendigo, Edan the Howler
step
  talk Pilot Bellowfiz##1378
  accept Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
  note Gather 4 Chunks of Boar Meat and 2 Thick Bear Furs, and deliver them to Pilot Bellowfiz at Steelgrill's Depot.
  collect 4 Chunk of Boar Meat##769 |q 317 |goto Elwynn Forest 38.75,85.14 |tip {dropsfrom}Stonetusk Boar, Longsnout, Goretusk
step
  talk Harlan Bagley##1427
  accept Harlan Needs a Resupply##333 |goto Stormwind City 55.11,56.23
step
  talk Rema Schneider##1428
  accept Package for Thurman##334 |goto Stormwind City 49.65,55.64
step
  talk Ragnar Thunderbrew##1267
  accept Beer Basted Boar Ribs##384 |goto Dun Morogh 46.83,52.36
step
  note Ragnar Thunderbrew in Kharanos wants 6 Crag Boar Ribs and a mug of Rhapsody Malt.
  collect Crag Boar Rib##2886 |q 384 |goto Dun Morogh 22.2,71.37 |tip {dropsfrom}Small Crag Boar, Crag Boar, Large Crag Boar
step
  talk Tharek Blackstone##1872
  accept Tools for Steelgrill##400 |goto Dun Morogh 46.02,51.68
step
  click Guarded Thunder Ale Barrel##269
  accept Guarded Thunderbrew Barrel##403 |goto Dun Morogh 47.72,52.7
step
  talk Razzle Sprysprocket##1269
  accept Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
  note Bring Razzle Sprysprocket in Kharanos 8 Restabilization Cogs and 8 Gyromechanic Gears.
  collect Restabilization Cog##3083 |q 412 |goto Dun Morogh 26.02,40.76 |tip {dropsfrom}Leper Gnome, Gibblewilt
step
  only Warrior
  talk Granis Swiftaxe##1229
  accept Muren Stormpike##1679 |goto Dun Morogh 47.36,52.65
step
  only Mage
  talk Magis Sparkmantle##1228
  accept Speak with Bink##1879 |goto Dun Morogh 47.5,52.08
step
  only Rogue
  talk Hogral Bakkan##1234
  accept Road to Salvation##2218 |goto Dun Morogh 47.56,52.61
step
  talk Loslor Rudge##1694
  accept Ammo for Rumbleshot##5541 |goto Dun Morogh 50.08,49.42
step
  note Bring Rumbleshot's Ammo to Hegnar Rumbleshot in Dun Morogh.
  collect Rumbleshot's Ammo##13850 |q 5541 |goto Dun Morogh 44.13,56.95 |tip {dropsfrom}Ammo Crate
step
  only NightElf Priest
  talk Maxan Anvol##1226
  accept Returning Home##5630 |goto Dun Morogh 47.34,52.19
step
  only Priest
  talk Maxan Anvol##1226
  accept Desperate Prayer##5637 |goto Dun Morogh 47.34,52.19
step
  talk Tundra MacGrann##1266
  accept Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
  note Retrieve Tundra MacGrann's dried meats from the stolen meat locker in Old Icebeard's cave.
  collect MacGrann's Dried Meats##2667 |q 312 |goto Dun Morogh 38.51,53.93 |tip {dropsfrom}MacGrann's Meat Locker
step
  only Mage
  talk Bink##5144
  turnin Speak with Bink##1879 |goto Ironforge 27.25,8.3 |tip {turninat}Ironforge
step
  talk Marleth Barleybrew##1375
  accept Bitter Rivals##310 |goto Dun Morogh 30.19,45.53
step
  talk Rejold Barleybrew##1374
  accept The Perfect Stout##315 |goto Dun Morogh 30.19,45.73
step
  note Bring 6 Shimmerweeds to Rejold Barleybrew in the Brewnall Village.
  collect 6 Shimmerweed##2676 |q 315 |goto Dun Morogh 41.76,35.86 |tip {dropsfrom}Frostmane Seer, Shimmerweed Basket
step
  talk Eitrigg##3144
  accept The New Horde##787 |goto Orgrimmar 34.28,39.35
step
  only Rogue
  talk Onin MacHammar##6886
  accept Onin's Report##2239 |goto Dun Morogh 25.16,44.45
step
  talk Gornek##3143
  turnin The New Horde##787 |goto Durotar 42.06,68.33 |tip {turninat}Durotar
step
  talk Hegnar Rumbleshot##1243
  turnin Ammo for Rumbleshot##5541 |goto Dun Morogh 40.68,65.13
step
  talk Thurman Schneider##1429
  turnin Package for Thurman##334 |goto Stormwind City 42.53,76.2 |tip {turninat}Stormwind City
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5630 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  collect Tough Wolf Meat##750 |q 179 |goto Elwynn Forest 49.48,39.15 |tip {dropsfrom}Timber Wolf, Young Wolf, Ragged Timber Wolf
step
  talk Sten Stoutarm##658
  accept Coldridge Valley Mail Delivery##233 |goto Dun Morogh 29.93,71.2
step
  talk Hands Springsprocket##6782
  accept Supplies to Tannok##2160 |goto Dun Morogh 33.85,72.24
step
  talk Felix Whindlebolt##8416
  accept A Refugee's Quandary##3361 |goto Dun Morogh 28.55,67.64
step
  note Bring Felix's Box, Felix's Chest and Felix's Bucket of Bolts to Felix Whindlebolt in Anvilmar.
  collect Felix's Box##10438 |q 3361 |goto Dun Morogh 20.88,76.07
step
  only Dwarf Priest
  talk Branstock Khalder##837
  accept In Favor of the Light##5626 |goto Dun Morogh 28.6,66.39
step
  talk Talin Keeneye##714
  turnin Coldridge Valley Mail Delivery##233 |goto Dun Morogh 22.6,71.43
step
  talk Grelin Whitebeard##786
  accept The Troll Cave##182 |goto Dun Morogh 25.08,75.71
step
  talk Talin Keeneye##714
  accept The Boar Hunter##183 |goto Dun Morogh 22.6,71.43
step
  talk Talin Keeneye##714
  accept Coldridge Valley Mail Delivery##234 |goto Dun Morogh 22.6,71.43
step
  talk Nori Pridedrift##12738
  accept Scalding Mornbrew Delivery##3364 |goto Dun Morogh 24.98,75.96
step
  note Grelin Whitebeard would like you to kill 14 Frostmane Troll Whelps.
  kill Frostmane Troll Whelp##706 |q 182 |goto Dun Morogh 27.16,79.96
step
  note Talin Keeneye would like you to kill 12 Small Crag Boars.
  kill Small Crag Boar##708 |q 183 |goto Dun Morogh 22.2,71.37
step
  talk Rudra Amberstill##1265
  accept Protecting the Herd##314 |goto Dun Morogh 63.08,49.85
step
  note Rudra Amberstill wants you to slay Vagash and bring his fang to her at the Ram ranch.
  collect Fang of Vagash##3627 |q 314 |goto Dun Morogh 62.62,46.05 |tip {dropsfrom}Vagash
step
  only Warrior
  talk Muren Stormpike##6114
  turnin Muren Stormpike##1679 |goto Ironforge 70.77,90.27 |tip {turninat}Ironforge
step
  talk Renato Gallina##1432
  accept Wine Shop Advert##332 |goto Stormwind City 56.98,63.53
step
  talk Foreman Stonebrow##1254
  accept Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
  talk Senator Mehr Stonehallow##1977
  accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
  only Warrior
  talk Muren Stormpike##6114
  accept Vejrek##1678 |goto Ironforge 70.77,90.27
step
  only Warrior
  note Bring Vejrek's Head to Muren Stormpike in Ironforge.
  collect Vejrek's Head##6799 |q 1678 |goto Dun Morogh 27.83,57.96 |tip {dropsfrom}Vejrek
step
  note Kill 6 Rockjaw Skullthumpers for Foreman Stonebrow at the Gol'Bolar quarry.
  kill Rockjaw Skullthumper##1115 |q 432 |goto Dun Morogh 70.5,57.08
step
  note Kill 10 Rockjaw Bonesnappers for Senator Mehr Stonehallow at the Gol'Bolar quarry.
  kill Rockjaw Bonesnapper##1117 |q 433 |goto Dun Morogh 72.03,53.3
step
  talk Torallius the Pack Handler##17584
  accept Elekks Are Serious Business##9625 |goto The Exodar 81.49,51.44
step
  talk Pilot Hammerfoot##1960
  accept The Lost Pilot##419 |goto Dun Morogh 83.89,39.19
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5637 |goto Stormwind City 38.58,26.06 |tip {turninat}Stormwind City
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin Road to Salvation##2218 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin Onin's Report##2239 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  talk Arch Druid Fandral Staghelm##3516
  accept Grove of the Ancients##952 |goto Darnassus 34.81,9.26
step
  talk Wonderform Operator##15732
  accept Winter's Presents##8827 |goto Dun Morogh 53.16,35.62
step
  talk Ragnar Thunderbrew##1267
  turnin Beer Basted Boar Ribs##384 |goto Dun Morogh 46.83,52.36
step
  talk Beldin Steelgrill##1376
  turnin Tools for Steelgrill##400 |goto Dun Morogh 50.44,49.09
step
  turnin Guarded Thunderbrew Barrel##403 |goto Dun Morogh 47.72,52.7
step
  talk Razzle Sprysprocket##1269
  turnin Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
  turnin Bitter Rivals##310 |goto Dun Morogh 47.72,52.7
step
  talk Pilot Stonegear##1377
  turnin The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
  talk Pilot Bellowfiz##1378
  turnin Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
  talk Rema Schneider##1428
  turnin Harlan Needs a Resupply##333 |goto Stormwind City 49.65,55.64 |tip {turninat}Stormwind City
step
  talk Tannok Frosthammer##6806
  turnin Supplies to Tannok##2160 |goto Dun Morogh 47.22,52.19
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  turnin In Favor of the Light##5626 |goto Dun Morogh 47.34,52.19
step
  click Unguarded Thunder Ale Barrel##270
  accept Return to Marleth##311 |goto Dun Morogh 47.72,52.7
step
  talk Pilot Bellowfiz##1378
  accept Evershine##318 |goto Dun Morogh 49.43,48.41
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  accept Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  only Dwarf Priest
  note Find Mountaineer Dolf and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Maxan Anvol in Kharanos.
  kill Mountaineer Dolf##12427 |q 5625 |goto Dun Morogh 45.81,54.57
step
  talk Tundra MacGrann##1266
  turnin Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
  talk Rejold Barleybrew##1374
  turnin The Perfect Stout##315 |goto Dun Morogh 30.19,45.73
step
  talk Marleth Barleybrew##1375
  turnin Return to Marleth##311 |goto Dun Morogh 30.19,45.53
step
  talk Rejold Barleybrew##1374
  turnin Evershine##318 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  accept A Favor for Evershine##319 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  accept Shimmer Stout##413 |goto Dun Morogh 30.19,45.73
step
  talk Vorkhan the Elekk Herder##17586
  turnin Elekks Are Serious Business##9625 |goto Bloodmyst Isle 63.03,87.9 |tip {turninat}Bloodmyst Isle
step
  talk Onu##3616
  turnin Grove of the Ancients##952 |goto Darkshore 43.55,76.29 |tip {turninat}Darkshore
step
  talk Suzetta Gallina##1431
  turnin Wine Shop Advert##332 |goto Stormwind City 52.48,67.61 |tip {turninat}Stormwind City
step
  talk Felix Whindlebolt##8416
  turnin A Refugee's Quandary##3361 |goto Dun Morogh 28.55,67.64
step
  talk Durnan Furcutter##836
  turnin Scalding Mornbrew Delivery##3364 |goto Dun Morogh 28.77,66.37
step
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  talk Greatfather Winter##13444
  turnin Winter's Presents##8827 |goto Ironforge 33.2,65.41 |tip {turninat}Ironforge
step
  talk Balir Frosthammer##713
  accept A New Threat##170 |goto Dun Morogh 29.71,71.25
step
  only Dwarf Warrior
  talk Sten Stoutarm##658
  accept Simple Rune##3106 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Paladin
  talk Sten Stoutarm##658
  accept Consecrated Rune##3107 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Hunter
  talk Sten Stoutarm##658
  accept Etched Rune##3108 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Rogue
  talk Sten Stoutarm##658
  accept Encrypted Rune##3109 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Priest
  talk Sten Stoutarm##658
  accept Hallowed Rune##3110 |goto Dun Morogh 29.93,71.2
step
  only Gnome Warrior
  talk Sten Stoutarm##658
  accept Simple Memorandum##3112 |goto Dun Morogh 29.93,71.2
step
  only Gnome Rogue
  talk Sten Stoutarm##658
  accept Encrypted Memorandum##3113 |goto Dun Morogh 29.93,71.2
step
  only Gnome Mage
  talk Sten Stoutarm##658
  accept Glyphic Memorandum##3114 |goto Dun Morogh 29.93,71.2
step
  only Gnome Warlock
  talk Sten Stoutarm##658
  accept Tainted Memorandum##3115 |goto Dun Morogh 29.93,71.2
step
  talk Durnan Furcutter##836
  accept Bring Back the Mug##3365 |goto Dun Morogh 28.77,66.37
step
  note Balir Frosthammer wants you to kill 6 Rockjaw Troggs and 6 Burly Rockjaw Troggs.
  kill Rockjaw Trogg##707 |q 170 |goto Dun Morogh 30.35,75.5
step
  talk Nori Pridedrift##12738
  turnin Bring Back the Mug##3365 |goto Dun Morogh 24.98,75.96
step
  talk Grelin Whitebeard##786
  turnin The Troll Cave##182 |goto Dun Morogh 25.08,75.71
step
  talk Talin Keeneye##714
  turnin The Boar Hunter##183 |goto Dun Morogh 22.6,71.43
step
  talk Grelin Whitebeard##786
  turnin Coldridge Valley Mail Delivery##234 |goto Dun Morogh 25.08,75.71
step
  talk Grelin Whitebeard##786
  accept The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  note Grelin Whitebeard wants you to kill Grik'nir the Cold, and retrieve his journal.
  collect Grelin Whitebeard's Journal##2004 |q 218 |goto Dun Morogh 30.48,80.15 |tip {dropsfrom}Grik'nir the Cold
step
  talk Rudra Amberstill##1265
  turnin Protecting the Herd##314 |goto Dun Morogh 63.08,49.85
step
  only Warrior
  talk Muren Stormpike##6114
  turnin Vejrek##1678 |goto Ironforge 70.77,90.27 |tip {turninat}Ironforge
step
  talk Foreman Stonebrow##1254
  turnin Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
  talk Senator Mehr Stonehallow##1977
  turnin The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
  only Warrior
  talk Muren Stormpike##6114
  accept Tormus Deepforge##1680 |goto Ironforge 70.77,90.27
step
  talk Mountaineer Barleybrew##1959
  turnin Shimmer Stout##413 |goto Dun Morogh 86.28,48.81
step
  talk Mountaineer Barleybrew##1959
  accept Stout to Kadrell##414 |goto Dun Morogh 86.28,48.81
step
  turnin The Lost Pilot##419 |goto Dun Morogh 79.67,36.17
step
  click A Dwarven Corpse##2059
  accept A Pilot's Revenge##417 |goto Dun Morogh 79.67,36.17
step
  note Kill Mangeclaw.
  collect Mangy Claw##3183 |q 417 |goto Dun Morogh 78.31,37.76 |tip {dropsfrom}Mangeclaw
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Tormus Deepforge##1680 |goto Ironforge 48.64,42.48 |tip {turninat}Ironforge
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Ironband's Compound##1681 |goto Ironforge 48.64,42.48
step
  only Warrior
  note Bring a load of Umbral Ore to Tormus Deepforge in Ironforge.
  collect Umbral Ore##6800 |q 1681 |goto Dun Morogh 77.96,62.16 |tip {dropsfrom}Ironband's Strongbox
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  turnin Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  talk Tharek Blackstone##1872
  accept Rejold's New Brew##415 |goto Dun Morogh 46.02,51.68
step
  talk Mountaineer Kadrell##1340
  turnin Stout to Kadrell##414 |goto Loch Modan 34.17,47.84 |tip {turninat}Loch Modan
step
  note Kill 6 Ice Claw Bears, 8 Elder Crag Boars, and 8 Snow Leopards, and then return to Rejold Barleybrew in Brewnall Village.
  kill Ice Claw Bear##1196 |q 319 |goto Dun Morogh 35.9,46.93
step
  talk Rejold Barleybrew##1374
  turnin Rejold's New Brew##415 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  turnin A Favor for Evershine##319 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  accept Return to Bellowfiz##320 |goto Dun Morogh 30.19,45.73
step
  only Dwarf Warrior
  talk Thran Khorman##912
  turnin Simple Rune##3106 |goto Dun Morogh 28.83,67.24
step
  only Dwarf Hunter
  talk Thorgas Grimson##895
  turnin Etched Rune##3108 |goto Dun Morogh 29.18,67.45
step
  only Dwarf Paladin
  talk Bromos Grummner##926
  turnin Consecrated Rune##3107 |goto Dun Morogh 28.83,68.33
step
  only Dwarf Rogue
  talk Solm Hargrin##916
  turnin Encrypted Rune##3109 |goto Dun Morogh 28.37,67.51
step
  only Dwarf Priest
  talk Branstock Khalder##837
  turnin Hallowed Rune##3110 |goto Dun Morogh 28.6,66.39
step
  only Gnome Warrior
  talk Thran Khorman##912
  turnin Simple Memorandum##3112 |goto Dun Morogh 28.83,67.24
step
  only Gnome Rogue
  talk Solm Hargrin##916
  turnin Encrypted Memorandum##3113 |goto Dun Morogh 28.37,67.51
step
  talk Balir Frosthammer##713
  turnin A New Threat##170 |goto Dun Morogh 29.71,71.25
step
  only Gnome Mage
  talk Marryk Nurribit##944
  turnin Glyphic Memorandum##3114 |goto Dun Morogh 28.71,66.37
step
  only Gnome Warlock
  talk Alamar Grimm##460
  turnin Tainted Memorandum##3115 |goto Dun Morogh 28.65,66.14
step
  talk Grelin Whitebeard##786
  turnin The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  talk Grelin Whitebeard##786
  accept Senir's Observations##282 |goto Dun Morogh 25.08,75.71
step
  talk Pilot Hammerfoot##1960
  turnin A Pilot's Revenge##417 |goto Dun Morogh 83.89,39.19
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Ironband's Compound##1681 |goto Ironforge 48.64,42.48 |tip {turninat}Ironforge
step
  talk Pilot Bellowfiz##1378
  turnin Return to Bellowfiz##320 |goto Dun Morogh 49.43,48.41
step
  talk Mountaineer Thalos##1965
  turnin Senir's Observations##282 |goto Dun Morogh 33.48,71.84
step
  talk Mountaineer Thalos##1965
  accept Senir's Observations##420 |goto Dun Morogh 33.48,71.84
step
  talk Senir Whitebeard##1252
  turnin Senir's Observations##420 |goto Dun Morogh 46.73,53.83
step
  talk Senir Whitebeard##1252
  accept Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
step
  note Explore Frostmane Hold, and kill 5 Frostmane Headhunters for Senir Whitebeard in Kharanos.
  kill Frostmane Headhunter##1123 |q 287 |goto Dun Morogh 23.9,51.4
step
  talk Senir Whitebeard##1252
  turnin Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
step
  talk Senir Whitebeard##1252
  accept The Reports##291 |goto Dun Morogh 46.73,53.83
step
  talk Senator Barin Redstone##1274
  turnin The Reports##291 |goto Ironforge 39.55,57.49 |tip {turninat}Ironforge
step
  note {travel}Elwynn Forest
  goto Elwynn Forest 48.17,42.94
]])
