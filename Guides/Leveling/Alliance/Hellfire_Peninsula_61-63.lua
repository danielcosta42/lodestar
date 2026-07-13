-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Hellfire Peninsula (61-63)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Zangarmarsh (62-65)",
}, [[
step
  note {fp}Flightmaster Krill Bitterhue
  goto Hellfire Peninsula 54.68,62.35 |tip {vendor}
step
  talk Field Commander Romus##16830
  accept Pride of the Fel Horde##9493 |goto Hellfire Peninsula 56.84,62.72
step
  talk Sid Limbardi##16826
  accept The Longbeards##9558 |goto Hellfire Peninsula 54.22,63.6
step
  talk Gunny##17479
  accept The Blood is Life##9589 |goto Hellfire Peninsula 56.4,66.66
step
  note Collect 10 Fel Orc Blood Vials and return them to Gunny at Honor Hold in Hellfire Peninsula.
  kill Laughing Skull Enforcer##17370 |q 9589 |goto The Blood Furnace - Dungeon -1,-1
step
  talk Warp-Scryer Kryv##16839
  accept The Path of Glory##10047 |goto Hellfire Peninsula 56.69,66.52
step
  talk Honor Guard Wesilow##16827
  accept Unyielding Souls##10050 |goto Hellfire Peninsula 50.88,60.35
step
  talk Dumphry##21209
  accept Waste Not, Want Not##10055 |goto Hellfire Peninsula 51.12,60.3
step
  note Bring 8 pieces of Salvaged Metal and 8 pieces of Salvaged Wood to Dumphry at Honor Hold.
  collect Salvageable Metal##182797 |q 10055 |goto Hellfire Peninsula 57.71,53.38
step
  talk Father Malgor Devidicus##16825
  accept An Old Gift##10058 |goto Hellfire Peninsula 54.29,63.58
step
  note Retrieve Mysteries of the Light and return it to Father Malgor Devidicus at Honor Hold.
  collect Mysteries of the Light##182804 |q 10058 |goto Hellfire Peninsula 54.96,86.81
step
  talk Force Commander Danath Trollbane##16819
  accept The Legion Reborn##10141 |goto Hellfire Peninsula 56.64,66.7
step
  talk Force Commander Danath Trollbane##16819
  accept Know your Enemy##10160 |goto Hellfire Peninsula 56.64,66.7
step
  talk Warp-Scryer Kryv##16839
  accept The Heart of Darkness##10399 |goto Hellfire Peninsula 56.69,66.52
step
  talk Force Commander Danath Trollbane##16819
  accept Overlord##10400 |goto Hellfire Peninsula 56.64,66.7
step
  talk Lieutenant Amadi##16820
  accept Fel Orc Scavengers##10482 |goto Hellfire Peninsula 50.91,60.19
step
  note Cleanse 8 Trampled Skeletons on the Path of Glory with Draenei Holy Water, then return to Warp-Scryer Kryv at Honor Hold.
  collect Trampled Skeleton##182789 |q 10047 |goto Hellfire Peninsula 58.75,49.87
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
  note Honor Guard Wesilow wants you to defeat 12 Unyielding Footmen, 10 Unyielding Sorcerers, and 5 Unyielding Knights at the Expedition Armory to the south.
  kill Unyielding Footman##16904 |q 10050 |goto Hellfire Peninsula 55.38,78.36
step
  talk Wing Commander Dabir'ee##19409
  accept Zeth'Gor Must Burn!##10895 |goto Hellfire Peninsula 71.4,62.48
step
  note Use the smoke beacon at each of Zeth'Gor's towers, and then return to Wing Commander Dabir'ee at Expedition Point.
  kill Zeth'Gor Quest Credit Marker, They Must Burn, Tower North##22401 |q 10895 |goto Hellfire Peninsula 67.98,66.73
step
  talk Commander Duron##19229
  accept Arrival in Outland##10288 |goto Hellfire Peninsula 87.34,50.75
step
  talk Foreman Razelcraz##16915
  accept Outland Sucks!##10236 |goto Hellfire Peninsula 51.37,30.52
step
  note Find 6 Shredder Parts and return to Foreman Razelcraz by the mine northwest of Thrallmar.
  collect Shredder Parts##183934 |q 10236 |goto Hellfire Peninsula 47.97,41.71
step
  note Kill 10 Terrorfiends in the Pools of Aggonar and return to Warp-Scryer Kryv in the main keep of Honor Hold.
  kill Terrorfiend##16951 |q 10399 |goto Hellfire Peninsula 40.05,32.89
step
  note Slay Arazzius the Cruel in the Pools of Aggonar and return to Force Commander Danath Trollbane in the keep of Honor Hold.
  kill Arazzius the Cruel##19191 |q 10400 |goto Hellfire Peninsula 43.82,31.55
step
  talk Elsaana##17006
  accept An Ambitious Plan##9383 |goto Hellfire Peninsula 23.21,36.66
step
  note Use the Sanctified Crystal against a wounded Uncontrolled Voidwalker and return to Elsaana at the Temple of Telhamat.
  get An Ambitious Plan |q 9383 |goto Hellfire Peninsula 23.21,36.66
step
  talk Anchorite Obadei##16834
  accept In Search of Sedai##9390 |goto Hellfire Peninsula 23.0,40.37
step
  talk Scout Vanura##16797
  accept Deadly Predators##9398 |goto Hellfire Peninsula 23.36,37.44
step
  talk Ikan##16799
  accept Cruel Taskmasters##9399 |goto Hellfire Peninsula 23.09,40.22
step
  talk Amaan the Wise##16796
  accept The Pools of Aggonar##9426 |goto Hellfire Peninsula 23.42,36.54
step
  talk Ikan##16799
  accept The Rock Flayer Matriarch##9490 |goto Hellfire Peninsula 23.09,40.22
step
  note Obtain Blacktalon's Claws from Blacktalon the Savage at the Great Fissure and bring it to Ikan at the Temple of Telhamat in Hellfire Peninsula.
  kill Blacktalon the Savage##17057 |q 9490 |goto Hellfire Peninsula 33.37,65.08
step
  talk Amaan the Wise##16796
  accept Helping the Cenarion Post##10443 |goto Hellfire Peninsula 23.42,36.54
step
  note Field Commander Romus at Honor Hold wants you to kill 8 Shattered Hand Legionnaires, 4 Shattered Hand Centurions, and 4 Shattered Hand Champions.
  kill Shattered Hand Legionnaire##16700 |q 9493 |goto The Shattered Halls - Dungeon -1,-1
step
  talk Thiah Redmane##16991
  turnin Helping the Cenarion Post##10443 |goto Hellfire Peninsula 15.7,52.09
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
  note Kill 8 Thornfang Ravagers and 8 Thornfang Venomspitters, and then return to Mahuram Stouthoof at the Cenarion Post in Hellfire Peninsula.
  kill Thornfang Ravager##19349 |q 10159 |goto Hellfire Peninsula 10.25,51.54
step
  talk Akoru the Firecaller##20678
  accept Naladu##10403 |goto Hellfire Peninsula 15.59,58.75
step
  note Slay 4 Illidari Taskmasters at the Ruins of Sha'naar and return to Ikan at the Temple of Telhamat in Hellfire Peninsula.
  kill Illidari Taskmaster##17058 |q 9399 |goto Hellfire Peninsula 14.67,59.08
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
  talk Gremni Longbeard##16850
  turnin The Longbeards##9558 |goto Hellfire Peninsula 23.89,72.17
step
  talk Gremni Longbeard##16850
  accept Rampaging Ravagers##9385 |goto Hellfire Peninsula 23.89,72.17
step
  talk Gremni Longbeard##16850
  accept The Arakkoa Threat##9417 |goto Hellfire Peninsula 23.89,72.17
step
  talk Mirren Longbeard##16851
  accept Gaining Mirren's Trust##9563 |goto Hellfire Peninsula 23.97,72.35
step
  note Mirren Longbeard wants you to bring him 1 Nethergarde Bitter. You must also attain Friendly reputation with Honor Hold to complete this quest.
  get Gaining Mirren's Trust |q 9563 |goto Hellfire Peninsula 23.97,72.35
step
  note Kill 10 Quillfang Ravagers and return to Gremni Longbeard in Hellfire Peninsula.
  kill Quillfang Ravager##16934 |q 9385 |goto Hellfire Peninsula 22.66,66.55
step
  note Scout Vanura at the Temple of Telhamat in Hellfire Peninsula wants you to slay 8 Stonescythe Whelps and 4 Stonescythe Alpha.
  kill Stonescythe Alpha##16929 |q 9398 |goto Hellfire Peninsula 34.0,67.45
step
  note Gremni Longbeard in Hellfire Peninsula wants you to slay 4 Haal'eshi Windwalkers and 6 Haal'eshi Talonguards.
  kill Haal'eshi Windwalker##16966 |q 9417 |goto Hellfire Peninsula 26.34,76.47
step
  talk Field Commander Romus##16830
  turnin Pride of the Fel Horde##9493 |goto Hellfire Peninsula 56.84,62.72
step
  talk Sergeant Altumus##19309
  turnin The Legion Reborn##10141 |goto Hellfire Peninsula 61.72,60.95
step
  talk Warp-Scryer Kryv##16839
  turnin The Heart of Darkness##10399 |goto Hellfire Peninsula 56.69,66.52
step
  talk Force Commander Danath Trollbane##16819
  turnin Overlord##10400 |goto Hellfire Peninsula 56.64,66.7
step
  talk Lieutenant Amadi##16820
  turnin Know your Enemy##10160 |goto Hellfire Peninsula 50.91,60.19
step
  talk Warp-Scryer Kryv##16839
  turnin The Path of Glory##10047 |goto Hellfire Peninsula 56.69,66.52
step
  talk Honor Guard Wesilow##16827
  turnin Unyielding Souls##10050 |goto Hellfire Peninsula 50.88,60.35
step
  talk Dumphry##21209
  turnin Waste Not, Want Not##10055 |goto Hellfire Peninsula 51.12,60.3
step
  talk Father Malgor Devidicus##16825
  turnin An Old Gift##10058 |goto Hellfire Peninsula 54.29,63.58
step
  talk Lieutenant Amadi##16820
  turnin Fel Orc Scavengers##10482 |goto Hellfire Peninsula 50.91,60.19
step
  talk Gunny##17479
  turnin The Blood is Life##9589 |goto Hellfire Peninsula 56.4,66.66
step
  talk Honor Guard Wesilow##16827
  accept Looking to the Leadership##10057 |goto Hellfire Peninsula 50.88,60.35
step
  talk Dumphry##21209
  accept Laying Waste to the Unwanted##10078 |goto Hellfire Peninsula 51.12,60.3
step
  talk Warp-Scryer Kryv##16839
  accept The Temple of Telhamat##10093 |goto Hellfire Peninsula 56.69,66.52
step
  talk Sergeant Altumus##19309
  accept The Path of Anguish##10142 |goto Hellfire Peninsula 61.72,60.95
step
  talk Lieutenant Amadi##16820
  accept Ill Omens##10483 |goto Hellfire Peninsula 50.91,60.19
step
  note Lieutenant Amadi in Honor Hold wants you to bring 1 Cursed Talisman to Corporal Ironridge at Expedition Point.
  kill Bleeding Hollow Grunt##16871 |q 10483 |goto Hellfire Peninsula 67.1,71.23
step
  note Use the Flaming Torch to burn the Horde Blade Throwers overlooking the Path of Glory. Then, bring the Flaming Torch to Dumphry in Honor Hold.
  kill Invis Horde Siege Engine - East##18818 |q 10078 |goto Hellfire Peninsula 58.49,47.67
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
  note Overcome the ghosts of Arch Mage Xintor and Lieutenant Commander Thalvos and return to Honor Guard Wesilow in the tower northwest of Honor Hold.
  kill Arch Mage Xintor##16977 |q 10057 |goto Hellfire Peninsula 53.67,81.1
step
  talk Ysiel Windsinger##17841
  turnin Return to the Marsh##9732 |goto Zangarmarsh 78.4,62.02 |tip {turninat}Zangarmarsh
step
  talk Wing Commander Dabir'ee##19409
  turnin Zeth'Gor Must Burn!##10895 |goto Hellfire Peninsula 71.4,62.48
step
  talk Ysiel Windsinger##17841
  turnin The Cenarion Expedition##9912 |goto Zangarmarsh 78.4,62.02 |tip {turninat}Zangarmarsh
step
  talk Corporal Ironridge##21133
  turnin Ill Omens##10483 |goto Hellfire Peninsula 70.96,63.37
step
  talk Corporal Ironridge##21133
  accept Cursed Talismans##10484 |goto Hellfire Peninsula 70.96,63.37
step
  note Bring 12 Cursed Talismans to Corporal Ironridge at Expedition Point.
  kill Bleeding Hollow Grunt##16871 |q 10484 |goto Hellfire Peninsula 67.1,71.23
step
  note Sergeant Altumus at the East Supply Caravan east of Honor Hold in Hellfire Peninsula wants you to kill 4 Flamewaker Imps, 6 Infernal Warbringers and 1 Dreadcaller.
  kill Dreadcaller##19434 |q 10142 |goto Hellfire Peninsula 68.38,57.72
step
  talk Amish Wildhammer##18931
  turnin Arrival in Outland##10288 |goto Hellfire Peninsula 87.36,52.42
step
  talk Amish Wildhammer##18931
  accept Journey to Honor Hold##10140 |goto Hellfire Peninsula 87.36,52.42
step
  talk Foreman Razelcraz##16915
  turnin Outland Sucks!##10236 |goto Hellfire Peninsula 51.37,30.52
step
  talk Foreman Razelcraz##16915
  accept How to Serve Goblins##10238 |goto Hellfire Peninsula 51.37,30.52
step
  note Amaan the Wise wants you to go to the Pools of Aggonar and slay 6 Terrorfiends and 6 Blistering Rots.
  kill Terrorfiend##16951 |q 9426 |goto Hellfire Peninsula 40.05,32.89
step
  note Rescue Manni, Moh and Jakk from the Fel Orc camps and return to Foreman Razelcraz by the mine northwest of Thrallmar.
  collect Manni's Cage##183936 |q 10238 |goto Hellfire Peninsula 45.11,41.1
step
  talk Ikan##16799
  turnin The Rock Flayer Matriarch##9490 |goto Hellfire Peninsula 23.09,40.22
step
  talk Elsaana##17006
  turnin An Ambitious Plan##9383 |goto Hellfire Peninsula 23.21,36.66
step
  talk Sedai's Corpse##16852
  turnin In Search of Sedai##9390 |goto Hellfire Peninsula 26.9,37.43
step
  talk Scout Vanura##16797
  turnin Deadly Predators##9398 |goto Hellfire Peninsula 23.36,37.44
step
  talk Ikan##16799
  turnin Cruel Taskmasters##9399 |goto Hellfire Peninsula 23.09,40.22
step
  talk Amaan the Wise##16796
  turnin The Pools of Aggonar##9426 |goto Hellfire Peninsula 23.42,36.54
step
  talk Amaan the Wise##16796
  turnin The Temple of Telhamat##10093 |goto Hellfire Peninsula 23.42,36.54
step
  talk Sedai's Corpse##16852
  accept Return to Obadei##9423 |goto Hellfire Peninsula 26.9,37.43
step
  talk Amaan the Wise##16796
  accept Cleansing the Waters##9427 |goto Hellfire Peninsula 23.42,36.54
step
  note Amaan the Wise wants you to travel to the Pools of Aggonar and use the Cleansing Vial at Aggonar's corpse. Return to him when Aggonar's essence is cleansed from the water.
  kill Aggonis##17000 |q 9427
step
  note Slay 5 Raging Colossi and then return to Tola'thion at the Cenarion Post in Hellfire Peninsula.
  kill Raging Colossus##19188 |q 10132 |goto Hellfire Peninsula 15.38,42.29
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
  talk Naladu##19361
  turnin A Traitor Among Us##10367 |goto Hellfire Peninsula 16.27,65.09
step
  talk Naladu##19361
  accept The Dreghood Elders##10368 |goto Hellfire Peninsula 16.27,65.09
step
  talk Gremni Longbeard##16850
  turnin Rampaging Ravagers##9385 |goto Hellfire Peninsula 23.89,72.17
step
  talk Gremni Longbeard##16850
  turnin The Arakkoa Threat##9417 |goto Hellfire Peninsula 23.89,72.17
step
  talk Mirren Longbeard##16851
  turnin Gaining Mirren's Trust##9563 |goto Hellfire Peninsula 23.97,72.35
step
  talk Mirren Longbeard##16851
  accept The Finest Down##9420 |goto Hellfire Peninsula 23.97,72.35
step
  note Mirren Longbeard in Hellfire Peninsula wants you to bring him 8 Kaliri Feathers from the various kaliri found in the Den of Haal'esh.
  kill Kaliri Matriarch##17035 |q 9420 |goto Hellfire Peninsula 25.72,75.23
step
  talk Sergeant Altumus##19309
  turnin The Path of Anguish##10142 |goto Hellfire Peninsula 61.72,60.95
step
  talk Marshal Isildor##19308
  turnin Journey to Honor Hold##10140 |goto Hellfire Peninsula 54.81,62.79
step
  talk Honor Guard Wesilow##16827
  turnin Looking to the Leadership##10057 |goto Hellfire Peninsula 50.88,60.35
step
  talk Dumphry##21209
  turnin Laying Waste to the Unwanted##10078 |goto Hellfire Peninsula 51.12,60.3
step
  talk Foreman Biggums##16837
  accept A Job for an Intelligent Man##9355 |goto Hellfire Peninsula 52.02,62.57
step
  talk Lieutenant Chadwick##17557
  accept Weaken the Ramparts##9575 |goto Hellfire Peninsula 56.73,66.34
step
  note Slay Watchkeeper Gargolmar, Omor the Unscarred and the drake, Nazan. Return Gargolmar's Hand, Omor's Hoof and Nazan's Head to Gunny at Honor Hold in Hellfire Peninsula.
  kill Watchkeeper Gargolmar##17306 |q 9575 |goto Hellfire Ramparts - Dungeon -1,-1
step
  talk Foreman Biggums##16837
  accept When This Mine's a-Rockin'##10079 |goto Hellfire Peninsula 52.02,62.57
step
  talk Sergeant Altumus##19309
  accept Expedition Point##10143 |goto Hellfire Peninsula 61.72,60.95
step
  talk Marshal Isildor##19308
  accept Force Commander Danath##10254 |goto Hellfire Peninsula 54.81,62.79
step
  note Kill 15 Marauding Crust Bursters and return to Foreman Biggums at Honor Hold.
  kill Marauding Crust Burster##16857 |q 9355 |goto Hellfire Peninsula 47.92,63.19
step
  note Kill 12 Gan'arg Sappers and return to Foreman Biggums.
  kill Gan'arg Sapper##18827 |q 10079 |goto Hellfire Peninsula 53.89,61.12
step
  talk "Screaming" Screed Luckheed##19367
  turnin Voidwalkers Gone Wild##9351 |goto Hellfire Peninsula 49.15,74.86
step
  talk Legassi##19344
  turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.24,74.84
step
  talk Legassi##19344
  accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.24,74.84
step
  note Bring 12 Plump Buzzard Wings to Legassi at the Zeppelin Crash.
  kill Bonestripper Buzzard##16972 |q 9356 |goto Hellfire Peninsula 61.75,67.82
step
  talk Forward Commander Kingston##19310
  turnin Expedition Point##10143 |goto Hellfire Peninsula 71.34,62.77
step
  talk Corporal Ironridge##21133
  turnin Cursed Talismans##10484 |goto Hellfire Peninsula 70.96,63.37
step
  talk Forward Commander Kingston##19310
  accept Disrupt Their Reinforcements##10144 |goto Hellfire Peninsula 71.34,62.77
step
  talk Corporal Ironridge##21133
  accept Warlord of the Bleeding Hollow##10485 |goto Hellfire Peninsula 70.96,63.37
step
  note Bring Warlord Morkh's Shattered Armor to Corporal Ironridge in Expedition Point.
  kill Warlord Morkh##16964 |q 10485 |goto Hellfire Peninsula 70.08,77.09
step
  note Defeat enemies around Portal Grimh and Portal Kaalez to gather Demonic Rune Stones.
  collect Portal Grimh##184414 |q 10144 |goto Hellfire Peninsula 71.46,55.16
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
  talk Anchorite Obadei##16834
  turnin Return to Obadei##9423 |goto Hellfire Peninsula 23.0,40.37
step
  talk Amaan the Wise##16796
  turnin Cleansing the Waters##9427 |goto Hellfire Peninsula 23.42,36.54
step
  talk Makuru##16833
  accept Makuru's Vengeance##9424 |goto Hellfire Peninsula 23.14,40.16
step
  note Makuru at the Temple of Telhamat in Hellfire Peninsula wants you to bring him 10 Mag'har Ancestral Beads.
  kill Mag'har Grunt##16846 |q 9424 |goto Hellfire Peninsula 35.79,30.43
step
  talk Thiah Redmane##16991
  turnin Testing the Antidote##10255 |goto Hellfire Peninsula 15.7,52.09
step
  talk Earthbinder Galandria Nightbreeze##19294
  turnin Natural Remedies##10351 |goto Hellfire Peninsula 15.96,51.57
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
  talk Mirren Longbeard##16851
  turnin The Finest Down##9420 |goto Hellfire Peninsula 23.97,72.35
step
  talk Foreman Biggums##16837
  turnin A Job for an Intelligent Man##9355 |goto Hellfire Peninsula 52.02,62.57
step
  talk Force Commander Danath Trollbane##16819
  turnin Force Commander Danath##10254 |goto Hellfire Peninsula 56.64,66.7
step
  talk Foreman Biggums##16837
  turnin When This Mine's a-Rockin'##10079 |goto Hellfire Peninsula 52.02,62.57
step
  talk Gunny##17479
  turnin Weaken the Ramparts##9575 |goto Hellfire Peninsula 56.4,66.66
step
  talk Foreman Biggums##16837
  accept The Mastermind##10099 |goto Hellfire Peninsula 52.02,62.57
step
  note Locate and kill Z'kral in the mines beneath Honor Hold, then report back to Foreman Biggums.
  kill Z'kral##18974 |q 10099 |goto Hellfire Peninsula 56.21,61.52
step
  talk Legassi##19344
  turnin Smooth as Butter##9356 |goto Hellfire Peninsula 49.24,74.84
step
  talk Forward Commander Kingston##19310
  turnin Disrupt Their Reinforcements##10144 |goto Hellfire Peninsula 71.34,62.77
step
  talk Corporal Ironridge##21133
  turnin Warlord of the Bleeding Hollow##10485 |goto Hellfire Peninsula 70.96,63.37
step
  talk Forward Commander Kingston##19310
  accept Mission: The Murketh and Shaadraz Gateways##10146 |goto Hellfire Peninsula 71.34,62.77
step
  talk Corporal Ironridge##21133
  accept Return to Honor Hold##10903 |goto Hellfire Peninsula 70.96,63.37
step
  note Speak with Wing Commander Dabir'ee, bomb Gateway Murketh and Gateway Shaadraz and then return to Forward Commander Kingston at Expedition Point.
  kill Legion Transporter: Alpha##19291 |q 10146 |goto Hellfire Peninsula 78.0,47.24
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
  talk Makuru##16833
  turnin Makuru's Vengeance##9424 |goto Hellfire Peninsula 23.14,40.16
step
  talk Anchorite Obadei##16834
  accept Atonement##9543 |goto Hellfire Peninsula 23.0,40.37
step
  talk Naladu##19361
  turnin Arzeth's Demise##10369 |goto Hellfire Peninsula 16.27,65.09
step
  talk Assistant Klatu##22430
  turnin Return to Honor Hold##10903 |goto Hellfire Peninsula 54.32,63.65
step
  talk Foreman Biggums##16837
  turnin The Mastermind##10099 |goto Hellfire Peninsula 52.02,62.57
step
  talk Assistant Klatu##22430
  accept Fel Spirits##10909 |goto Hellfire Peninsula 54.32,63.65
step
  note Klatu in Honor Hold wants you to use the Anchorite Relic at Gor'gaz Outpost southwest of Honor Hold, slay Shattered Hand Berserkers near the relic, and then slay 10 released Fel Spirits to avenge Colonel Jules.
  kill Fel Spirit##22454 |q 10909
step
  talk Assistant Klatu##22430
  accept Digging for Prayer Beads##10916 |goto Hellfire Peninsula 54.32,63.65
step
  note Recover the Draenei Prayer Beads and bring them to Assistant Klatu in Honor Hold.
  collect Fei Fei's Cache##185302 |q 10916 |goto Hellfire Peninsula 54.02,63.3
step
  talk Forward Commander Kingston##19310
  turnin Mission: The Murketh and Shaadraz Gateways##10146 |goto Hellfire Peninsula 71.34,62.77
step
  talk Forward Commander Kingston##19310
  accept Shatter Point##10340 |goto Hellfire Peninsula 71.34,62.77
step
  talk Runetog Wildhammer##20234
  turnin Shatter Point##10340 |goto Hellfire Peninsula 78.42,34.9
step
  talk Runetog Wildhammer##20234
  accept Wing Commander Gryphongar##10344 |goto Hellfire Peninsula 78.42,34.9
step
  talk Foreman Razelcraz##16915
  turnin Beneath Thrallmar##10630 |goto Hellfire Peninsula 51.37,30.52
step
  talk Amaan the Wise##16796
  turnin Atonement##9543 |goto Hellfire Peninsula 23.42,36.54
step
  talk Amaan the Wise##16796
  accept Sha'naar Relics##9430 |goto Hellfire Peninsula 23.42,36.54
step
  note Amaan the Wise at the Temple of Telhamat in Hellfire Peninsula wants you to travel to the Ruins of Sha'naar and retrieve 10 Sha'naar Relics.
  collect Sha'naar Relic##181637 |q 9430 |goto Hellfire Peninsula 13.8,59.53
step
  talk Assistant Klatu##22430
  turnin Fel Spirits##10909 |goto Hellfire Peninsula 54.32,63.65
step
  talk Assistant Klatu##22430
  turnin Digging for Prayer Beads##10916 |goto Hellfire Peninsula 54.32,63.65
step
  talk Assistant Klatu##22430
  accept The Exorcism of Colonel Jules##10935 |goto Hellfire Peninsula 54.32,63.65
step
  note Speak with Anchorite Barada. Use the prayer beads to help with the ritual, and then speak with Colonel Jules when he is saved. Finally, return to Assistant Klatu.
  kill Colonel Jules##22432 |q 10935 |goto Hellfire Peninsula 53.93,63.64
step
  talk Wing Commander Gryphongar##20232
  turnin Wing Commander Gryphongar##10344 |goto Hellfire Peninsula 79.34,33.86
step
  talk Wing Commander Gryphongar##20232
  accept Mission: The Abyssal Shelf##10163 |goto Hellfire Peninsula 79.34,33.86
step
  note Wing Commander Gryphongar at Shatter Point in Hellfire Peninsula has asked that you destroy 20 Gan'arg Peons, 5 Mo'arg Overseers and 5 Fel Cannons.
  kill Gan'arg Peon##19398 |q 10163 |goto Hellfire Peninsula 72.94,17.37
step
  talk Amaan the Wise##16796
  turnin Sha'naar Relics##9430 |goto Hellfire Peninsula 23.42,36.54
step
  talk Amaan the Wise##16796
  accept The Seer's Relic##9545 |goto Hellfire Peninsula 23.42,36.54
step
  note Amaan the Wise at the Temple of Telhamat in Hellfire Peninsula wants you to return to Sedai's Corpse, northeast of the Temple of Telhamat, and use the Seer's Relic at that location. Return to him after you've completed this task.
  get The Seer's Relic |q 9545 |goto Hellfire Peninsula 23.42,36.54
step
  talk Assistant Klatu##22430
  turnin The Exorcism of Colonel Jules##10935 |goto Hellfire Peninsula 54.32,63.65
step
  talk Assistant Klatu##22430
  accept Trollbane is Looking for You##10936 |goto Hellfire Peninsula 54.32,63.65
step
  talk Wing Commander Gryphongar##20232
  turnin Mission: The Abyssal Shelf##10163 |goto Hellfire Peninsula 79.34,33.86
step
  talk Wing Commander Gryphongar##20232
  accept Go to the Front##10382 |goto Hellfire Peninsula 79.34,33.86
step
  talk Field Marshal Brock##20793
  turnin Go to the Front##10382 |goto Hellfire Peninsula 68.29,28.55
step
  talk Field Marshal Brock##20793
  accept Disruption - Forge Camp: Mageddon##10394 |goto Hellfire Peninsula 68.29,28.55
step
  note Kill 10 Gan'arg Servants and Razorsaw at Forge Camp Mageddon and return to Forward Commander Brock at Honor Point.
  kill Gan'arg Servant##16947 |q 10394 |goto Hellfire Peninsula 58.98,31.64
step
  talk Amaan the Wise##16796
  turnin The Seer's Relic##9545 |goto Hellfire Peninsula 23.42,36.54
step
  talk Force Commander Danath Trollbane##16819
  turnin Trollbane is Looking for You##10936 |goto Hellfire Peninsula 56.64,66.7
step
  talk Force Commander Danath Trollbane##16819
  accept Drill the Drillmaster##10937 |goto Hellfire Peninsula 56.64,66.7
step
  note Force Commander Danath Trollbane has ordered you to kill Drillmaster Zurok with all due haste. Return to the force commander at Honor Hold in the Hellfire Peninsula once the drillmaster is dead.
  kill Drillmaster Zurok##19312 |q 10937 |goto Hellfire Peninsula 48.07,56.17
step
  talk Field Marshal Brock##20793
  turnin Disruption - Forge Camp: Mageddon##10394 |goto Hellfire Peninsula 68.29,28.55
step
  talk Field Marshal Brock##20793
  accept Enemy of my Enemy...##10396 |goto Hellfire Peninsula 68.29,28.55
step
  note Destroy 3 Fel Cannon MKIs in Forge Camp: Rage and return to Field Marshal Brock at Honor Point.
  kill Fel Cannon MKI##22461 |q 10396 |goto Hellfire Peninsula 59.62,32.56
step
  talk Force Commander Danath Trollbane##16819
  turnin Drill the Drillmaster##10937 |goto Hellfire Peninsula 56.64,66.7
step
  talk Field Marshal Brock##20793
  turnin Enemy of my Enemy...##10396 |goto Hellfire Peninsula 68.29,28.55
step
  talk Field Marshal Brock##20793
  accept Invasion Point: Annihilator##10397 |goto Hellfire Peninsula 68.29,28.55
step
  note Slay Arix'Amal. Take the Burning Legion Gate Key. Use the Burning Legion Gate Key on the Rune of Spite.
  kill Warbringer Arix'Amal##19298 |q 10397 |goto Hellfire Peninsula 53.09,26.47
step
  talk Field Marshal Brock##20793
  turnin Invasion Point: Annihilator##10397 |goto Hellfire Peninsula 68.29,28.55
step
  note {travel}Zangarmarsh
  goto Zangarmarsh 68.65,50.21
]])
