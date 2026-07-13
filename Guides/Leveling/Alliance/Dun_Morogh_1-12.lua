-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dun Morogh (1-12)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Elwynn Forest (2-10)",
}, [[
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  get Dwarven Outfitters |q 179 |goto Dun Morogh 29.93,71.2
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
  get A Refugee's Quandary |q 3361 |goto Dun Morogh 28.55,67.64
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
  talk Tannok Frosthammer##6806
  turnin Supplies to Tannok##2160 |goto Dun Morogh 47.22,52.19
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  turnin In Favor of the Light##5626 |goto Dun Morogh 47.34,52.19
step
  talk Pilot Stonegear##1377
  accept The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
  note Gather 8 Wendigo Manes and bring them to Pilot Stonegear.
  get The Grizzled Den |q 313 |goto Dun Morogh 49.62,48.61
step
  talk Pilot Bellowfiz##1378
  accept Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
  note Gather 4 Chunks of Boar Meat and 2 Thick Bear Furs, and deliver them to Pilot Bellowfiz at Steelgrill's Depot.
  get Stocking Jetsteam |q 317 |goto Dun Morogh 49.43,48.41
step
  talk Ragnar Thunderbrew##1267
  accept Beer Basted Boar Ribs##384 |goto Dun Morogh 46.83,52.36
step
  note Ragnar Thunderbrew in Kharanos wants 6 Crag Boar Ribs and a mug of Rhapsody Malt.
  get Beer Basted Boar Ribs |q 384 |goto Dun Morogh 46.83,52.36
step
  talk Tharek Blackstone##1872
  accept Tools for Steelgrill##400 |goto Dun Morogh 46.02,51.68
step
  talk Razzle Sprysprocket##1269
  accept Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
  note Bring Razzle Sprysprocket in Kharanos 8 Restabilization Cogs and 8 Gyromechanic Gears.
  get Operation Recombobulation |q 412 |goto Dun Morogh 45.85,49.37
step
  only Warlock
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
  get Ammo for Rumbleshot |q 5541 |goto Dun Morogh 50.08,49.42
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  accept Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  only NightElf Priest
  talk Maxan Anvol##1226
  accept Returning Home##5630 |goto Dun Morogh 47.34,52.19
step
  only Priest
  talk Maxan Anvol##1226
  accept Desperate Prayer##5637 |goto Dun Morogh 47.34,52.19
step
  only Dwarf Priest
  note Find Mountaineer Dolf and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Maxan Anvol in Kharanos.
  kill Mountaineer Dolf##12427 |q 5625 |goto Dun Morogh 45.81,54.57
step
  talk Tundra MacGrann##1266
  accept Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
  note Retrieve Tundra MacGrann's dried meats from the stolen meat locker in Old Icebeard's cave.
  get Tundra MacGrann's Stolen Stash |q 312 |goto Dun Morogh 34.57,51.65
step
  only Warlock
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
  get The Perfect Stout |q 315 |goto Dun Morogh 30.19,45.73
step
  only Rogue
  talk Onin MacHammar##6886
  accept Onin's Report##2239 |goto Dun Morogh 25.16,44.45
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
  talk Wonderform Operator##15732
  accept Winter's Presents##8827 |goto Dun Morogh 53.16,35.62
step
  talk Rudra Amberstill##1265
  accept Protecting the Herd##314 |goto Dun Morogh 63.08,49.85
step
  note Rudra Amberstill wants you to slay Vagash and bring his fang to her at the Ram ranch.
  get Protecting the Herd |q 314 |goto Dun Morogh 63.08,49.85
step
  talk Foreman Stonebrow##1254
  accept Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
  talk Senator Mehr Stonehallow##1977
  accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
  note Kill 6 Rockjaw Skullthumpers for Foreman Stonebrow at the Gol'Bolar quarry.
  kill Rockjaw Skullthumper##1115 |q 432 |goto Dun Morogh 70.5,57.08
step
  note Kill 10 Rockjaw Bonesnappers for Senator Mehr Stonehallow at the Gol'Bolar quarry.
  kill Rockjaw Bonesnapper##1117 |q 433 |goto Dun Morogh 72.03,53.3
step
  talk Pilot Hammerfoot##1960
  accept The Lost Pilot##419 |goto Dun Morogh 83.89,39.19
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
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5630 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
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
  only Gnome Warlock
  talk Sten Stoutarm##658
  accept Glyphic Memorandum##3114 |goto Dun Morogh 29.93,71.2
step
  only Gnome Druid
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
  get The Stolen Journal |q 218 |goto Dun Morogh 25.08,75.71
step
  talk Hegnar Rumbleshot##1243
  turnin Ammo for Rumbleshot##5541 |goto Dun Morogh 40.68,65.13
step
  talk Ragnar Thunderbrew##1267
  turnin Beer Basted Boar Ribs##384 |goto Dun Morogh 46.83,52.36
step
  talk Beldin Steelgrill##1376
  turnin Tools for Steelgrill##400 |goto Dun Morogh 50.44,49.09
step
  talk Razzle Sprysprocket##1269
  turnin Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
  talk Pilot Stonegear##1377
  turnin The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
  turnin Bitter Rivals##310 |goto Dun Morogh 47.72,52.7
step
  talk Pilot Bellowfiz##1378
  turnin Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  turnin Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  talk Pilot Bellowfiz##1378
  accept Evershine##318 |goto Dun Morogh 49.43,48.41
step
  only Rogue
  talk Hogral Bakkan##1234
  accept To Hulfdan!##2299 |goto Dun Morogh 47.56,52.61
step
  talk Tundra MacGrann##1266
  turnin Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
  talk Rejold Barleybrew##1374
  turnin The Perfect Stout##315 |goto Dun Morogh 30.19,45.73
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
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin To Hulfdan!##2299 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  talk Rudra Amberstill##1265
  turnin Protecting the Herd##314 |goto Dun Morogh 63.08,49.85
step
  talk Foreman Stonebrow##1254
  turnin Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
  talk Senator Mehr Stonehallow##1977
  turnin The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
  talk Mountaineer Barleybrew##1959
  turnin Shimmer Stout##413 |goto Dun Morogh 86.28,48.81
step
  talk Mountaineer Barleybrew##1959
  accept Stout to Kadrell##414 |goto Dun Morogh 86.28,48.81
step
  turnin The Lost Pilot##419 |goto Dun Morogh 79.67,36.17
step
  only Dwarf Warrior
  talk Thran Khorman##912
  turnin Simple Rune##3106 |goto Dun Morogh 28.83,67.24
step
  only Dwarf Paladin
  talk Bromos Grummner##926
  turnin Consecrated Rune##3107 |goto Dun Morogh 28.83,68.33
step
  only Dwarf Hunter
  talk Thorgas Grimson##895
  turnin Etched Rune##3108 |goto Dun Morogh 29.18,67.45
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
  talk Balir Frosthammer##713
  turnin A New Threat##170 |goto Dun Morogh 29.71,71.25
step
  only Gnome Rogue
  talk Solm Hargrin##916
  turnin Encrypted Memorandum##3113 |goto Dun Morogh 28.37,67.51
step
  only Gnome Warlock
  talk Marryk Nurribit##944
  turnin Glyphic Memorandum##3114 |goto Dun Morogh 28.71,66.37
step
  only Gnome Druid
  talk Alamar Grimm##460
  turnin Tainted Memorandum##3115 |goto Dun Morogh 28.65,66.14
step
  talk Grelin Whitebeard##786
  turnin The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  talk Grelin Whitebeard##786
  accept Senir's Observations##282 |goto Dun Morogh 25.08,75.71
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
  talk Mountaineer Thalos##1965
  turnin Senir's Observations##282 |goto Dun Morogh 33.48,71.84
step
  talk Mountaineer Thalos##1965
  accept Senir's Observations##420 |goto Dun Morogh 33.48,71.84
step
  talk Senir Whitebeard##1252
  turnin Senir's Observations##420 |goto Dun Morogh 46.73,53.83
step
  talk Pilot Bellowfiz##1378
  turnin Return to Bellowfiz##320 |goto Dun Morogh 49.43,48.41
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
