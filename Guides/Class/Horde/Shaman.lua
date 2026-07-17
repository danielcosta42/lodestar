-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Shaman", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Shaman
  talk Tiev Mordune##7007
  accept Call of Water##1103 |goto Silverpine Forest 37.34,44.15
step
  only Shaman
  talk Telf Joolam##5900
  accept Fire Sapta##1464 |goto Durotar 38.55,58.96
step
  only Shaman
  talk Searn Firewarder##5892
  accept Call of Fire##1522 |goto Orgrimmar 37.96,37.73
step
  only Shaman
  talk Beram Skychaser##3032
  accept Call of Fire##1523 |goto Thunder Bluff 21.99,18.8
step
  only Shaman
  talk Searn Firewarder##5892
  accept Call of Water##1528 |goto Orgrimmar 37.96,37.73
step
  only Shaman
  talk Xanis Flameweaver##5906
  accept Call of Water##1529 |goto Thunder Bluff 25.16,20.51
step
  only Shaman
  talk Searn Firewarder##5892
  accept Call of Air##1531 |goto Orgrimmar 37.96,37.73
step
  only Shaman
  talk Xanis Flameweaver##5906
  accept Call of Air##1532 |goto Thunder Bluff 25.16,20.51
step
  only Shaman
  talk Swart##3173
  accept Call of Fire##2983 |goto Durotar 54.42,42.59
step
  only Shaman
  talk Narm Skychaser##3066
  accept Call of Fire##2984 |goto Mulgore 48.38,59.15
step
  only Shaman
  talk Swart##3173
  accept Call of Water##2985 |goto Durotar 54.42,42.59
step
  only Shaman
  talk Narm Skychaser##3066
  accept Call of Water##2986 |goto Mulgore 48.38,59.15
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.88,77.07
step
  talk Gornek##3143
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Shaman
  talk Seer Ravenfeather##5888
  accept Earth Sapta##1462 |goto Mulgore 44.73,76.19
step
  only Shaman
  talk Canaga Earthcaller##5887
  accept Earth Sapta##1463 |goto Durotar 42.4,69.17
step
  only Shaman
  talk Canaga Earthcaller##5887
  accept Call of Earth##1516 |goto Durotar 42.4,69.17
step
  only Tauren Shaman
  talk Seer Ravenfeather##5888
  accept Call of Earth##1519 |goto Mulgore 44.73,76.19
step
  only Shaman
  talk Haromm##986
  accept Elemental Mastery##8410 |goto Swamp of Sorrows 48.19,57.94
step
  only Shaman
  kill Prince Tortheldrin##11486 |goto Dire Maul - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept Material Assistance##7667 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept Again Into the Great Ossuary##7669 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept A More Fitting Reward##8259 |goto Orgrimmar 38.66,35.92
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Shaman
  talk Andorgos##15502
  accept Stormcaller's Pauldrons##8602 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Kandrostrasz##15503
  accept Stormcaller's Footguards##8621 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Vethsera##15504
  accept Stormcaller's Hauberk##8622 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Andorgos##15502
  accept Stormcaller's Diadem##8623 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Kandrostrasz##15503
  accept Stormcaller's Leggings##8624 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Keyl Swiftclaw##15500
  accept Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  only Shaman
  talk Windcaller Yessendra##15498
  accept Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Shaman
  talk Warden Haro##15499
  accept Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  only Shaman
  talk Mokvar##16012
  accept An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Shaman
  note Bring a Water Sapta to Tiev Mordune in Silverpine Forest if you failed to speak to the Minor Manifestation of Water.
  collect Water Sapta##6637 |q 1103 |goto Silverpine Forest 37.34,44.15
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  collect Plainstrider Meat##4739 |q 747 |goto Mulgore 48.53,81.85 |tip {dropsfrom}Plainstrider
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  kill Mottled Boar##3098 |q 788 |goto Durotar 44.44,64.81
step
  only Shaman
  note Bring 2 Felstalker Hooves to Canaga Earthcaller in the Valley of Trials.
  collect 2 Felstalker Hoof##6640 |q 1516 |goto Durotar 44.29,54.18 |tip {dropsfrom}Felstalker
step
  only Tauren Shaman
  note Bring 2 applications of Ritual Salve to Seer Ravenfeather in Camp Narache.
  collect 2 Ritual Salve##6634 |q 1519 |goto Mulgore 63.65,77.81 |tip {dropsfrom}Bristleback Shaman
