-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Warlock", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Warlock
  talk Venya Marthand##5667
  accept Piercing the Veil##1470 |goto Tirisfal Glades 30.98,66.41
step
  only Warlock
  talk Carendin Halgar##5675
  accept Devourer of Souls##1472 |goto Undercity 85.06,25.99
step
  only Undead Warlock
  talk Ageron Kargal##5724
  accept Halgar's Summons##1478 |goto Tirisfal Glades 61.62,52.68
step
  only Warlock
  talk Ruzan##5765
  accept Vile Familiars##1485 |goto Durotar 42.59,69.0
step
  only Orc Warlock
  talk Ophek##3294
  accept Gan'rul's Summons##1506 |goto Durotar 54.37,41.29
step
  only Warlock
  talk Gan'rul Bloodeye##5875
  accept Devourer of Souls##1507 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Strahad Farsan##6251
  accept Tome of the Cabal##1801 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Gan'rul Bloodeye##5875
  accept Seeking Strahad##2996 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Carendin Halgar##5675
  accept Seeking Strahad##3001 |goto Undercity 85.06,25.99
step
  only Warlock
  talk Spackle Thornberry##5520
  accept Mor'zul Bloodbringer##7562 |goto Stormwind City 25.66,77.66
step
  only Warlock
  talk Daio the Decrepit##14463
  accept The Prison's Bindings##7581 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  talk Daio the Decrepit##14463
  accept The Prison's Casing##7582 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  talk Daio the Decrepit##14463
  accept Suppression##7583 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  talk Niby the Almighty##14469
  accept What Niby Commands##7601 |goto Felwood 41.38,44.85
step
  only Warlock
  talk Summoner Teli'Larien##15283
  accept Windows to the Source##8344 |goto Eversong Woods 38.93,21.44
step
  only BloodElf Warlock
  talk Talionia##16647
  accept The Stone##9529 |goto Silvermoon City 74.39,47.15
step
  only BloodElf Warlock
  talk Alamma##16646
  accept Carendin Summons##10605 |goto Silvermoon City 73.09,46.94
step
  only BloodElf Warlock
  talk Carendin Halgar##5675
  accept Return to Talionia##10788 |goto Undercity 85.06,25.99
step
  only Undead Warlock
  talk Gan'rul Bloodeye##5875
  accept Return to Carendin Halgar##10789 |goto Orgrimmar 48.25,45.28
step
  only Orc Warlock
  talk Carendin Halgar##5675
  accept Return to Gan'rul Bloodeye##10790 |goto Undercity 85.06,25.99
step
  only Undead
  talk Undertaker Mordo##1568
  accept Rude Awakening##363 |goto Tirisfal Glades 30.22,71.65
step
  talk Magistrix Erona##15278
  accept Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  talk Gornek##3143
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Warlock
  talk Doan Karhan##6247
  accept The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Zevrost##3326
  accept In Search of Menara Voidrender##4737 |goto Orgrimmar 48.47,45.43
step
  only Warlock
  talk Kaal Soulreaper##4563
  accept In Search of Menara Voidrender##4739 |goto Undercity 86.21,15.93
step
  only Warlock
  talk Demisette Cloyce##461
  accept Knowledge of the Orb of Orahil##4968 |goto Stormwind City 25.28,78.22
step
  only Warlock
  talk Kaal Soulreaper##4563
  accept Knowledge of the Orb of Orahil##4969 |goto Undercity 86.21,15.93
step
  only Warlock
  talk Menara Voidrender##6266
  accept Fragments of the Orb of Orahil##1799 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Acolyte Wytula##6254
  accept Shard of a Felhound##4962 |goto The Barrens 62.64,35.3
step
  only Warlock
  talk Acolyte Magaz##6252
  accept Shard of an Infernal##4963 |goto The Barrens 62.56,35.23
step
  only Warlock
  talk Demisette Cloyce##461
  accept An Imp's Request##8419 |goto Stormwind City 25.28,78.22
step
  only Warlock
  talk Impsy##14470
  accept Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Warlock
  kill Prince Tortheldrin##11486 |goto Dire Maul - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Harnessing Shadows##7502 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Wraps##8059 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Mantle##8076 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Robes##8077 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8106 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Kandrostrasz##15503
  accept Doomcaller's Footwraps##8660 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Vethsera##15504
  accept Doomcaller's Robes##8661 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  accept Doomcaller's Circlet##8662 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  accept Doomcaller's Trousers##8663 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  accept Doomcaller's Mantle##8664 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Keyl Swiftclaw##15500
  accept Shroud of Unspoken Names##8694 |goto Silithus 51.76,39.54
