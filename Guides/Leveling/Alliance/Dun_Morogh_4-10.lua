-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dun Morogh (4-10)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Westfall (12-16)",
	rev = "7e5c9640",
}, [[
step
  only level>=1
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  only level>=1
  talk Talin Keeneye##714
  accept The Boar Hunter##183 |goto Dun Morogh 22.6,71.43
step
  only haveq(179)
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  collect Tough Wolf Meat##750 |q 179 |goto Dun Morogh 28.84,73.81 |tip {dropsfrom}Ragged Young Wolf, Ragged Timber Wolf
step
  only haveq(183)
  note Talin Keeneye would like you to kill 12 Small Crag Boars.
  kill Small Crag Boar##708 |q 183 |goto Dun Morogh 21.95,71.26
step
  only haveq(183)
  talk Talin Keeneye##714
  turnin The Boar Hunter##183 |goto Dun Morogh 22.6,71.43
step
  talk Grelin Whitebeard##786
  accept The Troll Cave##182 |goto Dun Morogh 25.08,75.71
step
  note Grelin Whitebeard would like you to kill 14 Frostmane Troll Whelps.
  kill Frostmane Troll Whelp##706 |q 182 |goto Dun Morogh 26.84,79.92
step
  only haveq(179)
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  only completed(179)
  talk Balir Frosthammer##713
  accept A New Threat##170 |goto Dun Morogh 29.71,71.25
step
  only completed(179)
  talk Sten Stoutarm##658
  accept Coldridge Valley Mail Delivery##233 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Warrior completed(179)
  talk Sten Stoutarm##658
  accept Simple Rune##3106 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Paladin completed(179)
  talk Sten Stoutarm##658
  accept Consecrated Rune##3107 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Hunter completed(179)
  talk Sten Stoutarm##658
  accept Etched Rune##3108 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Rogue completed(179)
  talk Sten Stoutarm##658
  accept Encrypted Rune##3109 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Priest completed(179)
  talk Sten Stoutarm##658
  accept Hallowed Rune##3110 |goto Dun Morogh 29.93,71.2
step
  only Gnome Warrior completed(179)
  talk Sten Stoutarm##658
  accept Simple Memorandum##3112 |goto Dun Morogh 29.93,71.2
step
  only Gnome Rogue completed(179)
  talk Sten Stoutarm##658
  accept Encrypted Memorandum##3113 |goto Dun Morogh 29.93,71.2
step
  only Gnome Mage completed(179)
  talk Sten Stoutarm##658
  accept Glyphic Memorandum##3114 |goto Dun Morogh 29.93,71.2
step
  only Gnome Warlock completed(179)
  talk Sten Stoutarm##658
  accept Tainted Memorandum##3115 |goto Dun Morogh 29.93,71.2
step
  only Gnome Priest completed(179)
  talk Sten Stoutarm##658
  accept Hallowed Memorandum##98574 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Shaman completed(179)
  talk Sten Stoutarm##658
  accept Archaic Rune##98581 |goto Dun Morogh 29.93,71.2
step
  only Warlock not completed(1598) not haveq(1598)
  talk Alamar Grimm##460
  accept Beginnings##1599 |goto Dun Morogh 28.65,66.14
step
  only Dwarf Warrior haveq(3106)
  note Read the Simple Rune and speak to Thran Khorman in Coldridge Valley.
  talk Thran Khorman##912
  turnin Simple Rune##3106 |goto Dun Morogh 28.83,67.24
step
  only Dwarf Paladin haveq(3107)
  note Read the Consecrated Rune and speak to Bromos Grummner in Coldridge Valley.
  talk Bromos Grummner##926
  turnin Consecrated Rune##3107 |goto Dun Morogh 28.83,68.33
step
  only Dwarf Hunter haveq(3108)
  note Read the Etched Rune and speak to Thorgas Grimson in Coldridge Valley.
  talk Thorgas Grimson##895
  turnin Etched Rune##3108 |goto Dun Morogh 29.18,67.45
step
  only Dwarf Rogue haveq(3109)
  note Read the Encrypted Rune and speak to Solm Hargrin in Coldridge Valley.
  talk Solm Hargrin##916
  turnin Encrypted Rune##3109 |goto Dun Morogh 28.37,67.51
step
  only Dwarf Priest haveq(3110)
  note Read the Hallowed Rune and speak to Branstock Khalder in Anvilmar.
  talk Branstock Khalder##837
  turnin Hallowed Rune##3110 |goto Dun Morogh 28.6,66.39
step
  only Gnome Warrior haveq(3112)
  note Read the Simple Memorandum and speak to Thran Khorman in Coldridge Valley.
  talk Thran Khorman##912
  turnin Simple Memorandum##3112 |goto Dun Morogh 28.83,67.24
step
  only Gnome Rogue haveq(3113)
  note Read the Encrypted Memorandum and speak to Solm Hargrin in Coldridge Valley.
  talk Solm Hargrin##916
  turnin Encrypted Memorandum##3113 |goto Dun Morogh 28.37,67.51
step
  only Gnome Mage haveq(3114)
  note Read the Glyphic Memorandum and speak to Marryk Nurribit inside Anvilmar above Coldridge Valley.
  talk Marryk Nurribit##944
  turnin Glyphic Memorandum##3114 |goto Dun Morogh 28.71,66.37
step
  only Gnome Warlock haveq(3115)
  note Read the Tainted Memorandum and speak to Alamar Grimm inside Anvilmar above Coldridge Valley.
  talk Alamar Grimm##460
  turnin Tainted Memorandum##3115 |goto Dun Morogh 28.65,66.14
step
  only Gnome Priest haveq(98574)
  note Read the Hallowed Memorandum and speak to Branstock Khalder in Anvilmar.
  talk Branstock Khalder##837
  turnin Hallowed Memorandum##98574 |goto Dun Morogh 28.6,66.39
step
  only Dwarf Shaman haveq(98581)
  note Read the Archaic Rune and speak to Teo Hammerstorm in Anvilmar.
  talk Teo Hammerstorm##257446
  turnin Archaic Rune##98581 |goto Dun Morogh 28.79,66.18
step
  talk Grelin Whitebeard##786
  turnin The Troll Cave##182 |goto Dun Morogh 25.08,75.71
step
  only haveq(233)
  note Deliver the stack of letters to Talin Keeneye.
  talk Talin Keeneye##714
  turnin Coldridge Valley Mail Delivery##233 |goto Dun Morogh 22.6,71.43
step
  only completed(233)
  talk Talin Keeneye##714
  accept Coldridge Valley Mail Delivery##234 |goto Dun Morogh 22.6,71.43
step
  talk Grelin Whitebeard##786
  accept The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  only haveq(234)
  note Deliver the letter to Grelin Whitebeard.
  talk Grelin Whitebeard##786
  turnin Coldridge Valley Mail Delivery##234 |goto Dun Morogh 25.08,75.71
step
  only haveq(170)
  note Balir Frosthammer wants you to kill 6 Rockjaw Troggs and 6 Burly Rockjaw Troggs.
  kill Burly Rockjaw Trogg##724 |q 170/2 |goto Dun Morogh 25.99,74.23
  kill Rockjaw Trogg##707 |q 170 |goto Dun Morogh 30.68,75.71
step
  note Grelin Whitebeard wants you to kill Grik'nir the Cold, and retrieve his journal.
  collect Grelin Whitebeard's Journal##2004 |q 218 |goto Dun Morogh 30.48,80.15 |tip {dropsfrom}Grik'nir the Cold
step
  only Warlock not completed(1598) not haveq(1598)
  note Bring 3 Feather Charms to Alamar Grimm in Anvilmar.
  collect 3 Feather Charm##6753 |q 1599 |goto Dun Morogh 30.41,80.87 |tip {dropsfrom}Frostmane Novice
step
  talk Grelin Whitebeard##786
  turnin The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  only not completed(287) not haveq(287)
  talk Grelin Whitebeard##786
  accept Senir's Observations##282 |goto Dun Morogh 25.08,75.71
step
  talk Nori Pridedrift##12738
  accept Scalding Mornbrew Delivery##3364 |goto Dun Morogh 24.98,75.96
step
  note Take a Scalding Mornbrew to Durnan Furcutter inside Anvilmar before it gets cold in five minutes!
  talk Durnan Furcutter##836
  turnin Scalding Mornbrew Delivery##3364 |goto Dun Morogh 28.77,66.37
step
  only haveq(170)
  talk Balir Frosthammer##713
  turnin A New Threat##170 |goto Dun Morogh 29.71,71.25
step
  only Warlock not completed(1598) not haveq(1598)
  talk Alamar Grimm##460
  turnin Beginnings##1599 |goto Dun Morogh 28.65,66.14
step
  only not completed(287) not haveq(287)
  note Speak with Mountaineer Thalos.
  talk Mountaineer Thalos##1965
  turnin Senir's Observations##282 |goto Dun Morogh 33.48,71.84
step
  only not completed(287) not haveq(287)
  talk Mountaineer Thalos##1965
  accept Senir's Observations##420 |goto Dun Morogh 33.48,71.84
step
  talk Hands Springsprocket##6782
  accept Supplies to Tannok##2160 |goto Dun Morogh 33.85,72.24
step
  talk Felix Whindlebolt##8416
  accept A Refugee's Quandary##3361 |goto Dun Morogh 28.55,67.64
step
  talk Durnan Furcutter##836
  accept Bring Back the Mug##3365 |goto Dun Morogh 28.77,66.37
step
  only Shaman
  talk Teo Hammerstorm##257446
  accept Call of Earth##94373 |goto Dun Morogh 28.79,66.18
step
  only not completed(287) not completed(96627) not completed(96630) not completed(96638) not completed(96652) not completed(96656) not completed(96659) not haveq(287) not haveq(96627) not haveq(96630) not haveq(96638) not haveq(96652) not haveq(96656) not haveq(96659)
  talk Mountaineer Thalos##1965
  accept The Adventurer##96628 |goto Dun Morogh 33.48,71.84
step
  talk Grund Drokda##2756
  accept Grund and Gozwin##97277 |goto Dun Morogh 28.67,67.52
step
  note Find Grund and Gozwin's camp in the hills to the northwest. Recover Gozwin's Mechanic's Log and kill the Snow Leopard Prowler.
  kill Snow Leopard Prowler##269075 |q 97277 |goto Dun Morogh 27.37,62.86
step
  talk Grund Drokda##2756
  turnin Grund and Gozwin##97277 |goto Dun Morogh 28.67,67.52
step
  note Return Nori's Mug to Nori Pridedrift.
  talk Nori Pridedrift##12738
  turnin Bring Back the Mug##3365 |goto Dun Morogh 24.98,75.96
step
  note Bring Felix's Box, Felix's Chest and Felix's Bucket of Bolts to Felix Whindlebolt in Anvilmar.
  collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto Dun Morogh 26.33,79.28
  collect Felix's Chest##16313 |q 3361/2 |goto Dun Morogh 22.78,80
  collect Felix's Box##10438 |q 3361 |goto Dun Morogh 20.88,76.07
step
  only Shaman
  note Bring 2 Frostmane Bear Pendants to Teo Hammerstorm in Anvilmar.
  collect 2 Iceclaw Bear Pendant##264356 |q 94373 |goto Dun Morogh 26.84,79.92 |tip {dropsfrom}Frostmane Troll Whelp, Frostmane Novice
step
  talk Felix Whindlebolt##8416
  turnin A Refugee's Quandary##3361 |goto Dun Morogh 28.55,67.64
step
  only Shaman
  talk Teo Hammerstorm##257446
  turnin Call of Earth##94373 |goto Dun Morogh 28.79,66.18
step
  only Shaman
  talk Teo Hammerstorm##257446
  accept Call of Earth##94374 |goto Dun Morogh 28.79,66.18
step
  only not Human not NightElf not Skyborne Priest
  talk Branstock Khalder##837
  accept In Favor of the Light##5626 |goto Dun Morogh 28.6,66.39
step
  only Shaman
  note Find the Spirit Stone and drink the Earth Sapta.
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##94374 |goto Dun Morogh 24.84,61.86
step
  only Shaman
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##94375 |goto Dun Morogh 24.84,61.86
step
  only Shaman
  note Bring the Rough Quartz to Teo Hammerstorm in Anvilmar.
  talk Teo Hammerstorm##257446
  turnin Call of Earth##94375 |goto Dun Morogh 28.79,66.18
step
  only not completed(287) not haveq(287)
  note Deliver Grelin's report to Senir Whitebeard in Kharanos.
  talk Senir Whitebeard##1252
  turnin Senir's Observations##420 |goto Dun Morogh 46.73,53.83
step
  note Deliver the Crate of Inn Supplies to Tannok Frosthammer in Kharanos.
  talk Tannok Frosthammer##6806
  turnin Supplies to Tannok##2160 |goto Dun Morogh 47.22,52.19
step
  only not Human not NightElf not Skyborne Priest
  note Speak to Maxan Anvol in Dun Morogh.
  talk Maxan Anvol##1226
  turnin In Favor of the Light##5626 |goto Dun Morogh 47.34,52.19
step
  only not completed(287) not completed(96627) not completed(96630) not completed(96638) not completed(96652) not completed(96656) not completed(96659) not haveq(287) not haveq(96627) not haveq(96630) not haveq(96638) not haveq(96652) not haveq(96656) not haveq(96659)
  note Deliver the Supply Bundle to Eric Brighthammer near Kharanos.
  talk Eric Brighthammer##265813
  turnin The Adventurer##96628 |goto Dun Morogh 46.69,53.92
step
  talk Tharek Blackstone##1872
  accept Tools for Steelgrill##400 |goto Dun Morogh 46.02,51.68
step
  talk Pilot Bellowfiz##1378
  accept Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607)
  talk Eric Brighthammer##265813
  accept The Great Outdoors##96608 |goto Dun Morogh 46.69,53.92
step
  talk Pilot Stonegear##1377
  accept The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
  talk Loslor Rudge##1694
  accept Ammo for Rumbleshot##5541 |goto Dun Morogh 50.08,49.42
step
  only not Human not NightElf not Skyborne Priest
  talk Maxan Anvol##1226
  accept Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  talk Tognus Flintfire##1241
  accept Flintfire's Shipment##98321 |goto Dun Morogh 45.34,51.94
step
  only not Human not NightElf not Skyborne Priest
  note Find Mountaineer Dolf and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Maxan Anvol in Kharanos.
  talk Mountaineer Dolf##12427 |q 5625 |goto Dun Morogh 45.81,54.57
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607)
  note Sit near Eric's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  click Basic Campfire##460003 |q 96608 |goto Dun Morogh 46.68,53.84