step
  only Shaman
  note Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
  collect Elemental Air##7069 |q 8410 |goto Westfall 42.75,49.32 |tip {dropsfrom}Dust Devil, Thundering Exile, Cyclonian
step
  only Shaman
  note If you are interested in helping Sagorne Crestrider in Orgrimmar's Valley of Wisdom, bring him an Azerothian Diamond and a Pristine Black Diamond.
  collect Azerothian Diamond##12800 |q 7667 |goto Azshara 59.31,79.76 |tip {dropsfrom}Cliff Breaker, Anubisath Guardian, Small Thorium Vein
step
  only Shaman
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth spirits you must fight. Defeating these spirits will summon forth Death Knight Darkreaver; defeat him.
  collect Darkreaver's Head##18880 |q 7668 |tip {dropsfrom}Death Knight Darkreaver
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Armsplint. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Armsplint##19717 |q 8056 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Girdle. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Girdle##19719 |q 8074 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Tabard. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Tabard##19722 |q 8075 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  only Shaman
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Life, 5 Gold Scarabs and 5 Crystal Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Dominance##20932 |q 8602 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Shaman
  note Bring the Qiraji Bindings of Dominance, 2 Idols of the Sage, 5 Bronze Scarabs and 5 Clay Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Dominance##20932 |q 8621 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Shaman
  note Bring the Carapace of the Old God, 2 Idols of the Sage, 5 Silver Scarabs and 5 Bone Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Carapace of the Old God##20929 |q 8622 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Shaman
  note Bring Vek'lor's Diadem, 2 Idols of Rebirth, 5 Stone Scarabs and 5 Crystal Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'lor's Diadem##20930 |q 8623 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Emperor Vek'lor
step
  only Shaman
  note Bring the Skin of the Great Sandworm, 2 Idols of Strife, 5 Bronze Scarabs and 5 Ivory Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Skin of the Great Sandworm##20931 |q 8624 |goto Ahn'Qiraj - Raid -1,-1 |tip {dropsfrom}Ouro
step
  only Shaman
  note Bring 1 Qiraji Regal Drape, 2 Obsidian Idols, 5 Clay Scarabs and 5 Gold Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8690 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Shaman
  note Bring 1 Qiraji Magisterial Ring, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8698 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Shaman
  note Bring 1 Qiraji Spiked Hilt, 2 Amber Idols, 5 Ivory Scarabs and 5 Bronze Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8706 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Shaman
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bindings of Elements to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8918 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  only Shaman
  talk Tiev Mordune##7007
  turnin Call of Water##1103 |goto Silverpine Forest 37.34,44.15
step
  only Shaman
  talk Telf Joolam##5900
  turnin Fire Sapta##1464 |goto Durotar 38.55,58.96
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##1522 |goto The Barrens 56.03,19.89
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##1523 |goto The Barrens 56.03,19.89
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Call of Water##1528 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Call of Water##1529 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Prate Cloudseer##5905
  turnin Call of Air##1531 |goto Thousand Needles 53.54,42.65
step
  only Shaman
  talk Prate Cloudseer##5905
  turnin Call of Air##1532 |goto Thousand Needles 53.54,42.65
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##2983 |goto The Barrens 56.03,19.89
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##2984 |goto The Barrens 56.03,19.89
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Call of Water##2985 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Call of Water##2986 |goto The Barrens 65.83,43.78
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.88,77.07
step
  talk Gornek##3143
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Shaman
  talk Seer Ravenfeather##5888
  turnin Earth Sapta##1462 |goto Mulgore 44.73,76.19
step
  only Shaman
  talk Canaga Earthcaller##5887
  turnin Earth Sapta##1463 |goto Durotar 42.4,69.17
step
  only Shaman
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1516 |goto Durotar 42.4,69.17
step
  only Tauren Shaman
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1519 |goto Mulgore 44.73,76.19
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Mastery##8410 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Lorekeeper Javon##14381
  turnin Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin Material Assistance##7667 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin Again Into the Great Ossuary##7669 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin A More Fitting Reward##8259 |goto Orgrimmar 38.66,35.92
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Shaman
  talk Andorgos##15502
  turnin Stormcaller's Pauldrons##8602 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Kandrostrasz##15503
  turnin Stormcaller's Footguards##8621 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Vethsera##15504
  turnin Stormcaller's Hauberk##8622 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Andorgos##15502
  turnin Stormcaller's Diadem##8623 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Kandrostrasz##15503
  turnin Stormcaller's Leggings##8624 |goto Ahn'Qiraj - Raid -1,-1
