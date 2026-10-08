-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Barrens (13-20)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stonetalon Mountains (19-26)",
}, [[
step
  only completed(861)
  talk Melor Stonehoof##3441
  accept Sergra Darkthorn##860 |goto Thunder Bluff 61.54,80.92
step
  talk Arch Druid Hamuul Runetotem##5769
  accept The Barrens Oases##886 |goto Thunder Bluff 78.62,28.56
step
  only Shaman not completed(1523) not completed(2983) not completed(2984) not haveq(1523) not haveq(2983) not haveq(2984)
  talk Searn Firewarder##5892
  accept Call of Fire##1522 |goto Orgrimmar 37.96,37.73
step
  only completed(829)
  talk Neeru Fireblade##3216
  accept Ak'Zeloth##809 |goto Orgrimmar 49.47,50.59
step
  only not Undead not Tauren not Skyborne Rogue
  talk Therzok##6446
  accept The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55
step
  only Skyborne completed(95350)
  talk Thrall##4949
  accept Journey to the Crossroads##98024 |goto Orgrimmar 31.73,37.82
step
  only completed(1359)
  talk Apothecary Zinge##5204
  accept Sample for Helbrim##1358 |goto Undercity 50.14,67.97
step
  only completed(5728)
  talk Thrall##4949
  accept Hidden Enemies##5729 |goto Orgrimmar 31.73,37.82
step
  talk Kor'geld##3348
  accept Yelmak's Medley##97242 |goto Orgrimmar 56.05,34.12
step
  talk Thatog##268701
  accept Meal Appeal##97246 |goto Orgrimmar 55.69,72.08
step
  talk Borstan##3368
  accept Favorite Food##97249 |goto Orgrimmar 57.2,53.32
step
  talk Yelmak##3347
  accept Whuut's the Rush##97275 |goto Orgrimmar 56.84,33.03
step
  talk Thra##268684
  accept Rocks to Rests##97326 |goto Orgrimmar 37,28.81
step
  only completed(861)
  talk Sergra Darkthorn##3338
  turnin Sergra Darkthorn##860 |goto The Barrens 52.23,31.01
step
  talk Tonga Runetotem##3448
  turnin The Barrens Oases##886 |goto The Barrens 52.26,31.93
step
  only completed(1359)
  talk Apothecary Helbrim##3390
  turnin Sample for Helbrim##1358 |goto The Barrens 51.44,30.15
step
  only Skyborne completed(95350)
  talk Thork##3429
  turnin Journey to the Crossroads##98024 |goto The Barrens 51.5,30.87
step
  talk Apothecary Helbrim##3390
  accept Wharfmaster Dizzywig##1492 |goto The Barrens 51.44,30.15
step
  talk Thork##3429
  accept Disrupt the Attacks##871 |goto The Barrens 51.5,30.87
step
  only Tauren
  talk Jahan Hawkwing##3483
  accept A Bundle of Hides##6361 |goto The Barrens 51.21,29.05
step
  only not Undead not Tauren not Skyborne
  talk Zargh##3489
  accept Meats to Orgrimmar##6365 |goto The Barrens 52.62,29.84
step
  talk Gazrog##3464
  accept Raptor Thieves##869 |goto The Barrens 51.93,30.32
step
  talk Tonga Runetotem##3448
  accept The Forgotten Pools##870 |goto The Barrens 52.26,31.93
step
  talk Regthar Deathgate##3389
  accept Centaur Bracers##855 |goto The Barrens 45.34,28.41
step
  talk Thork##3429
  accept Supplies for the Crossroads##5041 |goto The Barrens 51.5,30.87
step
  collect Chen's Empty Keg##3238 |goto The Barrens 55.7,27.3 |tip Loot the quest item here — it starts the quest.
  accept Chen's Empty Keg##819 |goto The Barrens 55.7,27.3
step
  talk Apothecary Helbrim##3390
  accept Fungal Spores##848 |goto The Barrens 51.44,30.15
step
  talk Darsok Swiftdagger##3449
  accept Harpy Raiders##867 |goto The Barrens 51.62,30.9
step
  talk Regthar Deathgate##3389
  accept Kolkar Leaders##850 |goto The Barrens 45.34,28.41
step
  only Tauren Druid completed(6127)
  talk Tonga Runetotem##3448
  accept Gathering the Cure##6128 |goto The Barrens 52.26,31.93
step
  note Bring 15 Centaur Bracers to Regthar Deathgate, west of the Crossroads.
  collect 15 Centaur Bracers##5030 |q 855 |goto The Barrens 45.7,25.99 |tip {dropsfrom}Kolkar Wrangler, Kolkar Stormer, Kolkar Pack Runner
step
  note Bring 12 Raptor Heads to Gazrog at the Crossroads.
  collect 12 Raptor Head##5062 |q 869 |goto The Barrens 51.29,22.62 |tip {dropsfrom}Sunscale Lashtail, Sunscale Screecher, Sunscale Scytheclaw
step
  note Of the Razormane tribe, kill 8 Water Seekers, 8 Thornweavers and 3 Hunters, and then return to Thork in the Crossroads.
  kill Razormane Water Seeker##3267 |q 871 |goto The Barrens 54.94,26.74
step
  talk Regthar Deathgate##3389
  turnin Centaur Bracers##855 |goto The Barrens 45.34,28.41
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
  only Tauren
  talk Devrak##3615
  turnin A Bundle of Hides##6361 |goto The Barrens 51.5,30.34
step
  only not Undead not Tauren not Skyborne
  talk Devrak##3615
  turnin Meats to Orgrimmar##6365 |goto The Barrens 51.5,30.34
step
  only Tauren
  talk Devrak##3615
  accept Ride to Thunder Bluff##6362 |goto The Barrens 51.5,30.34
step
  only not Undead not Tauren not Skyborne
  talk Devrak##3615
  accept Ride to Orgrimmar##6384 |goto The Barrens 51.5,30.34
step
  talk Thork##3429
  accept The Disruption Ends##872 |goto The Barrens 51.5,30.87
step
  talk Tonga Runetotem##3448
  accept The Stagnant Oasis##877 |goto The Barrens 52.26,31.93
step
  note Bring 4 Fungal Spores to Apothecary Helbrim at the Crossroads.
  collect 4 Fungal Spores##5012 |q 848 |goto The Barrens 46.68,38.76 |tip {dropsfrom}Laden Mushroom
step
  note Bring Barak's Head to Regthar Deathgate, west of the Crossroads.
  collect Barak's Head##5022 |q 850 |goto The Barrens 42.8,23.52 |tip {dropsfrom}Barak Kodobane
step
  note Collect 8 Witchwing talons.
  collect 8 Witchwing Talon##5064 |q 867 |goto The Barrens 40.7,16.8 |tip {dropsfrom}Witchwing Harpy, Witchwing Roguefeather, Witchwing Slayer
step
  only completed(829)
  talk Ak'Zeloth##3521
  turnin Ak'Zeloth##809 |goto The Barrens 62.34,20.07
step
  only Shaman not completed(1523) not completed(2983) not completed(2984) not haveq(1523) not haveq(2983) not haveq(2984)
  talk Kranal Fiss##5907
  turnin Call of Fire##1522 |goto The Barrens 56.03,19.89
step
  only completed(840)
  talk Kargal Battlescar##3337
  accept Crossroads Conscription##842 |goto The Barrens 62.26,19.38
step
  only Warrior not completed(1819) not haveq(1819)
  talk Uzzek##5810
  accept Path of Defense##1498 |goto The Barrens 61.38,21.12
step
  only Shaman
  talk Kranal Fiss##5907
  accept Call of Fire##1524 |goto The Barrens 56.03,19.89
step
  only completed(829)
  talk Ak'Zeloth##3521
  accept The Demon Seed##924 |goto The Barrens 62.34,20.07
step
  note Kill 8 Razormane Geomancers, 8 Razormane Defenders, and Kreenig Snarlsnout.
  kill Razormane Geomancer##3269 |q 872 |goto The Barrens 57.32,24.6
step
  note Find and return Crossroads' Supply Crates to Thork in the Barrens.
  collect Crossroads' Supply Crates##12708 |q 5041 |goto The Barrens 58.55,25.86
step
  only Tauren Druid completed(6127)
  note Bring 5 Earthroot and 5 Kodo Horns to Tonga Runetotem at the Crossroads so he may make a curative salve.
  collect 5 Earthroot##2449 |q 6128 |goto The Barrens 61.54,28.08 |tip {dropsfrom}Lasher Sproutling, Wrathvine, Earthroot
step
  talk Brewmaster Drohn##3292
  turnin Chen's Empty Keg##819 |goto The Barrens 62.26,38.39
step
  talk Wharfmaster Dizzywig##3453
  turnin Wharfmaster Dizzywig##1492 |goto The Barrens 63.35,38.45
step
  talk Gazlowe##3391
  accept Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Sputtervalve##3442
  accept Samophlange##894 |goto The Barrens 62.98,37.22
step
  talk Wrenix the Wretched##7161
  accept Parts and Pieces##97253 |goto The Barrens 63.07,36.32
step
  talk Brewmaster Drohn##3292
  accept Chen's Empty Keg##821 |goto The Barrens 62.26,38.39
step
  click WANTED##3972
  accept WANTED: Baron Longshore##895 |goto The Barrens 62.59,37.47
step
  note Return to Tonga at The Crossroads, after investigating the Stagnant Oasis.
  collect Bubbling Fissure##3737 |q 877 |goto The Barrens 55.61,42.75
step
  note Kill 12 Southsea Brigands and 6 Southsea Cannoneers for Gazlowe in Ratchet.
  kill Southsea Brigand##3381 |q 887 |goto The Barrens 63.67,46.13
step
  only not Undead not Tauren not Skyborne Rogue
  note Kill Tazan and bring his Satchel to Therzok in the Cleft of Shadow in Orgrimmar.
  collect Tazan's Satchel##7209 |q 1963 |goto The Barrens 63.11,44.29 |tip {dropsfrom}Tazan
step
  note Collect 5 Handfuls of Complicated Parts from the upper pirate camp south of Ratchet, then return to Wrenix the Wretched in Ratchet.
  collect 5 Handful of Complicated Parts##277331 |q 97253 |goto The Barrens 62,45.9 |tip {dropsfrom}Pile of Complicated Parts
step
  talk Gazlowe##3391
  turnin Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Wrenix the Wretched##7161
  turnin Parts and Pieces##97253 |goto The Barrens 63.07,36.32
step
  talk Gazlowe##3391
  accept The Missing Shipment##890 |goto The Barrens 62.68,36.23
step
  talk Wharfmaster Dizzywig##3453
  turnin The Missing Shipment##890 |goto The Barrens 63.35,38.45
step
  talk Wharfmaster Dizzywig##3453
  accept The Missing Shipment##892 |goto The Barrens 63.35,38.45
step
  talk Gazlowe##3391
  turnin The Missing Shipment##892 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note Retrieve the Shipment of Boots and Telescopic Lens for Gazlowe in Ratchet.
  collect Shipment of Boots##5076 |q 888 |goto The Barrens 62.63,49.63 |tip {dropsfrom}Drizzlik's Emporium
step
  note Bring the head of Baron Longshore to Gazlowe in Ratchet.
  collect Baron Longshore's Head##5084 |q 895 |goto The Barrens 63.3,49 |tip {dropsfrom}Baron Longshore
step
  note {fp}Omusa Thunderhorn
  goto The Barrens 44.45,59.15 |tip {vendor}
step
  only Tauren not completed(844) not haveq(844)
  talk Kirge Sternhorn##3418
  accept Journey to the Crossroads##854 |goto The Barrens 44.88,58.61
step
  only completed(840)
  talk Sergra Darkthorn##3338
  turnin Crossroads Conscription##842 |goto The Barrens 52.23,31.01
step
  talk Apothecary Helbrim##3390
  turnin Fungal Spores##848 |goto The Barrens 51.44,30.15
step
  talk Regthar Deathgate##3389
  turnin Kolkar Leaders##850 |goto The Barrens 45.34,28.41
step
  only Tauren not completed(844) not haveq(844)
  talk Thork##3429
  turnin Journey to the Crossroads##854 |goto The Barrens 51.5,30.87
step
  talk Darsok Swiftdagger##3449
  turnin Harpy Raiders##867 |goto The Barrens 51.62,30.9
step
  talk Thork##3429
  turnin The Disruption Ends##872 |goto The Barrens 51.5,30.87
step
  talk Tonga Runetotem##3448
  turnin The Stagnant Oasis##877 |goto The Barrens 52.26,31.93
step
  talk Thork##3429
  turnin Supplies for the Crossroads##5041 |goto The Barrens 51.5,30.87
step
  only Tauren Druid completed(6127)
  talk Tonga Runetotem##3448
  turnin Gathering the Cure##6128 |goto The Barrens 52.26,31.93
step
  talk Sergra Darkthorn##3338
  accept Plainstrider Menace##844 |goto The Barrens 52.23,31.01
step
  talk Apothecary Helbrim##3390
  accept Apothecary Zamah##853 |goto The Barrens 51.44,30.15
step
  talk Darsok Swiftdagger##3449
  accept Harpy Lieutenants##875 |goto The Barrens 51.62,30.9
step
  talk Tonga Runetotem##3448
  accept Altered Beings##880 |goto The Barrens 52.26,31.93
step
  only Tauren Druid completed(6127)
  talk Tonga Runetotem##3448
  accept Curing the Sick##6129 |goto The Barrens 52.26,31.93
step
  note Collect 7 Plainstrider Beaks and return them to Sergra Darkthorn in the Crossroads.
  collect 7 Plainstrider Beak##5087 |q 844 |goto The Barrens 51.33,23.04 |tip {dropsfrom}Greater Plainstrider, Ornery Plainstrider, Fleeting Plainstrider
step
  only Tauren Druid completed(6127)
  note Use the Curative Animal Salve on 10 Sickly Gazelles that are located throughout the northern part of the Barrens; doing so should cure them. Sickly Gazelles have been reported north of the east-west road that runs through the Crossroads.
  use Sickly Gazelle##12296 |q 6129 |goto The Barrens 54.25,24.17 |tip {useit}
step
  talk Sergra Darkthorn##3338
  turnin Plainstrider Menace##844 |goto The Barrens 52.23,31.01
step
  talk Sergra Darkthorn##3338
  accept The Zhevra##845 |goto The Barrens 52.23,31.01
step
  note Slay Zhevra Runners to collect 4 Zhevra Hooves for Sergra Darkthorn in the Crossroads.
  collect 4 Zhevra Hooves##5086 |q 845 |goto The Barrens 53.99,33.04 |tip {dropsfrom}Zhevra Runner, Zhevra Charger, Zhevra Courser
step
  talk Sergra Darkthorn##3338
  turnin The Zhevra##845 |goto The Barrens 52.23,31.01
step
  talk Sergra Darkthorn##3338
  accept Prowlers of the Barrens##903 |goto The Barrens 52.23,31.01
step
  talk Nalpak##5767
  accept Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  note Bring 8 Altered Snapjaw Shells to Tonga Runetotem at the Crossroads.
  collect 8 Altered Snapjaw Shell##5098 |q 880 |goto The Barrens 47.74,40.22 |tip {dropsfrom}Oasis Snapjaw
step
  note Nalpak in the Wailing Caverns wants 20 Deviate Hides.
  kill Deviate Coiler##3630 |goto The Barrens 46,36.4 |elite
  collect Deviate Hide##6443 |q 1486 |goto The Barrens 46,36.4
step
  talk Nalpak##5767
  turnin Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  note Collect 7 Prowler Claws from Savannah Prowlers for Sergra Darkthorn in the Crossroads.
  collect 7 Prowler Claws##5096 |q 903 |goto The Barrens 42,23.51 |tip {dropsfrom}Savannah Prowler
step
  note Bring 5 Savannah Lion Tusks, 5 Plainstrider Kidneys, and 1 Thunder Lizard Horn to Brewmaster Drohn in Ratchet.
  collect 5 Savannah Lion Tusk##4893 |q 821 |goto The Barrens 44.42,15.78 |tip {dropsfrom}Savannah Patriarch, Savannah Highmane, Savannah Huntress
step
  note Collect 6 Harpy Lieutenant Rings from Witchwing Slayers and return them to Darsok Swiftdagger at the Crossroads.
  collect 6 Harpy Lieutenant Ring##5065 |q 875 |goto The Barrens 38.79,15.11 |tip {dropsfrom}Witchwing Slayer
step
  only completed(829)
  note Grab a Flawed Power Stone. Bring it to the Altar of Fire before the stone expires, then return to Ak'Zeloth.
  collect The Altar of Fire##3525 |q 924 |goto The Barrens 47.98,19.07
step
  turnin Samophlange##894 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##900 |goto The Barrens 52.4,11.65
step
  note Close off the Fuel Control Valve, the Regulator Valve and the Main Control Valve then use the control console again.
  collect Main Control Valve##4072 |q 900 |goto The Barrens 52.33,11.56
step
  turnin Samophlange##900 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##901 |goto The Barrens 52.4,11.65
step
  note Get the Console Key from Tinkerer Sniggles to use on the control console.
  collect Console Key##5089 |q 901 |goto The Barrens 52.84,10.39 |tip {dropsfrom}Tinkerer Sniggles
step
  turnin Samophlange##901 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##902 |goto The Barrens 52.4,11.65
step
  only completed(829)
  talk Ak'Zeloth##3521
  turnin The Demon Seed##924 |goto The Barrens 62.34,20.07
step
  talk Brewmaster Drohn##3292
  turnin Chen's Empty Keg##821 |goto The Barrens 62.26,38.39
step
  talk Gazlowe##3391
  turnin Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  turnin WANTED: Baron Longshore##895 |goto The Barrens 62.68,36.23
step
  talk Sputtervalve##3442
  turnin Samophlange##902 |goto The Barrens 62.98,37.22
step
  talk Sputtervalve##3442
  accept Wenikee Boltbucket##3921 |goto The Barrens 62.98,37.22
step
  talk Mebok Mizzyrix##3446
  accept Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  talk Wharfmaster Dizzywig##3453
  accept Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  talk Crane Operator Bigglefuzz##3665
  accept Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  talk Darsok Swiftdagger##3449
  turnin Harpy Lieutenants##875 |goto The Barrens 51.62,30.9
step
  talk Tonga Runetotem##3448
  turnin Altered Beings##880 |goto The Barrens 52.26,31.93
step
  talk Sergra Darkthorn##3338
  turnin Prowlers of the Barrens##903 |goto The Barrens 52.23,31.01
step
  talk Sergra Darkthorn##3338
  accept Echeyakee##881 |goto The Barrens 52.23,31.01
step
  talk Tonga Runetotem##3448
  accept Hamuul Runetotem##1489 |goto The Barrens 52.26,31.93
step
  talk Regthar Deathgate##3389
  accept Verog the Dervish##851 |goto The Barrens 45.34,28.41
step
  talk Gazrog##3464
  accept Stolen Silver##3281 |goto The Barrens 51.93,30.32
step
  note Bring Verog's Head to Regthar Deathgate, west of the Crossroads.
  collect Verog's Head##5023 |q 851 |goto The Barrens 53.06,41.74 |tip {dropsfrom}Verog the Dervish
step
  note Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
  collect 5 Intact Raptor Horn##5055 |q 865 |goto The Barrens 52.58,45.99 |tip {dropsfrom}Sunscale Scytheclaw, Ishamuhale, Takk the Leaper
step
  note Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
  kill Mad Magglish##3655 |goto The Barrens 46.83,34.66 |elite
  collect 99-Year-Old Port##5334 |q 959 |goto The Barrens 46.83,34.66
step
  talk Makaba Flathoof##11857
  accept Avenge My Village##6548 |goto The Barrens 35.19,27.76
step
  talk Wenikee Boltbucket##9316
  turnin Wenikee Boltbucket##3921 |goto The Barrens 49.05,11.17
step
  talk Wenikee Boltbucket##9316
  accept Nugget Slugs##3922 |goto The Barrens 49.05,11.17
step
  talk Vrang Wildgore##3682
  accept Bruised Pride and Lion Hides##95494 |goto The Barrens 43.8,12.21
step
  talk Vrang Wildgore##3682
  accept The Hermit Tanner##95495 |goto The Barrens 43.8,12.21
step
  talk Vrang Wildgore##3682
  accept Vrang's Game##95507 |goto The Barrens 43.8,12.21
step
  talk Walton##261366
  accept Unwelcome Guests##95508 |goto The Barrens 42.01,11.44
step
  talk Walton##261366
  accept Trouble in the Valley##95621 |goto The Barrens 42.01,11.44
step
  note Collect 6 Savannah Lion Hides from the Savannah Matriarchs and Savannah Patriarchs in the Barrens.
  collect 6 Savannah Lion Hide##269715 |q 95494 |goto The Barrens 44.42,15.78 |tip {dropsfrom}Savannah Patriarch, Savannah Matriarch
step
  note Collect 8 Trapped Game from traps found in Sprung Traps in the Barrens.
  collect 8 Trapped Game##269719 |q 95507 |goto The Barrens 45.3,14 |tip {dropsfrom}Sprung Trap
step
  note Travel to the wrecked caravan and learn more about why the Kul Tirans are here.
  collect Benedict's Orders##270151 |q 95621 |goto The Barrens 42.12,15.85 |tip {dropsfrom}Corporal Adamore
step
  talk Vrang Wildgore##3682
  turnin Bruised Pride and Lion Hides##95494 |goto The Barrens 43.8,12.21
step
  talk Walton##261366
  turnin The Hermit Tanner##95495 |goto The Barrens 42.01,11.44
step
  talk Vrang Wildgore##3682
  turnin Vrang's Game##95507 |goto The Barrens 43.8,12.21
step
  talk Walton##261366
  turnin Unwelcome Guests##95508 |goto The Barrens 42.01,11.44
step
  talk Walton##261366
  turnin Trouble in the Valley##95621 |goto The Barrens 42.01,11.44
step
  talk Wizzlecrank's Shredder##3439
  accept Ignition##858 |goto The Barrens 56.52,7.45
step
  note Get the Ignition Key and bring it to Wizzlecrank.
  collect Ignition Key##5050 |q 858 |goto The Barrens 56.27,8.58 |tip {dropsfrom}Supervisor Lugwizzle
step
  note Retrieve the Cats Eye Emerald from one of the Venture Co. Overseers or Enforcers for Wharfmaster Dizzywig at Ratchet.
  collect Cats Eye Emerald##5097 |q 896 |goto The Barrens 60.81,3.79 |tip {dropsfrom}Venture Co. Enforcer, Venture Co. Overseer, Boss Copperplug
step
  note Bring 15 Nugget Slugs to Wenikee Boltbucket in the Barrens.
  collect 15 Nugget Slug##11143 |q 3922 |goto The Barrens 56.33,8.57 |tip {dropsfrom}Tool Bucket
step
  talk Wizzlecrank's Shredder##3439
  turnin Ignition##858 |goto The Barrens 56.52,7.45
step
  talk Wizzlecrank's Shredder##3439
  accept The Escape##863 |goto The Barrens 56.52,7.45
step
  note Bring Echeyakee's Hide to Sergra Darkthorn at the Crossroads.
  collect Echeyakee's Hide##5100 |q 881 |goto The Barrens 55.86,17.19 |tip {dropsfrom}Echeyakee
step
  talk Sputtervalve##3442
  turnin The Escape##863 |goto The Barrens 62.98,37.22
step
  talk Mebok Mizzyrix##3446
  turnin Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  talk Wharfmaster Dizzywig##3453
  turnin Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  talk Crane Operator Bigglefuzz##3665
  turnin Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  note Bring the Stolen Silver to Gazrog in the Crossroads.
  collect Stolen Silver##5061 |q 3281 |goto The Barrens 58.04,53.87
step
  talk Regthar Deathgate##3389
  turnin Verog the Dervish##851 |goto The Barrens 45.34,28.41
step
  talk Sergra Darkthorn##3338
  turnin Echeyakee##881 |goto The Barrens 52.23,31.01
step
  talk Gazrog##3464
  turnin Stolen Silver##3281 |goto The Barrens 51.93,30.32
step
  talk Sergra Darkthorn##3338
  accept The Angry Scytheclaws##905 |goto The Barrens 52.23,31.01
step
  note Kill Sunscale raptors and collect their feathers. Use the feathers on the 3 Scytheclaw nests. Return to Sergra Darkthorn in the Crossroads.
  collect Blue Raptor Nest##6907 |q 905 |goto The Barrens 52.6,46.11
step
  talk Wenikee Boltbucket##9316
  turnin Nugget Slugs##3922 |goto The Barrens 49.05,11.17
step
  talk Wenikee Boltbucket##9316
  accept Rilli Greasygob##3923 |goto The Barrens 49.05,11.17
step
  talk Sergra Darkthorn##3338
  turnin The Angry Scytheclaws##905 |goto The Barrens 52.23,31.01
step
  talk Sergra Darkthorn##3338
  accept Jorn Skyseer##3261 |goto The Barrens 52.23,31.01
step
  talk Regthar Deathgate##3389
  accept Hezrul Bloodmark##852 |goto The Barrens 45.34,28.41
step
  talk Thork##3429
  accept Report to Kadrak##6541 |goto The Barrens 51.5,30.87
step
  note Bring Hezrul's Head to Regthar Deathgate, west of the Crossroads.
  collect Hezrul's Head##5025 |q 852 |goto The Barrens 46.04,41.14 |tip {dropsfrom}Hezrul Bloodmark
step
  talk Kadrak##8582
  turnin Report to Kadrak##6541 |goto The Barrens 48.12,5.42
step
  talk Kadrak##8582
  accept The Warsong Reports##6543 |goto The Barrens 48.12,5.42
step
  note Open the Bundle of Reports. Take the Warsong Reports to the Warsong Scout, Warsong Runner, and Warsong Outrider. Bring back the updates they give you to Kadrak at the northern watch tower in the barrens.
  buy Warsong Scout Update##16764 |q 6543 |goto Ashenvale 71.05,68.36
step
  talk Kadrak##8582
  turnin The Warsong Reports##6543 |goto The Barrens 48.12,5.42
step
  talk Jorn Skyseer##3387
  turnin Jorn Skyseer##3261 |goto The Barrens 44.86,59.14
step
  talk Jorn Skyseer##3387
  accept Ishamuhale##882 |goto The Barrens 44.86,59.14
step
  talk Regthar Deathgate##3389
  turnin Hezrul Bloodmark##852 |goto The Barrens 45.34,28.41
step
  note Bring Ishamuhale's Fang to Jorn at Camp Taurajo.
  collect Ishamuhale's Fang##5101 |q 882 |goto The Barrens 59.8,30.6 |tip {dropsfrom}Ishamuhale
step
  talk Jorn Skyseer##3387
  turnin Ishamuhale##882 |goto The Barrens 44.86,59.14
step
  talk Jorn Skyseer##3387
  accept Enraged Thunder Lizards##907 |goto The Barrens 44.86,59.14
step
  note Bring 3 Thunder Lizard Blood to Jorn Skyseer at Camp Taurajo.
  collect 3 Thunder Lizard Blood##5143 |q 907 |goto The Barrens 47.83,75.91 |tip {dropsfrom}Stormhide, Thunderhead, Stormsnout
step
  talk Jorn Skyseer##3387
  turnin Enraged Thunder Lizards##907 |goto The Barrens 44.86,59.14
step
  only not Undead not Tauren not Skyborne Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55 |tip {turninat}Orgrimmar
step
  only completed(5728)
  talk Neeru Fireblade##3216
  turnin Hidden Enemies##5729 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  talk Borstan##3368
  turnin Meal Appeal##97246 |goto Orgrimmar 57.2,53.32 |tip {turninat}Orgrimmar
step
  talk Migi##268682
  turnin Favorite Food##97249 |goto Orgrimmar 36.77,29.08 |tip {turninat}Orgrimmar
step
  talk Whuut##11046
  turnin Whuut's the Rush##97275 |goto Orgrimmar 55.79,32.9 |tip {turninat}Orgrimmar
step
  talk Zor Lonetree##4047
  accept The Spirits of Stonetalon##1061 |goto Orgrimmar 38.93,38.4
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept A Lesson to Learn##27 |goto Thunder Bluff 76.48,27.22
step
  talk Apothecary Zamah##3419
  accept Serpentbloom##962 |goto Thunder Bluff 22.81,20.89
step
  only Rogue
  talk Shenthul##3401
  accept Zando'zan##2379 |goto Orgrimmar 43.05,53.74
step
  talk Captain Thalo'thas Brightsun##3339
  accept The Guns of Northwatch##891 |goto The Barrens 62.29,39.03
step
  talk Gilthares Firebough##3465
  accept Free From the Hold##898 |goto The Barrens 61.96,54.96
step
  talk Mankrik##3432
  accept Consumed by Hatred##899 |goto The Barrens 51.95,31.58
step
  talk Mebok Mizzyrix##3446
  accept Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  talk Mankrik##3432
  accept Lost in Battle##4921 |goto The Barrens 51.95,31.58
step
  click WANTED##3972
  accept WANTED: Bruuz##92706 |goto The Barrens 62.59,37.47
step
  talk Mankrik##3432
  accept Her Name Is Olgra##95774 |goto The Barrens 51.95,31.58
step
  talk Mangletooth##3430
  accept Tribes at War##878 |goto The Barrens 44.55,59.26
step
  talk Sputtervalve##3442
  accept Ziz Fizziks##1483 |goto The Barrens 62.98,37.22
step
  talk Gur'ak##267310
  accept Chol'aruk the Ravener##97003 |goto The Barrens 52.63,29.06
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Zankaja##5910
  accept News of Dogran##1509 |goto Orgrimmar 37.04,59.45
step
  only Shaman not completed(1529) not completed(2985) not completed(2986) not haveq(1529) not haveq(2985) not haveq(2986)
  talk Searn Firewarder##5892
  accept Call of Water##1528 |goto Orgrimmar 37.96,37.73
step
  only Warrior
  talk Torm Ragetotem##3041
  accept Speak with Ruga##1823 |goto Thunder Bluff 57.24,87.37
step
  only Rogue
  talk Shenthul##3401
  accept The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74
step
  only Troll Priest not completed(5643) not completed(5680) not haveq(5643) not haveq(5680)
  talk Miles Welsh##3044
  accept Shadowguard##5642 |goto Thunder Bluff 25.32,15.27
step
  only Undead Priest not completed(5646) not completed(5679) not haveq(5646) not haveq(5679)
  talk Miles Welsh##3044
  accept Devouring Plague##5644 |goto Thunder Bluff 25.32,15.27
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  talk Cazul##5909
  accept Love Hurts##65601 |goto Orgrimmar 47.06,46.43
step
  only not Orc not Undead not Troll Druid
  talk Turak Runetotem##3033
  accept The Great Cat Spirit##98340 |goto Thunder Bluff 76.48,27.22
step
  only Warrior not completed(1819) not haveq(1819)
  note Bring 5 Singed Scales to Uzzek at Far Watch Post in the Barrens.
  collect 5 Singed Scale##6486 |q 1498 |goto Durotar 39.15,29.29 |tip {dropsfrom}Thunder Lizard, Lightning Hide
step
  note Take some cuttings from the Cattails and Speargrass growing around the water flows in the Valley of Honor and return to Kor'geld in Yelmak's Alchemy and Potions
  collect Handful of Cattails##277278 |q 97242 |goto Orgrimmar 69.7,31.2 |tip {dropsfrom}Cattail
step
  note Return 8 Smooth Boulders to Thra behind Grommash Hold.
  collect Smooth Boulder##277952 |q 97326 |goto Orgrimmar 45.3,32.7
step
  note Apothecary Zamah in Thunder Bluff wants you to collect 10 Serpentbloom.
  collect 10 Serpentbloom##5339 |q 962 |goto The Barrens 47.62,33.85
step
  note Kill 8 Grimtotem Ruffians and 6 Grimtotem Mercenaries, and then return to Makaba Flathoof near the southeastern edge of Stonetalon.
  kill Grimtotem Ruffian##11910 |q 6548 |goto Stonetalon Mountains 82.8,86.18
step
  note Captain Thalo'thas Brightsun of Ratchet wants you to collect 10 Theramore Medals and slay Captain Fairmount, Cannoneer Whessan and Cannoneer Smythe.
  talk Captain Fairmount##3393 |q 891 |goto The Barrens 61.85,54.65
step
  note Bring 60 Bristleback Quilboar Tusks to Mankrik at the Crossroads.
  collect 60 Bristleback Quilboar Tusk##5085 |q 899 |goto The Barrens 44.47,52.32 |tip {dropsfrom}Bristleback Hunter, Bristleback Water Seeker, Bristleback Thornweaver
step
  note Bring 15 Deepmoss Eggs to Mebok Mizzyrix in Ratchet.
  collect 15 Deepmoss Egg##5570 |q 1069 |goto Stonetalon Mountains 61.39,56.74 |tip {dropsfrom}Deepmoss Eggs
step
  note Find Mankrik's wife and then return to him in the Crossroads.
  talk Beaten Corpse##10668 |q 4921 |goto The Barrens 49.33,50.32
step
  note Bring Bruuz's Dorsal Fin to Gazlowe in Ratchet.
  collect Bruuz's Dorsal Fin##253710 |q 92706 |goto The Barrens 63.67,38.66 |tip {dropsfrom}Bruuz
step
  note Slay quilboars and collect 4 of Olgra's Adornments for Mankrik's memorial.
  collect 4 Olgra's Adornments##277277 |q 95774 |goto The Barrens 50.65,50.79 |tip {dropsfrom}Razormane Raider
step
  note Kill 6 Bristleback Water Seekers, 12 Bristleback Thornweavers and 12 Bristleback Geomancers and return to Mangletooth at Camp Taurajo in the Barrens.
  kill Bristleback Water Seeker##3260 |q 878 |goto The Barrens 46.46,54.17
step
  note Bring the head of Chol'aruk to Gur'ak in the Barrens.
  collect Chol'aruk's Head##276070 |q 97003 |goto The Barrens 57.76,27.42 |tip {dropsfrom}Chol'aruk
step
  only Rogue
  note Perform the Shattered Salute on Shenthul.
  talk Shenthul##3401 |q 2460 |goto Orgrimmar 43.05,53.74
step
  only Warrior not completed(1819) not haveq(1819)
  talk Uzzek##5810
  turnin Path of Defense##1498 |goto The Barrens 61.38,21.12
step
  talk Kor'geld##3348
  turnin Yelmak's Medley##97242 |goto Orgrimmar 56.05,34.12 |tip {turninat}Orgrimmar
step
  talk Thra##268684
  turnin Rocks to Rests##97326 |goto Orgrimmar 37,28.81 |tip {turninat}Orgrimmar
step
  talk Seereth Stonebreak##4049
  turnin The Spirits of Stonetalon##1061 |goto The Barrens 35.26,27.88
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##27 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  talk Apothecary Zamah##3419
  turnin Serpentbloom##962 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  only Rogue
  talk Zando'zan##3402
  turnin Zando'zan##2379 |goto Orgrimmar 42.73,52.95 |tip {turninat}Orgrimmar
step
  talk Makaba Flathoof##11857
  turnin Avenge My Village##6548 |goto The Barrens 35.19,27.76
step
  talk Captain Thalo'thas Brightsun##3339
  turnin The Guns of Northwatch##891 |goto The Barrens 62.29,39.03
step
  talk Captain Thalo'thas Brightsun##3339
  turnin Free From the Hold##898 |goto The Barrens 62.29,39.03
step
  talk Mankrik##3432
  turnin Consumed by Hatred##899 |goto The Barrens 51.95,31.58
step
  talk Mebok Mizzyrix##3446
  turnin Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  talk Mankrik##3432
  turnin Lost in Battle##4921 |goto The Barrens 51.95,31.58
step
  talk Gazlowe##3391
  turnin WANTED: Bruuz##92706 |goto The Barrens 62.68,36.23
step
  talk Mankrik##3432
  turnin Her Name Is Olgra##95774 |goto The Barrens 51.95,31.58
step
  talk Mangletooth##3430
  turnin Tribes at War##878 |goto The Barrens 44.55,59.26
step
  talk Ziz Fizziks##4201
  turnin Ziz Fizziks##1483 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Gur'ak##267310
  turnin Chol'aruk the Ravener##97003 |goto The Barrens 52.63,29.06
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Gazrog##3464
  turnin News of Dogran##1509 |goto The Barrens 51.93,30.32
step
  only Shaman not completed(1529) not completed(2985) not completed(2986) not haveq(1529) not haveq(2985) not haveq(2986)
  talk Islen Waterseer##5901
  turnin Call of Water##1528 |goto The Barrens 65.83,43.78
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Speak with Ruga##1823 |goto The Barrens 44.67,59.42
step
  only Rogue
  talk Shenthul##3401
  turnin The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  only Troll Priest not completed(5643) not completed(5680) not haveq(5643) not haveq(5680)
  talk Ur'kyo##6018
  turnin Shadowguard##5642 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only Undead Priest not completed(5646) not completed(5679) not haveq(5646) not haveq(5679)
  talk Aelthalyste##4606
  turnin Devouring Plague##5644 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  talk Magar##3363
  turnin Love Hurts##65601 |goto Orgrimmar 63.65,49.93 |tip {turninat}Orgrimmar
step
  only not Orc not Undead not Troll Druid
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98340 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  only Shaman
  talk Telf Joolam##5900
  turnin Call of Fire##1524 |goto Durotar 38.55,58.96 |tip {turninat}Durotar
step
  only Tauren
  talk Ahanu##8359
  turnin Ride to Thunder Bluff##6362 |goto Thunder Bluff 45.77,55.84 |tip {turninat}Thunder Bluff
step
  only not Undead not Tauren not Skyborne
  talk Innkeeper Gryshka##6929
  turnin Ride to Orgrimmar##6384 |goto Orgrimmar 54.1,68.41 |tip {turninat}Orgrimmar
step
  talk Apothecary Zamah##3419
  turnin Apothecary Zamah##853 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  only Tauren Druid completed(6127)
  talk Dendrite Starblaze##11802
  turnin Curing the Sick##6129 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  only Warrior
  talk Uzzek##5810
  accept Thun'grim Firegaze##1502 |goto The Barrens 61.38,21.12
step
  only not Undead not Tauren not Skyborne Rogue
  talk Therzok##6446
  accept The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55
step
  only completed(5728)
  talk Neeru Fireblade##3216
  accept Hidden Enemies##5730 |goto Orgrimmar 49.47,50.59
step
  only Rogue
  talk Zando'zan##3402
  accept Wrenix of Ratchet##2382 |goto Orgrimmar 42.73,52.95
step
  talk Makaba Flathoof##11857
  accept Kill Grundig Darkcloud##6629 |goto The Barrens 35.19,27.76
step
  talk Seereth Stonebreak##4049
  accept Goblin Invaders##1062 |goto The Barrens 35.26,27.88
step
  talk Mangletooth##3430
  accept Blood Shards of Agamaggan##5052 |goto The Barrens 44.55,59.26
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Gazrog##3464
  accept News of Dogran##1510 |goto The Barrens 51.93,30.32
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Rogue
  talk Shenthul##3401
  accept Deep Cover##2458 |goto Orgrimmar 43.05,53.74
step
  only not Undead not Tauren not Skyborne Rogue
  note Steal Tazan's key, then use it to open his Satchel and deliver its contents to Therzok in the Cleft of Shadow in Orgrimmar.
  kill Tazan##6494 |goto The Barrens 63.11,44.29
  collect Tazan's Logbook##7295 |q 1858 |goto The Barrens 63.11,44.29
step
  note Kill Grundig Darkcloud and 6 Grimtotem Brutes, and return to Makaba Flathoof near the southeastern edge of Stonetalon.
  kill Grundig Darkcloud##11858 |q 6629 |goto Stonetalon Mountains 73.65,86.12
step
  note Kill 15 Venture Co. Loggers, then return to Seereth Stonebreak on the border of Stonetalon and the Barrens.
  kill Venture Co. Logger##3989 |q 1062 |goto Stonetalon Mountains 66.4,52.49
step
  note Bring a Blood Shard to Mangletooth in Camp Taurajo in the Barrens.
  collect Blood Shard##5075 |q 5052 |goto The Barrens 44.47,52.32 |tip {dropsfrom}Bristleback Hunter, Bristleback Water Seeker, Bristleback Thornweaver
step
  only Warrior
  note Bring 5 twitching antennae to Ruga Ragetotem at Camp Taurajo
  collect 5 Twitching Antenna##7119 |q 1824 |goto The Barrens 45.23,70.16 |tip {dropsfrom}Silithid Creeper, Silithid Grub, Silithid Swarmer
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Thun'grim Firegaze##1502 |goto The Barrens 57.23,30.34
step
  only not Undead not Tauren not Skyborne Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55 |tip {turninat}Orgrimmar
step
  only completed(5728)
  talk Thrall##4949
  turnin Hidden Enemies##5730 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Wrenix of Ratchet##2382 |goto The Barrens 63.07,36.32
step
  talk Makaba Flathoof##11857
  turnin Kill Grundig Darkcloud##6629 |goto The Barrens 35.19,27.76
step
  talk Seereth Stonebreak##4049
  turnin Goblin Invaders##1062 |goto The Barrens 35.26,27.88
step
  talk Mangletooth##3430
  turnin Blood Shards of Agamaggan##5052 |goto The Barrens 44.55,59.26
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Ken'zigla##4197
  turnin News of Dogran##1510 |goto Stonetalon Mountains 73.25,95.13 |tip {turninat}Stonetalon Mountains
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Rogue
  talk Taskmaster Fizzule##7233
  turnin Deep Cover##2458 |goto The Barrens 55.44,5.56
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Forged Steel##1503 |goto The Barrens 57.23,30.34
step
  only Shaman
  talk Telf Joolam##5900
  accept Call of Fire##1525 |goto Durotar 38.55,58.96
step
  only Tauren
  talk Ahanu##8359
  accept Tal the Wind Rider Master##6363 |goto Thunder Bluff 45.77,55.84
step
  only not Undead not Tauren not Skyborne
  talk Innkeeper Gryshka##6929
  accept Doras the Wind Rider Master##6385 |goto Orgrimmar 54.1,68.41
step
  talk Seereth Stonebreak##4049
  accept The Elder Crone##1063 |goto The Barrens 35.26,27.88
step
  only Rogue
  talk Wrenix the Wretched##7161
  accept Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
  talk Darsok Swiftdagger##3449
  accept Serena Bloodfeather##876 |goto The Barrens 51.62,30.9
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Speak with Thun'grim##1825 |goto The Barrens 44.67,59.42
step
  only Warrior
  note Bring the Forged Steel Bars to Thun'grim Firegaze in the Barrens.
  collect Forged Steel Bars##6534 |q 1503 |goto The Barrens 55.05,26.65 |tip {dropsfrom}Stolen Iron Chest
step
  only Shaman
  note Bring 1 Fire Tar and 1 Reagent Pouch to Telf Joolam in Durotar.
  collect 1 Fire Tar##5026 |q 1525 |goto The Barrens 54.94,26.74 |tip {dropsfrom}Razormane Water Seeker, Razormane Thornweaver, Razormane Geomancer
step
  only Rogue
  note Bring the Southsea Treasure back to Wrenix the Wretched in Ratchet. Do not forget to get an E.C.A.C. and Thieves' Tools from Wrenix's Gizmotronic Apparatus. You will need both of these items to complete your mission.
  collect Southsea Treasure##7968 |q 2381 |goto The Barrens 64.78,45.5 |tip {dropsfrom}Polly
step
  note Slay Serena Bloodfeather and return her head to Darsok Swiftdagger at the Crossroads.
  collect Serena's Head##5067 |q 876 |goto The Barrens 39.16,12.17 |tip {dropsfrom}Serena Bloodfeather
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Forged Steel##1503 |goto The Barrens 57.23,30.34
step
  only Shaman
  talk Telf Joolam##5900
  turnin Call of Fire##1525 |goto Durotar 38.55,58.96 |tip {turninat}Durotar
step
  only Tauren
  talk Tal##2995
  turnin Tal the Wind Rider Master##6363 |goto Thunder Bluff 47,49.83 |tip {turninat}Thunder Bluff
step
  only not Undead not Tauren not Skyborne
  talk Doras##3310
  turnin Doras the Wind Rider Master##6385 |goto Orgrimmar 45.12,63.89 |tip {turninat}Orgrimmar
step
  talk Magatha Grimtotem##4046
  turnin The Elder Crone##1063 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
  talk Darsok Swiftdagger##3449
  turnin Serena Bloodfeather##876 |goto The Barrens 51.62,30.9
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Speak with Thun'grim##1825 |goto The Barrens 57.23,30.34
step
  only Tauren
  talk Tal##2995
  accept Return to Jahan##6364 |goto Thunder Bluff 47,49.83
step
  only not Undead not Tauren not Skyborne
  talk Doras##3310
  accept Return to the Crossroads.##6386 |goto Orgrimmar 45.12,63.89
step
  only Shaman
  talk Telf Joolam##5900
  accept Call of Fire##1526 |goto Durotar 38.55,58.96
step
  talk Magatha Grimtotem##4046
  accept Forsaken Aid##1064 |goto Thunder Bluff 69.85,30.91
step
  talk Darsok Swiftdagger##3449
  accept Letter to Jin'Zil##1060 |goto The Barrens 51.62,30.9
step
  talk Regthar Deathgate##3389
  accept Counterattack!##4021 |goto The Barrens 45.34,28.41
step
  note Bring a Piece of Krom'zar's Banner to Regthar Deathgate, west of the Crossroads.
  collect Piece of Krom'zar's Banner##11227 |q 4021 |goto The Barrens 45.34,28.41 |tip {dropsfrom}Krom'zar's Banner
step
  only Shaman
  note Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
  collect Glowing Ember##6655 |q 1526 |goto Durotar 38.72,58.29 |tip {dropsfrom}Minor Manifestation of Fire, Manifestation of Flames
step
  only Tauren
  talk Jahan Hawkwing##3483
  turnin Return to Jahan##6364 |goto The Barrens 51.21,29.05
step
  only not Undead not Tauren not Skyborne
  talk Zargh##3489
  turnin Return to the Crossroads.##6386 |goto The Barrens 52.62,29.84
step
  only Shaman
  turnin Call of Fire##1526 |goto Durotar 38.96,58.22 |tip {turninat}Durotar
step
  talk Apothecary Zamah##3419
  turnin Forsaken Aid##1064 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  talk Witch Doctor Jin'Zil##3995
  turnin Letter to Jin'Zil##1060 |goto Stonetalon Mountains 74.54,97.94 |tip {turninat}Stonetalon Mountains
step
  talk Regthar Deathgate##3389
  turnin Counterattack!##4021 |goto The Barrens 45.34,28.41
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin Hamuul Runetotem##1489 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  only Shaman
  click Brazier of the Dormant Flame##61934
  accept Call of Fire##1527 |goto Durotar 38.96,58.22
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##1527 |goto The Barrens 56.03,19.89
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Nara Wildmane##1490 |goto Thunder Bluff 78.62,28.56
step
  talk Nara Wildmane##5770
  turnin Nara Wildmane##1490 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Rilli Greasygob##9317
  turnin Rilli Greasygob##3923 |goto Orgrimmar 76.52,24.41 |tip {turninat}Orgrimmar
step
  talk Rilli Greasygob##9317
  accept Samophlange Manual##3924 |goto Orgrimmar 76.52,24.41
step
  note Bring the Samophlange Manual to Rilli Greasygob in Orgrimmar.
  collect Samophlange Manual##11149 |q 3924 |goto Orgrimmar 76.52,24.41
step
  talk Rilli Greasygob##9317
  turnin Samophlange Manual##3924 |goto Orgrimmar 76.52,24.41 |tip {turninat}Orgrimmar
step
  only not completed(235) not completed(742) not haveq(235) not haveq(742)
  talk Jorn Skyseer##3387
  accept The Ashenvale Hunt##6382 |goto The Barrens 44.86,59.14
step
  only not completed(235) not completed(742) not haveq(235) not haveq(742)
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##6382 |goto Ashenvale 73.78,61.46 |tip {turninat}Ashenvale
step
  talk Jorn Skyseer##3387
  accept Cry of the Thunderhawk##913 |goto The Barrens 44.86,59.14
step
  note Find and slay a Thunderhawk, return its wings to Jorn Skyseer at Camp Taurajo.
  collect Thunderhawk Wings##5164 |q 913 |goto The Barrens 46.76,50.95 |tip {dropsfrom}Thunderhawk Hatchling, Greater Thunderhawk, Thunderhawk Cloudscraper
step
  talk Jorn Skyseer##3387
  turnin Cry of the Thunderhawk##913 |goto The Barrens 44.86,59.14
step
  note {travel}Undercity
  goto Undercity 48.82,69.28
]])
