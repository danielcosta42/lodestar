-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Paladin", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  accept The Second Trial##9690 |goto Silvermoon City 89.26,35.2
step
  talk Magistrix Erona##15278
  accept Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Champion Cyssa Dawnrose##20406
  accept To The Bulwark##9601 |goto Undercity 58.0,90.45
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Armguards##8053 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Belt##8054 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Breastplate##8055 |goto Stranglethorn Vale 15.31,14.43
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Paladin
  talk Vethsera##15504
  accept Avenger's Breastplate##8627 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  accept Avenger's Crown##8628 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  accept Avenger's Legguards##8629 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  accept Avenger's Pauldrons##8630 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  accept Avenger's Greaves##8655 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Keyl Swiftclaw##15500
  accept Cape of Eternal Justice##8695 |goto Silithus 51.76,39.54
step
  only Paladin
  talk Windcaller Yessendra##15498
  accept Ring of Eternal Justice##8703 |goto Silithus 52.05,38.16
step
  only Paladin
  talk Warden Haro##15499
  accept Blade of Eternal Justice##8711 |goto Silithus 51.14,38.94
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Paladin
  talk Mokvar##16012
  accept An Earnest Proposition##10493 |goto Orgrimmar 34.95,38.29
step
  note Kill 8 Mana Wyrms; they are located close to the Burning Crystals that are adjacent to the tower and gazebo. Return to Magistrix Erona at the tower on Sunstrider Isle when you are done.
  kill Mana Wyrm##15274 |q 8325 |goto Eversong Woods 36.91,21.9
step
  only Paladin
  note Bring Jin'rokh the Breaker Primal Hakkari Bindings. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8053 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  only Paladin
  note Bring Jin'rokh the Breaker a Primal Hakkari Shawl. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8054 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  only Paladin
  note Bring Jin'rokh the Breaker a Primal Hakkari Tabard. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8055 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  only Paladin
  note Bring the the Carapace of the Old God, 2 Idols of the Sage, 5 Silver Scarabs and 5 Bone Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  kill C'Thun##15727 |q 8627 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  note Bring Vek'lor's Diadem, 2 Idols of Rebirth, 5 Stone Scarabs and 5 Crystal Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  kill Emperor Vek'lor##15276 |q 8628 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  note Bring the Skin of the Great Sandworm, 2 Idols of Strife, 5 Bronze Scarabs and 5 Ivory Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  get Avenger's Legguards |q 8629 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Life, 5 Crystal Scarabs and 5 Gold Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  kill Viscidus##15299 |q 8630 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  note Bring the Qiraji Bindings of Dominance, 2 Idols of the Sage, 5 Bronze Scarabs and 5 Clay Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  kill Viscidus##15299 |q 8655 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  note Bring 1 Qiraji Regal Drape, 2 Obsidian Idols, 5 Gold Scarabs and 5 Clay Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  kill General Rajaxx##15341 |q 8695 |goto Ruins of Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  note Bring 1 Qiraji Magisterial Ring, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8703 |goto Ruins of Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  note Bring 1 Qiraji Spiked Hilt, 2 Amber Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8711 |goto Ruins of Ahn'Qiraj - Raid -1,-1
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9121 |goto Burning Steppes 62.76,44.03
step
  only Paladin
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Lightforge Bracers to Mokvar in Orgrimmar.
  kill Stonelash Scorpid##11735 |q 10493 |goto Silithus 59.92,28.33
step
  only BloodElf Paladin
  talk Master Kelerun Bloodmourn##17807
  turnin The Second Trial##9690 |goto Eversong Woods 42.88,28.69
step
  talk Magistrix Erona##15278
  turnin Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin To The Bulwark##9601 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Lorekeeper Mykos##14382
  turnin The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Armguards##8053 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Belt##8054 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Breastplate##8055 |goto Stranglethorn Vale 15.31,14.43
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Paladin
  talk Vethsera##15504
  turnin Avenger's Breastplate##8627 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  turnin Avenger's Crown##8628 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  turnin Avenger's Legguards##8629 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  turnin Avenger's Pauldrons##8630 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  turnin Avenger's Greaves##8655 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Keyl Swiftclaw##15500
  turnin Cape of Eternal Justice##8695 |goto Silithus 51.76,39.54
step
  only Paladin
  talk Windcaller Yessendra##15498
  turnin Ring of Eternal Justice##8703 |goto Silithus 52.05,38.16
step
  only Paladin
  talk Warden Haro##15499
  turnin Blade of Eternal Justice##8711 |goto Silithus 51.14,38.94
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Paladin
  talk Mokvar##16012
  turnin An Earnest Proposition##10493 |goto Orgrimmar 34.95,38.29
step
  only BloodElf Paladin
  talk Master Kelerun Bloodmourn##17807
  accept The Second Trial##9686 |goto Eversong Woods 42.88,28.69
step
  only Warlock
  talk Magistrix Erona##15278
  accept Mage Training##8328 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Magistrix Erona##15278
  accept Paladin Training##9676 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Mehlar Dawnblade##17099
  accept Prove Your Hatred##10590 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
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
  only Paladin
  note Mehlar Dawnblade at the Bulwark wants you to bring him 20 Minion's Scourgestones.
  kill Skeletal Flayer##1783 |q 10590 |goto Western Plaguelands 38.99,58.49
step
  only Paladin
  get The Heathen's Brand |q 8046 |goto Stranglethorn Vale 15.31,14.43
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  get Glyph Chasing |q 8309 |goto Silithus 41.28,88.45
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |q 8310 |goto Silithus 48.5,41.14
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  only BloodElf Paladin
  talk Master Kelerun Bloodmourn##17807
  turnin The Second Trial##9686 |goto Eversong Woods 42.88,28.69
