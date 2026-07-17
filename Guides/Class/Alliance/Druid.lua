-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Druid", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept A Lesson to Learn##26 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept Moonglade##5921 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Kal##3602
  accept Heeding the Call##5923 |goto Teldrassil 55.95,61.56
step
  only NightElf Druid
  talk Fylerian Nightwing##4219
  accept Heeding the Call##5924 |goto Darnassus 33.51,8.35
step
  only NightElf Druid
  talk Denatharion##4218
  accept Heeding the Call##5925 |goto Darnassus 34.77,7.37
step
  only Druid
  talk Mathrengyl Bearwalker##4217
  accept Lessons Anew##6121 |goto Darnassus 35.37,8.4
step
  only Druid
  talk Loganaar##12042
  accept Morthis Whisperwing##10955 |goto Moonglade 52.53,40.57
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only Druid
  talk Turak Runetotem##3033
  accept Torwa Pathfinder##9063 |goto Thunder Bluff 76.48,27.22
step
  only Druid
  kill Prince Tortheldrin##11486 |goto Dire Maul - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Emerald Dream...##7506 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Bracers##8057 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Belt##8064 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Tunic##8065 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Druid
  talk Kandrostrasz##15503
  accept Genesis Boots##8665 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Vethsera##15504
  accept Genesis Vest##8666 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Andorgos##15502
  accept Genesis Helm##8667 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  accept Genesis Trousers##8668 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Andorgos##15502
  accept Genesis Shoulderpads##8669 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Keyl Swiftclaw##15500
  accept Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Druid
  talk Windcaller Yessendra##15498
  accept Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Druid
  talk Warden Haro##15499
  accept Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Druid
  talk Deliana##16013
  accept An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Grok##22940
  accept Mog'dorg the Wizened##10983 |goto Shattrath City 64.93,68.14
step
  talk Mog'dorg the Wizened##22941
  accept Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Even Gronn Have Standards##10997 |goto Blade's Edge Mountains 55.49,44.86
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  kill Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Stanchion. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Stanchion##19718 |q 8057 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Sash. Maywiki of Zuldazar is located on Yojamba Isle, Stranglethorn Vale. You must also be Honored with Zandalar.
  collect Primal Hakkari Sash##19720 |q 8064 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Tabard. Maywiki of Zuldazar is located on Yojamba Isle, Stranglethorn Vale. You must also be Revered with Zandalar.
  collect Primal Hakkari Tabard##19722 |q 8065 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  only Druid
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Rebirth, 5 Stone Scarabs and 5 Silver Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Dominance##20932 |q 8665 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Druid
  note Bring the the Husk of the Old God, 2 Idols of Rebirth, 5 Bronze Scarabs and 5 Ivory Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Husk of the Old God##20933 |q 8666 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Druid
  note Bring Vek'lor's Diadem, 2 Idols of Life, 5 Gold Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'lor's Diadem##20930 |q 8667 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Emperor Vek'lor
step
  only Druid
  note Bring the Skin of the Great Sandworm, 2 Idols of War, 5 Stone Scarabs and 5 Crystal Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Skin of the Great Sandworm##20931 |q 8668 |goto Ahn'Qiraj - Raid -1,-1 |tip {dropsfrom}Ouro
step
  only Druid
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Strife, 5 Gold Scarabs and 5 Bone Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Dominance##20932 |q 8669 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Druid
  note Bring 1 Qiraji Regal Drape, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8692 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Druid
  note Bring 1 Qiraji Magisterial Ring, 2 Alabaster Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8700 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Druid
  note Bring 1 Qiraji Ornate Hilt, 2 Jasper Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8708 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Druid
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Wildheart Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8905 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  note Retrieve Maggoc's Treasure Chest and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Maggoc##20600 |goto Blade's Edge Mountains 58.59,60.8 |elite
  click Maggoc's Treasure Chest##185569 |tip {spawnsafter}Maggoc
  collect Maggoc's Treasure Chest##32380 |q 10996 |goto Blade's Edge Mountains 58.59,60.8
