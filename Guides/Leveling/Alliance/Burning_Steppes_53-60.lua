-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Burning Steppes (53-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Western Plaguelands (54-60)",
}, [[
step
  note {fp}Borgus Stoutarm
  goto Burning Steppes 84.33,68.33 |tip {vendor}
step
  talk Maxwort Uberglint##9536
  accept The Heart of the Mountain##4123 |goto Burning Steppes 65.15,23.91
step
  note Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes.
  collect Heart of the Mountain##165554 |q 4123 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Yuka Screwspigot##9544
  accept Ribbly Screwspigot##4136 |goto Burning Steppes 66.06,21.95
step
  note Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes.
  kill Ribbly Screwspigot##9543 |q 4136 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  talk Maxwort Uberglint##9536
  accept Tablet of the Seven##4296 |goto Burning Steppes 65.15,23.91
step
  note Bring the Tablet Transcript to Maxwort Uberglint in the Burning Steppes.
  get Tablet of the Seven |q 4296 |goto Burning Steppes 65.15,23.91
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24.0
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  get Broodling Essence |q 4726 |goto Burning Steppes 65.24,24.0
step
  talk Kibler##10260
  accept Kibler's Exotic Pets##4729 |goto Burning Steppes 65.89,21.92
step
  note Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
  get Kibler's Exotic Pets |q 4729 |goto Burning Steppes 65.89,21.92
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24.0
step
  talk Kibler##10260
  accept En-Ay-Es-Tee-Why##4862 |goto Burning Steppes 65.89,21.92
step
  note Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
  collect Spire Spider Egg##175588 |q 4862 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Elder Dawnstrider##15585
  accept Dawnstrider the Elder##8683 |goto Burning Steppes 64.46,23.95
step
  talk Elder Rumblerock##15557
  accept Rumblerock the Elder##8636 |goto Burning Steppes 83.13,47.37
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  note Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
  kill Dark Iron Taskmaster##5846 |q 4022 |goto Searing Gorge 42.74,39.64
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4023 |goto Burning Steppes 95.09,31.56
step
  note Show Cyrus Therepentous proof of your worth.
  kill Dark Iron Taskmaster##5846 |q 4023 |goto Searing Gorge 42.74,39.64
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
  note Slay Overmaster Pyron and return to Jalinda Sprig.
  kill Overmaster Pyron##9026 |q 4262 |elite
step
  talk Oralius##9177
  accept FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
  note Oralius wants 50 Blackrock Medallions. Chances are high that these medallions can be found on the orcs in the Burning Steppes.
  kill Blackrock Soldier##7025 |q 4283 |goto Burning Steppes 45.02,54.68
step
  talk Oralius##9177
  accept The Good Stuff##4286 |goto Burning Steppes 84.56,68.68
step
  note Travel to Blackrock Depths and recover 20 Dark Iron Fanny Packs. Return to Oralius when you have completed this task. You assume that the Dark Iron dwarves inside Blackrock Depths carry these 'fanny pack' contraptions.
  kill Anvilrage Overseer##8889 |q 4286 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Helendis Riverhorn##9562
  accept Put Her Down##4701 |goto Burning Steppes 85.82,68.95
step
  talk Mayara Brightwing##9565
  accept Doomrigger's Clasp##4764 |goto Burning Steppes 84.84,69.12
step
  note Bring Doomrigger's Clasp to Mayara Brightwing in the Burning Steppes.
  collect Doomrigger's Coffer##175382 |q 4764 |goto Blackrock Spire - Dungeon -1,-1
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
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24.0
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
  talk Elder Dawnstrider##15585
  turnin Dawnstrider the Elder##8683 |goto Burning Steppes 64.46,23.95
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24.0
step
  talk Kibler##10260
  turnin Kibler's Exotic Pets##4729 |goto Burning Steppes 65.89,21.92
step
  talk Kibler##10260
  turnin En-Ay-Es-Tee-Why##4862 |goto Burning Steppes 65.89,21.92
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24.0
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  get Egg Collection |q 4735 |goto Burning Steppes 65.24,24.0
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24.0
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
  talk Elder Rumblerock##15557
  turnin Rumblerock the Elder##8636 |goto Burning Steppes 83.13,47.37
step
  note Slay 15 Firegut Ogre-Mages, 7 Firegut Ogres, and 7 Firegut Ogre Brutes, and return to Oralius when you are finished.
  kill Firegut Ogre Mage##7034 |q 3823 |goto Burning Steppes 80.73,43.3
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
  get A Taste of Flame |q 4024 |goto Burning Steppes 95.09,31.56
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 89.47,35.54
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02
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
  kill Gor'tesh##9176 |q 3824 |goto Burning Steppes 39.33,55.3
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
  talk Marshal Windsor##9023
  turnin Marshal Windsor##4241 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |tip {turninat}Blackrock Depths - Dungeon -- Shadowforge City
step
  talk Count Remington Ridgewell##2285
  turnin Delivery to Ridgewell##4765 |goto Stormwind City 74.01,30.24 |tip {turninat}Stormwind City
step
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61 |tip {turninat}Winterspring
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 29.99,44.45 |tip {turninat}Redridge Mountains
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24.0
step
  talk Tinkee Steamboil##10267
  accept Leonid Barthalomew##5522 |goto Burning Steppes 65.24,24.0
step
  note Find Lord Incendius in Blackrock Depths and destroy him!
  kill Lord Incendius##9017 |q 4263 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  talk Leonid Barthalomew the Revered##11036
  turnin Leonid Barthalomew##5522 |goto Eastern Plaguelands 81.73,57.83 |tip {turninat}Eastern Plaguelands
step
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
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
  note Take Gor'tesh's Lopped Off Head and place it at the top of Dreadmaul Rock. Look for a soft dirt mound to plant the pike.
  collect Soft Dirt Mound##160840 |q 3825 |goto Burning Steppes 81.0,46.79
step
  talk Oralius##9177
  turnin Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.68
step
  talk Reginald Windsor##12580
  turnin Stormwind Rendezvous##6402
step
  note {travel}Western Plaguelands
  goto Western Plaguelands 38.4,54.05
]])