step
  only Warlock
  talk Windcaller Yessendra##15498
  accept Ring of Unspoken Names##8702 |goto Silithus 52.05,38.16
step
  only Warlock
  talk Warden Haro##15499
  accept Kris of Unspoken Names##8710 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Mokvar##16012
  accept An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Bring Venya Marthand 3 Rattlecage Skulls.
  collect Rattlecage Skull##6281 |q 1470 |goto Tirisfal Glades 33.06,61.66 |tip {dropsfrom}Rattlecage Skeleton
step
  only Warlock
  note Bring 6 Vile Familiar Heads to Ruzan.
  collect 6 Vile Familiar Head##6487 |q 1485 |goto Durotar 44.24,55.54 |tip {dropsfrom}Vile Familiar
step
  only Warlock
  note Travel to Dire Maul in Feralas and recover 15 Satyr Blood from the Wildspawn Satyr that inhabit the Warpwood Quarter. Return to Daio in the Tainted Scar when this is done.
  collect Satyr Blood##18603 |q 7581 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Wildspawn Satyr, Wildspawn Rogue, Wildspawn Trickster
step
  only Warlock
  note Travel to Darkwhisper Gorge in Winterspring and recover 5 Tears of the Hederine from the Hederine demons that occupy the gorge. Return to Daio in the Tainted Scar when you have completed this task.
  kill Hederine Initiate##7461 |goto Winterspring 58.44,83.17 |elite
  collect Tears of the Hederine##18604 |q 7582 |goto Winterspring 58.44,83.17
step
  only Warlock
  note Venture forth into the Tainted Scar and locate a Doomguard Commander.
  collect Imprisoned Doomguard##18605 |q 7583 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  note Bring 4 Wraith Essences and 1 Tainted Wraith Essence to Summoner Teli'Larien at the Sunspire on Sunstrider Isle.
  collect 4 Wraith Essence##20934 |q 8344 |goto Eversong Woods 30.71,26.99 |tip {dropsfrom}Arcane Wraith
step
  note Kill 8 Mana Wyrms; they are located close to the Burning Crystals that are adjacent to the tower and gazebo. Return to Magistrix Erona at the tower on Sunstrider Isle when you are done.
  kill Mana Wyrm##15274 |q 8325 |goto Eversong Woods 36.91,21.9
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  kill Mottled Boar##3098 |q 788 |goto Durotar 44.44,64.81
step
  only Warlock
  note Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
  collect 3 Soran'ruk Fragment##6914 |q 1740 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Acolyte
step
  only Warlock
  note Bring Robes of the Arcana to Menara Voidrender in the Barrens.
  collect Robes of Arcana##5770 |q 1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
  collect Infernal Orb##7291 |q 1799 |goto Desolace 79.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  only Warlock
  note Take the Felhas Ruby and use it on one of the Felhounds found in Desolace. After successful, bring the Felhas Ruby and the Imprisoned Felhound Spirit back to Menara Voidrender in the Barrens.
  collect Imprisoned Felhound Spirit##12648 |q 4962 |goto The Barrens 62.64,35.3
step
  only Warlock
  note Take the Infus Emerald and use it on one of the Infernals found in Desolace. After successful, bring the Infus Emerald and the Imprisoned Infernal Spirit back to Menara Voidrender in the Barrens.
  collect Imprisoned Infernal Spirit##12649 |q 4963 |goto The Barrens 62.56,35.23
