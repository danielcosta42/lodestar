-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dun Morogh (5-11)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Westfall (12-20)",
}, [[
step
  note {fp}Shelby Stoneflint
  goto Dun Morogh 47.01,52.66 |tip {vendor}
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  collect Tough Wolf Meat##750 |q 179 |goto Elwynn Forest 49.48,39.15 |tip {dropsfrom}Timber Wolf, Young Wolf, Ragged Timber Wolf
step
  only Warlock
  talk Alamar Grimm##460
  accept Beginnings##1599 |goto Dun Morogh 28.65,66.14
step
  only Warlock
  note Bring 3 Feather Charms to Alamar Grimm in Anvilmar.
  collect 3 Feather Charm##6753 |q 1599 |goto Dun Morogh 30.1,81.17 |tip {dropsfrom}Frostmane Novice
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
  only Priest
  talk Branstock Khalder##837
  accept In Favor of the Light##5626 |goto Dun Morogh 28.6,66.39
step
  only Shaman
  talk Teo Hammerstorm##257446
  accept Call of Earth##94373 |goto Dun Morogh 28.84,66.23
step
  only Shaman
  note Bring 2 Frostmane Bear Pendants to Teo Hammerstorm in Anvilmar.
  collect 2 Iceclaw Bear Pendant##264356 |q 94373 |goto Dun Morogh 27.16,79.96 |tip {dropsfrom}Frostmane Troll Whelp, Frostmane Novice
step
  only Shaman
  talk Teo Hammerstorm##257446
  accept Call of Earth##94374 |goto Dun Morogh 28.84,66.23
step
  only Shaman
  talk Teo Hammerstorm##257446
  accept Earth Sapta##94472 |goto Dun Morogh 28.84,66.23
step
  talk Mountaineer Thalos##1965
  accept The Adventurer##96628 |goto Dun Morogh 33.48,71.84
step
  only Gnome Priest
  talk Sten Stoutarm##658
  accept Hallowed Memorandum##98574 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Shaman
  talk Sten Stoutarm##658
  accept Archaic Rune##98581 |goto Dun Morogh 29.93,71.2
step
  talk Grelin Whitebeard##786
  accept The Troll Cave##182 |goto Dun Morogh 25.08,75.71
step
  talk Talin Keeneye##714
  accept The Boar Hunter##183 |goto Dun Morogh 22.6,71.43
step
  talk Nori Pridedrift##12738
  accept Scalding Mornbrew Delivery##3364 |goto Dun Morogh 24.98,75.96
step
  talk Lariia##4092
  accept Crown of the Earth##98065 |goto Darnassus 40.35,88.68
step
  talk Sentinel Dalia Sunblade##8396
  accept Eyes of the Sentinels##98067 |goto Darnassus 39.65,89.54
step
  note Grelin Whitebeard would like you to kill 14 Frostmane Troll Whelps.
  kill Frostmane Troll Whelp##706 |q 182 |goto Dun Morogh 27.16,79.96
step
  note Talin Keeneye would like you to kill 12 Small Crag Boars.
  kill Small Crag Boar##708 |q 183 |goto Dun Morogh 22.2,71.37
step
  only Shaman
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##94374 |goto Durotar 44.03,76.2 |tip {turninat}Durotar
step
  talk Tannok Frosthammer##6806
  turnin Supplies to Tannok##2160 |goto Dun Morogh 47.22,52.19
step
  talk Eric Brighthammer##265813
  turnin The Adventurer##96628 |goto Dun Morogh 46.72,53.92
step
  only Priest
  talk Maxan Anvol##1226
  turnin In Favor of the Light##5626 |goto Dun Morogh 47.34,52.19
step
  talk Senir Whitebeard##1252
  accept Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
step
  talk Pilot Stonegear##1377
  accept The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
  note Gather 8 Wendigo Manes and bring them to Pilot Stonegear.
  collect 8 Wendigo Mane##2671 |q 313 |goto Dun Morogh 42.49,55.17 |tip {dropsfrom}Young Wendigo, Wendigo, Edan the Howler
step
  talk Pilot Bellowfiz##1378
  accept Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
  note Gather 4 Chunks of Boar Meat and 2 Thick Bear Furs, and deliver them to Pilot Bellowfiz at Steelgrill's Depot.
  collect 4 Chunk of Boar Meat##769 |q 317 |goto Elwynn Forest 38.56,85.14 |tip {dropsfrom}Stonetusk Boar, Longsnout, Goretusk
step
  talk Tharek Blackstone##1872
  accept Tools for Steelgrill##400 |goto Dun Morogh 46.02,51.68
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
  only Dwarf Paladin
  talk Azar Stronghammer##1232
  accept Tome of Divinity##2997 |goto Dun Morogh 47.6,52.07
step
  talk Loslor Rudge##1694
  accept Ammo for Rumbleshot##5541 |goto Dun Morogh 50.08,49.42
step
  note Bring Rumbleshot's Ammo to Hegnar Rumbleshot in Dun Morogh.
  collect Rumbleshot's Ammo##13850 |q 5541 |goto Dun Morogh 44.13,56.95 |tip {dropsfrom}Ammo Crate
step
  only Priest
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
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
step
  only NightElf Hunter
  talk Grif Wildheart##1231
  accept The Hunter's Path##6722 |goto Dun Morogh 45.81,53.04
step
  only Shaman
  talk Ingrid Dunwald##258113
  accept Call of Fire##94449 |goto Dun Morogh 47.51,51.95
step
  only Gnome Priest
  talk Maxan Anvol##1226
  accept Confounding Flash##94824 |goto Dun Morogh 47.34,52.19
step
  talk Beldin Steelgrill##1376
  accept A Visitor to Dun Morogh##96408 |goto Dun Morogh 50.44,49.09
step
  talk Eric Brighthammer##265813
  accept The Great Outdoors##96608 |goto Dun Morogh 46.72,53.92
step
  talk Mountaineer Gretchen##271546
  accept Secure the Mountain##98319 |goto Dun Morogh 44.14,57.03
step
  talk Tognus Flintfire##1241
  accept Flintfire's Shipment##98321 |goto Dun Morogh 45.34,51.94
step
  note Collect 8 Flintfire Shipments from the Grizzled Den for Tongus Flintfire in Kharanos.
  collect 8 Flintfire's Shipment##280413 |q 98321 |goto Dun Morogh 41.8,47.5
step
  talk Senir Whitebeard##1252
  accept Secure the Mountain##98322 |goto Dun Morogh 46.73,53.83
step
  talk Mountaineer Gretchen##271546
  accept Secure the Mountain##98323 |goto Dun Morogh 44.14,57.03
step
  talk Maxan Anvol##1226
  accept Dawn in the Mountains##99158 |goto Dun Morogh 47.34,52.19
step
  only Dwarf Hunter
  note Use the Taming Rod to tame a Large Crag Boar. Practice your skills, then return the Taming Rod to Grif Wildheart in Kharanos.
  use Large Crag Boar##1126 |q 6064 |goto Dun Morogh 45.36,50.31 |tip {useit}
step
  note Sit near Eric's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  collect Basic Campfire##450009 |q 96608 |goto Dun Morogh 46.68,53.84
step
  only Priest
  note Find Mountaineer Dolf and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Maxan Anvol in Kharanos.
  kill Mountaineer Dolf##12427 |q 5625 |goto Dun Morogh 45.81,54.57
step
  talk Tundra MacGrann##1266
  accept Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
  note Retrieve Tundra MacGrann's dried meats from the stolen meat locker in Old Icebeard's cave.
  collect MacGrann's Dried Meats##2667 |q 312 |goto Dun Morogh 38.51,53.93 |tip {dropsfrom}MacGrann's Meat Locker
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##2997 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Mage
  talk Bink##5144
  turnin Speak with Bink##1879 |goto Ironforge 27.25,8.3 |tip {turninat}Ironforge
step
  only Gnome Priest
  talk High Priestess Mims##258785
  turnin Confounding Flash##94824 |goto Ironforge 24.89,10.23 |tip {turninat}Ironforge
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
  only Mage
  talk Bink##5144
  accept Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3
step
  only Mage
  note Bring Bink her Mage-tastic Gizmonitor.
  collect Mage-tastic Gizmonitor##7226 |q 1880 |goto Dun Morogh 27.72,36.42 |tip {dropsfrom}Bink's Toolbox
step
  only NightElf Priest
  talk High Priest Rohan##11406
  accept Returning Home##5633 |goto Ironforge 24.73,8.16
step
  only Priest
  talk High Priest Rohan##11406
  accept Desperate Prayer##5639 |goto Ironforge 24.73,8.16
step
  only Dwarf Hunter
  talk Tristane Shadowstone##11807
  accept The Hunter's Path##6075 |goto Dun Morogh 31.42,44.4
step
  only Gnome Priest
  talk High Priestess Mims##258785
  accept Confounding Flash##94817 |goto Ironforge 24.89,10.23
step
  talk Arch Druid Fandral Staghelm##3516
  accept Crown of the Earth##98046 |goto Darnassus 34.81,9.26
step
  talk Gretta Ganter##8508
  accept Frosthowl##98326 |goto Dun Morogh 31.53,44.65
step
  note Slay Frosthowl and collect the Sack of Fish for Gretta Ganter in Brewnall Village
  collect Sack of Fish##280426 |q 98326 |goto Dun Morogh 39.96,48.5 |tip {dropsfrom}Frosthowl
step
  note Explore Frostmane Hold, and kill 5 Frostmane Headhunters for Senir Whitebeard in Kharanos.
  kill Frostmane Headhunter##1123 |q 287 |goto Dun Morogh 23.9,51.4
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin Road to Salvation##2218 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  talk Father Gavin##1253
  turnin Dawn in the Mountains##99158 |goto Dun Morogh 57.73,44.88
step
  only Warlock
  talk Lago Blackwrench##6120
  accept The Slaughtered Lamb##1715 |goto Ironforge 47.63,9.26
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Simple Subterfugin'##2238 |goto Ironforge 51.96,14.84
step
  talk Golnir Bouldertoe##4256
  accept Gryth Thurden##6388 |goto Ironforge 51.52,26.31
step
  talk Father Gavin##1253
  accept Finding Warmth##99159 |goto Dun Morogh 57.73,44.88
step
  note Collect 14 pieces of firewood.
  collect 14 Mostly Dry Firewood##286339 |q 99159 |goto Dun Morogh 56.6,52.2 |tip {dropsfrom}Fallen Log
step
  talk Father Gavin##1253
  accept Rime's Wrath##99160 |goto Dun Morogh 57.73,44.88
step
  talk Father Gavin##1253
  accept Rime's Wrath##99161 |goto Dun Morogh 57.73,44.88
step
  note Kill Avala and retrieve its core.
  collect Avala's Core##286325 |q 99161 |goto Dun Morogh 57.74,42.33 |tip {dropsfrom}Avala
step
  talk Father Gavin##1253
  accept Treacherous Cold##99162 |goto Dun Morogh 57.73,44.88
step
  note Collect the rifles of fallen mountaineers.
  collect Coalbeard's Rifle##286358 |q 99162 |goto Dun Morogh 52.1,44
step
  note Destroy 10 minor ice elementals.
  kill Minor Ice Elemental##276003 |q 99160 |goto Dun Morogh 55.57,44.53
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin The Hunter's Path##6722 |goto Teldrassil 56.68,59.49 |tip {turninat}Teldrassil
step
  talk Rudra Amberstill##1265
  accept Protecting the Herd##314 |goto Dun Morogh 63.08,49.85
step
  note Rudra Amberstill wants you to slay Vagash and bring his fang to her at the Ram ranch.
  kill Vagash##1388 |goto Dun Morogh 62.62,46.05 |elite
  collect Fang of Vagash##3627 |q 314 |goto Dun Morogh 62.62,46.05
step
  talk Jemma Quikswitch##11028
  accept Data Hoarders##95041 |goto Ironforge 67.66,44.21
step
  note Collect 7 Gnomeregan Archival Data cards from around Gnomeregan, then deliver them to Jemma Quikswitch in Ironforge.
  collect 7 Gnomeregan Archival Data##267413 |q 95041 |goto Dun Morogh 26.2,41.1 |tip {dropsfrom}Snowdrift
step
  talk Rudra Amberstill##1265
  accept Never Saddle on Quality##95212 |goto Dun Morogh 63.08,49.85
step
  note Collect 6 Pristine Leopard Pelts and deliver them to Amberstill Ranch.
  collect 6 Pristine Leopard Pelt##267414 |q 95212 |goto Dun Morogh 75.21,57.52 |tip {dropsfrom}Elder Snow Leopard
step
  talk Earthseer Farsen##264936
  turnin A Visitor to Dun Morogh##96408 |goto Dun Morogh 64.92,58.51
step
  talk Foreman Stonebrow##1254
  accept Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
  talk Senator Mehr Stonehallow##1977
  accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
  kill Rockjaw Ambusher##1116 |goto Dun Morogh 73.52,55.08 |tip Loot the quest item here — it starts the quest.
  accept Stolen Blasting Powder##95213 |goto Dun Morogh 73.52,55.08
step
  note Bring the Empty Powder Keg to Quarrymaster Thesten at Gol'Bolar Quarry.
  collect Empty Powder Keg##268548 |q 95213 |goto Dun Morogh 73.52,55.08 |tip {dropsfrom}Rockjaw Ambusher, Rockjaw Backbreaker
step
  talk Quarrymaster Thesten##1256
  accept Stolen Blasting Powder##95214 |goto Dun Morogh 69.16,54.8
step
  note Recover 16 Stolen Blasting Powder from the troggs east of Gol'Bolar Quarry, then return to Quarrymaster Thesten.
  collect Stolen Blasting Powder##267415 |q 95214 |goto Dun Morogh 73.52,55.08 |tip {dropsfrom}Rockjaw Ambusher, Rockjaw Backbreaker
step
  talk Frast Dokner##1698
  accept The Quarry's Smith##95217 |goto Dun Morogh 69,55.89
step
  note Collect 12 Copper Bars and 4 Toughened Boar Hides and deliver them to Frast Dokner.
  collect 12 Copper Bar##2840 |q 95217 |goto Dun Morogh 69,55.89
step
  talk Earthseer Farsen##264936
  accept Nip 'Em in the Bud##96390 |goto Dun Morogh 64.92,58.51
step
  talk Earthseer Farsen##264936
  accept Farsen's Watch##96392 |goto Dun Morogh 64.92,58.51
step
  talk Earthseer Farsen##264936
  accept Old Ironforge Incursion##96393 |goto Dun Morogh 64.92,58.51
step
  note Enter the Hall of Thanes beneath Old Ironforge and claim the Head of Durgen Dirgehammer.
  collect Durgen Dirgehammer's Head##274286 |q 96393 |goto Dun Morogh 64.92,58.51 |tip {dropsfrom}Durgen Dirgehammer
step
  note Kill 6 Rockjaw Skullthumpers for Foreman Stonebrow at the Gol'Bolar quarry.
  kill Rockjaw Skullthumper##1115 |q 432 |goto Dun Morogh 70.5,57.08
step
  note Kill 10 Rockjaw Bonesnappers for Senator Mehr Stonehallow at the Gol'Bolar quarry.
  kill Rockjaw Bonesnapper##1117 |q 433 |goto Dun Morogh 72.03,53.3
step
  only Warrior
  talk Muren Stormpike##6114
  turnin Muren Stormpike##1679 |goto Ironforge 70.77,90.27 |tip {turninat}Ironforge
step
  only Warrior
  talk Muren Stormpike##6114
  accept Vejrek##1678 |goto Ironforge 70.77,90.27
step
  only Warrior
  note Bring Vejrek's Head to Muren Stormpike in Ironforge.
  collect Vejrek's Head##6799 |q 1678 |goto Dun Morogh 27.83,57.96 |tip {dropsfrom}Vejrek
step
  only Dwarf Paladin
  talk Narm Faulk##6177
  accept The Tome of Divinity##1784 |goto Dun Morogh 78.32,58.09
step
  only Dwarf Paladin
  note Retrieve a Dark Iron Script from the Dark Iron dwarves near Helm's Bed, and return to Muiredon Battleforge in Ironforge.
  collect Dark Iron Script##6847 |q 1784 |goto Dun Morogh 77.46,61.31 |tip {dropsfrom}Dark Iron Spy
step
  only Dwarf Hunter
  talk Olmin Burningbeard##5116
  accept The Hunter's Path##6074 |goto Ironforge 70.89,83.61
step
  only NightElf Hunter
  talk Olmin Burningbeard##5116
  accept The Hunter's Path##6721 |goto Ironforge 70.89,83.61
step
  kill Dark Iron Spy##6123 |goto Dun Morogh 77.46,61.31 |tip Loot the quest item here — it starts the quest.
  accept Underground Map##96391 |goto Dun Morogh 77.46,61.31
step
  note Slay 10 Dark Iron Spies in Dun Morogh.
  kill Dark Iron Spy##6123 |q 96390 |goto Dun Morogh 77.46,61.31
step
  only Shaman
  talk Bruegs Kindleborn##257597
  turnin Call of Fire##94449 |goto Dun Morogh 87.62,43.77
step
  talk Pilot Hammerfoot##1960
  accept The Lost Pilot##419 |goto Dun Morogh 83.89,39.19
step
  only Shaman
  talk Bruegs Kindleborn##257597
  accept Call of Fire##94465 |goto Dun Morogh 87.62,43.77
step
  only Shaman
  talk Braldir Ashmantle##257808
  turnin Call of Fire##94465 |goto Loch Modan 32.05,66.06 |tip {turninat}Loch Modan
step
  only Shaman
  talk Teo Hammerstorm##257446
  turnin Earth Sapta##94472 |goto Dun Morogh 28.84,66.23
step
  only Gnome Priest
  talk Branstock Khalder##837
  turnin Hallowed Memorandum##98574 |goto Dun Morogh 28.6,66.39
step
  only Dwarf Shaman
  talk Teo Hammerstorm##257446
  turnin Archaic Rune##98581 |goto Dun Morogh 28.84,66.23
step
  talk Felix Whindlebolt##8416
  turnin A Refugee's Quandary##3361 |goto Dun Morogh 28.55,67.64
step
  talk Durnan Furcutter##836
  turnin Scalding Mornbrew Delivery##3364 |goto Dun Morogh 28.77,66.37
step
  only Shaman
  talk Teo Hammerstorm##257446
  turnin Call of Earth##94373 |goto Dun Morogh 28.84,66.23
step
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  only Warlock
  talk Alamar Grimm##460
  turnin Beginnings##1599 |goto Dun Morogh 28.65,66.14
step
  talk Balir Frosthammer##713
  accept A New Threat##170 |goto Dun Morogh 29.71,71.25
step
  talk Sten Stoutarm##658
  accept Coldridge Valley Mail Delivery##233 |goto Dun Morogh 29.93,71.2
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
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5633 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only Warlock
  talk Gakin the Darkbinder##6122
  turnin The Slaughtered Lamb##1715 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  talk Grelin Whitebeard##786
  turnin The Troll Cave##182 |goto Dun Morogh 25.08,75.71
step
  talk Talin Keeneye##714
  turnin The Boar Hunter##183 |goto Dun Morogh 22.6,71.43
step
  talk Talin Keeneye##714
  turnin Coldridge Valley Mail Delivery##233 |goto Dun Morogh 22.6,71.43
step
  talk Lariia##4092
  turnin Crown of the Earth##98046 |goto Darnassus 40.35,88.68 |tip {turninat}Darnassus
step
  talk Tyrande Whisperwind##7999
  turnin Crown of the Earth##98065 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  talk Sentinel Dalia Sunblade##8396
  turnin Eyes of the Sentinels##98067 |goto Darnassus 39.65,89.54 |tip {turninat}Darnassus
step
  talk Nori Pridedrift##12738
  turnin Bring Back the Mug##3365 |goto Dun Morogh 24.98,75.96
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5630 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  talk Grelin Whitebeard##786
  accept The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  note Grelin Whitebeard wants you to kill Grik'nir the Cold, and retrieve his journal.
  collect Grelin Whitebeard's Journal##2004 |q 218 |goto Dun Morogh 30.48,80.15 |tip {dropsfrom}Grik'nir the Cold
step
  talk Talin Keeneye##714
  accept Coldridge Valley Mail Delivery##234 |goto Dun Morogh 22.6,71.43
step
  note Balir Frosthammer wants you to kill 6 Rockjaw Troggs and 6 Burly Rockjaw Troggs.
  kill Rockjaw Trogg##707 |q 170 |goto Dun Morogh 30.35,75.5
step
  talk Hegnar Rumbleshot##1243
  turnin Ammo for Rumbleshot##5541 |goto Dun Morogh 40.68,65.13
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5637 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5639 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  talk Mountaineer Gretchen##271546
  turnin Secure the Mountain##98319 |goto Dun Morogh 44.14,57.03
step
  talk Tognus Flintfire##1241
  turnin Flintfire's Shipment##98321 |goto Dun Morogh 45.34,51.94
step
  talk Mountaineer Gretchen##271546
  turnin Secure the Mountain##98322 |goto Dun Morogh 44.14,57.03
step
  talk Senir Whitebeard##1252
  turnin Secure the Mountain##98323 |goto Dun Morogh 46.73,53.83
step
  talk Senir Whitebeard##1252
  turnin Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
step
  turnin Bitter Rivals##310 |goto Dun Morogh 47.72,52.7
step
  talk Pilot Stonegear##1377
  turnin The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
  talk Pilot Bellowfiz##1378
  turnin Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
  talk Eric Brighthammer##265813
  turnin The Great Outdoors##96608 |goto Dun Morogh 46.72,53.92
step
  talk Beldin Steelgrill##1376
  turnin Tools for Steelgrill##400 |goto Dun Morogh 50.44,49.09
step
  talk Razzle Sprysprocket##1269
  turnin Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin The Hunter's Path##6074 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin The Hunter's Path##6075 |goto Dun Morogh 45.81,53.04
step
  only Priest
  talk Maxan Anvol##1226
  turnin Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  talk Senir Whitebeard##1252
  accept The Reports##291 |goto Dun Morogh 46.73,53.83
step
  click Unguarded Thunder Ale Barrel##270
  accept Return to Marleth##311 |goto Dun Morogh 47.72,52.7
step
  talk Pilot Bellowfiz##1378
  accept Evershine##318 |goto Dun Morogh 49.43,48.41
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
step
  talk Eric Brighthammer##265813
  accept Camping 101: Cooking##96629 |goto Dun Morogh 46.72,53.92
step
  note Speak with Gremlock Pilsnor in Kharanos to learn to become a cook.
  talk Gremlock Pilsnor##1699 |q 96629 |goto Dun Morogh 47.67,52.31
step
  only Dwarf Hunter
  note Use the Taming Rod to tame a Snow Leopard. Practice your skills, then return to Grif Wildheart in Kharanos.
  use Snow Leopard##1201 |q 6084 |goto Dun Morogh 48.45,53.56 |tip {useit}
step
  talk King Magni Bronzebeard##2784
  turnin Old Ironforge Incursion##96393 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  talk Senator Barin Redstone##1274
  turnin The Reports##291 |goto Ironforge 39.55,57.49 |tip {turninat}Ironforge
step
  talk Tundra MacGrann##1266
  turnin Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
  talk Gretta Ganter##8508
  turnin Frosthowl##98326 |goto Dun Morogh 31.53,44.65
step
  only Gnome Priest
  talk High Priestess Mims##258785
  turnin Confounding Flash##94817 |goto Ironforge 24.89,10.23 |tip {turninat}Ironforge
step
  only Rogue
  talk Onin MacHammar##6886
  turnin Simple Subterfugin'##2238 |goto Dun Morogh 25.16,44.45
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1784 |goto Ironforge 23.54,8.3 |tip {turninat}Ironforge
step
  talk Marleth Barleybrew##1375
  turnin Return to Marleth##311 |goto Dun Morogh 30.19,45.53
step
  talk Rejold Barleybrew##1374
  turnin The Perfect Stout##315 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  turnin Evershine##318 |goto Dun Morogh 30.19,45.73
step
  only Mage
  talk Bink##5144
  turnin Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3 |tip {turninat}Ironforge
step
  talk Rejold Barleybrew##1374
  accept A Favor for Evershine##319 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  accept Shimmer Stout##413 |goto Dun Morogh 30.19,45.73
step
  only Rogue
  talk Onin MacHammar##6886
  accept Onin's Report##2239 |goto Dun Morogh 25.16,44.45
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin Onin's Report##2239 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  talk Gryth Thurden##1573
  turnin Gryth Thurden##6388 |goto Ironforge 55.5,47.74 |tip {turninat}Ironforge
step
  talk Father Gavin##1253
  turnin Finding Warmth##99159 |goto Dun Morogh 57.73,44.88
step
  talk Father Gavin##1253
  turnin Rime's Wrath##99160 |goto Dun Morogh 57.73,44.88
step
  talk Father Gavin##1253
  turnin Rime's Wrath##99161 |goto Dun Morogh 57.73,44.88
step
  talk Father Gavin##1253
  turnin Treacherous Cold##99162 |goto Dun Morogh 57.73,44.88
step
  talk Gryth Thurden##1573
  accept Return to Brock##6392 |goto Ironforge 55.5,47.74
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin The Hunter's Path##6721 |goto Teldrassil 56.68,59.49 |tip {turninat}Teldrassil
step
  talk Rudra Amberstill##1265
  turnin Protecting the Herd##314 |goto Dun Morogh 63.08,49.85
step
  talk Jemma Quikswitch##11028
  turnin Data Hoarders##95041 |goto Ironforge 67.66,44.21 |tip {turninat}Ironforge
step
  talk Rudra Amberstill##1265
  turnin Never Saddle on Quality##95212 |goto Dun Morogh 63.08,49.85
step
  talk Earthseer Farsen##264936
  turnin Nip 'Em in the Bud##96390 |goto Dun Morogh 64.92,58.51
step
  talk Earthseer Farsen##264936
  turnin Underground Map##96391 |goto Dun Morogh 64.92,58.51
step
  talk Earthseer Farsen##264936
  turnin Farsen's Watch##96392 |goto Dun Morogh 64.92,58.51
step
  talk Foreman Stonebrow##1254
  turnin Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
  talk Senator Mehr Stonehallow##1977
  turnin The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
  talk Quarrymaster Thesten##1256
  turnin Stolen Blasting Powder##95213 |goto Dun Morogh 69.16,54.8
step
  talk Quarrymaster Thesten##1256
  turnin Stolen Blasting Powder##95214 |goto Dun Morogh 69.16,54.8
step
  talk Frast Dokner##1698
  turnin The Quarry's Smith##95217 |goto Dun Morogh 69,55.89
step
  only Warrior
  talk Muren Stormpike##6114
  turnin Vejrek##1678 |goto Ironforge 70.77,90.27 |tip {turninat}Ironforge
step
  only Warrior
  talk Muren Stormpike##6114
  accept Tormus Deepforge##1680 |goto Ironforge 70.77,90.27
step
  talk Mountaineer Barleybrew##1959
  turnin Shimmer Stout##413 |goto Dun Morogh 86.28,48.81
step
  turnin The Lost Pilot##419 |goto Dun Morogh 79.67,36.17
step
  talk Mountaineer Barleybrew##1959
  accept Stout to Kadrell##414 |goto Dun Morogh 86.28,48.81
step
  click A Dwarven Corpse##2059
  accept A Pilot's Revenge##417 |goto Dun Morogh 79.67,36.17
step
  note Kill Mangeclaw.
  collect Mangy Claw##3183 |q 417 |goto Dun Morogh 78.31,37.76 |tip {dropsfrom}Mangeclaw
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
  only Gnome Rogue
  talk Solm Hargrin##916
  turnin Encrypted Memorandum##3113 |goto Dun Morogh 28.37,67.51
step
  only Gnome Mage
  talk Marryk Nurribit##944
  turnin Glyphic Memorandum##3114 |goto Dun Morogh 28.71,66.37
step
  only Gnome Warlock
  talk Alamar Grimm##460
  turnin Tainted Memorandum##3115 |goto Dun Morogh 28.65,66.14
step
  talk Balir Frosthammer##713
  turnin A New Threat##170 |goto Dun Morogh 29.71,71.25
step
  talk Grelin Whitebeard##786
  turnin The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  talk Grelin Whitebeard##786
  turnin Coldridge Valley Mail Delivery##234 |goto Dun Morogh 25.08,75.71
step
  talk Grelin Whitebeard##786
  accept Senir's Observations##282 |goto Dun Morogh 25.08,75.71
step
  talk Gremlock Pilsnor##1699
  turnin Camping 101: Cooking##96629 |goto Dun Morogh 47.67,52.31
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
step
  talk Pilot Bellowfiz##1378
  accept Rejold's New Brew##415 |goto Dun Morogh 49.43,48.41
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
step
  talk Brock Stoneseeker##1681
  turnin Return to Brock##6392 |goto Loch Modan 37.02,47.81 |tip {turninat}Loch Modan
step
  talk Mountaineer Kadrell##1340
  turnin Stout to Kadrell##414 |goto Loch Modan 32.63,49.74 |tip {turninat}Loch Modan
step
  note Kill 6 Ice Claw Bears, 8 Elder Crag Boars, and 8 Snow Leopards, and then return to Rejold Barleybrew in Brewnall Village.
  kill Ice Claw Bear##1196 |q 319 |goto Dun Morogh 35.9,46.93
step
  only Dwarf Hunter
  note Use the Taming Rod to tame an Ice Claw Bear. Practice your skills, then return the Taming Rod to Grif Wildheart in Kharanos.
  use Ice Claw Bear##1196 |q 6085 |goto Dun Morogh 35.9,46.93 |tip {useit}
step
  talk Rejold Barleybrew##1374
  turnin A Favor for Evershine##319 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  turnin Rejold's New Brew##415 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  accept Return to Bellowfiz##320 |goto Dun Morogh 30.19,45.73
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
  talk Pilot Hammerfoot##1960
  turnin A Pilot's Revenge##417 |goto Dun Morogh 83.89,39.19
step
  talk Mountaineer Thalos##1965
  turnin Senir's Observations##282 |goto Dun Morogh 33.48,71.84
step
  talk Mountaineer Thalos##1965
  accept Senir's Observations##420 |goto Dun Morogh 33.48,71.84
step
  talk Pilot Bellowfiz##1378
  turnin Return to Bellowfiz##320 |goto Dun Morogh 49.43,48.41
step
  talk Senir Whitebeard##1252
  turnin Senir's Observations##420 |goto Dun Morogh 46.73,53.83
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Training the Beast##6086 |goto Dun Morogh 45.81,53.04
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Ironband's Compound##1681 |goto Ironforge 48.64,42.48 |tip {turninat}Ironforge
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48
step
  only Dwarf Hunter
  talk Belia Thundergranite##10090
  turnin Training the Beast##6086 |goto Ironforge 70.86,85.83 |tip {turninat}Ironforge
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48 |tip {turninat}Ironforge
step
  note {travel}Westfall
  goto Westfall 56.04,31.23
]])
