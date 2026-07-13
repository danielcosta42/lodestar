-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Barrens (14-35)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stonetalon Mountains (19-29)",
}, [[
step
  note {fp}Devrak
  goto The Barrens 51.5,30.34 |tip {vendor}
step
  talk Brewmaster Drohn##3292
  accept Chen's Empty Keg##821 |goto The Barrens 62.26,38.39
step
  note Bring 5 Savannah Lion Tusks, 5 Plainstrider Kidneys, and 1 Thunder Lizard Horn to Brewmaster Drohn in Ratchet.
  kill Savannah Patriarch##3241 |q 821 |goto The Barrens 44.5,15.78
step
  talk Mebok Mizzyrix##3446
  accept Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  note Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
  kill Sunscale Scytheclaw##3256 |q 865 |goto The Barrens 52.69,45.68
step
  talk Mebok Mizzyrix##3446
  accept Root Samples##866 |goto The Barrens 62.37,37.62
step
  note Bring 8 Root Samples to Mebok Mizzyrix in Ratchet.
  collect Peacebloom##3724 |q 866 |goto The Barrens 49.37,33.07
step
  talk Gazlowe##3391
  accept Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Captain Thalo'thas Brightsun##3339
  accept The Guns of Northwatch##891 |goto The Barrens 62.29,39.03
step
  talk Sputtervalve##3442
  accept Samophlange##894 |goto The Barrens 62.98,37.22
step
  talk Wharfmaster Dizzywig##3453
  accept Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  note Retrieve the Cats Eye Emerald from one of the Venture Co. Overseers or Enforcers for Wharfmaster Dizzywig at Ratchet.
  kill Venture Co. Enforcer##3283 |q 896 |goto The Barrens 60.81,3.81
step
  talk Crane Operator Bigglefuzz##3665
  accept Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  note Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
  kill Mad Magglish##3655 |q 959 |goto The Barrens 45.69,33.62
step
  talk Mebok Mizzyrix##3446
  accept Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  note Bring 15 Deepmoss Eggs to Mebok Mizzyrix in Ratchet.
  collect Deepmoss Eggs##19541 |q 1069 |goto Stonetalon Mountains 61.35,53.71
step
  talk Sputtervalve##3442
  accept Further Instructions##1095 |goto The Barrens 62.98,37.22
step
  talk Wharfmaster Dizzywig##3453
  accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
step
  talk Gazlowe##3391
  accept Goblin Sponsorship##1180 |goto The Barrens 62.68,36.23
step
  talk Mebok Mizzyrix##3446
  accept Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  note Grab a Crate with Holes.
  collect Blueleaf Tuber##20920 |q 1221 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Sputtervalve##3442
  accept Ziz Fizziks##1483 |goto The Barrens 62.98,37.22
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  kill Big Will##6238 |q 1719
step
  only Druid
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Druid
  note Bring Robes of the Arcana to Menara Voidrender in the Barrens.
  get Components for the Enchanted Gold Bloodrobe |q 1796 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  accept Fragments of the Orb of Orahil##1799 |goto The Barrens 62.51,35.45
step
  only Druid
  note Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
  kill Burning Blade Summoner##4668 |q 1799 |goto Desolace 79.47,77.84
step
  only Rogue
  talk Wrenix the Wretched##7161
  accept Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
  only Rogue
  note Bring the Southsea Treasure back to Wrenix the Wretched in Ratchet. Do not forget to get an E.C.A.C. and Thieves' Tools from Wrenix's Gizmotronic Apparatus. You will need both of these items to complete your mission.
  get Plundering the Plunderers |q 2381 |goto The Barrens 63.07,36.32
step
  talk Tinkerwiz##3494
  accept Goblin Engineering##3633 |goto The Barrens 62.67,36.31
step
  talk Tinkerwiz##3494
  accept Gnome Engineering##3637 |goto The Barrens 62.67,36.31
step
  talk Sputtervalve##3442
  accept Wenikee Boltbucket##3921 |goto The Barrens 62.98,37.22
step
  only Druid
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only Druid
  note Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.
  kill Hatefury Rogue##4670 |q 4783 |goto Desolace 74.45,18.85
step
  only Druid
  talk Acolyte Wytula##6254
  accept Shard of a Felhound##4962 |goto The Barrens 62.64,35.3
step
  only Druid
  note Take the Felhas Ruby and use it on one of the Felhounds found in Desolace. After successful, bring the Felhas Ruby and the Imprisoned Felhound Spirit back to Menara Voidrender in the Barrens.
  get Shard of a Felhound |q 4962 |goto The Barrens 62.64,35.3
step
  only Druid
  talk Acolyte Magaz##6252
  accept Shard of an Infernal##4963 |goto The Barrens 62.56,35.23
step
  only Druid
  note Take the Infus Emerald and use it on one of the Infernals found in Desolace. After successful, bring the Infus Emerald and the Imprisoned Infernal Spirit back to Menara Voidrender in the Barrens.
  get Shard of an Infernal |q 4963 |goto The Barrens 62.56,35.23
step
  only Druid
  talk Menara Voidrender##6266
  accept The Completed Orb of Dar'Orahil##4964 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  accept The Completed Orb of Noh'Orahil##4975 |goto The Barrens 62.51,35.45
step
  note Kill 12 Southsea Brigands and 6 Southsea Cannoneers for Gazlowe in Ratchet.
  kill Southsea Brigand##3381 |q 887 |goto The Barrens 63.83,46.24
step
  note Captain Thalo'thas Brightsun of Ratchet wants you to collect 10 Theramore Medals and slay Captain Fairmount, Cannoneer Whessan and Cannoneer Smythe.
  kill Captain Fairmount##3393 |q 891 |goto The Barrens 61.85,54.65
step
  talk Nixx Sprocketspring##8126
  turnin Goblin Engineering##3633 |goto Tanaris 52.48,27.33 |tip {turninat}Tanaris
step
  talk Sergra Darkthorn##3338
  accept Plainstrider Menace##844 |goto The Barrens 52.23,31.01
step
  note Collect 7 Plainstrider Beaks and return them to Sergra Darkthorn in the Crossroads.
  kill Greater Plainstrider##3244 |q 844 |goto The Barrens 51.31,24.31
step
  talk Apothecary Helbrim##3390
  accept Fungal Spores##848 |goto The Barrens 51.44,30.15
step
  note Bring 4 Fungal Spores to Apothecary Helbrim at the Crossroads.
  collect Laden Mushroom##3640 |q 848 |goto The Barrens 46.4,39.36
step
  talk Regthar Deathgate##3389
  accept Kolkar Leaders##850 |goto The Barrens 45.34,28.41
step
  note Bring Barak's Head to Regthar Deathgate, west of the Crossroads.
  kill Barak Kodobane##3394 |q 850 |goto The Barrens 42.8,23.52
step
  talk Regthar Deathgate##3389
  accept Centaur Bracers##855 |goto The Barrens 45.34,28.41
step
  note Bring 15 Centaur Bracers to Regthar Deathgate, west of the Crossroads.
  kill Kolkar Wrangler##3272 |q 855 |goto The Barrens 45.69,26.47
step
  talk Grub##3443
  accept Dig Rat Stew##862 |goto The Barrens 55.31,31.79
step
  note Bring 8 Dig Rats to Grub east of the Crossroads.
  kill Dig Rat##3444 |q 862 |goto The Barrens 49.27,84.47
step
  talk Darsok Swiftdagger##3449
  accept Harpy Raiders##867 |goto The Barrens 51.62,30.9
step
  note Collect 8 Witchwing talons.
  kill Witchwing Harpy##3276 |q 867 |goto The Barrens 40.87,16.76
step
  talk Korran##3428
  accept Egg Hunt##868 |goto The Barrens 51.07,29.63
step
  note Bring 12 Silithid Eggs and the Digging Claw to Korran at the Crossroads.
  kill Silithid Creeper##3250 |q 868 |goto The Barrens 44.9,70.21
step
  talk Gazrog##3464
  accept Raptor Thieves##869 |goto The Barrens 51.93,30.32
step
  note Bring 12 Raptor Heads to Gazrog at the Crossroads.
  kill Sunscale Lashtail##3254 |q 869 |goto The Barrens 51.29,23.16
step
  talk Tonga Runetotem##3448
  accept The Forgotten Pools##870 |goto The Barrens 52.26,31.93
step
  talk Thork##3429
  accept Disrupt the Attacks##871 |goto The Barrens 51.5,30.87
step
  talk Mankrik##3432
  accept Consumed by Hatred##899 |goto The Barrens 51.95,31.58
step
  note Bring 60 Bristleback Quilboar Tusks to Mankrik at the Crossroads.
  kill Bristleback Hunter##3258 |q 899 |goto The Barrens 44.1,52.16
step
  talk Korran##3428
  accept The Swarm Grows##1145 |goto The Barrens 51.07,29.63
step
  talk Korran##3428
  accept Parts of the Swarm##1184 |goto The Barrens 51.07,29.63
step
  talk Regthar Deathgate##3389
  accept The Kolkar of Desolace##1362 |goto The Barrens 45.34,28.41
step
  talk Nalpak##5767
  accept Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  note Nalpak in the Wailing Caverns wants 20 Deviate Hides.
  kill Deviate Coiler##3630 |q 1486 |goto The Barrens 46.16,34.73
step
  talk Ebru##5768
  accept Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  talk Apothecary Helbrim##3390
  accept Wharfmaster Dizzywig##1492 |goto The Barrens 51.44,30.15
step
  only Warlock
  talk Kil'hala##3484
  accept Nether-lace Garment##1946 |goto The Barrens 52.2,31.7
step
  talk Falla Sagewind##8418
  accept In Nightmares##3369 |goto The Barrens 48.18,32.78
step
  talk Mankrik##3432
  accept Lost in Battle##4921 |goto The Barrens 51.95,31.58
step
  only Tauren
  talk Jahan Hawkwing##3483
  accept A Bundle of Hides##6361 |goto The Barrens 51.21,29.05
step
  talk Zargh##3489
  accept Meats to Orgrimmar##6365 |goto The Barrens 52.62,29.84
step
  talk Thork##3429
  accept Report to Kadrak##6541 |goto The Barrens 51.5,30.87
step
  note Of the Razormane tribe, kill 8 Water Seekers, 8 Thornweavers and 3 Hunters, and then return to Thork in the Crossroads.
  kill Razormane Water Seeker##3267 |q 871 |goto The Barrens 55.03,26.65
step
  talk Kargal Battlescar##3337
  accept Crossroads Conscription##842 |goto The Barrens 62.26,19.38
step
  only Warrior
  talk Uzzek##5810
  accept Path of Defense##1498 |goto The Barrens 61.38,21.12
step
  only Warrior
  note Bring 5 Singed Scales to Uzzek at Far Watch Post in the Barrens.
  kill Thunder Lizard##3130 |q 1498 |goto Durotar 39.24,29.29
step
  talk Wizzlecrank's Shredder##3439
  accept Ignition##858 |goto The Barrens 56.52,7.45
step
  note Get the Ignition Key and bring it to Wizzlecrank.
  kill Supervisor Lugwizzle##3445 |q 858 |goto The Barrens 56.27,8.58
step
  talk Kadrak##8582
  turnin Report to Kadrak##6541 |goto The Barrens 48.12,5.42
step
  talk Wenikee Boltbucket##9316
  turnin Wenikee Boltbucket##3921 |goto The Barrens 49.05,11.17
step
  turnin Samophlange##894 |goto The Barrens 52.4,11.65
step
  talk Kadrak##8582
  accept Horde Presence##3514 |goto The Barrens 48.12,5.42
step
  talk Wenikee Boltbucket##9316
  accept Nugget Slugs##3922 |goto The Barrens 49.05,11.17
step
  note Bring 15 Nugget Slugs to Wenikee Boltbucket in the Barrens.
  collect Tool Bucket##161752 |q 3922 |goto The Barrens 56.3,8.57
step
  talk Kadrak##8582
  accept The Warsong Reports##6543 |goto The Barrens 48.12,5.42
step
  note Open the Bundle of Reports. Take the Warsong Reports to the Warsong Scout, Warsong Runner, and Warsong Outrider. Bring back the updates they give you to Kadrak at the northern watch tower in the barrens.
  get The Warsong Reports |q 6543 |goto The Barrens 48.12,5.42
step
  talk Kelm Hargunth##14754
  accept Outrider Basic Care Package##7866 |goto The Barrens 46.65,8.38
step
  talk Kelm Hargunth##14754
  accept Outrider Standard Care Package##7867 |goto The Barrens 46.65,8.38
step
  talk Seereth Stonebreak##4049
  accept Goblin Invaders##1062 |goto The Barrens 35.26,27.88
step
  talk Makaba Flathoof##11857
  accept Kaya's Alive##6401 |goto The Barrens 35.19,27.76
step
  talk Makaba Flathoof##11857
  accept Avenge My Village##6548 |goto The Barrens 35.19,27.76
step
  note Kill the leader of the Talon Den, Rynthariel the Keymaster.
  kill Rynthariel the Keymaster##8518 |q 3514 |goto Stonetalon Mountains 29.71,16.91
step
  note Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs.
  kill Deviate Ravager##3636 |q 1487 |goto Wailing Caverns - Dungeon -1,-1
step
  talk Tammra Windfield##11864
  turnin Kaya's Alive##6401 |goto Stonetalon Mountains 47.46,58.38 |tip {turninat}Stonetalon Mountains
step
  only Druid
  talk Tabetha##6546
  turnin Fragments of the Orb of Orahil##1799 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Ziz Fizziks##4201
  turnin Further Instructions##1095 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Ziz Fizziks##4201
  turnin Ziz Fizziks##1483 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Felgur Twocuts##5395
  turnin The Kolkar of Desolace##1362 |goto Desolace 56.19,59.57 |tip {turninat}Desolace
step
  only Tauren
  talk Kirge Sternhorn##3418
  accept Journey to the Crossroads##854 |goto The Barrens 44.88,58.61
step
  talk Mangletooth##3430
  accept Tribes at War##878 |goto The Barrens 44.55,59.26
step
  talk Tatternack Steelforge##3433
  accept Weapons of Choice##893 |goto The Barrens 45.1,57.68
step
  note Bring a Razormane Backstabber, a Charred Razormane Wand and a Razormane War Shield to Tatternack Steelforge at Camp Taurajo in the Barrens.
  kill Razormane Pathfinder##3456 |q 893 |goto The Barrens 44.18,80.51
step
  talk Jorn Skyseer##3387
  accept Melor Sends Word##1130 |goto The Barrens 44.86,59.14
step
  only Druid
  talk Doan Karhan##6247
  accept The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Druid
  note Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
  kill Twilight Acolyte##4809 |q 1740 |goto Blackfathom Deeps - Dungeon -1,-1
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Warrior
  note Bring 5 twitching antennae to Ruga Ragetotem at Camp Taurajo
  kill Silithid Creeper##3250 |q 1824 |goto The Barrens 44.9,70.21
step
  talk Jorn Skyseer##3387
  accept The Ashenvale Hunt##6382 |goto The Barrens 44.86,59.14
step
  note Find Mankrik's wife and then return to him in the Crossroads.
  kill Beaten Corpse##10668 |q 4921 |goto The Barrens 49.33,50.32
step
  note Kill 6 Bristleback Water Seekers, 12 Bristleback Thornweavers and 12 Bristleback Geomancers and return to Mangletooth at Camp Taurajo in the Barrens.
  kill Bristleback Water Seeker##3260 |q 878 |goto The Barrens 46.82,54.17
step
  talk Wharfmaster Lozgil##4631
  turnin Goblin Sponsorship##1180 |goto Stranglethorn Vale 26.35,73.56 |tip {turninat}Stranglethorn Vale
step
  talk Oglethorpe Obnoticus##7406
  turnin Gnome Engineering##3637 |goto Stranglethorn Vale 28.36,76.35 |tip {turninat}Stranglethorn Vale
step
  talk Gann Stonespire##3341
  accept Gann's Reclamation##843 |goto The Barrens 45.89,77.0
step
  talk Kravel Koalbeard##4452
  turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.27 |tip {turninat}Thousand Needles
step
  talk Melor Stonehoof##3441
  turnin Melor Sends Word##1130 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  talk Feegly the Exiled##3421
  accept The Tear of the Moons##857 |goto The Barrens 48.97,86.31
step
  note Feegly the Exiled wants you to retrieve for him the Tear of the Moons.
  collect General Twinbraid's Strongbox##3646 |q 857 |goto The Barrens 49.13,84.25
step
  note Kill 8 Grimtotem Ruffians and 6 Grimtotem Mercenaries, and then return to Makaba Flathoof near the southeastern edge of Stonetalon.
  kill Grimtotem Ruffian##11910 |q 6548 |goto Stonetalon Mountains 82.43,86.44
step
  note Gann Stonespire wants you to kill 15 Bael'dun Excavators and 5 Bael'dun Foremen.
  kill Bael'dun Excavator##3374 |q 843 |goto The Barrens 47.58,85.32
step
  talk Myriam Moonsinger##12866
  accept A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  talk Wharfmaster Dizzywig##3453
  turnin Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  only Druid
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  talk Belgrom Rockmaul##4485
  turnin Parts of the Swarm##1184 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin In Nightmares##3369 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Mebok Mizzyrix##3446
  turnin Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  only Druid
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  talk Brewmaster Drohn##3292
  turnin Chen's Empty Keg##821 |goto The Barrens 62.26,38.39
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16
step
  talk Crane Operator Bigglefuzz##3665
  turnin Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  talk Mebok Mizzyrix##3446
  turnin Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
  talk Wharfmaster Dizzywig##3453
  turnin Wharfmaster Dizzywig##1492 |goto The Barrens 63.35,38.45
step
  talk Mebok Mizzyrix##3446
  turnin Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  talk Mebok Mizzyrix##3446
  turnin Root Samples##866 |goto The Barrens 62.37,37.62
step
  only Druid
  talk Menara Voidrender##6266
  turnin Shard of a Felhound##4962 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  turnin Shard of an Infernal##4963 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  turnin The Completed Orb of Dar'Orahil##4964 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  turnin The Completed Orb of Noh'Orahil##4975 |goto The Barrens 62.51,35.45
step
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##6382 |goto Ashenvale 73.78,61.46 |tip {turninat}Ashenvale
step
  talk Gazlowe##3391
  turnin Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Belgrom Rockmaul##4485
  turnin The Swarm Grows##1145 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  talk Captain Thalo'thas Brightsun##3339
  turnin The Guns of Northwatch##891 |goto The Barrens 62.29,39.03
step
  talk Gazlowe##3391
  accept The Missing Shipment##890 |goto The Barrens 62.68,36.23
step
  talk Mebok Mizzyrix##3446
  accept Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  note Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet.
  kill Devouring Ectoplasm##3638 |q 1491 |goto The Barrens 47.91,33.38
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Windwatcher##1791 |goto The Barrens 68.62,49.16
step
  only Druid
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4781 |goto The Barrens 62.51,35.45
step
  only Druid
  note Bring a Gold Bar to Xizk Goodstitch in Stranglethorn Vale.
  collect Tattered Chest##2846 |q 4781 |goto Bloodmyst Isle 52.92,75.29
step
  only Druid
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  only Druid
  note Bring some Fine Gold Thread, 2 Smoldering Coals, and a Soul Shard to Menara Voidrender in the Barrens.
  get Components for the Enchanted Gold Bloodrobe |q 4784 |goto The Barrens 62.51,35.45
step
  note Kill 15 Venture Co. Loggers, then return to Seereth Stonebreak on the border of Stonetalon and the Barrens.
  kill Venture Co. Logger##3989 |q 1062 |goto Stonetalon Mountains 66.4,52.26
step
  talk Mankrik##3432
  turnin Consumed by Hatred##899 |goto The Barrens 51.95,31.58
step
  only Warlock
  talk Kil'hala##3484
  turnin Nether-lace Garment##1946 |goto The Barrens 52.2,31.7
step
  talk Mankrik##3432
  turnin Lost in Battle##4921 |goto The Barrens 51.95,31.58
step
  talk Sergra Darkthorn##3338
  turnin Crossroads Conscription##842 |goto The Barrens 52.23,31.01
step
  talk Sergra Darkthorn##3338
  turnin Plainstrider Menace##844 |goto The Barrens 52.23,31.01
step
  talk Nalpak##5767
  turnin Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  talk Ebru##5768
  turnin Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  talk Apothecary Helbrim##3390
  turnin Fungal Spores##848 |goto The Barrens 51.44,30.15
step
  talk Regthar Deathgate##3389
  turnin Kolkar Leaders##850 |goto The Barrens 45.34,28.41
step
  only Tauren
  talk Thork##3429
  turnin Journey to the Crossroads##854 |goto The Barrens 51.5,30.87
step
  talk Regthar Deathgate##3389
  turnin Centaur Bracers##855 |goto The Barrens 45.34,28.41
step
  only Tauren
  talk Devrak##3615
  turnin A Bundle of Hides##6361 |goto The Barrens 51.5,30.34
step
  talk Devrak##3615
  turnin Meats to Orgrimmar##6365 |goto The Barrens 51.5,30.34
step
  talk Grub##3443
  turnin Dig Rat Stew##862 |goto The Barrens 55.31,31.79
step
  talk Darsok Swiftdagger##3449
  turnin Harpy Raiders##867 |goto The Barrens 51.62,30.9
step
  talk Korran##3428
  turnin Egg Hunt##868 |goto The Barrens 51.07,29.63
step
  talk Gazrog##3464
  turnin Raptor Thieves##869 |goto The Barrens 51.93,30.32
step
  talk Tonga Runetotem##3448
  turnin The Forgotten Pools##870 |goto The Barrens 52.26,31.93
step
  talk Thork##3429
  turnin Disrupt the Attacks##871 |goto The Barrens 51.5,30.87
step
  talk Sergra Darkthorn##3338
  accept The Zhevra##845 |goto The Barrens 52.23,31.01
step
  note Slay Zhevra Runners to collect 4 Zhevra Hooves for Sergra Darkthorn in the Crossroads.
  kill Zhevra Runner##3242 |q 845 |goto The Barrens 52.22,28.84
step
  talk Regthar Deathgate##3389
  accept Verog the Dervish##851 |goto The Barrens 45.34,28.41
step
  note Bring Verog's Head to Regthar Deathgate, west of the Crossroads.
  get Verog the Dervish |q 851 |goto The Barrens 45.34,28.41
step
  talk Apothecary Helbrim##3390
  accept Apothecary Zamah##853 |goto The Barrens 51.44,30.15
step
  talk Thork##3429
  accept The Disruption Ends##872 |goto The Barrens 51.5,30.87
step
  talk Darsok Swiftdagger##3449
  accept Harpy Lieutenants##875 |goto The Barrens 51.62,30.9
step
  note Collect 6 Harpy Lieutenant Rings from Witchwing Slayers and return them to Darsok Swiftdagger at the Crossroads.
  kill Witchwing Slayer##3278 |q 875 |goto The Barrens 38.82,15.11
step
  talk Tonga Runetotem##3448
  accept The Stagnant Oasis##877 |goto The Barrens 52.26,31.93
step
  talk Gazrog##3464
  accept Stolen Silver##3281 |goto The Barrens 51.93,30.32
step
  note Bring the Stolen Silver to Gazrog in the Crossroads.
  collect Stolen Silver##147557 |q 3281 |goto The Barrens 58.04,53.87
step
  talk Thork##3429
  accept Supplies for the Crossroads##5041 |goto The Barrens 51.5,30.87
step
  note Find and return Crossroads' Supply Crates to Thork in the Barrens.
  collect Crossroads' Supply Crates##175708 |q 5041 |goto The Barrens 59.18,25.86
step
  only Tauren
  talk Devrak##3615
  accept Ride to Thunder Bluff##6362 |goto The Barrens 51.5,30.34
step
  talk Devrak##3615
  accept Ride to Orgrimmar##6384 |goto The Barrens 51.5,30.34
step
  only Warrior
  talk Uzzek##5810
  turnin Path of Defense##1498 |goto The Barrens 61.38,21.12
step
  only Warrior
  talk Uzzek##5810
  accept Thun'grim Firegaze##1502 |goto The Barrens 61.38,21.12
step
  note Kill 8 Razormane Geomancers, 8 Razormane Defenders, and Kreenig Snarlsnout.
  kill Razormane Geomancer##3269 |q 872 |goto The Barrens 57.47,24.6
step
  talk Wizzlecrank's Shredder##3439
  turnin Ignition##858 |goto The Barrens 56.52,7.45
step
  talk Kadrak##8582
  turnin The Warsong Reports##6543 |goto The Barrens 48.12,5.42
step
  talk Kadrak##8582
  turnin Horde Presence##3514 |goto The Barrens 48.12,5.42
step
  talk Kelm Hargunth##14754
  turnin Outrider Basic Care Package##7866 |goto The Barrens 46.65,8.38
step
  talk Kelm Hargunth##14754
  turnin Outrider Standard Care Package##7867 |goto The Barrens 46.65,8.38
step
  talk Wenikee Boltbucket##9316
  turnin Nugget Slugs##3922 |goto The Barrens 49.05,11.17
step
  talk Wenikee Boltbucket##9316
  accept Rilli Greasygob##3923 |goto The Barrens 49.05,11.17
step
  talk Makaba Flathoof##11857
  turnin Avenge My Village##6548 |goto The Barrens 35.19,27.76
step
  talk Seereth Stonebreak##4049
  turnin Goblin Invaders##1062 |goto The Barrens 35.26,27.88
step
  talk Apothecary Zamah##3419
  turnin Apothecary Zamah##853 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  talk Seereth Stonebreak##4049
  accept The Elder Crone##1063 |goto The Barrens 35.26,27.88
step
  talk Seereth Stonebreak##4049
  accept Shredding Machines##1068 |goto The Barrens 35.26,27.88
step
  talk Makaba Flathoof##11857
  accept Kill Grundig Darkcloud##6629 |goto The Barrens 35.19,27.76
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Druid
  talk Doan Karhan##6247
  turnin The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Tauren
  talk Ahanu##8359
  turnin Ride to Thunder Bluff##6362 |goto Thunder Bluff 45.77,55.84 |tip {turninat}Thunder Bluff
step
  talk Mangletooth##3430
  turnin Tribes at War##878 |goto The Barrens 44.55,59.26
step
  talk Tatternack Steelforge##3433
  turnin Weapons of Choice##893 |goto The Barrens 45.1,57.68
step
  talk Tatternack Steelforge##3433
  accept A New Ore Sample##1153 |goto The Barrens 45.1,57.68
step
  note Find an Unrefined Ore Sample on a Gravelsnout Digger or Surveyor and bring it to Tatternack Steelforge at Camp Taurajo in the Barrens.
  kill Gravelsnout Digger##4113 |q 1153 |goto Thousand Needles 12.41,21.31
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Speak with Thun'grim##1825 |goto The Barrens 44.67,59.42
step
  talk Mangletooth##3430
  accept Blood Shards of Agamaggan##5052 |goto The Barrens 44.55,59.26
step
  note Bring a Blood Shard to Mangletooth in Camp Taurajo in the Barrens.
  kill Bristleback Hunter##3258 |q 5052 |goto The Barrens 44.1,52.16
step
  only Druid
  talk Xizk Goodstitch##2670
  turnin Components for the Enchanted Gold Bloodrobe##4781 |goto Stranglethorn Vale 28.71,76.89 |tip {turninat}Stranglethorn Vale
step
  talk Gann Stonespire##3341
  turnin Gann's Reclamation##843 |goto The Barrens 45.89,77.0
step
  talk Innkeeper Gryshka##6929
  turnin Ride to Orgrimmar##6384 |goto Orgrimmar 54.1,68.41 |tip {turninat}Orgrimmar
step
  talk Gann Stonespire##3341
  accept Revenge of Gann##846 |goto The Barrens 45.89,77.0
step
  note Gann Stonespire wants you to bring him 6 vials of Nitroglycerin, 6 bundles of Wood Pulp, and 6 samples of Sodium Nitrate.
  kill Bael'dun Soldier##3376 |q 846 |goto The Barrens 49.23,84.13
step
  talk Feegly the Exiled##3421
  turnin The Tear of the Moons##857 |goto The Barrens 48.97,86.31
step
  note Kill Grundig Darkcloud and 6 Grimtotem Brutes, and return to Makaba Flathoof near the southeastern edge of Stonetalon.
  kill Grundig Darkcloud##11858 |q 6629 |goto Stonetalon Mountains 73.65,86.12
step
  note Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
  kill Razorfen Battleguard##7873 |q 6626 |goto The Barrens 47.48,90.1
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  talk Magatha Grimtotem##4046
  turnin The Elder Crone##1063 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  only Druid
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  talk Mebok Mizzyrix##3446
  turnin Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  talk Wharfmaster Dizzywig##3453
  turnin The Missing Shipment##890 |goto The Barrens 63.35,38.45
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Windwatcher##1791 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  talk Wharfmaster Dizzywig##3453
  accept The Missing Shipment##892 |goto The Barrens 63.35,38.45
step
  only Druid
  talk Menara Voidrender##6266
  accept The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  note Kill the shredders XT:4 and XT:9, then return to Seereth Stonebreak at the border of the Stonetalon Mountains and the Barrens.
  kill XT:4##4073 |q 1068 |goto Stonetalon Mountains 64.14,46.38
step
  note Return to Tonga at The Crossroads, after investigating the Stagnant Oasis.
  collect Bubbling Fissure##3737 |q 877 |goto The Barrens 55.61,42.75
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Speak with Thun'grim##1825 |goto The Barrens 57.23,30.34
step
  talk Thork##3429
  turnin Supplies for the Crossroads##5041 |goto The Barrens 51.5,30.87
step
  talk Sergra Darkthorn##3338
  turnin The Zhevra##845 |goto The Barrens 52.23,31.01
step
  talk Gazrog##3464
  turnin Stolen Silver##3281 |goto The Barrens 51.93,30.32
step
  talk Regthar Deathgate##3389
  turnin Verog the Dervish##851 |goto The Barrens 45.34,28.41
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Thun'grim Firegaze##1502 |goto The Barrens 57.23,30.34
step
  talk Thork##3429
  turnin The Disruption Ends##872 |goto The Barrens 51.5,30.87
step
  talk Darsok Swiftdagger##3449
  turnin Harpy Lieutenants##875 |goto The Barrens 51.62,30.9
step
  talk Tonga Runetotem##3448
  turnin The Stagnant Oasis##877 |goto The Barrens 52.26,31.93
step
  talk Regthar Deathgate##3389
  accept Hezrul Bloodmark##852 |goto The Barrens 45.34,28.41
step
  note Bring Hezrul's Head to Regthar Deathgate, west of the Crossroads.
  kill Hezrul Bloodmark##3396 |q 852 |goto The Barrens 46.04,41.14
step
  talk Darsok Swiftdagger##3449
  accept Serena Bloodfeather##876 |goto The Barrens 51.62,30.9
step
  note Slay Serena Bloodfeather and return her head to Darsok Swiftdagger at the Crossroads.
  kill Serena Bloodfeather##3452 |q 876 |goto The Barrens 39.16,12.17
step
  talk Tonga Runetotem##3448
  accept Altered Beings##880 |goto The Barrens 52.26,31.93
step
  note Bring 8 Altered Snapjaw Shells to Tonga Runetotem at the Crossroads.
  kill Oasis Snapjaw##3461 |q 880 |goto The Barrens 47.63,40.22
step
  talk Sergra Darkthorn##3338
  accept Prowlers of the Barrens##903 |goto The Barrens 52.23,31.01
step
  note Collect 7 Prowler Claws from Savannah Prowlers for Sergra Darkthorn in the Crossroads.
  kill Savannah Prowler##3425 |q 903 |goto The Barrens 44.16,24.32
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Forged Steel##1503 |goto The Barrens 57.23,30.34
step
  only Warrior
  note Bring the Forged Steel Bars to Thun'grim Firegaze in the Barrens.
  collect Stolen Iron Chest##58369 |q 1503 |goto The Barrens 55.05,26.65
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  only Warrior
  note Bring to Thun'grim Firegaze 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars and a Vial of Phlogiston.
  kill Windshear Digger##3999 |q 1838 |goto Stonetalon Mountains 72.84,60.76
step
  talk Rilli Greasygob##9317
  turnin Rilli Greasygob##3923 |goto Orgrimmar 76.52,24.41 |tip {turninat}Orgrimmar
step
  talk Seereth Stonebreak##4049
  turnin Shredding Machines##1068 |goto The Barrens 35.26,27.88
step
  talk Makaba Flathoof##11857
  turnin Kill Grundig Darkcloud##6629 |goto The Barrens 35.19,27.76
step
  talk Tatternack Steelforge##3433
  turnin A New Ore Sample##1153 |goto The Barrens 45.1,57.68
step
  talk Mangletooth##3430
  turnin Blood Shards of Agamaggan##5052 |goto The Barrens 44.55,59.26
step
  talk Mangletooth##3430
  accept Betrayal from Within##879 |goto The Barrens 44.55,59.26
step
  note Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
  kill Kuz##3436 |q 879 |goto The Barrens 45.12,80.07
step
  talk Gann Stonespire##3341
  turnin Revenge of Gann##846 |goto The Barrens 45.89,77.0
step
  talk Gann Stonespire##3341
  accept Revenge of Gann##849 |goto The Barrens 45.89,77.0
step
  note Destroy the flying machine at Bael Modan and return to Gann Stonespire.
  collect Bael Modan Flying Machine##3644 |q 849 |goto The Barrens 46.97,85.63
step
  only Druid
  talk Menara Voidrender##6266
  turnin The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  talk Gazlowe##3391
  turnin The Missing Shipment##892 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note Retrieve the Shipment of Boots and Telescopic Lens for Gazlowe in Ratchet.
  collect Drizzlik's Emporium##3767 |q 888 |goto The Barrens 62.63,49.63
step
  talk Sergra Darkthorn##3338
  turnin Prowlers of the Barrens##903 |goto The Barrens 52.23,31.01
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  talk Regthar Deathgate##3389
  turnin Hezrul Bloodmark##852 |goto The Barrens 45.34,28.41
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Forged Steel##1503 |goto The Barrens 57.23,30.34
step
  talk Darsok Swiftdagger##3449
  turnin Serena Bloodfeather##876 |goto The Barrens 51.62,30.9
step
  talk Tonga Runetotem##3448
  turnin Altered Beings##880 |goto The Barrens 52.26,31.93
step
  talk Sergra Darkthorn##3338
  accept Echeyakee##881 |goto The Barrens 52.23,31.01
step
  note Bring Echeyakee's Hide to Sergra Darkthorn at the Crossroads.
  get Echeyakee |q 881 |goto The Barrens 52.23,31.01
step
  talk Darsok Swiftdagger##3449
  accept Letter to Jin'Zil##1060 |goto The Barrens 51.62,30.9
step
  talk Tonga Runetotem##3448
  accept Hamuul Runetotem##1489 |goto The Barrens 52.26,31.93
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Ula'elek and the Brutal Gauntlets##1839 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Orm Stonehoof and the Brutal Helm##1840 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Velora Nitely and the Brutal Legguards##1841 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Brutal Hauberk##1848 |goto The Barrens 57.23,30.34
step
  talk Tonga Runetotem##3448
  accept Mura Runetotem##3301 |goto The Barrens 52.26,31.93
step
  talk Regthar Deathgate##3389
  accept Counterattack!##4021 |goto The Barrens 45.34,28.41
step
  note Bring a Piece of Krom'zar's Banner to Regthar Deathgate, west of the Crossroads.
  get Counterattack! |q 4021 |goto The Barrens 45.34,28.41
step
  only Warrior
  talk Orm Stonehoof##6410
  turnin Orm Stonehoof and the Brutal Helm##1840 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  talk Mangletooth##3430
  turnin Betrayal from Within##879 |goto The Barrens 44.55,59.26
step
  talk Mangletooth##3430
  accept Betrayal from Within##906 |goto The Barrens 44.55,59.26
step
  only Warrior
  talk Ula'elek##6408
  turnin Ula'elek and the Brutal Gauntlets##1839 |goto Durotar 56.31,74.33 |tip {turninat}Durotar
step
  talk Gann Stonespire##3341
  turnin Revenge of Gann##849 |goto The Barrens 45.89,77.0
step
  talk Witch Doctor Jin'Zil##3995
  turnin Letter to Jin'Zil##1060 |goto Stonetalon Mountains 74.54,97.94 |tip {turninat}Stonetalon Mountains
step
  only Warrior
  talk Velora Nitely##6411
  turnin Velora Nitely and the Brutal Legguards##1841 |goto Undercity 62.14,39.14 |tip {turninat}Undercity
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin Hamuul Runetotem##1489 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Gazlowe##3391
  turnin Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  talk Thork##3429
  turnin Betrayal from Within##906 |goto The Barrens 51.5,30.87
step
  talk Regthar Deathgate##3389
  turnin Counterattack!##4021 |goto The Barrens 45.34,28.41
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Brutal Hauberk##1848 |goto The Barrens 57.23,30.34
step
  talk Mura Runetotem##8385
  turnin Mura Runetotem##3301 |goto Silverpine Forest 42.91,41.99 |tip {turninat}Silverpine Forest
step
  talk Sergra Darkthorn##3338
  turnin Echeyakee##881 |goto The Barrens 52.23,31.01
step
  talk Sergra Darkthorn##3338
  accept The Angry Scytheclaws##905 |goto The Barrens 52.23,31.01
step
  note Kill Sunscale raptors and collect their feathers. Use the feathers on the 3 Scytheclaw nests. Return to Sergra Darkthorn in the Crossroads.
  collect Blue Raptor Nest##6907 |q 905 |goto The Barrens 52.6,46.11
step
  talk Sergra Darkthorn##3338
  turnin The Angry Scytheclaws##905 |goto The Barrens 52.23,31.01
step
  talk Sergra Darkthorn##3338
  accept Jorn Skyseer##3261 |goto The Barrens 52.23,31.01
step
  talk Jorn Skyseer##3387
  turnin Jorn Skyseer##3261 |goto The Barrens 44.86,59.14
step
  talk Jorn Skyseer##3387
  accept Ishamuhale##882 |goto The Barrens 44.86,59.14
step
  note Bring Ishamuhale's Fang to Jorn at Camp Taurajo.
  get Ishamuhale |q 882 |goto The Barrens 44.86,59.14
step
  talk Jorn Skyseer##3387
  turnin Ishamuhale##882 |goto The Barrens 44.86,59.14
step
  talk Jorn Skyseer##3387
  accept Enraged Thunder Lizards##907 |goto The Barrens 44.86,59.14
step
  note Bring 3 Thunder Lizard Blood to Jorn Skyseer at Camp Taurajo.
  kill Stormhide##3238 |q 907 |goto The Barrens 47.14,76.4
step
  talk Jorn Skyseer##3387
  turnin Enraged Thunder Lizards##907 |goto The Barrens 44.86,59.14
step
  talk Jorn Skyseer##3387
  accept Cry of the Thunderhawk##913 |goto The Barrens 44.86,59.14
step
  note Find and slay a Thunderhawk, return its wings to Jorn Skyseer at Camp Taurajo.
  kill Thunderhawk Hatchling##3247 |q 913 |goto The Barrens 46.71,50.95
step
  talk Jorn Skyseer##3387
  turnin Cry of the Thunderhawk##913 |goto The Barrens 44.86,59.14
step
  talk Jorn Skyseer##3387
  accept Mahren Skyseer##874 |goto The Barrens 44.86,59.14
step
  talk Mahren Skyseer##3388
  turnin Mahren Skyseer##874 |goto The Barrens 65.84,43.86
step
  talk Mahren Skyseer##3388
  accept Isha Awak##873 |goto The Barrens 65.84,43.86
step
  talk Mahren Skyseer##3388
  turnin Isha Awak##873 |goto The Barrens 65.84,43.86
step
  note {travel}Stonetalon Mountains
  goto Stonetalon Mountains 71.25,95.02
]])