step
  note Deliver Steelgrill's Tools to Beldin Steelgrill.
  talk Beldin Steelgrill##1376
  turnin Tools for Steelgrill##400 |goto Dun Morogh 50.44,49.09
step
  only not Human not NightElf not Skyborne Priest
  talk Maxan Anvol##1226
  turnin Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607)
  talk Eric Brighthammer##265813
  turnin The Great Outdoors##96608 |goto Dun Morogh 46.69,53.92
step
  only not completed(96626) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  talk Eric Brighthammer##265813
  accept Camping 101: Cooking##96629 |goto Dun Morogh 46.69,53.92
step
  only not completed(96626) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  note Speak with Gremlock Pilsnor in Kharanos to learn to become a cook.
  talk Gremlock Pilsnor##1699 |q 96629 |goto Dun Morogh 47.67,52.31
step
  only not completed(96626) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  talk Gremlock Pilsnor##1699
  turnin Camping 101: Cooking##96629 |goto Dun Morogh 47.67,52.31
step
  note Collect 8 Flintfire Shipments from the Grizzled Den for Tongus Flintfire in Kharanos.
  collect 8 Flintfire's Shipment##280413 |q 98321 |goto Dun Morogh 42.3,47.5
step
  note Gather 8 Wendigo Manes and bring them to Pilot Stonegear.
  collect 8 Wendigo Mane##2671 |q 313 |goto Dun Morogh 42.49,54.97 |tip {dropsfrom}Young Wendigo, Wendigo, Wendigo Shaman
