-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Hellfire Peninsula (61-63)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Zangarmarsh (62-65)",
}, [[
step
  note {fp}Barley
  goto Hellfire Peninsula 56.29,36.24 |tip {vendor}
step
  talk Shadow Hunter Ty'jin##16575
  accept Pride of the Fel Horde##9496 |goto Hellfire Peninsula 55.05,36.32
step
  talk Martik Tor'seldori##16577
  accept Falcon Watch##9498 |goto Hellfire Peninsula 55.18,39.12
step
  only BloodElf
  talk Martik Tor'seldori##16577
  accept Falcon Watch##9499 |goto Hellfire Peninsula 55.18,39.12
step
  talk Caza'rez##17558
  accept The Blood is Life##9590 |goto Hellfire Peninsula 54.88,36.0
step
  note Collect 10 Fel Orc Blood Vials and return them to Centurion Caza'rez at Thrallmar in Hellfire Peninsula.
  kill Laughing Skull Enforcer##17370 |q 9590 |goto The Blood Furnace - Dungeon -1,-1
step
  talk Megzeg Nukklebust##21283
  accept I Work... For the Horde!##10086 |goto Hellfire Peninsula 55.18,38.79
step
  note Bring 8 pieces of Salvaged Metal and 8 pieces of Salvaged Wood to Megzeg Nukklebust in Thrallmar.
  collect Salvageable Metal##182797 |q 10086 |goto Hellfire Peninsula 57.71,53.38
step
  talk Vurtok Axebreaker##21256
  accept Bonechewer Blood##10450 |goto Hellfire Peninsula 55.13,36.39
step
  note Bring 12 Bonechewer Blood Vials to Vurtok Axebreaker in Thrallmar.
  kill Bonechewer Mutant##16876 |q 10450 |goto Hellfire Peninsula 57.27,48.17
step
  talk Foreman Razelcraz##16915
  accept Outland Sucks!##10236 |goto Hellfire Peninsula 51.37,30.52
step
  note Find 6 Shredder Parts and return to Foreman Razelcraz by the mine northwest of Thrallmar.
  collect Shredder Parts##183934 |q 10236 |goto Hellfire Peninsula 47.97,41.71
step
  talk Earthcaller Ryga##17123
  accept A Debilitating Sickness##9442 |goto Hellfire Peninsula 32.09,28.36
step
  note Earthcaller Ryga at Mag'har Post in Hellfire Peninsula wants you to bring her 1 Drycap Mushroom from a cave inside the Great Fissure.
  collect Drycap Mushroom##181680 |q 9442 |goto Hellfire Peninsula 33.77,65.08
step
  note Shadow Hunter Ty'jin at Thrallmar wants you to kill 8 Shattered Hand Legionnaires, 4 Shattered Hand Centurions, and 4 Shattered Hand Champions.
  kill Shattered Hand Legionnaire##16700 |q 9496 |goto The Shattered Halls - Dungeon -1,-1
step
  talk Ranger Captain Venn'ren##16789
  turnin Falcon Watch##9498 |goto Hellfire Peninsula 28.49,60.24
step
  only BloodElf
  talk Ranger Captain Venn'ren##16789
  turnin Falcon Watch##9499 |goto Hellfire Peninsula 28.49,60.24
step
  talk Ranger Captain Venn'ren##16789
  accept The Great Fissure##9340 |goto Hellfire Peninsula 28.49,60.24
step
  talk Ryathen the Somber##16791
  accept In Need of Felblood##9366 |goto Hellfire Peninsula 26.99,59.54
step
  note Ryathen the Somber at Falcon Watch in Hellfire Peninsula wants you to bring him 6 Felblood Samples from the Terrorfiends that inhabit the Pools of Aggonar.
  kill Terrorfiend##16951 |q 9366 |goto Hellfire Peninsula 40.05,32.89
step
  talk Magistrix Carinda##16793
  accept Arelion's Journal##9374 |goto Hellfire Peninsula 26.38,60.32
step
  note Magistrix Carinda at Falcon Watch in Hellfire Peninsula wants you to go to the Pools of Aggonar and retrieve Arelion's Journal.
  kill Blistering Oozeling##16903 |q 9374 |goto Hellfire Peninsula 39.52,39.17
step
  talk Falconer Drenna Riverwind##16790
  accept Trueflight Arrows##9381 |goto Hellfire Peninsula 27.71,60.33
step
  note Gather 8 Bonestripper Tail Feathers from Bonestripper Vultures and bring them to Falconer Drenna Riverwind at Falcon Watch.
  kill Bonestripper Vulture##16973 |q 9381 |goto Hellfire Peninsula 25.59,46.52
step
  talk Apothecary Azethen##16794
  accept Source of the Corruption##9387 |goto Hellfire Peninsula 26.79,59.71
step
  note Travel to the Ruins of Sha'naar in Hellfire Peninsula and obtain 5 Demonic Essences from the Illidari Taskmasters. Return to Apothecary Azethen at Falcon Watch after you've completed the task.
  kill Illidari Taskmaster##17058 |q 9387 |goto Hellfire Peninsula 14.67,59.08
step
  talk Arcanist Calesthris Dawnstar##16792
  accept Magic of the Arakkoa##9396 |goto Hellfire Peninsula 27.05,59.78
step
  note Bring 4 Haal'eshi Scrolls to Arcanist Calesthris Dawnstar at Falcon Watch in Hellfire Peninsula.
  kill Haal'eshi Windwalker##16966 |q 9396 |goto Hellfire Peninsula 26.34,76.47
step
  talk Falconer Drenna Riverwind##16790
  accept Birds of a Feather##9397 |goto Hellfire Peninsula 27.71,60.33
step
  note Travel to the Den of Haal'esh in Hellfire Peninsula and search the Kaliri Nests for a Female Kaliri Hatchling. Use the Empty Birdcage to capture it and bring it to Falconer Drenna Riverwind at Falcon Watch.
  get Birds of a Feather |q 9397 |goto Hellfire Peninsula 27.71,60.33
step
  talk Ranger Captain Venn'ren##16789
  accept Report to Zurai##10103 |goto Hellfire Peninsula 28.49,60.24
step
  talk Falconer Drenna Riverwind##16790
  accept Helping the Cenarion Post##10442 |goto Hellfire Peninsula 27.71,60.33
step
  note Ranger Captain Venn'ren at Falcon Watch wants you to slay 8 Stonescythe Whelps and 3 Stonescythe Alphas at the Great Fissure, east of Falcon Watch.
  kill Stonescythe Whelp##16927 |q 9340 |goto Hellfire Peninsula 32.33,63.61
step
  talk Akoru the Firecaller##20678
  accept Naladu##10403 |goto Hellfire Peninsula 15.59,58.75
step
  talk Naladu##19361
  turnin Naladu##10403 |goto Hellfire Peninsula 16.27,65.09
step
  talk Naladu##19361
  accept A Traitor Among Us##10367 |goto Hellfire Peninsula 16.27,65.09
step
  note Naladu at the Ruins of Sha'naar wants you to obtain the Sha'naar Key from a nearby hut.
  collect Metal Coffer##184466 |q 10367 |goto Hellfire Peninsula 14.34,63.5
step
  talk Thiah Redmane##16991
  turnin Helping the Cenarion Post##10442 |goto Hellfire Peninsula 15.7,52.09
step
  talk Thiah Redmane##16991
  accept Demonic Contamination##9372 |goto Hellfire Peninsula 15.7,52.09
step
  note Thiah Redmane, at the Cenarion Post in Hellfire Peninsula, has asked you to gather 6 Helboar Blood Samples from Hulking Helboars.
  kill Hulking Helboar##16880 |q 9372 |goto Hellfire Peninsula 24.6,54.71
step
  talk Amythiel Mistwalker##16885
  accept Return to the Marsh##9732 |goto Hellfire Peninsula 16.04,52.15
step
  talk Amythiel Mistwalker##16885
  accept The Cenarion Expedition##9912 |goto Hellfire Peninsula 16.04,52.15
step
  talk Tola'thion##19293
  accept Colossal Menace##10132 |goto Hellfire Peninsula 15.62,52.04
step
  talk Mahuram Stouthoof##16888
  accept Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula 15.94,52.17
step
  talk Tola'thion##19293
  accept The Earthbinder##10349 |goto Hellfire Peninsula 15.62,52.04
step
  note Slay 5 Raging Colossi and then return to Tola'thion at the Cenarion Post in Hellfire Peninsula.
  kill Raging Colossus##19188 |q 10132 |goto Hellfire Peninsula 15.38,42.29
step
  note Kill 8 Thornfang Ravagers and 8 Thornfang Venomspitters, and then return to Mahuram Stouthoof at the Cenarion Post in Hellfire Peninsula.
  kill Thornfang Ravager##19349 |q 10159 |goto Hellfire Peninsula 10.25,51.54
step
  talk Wounded Blood Elf Pilgrim##16993
  accept The Road to Falcon Watch##9375 |goto Hellfire Peninsula 24.54,76.05
step
  talk Legassi##19344
  accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.24,74.84
step
  note Retrieve 12 Ravager Eggs for Legassi at the Zeppelin Crash in Hellfire Peninsula.
  kill Razorfang Ravager##16933 |q 9349 |goto Hellfire Peninsula 37.29,88.21
step
  talk "Screaming" Screed Luckheed##19367
  accept In Case of Emergency...##10161 |goto Hellfire Peninsula 49.15,74.86
step
  note Collect 30 pieces of Zeppelin Debris and bring them to "Screaming" Screed Luckheed at the Zeppelin Crash.
  collect Zeppelin Debris##183394 |q 10161 |goto Hellfire Peninsula 61.31,71.15
step
  talk Grelag##16858
  accept Preparing the Salve##9345 |goto Hellfire Peninsula 60.93,81.67
step
  note Gather 12 Hellfire Spineleaf plants for a salve and return to Grelag at Spinebreaker Post.
  collect Hellfire Spineleaf##181372 |q 9345 |goto Hellfire Peninsula 62.77,67.2
step
  talk Emissary Mordiba##19682
  accept Make Them Listen##10220 |goto Hellfire Peninsula 61.78,81.71
step
  talk Althen the Historian##19736
  accept The Battle Horn##10230 |goto Hellfire Peninsula 61.74,81.79
step
  note Take the Unyielding Battle Horn from Lieutenant Commander Thalvos and bring it to Althen the Historian in Spinebreaker Post.
  kill Lieutenant Commander Thalvos##16978 |q 10230 |goto Hellfire Peninsula 54.83,83.74
step
  talk Ogath the Mad##19683
  accept The Warp Rifts##10278 |goto Hellfire Peninsula 61.87,81.53
step
  note Use the Unstable Warp Rift Generator in the Warp Fields. Gather 3 Warp Nethers from Unstable Voidwalkers and return them to Ogath the Mad in Spinebreaker Post.
  get The Warp Rifts |q 10278 |goto Hellfire Peninsula 61.87,81.53
step
  talk Captain Darkhowl##22107
  accept Zeth'Gor Must Burn!##10792 |goto Hellfire Peninsula 61.21,81.32
step
  talk Zezzak##22231
  accept The Eyes of Grillok##10813 |goto Hellfire Peninsula 61.66,81.86
step
  note Kill Bleeding Hollow Peons for their torches, ignite them at Zeth'Gor's forge then throw the burning torches at Zeth'Gor Buildings.
  kill Zeth'Gor Quest Credit Marker, Barracks##20813 |q 10792 |goto Hellfire Peninsula 69.48,76.49
step
  note Use Zezzak's Shard to capture an Eye of Grillok, then approach Zezzak's cauldron to extract it. After it is removed, return Zezzak's Shard to him.
  kill Eye of Grillok Quest Credit Bunny##22177 |q 10813 |goto Hellfire Peninsula 61.69,81.81
step
  talk Ysiel Windsinger##17841
  turnin Return to the Marsh##9732 |goto Zangarmarsh 78.4,62.02 |tip {turninat}Zangarmarsh
step
  talk Ysiel Windsinger##17841
  turnin The Cenarion Expedition##9912 |goto Zangarmarsh 78.4,62.02 |tip {turninat}Zangarmarsh
step
  talk Zurai##18011
  turnin Report to Zurai##10103 |goto Zangarmarsh 85.28,54.75 |tip {turninat}Zangarmarsh
step
  talk Lieutenant General Orion##19253
  accept Arrival in Outland##10120 |goto Hellfire Peninsula 87.35,49.78
step
  talk Shadow Hunter Ty'jin##16575
  turnin Pride of the Fel Horde##9496 |goto Hellfire Peninsula 55.05,36.32
step
  talk Vurtok Axebreaker##21256
  turnin Bonechewer Blood##10450 |goto Hellfire Peninsula 55.13,36.39
step
  talk Megzeg Nukklebust##21283
  turnin I Work... For the Horde!##10086 |goto Hellfire Peninsula 55.18,38.79
step
  talk Caza'rez##17558
  turnin The Blood is Life##9590 |goto Hellfire Peninsula 54.88,36.0
step
  talk Megzeg Nukklebust##21283
  accept Burn It Up... For the Horde!##10087 |goto Hellfire Peninsula 55.18,38.79
step
  talk Vurtok Axebreaker##21256
  accept Apothecary Zelana##10449 |goto Hellfire Peninsula 55.13,36.39
step
  talk Foreman Razelcraz##16915
  turnin Outland Sucks!##10236 |goto Hellfire Peninsula 51.37,30.52
step
  talk Foreman Razelcraz##16915
  accept How to Serve Goblins##10238 |goto Hellfire Peninsula 51.37,30.52
step
  talk Earthcaller Ryga##17123
  turnin A Debilitating Sickness##9442 |goto Hellfire Peninsula 32.09,28.36
step
  talk Earthcaller Ryga##17123
  accept Administering the Salve##9447 |goto Hellfire Peninsula 32.09,28.36
step
  note Earthcaller Ryga wants you to administer the Healing Salve to 10 Debilitated Mag'har Grunts nearby Mag'har Post in Hellfire Peninsula.
  kill Debilitated Mag'har Grunt##16847 |q 9447 |goto Hellfire Peninsula 36.09,32.02
step
  talk Ryathen the Somber##16791
  turnin In Need of Felblood##9366 |goto Hellfire Peninsula 26.99,59.54
step
  talk Magistrix Carinda##16793
  turnin Arelion's Journal##9374 |goto Hellfire Peninsula 26.38,60.32
step
  talk Taleris Dawngazer##17015
  turnin The Road to Falcon Watch##9375 |goto Hellfire Peninsula 27.16,61.9
step
  talk Falconer Drenna Riverwind##16790
  turnin Trueflight Arrows##9381 |goto Hellfire Peninsula 27.71,60.33
step
  talk Apothecary Azethen##16794
  turnin Source of the Corruption##9387 |goto Hellfire Peninsula 26.79,59.71
step
  talk Arcanist Calesthris Dawnstar##16792
  turnin Magic of the Arakkoa##9396 |goto Hellfire Peninsula 27.05,59.78
step
  talk Falconer Drenna Riverwind##16790
  turnin Birds of a Feather##9397 |goto Hellfire Peninsula 27.71,60.33
step
  talk Ranger Captain Venn'ren##16789
  turnin The Great Fissure##9340 |goto Hellfire Peninsula 28.49,60.24
step
  talk Ryathen the Somber##16791
  accept The Cleansing Must Be Stopped##9370 |goto Hellfire Peninsula 26.99,59.54
step
  note Place the Signaling Gem near the Altar of Aggonar at the Pools of Aggonar and defeat any Draenei Anchorites that respond to your summons. Return to Ryathen the Somber at Falcon Watch with the Signaling Gem after completing this task.
  kill Draenei Anchorite##16994 |q 9370
step
  talk Taleris Dawngazer##17015
  accept A Pilgrim's Plight##9376 |goto Hellfire Peninsula 27.16,61.9
step
  note The Wounded Blood Elf Pilgrim was attacked by Quillfang Ravagers while camped in Dustquill Ravine. Find her camp and search it for the missing pack.
  collect Torn Pilgrim's Pack##184478 |q 9376 |goto Hellfire Peninsula 22.11,68.3
step
  talk Ranger Captain Venn'ren##16789
  accept Marking the Path##9391 |goto Hellfire Peninsula 28.49,60.24
step
  talk Magistrix Carinda##16793
  accept Arelion's Secret##10286 |goto Hellfire Peninsula 26.38,60.32
step
  note Ranger Captain Venn'ren at Falcon Watch wants you to go to the Great Fissure in Hellfire Peninsula and light the Southern Beacon, Western Beacon and Central Beacon. Return to him with the Lit Torch after you've completed this task.
  collect Western Beacon##181581 |q 9391 |goto Hellfire Peninsula 30.02,60.58
step
  talk Naladu##19361
  turnin A Traitor Among Us##10367 |goto Hellfire Peninsula 16.27,65.09
step
  talk Naladu##19361
  accept The Dreghood Elders##10368 |goto Hellfire Peninsula 16.27,65.09
step
  talk Tola'thion##19293
  turnin Colossal Menace##10132 |goto Hellfire Peninsula 15.62,52.04
step
  talk Thiah Redmane##16991
  turnin Demonic Contamination##9372 |goto Hellfire Peninsula 15.7,52.09
step
  talk Mahuram Stouthoof##16888
  turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula 15.94,52.17
step
  talk Earthbinder Galandria Nightbreeze##19294
  turnin The Earthbinder##10349 |goto Hellfire Peninsula 15.96,51.57
step
  talk Thiah Redmane##16991
  accept Testing the Antidote##10255 |goto Hellfire Peninsula 15.7,52.09
step
  note Use the Cenarion Antidote on a Hulking Helboar and observe the results. Once you have the results of the experiment, return to Thiah Redmane at the Cenarion Post in Hellfire Peninsula.
  kill Dreadtusk##16992 |q 10255
step
  talk Earthbinder Galandria Nightbreeze##19294
  accept Natural Remedies##10351 |goto Hellfire Peninsula 15.96,51.57
step
  note Use the Seed of Revitalization at the Earthbinder's Circle to heal the land around the crystal. Then, return to Earthbinder Galandria Nightbreeze at the Cenarion Post in Hellfire Peninsula with any information that you gain.
  kill Goliathon##19305 |q 10351
step
  talk Legassi##19344
  turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.24,74.84
step
  talk "Screaming" Screed Luckheed##19367
  turnin In Case of Emergency...##10161 |goto Hellfire Peninsula 49.15,74.86
step
  talk "Screaming" Screed Luckheed##19367
  accept Voidwalkers Gone Wild##9351 |goto Hellfire Peninsula 49.15,74.86
step
  note Bring 10 Condensed Voidwalker Essences to "Screaming" Screed Luckheed at the Zeppelin Crash.
  kill Rogue Voidwalker##16974 |q 9351 |goto Hellfire Peninsula 48.37,83.38
step
  talk Legassi##19344
  accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.24,74.84
step
  note Legassi at the Zeppelin Crash wants you to gather 8 Purified Helboar Meat. To purify the meat, use the Purification Mixture on the Tainted Helboar Meat you gather from Helboars.
  get Helboar, the Other White Meat |q 9361 |goto Hellfire Peninsula 49.24,74.84
step
  note Mordiba wants you to defeat 12 Unyielding Footmen, 8 Unyielding Knights, and 6 Unyielding Sorcerers at the Expedition Armory to the west of Spinebreaker Post.
  kill Unyielding Footman##16904 |q 10220 |goto Hellfire Peninsula 55.38,78.36
step
  talk Grelag##16858
  turnin Preparing the Salve##9345 |goto Hellfire Peninsula 60.93,81.67
step
  talk Ogath the Mad##19683
  turnin The Warp Rifts##10278 |goto Hellfire Peninsula 61.87,81.53
step
  talk Captain Darkhowl##22107
  turnin Zeth'Gor Must Burn!##10792 |goto Hellfire Peninsula 61.21,81.32
step
  talk Zezzak##22231
  turnin The Eyes of Grillok##10813 |goto Hellfire Peninsula 61.66,81.86
step
  talk Emissary Mordiba##19682
  turnin Make Them Listen##10220 |goto Hellfire Peninsula 61.78,81.71
step
  talk Althen the Historian##19736
  turnin The Battle Horn##10230 |goto Hellfire Peninsula 61.74,81.79
step
  talk Grelag##16858
  accept Investigate the Crash##10213 |goto Hellfire Peninsula 60.93,81.67
step
  talk Althen the Historian##19736
  accept Bloody Vengeance##10250 |goto Hellfire Peninsula 61.74,81.79
step
  note Blow the Unyielding Battle Horn near the Alliance Banner. Kill Urtrak and then return to Althen the Historian at Spinebreaker Post.
  kill Urtrak##19862 |q 10250
step
  talk Ogath the Mad##19683
  accept Void Ridge##10294 |goto Hellfire Peninsula 61.87,81.53
step
  note Go to Void Ridge and kill the creatures you find. Collect 40 Void Ridge Soul Shards and return them to Ogath the Mad in Spinebreaker Post.
  kill Collapsing Voidwalker##17014 |q 10294 |goto Hellfire Peninsula 78.27,69.62
step
  talk Zezzak##22231
  accept Grillok "Darkeye"##10834 |goto Hellfire Peninsula 61.66,81.86
step
  note Kill Grillok Darkeye and bring Grillok's Eyepatch to Zezzak in Spinebreaker Post.
  kill Grillok "Darkeye"##19457 |q 10834 |goto Hellfire Peninsula 66.66,71.5
step
  talk Vlagga Freyfeather##18930
  turnin Arrival in Outland##10120 |goto Hellfire Peninsula 87.35,48.14
step
  talk Vlagga Freyfeather##18930
  accept Journey to Thrallmar##10289 |goto Hellfire Peninsula 87.35,48.14
step
  talk Apothecary Zelana##21257
  turnin Apothecary Zelana##10449 |goto Hellfire Peninsula 66.17,41.95
step
  talk Apothecary Zelana##21257
  accept Spinebreaker Post##10242 |goto Hellfire Peninsula 66.17,41.95
step
  note Use the Flaming Torch to burn the Eastern Alliance Cannon and the Western Alliance Cannon, and then return to Megzeg Nukklebust in Thrallmar.
  kill Invis Alliance Siege Engine - East##18849 |q 10087 |goto Hellfire Peninsula 60.82,51.86
step
  talk General Krakork##19255
  turnin Journey to Thrallmar##10289 |goto Hellfire Peninsula 55.88,36.65
step
  talk Megzeg Nukklebust##21283
  turnin Burn It Up... For the Horde!##10087 |goto Hellfire Peninsula 55.18,38.79
step
  talk General Krakork##19255
  accept Report to Nazgrel##10291 |goto Hellfire Peninsula 55.88,36.65
step
  note Rescue Manni, Moh and Jakk from the Fel Orc camps and return to Foreman Razelcraz by the mine northwest of Thrallmar.
  collect Manni's Cage##183936 |q 10238 |goto Hellfire Peninsula 45.11,41.1
step
  talk Foreman Razelcraz##16915
  turnin How to Serve Goblins##10238 |goto Hellfire Peninsula 51.37,30.52
step
  talk Foreman Razelcraz##16915
  accept Shizz Work##10629 |goto Hellfire Peninsula 51.37,30.52
step
  note Use the Felhound Whistle to summon a Fel Guard Hound. Take the Fel Guard Hound for a walk and kill some Deranged Helboars. Search for the Shredder Keys in the Fel Guard Hound's "leavings." Return the Shredder Keys to Foreman Razelcraz by the mine northwest of Thrallmar.
  get Shizz Work |q 10629 |goto Hellfire Peninsula 51.37,30.52
step
  talk Earthcaller Ryga##17123
  turnin Administering the Salve##9447 |goto Hellfire Peninsula 32.09,28.36
step
  talk Ryathen the Somber##16791
  turnin The Cleansing Must Be Stopped##9370 |goto Hellfire Peninsula 26.99,59.54
step
  talk Taleris Dawngazer##17015
  turnin A Pilgrim's Plight##9376 |goto Hellfire Peninsula 27.16,61.9
step
  talk Magister Aledis##20159
  turnin Arelion's Secret##10286 |goto Hellfire Peninsula 26.56,63.04
step
  talk Ranger Captain Venn'ren##16789
  turnin Marking the Path##9391 |goto Hellfire Peninsula 28.49,60.24
step
  talk Magister Aledis##20159
  accept The Mistress Revealed##10287 |goto Hellfire Peninsula 26.56,63.04
step
  note Free Morod the Windstirrer, Akoru the Firecaller and Aylaan the Waterwaker at the Ruins of Sha'naar. Return to Naladu after completing this task.
  kill Morod the Windstirrer##20677 |q 10368 |goto Hellfire Peninsula 13.13,61.04
step
  talk Naladu##19361
  turnin The Dreghood Elders##10368 |goto Hellfire Peninsula 16.27,65.09
step
  talk Naladu##19361
  accept Arzeth's Demise##10369 |goto Hellfire Peninsula 16.27,65.09
step
  note Use the Staff of Dreghood Elders on Arzeth the Merciless and slay him after he's lost his powers. Return to Naladu at the Ruins of Sha'naar after completing this task.
  kill Arzeth the Powerless##20680 |q 10369
step
  talk Thiah Redmane##16991
  turnin Testing the Antidote##10255 |goto Hellfire Peninsula 15.7,52.09
step
  talk Earthbinder Galandria Nightbreeze##19294
  turnin Natural Remedies##10351 |goto Hellfire Peninsula 15.96,51.57
step
  talk "Screaming" Screed Luckheed##19367
  turnin Voidwalkers Gone Wild##9351 |goto Hellfire Peninsula 49.15,74.86
step
  talk Legassi##19344
  turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.24,74.84
step
  talk "Screaming" Screed Luckheed##19367
  turnin Investigate the Crash##10213 |goto Hellfire Peninsula 49.15,74.86
step
  talk Legassi##19344
  accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.24,74.84
step
  note Bring 12 Plump Buzzard Wings to Legassi at the Zeppelin Crash.
  kill Bonestripper Buzzard##16972 |q 9356 |goto Hellfire Peninsula 61.75,67.82
step
  talk Apothecary Albreck##21279
  turnin Spinebreaker Post##10242 |goto Hellfire Peninsula 61.14,81.77
step
  talk Althen the Historian##19736
  turnin Bloody Vengeance##10250 |goto Hellfire Peninsula 61.74,81.79
step
  talk Ogath the Mad##19683
  turnin Void Ridge##10294 |goto Hellfire Peninsula 61.87,81.53
step
  talk Zezzak##22231
  turnin Grillok "Darkeye"##10834 |goto Hellfire Peninsula 61.66,81.86
step
  talk Althen the Historian##19736
  accept Honor the Fallen##10258 |goto Hellfire Peninsula 61.74,81.79
step
  talk Ogath the Mad##19683
  accept From the Abyss##10295 |goto Hellfire Peninsula 61.87,81.53
step
  note Kill Void Baron Galaxis and collect his soul shard. Take the shard to Ogath the Mad in Spinebreaker Post.
  get From the Abyss |q 10295 |goto Hellfire Peninsula 61.87,81.53
step
  talk Apothecary Albreck##21279
  accept Boiling Blood##10538 |goto Hellfire Peninsula 61.14,81.77
step
  note Use Bleeding Hollow Blood at the Cursed Cauldron to make Boiled Blood. Bring 12 Boiled Blood to Apothecary Albreck at Spinebreaker Post.
  get Boiling Blood |q 10538 |goto Hellfire Peninsula 61.14,81.77
step
  talk Nazgrel##3230
  turnin Report to Nazgrel##10291 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept Eradicate the Burning Legion##10121 |goto Hellfire Peninsula 55.02,35.96
step
  talk Foreman Razelcraz##16915
  turnin Shizz Work##10629 |goto Hellfire Peninsula 51.37,30.52
step
  talk Foreman Razelcraz##16915
  accept Beneath Thrallmar##10630 |goto Hellfire Peninsula 51.37,30.52
step
  note Kill Urga'zz and return to Foreman Razelcraz by the mine northwest of Thrallmar.
  kill Urga'zz##18976 |q 10630 |goto Hellfire Peninsula 54.39,31.57
step
  talk Magistrix Carinda##16793
  turnin The Mistress Revealed##10287 |goto Hellfire Peninsula 26.38,60.32
step
  talk Magistrix Carinda##16793
  accept Arelion's Mistress##9472 |goto Hellfire Peninsula 26.38,60.32
step
  note Magistrix Carinda at Falcon Watch wants you to lure Viera Sunwhisper away from the settlement and then use Carinda's Scroll of Retribution on her.
  kill Viera Sunwhisper##17226 |q 9472 |goto Hellfire Peninsula 27.15,62.11
step
  talk Naladu##19361
  turnin Arzeth's Demise##10369 |goto Hellfire Peninsula 16.27,65.09
step
  talk Legassi##19344
  turnin Smooth as Butter##9356 |goto Hellfire Peninsula 49.24,74.84
step
  talk Commander Hogarth##19937
  turnin Honor the Fallen##10258 |goto Hellfire Peninsula 56.92,77.37
step
  talk Apothecary Albreck##21279
  turnin Boiling Blood##10538 |goto Hellfire Peninsula 61.14,81.77
step
  talk Ogath the Mad##19683
  turnin From the Abyss##10295 |goto Hellfire Peninsula 61.87,81.53
step
  talk Apothecary Albreck##21279
  accept Apothecary Antonivich##10835 |goto Hellfire Peninsula 61.14,81.77
step
  talk Sergeant Shatterskull##19256
  turnin Eradicate the Burning Legion##10121 |goto Hellfire Peninsula 58.14,41.27
step
  talk Apothecary Antonivich##16588
  turnin Apothecary Antonivich##10835 |goto Hellfire Peninsula 52.28,36.46
step
  talk Sergeant Shatterskull##19256
  accept Felspark Ravine##10123 |goto Hellfire Peninsula 58.14,41.27
step
  talk Apothecary Antonivich##16588
  accept A Burden of Souls##10864 |goto Hellfire Peninsula 52.28,36.46
step
  talk Foreman Razelcraz##16915
  turnin Beneath Thrallmar##10630 |goto Hellfire Peninsula 51.37,30.52
step
  talk Magistrix Carinda##16793
  turnin Arelion's Mistress##9472 |goto Hellfire Peninsula 26.38,60.32
step
  note Sergeant Shatterskull at the Supply Caravan east of Thrallmar in Hellfire Peninsula wants you to kill 4 Flamewaker Imps, 6 Infernal Warbringers and 1 Dreadcaller.
  kill Dreadcaller##19434 |q 10123 |goto Hellfire Peninsula 68.38,57.72
step
  talk Sergeant Shatterskull##19256
  turnin Felspark Ravine##10123 |goto Hellfire Peninsula 58.14,41.27
step
  talk Apothecary Antonivich##16588
  turnin A Burden of Souls##10864 |goto Hellfire Peninsula 52.28,36.46
step
  talk Sergeant Shatterskull##19256
  accept Forward Base: Reaver's Fall##10124 |goto Hellfire Peninsula 58.14,41.27
step
  talk Apothecary Antonivich##16588
  accept The Demoniac Scryer##10838 |goto Hellfire Peninsula 52.28,36.46
step
  note Use the Demoniac Scryer in Hellfire Basin, wait for it to attune, and then take a reading.
  get The Demoniac Scryer |q 10838 |goto Hellfire Peninsula 52.28,36.46
step
  talk Forward Commander To'arch##19273
  turnin Forward Base: Reaver's Fall##10124 |goto Hellfire Peninsula 65.89,43.59
step
  talk Forward Commander To'arch##19273
  accept Disrupt Their Reinforcements##10208 |goto Hellfire Peninsula 65.89,43.59
step
  note Defeat enemies around Portal Xilus and Portal Kruul to gather Demonic Rune Stones.
  collect Portal Xilus##184290 |q 10208 |goto Hellfire Peninsula 70.83,45.47
step
  talk Apothecary Antonivich##16588
  turnin The Demoniac Scryer##10838 |goto Hellfire Peninsula 52.28,36.46
step
  talk Stone Guard Stok'ton##17493
  accept Weaken the Ramparts##9572 |goto Hellfire Peninsula 55.2,36.01
step
  note Slay Watchkeeper Gargolmar, Omor the Unscarred and the drake, Nazan. Return Gargolmar's Hand, Omor's Hoof and Nazan's Head to Caza'rez at Thrallmar in Hellfire Peninsula.
  kill Watchkeeper Gargolmar##17306 |q 9572 |goto Hellfire Ramparts - Dungeon -1,-1
step
  talk Apothecary Antonivich##16588
  accept Report to Nazgrel##10875 |goto Hellfire Peninsula 52.28,36.46
step
  talk Forward Commander To'arch##19273
  turnin Disrupt Their Reinforcements##10208 |goto Hellfire Peninsula 65.89,43.59
step
  talk Forward Commander To'arch##19273
  accept Mission: Gateways Murketh and Shaadraz##10129 |goto Hellfire Peninsula 65.89,43.59
step
  talk Caza'rez##17558
  turnin Weaken the Ramparts##9572 |goto Hellfire Peninsula 54.88,36.0
step
  talk Nazgrel##3230
  turnin Report to Nazgrel##10875 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept The Foot of the Citadel##10876 |goto Hellfire Peninsula 55.02,35.96
step
  note Kill Force Commander Gorax, place the Challenge From the Horde upon his corpse, kill The Hand of Kargath, and then bring the Head of the Hand of Kargath to Nazgrel in Thrallmar.
  get The Foot of the Citadel |q 10876 |goto Hellfire Peninsula 55.02,35.96
step
  note Speak with Wing Commander Brack, bomb Gateway Murketh and Gateway Shaadraz and then return to Forward Commander To'arch at Reaver's Fall.
  kill Legion Transporter: Alpha##19291 |q 10129 |goto Hellfire Peninsula 78.0,47.24
step
  talk Forward Commander To'arch##19273
  turnin Mission: Gateways Murketh and Shaadraz##10129 |goto Hellfire Peninsula 65.89,43.59
step
  talk Nazgrel##3230
  turnin The Foot of the Citadel##10876 |goto Hellfire Peninsula 55.02,35.96
step
  talk Forward Commander To'arch##19273
  accept Mission: The Abyssal Shelf##10162 |goto Hellfire Peninsula 65.89,43.59
step
  note Forward Commander To'arch at Reaver's Fall in Hellfire Peninsula has asked that you destroy 20 Gan'arg Peons, 5 Mo'arg Overseers and 5 Fel Cannons.
  kill Gan'arg Peon##19398 |q 10162 |goto Hellfire Peninsula 72.94,17.37
step
  talk Forward Commander To'arch##19273
  turnin Mission: The Abyssal Shelf##10162 |goto Hellfire Peninsula 65.89,43.59
step
  talk Forward Commander To'arch##19273
  accept Return to Thrallmar##10388 |goto Hellfire Peninsula 65.89,43.59
step
  talk Nazgrel##3230
  turnin Return to Thrallmar##10388 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept Forge Camp: Mageddon##10390 |goto Hellfire Peninsula 55.02,35.96
step
  note Nazgrel in Thrallmar wants you to attack Forge Camp: Mageddon and kill 10 gan'arg servants and return with the head of Razorsaw.
  kill Gan'arg Servant##16947 |q 10390 |goto Hellfire Peninsula 58.98,31.64
step
  talk Nazgrel##3230
  accept The Assassin##9400 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  turnin Forge Camp: Mageddon##10390 |goto Hellfire Peninsula 55.02,35.96
step
  talk Fel Orc Corpse##17062
  turnin The Assassin##9400 |goto Hellfire Peninsula 33.62,43.53
step
  talk Nazgrel##3230
  accept Cannons of Rage##10391 |goto Hellfire Peninsula 55.02,35.96
step
  note Destroy 3 Fel Cannon MKIs in Forge Camp: Rage and return to Nazgrel in Thrallmar.
  kill Fel Cannon MKI##22461 |q 10391 |goto Hellfire Peninsula 59.62,32.56
step
  talk Fel Orc Corpse##17062
  accept A Strange Weapon##9401 |goto Hellfire Peninsula 33.62,43.53
step
  talk Nazgrel##3230
  turnin Cannons of Rage##10391 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  turnin A Strange Weapon##9401 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept Doorway to the Abyss##10392 |goto Hellfire Peninsula 55.02,35.96
step
  note Slay Arix'Amal to get the Burning Legion Gate Key. Use the Burning Legion Gate Key on the Rune of Spite, then return to Nazgrel in Thrallmar.
  kill Warbringer Arix'Amal##19298 |q 10392 |goto Hellfire Peninsula 53.09,26.47
step
  talk Nazgrel##3230
  accept The Warchief's Mandate##9405 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  turnin Doorway to the Abyss##10392 |goto Hellfire Peninsula 55.02,35.96
step
  talk Far Seer Regulkut##16574
  turnin The Warchief's Mandate##9405 |goto Hellfire Peninsula 54.23,37.9
step
  talk Magister Bloodhawk##21175
  accept The Agony and the Darkness##10389 |goto Hellfire Peninsula 55.13,36.03
step
  note Magister Bloodhawk wants you to kill 10 terrorfiends in the Pools of Aggonar.
  kill Terrorfiend##16951 |q 10389 |goto Hellfire Peninsula 40.05,32.89
step
  talk Far Seer Regulkut##16574
  accept A Spirit Guide##9410 |goto Hellfire Peninsula 54.23,37.9
step
  talk Nazgrel##3230
  accept Cruel's Intentions##10136 |goto Hellfire Peninsula 55.02,35.96
step
  note Kill Arazzius the Cruel, then return to Nazgrel in Thrallmar.
  kill Arazzius the Cruel##19191 |q 10136 |goto Hellfire Peninsula 43.82,31.55
step
  talk Magister Bloodhawk##21175
  turnin The Agony and the Darkness##10389 |goto Hellfire Peninsula 55.13,36.03
step
  talk Gorkan Bloodfist##16845
  turnin A Spirit Guide##9410 |goto Hellfire Peninsula 31.99,27.79
step
  talk Nazgrel##3230
  turnin Cruel's Intentions##10136 |goto Hellfire Peninsula 55.02,35.96
step
  talk Gorkan Bloodfist##16845
  accept The Mag'har##9406 |goto Hellfire Peninsula 31.99,27.79
step
  talk Nazgrel##3230
  turnin The Mag'har##9406 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept Messenger to Thrall##9438 |goto Hellfire Peninsula 55.02,35.96
step
  talk Thrall##4949
  turnin Messenger to Thrall##9438 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  note {travel}Zangarmarsh
  goto Zangarmarsh 34.03,50.93
]])