step
  only Warlock
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8419 |goto Blasted Lands 59.78,54.09 |tip {dropsfrom}Felguard Sentry, Legashi Satyr, Legashi Rogue
step
  only Warlock
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8420 |goto Blasted Lands 59.78,54.09 |tip {dropsfrom}Felguard Sentry, Legashi Satyr, Legashi Rogue
step
  only Warlock
  note Bring Al'tabim the All-Seeing a Primal Hakkari Stanchion. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Stanchion##19718 |q 8059 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warlock
  note Bring Al'tabim the All-Seeing a Primal Hakkari Sash. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Sash##19720 |q 8076 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warlock
  note Bring Al'tabim the All-Seeing a Primal Hakkari Kossack. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Kossack##19723 |q 8077 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warlock
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Night, 5 Clay Scarabs and 5 Ivory Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Dominance##20932 |q 8660 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Warlock
  note Bring the the Husk of the Old God, 2 Idols of Night, 5 Stone Scarabs and 5 Crystal Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Husk of the Old God##20933 |q 8661 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Warlock
  note Bring Vek'nilash's Circlet, 2 Idols of Death, 5 Silver Scarabs and 5 Bone Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'nilash's Circlet##20926 |q 8662 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Emperor Vek'nilash
step
  only Warlock
  note Bring the Skin of the Great Sandworm, 2 Idols of Rebirth, 5 Gold Scarabs and 5 Clay Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Skin of the Great Sandworm##20931 |q 8663 |goto Ahn'Qiraj - Raid -1,-1 |tip {dropsfrom}Ouro
step
  only Warlock
  note Bring the Qiraji Bindings of Dominance, 2 Idols of the Sage, 5 Bronze Scarabs and 5 Bone Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Dominance##20932 |q 8664 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Warlock
  note Bring 1 Qiraji Regal Drape, 2 Amber Idols, 5 Ivory Scarabs and 5 Bronze Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8694 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Warlock
  note Bring 1 Qiraji Ceremonial Ring, 2 Jasper Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8702 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Warlock
  note Bring 1 Qiraji Ornate Hilt, 2 Onyx Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8710 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Warlock
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Dreadmist Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8919 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  only Warlock
  talk Venya Marthand##5667
  turnin Piercing the Veil##1470 |goto Tirisfal Glades 30.98,66.41
step
  only Warlock
  talk Godrick Farsan##5693
  turnin Devourer of Souls##1472 |goto Undercity 84.81,14.83
step
  only Undead Warlock
  talk Carendin Halgar##5675
  turnin Halgar's Summons##1478 |goto Undercity 85.06,25.99
step
  only Warlock
  talk Ruzan##5765
  turnin Vile Familiars##1485 |goto Durotar 42.59,69.0
step
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  turnin Gan'rul's Summons##1506 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Cazul##5909
  turnin Devourer of Souls##1507 |goto Orgrimmar 47.06,46.43
step
  only Warlock
  talk Jorah Annison##6293
  turnin Tome of the Cabal##1801 |goto Undercity 75.92,37.89
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Seeking Strahad##2996 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Seeking Strahad##3001 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  turnin Mor'zul Bloodbringer##7562 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Daio the Decrepit##14463
  turnin The Prison's Bindings##7581 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  talk Daio the Decrepit##14463
  turnin The Prison's Casing##7582 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  talk Daio the Decrepit##14463
  turnin Suppression##7583 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  talk Impsy##14470
  turnin What Niby Commands##7601 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Summoner Teli'Larien##15283
  turnin Windows to the Source##8344 |goto Eversong Woods 38.93,21.44
step
  only BloodElf Warlock
  turnin The Stone##9529 |goto Ghostlands 42.76,16.33
step
  only BloodElf Warlock
  talk Carendin Halgar##5675
  turnin Carendin Summons##10605 |goto Undercity 85.06,25.99
step
  only BloodElf Warlock
  talk Talionia##16647
  turnin Return to Talionia##10788 |goto Silvermoon City 74.39,47.15
step
  only Undead Warlock
  talk Carendin Halgar##5675
  turnin Return to Carendin Halgar##10789 |goto Undercity 85.06,25.99
step
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  turnin Return to Gan'rul Bloodeye##10790 |goto Orgrimmar 48.25,45.28
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin Rude Awakening##363 |goto Tirisfal Glades 30.84,66.2
step
  talk Magistrix Erona##15278
  turnin Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  talk Gornek##3143
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Warlock
  talk Doan Karhan##6247
  turnin The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4737 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4739 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4968 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4969 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Tabetha##6546
  turnin Fragments of the Orb of Orahil##1799 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Shard of a Felhound##4962 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Shard of an Infernal##4963 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Impsy##14470
  turnin Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Lorekeeper Mykos##14382
  turnin Harnessing Shadows##7502 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Wraps##8059 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Mantle##8076 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Robes##8077 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8106 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Kandrostrasz##15503
  turnin Doomcaller's Footwraps##8660 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Vethsera##15504
  turnin Doomcaller's Robes##8661 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  turnin Doomcaller's Circlet##8662 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  turnin Doomcaller's Trousers##8663 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  turnin Doomcaller's Mantle##8664 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Keyl Swiftclaw##15500
  turnin Shroud of Unspoken Names##8694 |goto Silithus 51.76,39.54