step
  only Warlock
  talk Julia Sunstriker##15279
  turnin Mage Training##8328 |goto Eversong Woods 39.23,21.46
step
  only Paladin
  talk Jesthenis Sunstriker##15280
  turnin Paladin Training##9676 |goto Eversong Woods 39.47,20.56
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin Prove Your Hatred##10590 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
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
  only BloodElf Paladin
  talk Master Kelerun Bloodmourn##17807
  accept Return to Silvermoon##9691 |goto Eversong Woods 42.88,28.69
step
  only Paladin
  talk Julia Sunstriker##15279
  accept Well Watcher Solanian##10069 |goto Eversong Woods 39.23,21.46
step
  only Paladin
  talk Mehlar Dawnblade##17099
  accept Wisdom of the Banshee Queen##10592 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Tunic##9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Legguards##9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Headpiece##9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Spaulders##9046 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Handguards##9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Girdle##9049 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Wristguards##9050 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  get The Heathen's Brand |q 8047 |goto Stranglethorn Vale 15.31,14.43
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  get The Ectoplasmic Distiller |q 8921 |goto Tanaris 52.47,27.23
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  get Redemption Tunic |q 9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  get Redemption Legguards |q 9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 2 Cured Rugged Hides.
  get Redemption Headpiece |q 9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 2 Nexus Crystals.
  kill Grobbulus##15931 |q 9046 |goto Naxxramas - Raid -1,-1
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9047 |goto Naxxramas - Raid -1,-1
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Redemption Handguards |q 9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9049 |goto Naxxramas - Raid -1,-1
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9050 |goto Naxxramas - Raid -1,-1
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  turnin Return to Silvermoon##9691 |goto Silvermoon City 89.26,35.2
step
  only Paladin
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10069 |goto Eversong Woods 38.76,19.36
step
  only Paladin
  talk Lady Sylvanas Windrunner##10181
  turnin Wisdom of the Banshee Queen##10592 |goto Undercity 58.05,91.79
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Tunic##9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Legguards##9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Headpiece##9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Spaulders##9046 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Handguards##9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Girdle##9049 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Wristguards##9050 |goto Eastern Plaguelands 81.54,58.16
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  accept The Path of the Adept##9692 |goto Silvermoon City 89.26,35.2
step
  only Paladin
  talk Lady Sylvanas Windrunner##10181
  accept Ancient Evil##10593 |goto Undercity 58.05,91.79
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  note Bring a Corrupted Kor Gem, a Crate of Bloodforged Ingots, a quantity of Blood of the Wrathful, and a Blood Knight Insignia to Knight-Lord Bloodvalor in Silvermoon City.
  kill Blackfathom Tide Priestess##4802 |q 9692 |goto Darkshore 31.38,92.07
step
  only Paladin
  note Unlock the secrets of the Temple of Atal'Hakkar to release Atal'alarion and recover the Putrid Vine from his flesh. Return to Mehlar at the Bulwark when you have done this.
  get Ancient Evil |q 10593 |goto Undercity 58.05,91.79
step
  only Paladin
  get The Hero's Brand |q 8048 |goto Stranglethorn Vale 15.31,14.43
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  get The Calling |q 8315 |goto Silithus 49.67,37.46
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  kill Tortured Druid##12178 |q 8924 |goto Silithus 62.65,52.76
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  turnin The Path of the Adept##9692 |goto Silvermoon City 89.26,35.2
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin Ancient Evil##10593 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  accept Forging the Weapon##9707 |goto Silvermoon City 89.26,35.2
step
  only Paladin
  talk Geologist Larksbane##15183
  accept Armaments of War##8376 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  kill Magma Lord Bokk##16043 |q 8925 |goto Burning Steppes 35.39,57.76
step
  only BloodElf Paladin
  talk Bemarrin##16669
  turnin Forging the Weapon##9707 |goto Silvermoon City 79.38,38.64
step
  only Paladin
  talk Geologist Larksbane##15183
  turnin Armaments of War##8376 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  talk Bemarrin##16669
  accept The Blood-Tempered Ranseur##9710 |goto Silvermoon City 79.38,38.64
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  get A Shifty Merchant |q 8928 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  talk Bemarrin##16669
  turnin The Blood-Tempered Ranseur##9710 |goto Silvermoon City 79.38,38.64
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
  only Paladin
  talk Mokvar##16012
  accept Just Compensation##10495 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  note Bring a Lightforge Belt and a set of Lightforge Gauntlets to Mokvar in Orgrimmar.
  kill Rockwing Gargoyle##10408 |q 10495 |goto Stratholme - Dungeon -1,-1
step
  only Paladin
  talk Mokvar##16012
  turnin Just Compensation##10495 |goto Orgrimmar 34.95,38.29
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
  kill Highlord Omokk##9196 |q 8949 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  kill Eldreth Sorcerer##11470 |q 8950 |goto Dire Maul - Dungeon -1,-1
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
  only Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##10497 |goto Eastern Plaguelands 30.85,16.75
step
  only Paladin
  note Return to Mokvar in Orgimmar with a set of Lightforge Boots, Lightforge Legplates and Lightforge Spaulders.
  get Anthion's Parting Words |q 10497 |goto Eastern Plaguelands 30.85,16.75
step
  only Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##10497 |goto Orgrimmar 34.95,38.29
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
  kill Cursed Paladin##7071 |q 8965 |goto Hillsbrad Foothills 18.45,76.6
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
  kill Mor Grayhoof##16080 |q 8989
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
  kill Lord Valthalak##16042 |q 8995
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
  only Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##10499 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  note Give Mokvar your Lightforge Helm and Lightforge Breastplate.
  get Saving the Best for Last |q 10499 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##10499 |goto Orgrimmar 34.95,38.29
]])