step
  note Retrieve Slaag's Standard and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Slaag##22199 |goto Terokkar Forest 20.17,18.1 |elite
  click Slaag's Standard##185574 |tip {spawnsafter}Slaag
  collect Slaag's Standard##32382 |q 10997 |goto Terokkar Forest 20.17,18.1
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5921 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Heeding the Call##5923 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Heeding the Call##5924 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Heeding the Call##5925 |goto Darnassus 35.37,8.4
step
  only Druid
  talk Dendrite Starblaze##11802
  turnin Lessons Anew##6121 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Morthis Whisperwing##22832
  turnin Morthis Whisperwing##10955 |goto Zangarmarsh 80.18,65.15
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Lorekeeper Javon##14381
  turnin The Emerald Dream...##7506 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Bracers##8057 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Belt##8064 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Tunic##8065 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Druid
  talk Kandrostrasz##15503
  turnin Genesis Boots##8665 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Vethsera##15504
  turnin Genesis Vest##8666 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Andorgos##15502
  turnin Genesis Helm##8667 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  turnin Genesis Trousers##8668 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Andorgos##15502
  turnin Genesis Shoulderpads##8669 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Keyl Swiftclaw##15500
  turnin Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Druid
  talk Windcaller Yessendra##15498
  turnin Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Druid
  talk Warden Haro##15499
  turnin Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Druid
  talk Deliana##16013
  turnin An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Anachronos##15192
  turnin Frame of Atiesh##9250 |goto Tanaris 64.2,51.42
step
  talk Mog'dorg the Wizened##22941
  turnin Mog'dorg the Wizened##10983 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Even Gronn Have Standards##10997 |goto Blade's Edge Mountains 55.49,44.86
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6122 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Morthis Whisperwing##22832
  accept The Ward of Wakening##10961 |goto Zangarmarsh 80.18,65.15
step
  only Druid
  talk Conservator Ilthalaine##2079
  accept Verdant Sigil##3120 |goto Teldrassil 58.69,44.27
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Anachronos##15192
  accept Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  talk Mog'dorg the Wizened##22941
  accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  only Druid
  note Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by the falls.
  collect Filled Cliffspring Falls Sampler##15845 |q 6122 |goto Moonglade 56.21,30.64
step
  only Druid
  note Bring 10 Bogblossoms, 10 Ancient Lichen, and 10 Dreaming Glory to Morthis Whisperwing at the Cenarion Refuge.
  collect 10 Bogblossom##31950 |q 10961 |goto Zangarmarsh 80.18,65.15
step
  only Druid
  note Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
  collect 8 Gorishi Sting##22435 |q 9052 |goto Un'Goro Crater 50.14,76.41 |tip {dropsfrom}Gorishi Wasp, Gorishi Worker, Gorishi Reaver
step
  only Druid
  collect Enchanted South Seas Kelp##19610 |q 8111 |goto Stranglethorn Vale 15.3,16.02
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
  note Anachronos at the Caverns of Time in Tanaris wants the Staff Head of Atiesh and the Base of Atiesh.
  collect Staff Head of Atiesh##22733 |q 9251 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Kel'Thuzad
step
  note Retrieve Grulloc's Dragon Skull and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Grulloc##20216 |goto Blade's Edge Mountains 60.92,47.61 |elite
  collect Grulloc's Dragon Skull##32379 |q 10995 |goto Blade's Edge Mountains 60.92,47.61
step
  only NightElf Druid
  talk Tajarri##11799
  turnin Trial of the Lake##29 |goto Moonglade 36.52,40.1
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Alanndarian Nightsong##3702
  turnin The Principal Source##6122 |goto Darkshore 37.69,40.66
step
  only Druid
  talk Morthis Whisperwing##22832
  turnin The Ward of Wakening##10961 |goto Zangarmarsh 80.18,65.15
step
  only Druid
  talk Mardant Strongoak##3597
  turnin Verdant Sigil##3120 |goto Teldrassil 58.63,40.29
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Anachronos##15192
  turnin Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  talk Mog'dorg the Wizened##22941
  turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  only NightElf Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##272 |goto Moonglade 36.52,40.1
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Back to Darnassus##5931 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Alanndarian Nightsong##3702
  accept Gathering the Cure##6123 |goto Darkshore 37.69,40.66
step
  only Druid
  talk Morthis Whisperwing##22832
  accept Waking the Sleeper##10964 |goto Zangarmarsh 80.18,65.15
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Tunic##9086 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Legguards##9087 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Boots##9090 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Handguards##9091 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Girdle##9092 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9269 |goto Tanaris 64.2,51.42
step
  talk Mog'dorg the Wizened##22941
  accept Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  only NightElf Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 272 |goto Moonglade 36.52,40.1
