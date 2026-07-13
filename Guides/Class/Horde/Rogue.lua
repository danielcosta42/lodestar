-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Rogue", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
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
  only Rogue
  talk Kaplak##3170
  accept Therzok##1859 |goto Durotar 51.98,43.69
step
  only Rogue
  talk Marion Call##2130
  accept Mennet Carkad##1885 |goto Tirisfal Glades 61.75,52.0
step
  only BloodElf Rogue
  talk Zelanis##16684
  accept Find Keltus Darkleaf##9532 |goto Silvermoon City 79.71,52.16
step
  only Rogue
  talk Mennet Carkad##6467
  accept Fenwick Thatros##1998 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Mennet Carkad##6467
  accept Find the Shattered Hand##2378 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Kaplak##3170
  accept To Orgrimmar!##2380 |goto Durotar 51.98,43.69
step
  only Rogue
  talk Zelanis##16684
  accept A Discreet Inquiry##10372 |goto Silvermoon City 79.71,52.16
step
  only Rogue
  talk Zelanis##16684
  accept Rogues of the Shattered Hand##10794 |goto Silvermoon City 79.71,52.16
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Bracers##8063 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Mantle##8072 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Tunic##8073 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Fahrad##6707
  accept Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Rogue
  talk Kandrostrasz##15503
  accept Deathdealer's Boots##8637 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Vethsera##15504
  accept Deathdealer's Vest##8638 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Andorgos##15502
  accept Deathdealer's Helm##8639 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  accept Deathdealer's Leggings##8640 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Andorgos##15502
  accept Deathdealer's Spaulders##8641 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Keyl Swiftclaw##15500
  accept Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Rogue
  talk Windcaller Yessendra##15498
  accept Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  only Rogue
  talk Warden Haro##15499
  accept Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Rogue
  talk Mokvar##16012
  accept An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  note Kill 8 Mana Wyrms; they are located close to the Burning Crystals that are adjacent to the tower and gazebo. Return to Magistrix Erona at the tower on Sunstrider Isle when you are done.
  kill Mana Wyrm##15274 |q 8325 |goto Eversong Woods 36.91,21.9
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  kill Mottled Boar##3098 |q 788 |goto Durotar 44.44,64.81
step
  only Rogue
  note Kill Fenwick Thatros and bring his head back to Mennet Carkad in the Rogues' Quarter of the Undercity.
  kill Fenwick Thatros##6570 |q 1998 |goto Silverpine Forest 59.58,33.94
step
  only Rogue
  note Kill Overseer Glibby and return his Whistle to Rokar Bladeshadow in Durotar.
  get Rokar's Test |q 2018
step
  only Rogue
  note Take the Seal of Ravenholdt to Fahrad at Ravenholdt Manor, hidden away in the hills of Hillsbrad.
  kill Ravenholdt##13936 |q 6681 |goto Alterac Mountains 81.27,74.62
step
  only Rogue
  note Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
  kill Timbermaw Shaman##6188 |q 8234 |goto Azshara 44.21,22.54
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Armsplint. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8063 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Girdle. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8072 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Aegis. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8073 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  only Rogue
  kill Irondeep Trogg##10987 |q 8249 |goto Alterac Valley - Battleground 51.14,6.98
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  only Rogue
  note Bring the Qiraji Bindings of Command, 2 Idols of Strife, 5 Crystal Scarabs and 5 Bone Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  kill Viscidus##15299 |q 8637 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Rogue
  note Bring the the Carapace of the Old God, 2 Idols of Strife, 5 Bronze Scarabs and 5 Ivory Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  kill C'Thun##15727 |q 8638 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Rogue
  note Bring Vek'lor's Diadem, 2 Idols of the War, 5 Gold Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  kill Emperor Vek'lor##15276 |q 8639 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Rogue
  note Bring Ouro's Intact Hide, 2 Idols of Night, 5 Stone Scarabs and 5 Crystal Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  get Deathdealer's Leggings |q 8640 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  note Bring the Qiraji Bindings of Command, 2 Idols of the Sun, 5 Silver Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  kill Viscidus##15299 |q 8641 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Rogue
  note Bring 1 Qiraji Martial Drape, 2 Azure Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  kill General Rajaxx##15341 |q 8693 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Rogue
  note Bring 1 Qiraji Ceremonial Ring, 2 Onyx Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8701 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Rogue
  note Bring 1 Qiraji Spiked Hilt, 2 Vermillion Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8709 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Rogue
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Shadowcraft Bracers to Mokvar in Orgrimmar.
  kill Stonelash Scorpid##11735 |q 8917 |goto Silithus 59.92,28.33
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9121 |goto Burning Steppes 62.76,44.03
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
  only Rogue
  talk Therzok##6446
  turnin Therzok##1859 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  talk Mennet Carkad##6467
  turnin Mennet Carkad##1885 |goto Undercity 83.51,69.11
