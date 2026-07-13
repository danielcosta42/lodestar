-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Warrior", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Warrior
  talk Krang Stonehoof##3063
  accept Veteran Uzzek##1505 |goto Mulgore 49.52,60.59
step
  only Warrior
  talk Torm Ragetotem##3041
  accept The Islander##1718 |goto Thunder Bluff 57.24,87.37
step
  only Warrior
  talk Austil de Mon##2131
  accept Speak with Dillinger##1818 |goto Tirisfal Glades 61.85,52.54
step
  only Undead
  talk Undertaker Mordo##1568
  accept Rude Awakening##363 |goto Tirisfal Glades 30.22,71.65
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.88,77.07
step
  talk Gornek##3143
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Warrior
  talk Sorek##3354
  accept Speak with Ruga##1823 |goto Orgrimmar 80.39,32.38
step
  only Warrior
  talk Torm Ragetotem##3041
  accept A Troubled Spirit##8417 |goto Thunder Bluff 57.24,87.37
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8041 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Armguards##8058 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Belt##8078 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Breastplate##8079 |goto Stranglethorn Vale 15.31,14.43
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Warrior
  talk Andorgos##15502
  accept Conqueror's Spaulders##8544 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Windcaller Yessendra##15498
  accept Signet of Unyielding Strength##8556 |goto Silithus 52.05,38.16
step
  only Warrior
  talk Keyl Swiftclaw##15500
  accept Drape of Unyielding Strength##8557 |goto Silithus 51.76,39.54
step
  only Warrior
  talk Warden Haro##15499
  accept Sickle of Unyielding Strength##8558 |goto Silithus 51.14,38.94
step
  only Warrior
  talk Kandrostrasz##15503
  accept Conqueror's Greaves##8559 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  accept Conqueror's Legguards##8560 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Andorgos##15502
  accept Conqueror's Crown##8561 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Vethsera##15504
  accept Conqueror's Breastplate##8562 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Mokvar##16012
  accept An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  kill Plainstrider##2955 |q 747 |goto Mulgore 48.53,81.85
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  kill Mottled Boar##3098 |q 788 |goto Durotar 44.44,64.81
step
  only Warrior
  kill Drywhisker Kobold##2572 |q 1714 |goto Arathi Highlands 78.55,37.77
step
  only Warrior
  note Bring Jin'rokh the Breaker a Primal Hakkari Armsplint. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8058 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  only Warrior
  note Bring Jin'rokh the Breaker a Primal Hakkari Girdle. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8078 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  only Warrior
  note Bring Jin'rokh the Breaker a Primal Hakkari Kossack. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8079 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  only Warrior
  note Bring the Qiraji Bindings of Command, 2 Idols of Night, 5 Stone Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  kill Viscidus##15299 |q 8544 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  note Bring 1 Qiraji Magisterial Ring, 2 Lambent Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8556 |goto Ruins of Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  note Bring 1 Qiraji Martial Drape, 2 Onyx Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  kill General Rajaxx##15341 |q 8557 |goto Ruins of Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  note Bring 1 Qiraji Spiked Hilt, 2 Alabaster Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8558 |goto Ruins of Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  note Bring the Qiraji Bindings of Command, 2 Idols of War, 5 Ivory Scarabs and 5 Gold Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  kill Viscidus##15299 |q 8559 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  note Bring Ouro's Intact Hide, 2 Idols of Death, 5 Bronze Scarabs and 5 Ivory Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  get Conqueror's Legguards |q 8560 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  note Bring Vek'nilash's Circlet, 2 Idols of the Sun, 5 Stone Scarabs and 5 Crystal Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  kill Emperor Vek'nilash##15275 |q 8561 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  note Bring the the Carapace of the Old God, 2 Idols of War, 5 Silver Scarabs and 5 Bone Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  kill C'Thun##15727 |q 8562 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bracers of Valor to Mokvar in Orgrimmar.
  kill Stonelash Scorpid##11735 |q 8920 |goto Silithus 59.92,28.33
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9121 |goto Burning Steppes 62.76,44.03
step
  only Warrior
  talk Uzzek##5810
  turnin Veteran Uzzek##1505 |goto The Barrens 61.38,21.12
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Islander##1718 |goto The Barrens 68.62,49.16
step
  only Warrior
  talk Deathguard Dillinger##1496
  turnin Speak with Dillinger##1818 |goto Tirisfal Glades 58.2,51.45
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin Rude Awakening##363 |goto Tirisfal Glades 30.84,66.2
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.88,77.07
step
  talk Gornek##3143
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Speak with Ruga##1823 |goto The Barrens 44.67,59.42
step
  only Warrior
  turnin Essence of the Exile##1714 |goto Alterac Mountains 79.32,66.8
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Lorekeeper Kildrath##14383
  turnin Codex of Defense##7499 |goto Dire Maul - Dungeon -1,-1
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8041 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Armguards##8058 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Belt##8078 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Breastplate##8079 |goto Stranglethorn Vale 15.31,14.43
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Warrior
  talk Andorgos##15502
  turnin Conqueror's Spaulders##8544 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Windcaller Yessendra##15498
  turnin Signet of Unyielding Strength##8556 |goto Silithus 52.05,38.16