step
  only Druid
  note Bring 5 Earthroot and 12 Lunar Funguses to Alanndarian Nightsong in Auberdine so she may make a curative salve.
  collect 5 Earthroot##2449 |q 6123 |goto Westfall 31.27,61.14 |tip {dropsfrom}Riverpaw Herbalist, Swampwalker, Swampwalker Elder
step
  only Druid
  collect Enchanted South Seas Kelp##19611 |q 8112 |goto Stranglethorn Vale 15.3,16.02
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Tunic if you bring her the following: 1 Desecrated Tunic, 25 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  collect Desecrated Tunic##22350 |q 9086 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Legguards if you bring her the following: 1 Desecrated Legguards, 20 Wartorn Leather Scraps, 8 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Legguards##22359 |q 9087 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Headpiece if you bring her the following: 1 Desecrated Headpiece, 15 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9088 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Spaulders if you bring her the following: 1 Desecrated Spaulders, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Spaulders##22361 |q 9089 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Boots if you bring her the following: 1 Desecrated Boots, 12 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  collect Desecrated Boots##22365 |q 9090 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Handguards if you bring her the following: 1 Desecrated Handguards, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Handguards##22364 |q 9091 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Girdle if you bring her the following: 1 Desecrated Girdle, 8 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  collect Desecrated Girdle##22363 |q 9092 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Wristguards if you bring her the following: 1 Desecrated Wristguards, 6 Wartorn Leather Scraps, 1 Arcane Crystal and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9093 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Druid
  note Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him.
  kill Atiesh##16387 |q 9269 |raid
step
  note You must retrieve Vim'gol's Vile Grimoire. Deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Vim'gol's Vile Grimoire##32358 |q 10998 |goto Blade's Edge Mountains 55.49,44.86
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##272 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Back to Darnassus##5931 |goto Darnassus 35.37,8.4
step
  only Druid
  talk Alanndarian Nightsong##3702
  turnin Gathering the Cure##6123 |goto Darkshore 37.69,40.66
step
  only Druid
  talk Clintar Dreamwalker##22834
  turnin Waking the Sleeper##10964 |goto Moonglade 75.46,67.04
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Tunic##9086 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Legguards##9087 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Boots##9090 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Handguards##9091 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Girdle##9092 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 81.2,59.0
step
  only Druid
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9269 |goto Tanaris 64.2,51.42
step
  talk Mog'dorg the Wizened##22941
  turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##5061 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept Body and Heart##6001 |goto Darnassus 35.37,8.4
step
  only Druid
  talk Alanndarian Nightsong##3702
  accept Curing the Sick##6124 |goto Darkshore 37.69,40.66
step
  only Druid
  talk Clintar Dreamwalker##22834
  accept No Mere Dream##10965 |goto Moonglade 75.46,67.04
step
  only Druid
  talk Torwa Pathfinder##9619
  accept A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Mog'dorg the Wizened##22941
  accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  only Druid
  note Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore; doing so should cure them. Sickly Deer have been reported starting south of the Cliffspring River to the north of Auberdine and extending all the way into southern Darkshore where the edge of Ashenvale begins.
  use Cured Deer##12299 |q 6124 |tip {useit}
step
  only Druid
  note Protect Clintar Dreamwalker's Spirit while it gathers the relics of Aviana, then speak to Dreamwarden Lurosa.
  kill Clintar Dreamwalker's Spirit##22916 |q 10965 |goto Moonglade 75.41,67.04
step
  only Druid
  note Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder.
  collect Putrid Vine##22444 |q 9053 |goto Un'Goro Crater 71.64,75.96 |tip {dropsfrom}Atal'alarion
step
  only Druid
  collect Enchanted South Seas Kelp##19612 |q 8113 |goto Stranglethorn Vale 15.3,16.02
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 49.67,37.46 |tip {dropsfrom}Emissary Roman'khan
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.76 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  note Retrieve Skulloc's Soul and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Skulloc's Soul##32383 |q 11000 |goto Blade's Edge Mountains 55.49,44.86
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Aquatic Form##5061 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Body and Heart##6001 |goto Darnassus 35.37,8.4
step
  only Druid
  talk Dendrite Starblaze##11802
  turnin Curing the Sick##6124 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dreamwarden Lurosa##22837
  turnin No Mere Dream##10965 |goto Moonglade 72.47,63.27
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Mog'dorg the Wizened##22941
  turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  only Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6125 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dreamwarden Lurosa##22837
  accept Return to Morthis Whisperwing##10978 |goto Moonglade 72.47,63.27