step
  only BloodElf Rogue
  talk Keltus Darkleaf##17224
  turnin Find Keltus Darkleaf##9532 |goto Ghostlands 32.98,11.17
step
  only Rogue
  talk Mennet Carkad##6467
  turnin Fenwick Thatros##1998 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Shenthul##3401
  turnin Find the Shattered Hand##2378 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Shenthul##3401
  turnin To Orgrimmar!##2380 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Eralan##16268
  turnin A Discreet Inquiry##10372 |goto Ghostlands 47.2,34.31
step
  only Rogue
  talk Fahrad##6707
  turnin The Manor, Ravenholdt##6681 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  talk Shenthul##3401
  turnin Rogues of the Shattered Hand##10794 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Lorekeeper Kildrath##14383
  turnin Garona: A Study on Stealth and Treachery##7498 |goto Dire Maul - Dungeon -1,-1
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Bracers##8063 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Mantle##8072 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Tunic##8073 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Fahrad##6707
  turnin Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Rogue
  talk Kandrostrasz##15503
  turnin Deathdealer's Boots##8637 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Vethsera##15504
  turnin Deathdealer's Vest##8638 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Andorgos##15502
  turnin Deathdealer's Helm##8639 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  turnin Deathdealer's Leggings##8640 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Andorgos##15502
  turnin Deathdealer's Spaulders##8641 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Keyl Swiftclaw##15500
  turnin Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Rogue
  talk Windcaller Yessendra##15498
  turnin Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  only Rogue
  talk Warden Haro##15499
  turnin Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Rogue
  talk Mokvar##16012
  turnin An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Troll Rogue
  talk Gornek##3143
  accept Encrypted Tablet##3083 |goto Durotar 42.06,68.33
step
  only Rogue
  talk Gornek##3143
  accept Encrypted Parchment##3088 |goto Durotar 42.06,68.33
step
  only Rogue
  talk Magistrix Erona##15278
  accept Rogue Training##9392 |goto Eversong Woods 38.21,20.83
step
  only Undead
  talk Shadow Priest Sarvis##1569
  accept The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only BloodElf Rogue
  talk Keltus Darkleaf##17224
  accept Combining Forces##9460 |goto Ghostlands 32.98,11.17
step
  only Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Therzok##6446
  accept The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  talk Shenthul##3401
  accept Zando'zan##2379 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Eralan##16268
  accept Greed##9491 |goto Ghostlands 47.2,34.31
step
  only Rogue
  talk Mennet Carkad##6467
  accept Tools of the Trade##1999 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Ravenholdt Guard##6766
  accept Syndicate Emblems##6701 |goto Alterac Mountains 84.53,78.71
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  only Undead
  note Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
  kill Mindless Zombie##1501 |q 364 |goto Tirisfal Glades 32.54,63.84
step
  only BloodElf Rogue
  note Keltus Darkleaf wants you to pickpocket the Lacy Handkerchief from the Sentinel Leader and bring it to him.
  get Combining Forces |q 9460 |goto Ghostlands 32.98,11.17
step
  only Rogue
  note Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.
  kill Astor Hadren##6497 |q 1886 |goto Silverpine Forest 49.71,32.22
step
  only Rogue
  note Kill Tazan and bring his Satchel to Therzok in the Cleft of Shadow in Orgrimmar.
  kill Tazan##6494 |q 1963 |goto The Barrens 63.11,44.29
step
  only Rogue
  note Eralan in Tranquillien wants you to retrieve the Pitted Gold Band from the Amani Catacombs.
  collect Burial Chest##181665 |q 9491 |goto Ghostlands 63.52,28.92
step
  only Rogue
  note Find the Dalaran Status Report and return it to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Ambermill Strongbox##103815 |q 1999 |goto Silverpine Forest 63.71,65.24
step
  only Rogue
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  kill Thunderhead Stagwing##6377 |q 8235 |goto Azshara 36.82,42.87
step
  only Rogue
  get Syndicate Emblems |q 6701 |goto Alterac Mountains 84.53,78.71
step
  only Rogue
  get Zandalarian Shadow Talisman |q 8142 |goto Stranglethorn Vale 14.08,13.72
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  get Glyph Chasing |q 8309 |goto Silithus 41.28,88.45
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |q 8310 |goto Silithus 48.5,41.14
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1 |elite
step
  only Troll Rogue
  talk Rwag##3155
  turnin Encrypted Tablet##3083 |goto Durotar 41.28,68.0