step
  only Warlock
  talk Windcaller Yessendra##15498
  turnin Ring of Unspoken Names##8702 |goto Silithus 52.05,38.16
step
  only Warlock
  talk Warden Haro##15499
  turnin Kris of Unspoken Names##8710 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Mokvar##16012
  turnin An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Anachronos##15192
  turnin Frame of Atiesh##9250 |goto Tanaris 64.2,51.42
step
  only Undead Warlock
  talk Carendin Halgar##5675
  accept Creature of the Void##1473 |goto Undercity 85.06,25.99
step
  only Warlock
  talk Godrick Farsan##5693
  accept Hearts of the Pure##1476 |goto Undercity 84.81,14.83
step
  only Warlock
  talk Ruzan##5765
  accept Vile Familiars##1499 |goto Durotar 42.59,69.0
step
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  accept Creature of the Void##1501 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Cazul##5909
  accept Blind Cazul##1508 |goto Orgrimmar 47.06,46.43
step
  only Warlock
  talk Jorah Annison##6293
  accept Tome of the Cabal##1803 |goto Undercity 75.92,37.89
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Rage of Blood##7563 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Impsy##14470
  accept Flawless Fel Essence##7602 |goto Felwood 41.36,45.02
step
  only BloodElf Warlock
  click Voidstone##181698
  accept The Rune of Summoning##9619 |goto Ghostlands 42.76,16.33
step
  only Orc Warlock
  talk Gornek##3143
  accept Tainted Parchment##3090 |goto Durotar 42.06,68.33
step
  only Warlock
  talk Magistrix Erona##15278
  accept Warlock Training##8563 |goto Eversong Woods 38.21,20.83
step
  only Undead
  talk Shadow Priest Sarvis##1569
  accept The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4781 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Tabetha##6546
  accept Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Impsy##14470
  accept The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8107 |goto Stranglethorn Vale 15.34,16.12
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Anachronos##15192
  accept Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  only Undead Warlock
  note Recover Egalin's Grimoire and bring it to Carendin Halgar in the Temple of the Damned.
  collect Egalin's Grimoire##6285 |q 1473 |goto Tirisfal Glades 51.06,67.57 |tip {dropsfrom}Perrine's Chest
step
  only Warlock
  note Bring the hearts of Dalin Forgewright and Comar Villard to Carendin Halgar in the Temple of the Damned.
  collect Dalin's Heart##6312 |q 1476 |goto Silverpine Forest 47.6,85.65 |tip {dropsfrom}Dalin Forgewright
step
  only Orc Warlock
  note Retrieve the Tablet of Verga for Gan'rul Bloodeye in Orgrimmar.
  collect Tablet of Verga##6535 |q 1501 |goto Durotar 51.62,9.76 |tip {dropsfrom}Burning Blade Stash
step
  only Warlock
  note Retrieve the Moldy Tome and Tattered Manuscript for Jorah Annison in the Undercity.
  collect Moldy Tome##6931 |q 1803 |goto Hillsbrad Foothills 27.78,72.79 |tip {dropsfrom}Tome of the Cabal
step
  only Warlock
  note Bring 30 bottles of Raging Beast's Blood to Mor'zul Bloodbringer in the Burning Steppes.
  collect 30 Raging Beast's Blood##18590 |q 7563 |goto Winterspring 44.49,38.29 |tip {dropsfrom}Ragged Owlbeast, Raging Owlbeast, Crazed Owlbeast
step
  only Warlock
  note Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
  collect Flawless Fel Essence (Azshara)##18624 |q 7602 |goto Azshara 61.87,19.68 |tip {dropsfrom}Legashi Satyr, Legashi Rogue, Legashi Hellcaller
step
  only BloodElf Warlock
  note Use the Voidstone to summon a Voidwalker in Goldenmist Village, defeat it, and return to Talionia in Silvermoon City.
  kill Summoned Voidwalker##5676 |q 9619