step
  only Warrior
  talk Keyl Swiftclaw##15500
  turnin Drape of Unyielding Strength##8557 |goto Silithus 51.76,39.54
step
  only Warrior
  talk Warden Haro##15499
  turnin Sickle of Unyielding Strength##8558 |goto Silithus 51.14,38.94
step
  only Warrior
  talk Kandrostrasz##15503
  turnin Conqueror's Greaves##8559 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  turnin Conqueror's Legguards##8560 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Andorgos##15502
  turnin Conqueror's Crown##8561 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Vethsera##15504
  turnin Conqueror's Breastplate##8562 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Mokvar##16012
  turnin An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Warrior
  talk Uzzek##5810
  accept Path of Defense##1498 |goto The Barrens 61.38,21.12
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  talk Deathguard Dillinger##1496
  accept Ulag the Cleaver##1819 |goto Tirisfal Glades 58.2,51.45
step
  only Orc Warrior
  talk Gornek##3143
  accept Simple Parchment##2383 |goto Durotar 42.06,68.33
step
  only Troll Warrior
  talk Gornek##3143
  accept Simple Tablet##3065 |goto Durotar 42.06,68.33
step
  only Warrior
  talk Grull Hawkwind##2980
  accept Simple Note##3091 |goto Mulgore 44.88,77.07
step
  only Undead
  talk Shadow Priest Sarvis##1569
  accept The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8042 |goto Stranglethorn Vale 15.31,14.43
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
  only Warrior
  note Bring 5 Singed Scales to Uzzek at Far Watch Post in the Barrens.
  kill Thunder Lizard##3130 |q 1498 |goto Durotar 39.24,29.29
step
  only Warrior
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  kill Big Will##6238 |q 1719
step
  only Warrior
  note Kill Ulag the Cleaver, then speak with Deathguard Dillinger.
  kill Ulag the Cleaver##6390 |q 1819
step
  only Undead
  note Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
  kill Mindless Zombie##1501 |q 364 |goto Tirisfal Glades 32.54,63.84
step
  only Warrior
  note Bring 5 twitching antennae to Ruga Ragetotem at Camp Taurajo
  kill Silithid Creeper##3250 |q 1824 |goto The Barrens 44.9,70.21
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 52.38,53.24
step
  only Warrior
  get Strength of Mount Mugamba |q 8042 |goto Stranglethorn Vale 15.31,14.43
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
  only Warrior
  talk Uzzek##5810
  turnin Path of Defense##1498 |goto The Barrens 61.38,21.12
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  talk Deathguard Dillinger##1496
  turnin Ulag the Cleaver##1819 |goto Tirisfal Glades 58.2,51.45
step
  only Orc Warrior
  talk Frang##3153
  turnin Simple Parchment##2383 |goto Durotar 42.89,69.44
step
  only Troll Warrior
  talk Frang##3153
  turnin Simple Tablet##3065 |goto Durotar 42.89,69.44