step
  note Gather 4 Chunks of Boar Meat and 2 Thick Bear Furs, and deliver them to Pilot Bellowfiz at Steelgrill's Depot.
  collect 2 Thick Bear Fur##6952 |q 317/2 |goto Dun Morogh 44.75,55.26 |tip {dropsfrom}Young Black Bear, Black Bear, Ice Claw Bear
  collect 4 Chunk of Boar Meat##769 |q 317 |goto Dun Morogh 44.24,59.37 |tip {dropsfrom}Crag Boar, Large Crag Boar, Elder Crag Boar
step
  note Bring Rumbleshot's Ammo to Hegnar Rumbleshot in Dun Morogh.
  collect Rumbleshot's Ammo##13850 |q 5541 |goto Dun Morogh 44.13,56.95 |tip {dropsfrom}Ammo Crate
step
  talk Pilot Stonegear##1377
  turnin The Grizzled Den##313 |goto Dun Morogh 49.62,48.61
step
  talk Pilot Bellowfiz##1378
  turnin Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
  talk Tognus Flintfire##1241
  turnin Flintfire's Shipment##98321 |goto Dun Morogh 45.34,51.94
step
  talk Pilot Bellowfiz##1378
  accept Evershine##318 |goto Dun Morogh 49.43,48.41
step
  talk Senir Whitebeard##1252
  accept Secure the Mountain##98322 |goto Dun Morogh 46.73,53.83