step
  only Shaman
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  only Shaman
  talk Windcaller Yessendra##15498
  turnin Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Shaman
  talk Warden Haro##15499
  turnin Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  only Shaman
  talk Mokvar##16012
  turnin An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Shaman
  talk Kranal Fiss##5907
  accept Call of Fire##1524 |goto The Barrens 56.03,19.89
step
  only Shaman
  talk Islen Waterseer##5901
  accept Call of Water##1530 |goto The Barrens 65.83,43.78
step
  only Troll Shaman
  talk Gornek##3143
  accept Rune-Inscribed Tablet##3084 |goto Durotar 42.06,68.33
step
  only Orc Shaman
  talk Gornek##3143
  accept Rune-Inscribed Parchment##3089 |goto Durotar 42.06,68.33
step
  only Shaman
  talk Grull Hawkwind##2980
  accept Rune-Inscribed Note##3093 |goto Mulgore 44.88,77.07
step
  only Shaman
  talk Canaga Earthcaller##5887
  accept Call of Earth##1517 |goto Durotar 42.4,69.17
step
  only Tauren Shaman
  talk Seer Ravenfeather##5888
  accept Call of Earth##1520 |goto Mulgore 44.73,76.19
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept The Darkreaver Menace##8258 |goto Orgrimmar 38.66,35.92
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
  only Shaman
  note Bring the pieces for the spirit totem to Bath'rah the Windwatcher.
  collect Bloodshot Spider Eye##20610 |q 8412 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Carrion Lurker, Venom Mist Lurker
step
  only Shaman
  collect Vision of Voodress##19606 |q 8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth spirits you must fight. Defeating these spirits will summon forth Death Knight Darkreaver; defeat him.
  collect Darkreaver's Head##18880 |q 8258 |goto Orgrimmar 38.66,35.92 |tip {dropsfrom}Death Knight Darkreaver
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 41.28,88.45
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 48.5,41.14 |tip {dropsfrom}Hive'Ashi Stinger, Hive'Ashi Worker, Hive'Ashi Defender
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1 |elite
step
  only Shaman
  talk Telf Joolam##5900
  turnin Call of Fire##1524 |goto Durotar 38.55,58.96
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1530 |goto The Barrens 43.42,77.41
step
  only Troll Shaman
  talk Shikrik##3157
  turnin Rune-Inscribed Tablet##3084 |goto Durotar 42.39,69.0
step
  only Orc Shaman
  talk Shikrik##3157
  turnin Rune-Inscribed Parchment##3089 |goto Durotar 42.39,69.0
step
  only Shaman
  talk Meela Dawnstrider##3062
  turnin Rune-Inscribed Note##3093 |goto Mulgore 45.01,75.94
step
  only Shaman
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1517 |goto Mulgore 53.89,80.54
step
  only Tauren Shaman
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1520 |goto Mulgore 53.89,80.54
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin The Darkreaver Menace##8258 |goto Orgrimmar 38.66,35.92
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
  only Shaman
  talk Telf Joolam##5900
  accept Call of Fire##1525 |goto Durotar 38.55,58.96
step
  only Shaman
  talk Brine##5899
  accept Call of Water##1535 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##1518 |goto Mulgore 53.89,80.54
step
  only Tauren Shaman
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##1521 |goto Mulgore 53.89,80.54
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Tunic##9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Headpiece##9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Spaulders##9071 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Boots##9072 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Handguards##9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  note Bring 1 Fire Tar and 1 Reagent Pouch to Telf Joolam in Durotar.
  collect 1 Fire Tar##5026 |q 1525 |goto The Barrens 55.03,26.65 |tip {dropsfrom}Razormane Water Seeker, Razormane Thornweaver, Razormane Geomancer
step
  only Shaman
  note Fill the Empty Brown Waterskin at the watering hole below Brine's hut and return it to her in the Barrens.
  collect Filled Brown Waterskin##7769 |q 1535 |goto The Barrens 43.42,77.41