step
  only Warrior
  talk Harutt Thunderhorn##3059
  turnin Simple Note##3091 |goto Mulgore 44.01,76.13
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8042 |goto Stranglethorn Vale 15.31,14.43
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
  only Warrior
  talk Shadow Priest Sarvis##1569
  accept Simple Scroll##3095 |goto Tirisfal Glades 30.84,66.2
step
  only Warrior
  talk Uzzek##5810
  accept Thun'grim Firegaze##1502 |goto The Barrens 61.38,21.12
step
  only Warrior
  talk Deathguard Dillinger##1496
  accept Speak with Coleman##1820 |goto Tirisfal Glades 58.2,51.45
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Speak with Thun'grim##1825 |goto The Barrens 44.67,59.42
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Windwatcher##1791 |goto The Barrens 68.62,49.16
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8043 |goto Stranglethorn Vale 15.31,14.43
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Legplates##9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Helmet##9037 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Bracers##9042 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.64,35.24
step
  only Warrior
  get Strength of Mount Mugamba |q 8043 |goto Stranglethorn Vale 15.31,14.43
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  get The Ectoplasmic Distiller |q 8921 |goto Tanaris 52.47,27.23
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Breastplate if you bring him the following items: 1 Desecrated Breastplate, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  get Dreadnaught Breastplate |q 9034 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Legplates if you bring him the following items: 1 Desecrated Legplates, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  get Dreadnaught Legplates |q 9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Helmet if you bring him the following items: 1 Desecrated Helmet, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 1 Nexus Crystal.
  get Dreadnaught Helmet |q 9037 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Pauldrons if you bring him the following items: 1 Desecrated Pauldrons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9038 |goto Naxxramas - Raid -1,-1
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Sabatons if you bring him the following items: 1 Desecrated Sabatons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9039 |goto Naxxramas - Raid -1,-1
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Gauntlets if you bring him the following items: 1 Desecrated Gauntlets, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Dreadnaught Gauntlets |q 9040 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Waistguard if you bring him the following items: 1 Desecrated Waistguard, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  kill Gluth##15932 |q 9041 |goto Naxxramas - Raid -1,-1
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Bracers if you bring him the following items: 1 Desecrated Bracers, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 1 Nexus Crystal.
  kill Gluth##15932 |q 9042 |goto Naxxramas - Raid -1,-1
step
  only Warrior
  talk Dannal Stern##2119
  turnin Simple Scroll##3095 |goto Tirisfal Glades 32.69,65.56
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Thun'grim Firegaze##1502 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Speak with Coleman##1820 |goto Tirisfal Glades 61.72,52.29
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Speak with Thun'grim##1825 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Windwatcher##1791 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8043 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Legplates##9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Helmet##9037 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Bracers##9042 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Forged Steel##1503 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Coleman Farthing##1500
  accept Agamand Heirlooms##1821 |goto Tirisfal Glades 61.72,52.29
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept The Rage of Mugamba##8044 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Warrior
  note Bring the Forged Steel Bars to Thun'grim Firegaze in the Barrens.
  collect Stolen Iron Chest##58369 |q 1503 |goto The Barrens 55.05,26.65
step
  only Warrior
  note Bring Coleman Farthing the Agamand Family Axe, the Agamand Family Sword, the Agamand Family Mace and the Agamand Family dagger.
  collect Agamand Weapon Rack##105170 |q 1821 |goto Tirisfal Glades 51.68,25.69
step
  only Warrior
  note Bring to Thun'grim Firegaze 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars and a Vial of Phlogiston.
  kill Windshear Digger##3999 |q 1838 |goto Stonetalon Mountains 72.84,60.76