step
  talk Maxan Anvol##1226
  accept Dawn in the Mountains##99158 |goto Dun Morogh 47.34,52.19
step
  note Bring the crate of candles to Father Gavin at Misty Pine Refuge.
  talk Father Gavin##1253
  turnin Dawn in the Mountains##99158 |goto Dun Morogh 57.73,44.88
step
  talk Father Gavin##1253
  accept Finding Warmth##99159 |goto Dun Morogh 57.73,44.88
step
  note Collect 14 pieces of firewood.
  collect 14 Mostly Dry Firewood##286339 |q 99159 |goto Dun Morogh 56,52.2 |tip {dropsfrom}Fallen Log
step
  talk Father Gavin##1253
  turnin Finding Warmth##99159 |goto Dun Morogh 57.73,44.88
step
  talk Father Gavin##1253
  accept Rime's Wrath##99160 |goto Dun Morogh 57.73,44.88
step
  talk Father Gavin##1253
  accept Treacherous Cold##99162 |goto Dun Morogh 57.73,44.88
step
  note Destroy 10 minor ice elementals.
  kill Minor Ice Elemental##276003 |q 99160 |goto Dun Morogh 55.85,44.68
step
  talk Father Gavin##1253
  turnin Rime's Wrath##99160 |goto Dun Morogh 57.73,44.88