step
  only Shaman
  note Bring the voodoo feathers to Bath'rah the Windwatcher.
  collect Amber Voodoo Feather##20606 |q 8413 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Shaman
  collect Vision of Voodress##19607 |q 8118 |goto Stranglethorn Vale 15.3,16.02
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  collect Desecrated Legguards##22359 |q 9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 2 Mooncloth.
  collect Desecrated Spaulders##22361 |q 9071 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Boots##22365 |q 9072 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9074 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9075 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Shaman
  talk Telf Joolam##5900
  turnin Call of Fire##1525 |goto Durotar 38.55,58.96
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1535 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1518 |goto Durotar 42.4,69.17
step
  only Tauren Shaman
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1521 |goto Mulgore 44.73,76.19
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Tunic##9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Headpiece##9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Spaulders##9071 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Boots##9072 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Handguards##9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
step
  only Shaman
  talk Telf Joolam##5900
  accept Call of Fire##1526 |goto Durotar 38.55,58.96
step
  only Shaman
  talk Brine##5899
  accept Call of Water##1536 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Shaman
  note Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
  collect Glowing Ember##6655 |q 1526 |goto Durotar 38.72,58.29 |tip {dropsfrom}Minor Manifestation of Fire
step
  only Shaman
  note Fill the Empty Red Waterskin at the well in Tarren Mill and return to Brine in the Barrens.
  collect Filled Red Waterskin##7771 |q 1536 |goto The Barrens 43.42,77.41
step
  only Shaman
  collect Vision of Voodress##19608 |q 8119 |goto Stranglethorn Vale 15.3,16.02
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 49.67,37.46 |tip {dropsfrom}Emissary Roman'khan
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.76 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  only Shaman
  turnin Call of Fire##1526 |goto Durotar 38.96,58.22
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1536 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Shaman
  click Brazier of the Dormant Flame##61934
  accept Call of Fire##1527 |goto Durotar 38.96,58.22
step
  only Shaman
  talk Brine##5899
  accept Call of Water##1534 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Geologist Larksbane##15183
  accept Armaments of War##8380 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Shaman
  note Fill the Empty Blue Waterskin at the Ruins of Stardust in Ashenvale and return to Brine in the Barrens.
  collect Filled Blue Waterskin##7770 |q 1534 |goto The Barrens 43.42,77.41
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##1527 |goto The Barrens 56.03,19.89
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1534 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Geologist Larksbane##15183
  turnin Armaments of War##8380 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Shaman
  talk Brine##5899
  accept Call of Water##220 |goto The Barrens 43.42,77.41
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  collect Fel Elemental Rod##21939 |q 8928 |goto Tanaris 52.47,27.23
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Call of Water##220 |goto The Barrens 65.83,43.78
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only Shaman
  talk Islen Waterseer##5901
  accept Call of Water##63 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Islen Waterseer##5901
  accept Water Sapta##972 |goto The Barrens 65.83,43.78
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  only Shaman
  note Defeat the Corrupt Manifestation of Water and place the Corrupted Manifestation's Bracers along with the Remaining Drops of Purest Water on the Brazier of Everfount in Silverpine Forest.
  collect Corrupt Manifestation's Bracers##7812 |q 63 |goto Silverpine Forest 38.78,44.26 |tip {dropsfrom}Corrupt Minor Manifestation of Water
step
  only Shaman
  turnin Call of Water##63 |goto Silverpine Forest 38.26,44.56
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Water Sapta##972 |goto The Barrens 65.83,43.78
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  click Brazier of Everfount##113791
  accept Call of Water##100 |goto Silverpine Forest 38.26,44.56
step
  only Shaman
  talk Mokvar##16012
  accept Just Compensation##8942 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Bring a Cord of Elements and a set of Gauntlets of Elements to Mokvar in Orgrimmar.
  collect Cord of Elements##16673 |q 8942 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Warlock, Firebrand Invoker, Scarshield Quartermaster
step
  only Shaman
  talk Minor Manifestation of Water##5895
  turnin Call of Water##100
step
  only Shaman
  talk Mokvar##16012
  turnin Just Compensation##8942 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  talk Minor Manifestation of Water##5895
  accept Call of Water##96
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Call of Water##96 |goto The Barrens 65.83,43.78
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
  only Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8957 |goto Eastern Plaguelands 30.85,16.75
step
  only Shaman
  note Return to Mokvar in Orgimmar with a set of Boots of Elements, Kilt of Elements and Pauldrons of Elements.
  collect Boots of Elements##16670 |q 8957 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  only Shaman
  talk Mokvar##16012
  turnin Anthion's Parting Words##8957 |goto Orgrimmar 34.95,38.29
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
  only Shaman
  talk Mokvar##16012
  accept Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Give Mokvar your Coif of Elements and Vest of Elements.
  collect Coif of Elements##16667 |q 9011 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Shaman
  talk Mokvar##16012
  turnin Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
]])