step
  only Rogue
  talk Rwag##3155
  turnin Encrypted Parchment##3088 |goto Durotar 41.28,68.0
step
  only Rogue
  talk Pathstalker Kariel##15285
  turnin Rogue Training##9392 |goto Eversong Woods 38.93,20.02
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only BloodElf Rogue
  talk Keltus Darkleaf##17224
  turnin Combining Forces##9460 |goto Ghostlands 32.98,11.17
step
  only Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  talk Zando'zan##3402
  turnin Zando'zan##2379 |goto Orgrimmar 42.73,52.95
step
  only Rogue
  talk Eralan##16268
  turnin Greed##9491 |goto Ghostlands 47.2,34.31
step
  only Rogue
  talk Mennet Carkad##6467
  turnin Tools of the Trade##1999 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Ravenholdt Guard##6766
  turnin Syndicate Emblems##6701 |goto Alterac Mountains 84.53,78.71
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  only Rogue
  talk Shadow Priest Sarvis##1569
  accept Encrypted Scroll##3096 |goto Tirisfal Glades 30.84,66.2
step
  only Rogue
  talk Pathstalker Kariel##15285
  accept Well Watcher Solanian##10071 |goto Eversong Woods 38.93,20.02
step
  only BloodElf Rogue
  talk Keltus Darkleaf##17224
  accept Return the Reports##9618 |goto Ghostlands 32.98,11.17
step
  only Rogue
  talk Therzok##6446
  accept The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1898 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Zando'zan##3402
  accept Wrenix of Ratchet##2382 |goto Orgrimmar 42.73,52.95
step
  only Rogue
  talk Eralan##16268
  accept The Sad Truth##10548 |goto Ghostlands 47.2,34.31
step
  only Rogue
  talk Archmage Xylem##8379
  accept The Azure Key##8236 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Breastplate##9077 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Legplates##9078 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Helmet##9079 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Sabatons##9081 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Waistguard##9083 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Bracers##9084 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Steal Tazan's key, then use it to open his Satchel and deliver its contents to Therzok in the Cleft of Shadow in Orgrimmar.
  kill Tazan##6494 |q 1858 |goto The Barrens 63.11,44.29
step
  only Rogue
  note Eralan in Tranquillien wants you to retrieve the Archeologist's Shrunken Head from one of the chests in Zeb'Tela or Zeb'Nowa.
  collect Primitive Chest##184793 |q 10548 |goto Ghostlands 75.03,46.98
step
  only Rogue
  note Return the Azure Key to Lord Jorach Ravenholdt.
  kill Morphaz##5719 |q 8236 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite
step
  only Rogue
  get Zandalarian Shadow Talisman |q 8143 |goto Stranglethorn Vale 14.08,13.72
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  get The Ectoplasmic Distiller |q 8921 |goto Tanaris 52.47,27.23
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Breastplate if you bring him the following: 1 Desecrated Breastplate, 25 Wartorn Leather Scraps, 2 Arcanite Bars and 6 Cured Rugged Hides.
  get Bonescythe Breastplate |q 9077 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Legplates if you bring him the following: 1 Desecrated Legplates, 20 Wartorn Leather Scraps, 1 Arcanite Bar, 8 Cured Rugged Hides and 100 gold pieces.
  get Bonescythe Legplates |q 9078 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Helmet if you bring him the following: 1 Desecrated Helmet, 15 Wartorn Leather Scraps, 8 Cured Rugged Hides, 1 Nexus Crystal and 75 gold pieces.
  get Bonescythe Helmet |q 9079 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Pauldrons if you bring him the following: 1 Desecrated Pauldrons, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 50 gold pieces.
  kill Grobbulus##15931 |q 9080 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Sabatons if you bring him the following: 1 Desecrated Sabatons, 12 Wartorn Leather Scraps, 3 Cured Rugged Hides, 2 Nexus Crystals and 25 gold pieces.
  kill Gluth##15932 |q 9081 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Gauntlets if you bring him the following: 1 Desecrated Gauntlets, 8 Wartorn Leather Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Bonescythe Gauntlets |q 9082 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Waistguard if you bring him the following: 1 Desecrated Waistguard, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 15 gold pieces.
  kill Gluth##15932 |q 9083 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Bracers if you bring him the following: 1 Desecrated Bracers, 6 Wartorn Leather Scraps, 1 Arcanite Bar, 2 Cured Rugged Hides and 10 gold pieces.
  kill Gluth##15932 |q 9084 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  talk David Trias##2122
  turnin Encrypted Scroll##3096 |goto Tirisfal Glades 32.53,65.65