step
  talk Father Gavin##1253
  accept Rime's Wrath##99161 |goto Dun Morogh 57.73,44.88
step
  note Kill Avala and retrieve its core.
  collect Avala's Core##286325 |q 99161 |goto Dun Morogh 58.34,42.06 |tip {dropsfrom}Avala
step
  talk Father Gavin##1253
  turnin Rime's Wrath##99161 |goto Dun Morogh 57.73,44.88
step
  talk Senir Whitebeard##1252
  accept Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
step
  note Check in on Mountaineer Gretchen west of Kharanos.
  talk Mountaineer Gretchen##271546
  turnin Secure the Mountain##98322 |goto Dun Morogh 44.1,57.07
step
  talk Mountaineer Gretchen##271546
  accept Secure the Mountain##98319 |goto Dun Morogh 44.1,57.07
step
  talk Hegnar Rumbleshot##1243
  turnin Ammo for Rumbleshot##5541 |goto Dun Morogh 40.68,65.13
step
  note Collect the rifles of fallen mountaineers.
  collect Stoneanvil's Rifle##286360 |q 99162/1 |goto Dun Morogh 53.16,58.78
  collect Sunhammer's Rifle##286359 |q 99162/2 |goto Dun Morogh 59.9,50.1
  collect Coalbeard's Rifle##286358 |q 99162 |goto Dun Morogh 52.1,44.04
step
  talk Father Gavin##1253
  turnin Treacherous Cold##99162 |goto Dun Morogh 57.73,44.88
step
  note Find Mountaineer Cornelius in the Grizzled Den for Mountaineer Gretchen.
  click Mountaineer Cornelius##460004 |q 98319 |goto Dun Morogh 43.03,49.62
step
  note Get a cask of Evershine from Rejold Barleybrew in Brewnall Village.
  talk Rejold Barleybrew##1374
  turnin Evershine##318 |goto Dun Morogh 30.19,45.73
step
  talk Marleth Barleybrew##1375
  accept Bitter Rivals##310 |goto Dun Morogh 30.19,45.53
step
  talk Rejold Barleybrew##1374
  accept A Favor for Evershine##319 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  accept The Perfect Stout##315 |goto Dun Morogh 30.19,45.73
step
  talk Gretta Ganter##8508
  accept Frosthowl##98326 |goto Dun Morogh 31.53,44.65
step
  note Explore Frostmane Hold, and kill 5 Frostmane Headhunters for Senir Whitebeard in Kharanos.
  kill Frostmane Headhunter##1123 |q 287 |goto Dun Morogh 23.42,51.4
step
  note Kill 6 Ice Claw Bears, 8 Elder Crag Boars, and 8 Snow Leopards, and then return to Rejold Barleybrew in Brewnall Village.
  kill Ice Claw Bear##1196 |q 319/1 |goto Dun Morogh 35.9,46.93
  kill Elder Crag Boar##1127 |q 319/2 |goto Dun Morogh 40.46,47.22
  kill Snow Leopard##1201 |q 319 |goto Dun Morogh 48.29,56.53
step
  note Slay Frosthowl and collect the Sack of Fish for Gretta Ganter in Brewnall Village
  collect Sack of Fish##280426 |q 98326 |goto Dun Morogh 39.33,48.79 |tip {dropsfrom}Frosthowl
step
  note Bring 6 Shimmerweeds to Rejold Barleybrew in the Brewnall Village.
  collect 6 Shimmerweed##2676 |q 315 |goto Dun Morogh 41.85,35.84 |tip {dropsfrom}Frostmane Seer, Shimmerweed Basket
step
  talk Rejold Barleybrew##1374
  turnin The Perfect Stout##315 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  turnin A Favor for Evershine##319 |goto Dun Morogh 30.19,45.73
step
  talk Gretta Ganter##8508
  turnin Frosthowl##98326 |goto Dun Morogh 31.53,44.65
step
  talk Rejold Barleybrew##1374
  accept Return to Bellowfiz##320 |goto Dun Morogh 30.19,45.73
step
  talk Rejold Barleybrew##1374
  accept Shimmer Stout##413 |goto Dun Morogh 30.19,45.73
step
  talk Mountaineer Gretchen##271546
  turnin Secure the Mountain##98319 |goto Dun Morogh 44.1,57.07
step
  talk Mountaineer Gretchen##271546
  accept Secure the Mountain##98323 |goto Dun Morogh 44.1,57.07