step
  only Undead
  note Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
  kill Mindless Zombie##1501 |q 364 |goto Tirisfal Glades 32.54,63.84
step
  only Warlock
  note Bring a Gold Bar to Xizk Goodstitch in Stranglethorn Vale.
  collect Gold Bar##3577 |q 4781 |goto Bloodmyst Isle 52.92,75.29 |tip {dropsfrom}Tattered Chest, Battered Chest, Solid Chest
step
  only Warlock
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 4961 |elite
step
  only Warlock
  note Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
  collect 10 Rotting Wood##20613 |q 8421 |goto Felwood 48.7,23.1 |tip {dropsfrom}Irontree Wanderer, Irontree Stomper, Withered Protector
step
  only Warlock
  collect Kezan's Taint##19602 |q 8107 |goto Stranglethorn Vale 15.34,16.12
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1 |elite
step
  note Anachronos at the Caverns of Time in Tanaris wants the Staff Head of Atiesh and the Base of Atiesh.
  collect Staff Head of Atiesh##22733 |q 9251 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Kel'Thuzad
step
  only Undead Warlock
  talk Carendin Halgar##5675
  turnin Creature of the Void##1473 |goto Undercity 85.06,25.99
step
  only Warlock
  talk Carendin Halgar##5675
  turnin Hearts of the Pure##1476 |goto Undercity 85.06,25.99
step
  only Warlock
  talk Zureetha Fargaze##3145
  turnin Vile Familiars##1499 |goto Durotar 42.85,69.15
step
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  turnin Creature of the Void##1501 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Zankaja##5910
  turnin Blind Cazul##1508 |goto Orgrimmar 37.04,59.45
step
  only Warlock
  talk Jorah Annison##6293
  turnin Tome of the Cabal##1803 |goto Undercity 75.92,37.89
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  turnin Rage of Blood##7563 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Impsy##14470
  turnin Flawless Fel Essence##7602 |goto Felwood 41.36,45.02
step
  only BloodElf Warlock
  talk Talionia##16647
  turnin The Rune of Summoning##9619 |goto Silvermoon City 74.39,47.15
step
  only Orc Warlock
  talk Nartok##3156
  turnin Tainted Parchment##3090 |goto Durotar 40.65,68.52
step
  only Warlock
  talk Summoner Teli'Larien##15283
  turnin Warlock Training##8563 |goto Eversong Woods 38.93,21.44
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only Warlock
  talk Xizk Goodstitch##2670
  turnin Components for the Enchanted Gold Bloodrobe##4781 |goto Stranglethorn Vale 28.71,76.89
step
  only Warlock
  talk Tabetha##6546
  turnin Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Impsy##14470
  turnin The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8107 |goto Stranglethorn Vale 15.34,16.12
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Anachronos##15192
  turnin Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  only Undead Warlock
  talk Carendin Halgar##5675
  accept The Binding##1471 |goto Undercity 85.06,25.99
step
  only Warlock
  talk Carendin Halgar##5675
  accept The Binding##1474 |goto Undercity 85.06,25.99
step
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  accept The Binding##1504 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Zankaja##5910
  accept News of Dogran##1509 |goto Orgrimmar 37.04,59.45
step
  only Warlock
  talk Jorah Annison##6293
  accept Tome of the Cabal##1805 |goto Undercity 75.92,37.89
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Wildeyes##7564 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Impsy##14470
  accept Kroshius' Infernal Core##7603 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Shadow Priest Sarvis##1569
  accept Tainted Scroll##3099 |goto Tirisfal Glades 30.84,66.2
step
  only Warlock
  talk Summoner Teli'Larien##15283
  accept Well Watcher Solanian##10073 |goto Eversong Woods 38.93,21.44
step
  only Warlock
  talk Xizk Goodstitch##2670
  accept Components for the Enchanted Gold Bloodrobe##4782 |goto Stranglethorn Vale 28.71,76.89
step
  only Warlock
  talk Tabetha##6546
  accept Returning the Cleansed Orb##4976 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Impsy##14470
  accept Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8108 |goto Stranglethorn Vale 15.34,16.12
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Robe##9103 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Leggings##9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Circlet##9105 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Sandals##9107 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Gloves##9108 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Belt##9109 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Bindings##9110 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9271 |goto Tanaris 64.2,51.42
step
  only Undead Warlock
  note Using the Runes of Summoning, summon and subdue a voidwalker, then return the Runes of Summoning to Carendin Halgar in the Magic Quarter of the Undercity.
  use Summoned Voidwalker##5676 |q 1471 |tip {useit}