step
  only Druid
  talk Geologist Larksbane##15183
  accept Armaments of War##8382 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mog'dorg the Wizened##22941
  accept Ogre Heaven##11009 |goto Blade's Edge Mountains 55.49,44.86
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  only Druid
  talk Mathrengyl Bearwalker##4217
  turnin Power over Poison##6125 |goto Darnassus 35.37,8.4
step
  only Druid
  talk Morthis Whisperwing##22832
  turnin Return to Morthis Whisperwing##10978 |goto Zangarmarsh 80.18,65.15
step
  only Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8382 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Chu'a'lor##23233
  turnin Ogre Heaven##11009 |goto Blade's Edge Mountains 28.76,57.36
step
  only Druid
  talk Morthis Whisperwing##22832
  accept To the Evergrove##10979 |goto Zangarmarsh 80.18,65.15
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Chu'a'lor##23233
  accept The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  collect Fel Elemental Rod##21939 |q 8928 |goto Tanaris 52.47,27.23
step
  note Chu'a'lor has tasked you with gathering 5 Apexis Shards. Bring them to him at Ogri'la atop the Blade's Edge Mountains.
  collect 5 Apexis Shard##32569 |q 11025 |goto Blade's Edge Mountains 28.84,81.09 |tip {dropsfrom}Abyssal Flamebringer, Wrath Hound, Hemathion
step
  only Druid
  talk Arthorn Windsong##22924
  turnin To the Evergrove##10979 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Chu'a'lor##23233
  turnin The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  only Druid
  talk Arthorn Windsong##22924
  accept The Book of the Raven##10980 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Mux Manascrambler##16014
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  talk Torkus##23316
  accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  only Druid
  note Use an Aether Ray Eye with your Seer's Stone to reveal the raven cult ghosts. Search the Vortex Pinnacle for the spirit of Sai'kkal the Elder and question him about the book of the raven, then return to Arthorn Windsong.
  kill Sai'kkal the Elder##22932 |q 10980 |goto Blade's Edge Mountains 29.54,59.72
step
  note Torkus has asked you to obtain an Unstable Flask of the Beast for him. Return with it to him at Ogri'la atop the Blade's Edge Mountains.
  collect Unstable Flask of the Beast##32598 |q 11030 |goto Blade's Edge Mountains 28.38,57.64
step
  only Druid
  talk Arthorn Windsong##22924
  turnin The Book of the Raven##10980 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  talk Torkus##23316
  turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  only Druid
  talk Arthorn Windsong##22924
  accept Eyes in the Sky##10986 |goto Blade's Edge Mountains 61.47,38.27
step
  only Druid
  talk Deliana##16013
  accept Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  talk Chu'a'lor##23233
  accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains 28.76,57.36
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves Deliana in Ironforge.
  collect Wildheart Belt##16716 |q 8926 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Druid
  talk Watcher Elaira##22981
  turnin Eyes in the Sky##10986 |goto Nagrand 20.58,35.73
step
  only Druid
  talk Deliana##16013
  turnin Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  talk Sky Commander Keller##23334
  turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains 27.38,52.68
step
  only Druid
  talk Watcher Elaira##22981
  accept To Catch A Sparrowhawk##10987 |goto Nagrand 20.58,35.73
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  only Druid
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
step
  only Druid
  note Use the Sparrowhawk Net to capture a Wild Sparrowhawk and bring it to Watcher Elaira on the Twilight Ridge.
  collect Captive Sparrowhawk##32320 |q 10987 |goto Nagrand 20.58,35.73