step
  talk Rudra Amberstill##1265
  accept Never Saddle on Quality##95212 |goto Dun Morogh 63.08,49.85
step
  kill Rockjaw Ambusher##1116 |goto Dun Morogh 73.41,55.08 |tip Loot the quest item here — it starts the quest.
  accept Stolen Blasting Powder##95213 |goto Dun Morogh 73.41,55.08
step
  note Collect 6 Pristine Leopard Pelts and deliver them to Amberstill Ranch.
  collect 6 Pristine Leopard Pelt##267414 |q 95212 |goto Dun Morogh 75.2,57.04 |tip {dropsfrom}Elder Snow Leopard
step
  note Bring the Empty Powder Keg to Quarrymaster Thesten at Gol'Bolar Quarry.
  collect Empty Powder Keg##268548 |q 95213 |goto Dun Morogh 73.41,55.08 |tip {dropsfrom}Rockjaw Ambusher, Rockjaw Backbreaker
step
  talk Quarrymaster Thesten##1256
  turnin Stolen Blasting Powder##95213 |goto Dun Morogh 69.16,54.8
step
  talk Foreman Stonebrow##1254
  accept Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
  talk Quarrymaster Thesten##1256
  accept Stolen Blasting Powder##95214 |goto Dun Morogh 69.16,54.8
step
  note Kill 6 Rockjaw Skullthumpers for Foreman Stonebrow at the Gol'Bolar quarry.
  kill Rockjaw Skullthumper##1115 |q 432 |goto Dun Morogh 70.49,57.12
step
  talk Foreman Stonebrow##1254
  turnin Those Blasted Troggs!##432 |goto Dun Morogh 69.08,56.33
step
  note Recover 16 Stolen Blasting Powder from the troggs east of Gol'Bolar Quarry, then return to Quarrymaster Thesten.
  collect 16 Stolen Blasting Powder##267415 |q 95214 |goto Dun Morogh 73.41,55.08 |tip {dropsfrom}Rockjaw Ambusher, Rockjaw Backbreaker
step
  talk Quarrymaster Thesten##1256
  turnin Stolen Blasting Powder##95214 |goto Dun Morogh 69.16,54.8
step
  talk Senator Mehr Stonehallow##1977
  accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
  note Kill 10 Rockjaw Bonesnappers for Senator Mehr Stonehallow at the Gol'Bolar quarry.
  kill Rockjaw Bonesnapper##1117 |q 433 |goto Dun Morogh 72.41,52.9
step
  talk Senator Mehr Stonehallow##1977
  turnin The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
  talk Rudra Amberstill##1265
  turnin Never Saddle on Quality##95212 |goto Dun Morogh 63.08,49.85
step
  talk Senir Whitebeard##1252
  turnin Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
step
  note In the basement of the Thunderbrew Distillery in Kharanos, replace a barrel of Thunder Ale with a Barrel of Barleybrew Scalder.
  turnin Bitter Rivals##310 |goto Dun Morogh 47.72,52.7
step
  note Give the cask of Evershine to Pilot Bellowfiz at Steelgrill's Depot.
  talk Pilot Bellowfiz##1378
  turnin Return to Bellowfiz##320 |goto Dun Morogh 49.43,48.41
step
  note Deliver Mountaineer Gretchen's Report back to Senir Whitebeard in Kharanos.
  talk Senir Whitebeard##1252
  turnin Secure the Mountain##98323 |goto Dun Morogh 46.73,53.83
step
  click Unguarded Thunder Ale Barrel##270
  accept Return to Marleth##311 |goto Dun Morogh 47.72,52.7
step
  talk Senir Whitebeard##1252
  accept The Reports##291 |goto Dun Morogh 46.73,53.83
step
  talk Razzle Sprysprocket##1269
  accept Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
  talk Pilot Bellowfiz##1378
  accept Rejold's New Brew##415 |goto Dun Morogh 49.43,48.41
step
  only Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  talk Granis Swiftaxe##1229
  accept Muren Stormpike##1679 |goto Dun Morogh 47.36,52.65
step
  only not Dwarf not NightElf not Skyborne Mage not completed(1861) not haveq(1861)
  talk Magis Sparkmantle##1228
  accept Speak with Bink##1879 |goto Dun Morogh 47.5,52.08
step
  only Rogue
  talk Hogral Bakkan##1234
  accept Road to Salvation##2218 |goto Dun Morogh 47.56,52.61
step
  only not NightElf not Gnome not Skyborne Priest not completed(5634) not completed(5635) not completed(5636) not completed(5638) not completed(5639) not completed(5640) not haveq(5634) not haveq(5635) not haveq(5636) not haveq(5638) not haveq(5639) not haveq(5640)
  talk Maxan Anvol##1226
  accept Desperate Prayer##5637 |goto Dun Morogh 47.34,52.19