step
  only Warlock
  note Using the Pure Hearts, summon and subdue a succubus, then return the Pure Hearts to Carendin Halgar in the Magic Quarter of the Undercity.
  use Summoned Succubus##5677 |q 1474 |tip {useit}
step
  only Orc Warlock
  note Using the Glyphs of Summoning, summon and subdue a voidwalker, then return the Glyphs of Summoning to Gan'rul Bloodeye in Orgrimmar.
  use Summoned Voidwalker##5676 |q 1504 |tip {useit}
step
  only Warlock
  note Bring the Reconstructed Tome and 3 Rods of Channeling to Strahad Farsan in Ratchet.
  collect Rod of Channeling##6930 |q 1805 |goto Wetlands 53.09,54.36 |tip {dropsfrom}Dragonmaw Shadowwarder, Dragonmaw Bonewarder
step
  only Warlock
  note Search Shatter Scar Vale in Felwood for the remains of Kroshius. When you locate the remains, use the Fel Fire near them and await Kroshius' return. When the infernal has awoken, slay him and take from his corpse Kroshius' Infernal Core.
  collect Kroshius' Infernal Core##18625 |q 7603 |goto Felwood 45.7,34.76 |tip {dropsfrom}Kroshius
step
  only Warlock
  note Bring a total of 6 Voodoo Feathers from the trolls in sunken temple.
  collect Amber Voodoo Feather##20606 |q 8422 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Warlock
  collect Kezan's Taint##19603 |q 8108 |goto Stranglethorn Vale 15.34,16.12
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Robe if you bring him the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Robe##22351 |q 9103 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Leggings if you bring him the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Leggings##22366 |q 9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Circlet if you bring him the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  collect Desecrated Circlet##22367 |q 9105 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Shoulderpads if you bring him the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Shoulderpads##22368 |q 9106 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Sandals if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Sandals##22372 |q 9107 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Gloves if you bring him the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  collect Desecrated Gloves##22371 |q 9108 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Belt if you bring him the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  collect Desecrated Belt##22370 |q 9109 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Bindings if you bring him the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  collect Desecrated Bindings##22369 |q 9110 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Warlock
  note Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him.
  kill Atiesh##16387 |q 9271 |raid
step
  only Undead Warlock
  talk Carendin Halgar##5675
  turnin The Binding##1471 |goto Undercity 85.06,25.99
step
  only Warlock
  talk Carendin Halgar##5675
  turnin The Binding##1474 |goto Undercity 85.06,25.99
step
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  turnin The Binding##1504 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Gazrog##3464
  turnin News of Dogran##1509 |goto The Barrens 51.93,30.32
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Tome of the Cabal##1805 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Wildeyes##7564 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Niby the Almighty##14469
  turnin Kroshius' Infernal Core##7603 |goto Felwood 41.38,44.85
step
  only Warlock
  talk Maximillion##2126
  turnin Tainted Scroll##3099 |goto Tirisfal Glades 30.91,66.34
step
  only Warlock
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10073 |goto Eversong Woods 38.76,19.36
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4782 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Impsy##14470
  turnin Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8108 |goto Stranglethorn Vale 15.34,16.12
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Robe##9103 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Leggings##9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Circlet##9105 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Sandals##9107 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Gloves##9108 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Belt##9109 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Bindings##9110 |goto Eastern Plaguelands 81.39,58.23
step
  only Warlock
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9271 |goto Tanaris 64.2,51.42
step
  only Warlock
  talk Gazrog##3464
  accept News of Dogran##1510 |goto The Barrens 51.93,30.32
step
  only Warlock
  talk Strahad Farsan##6251
  accept The Binding##1795 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Lord Banehollow##7623 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Bell of Dethmoora##7626 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Wheel of the Black March##7627 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Doomsday Candle##7628 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  accept The Completed Orb of Dar'Orahil##4964 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  accept The Completed Orb of Noh'Orahil##4975 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Unstoppable Taint##8109 |goto Stranglethorn Vale 15.34,16.12
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Warlock
  note Using the Tome of the Cabal, summon and subdue a felhunter, then return the Tome of the Cabal to Strahad Farsan in Ratchet.
  use Summoned Felhunter##6268 |q 1795 |tip {useit}