step
  only Druid
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bombing Run |q 11102 |goto Blade's Edge Mountains 27.56,52.9
step
  only Druid
  talk Watcher Elaira##22981
  turnin To Catch A Sparrowhawk##10987 |goto Nagrand 20.58,35.73
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
step
  only Druid
  talk Watcher Elaira##22981
  accept The Raven Stones##10988 |goto Nagrand 20.58,35.73
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  note Gather 8 Raven Stones from Skettis and bring them to Arthorn Windsong at Evergrove in Blade's Edge Mountains.
  collect 8 Raven Stone##32313 |q 10988 |goto Terokkar Forest 69.29,81.1 |tip {dropsfrom}Raven Stone Fragment
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  kill Ysida Harmon##16031 |q 8945
step
  only Druid
  talk Arthorn Windsong##22924
  turnin The Raven Stones##10988 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945
step
  only Druid
  talk Arthorn Windsong##22924
  accept The Eagle's Essence##10990 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946
step
  only Druid
  note Defeat the Guardian of the Eagle and obtain the Essence of the Eagle. Use Arthorn's Sparrowhawk Whistle to call Arthorn's Sparrowhawk to relay news of your success.
  collect Essence of the Eagle##32355 |q 10990 |goto Blade's Edge Mountains 61.47,38.27 |tip {dropsfrom}Guardian of the Eagle
step
  only Druid
  talk Arthorn's Sparrowhawk##23338
  turnin The Eagle's Essence##10990
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  talk Arthorn's Sparrowhawk##23338
  accept The Falcon's Essence##10991
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  note Defeat the Guardian of the Falcon, obtain the Essence of the Falcon. Use Arthorn's Sparrowhawk Whistle to call Arthorn's Sparrowhawk to relay news of your success.
  collect Essence of the Falcon##32357 |q 10991 |tip {dropsfrom}Guardian of the Falcon
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  talk Arthorn's Sparrowhawk##23338
  turnin The Falcon's Essence##10991
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  talk Arthorn's Sparrowhawk##23338
  accept The Hawk's Essence##10992
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  note Defeat the Guardian of the Hawk and bring the Essence of the Hawk to Arthorn Windsong at the Evergrove.
  collect Essence of the Hawk##32356 |q 10992 |tip {dropsfrom}Guardian of the Hawk
step
  only Druid
  talk Arthorn Windsong##22924
  turnin The Hawk's Essence##10992 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Arthorn Windsong##22924
  accept Return to Cenarion Refuge##10993 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  only Druid
  talk Morthis Whisperwing##22832
  turnin Return to Cenarion Refuge##10993 |goto Zangarmarsh 80.18,65.15
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Morthis Whisperwing##22832
  accept Chasing the Moonstone##10994 |goto Zangarmarsh 80.18,65.15
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  note Bring a Southfury Moonstone to Morthis Whisperwing at the Cenarion Refuge.
  collect Southfury Moonstone##32364 |q 10994 |goto Zangarmarsh 80.18,65.15
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  only Druid
  talk Morthis Whisperwing##22832
  turnin Chasing the Moonstone##10994 |goto Zangarmarsh 80.18,65.15
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Morthis Whisperwing##22832
  accept Vanquish the Raven God##11001 |goto Zangarmarsh 80.18,65.15
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  note Slay the Raven God and return to Morthis Whisperwing at Cenarion Refuge.
  kill Anzu##23035 |q 11001 |elite
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  collect Top Piece of Lord Valthalak's Amulet##22047 |q 9015 |goto Dire Maul - Dungeon -1,-1 |tip {dropsfrom}Theldren
step
  only Druid
  talk Morthis Whisperwing##22832
  turnin Vanquish the Raven God##11001 |goto Zangarmarsh 80.18,65.15
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8951 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  talk Morthis Whisperwing##22832
  accept Eternal Vigilance##11011 |goto Zangarmarsh 80.18,65.15
step
  only Druid
  note Return to Deliana in Ironforge with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 8951 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Druid
  talk Deliana##16013
  turnin Anthion's Parting Words##8951 |goto Ironforge 43.53,52.64
step
  only Druid
  talk Morthis Whisperwing##22832
  turnin Eternal Vigilance##11011 |goto Zangarmarsh 80.18,65.15
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960
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
  accept Back to the Beginning##8997
step
  talk Deliana##16013
  turnin Back to the Beginning##8997 |goto Ironforge 43.53,52.64
step
  only Druid
  talk Deliana##16013
  accept Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
step
  only Druid
  note Give Deliana your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 8999 |goto Ironforge 43.53,52.64 |tip {dropsfrom}Darkmaster Gandling
step
  only Druid
  talk Deliana##16013
  turnin Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
]])