step
  only Shaman
  talk Ingrid Dunwald##258113
  accept Call of Fire##94449 |goto Dun Morogh 47.58,51.95
step
  only Gnome Priest
  talk Maxan Anvol##1226
  accept Confounding Flash##94824 |goto Dun Morogh 47.34,52.19
step
  talk Tundra MacGrann##1266
  accept Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
  note Retrieve Tundra MacGrann's dried meats from the stolen meat locker in Old Icebeard's cave.
  collect MacGrann's Dried Meats##2667 |q 312 |goto Dun Morogh 38.51,53.93 |tip {dropsfrom}MacGrann's Meat Locker
step
  talk Tundra MacGrann##1266
  turnin Tundra MacGrann's Stolen Stash##312 |goto Dun Morogh 34.57,51.65
step
  note Bring the barrel of Thunder Ale to Marleth Barleybrew at the Brewnall Village.
  talk Marleth Barleybrew##1375
  turnin Return to Marleth##311 |goto Dun Morogh 30.19,45.53
step
  note Speak with Rejold Barleybrew.
  talk Rejold Barleybrew##1374
  turnin Rejold's New Brew##415 |goto Dun Morogh 30.19,45.73
step
  only Dwarf Hunter not completed(6074) not completed(6076) not haveq(6074) not haveq(6076)
  talk Tristane Shadowstone##11807
  accept The Hunter's Path##6075 |goto Dun Morogh 31.42,44.4
step
  note Bring Razzle Sprysprocket in Kharanos 8 Restabilization Cogs and 8 Gyromechanic Gears.
  collect 8 Restabilization Cog##3083 |q 412 |goto Dun Morogh 26.04,40.76 |tip {dropsfrom}Leper Gnome, Gibblewilt
step
  talk Razzle Sprysprocket##1269
  turnin Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
  only Dwarf Hunter not completed(6074) not completed(6076) not haveq(6074) not haveq(6076)
  note Speak with Grif Wildheart in Kharanos.
  talk Grif Wildheart##1231
  turnin The Hunter's Path##6075 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  note Use the Taming Rod to tame a Large Crag Boar. Practice your skills, then return the Taming Rod to Grif Wildheart in Kharanos.
  use Large Crag Boar##1126 |q 6064 |goto Dun Morogh 48.1,47.25 |tip {useit}
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  note Use the Taming Rod to tame a Snow Leopard. Practice your skills, then return to Grif Wildheart in Kharanos.
  use Snow Leopard##1201 |q 6084 |goto Dun Morogh 48.29,56.53 |tip {useit}
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  note Use the Taming Rod to tame an Ice Claw Bear. Practice your skills, then return the Taming Rod to Grif Wildheart in Kharanos.
  use Ice Claw Bear##1196 |q 6085 |goto Dun Morogh 35.9,46.93 |tip {useit}
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Training the Beast##6086 |goto Dun Morogh 45.81,53.04
step
  talk Pilot Hammerfoot##1960
  accept The Lost Pilot##419 |goto Dun Morogh 83.89,39.19
step
  note Find Pilot Hildelve.
  turnin The Lost Pilot##419 |goto Dun Morogh 79.67,36.17
step
  click A Dwarven Corpse##2059
  accept A Pilot's Revenge##417 |goto Dun Morogh 79.67,36.17
step
  note Kill Mangeclaw.
  collect Mangy Claw##3183 |q 417 |goto Dun Morogh 78.31,37.76 |tip {dropsfrom}Mangeclaw
step
  talk Pilot Hammerfoot##1960
  turnin A Pilot's Revenge##417 |goto Dun Morogh 83.89,39.19
step
  note Take the Barrel of Shimmer Stout to Mountaineer Barleybrew.
  talk Mountaineer Barleybrew##1959
  turnin Shimmer Stout##413 |goto Dun Morogh 86.28,48.81
step
  only Shaman
  note Find Bruegs Kindleborn in Dun Morogh.
  talk Bruegs Kindleborn##257597
  turnin Call of Fire##94449 |goto Dun Morogh 87.94,44.8
step
  talk Mountaineer Barleybrew##1959
  accept Stout to Kadrell##414 |goto Dun Morogh 86.28,48.81
step
  only Shaman
  talk Bruegs Kindleborn##257597
  accept Call of Fire##94465 |goto Dun Morogh 87.94,44.8
step
  only Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  note Speak with Muren Stormpike.
  talk Muren Stormpike##6114
  turnin Muren Stormpike##1679 |goto Ironforge 70.77,90.27 |tip {turninat}Ironforge