step
  only Warlock
  note Bring 2 Elixirs of Shadow Power to Gorzeeki Wildeyes in the Burning Steppes.
  collect 2 Elixir of Shadow Power##9264 |q 7626 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Bring 6 Large Brilliant Shards and 25 Dark Iron Ore to Gorzeeki in the Burning Steppes.
  collect 6 Large Brilliant Shard##14344 |q 7627 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Bring 3 Black Dragonscales to Gorzeeki Wildeyes in the Burning Steppes.
  collect 3 Black Dragonscale##15416 |q 7628 |goto Burning Steppes 87.2,52.28 |tip {dropsfrom}Black Dragonspawn, Black Wyrmkin, Flamescale Dragonspawn
step
  only Warlock
  note Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.
  collect 10 Vial of Hatefury Blood##6989 |q 4783 |goto Desolace 74.45,18.85 |tip {dropsfrom}Hatefury Rogue, Hatefury Trickster, Hatefury Felsworn
step
  only Warlock
  collect Kezan's Taint##19604 |q 8109 |goto Stranglethorn Vale 15.34,16.12
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.76 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  only Warlock
  talk Ken'zigla##4197
  turnin News of Dogran##1510 |goto Stonetalon Mountains 73.25,95.13
step
  only Warlock
  talk Strahad Farsan##6251
  turnin The Binding##1795 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Lord Banehollow##7623 |goto Felwood 35.93,44.42
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
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin The Completed Orb of Dar'Orahil##4964 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin The Completed Orb of Noh'Orahil##4975 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Unstoppable Taint##8109 |goto Stranglethorn Vale 15.34,16.12
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Ken'zigla##4197
  accept Ken'zigla's Draught##1511 |goto Stonetalon Mountains 73.25,95.13
step
  only Warlock
  talk Lord Banehollow##9516
  accept Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Arcanite##7630 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Xizk Goodstitch##2670
  accept Fine Gold Thread##4785 |goto Stranglethorn Vale 28.71,76.89
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Warlock
  note Confront Ulathek, then bring The Traitor's Heart to Lord Banehollow in Jaedenar.
  collect The Traitor's Heart##18719 |q 7624 |goto Felwood 40.76,48.42 |tip {dropsfrom}Ulathek
step
  only Warlock
  note Bring 1 Arcanite Bar to Gorzeeki in the Burning Steppes.
  collect 1 Arcanite Bar##12360 |q 7630 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  note Bring some Fine Gold Thread, 2 Smoldering Coals, and a Soul Shard to Menara Voidrender in the Barrens.
  collect Fine Gold Thread##12293 |q 4784 |goto The Barrens 62.51,35.45
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  only Warlock
  talk Grunt Logmar##5911
  turnin Ken'zigla's Draught##1511 |goto The Barrens 44.62,59.27
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Arcanite##7630 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Xizk Goodstitch##2670
  turnin Fine Gold Thread##4785 |goto Stranglethorn Vale 28.71,76.89
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Grunt Logmar##5911
  accept Dogran's Captivity##1515 |goto The Barrens 44.62,59.27
step
  only Warlock
  talk Lord Banehollow##9516
  accept Xorothian Stardust##7625 |goto Felwood 35.93,44.42
step
  only Warlock
  talk Menara Voidrender##6266
  accept The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only Warlock
  note Purchase Xorothian Stardust from Ur'dan. Bring it to Gorzeeki Wildeyes in the Burning Steppes.
  collect Xorothian Stardust##18687 |q 7625 |goto Felwood 35.93,44.42
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  collect Fel Elemental Rod##21939 |q 8928 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Grunt Dogran##5908
  turnin Dogran's Captivity##1515 |goto The Barrens 43.3,47.89
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Xorothian Stardust##7625 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Menara Voidrender##6266
  turnin The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Grunt Dogran##5908
  accept Love's Gift##1512 |goto The Barrens 43.3,47.89
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  only Warlock
  note Bring the Imp in a Jar to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes.
  kill J'eevee##14500 |q 7629
