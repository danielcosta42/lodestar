-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Eversong Woods (2-10)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tirisfal Glades (4-58)",
}, [[
step
  note {fp}Skymistress Gloaming
  goto Eversong Woods 54.36,50.72 |tip {vendor}
step
  talk Magistrix Erona##15278
  accept Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  talk Arcanist Ithanas##15296
  accept A Fistful of Slivers##8336 |goto Eversong Woods 38.27,19.13
step
  note Collect 6 Arcane Slivers from any creature on the isle that uses mana, and then return to Arcanist Ithanas on Sunstrider Isle.
  kill Arcane Wraith##15273 |q 8336 |goto Eversong Woods 30.71,26.99
step
  talk Well Watcher Solanian##15295
  accept The Shrine of Dath'Remar##8345 |goto Eversong Woods 38.76,19.36
step
  only BloodElf
  talk Arcanist Helion##15297
  accept Thirst Unending##8346 |goto Eversong Woods 37.18,18.94
step
  note Read the plaque on the Shrine of Dath'Remar and then return to Well Watcher Solanian at the Sunspire on Sunstrider Isle.
  collect Shrine of Dath'Remar##180516 |q 8345 |goto Eversong Woods 29.61,19.37
step
  only BloodElf
  note Use your Mana Tap racial ability on creatures with mana six times, then return to Arcanist Helion.
  kill Sunstrider Mana Tap Counter##15468 |q 8346 |goto Eversong Woods 38.91,21.89
step
  note Kill 8 Mana Wyrms; they are located close to the Burning Crystals that are adjacent to the tower and gazebo. Return to Magistrix Erona at the tower on Sunstrider Isle when you are done.
  kill Mana Wyrm##15274 |q 8325 |goto Eversong Woods 36.91,21.9
step
  talk Aeldon Sunbrand##15403
  accept Unstable Mana Crystals##8463 |goto Eversong Woods 48.17,46.0
step
  note Bring back 6 Unstable Mana Crystals to Aeldon Sunbrand at Falconwing Square.
  collect Unstable Mana Crystal Crate##180600 |q 8463 |goto Eversong Woods 44.4,39.75
step
  talk Magister Jaronis##15418
  accept Major Malfunction##8472 |goto Eversong Woods 47.26,46.31
step
  note Collect 6 Arcane Cores from the Arcane Patrollers that roam the ruins of Silvermoon City and bring them to Magister Jaronis at Falconwing Square in Eversong Woods.
  kill Arcane Patroller##15638 |q 8472 |goto Eversong Woods 44.22,41.01
step
  talk Ranger Jaela##15416
  accept The Dead Scar##8475 |goto Eversong Woods 50.34,50.77
step
  talk Aeldon Sunbrand##15403
  accept The Dwarven Spy##8483 |goto Eversong Woods 48.17,46.0
step
  note Bring Prospector Anvilward's Head to Aeldon Sunbrand at Falconwing Square in Eversong Woods.
  kill Prospector Anvilward##15420 |q 8483 |goto Eversong Woods 44.57,53.3
step
  only BloodElf
  talk Skymistress Gloaming##16192
  accept Return to Quartermaster Lymel##9135 |goto Eversong Woods 54.36,50.72
step
  only Warlock
  talk Instructor Antheol##15970
  accept Fetch!##9402 |goto Eversong Woods 55.7,54.51
step
  only Warlock
  note Dive to the bottom of Stillwhisper Pond and retrieve the Azure Phial for Instructor Antheol.
  collect Azure Phial##181594 |q 9402 |goto Eversong Woods 54.87,56.37
step
  only Priest
  talk Ponaris##16276
  accept Cleansing the Scar##9489 |goto Eversong Woods 47.85,47.97
step
  note Slay 8 Plaguebone Pillagers and report back to Ranger Jaela on the Dead Scar in Eversong Woods.
  kill Plaguebone Pillager##15654 |q 8475 |goto Eversong Woods 50.3,56.69
step
  talk Apprentice Ralen##15941
  accept Roadside Ambush##9035 |goto Eversong Woods 45.19,56.43
step
  talk Apprentice Meledor##15945
  accept Soaked Pages##9062 |goto Eversong Woods 44.88,61.03
step
  note Apprentice Meledor in Eversong Woods wants you to search the water beneath the bridge nearby and bring him Antheol's Elemental Grimoire.
  collect Soaked Tome##181110 |q 9062 |goto Eversong Woods 44.34,61.99
step
  talk Hathvelion Sungaze##15920
  accept Fish Heads, Fish Heads...##8884 |goto Eversong Woods 29.89,58.43
step
  note Collect 8 Grimscale Murloc Heads. Return them to Hathvelion Sungaze in the Eversong Woods on the bluff overlooking the Tranquil Shore.
  kill Grimscale Murloc##15668 |q 8884 |goto Eversong Woods 24.82,68.91
step
  talk Velendris Whitemorn##15404
  accept Lost Armaments##8480 |goto Eversong Woods 36.36,66.77
step
  note Bring 8 Sin'dorei Armaments to Velendris Whitemorn in Eversong Woods.
  collect Weapon Container##181107 |q 8480 |goto Eversong Woods 32.49,69.14
step
  talk Captain Kelisendra##15921
  accept Grimscale Pirates!##8886 |goto Eversong Woods 36.36,66.62
step
  note Retrieve 6 of Captain Kelisendra's Cargo and return them to Captain Kelisendra at the defended camp just to the east of the Sunsail Anchorage in Eversong Woods.
  kill Grimscale Murloc##15668 |q 8886 |goto Eversong Woods 24.82,68.91
step
  talk Velan Brightoak##15417
  accept Pelt Collection##8491 |goto Eversong Woods 44.72,69.63
step
  note Velan Brightoak at Fairbreeze Village in Eversong Woods wants you to bring him 6 Springpaw Pelts.
  kill Springpaw Stalker##15651 |q 8491 |goto Eversong Woods 42.52,64.82
step
  talk Lord Saltheril##16144
  accept The Party Never Ends##9067 |goto Eversong Woods 38.14,73.56
step
  note Acquire a bottle of Suntouched Special Reserve, Springpaw Appetizers and a Bundle of Fireworks, and return them to Lord Saltheril at Saltheril's Haven in Eversong Woods.
  get The Party Never Ends |q 9067 |goto Eversong Woods 38.14,73.56
step
  talk Magistrix Landra Dawnstrider##16210
  accept Missing in the Ghostlands##9144 |goto Eversong Woods 44.03,70.76
step
  talk Ranger Sareyn##15942
  accept Defending Fairbreeze Village##9252 |goto Eversong Woods 46.93,71.79
step
  talk Magistrix Landra Dawnstrider##16210
  accept The Wayward Apprentice##9254 |goto Eversong Woods 44.03,70.76
step
  talk Ardeyn Riverwind##16397
  accept The Scorched Grove##9258 |goto Eversong Woods 43.57,71.2
step
  talk Marniel Amberlight##15397
  accept Ranger Sareyn##9358 |goto Eversong Woods 43.67,71.31
step
  talk Magistrix Landra Dawnstrider##16210
  accept Saltheril's Haven##9395 |goto Eversong Woods 44.03,70.76
step
  only Priest
  note Cast Power Word: Fortitude on 6 Eversong Rangers in the Dead Scar.
  kill Eversong Ranger##15938 |q 9489 |goto Eversong Woods 46.55,66.77
step
  talk Apprentice Mirveda##15402
  turnin The Wayward Apprentice##9254 |goto Eversong Woods 54.28,70.98
step
  talk Apprentice Mirveda##15402
  accept Corrupted Soil##8487 |goto Eversong Woods 54.28,70.98
step
  note Apprentice Mirveda at the East Sanctum in Eversong Woods wants you to collect 8 Tainted Soil Samples.
  collect Tainted Soil Sample##180921 |q 8487 |goto Eversong Woods 52.08,69.86
step
  note Slay 4 Rotlimb Marauders and 4 Darkwraiths and return to Ranger Sareyn at Fairbreeze Village in Eversong Woods.
  kill Rotlimb Marauder##15658 |q 9252 |goto Eversong Woods 51.28,72.77
step
  talk Arathel Sunforge##15400
  accept The Spearcrafter's Hammer##8477 |goto Eversong Woods 59.52,62.6
step
  note Search Tor'Watha to the southeast of the Farstrider Retreat for Spearcrafter Otembe and bring Otembe's Hammer to Arathel Sunforge at the Farstrider Retreat in Eversong Woods.
  kill Spearcrafter Otembe##15408 |q 8477 |goto Eversong Woods 70.1,72.28
step
  talk Magister Duskwither##15951
  accept The Magister's Apprentice##8888 |goto Eversong Woods 60.32,61.38
step
  talk Lieutenant Dawnrunner##15399
  accept Warning Fairbreeze Village##9363 |goto Eversong Woods 60.32,62.77
step
  talk Apprentice Loralthalis##15924
  turnin The Magister's Apprentice##8888 |goto Eversong Woods 67.81,56.51
step
  talk Apprentice Loralthalis##15924
  accept Deactivating the Spire##8889 |goto Eversong Woods 67.81,56.51
step
  talk Apprentice Loralthalis##15924
  accept Where's Wyllithen?##9394 |goto Eversong Woods 67.81,56.51
step
  note Deactivate the 3 Duskwither Spire Power Sources inside Duskwither Spire. Then return the Deactivating Jewel to Apprentice Loralthalis in Eversong Woods.
  collect Duskwither Spire Power Source##180916 |q 8889 |goto Eversong Woods 68.96,51.95
step
  talk Groundskeeper Wyllithen##15969
  turnin Where's Wyllithen?##9394 |goto Eversong Woods 68.71,46.95
step
  talk Groundskeeper Wyllithen##15969
  accept Cleaning up the Grounds##8894 |goto Eversong Woods 68.71,46.95
step
  note Kill 6 Mana Serpents and 6 Ether Fiends and return to Groundskeeper Wyllithen at Duskwither Grounds in Eversong Woods.
  kill Mana Serpent##15966 |q 8894 |goto Eversong Woods 68.92,50.35
step
  talk Ven'jashi##15406
  accept Zul'Marosh##8479 |goto Eversong Woods 70.53,72.34
step
  note Ven'jashi, the troll prisoner at Tor'Watha, wants you to bring him Chieftain Zul'Marosh's Head. Chieftain Zul'Marosh can be found in Zeb'Watha, across Lake Elrendar.
  kill Chieftain Zul'Marosh##15407 |q 8479 |goto Eversong Woods 62.51,79.68
step
  talk Courier Dawnstrider##16183
  turnin Missing in the Ghostlands##9144 |goto Eversong Woods 48.98,88.99
step
  talk Apothecary Thedra##16196
  accept The Fallen Courier##9147 |goto Eversong Woods 49.02,89.05
step
  note Apothecary Thedra in Eversong Woods wants you to bring her 4 Plagued Blood Samples from beasts in the Ghostlands.
  kill Starving Ghostclaw##16347 |q 9147 |goto Ghostlands 51.87,17.75
step
  talk Larianna Riverwind##15398
  turnin The Scorched Grove##9258 |goto Eversong Woods 34.06,80.02
step
  talk Larianna Riverwind##15398
  accept A Somber Task##8473 |goto Eversong Woods 34.06,80.02
step
  talk Larianna Riverwind##15398
  accept Whitebark's Memory##10166 |goto Eversong Woods 34.06,80.02
step
  note Slay 10 Withered Green Keepers at the Scorched Grove. Then report back to Larianna Riverwind inside the tower just to the northwest of the Scorched Grove in Eversong Woods.
  kill Withered Green Keeper##15637 |q 8473 |goto Eversong Woods 36.63,84.72
step
  talk Magistrix Erona##15278
  turnin Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  talk Arcanist Ithanas##15296
  turnin A Fistful of Slivers##8336 |goto Eversong Woods 38.27,19.13
step
  talk Well Watcher Solanian##15295
  turnin The Shrine of Dath'Remar##8345 |goto Eversong Woods 38.76,19.36
step
  only BloodElf
  talk Arcanist Helion##15297
  turnin Thirst Unending##8346 |goto Eversong Woods 37.18,18.94
step
  talk Magistrix Erona##15278
  accept Unfortunate Measures##8326 |goto Eversong Woods 38.21,20.83
step
  note Collect 8 Lynx Collars from slain Springpaw Lynxes and Springpaw Cubs. Return to Magistrix Erona on Sunstrider Isle when you are done.
  kill Springpaw Cub##15366 |q 8326 |goto Eversong Woods 38.31,19.89
step
  only Warlock
  talk Magistrix Erona##15278
  accept Mage Training##8328 |goto Eversong Woods 38.21,20.83
step
  only Druid
  talk Magistrix Erona##15278
  accept Warlock Training##8563 |goto Eversong Woods 38.21,20.83
step
  only Priest
  talk Magistrix Erona##15278
  accept Priest Training##8564 |goto Eversong Woods 38.21,20.83
step
  only Rogue
  talk Magistrix Erona##15278
  accept Rogue Training##9392 |goto Eversong Woods 38.21,20.83
step
  only Hunter
  talk Magistrix Erona##15278
  accept Hunter Training##9393 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Magistrix Erona##15278
  accept Paladin Training##9676 |goto Eversong Woods 38.21,20.83
step
  only BloodElf
  talk Quartermaster Lymel##16187
  turnin Return to Quartermaster Lymel##9135 |goto Ghostlands 47.34,29.26 |tip {turninat}Ghostlands
step
  talk Aeldon Sunbrand##15403
  turnin Unstable Mana Crystals##8463 |goto Eversong Woods 48.17,46.0
step
  only Priest
  talk Ponaris##16276
  turnin Cleansing the Scar##9489 |goto Eversong Woods 47.85,47.97
step
  talk Magister Jaronis##15418
  turnin Major Malfunction##8472 |goto Eversong Woods 47.26,46.31
step
  talk Ranger Jaela##15416
  turnin The Dead Scar##8475 |goto Eversong Woods 50.34,50.77
step
  talk Aeldon Sunbrand##15403
  turnin The Dwarven Spy##8483 |goto Eversong Woods 48.17,46.0
step
  only Warlock
  talk Instructor Antheol##15970
  turnin Fetch!##9402 |goto Eversong Woods 55.7,54.51
step
  talk Magister Jaronis##15418
  accept Delivery to the North Sanctum##8895 |goto Eversong Woods 47.26,46.31
step
  talk Aeldon Sunbrand##15403
  accept Fairbreeze Village##9256 |goto Eversong Woods 48.17,46.0
step
  talk Aeldon Sunbrand##15403
  accept Darnassian Intrusions##9352 |goto Eversong Woods 48.17,46.0
step
  only Warlock
  talk Instructor Antheol##15970
  accept The Purest Water##9403 |goto Eversong Woods 55.7,54.51
step
  only Warlock
  note Instructor Antheol wants you to fill the Azure Phial at Elrendar Falls.
  get The Purest Water |q 9403 |goto Eversong Woods 55.7,54.51
step
  talk Apprentice Meledor##15945
  turnin Roadside Ambush##9035 |goto Eversong Woods 44.88,61.03
step
  talk Apprentice Meledor##15945
  turnin Soaked Pages##9062 |goto Eversong Woods 44.88,61.03
step
  talk Apprentice Meledor##15945
  accept Taking the Fall##9064 |goto Eversong Woods 44.88,61.03
step
  note Travel to the West Sanctum, southwest of Falconwing Square and defeat any intruders present there. Report your findings to Ley-Keeper Velania.
  kill Darnassian Scout##15968 |q 9352 |goto Eversong Woods 34.19,60.81
step
  talk Hathvelion Sungaze##15920
  turnin Fish Heads, Fish Heads...##8884 |goto Eversong Woods 29.89,58.43
step
  talk Hathvelion Sungaze##15920
  accept The Ring of Mmmrrrggglll##8885 |goto Eversong Woods 29.89,58.43
step
  note Retrieve the Ring of Mmmrrrggglll from the Grimscale chieftain's dead clutches. Return it to Hathvelion Sungaze in the Eversong Woods on the bluff overlooking the Tranquil Shore.
  kill Mmmrrrggglll##15937 |q 8885 |goto Eversong Woods 26.16,66.15
step
  talk Velendris Whitemorn##15404
  turnin Lost Armaments##8480 |goto Eversong Woods 36.36,66.77
step
  talk Captain Kelisendra##15921
  turnin Grimscale Pirates!##8886 |goto Eversong Woods 36.36,66.62
step
  talk Velendris Whitemorn##15404
  accept Wretched Ringleader##9076 |goto Eversong Woods 36.36,66.77
step
  note Bring Aldaron's Head to Velendris Whitemorn near Sunsail Anchorage in Eversong Woods.
  kill Aldaron the Reckless##16294 |q 9076 |goto Eversong Woods 32.8,69.4
step
  talk Ranger Sareyn##15942
  turnin Ranger Sareyn##9358 |goto Eversong Woods 46.93,71.79
step
  talk Ranger Degolien##15939
  turnin Warning Fairbreeze Village##9363 |goto Eversong Woods 43.34,70.82
step
  talk Ranger Sareyn##15942
  turnin Defending Fairbreeze Village##9252 |goto Eversong Woods 46.93,71.79
step
  talk Ranger Degolien##15939
  turnin Fairbreeze Village##9256 |goto Eversong Woods 43.34,70.82
step
  talk Velan Brightoak##15417
  turnin Pelt Collection##8491 |goto Eversong Woods 44.72,69.63
step
  talk Lord Saltheril##16144
  turnin Saltheril's Haven##9395 |goto Eversong Woods 38.14,73.56
step
  talk Lord Saltheril##16144
  turnin The Party Never Ends##9067 |goto Eversong Woods 38.14,73.56
step
  talk Ranger Degolien##15939
  accept Situation at Sunsail Anchorage##8892 |goto Eversong Woods 43.34,70.82
step
  talk Ranger Sareyn##15942
  accept Runewarden Deryan##9253 |goto Eversong Woods 46.93,71.79
step
  talk Apprentice Mirveda##15402
  turnin Corrupted Soil##8487 |goto Eversong Woods 54.28,70.98
step
  talk Apprentice Mirveda##15402
  accept Unexpected Results##8488 |goto Eversong Woods 54.28,70.98
step
  talk Arathel Sunforge##15400
  turnin The Spearcrafter's Hammer##8477 |goto Eversong Woods 59.52,62.6
step
  talk Apprentice Loralthalis##15924
  turnin Deactivating the Spire##8889 |goto Eversong Woods 67.81,56.51
step
  talk Apprentice Loralthalis##15924
  accept Word from the Spire##8890 |goto Eversong Woods 67.81,56.51
step
  talk Groundskeeper Wyllithen##15969
  turnin Cleaning up the Grounds##8894 |goto Eversong Woods 68.71,46.95
step
  talk Ven'jashi##15406
  turnin Zul'Marosh##8479 |goto Eversong Woods 70.53,72.34
step
  talk Runewarden Deryan##16362
  turnin Runewarden Deryan##9253 |goto Eversong Woods 44.19,85.47
step
  talk Apothecary Thedra##16196
  turnin The Fallen Courier##9147 |goto Eversong Woods 49.02,89.05
step
  talk Runewarden Deryan##16362
  accept Powering our Defenses##8490 |goto Eversong Woods 44.19,85.47
step
  note Place the Infused Crystal at the Eastern Runestone and protect it from the Scourge for 1 minute. Return the Infused Crystal to Runewarden Deryan in Eversong Woods for a reward.
  kill Infused Crystal##16364 |q 8490
step
  talk Courier Dawnstrider##16183
  accept Delivery to Tranquillien##9148 |goto Eversong Woods 48.98,88.99
step
  talk Larianna Riverwind##15398
  turnin A Somber Task##8473 |goto Eversong Woods 34.06,80.02
step
  talk Magistrix Erona##15278
  turnin Unfortunate Measures##8326 |goto Eversong Woods 38.21,20.83
step
  only Warlock
  talk Julia Sunstriker##15279
  turnin Mage Training##8328 |goto Eversong Woods 39.23,21.46
step
  only Rogue
  talk Pathstalker Kariel##15285
  turnin Rogue Training##9392 |goto Eversong Woods 38.93,20.02
step
  only Hunter
  talk Ranger Sallina##15513
  turnin Hunter Training##9393 |goto Eversong Woods 39.05,20.01
step
  only Paladin
  talk Jesthenis Sunstriker##15280
  turnin Paladin Training##9676 |goto Eversong Woods 39.47,20.56
step
  only Druid
  talk Summoner Teli'Larien##15283
  turnin Warlock Training##8563 |goto Eversong Woods 38.93,21.44
step
  only Priest
  talk Matron Arena##15284
  turnin Priest Training##8564 |goto Eversong Woods 39.42,20.38
step
  talk Magistrix Erona##15278
  accept Report to Lanthan Perilon##8327 |goto Eversong Woods 38.21,20.83
step
  only Warlock
  talk Jesthenis Sunstriker##15280
  accept Well Watcher Solanian##10068 |goto Eversong Woods 39.47,20.56
step
  only Paladin
  talk Julia Sunstriker##15279
  accept Well Watcher Solanian##10069 |goto Eversong Woods 39.23,21.46
step
  only Hunter
  talk Matron Arena##15284
  accept Well Watcher Solanian##10070 |goto Eversong Woods 39.42,20.38
step
  only Rogue
  talk Pathstalker Kariel##15285
  accept Well Watcher Solanian##10071 |goto Eversong Woods 38.93,20.02
step
  only Priest
  talk Ranger Sallina##15513
  accept Well Watcher Solanian##10072 |goto Eversong Woods 39.05,20.01
step
  only Druid
  talk Summoner Teli'Larien##15283
  accept Well Watcher Solanian##10073 |goto Eversong Woods 38.93,21.44
step
  talk Arcanist Vandril##16197
  turnin Delivery to Tranquillien##9148 |goto Ghostlands 46.55,28.38 |tip {turninat}Ghostlands
step
  only Warlock
  talk Instructor Antheol##15970
  turnin The Purest Water##9403 |goto Eversong Woods 55.7,54.51
step
  talk Ley-Keeper Caidanis##15405
  turnin Delivery to the North Sanctum##8895 |goto Eversong Woods 44.63,53.13
step
  talk Instructor Antheol##15970
  turnin Taking the Fall##9064 |goto Eversong Woods 55.7,54.51
step
  talk Instructor Antheol##15970
  accept Swift Discipline##9066 |goto Eversong Woods 55.7,54.51
step
  talk Ley-Keeper Caidanis##15405
  accept Malfunction at the West Sanctum##9119 |goto Eversong Woods 44.63,53.13
step
  only Warlock
  talk Instructor Antheol##15970
  accept Recently Living##9404 |goto Eversong Woods 55.7,54.51
step
  only Warlock
  note Slay the Eversong Green Keepers until they yield a Living Branch for Instructor Antheol.
  kill Eversong Green Keeper##15636 |q 9404 |goto Eversong Woods 58.03,73.7
step
  note Use Antheol's Disciplinary Rod on his two students: Apprentice Ralen and Apprentice Meledor. Return to Antheol at Stillwhisper Pond in Eversong Woods with the rod after this.
  kill Apprentice Meledor##15945 |q 9066 |goto Eversong Woods 44.88,61.03
step
  talk Ley-Keeper Velania##15401
  turnin Darnassian Intrusions##9352 |goto Eversong Woods 36.7,57.44
step
  talk Ley-Keeper Velania##15401
  turnin Malfunction at the West Sanctum##9119 |goto Eversong Woods 36.7,57.44
step
  talk Ley-Keeper Velania##15401
  accept Arcane Instability##8486 |goto Eversong Woods 36.7,57.44
step
  note Ley-Keeper Velania wants you to kill 5 Manawraiths and 5 Mana Stalkers.
  kill Manawraith##15648 |q 8486 |goto Eversong Woods 35.02,59.98
step
  talk Hathvelion Sungaze##15920
  turnin The Ring of Mmmrrrggglll##8885 |goto Eversong Woods 29.89,58.43
step
  talk Velendris Whitemorn##15404
  turnin Wretched Ringleader##9076 |goto Eversong Woods 36.36,66.77
step
  note Kill 5 Wretched Thugs and 5 Wretched Hooligans and report to Ranger Degolien in Eversong Woods.
  kill Wretched Thug##15645 |q 8892 |goto Eversong Woods 32.62,69.31
step
  talk Ranger Degolien##15939
  turnin Situation at Sunsail Anchorage##8892 |goto Eversong Woods 43.34,70.82
step
  talk Ranger Degolien##15939
  accept Farstrider Retreat##9359 |goto Eversong Woods 43.34,70.82
step
  talk Apprentice Mirveda##15402
  turnin Unexpected Results##8488 |goto Eversong Woods 54.28,70.98
step
  talk Apprentice Mirveda##15402
  accept Research Notes##9255 |goto Eversong Woods 54.28,70.98
step
  talk Lieutenant Dawnrunner##15399
  turnin Farstrider Retreat##9359 |goto Eversong Woods 60.32,62.77
step
  talk Magister Duskwither##15951
  turnin Word from the Spire##8890 |goto Eversong Woods 60.32,61.38
step
  talk Lieutenant Dawnrunner##15399
  accept Amani Encroachment##8476 |goto Eversong Woods 60.32,62.77
step
  note Lieutenant Dawnrunner at the Farstrider Retreat in Eversong Woods wants you to kill 5 Amani Berserkers and 5 Amani Axe Throwers.
  kill Amani Berserker##15643 |q 8476 |goto Eversong Woods 68.92,77.72
step
  talk Runewarden Deryan##16362
  turnin Powering our Defenses##8490 |goto Eversong Woods 44.19,85.47
step
  talk Lanthan Perilon##15281
  turnin Report to Lanthan Perilon##8327 |goto Eversong Woods 35.37,22.52
step
  only Warlock
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10068 |goto Eversong Woods 38.76,19.36
step
  only Paladin
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10069 |goto Eversong Woods 38.76,19.36
step
  only Hunter
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10070 |goto Eversong Woods 38.76,19.36
step
  only Rogue
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10071 |goto Eversong Woods 38.76,19.36
step
  only Priest
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10072 |goto Eversong Woods 38.76,19.36
step
  only Druid
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10073 |goto Eversong Woods 38.76,19.36
step
  talk Well Watcher Solanian##15295
  accept Solanian's Belongings##8330 |goto Eversong Woods 38.76,19.36
step
  note Collect Well Watcher Solanian's Scrying Orb, his Scroll of Scourge Magic, and his Journal. They are found on Sunstrider Isle by the pond, the fountain, and one of the Burning Crystals. Return them to the Well Watcher at the Sunspire on Sunstrider Isle when you've collected them all.
  collect Solanian's Scrying Orb##180510 |q 8330 |goto Eversong Woods 35.14,28.89
step
  talk Lanthan Perilon##15281
  accept Aggression##8334 |goto Eversong Woods 35.37,22.52
step
  note Kill 7 Tenders and 7 Feral Tenders, and then return to Lanthan Perilon on Sunstrider Isle.
  kill Tender##15271 |q 8334 |goto Eversong Woods 33.88,25.43
step
  only Warlock
  talk Instructor Antheol##15970
  turnin Recently Living##9404 |goto Eversong Woods 55.7,54.51
step
  talk Instructor Antheol##15970
  turnin Swift Discipline##9066 |goto Eversong Woods 55.7,54.51
step
  talk Ley-Keeper Velania##15401
  turnin Arcane Instability##8486 |goto Eversong Woods 36.7,57.44
step
  talk Magistrix Landra Dawnstrider##16210
  turnin Research Notes##9255 |goto Eversong Woods 44.03,70.76
step
  talk Lieutenant Dawnrunner##15399
  turnin Amani Encroachment##8476 |goto Eversong Woods 60.32,62.77
step
  talk Well Watcher Solanian##15295
  turnin Solanian's Belongings##8330 |goto Eversong Woods 38.76,19.36
step
  talk Lanthan Perilon##15281
  turnin Aggression##8334 |goto Eversong Woods 35.37,22.52
step
  talk Lanthan Perilon##15281
  accept Felendren the Banished##8335 |goto Eversong Woods 35.37,22.52
step
  note Kill 8 Arcane Wraiths and 2 Tainted Arcane Wraiths, as well as Felendren the Banished; they are located in the Falthrien Academy. Bring Felendren's Head to Lanthan Perilon on Sunstrider Isle.
  kill Arcane Wraith##15273 |q 8335 |goto Eversong Woods 30.71,26.99
step
  talk Lanthan Perilon##15281
  turnin Felendren the Banished##8335 |goto Eversong Woods 35.37,22.52
step
  talk Lanthan Perilon##15281
  accept Aiding the Outrunners##8347 |goto Eversong Woods 35.37,22.52
step
  talk Outrunner Alarion##15301
  turnin Aiding the Outrunners##8347 |goto Eversong Woods 40.42,32.21
step
  talk Outrunner Alarion##15301
  accept Slain by the Wretched##9704 |goto Eversong Woods 40.42,32.21
step
  talk Slain Outrunner##17849
  turnin Slain by the Wretched##9704 |goto Eversong Woods 42.02,35.65
step
  talk Slain Outrunner##17849
  accept Package Recovery##9705 |goto Eversong Woods 42.02,35.65
step
  talk Outrunner Alarion##15301
  turnin Package Recovery##9705 |goto Eversong Woods 40.42,32.21
step
  talk Outrunner Alarion##15301
  accept Completing the Delivery##8350 |goto Eversong Woods 40.42,32.21
step
  talk Innkeeper Delaniel##15433
  turnin Completing the Delivery##8350 |goto Eversong Woods 48.16,47.66
step
  talk Whitebark's Spirit##19456
  turnin Whitebark's Memory##10166
step
  note {travel}Tirisfal Glades
  goto Tirisfal Glades 30.22,71.65
]])