step
  only Dwarf Hunter
  note Speak with Belia Thundergranite in Ironforge.
  talk Belia Thundergranite##10090
  turnin Training the Beast##6086 |goto Ironforge 70.86,85.83 |tip {turninat}Ironforge
step
  click Misplaced Packages##660964
  accept Your Package Has Arrived##97263 |goto Ironforge 72.32,48.62
step
  talk Jemma Quikswitch##11028
  accept Data Hoarders##95041 |goto Ironforge 67.66,44.21
step
  note Deliver Senir's report to Senator Barin Redstone in Ironforge.
  talk Senator Barin Redstone##1274
  turnin The Reports##291 |goto Ironforge 39.55,57.49 |tip {turninat}Ironforge
step
  only Rogue
  note Speak with Hulfdan Blackbeard in Ironforge.
  talk Hulfdan Blackbeard##5165
  turnin Road to Salvation##2218 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Simple Subterfugin'##2238 |goto Ironforge 51.96,14.84
step
  note Deliver Eldrun's misplaced package.
  talk Eldrun Stormbreaker##258098
  turnin Your Package Has Arrived##97263 |goto Ironforge 47.38,13.48 |tip {turninat}Ironforge
step
  only Warlock not completed(1688) not haveq(1688)
  talk Lago Blackwrench##6120
  accept The Slaughtered Lamb##1715 |goto Ironforge 47.63,9.26
step
  only not Dwarf not NightElf not Skyborne Mage not completed(1861) not haveq(1861)
  note Speak with Bink in Ironforge.
  talk Bink##5144
  turnin Speak with Bink##1879 |goto Ironforge 27.25,8.3 |tip {turninat}Ironforge
step
  only not Dwarf not NightElf not Skyborne Mage not completed(1861) not haveq(1861)
  talk Bink##5144
  accept Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3
step
  only Gnome Priest
  note Speak to High Priestess Mims in Ironforge.
  talk High Priestess Mims##258785
  turnin Confounding Flash##94824 |goto Ironforge 24.84,10.16 |tip {turninat}Ironforge
step
  only Gnome Priest
  talk High Priestess Mims##258785
  accept Confounding Flash##94817 |goto Ironforge 24.84,10.16
step
  only Gnome Priest
  talk High Priestess Mims##258785
  turnin Confounding Flash##94817 |goto Ironforge 24.84,10.16 |tip {turninat}Ironforge
step
  only Rogue
  note Find Onin MacHammar by Gnomeregan.
  talk Onin MacHammar##6886
  turnin Simple Subterfugin'##2238 |goto Dun Morogh 25.16,44.45
step
  only Rogue
  talk Onin MacHammar##6886
  accept Onin's Report##2239 |goto Dun Morogh 25.16,44.45
step
  note Collect 7 Gnomeregan Archival Data cards from around Gnomeregan, then deliver them to Jemma Quikswitch in Ironforge.
  collect 7 Gnomeregan Archival Data##267413 |q 95041 |goto Dun Morogh 26.3,40.5 |tip {dropsfrom}Snowdrift
step
  only not Dwarf not NightElf not Skyborne Mage not completed(1861) not haveq(1861)
  note Bring Bink her Mage-tastic Gizmonitor.
  collect Mage-tastic Gizmonitor##7226 |q 1880 |goto Dun Morogh 27.72,36.42 |tip {dropsfrom}Bink's Toolbox
step
  talk Jemma Quikswitch##11028
  turnin Data Hoarders##95041 |goto Ironforge 67.66,44.21 |tip {turninat}Ironforge
step
  only Rogue
  note Take Onin's Report back to Hulfdan in Ironforge.
  talk Hulfdan Blackbeard##5165
  turnin Onin's Report##2239 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  only not Dwarf not NightElf not Skyborne Mage not completed(1861) not haveq(1861)
  talk Bink##5144
  turnin Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3 |tip {turninat}Ironforge
step
  only Shaman
  note Bring the Torch of the Dormant Flame to Braldir Ashmantle in Loch Modan.
  talk Braldir Ashmantle##257808
  turnin Call of Fire##94465 |goto Loch Modan 32.17,65.97 |tip {turninat}Loch Modan
step
  only Warlock not completed(1688) not haveq(1688)
  note Report to Gakin the Darkbinder in the Mage Quarter of Stormwind.
  talk Gakin the Darkbinder##6122
  turnin The Slaughtered Lamb##1715 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only not NightElf not Gnome not Skyborne Priest not completed(5634) not completed(5635) not completed(5636) not completed(5638) not completed(5639) not completed(5640) not haveq(5634) not haveq(5635) not haveq(5636) not haveq(5638) not haveq(5639) not haveq(5640)
  note Speak to High Priestess Laurena in Stormwind.
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5637 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  note {travel}Stormwind City
  goto Stormwind City 26.27,47.08
]])
