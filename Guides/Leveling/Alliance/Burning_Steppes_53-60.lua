-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Burning Steppes (53-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Winterspring (54-60)",
}, [[
step
  talk Maxwort Uberglint##9536
  accept The Heart of the Mountain##4123 |goto Burning Steppes 65.15,23.91
step
  note Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes.
  collect The Heart of the Mountain##11309 |q 4123 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Heart of the Mountain
step
  talk Yuka Screwspigot##9544
  accept Ribbly Screwspigot##4136 |goto Burning Steppes 66.06,21.95
step
  note Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes.
  collect Ribbly's Head##11313 |q 4136 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Ribbly Screwspigot
step
  talk Maxwort Uberglint##9536
  accept Tablet of the Seven##4296 |goto Burning Steppes 65.15,23.91
step
  note Bring the Tablet Transcript to Maxwort Uberglint in the Burning Steppes.
  collect Tablet Transcript##11470 |q 4296 |goto Burning Steppes 54.12,40.76 |tip {dropsfrom}Tablet of the Seven
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  collect 8 Broodling Essence##12283 |q 4726 |goto Burning Steppes 64.36,46.15
step
  talk Kibler##10260
  accept Kibler's Exotic Pets##4729 |goto Burning Steppes 65.89,21.92
step
  note Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
  collect Caged Worg Pup##12263 |q 4729 |goto Burning Steppes 65.89,21.92
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Kibler##10260
  accept En-Ay-Es-Tee-Why##4862 |goto Burning Steppes 65.89,21.92
step
  note Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
  collect 15 Spire Spider Egg##12530 |q 4862 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  note Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
  kill Frenzied Black Drake##9461 |goto Burning Steppes 94.4,31.8 |elite
  collect Black Dragonflight Molt##10575 |q 4022 |goto Burning Steppes 94.4,31.8
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4023 |goto Burning Steppes 95.09,31.56
step
  note Show Cyrus Therepentous proof of your worth.
  kill Frenzied Black Drake##9461 |goto Burning Steppes 94.4,31.8 |elite
  collect Black Dragonflight Molt##10575 |q 4023 |goto Burning Steppes 94.4,31.8
step
  talk Oralius##9177
  accept Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
step
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Jalinda Sprig##9561
  accept Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  talk Oralius##9177
  accept FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
  note Oralius wants 50 Blackrock Medallions. Chances are high that these medallions can be found on the orcs in the Burning Steppes.
  collect Blackrock Medallion##11467 |q 4283 |goto Burning Steppes 45.02,54.68 |tip {dropsfrom}Blackrock Soldier, Blackrock Sorcerer, Blackrock Slayer
step
  talk Oralius##9177
  accept The Good Stuff##4286 |goto Burning Steppes 84.56,68.68
step
  note Travel to Blackrock Depths and recover 20 Dark Iron Fanny Packs. Return to Oralius when you have completed this task. You assume that the Dark Iron dwarves inside Blackrock Depths carry these 'fanny pack' contraptions.
  collect Dark Iron Fanny Pack##11468 |q 4286 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Anvilrage Overseer, Anvilrage Warden, Anvilrage Guardsman
step
  talk Helendis Riverhorn##9562
  accept Put Her Down##4701 |goto Burning Steppes 85.82,68.95
step
  talk Mayara Brightwing##9565
  accept Doomrigger's Clasp##4764 |goto Burning Steppes 84.84,69.12
step
  note Bring Doomrigger's Clasp to Mayara Brightwing in the Burning Steppes.
  collect Doomrigger's Clasp##12352 |q 4764 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Doomrigger's Coffer
step
  talk Marshal Maxwell##9560
  accept Maxwell's Mission##5081 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept General Drakkisath's Demise##5102 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept Stormwind Rendezvous##6402 |goto Burning Steppes 84.74,69.02
step
  note Slay Overmaster Pyron and return to Jalinda Sprig.
  kill Overmaster Pyron##9026 |q 4262 |goto Eastern Kingdoms - the continent map 46.82,67.7 |elite
step
  talk Franclorn Forgewright##8888
  accept Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  talk King Magni Bronzebeard##2784
  accept Kharan Mighthammer##4341 |goto Ironforge 39.09,56.2
step
  talk King Magni Bronzebeard##2784
  accept The Fate of the Kingdom##4362 |goto Ironforge 39.09,56.2
step
  talk Kharan Mighthammer##9021
  turnin Kharan Mighthammer##4341 |goto Blackrock Depths - Dungeon -1,-1 |tip {turninat}Blackrock Depths - Dungeon
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Rage of Blood##7563 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Bring 30 bottles of Raging Beast's Blood to Mor'zul Bloodbringer in the Burning Steppes.
  collect 30 Raging Beast's Blood##18590 |q 7563 |goto Winterspring 44.49,38.29 |tip {dropsfrom}Ragged Owlbeast, Raging Owlbeast, Crazed Owlbeast
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Lord Banehollow##7623 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  note Use the Eggscilloscope Prototype on an egg in the Rookery.
  collect Rookery Egg##175124 |q 4734 |goto Blackrock Spire - Dungeon -1,-1
step
  note Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan.
  kill Emperor Dagran Thaurissan##9019 |q 4362 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  only Warlock
  note Bring the Imp in a Jar to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes.
  kill J'eevee##14500 |q 7629 |goto Scholomance - Dungeon -1,-1
step
  note Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done.
  kill War Master Voone##9237 |q 5081 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg.
  kill Halycon##10220 |q 4701 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Travel to Blackrock Spire and destroy General Drakkisath. Return to Marshal Maxwell when the job is done.
  kill General Drakkisath##10363 |q 5102 |goto Blackrock Spire - Dungeon -1,-1 |raid
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Maxwort Uberglint##9536
  turnin The Heart of the Mountain##4123 |goto Burning Steppes 65.15,23.91
step
  talk Yuka Screwspigot##9544
  turnin Ribbly Screwspigot##4136 |goto Burning Steppes 66.06,21.95
step
  talk Maxwort Uberglint##9536
  turnin Tablet of the Seven##4296 |goto Burning Steppes 65.15,23.91
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Kibler##10260
  turnin Kibler's Exotic Pets##4729 |goto Burning Steppes 65.89,21.92
step
  talk Kibler##10260
  turnin En-Ay-Es-Tee-Why##4862 |goto Burning Steppes 65.89,21.92
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24
step
  note Speak with Ragged John to learn of Marshal Windsor's fate and return to Marshal Maxwell when you have completed this task.
  talk Ragged John##9563 |q 4224 |goto Burning Steppes 65.01,23.76
step
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4023 |goto Burning Steppes 95.09,31.56
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
step
  note Travel to Blackrock Depths and slay Bael'Gar.
  collect Encased Fiery Essence##11230 |q 4024 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Bael'Gar
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 89.47,35.54
step
  note Slay 15 Firegut Ogre-Mages, 7 Firegut Ogres, and 7 Firegut Ogre Brutes, and return to Oralius when you are finished.
  kill Firegut Ogre Mage##7034 |q 3823 |goto Burning Steppes 80.73,43.3
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Reginald Windsor##12580
  turnin Stormwind Rendezvous##6402 |goto Stormwind City 73.61,91.05 |tip {turninat}Stormwind City
step
  talk Mayara Brightwing##9565
  turnin Doomrigger's Clasp##4764 |goto Burning Steppes 84.84,69.12
step
  talk Jalinda Sprig##9561
  turnin Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  talk Oralius##9177
  turnin FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
  talk Oralius##9177
  turnin The Good Stuff##4286 |goto Burning Steppes 84.56,68.68
step
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Marshal Maxwell##9560
  turnin Maxwell's Mission##5081 |goto Burning Steppes 84.74,69.02
step
  talk Helendis Riverhorn##9562
  turnin Put Her Down##4701 |goto Burning Steppes 85.82,68.95
step
  talk Marshal Maxwell##9560
  turnin General Drakkisath's Demise##5102 |goto Burning Steppes 84.74,69.02
step
  talk Oralius##9177
  turnin Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
step
  talk Oralius##9177
  accept Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.68
step
  note Find Gor'tesh, somewhere to the west of Dreadmaul Rock. Kill Gor'tesh and then take Gor'tesh's Lopped Off Head back to Oralius in Burning Steppes.
  collect Gor'tesh's Lopped Off Head##11080 |q 3824 |goto Burning Steppes 39.33,55.3 |tip {dropsfrom}Gor'tesh, Grubbub
step
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  talk Marshal Maxwell##9560
  accept Marshal Windsor##4241 |goto Burning Steppes 84.74,69.02
step
  talk Jalinda Sprig##9561
  accept Incendius!##4263 |goto Burning Steppes 85.41,70.06
step
  talk Mayara Brightwing##9565
  accept Delivery to Ridgewell##4765 |goto Burning Steppes 84.84,69.12
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Lord Banehollow##7623 |goto Felwood 35.93,44.42 |tip {turninat}Felwood
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 24.9,44.45 |tip {turninat}Redridge Mountains
step
  talk Franclorn Forgewright##8888
  turnin Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  talk Franclorn Forgewright##8888
  accept Dark Iron Legacy##3802 |goto Burning Steppes 28.96,28.93
step
  note Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright.
  collect Ironfel##10999 |q 3802 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Fineous Darkvire
step
  talk Princess Moira Bronzebeard##8929
  turnin The Fate of the Kingdom##4362 |goto Blackrock Depths - Dungeon -1,-1 |tip {turninat}Blackrock Depths - Dungeon
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  turnin Rage of Blood##7563 |goto Burning Steppes 12.69,31.64
step
  talk Marshal Windsor##9023
  turnin Marshal Windsor##4241 |goto Blackrock Depths - Dungeon -1,-1 |tip {turninat}Blackrock Depths - Dungeon
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  turnin Dark Iron Legacy##3802 |goto Blackrock Depths - Dungeon -1,-1 |tip {turninat}Blackrock Depths - Dungeon
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Wildeyes##7564 |goto Burning Steppes 12.69,31.64
step
  note Find Lord Incendius in Blackrock Depths and destroy him!
  kill Lord Incendius##9017 |q 4263 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  collect Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61 |tip {turninat}Winterspring
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Tinkee Steamboil##10267
  accept Leonid Barthalomew##5522 |goto Burning Steppes 65.24,24
step
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
step
  talk Leonid Barthalomew the Revered##11036
  turnin Leonid Barthalomew##5522 |goto Eastern Plaguelands 71.89,48.29 |tip {turninat}Eastern Plaguelands
step
  talk Count Remington Ridgewell##2285
  turnin Delivery to Ridgewell##4765 |goto Stormwind City 76.94,47.83 |tip {turninat}Stormwind City
step
  talk Jalinda Sprig##9561
  turnin Incendius!##4263 |goto Burning Steppes 85.41,70.06
step
  talk Oralius##9177
  turnin Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.68
step
  talk Oralius##9177
  accept Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.68
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Wildeyes##7564 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Bell of Dethmoora##7626 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Bring 10 Elixirs of Shadow Power to Gorzeeki Wildeyes in the Burning Steppes.
  collect 10 Elixir of Shadow Power##9264 |q 7626 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Wheel of the Black March##7627 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Bring 6 Large Brilliant Shards and 25 Dark Iron Ore to Gorzeeki in the Burning Steppes.
  collect 6 Large Brilliant Shard##14344 |q 7627 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Doomsday Candle##7628 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Bring 35 Black Dragonscales to Gorzeeki Wildeyes in the Burning Steppes.
  collect 35 Black Dragonscale##15416 |q 7628 |goto Burning Steppes 87.2,52.28 |tip {dropsfrom}Black Dragonspawn, Black Wyrmkin, Flamescale Dragonspawn
step
  note Take Gor'tesh's Lopped Off Head and place it at the top of Dreadmaul Rock. Look for a soft dirt mound to plant the pike.
  collect Soft Dirt Mound##160840 |q 3825 |goto Burning Steppes 81,46.79
step
  talk Oralius##9177
  turnin Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.68
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Bell of Dethmoora##7626 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Wheel of the Black March##7627 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Doomsday Candle##7628 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Arcanite##7630 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  note Bring 3 Arcanite Bar to Gorzeeki in the Burning Steppes.
  collect 3 Arcanite Bar##12360 |q 7630 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Arcanite##7630 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Dreadsteed of Xoroth##7631 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Read Mor'zul's Instructions. Summon a Xorothian Dreadsteed, defeat it, then bind its spirit to you.
  kill Xorothian Dreadsteed##14502 |q 7631 |goto Dire Maul - Dungeon -1,-1 |elite
step
  only Warlock
  talk Dreadsteed Spirit##14504
  turnin Dreadsteed of Xoroth##7631 |goto Dire Maul - Dungeon -1,-1 |tip {turninat}Dire Maul - Dungeon
step
  note {travel}Winterspring
  goto Winterspring 31.27,45.16
]])