step
  only Warlock
  talk Gan'rul Bloodeye##5875
  turnin Love's Gift##1512 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  talk Gan'rul Bloodeye##5875
  accept The Binding##1513 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Dreadsteed of Xoroth##7631 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Mokvar##16012
  accept Just Compensation##8943 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Using Dogran's Pendant, summon and subdue a succubus, then return Dogran's Pendant to Gan'rul Bloodeye in Orgrimmar.
  use Summoned Succubus##5677 |q 1513 |tip {useit}
step
  only Warlock
  note Read Mor'zul's Instructions. Summon a Xorothian Dreadsteed, defeat it, then bind its spirit to you.
  kill Xorothian Dreadsteed##14502 |q 7631 |elite
step
  only Warlock
  note Bring a Dreadmist Belt and a set of Dreadmist Wraps to Mokvar in Orgrimmar.
  collect Dreadmist Belt##16702 |q 8943 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Thuzadin Shadowcaster, Thuzadin Necromancer, Crimson Conjuror
step
  only Warlock
  talk Gan'rul Bloodeye##5875
  turnin The Binding##1513 |goto Orgrimmar 48.25,45.28
step
  only Warlock
  talk Dreadsteed Spirit##14504
  turnin Dreadsteed of Xoroth##7631
step
  only Warlock
  talk Mokvar##16012
  turnin Just Compensation##8943 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  kill Ysida Harmon##16031 |q 8945
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 30.85,16.75
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  collect Top Piece of Lord Valthalak's Amulet##22047 |q 9015 |goto Dire Maul - Dungeon -1,-1 |tip {dropsfrom}Theldren
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 30.85,16.75
step
  only Warlock
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9021 |goto Eastern Plaguelands 30.85,16.75
step
  only Warlock
  note Return to Mokvar in Orgimmar with a set of Dreadmist Sandals, Dreadmist Leggings and Dreadmist Mantle.
  collect Dreadmist Sandals##16704 |q 9021 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baroness Anastari
step
  only Warlock
  talk Mokvar##16012
  turnin Anthion's Parting Words##9021 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032
step
  talk Bodley##16033
  accept Three Kings of Flame##8961
step
  note Gather the Incendicite of Incendius, the Ember of Emberseer and the Cinder of Cynders, along with a Hallowed Brazier, and return them to Bodley inside Blackrock Mountain.
  collect Incendicite of Incendius##21987 |q 8961 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |tip {dropsfrom}Lord Incendius
step
  talk Bodley##16033
  turnin Three Kings of Flame##8961
step
  talk Bodley##16033
  accept Components of Importance##8965
step
  note Obtain Soul Ashes of the Banished and return them to Bodley inside Blackrock Mountain.
  kill Cursed Paladin##7071 |goto Hillsbrad Foothills 18.45,76.6 |elite
  collect Soul Ashes of the Banished##22229 |q 8965 |goto Hillsbrad Foothills 18.45,76.6
step
  talk Bodley##16033
  turnin Components of Importance##8965
step
  talk Bodley##16033
  accept More Components of Importance##8986
step
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  collect Druidical Remains##22226 |q 8986 |goto Silithus 61.05,86.89 |tip {dropsfrom}Hive'Regal Ambusher, Hive'Regal Burrower, Hive'Regal Spitfire
step
  talk Bodley##16033
  turnin More Components of Importance##8986
step
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989
step
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8989 |elite
step
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989
step
  talk Bodley##16033
  accept Final Preparations##8994
step
  note Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain.
  collect 40 Blackrock Bracer##22138 |q 8994 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Sentry, Scarshield Acolyte, Scarshield Legionnaire
step
  talk Bodley##16033
  turnin Final Preparations##8994
step
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995
step
  note Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
  use Lord Valthalak##16042 |q 8995 |raid |tip {useit}
step
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995
step
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996
step
  note Return to Bodley inside Blackrock Mountain and give him the Brazier of Beckoning.
  collect Brazier of Beckoning##22056 |q 8996
step
  talk Bodley##16033
  turnin Return to Bodley##8996
step
  talk Bodley##16033
  accept Back to the Beginning##8998
step
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  talk Mokvar##16012
  accept Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Give Mokvar your Dreadmist Mask and Dreadmist Robe.
  collect Dreadmist Mask##16698 |q 9012 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Warlock
  talk Mokvar##16012
  turnin Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29
]])