step
  only Rogue
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10071 |goto Eversong Woods 38.76,19.36
step
  only BloodElf Rogue
  talk Zelanis##16684
  turnin Return the Reports##9618 |goto Silvermoon City 79.71,52.16
step
  only Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  talk Andron Gant##6522
  turnin The Deathstalkers##1898 |goto Undercity 54.81,76.33
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Wrenix of Ratchet##2382 |goto The Barrens 63.07,36.32
step
  only Rogue
  talk Eralan##16268
  turnin The Sad Truth##10548 |goto Ghostlands 47.2,34.31
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin The Azure Key##8236 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Breastplate##9077 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Legplates##9078 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Helmet##9079 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Sabatons##9081 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Waistguard##9083 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Bracers##9084 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Andron Gant##6522
  accept The Deathstalkers##1899 |goto Undercity 54.81,76.33
step
  only Rogue
  talk Wrenix the Wretched##7161
  accept Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Rogue
  note Bring Andron's Ledger to Mennet Carkad in the Rogues' Quarter of Undercity.
  collect Andron's Bookshelf##103600 |q 1899 |goto Undercity 55.4,76.96
step
  only Rogue
  note Bring the Southsea Treasure back to Wrenix the Wretched in Ratchet. Do not forget to get an E.C.A.C. and Thieves' Tools from Wrenix's Gizmotronic Apparatus. You will need both of these items to complete your mission.
  get Plundering the Plunderers |q 2381 |goto The Barrens 63.07,36.32
step
  only Rogue
  get Zandalarian Shadow Mastery Talisman |q 8144 |goto Stranglethorn Vale 14.08,13.72
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  get The Calling |q 8315 |goto Silithus 49.67,37.46
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  kill Tortured Druid##12178 |q 8924 |goto Silithus 62.65,52.76
step
  only Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1899 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1978 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Geologist Larksbane##15183
  accept Armaments of War##8378 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  kill Magma Lord Bokk##16043 |q 8925 |goto Burning Steppes 35.39,57.76
step
  only Rogue
  talk Varimathras##2425
  turnin The Deathstalkers##1978 |goto Undercity 56.25,92.2
step
  only Rogue
  talk Geologist Larksbane##15183
  turnin Armaments of War##8378 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  get A Shifty Merchant |q 8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  talk Mokvar##16012
  accept Just Compensation##8941 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Mokvar in Orgrimmar.
  kill Scarshield Legionnaire##9097 |q 8941 |goto Blackrock Spire - Dungeon -1,-1
step
  only Rogue
  talk Mokvar##16012
  turnin Just Compensation##8941 |goto Orgrimmar 34.95,38.29
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
  get Anthion's Strange Request |q 8947 |goto Eastern Plaguelands 30.85,16.75
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
  kill Highlord Omokk##9196 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  kill Eldreth Sorcerer##11470 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  get The Challenge |q 9015 |goto Dire Maul - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 30.85,16.75
step
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9020 |goto Eastern Plaguelands 30.85,16.75
step
  only Rogue
  note Return to Mokvar in Orgimmar with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  kill Rattlegore##11622 |q 9020 |goto Scholomance - Dungeon -1,-1 |elite
step
  only Rogue
  talk Mokvar##16012
  turnin Anthion's Parting Words##9020 |goto Orgrimmar 34.95,38.29
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
  kill Lord Incendius##9017 |q 8961 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Bodley##16033
  turnin Three Kings of Flame##8961
step
  talk Bodley##16033
  accept Components of Importance##8965
step
  note Obtain Soul Ashes of the Banished and return them to Bodley inside Blackrock Mountain.
  kill Cursed Paladin##7071 |q 8965 |goto Hillsbrad Foothills 18.45,76.6 |elite
step
  talk Bodley##16033
  turnin Components of Importance##8965
step
  talk Bodley##16033
  accept More Components of Importance##8986
step
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |q 8986 |goto Silithus 61.05,86.89
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
  kill Scarshield Acolyte##9045 |q 8994 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Bodley##16033
  turnin Final Preparations##8994
step
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995
step
  note Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
  kill Lord Valthalak##16042 |q 8995 |raid
step
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995
step
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996
step
  note Return to Bodley inside Blackrock Mountain and give him the Brazier of Beckoning.
  get Return to Bodley |q 8996
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
  only Rogue
  talk Mokvar##16012
  accept Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Give Mokvar your Shadowcraft Cap and Shadowcraft Tunic.
  get Saving the Best for Last |q 9010 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  talk Mokvar##16012
  turnin Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
]])