step
  only Warrior
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  kill Nightbane Dark Runner##205 |q 1712 |goto Duskwood 64.14,67.71
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  kill Gasher##5713 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1
step
  only Warrior
  get The Rage of Mugamba |q 8044 |goto Stranglethorn Vale 15.31,14.43
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  get The Calling |q 8315 |goto Silithus 49.67,37.46
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  kill Tortured Druid##12178 |q 8924 |goto Silithus 62.65,52.76
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Forged Steel##1503 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Agamand Heirlooms##1821 |goto Tirisfal Glades 61.72,52.29
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin The Rage of Mugamba##8044 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Coleman Farthing##1500
  accept Heirloom Weapon##1822 |goto Tirisfal Glades 61.72,52.29
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
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Geologist Larksbane##15183
  accept Armaments of War##8316 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Warrior
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  get The Summoning |q 1713 |goto Alterac Mountains 80.5,66.92
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  kill Magma Lord Bokk##16043 |q 8925 |goto Burning Steppes 35.39,57.76
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Heirloom Weapon##1822 |goto Tirisfal Glades 61.72,52.29
step
  only Warrior
  talk Ula'elek##6408
  turnin Ula'elek and the Brutal Gauntlets##1839 |goto Durotar 56.31,74.33
step
  only Warrior
  talk Orm Stonehoof##6410
  turnin Orm Stonehoof and the Brutal Helm##1840 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Velora Nitely##6411
  turnin Velora Nitely and the Brutal Legguards##1841 |goto Undercity 62.14,39.14
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Brutal Hauberk##1848 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Geologist Larksbane##15183
  turnin Armaments of War##8316 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Ula'elek##6408
  accept Satyr Hooves##1842 |goto Durotar 56.31,74.33
step
  only Warrior
  talk Orm Stonehoof##6410
  accept Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Velora Nitely##6411
  accept Dragonmaw Shinbones##1846 |goto Undercity 62.14,39.14
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only Warrior
  note Bring 7 Uncloven Satyr Hooves to Ula'elek at Sen'jin Village in Durotar.
  kill Xavian Rogue##3752 |q 1842 |goto Ashenvale 78.4,45.31
step
  only Warrior
  note Bring a Galvanized Horn to Orm Stonehoof in Thunder Bluff.
  kill Chimaera Matriarch##6167 |q 1844 |goto Stonetalon Mountains 33.64,74.66
step
  only Warrior
  note Bring 8 Sturdy Dragonmaw Shinbones to Velora Nitely in the Undercity.
  get Dragonmaw Shinbones |q 1846 |goto Undercity 62.14,39.14
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  get A Shifty Merchant |q 8928 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Ula'elek##6408
  turnin Satyr Hooves##1842 |goto Durotar 56.31,74.33
step
  only Warrior
  talk Orm Stonehoof##6410
  turnin Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Velora Nitely##6411
  turnin Dragonmaw Shinbones##1846 |goto Undercity 62.14,39.14
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Ula'elek##6408
  accept Brutal Gauntlets##1843 |goto Durotar 56.31,74.33
step
  only Warrior
  talk Orm Stonehoof##6410
  accept Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Velora Nitely##6411
  accept Brutal Legguards##1847 |goto Undercity 62.14,39.14
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Ula'elek##6408
  turnin Brutal Gauntlets##1843 |goto Durotar 56.31,74.33
step
  only Warrior
  talk Orm Stonehoof##6410
  turnin Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Velora Nitely##6411
  turnin Brutal Legguards##1847 |goto Undercity 62.14,39.14
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  accept Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Mokvar in Orgrimmar.
  kill Smolderthorn Berserker##9268 |q 8944 |goto Blackrock Spire - Dungeon -1,-1
step
  only Warrior
  talk Mokvar##16012
  turnin Just Compensation##8944 |goto Orgrimmar 34.95,38.29
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
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9022 |goto Eastern Plaguelands 30.85,16.75
step
  only Warrior
  note Return to Mokvar in Orgimmar with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  get Anthion's Parting Words |q 9022 |goto Eastern Plaguelands 30.85,16.75
step
  only Warrior
  talk Mokvar##16012
  turnin Anthion's Parting Words##9022 |goto Orgrimmar 34.95,38.29
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
  only Warrior
  talk Mokvar##16012
  accept Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Give Mokvar your Helm of Valor and Breastplate of Valor.
  get Saving the Best for Last |q 9013 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  turnin Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
]])
