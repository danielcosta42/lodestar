-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Paladin", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Undead Paladin
  talk Shadow Priest Sarvis##1569
  accept A Difficult Path##98601 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  accept Rediscovering the Light##90902 |goto Tirisfal Glades 31.09,66.32
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  accept Coming to Terms##91208 |goto Tirisfal Glades 31.09,66.32
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  accept Continue Your Training##91209 |goto Tirisfal Glades 31.09,66.32
step
  only Undead Paladin
  talk Shari Stilwell##246152
  accept A Second Home##91282 |goto Tirisfal Glades 60.25,52.63
step
  only Undead Paladin
  talk Breton Samuels##246349
  accept Murlocs at the Gates##91285 |goto Tirisfal Glades 21.85,45.31
step
  only Undead Paladin
  talk Breton Samuels##246349
  accept Touring the Grounds##91294 |goto Tirisfal Glades 21.85,45.31
step
  only Undead Paladin
  talk Jorin Croge##246393
  accept Making Repairs##91316 |goto Tirisfal Glades 22.65,44.77
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept The Tarnished##91317 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept A Lesson in Divinity##94427 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  accept A Lesson in Divinity##94434 |goto Undercity 65.67,37.94
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  accept A Lesson in Divinity##94435 |goto Undercity 65.67,37.94
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept A Lesson in Divinity##94436 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  accept A Lesson in Divinity##94438 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Deathguard Falgan##257663
  accept A Lesson in Divinity##94440 |goto Tirisfal Glades 86.67,47.74
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  accept A Lesson in Divinity##94441 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept A Token of Good Faith##95803 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept Diplomatic Incident##91858 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Trevan Rol##248840
  accept A Curious Pair##91859 |goto Silverpine Forest 43.4,41
step
  only Undead Paladin
  talk Deathguard Baldren##259611
  accept A Grim Fate##91860 |goto Silverpine Forest 44.43,40.87
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  accept Lumina Windsinger##91862 |goto Silverpine Forest 65.6,28.6
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  accept The Windshaper's Wrath##96204 |goto Silverpine Forest 65.6,28.6
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept The Debt##95034 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.2,40.8
step
  only Paladin
  talk Ulric Frostveil##259649
  accept Seeking the Kor Gem##95042 |goto Ashenvale 11.8,34.4
step
  only Undead Paladin
  talk Trevan Rol##248840
  accept An Underrated Talent##95111 |goto Silverpine Forest 43.4,41
step
  only Undead Paladin
  talk Ott##3539
  accept Ott's Masterwork##95125 |goto Hillsbrad Foothills 60.43,26.18
step
  only Undead Paladin
  talk Ott##3539
  accept The Moonsilver Blade##95126 |goto Hillsbrad Foothills 60.43,26.18
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept Old Fire-Eye##95140 |goto Silverpine Forest 43.2,40.8
step
  only Paladin
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
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
  only Undead Paladin
  note Slay 8 Vile Fin Attackers and 8 Vile Fin Seers and report back to Breton Samuels when it is done.
  kill Vile Fin Attacker##250283 |q 91285 |goto Tirisfal Glades 14.71,55.65
step
  only Undead Paladin
  note Collect 12 pieces of Sturdy Lumber from Shadowvale in Tirisfal Glades.
  collect 12 Sturdy Lumber##246213 |q 91316 |goto Tirisfal Glades 10,66 |tip {dropsfrom}Lumber Pile
step
  only Undead Paladin
  note Slay 8 Tarnished Drudges, 6 Tarnished Zealots, and collect the head of Commander Rudolph Gelhardt in Tirisfal Glades.
  kill Tarnished Drudge##259434 |q 91317 |goto Tirisfal Glades 12.8,64
step
  only Undead Paladin
  note Bring 10 Linen Cloth to Tanis Alderwood in the Undercity.
  collect 10 Linen Cloth##2589 |q 94434 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Undead Paladin
  note Retrieve the Scarlet Crusade Attack Plans from the Scarlet Crusaders at Venomweb Vale, and return to Deathguard Billmuth at Tyr's Watch.
  collect Scarlet Crusade Attack Plans##264693 |q 94440 |goto Tirisfal Glades 78.38,56.2 |tip {dropsfrom}Scarlet Zealot, Scarlet Friar, Tarnished Exemplar
step
  only Undead Paladin
  note Retrieve the Fenris Isle Key from the Rot Hide Gnolls and use it to free Lumina Windsinger.
  collect Fenris Isle Key##267412 |q 91862 |goto Silverpine Forest 65.71,24.35 |tip {dropsfrom}Rot Hide Savage, Raging Rot Hide, Rot Hide Bruiser
step
  only Undead Paladin
  note Speak with Trevan Rol in the Sepulcher and bring him the materials he requires.
  collect Trevan's Weapon Notes##267454 |q 95036 |goto Silverpine Forest 43.2,40.8
step
  only Paladin
  note Bring a Kor Gem to Ulric Frostveil in Ashenvale.
  collect Corrupted Kor Gem##6995 |q 95042 |goto Ashenvale 13.55,12.06 |tip {dropsfrom}Blackfathom Tide Priestess, Blackfathom Oracle, Blackfathom Sea Witch
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  kill Frankal Stonebridge##15171 |q 8304 |goto Silithus 40.81,88.86
step
  collect Qiraji Lord's Insignia##21229 |q 8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  only Paladin
  note Bring Jin'rokh the Breaker Primal Hakkari Bindings. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Bindings##19716 |q 8053 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Paladin
  note Bring Jin'rokh the Breaker a Primal Hakkari Shawl. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Shawl##19721 |q 8054 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Paladin
  note Bring Jin'rokh the Breaker a Primal Hakkari Tabard. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Tabard##19722 |q 8055 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  turnin A Difficult Path##98601 |goto Tirisfal Glades 31.09,66.32
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  turnin Rediscovering the Light##90902 |goto Tirisfal Glades 31.09,66.32
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  turnin Coming to Terms##91208 |goto Tirisfal Glades 31.09,66.32
step
  only Undead Paladin
  talk Shari Stilwell##246152
  turnin Continue Your Training##91209 |goto Tirisfal Glades 60.25,52.63
step
  only Undead Paladin
  talk Breton Samuels##246349
  turnin A Second Home##91282 |goto Tirisfal Glades 21.85,45.31
step
  only Undead Paladin
  talk Breton Samuels##246349
  turnin Murlocs at the Gates##91285 |goto Tirisfal Glades 21.85,45.31
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin Touring the Grounds##91294 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Jorin Croge##246393
  turnin Making Repairs##91316 |goto Tirisfal Glades 22.65,44.77
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin The Tarnished##91317 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  turnin A Lesson in Divinity##94427 |goto Undercity 65.67,37.94
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  turnin A Lesson in Divinity##94434 |goto Undercity 65.67,37.94
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin A Lesson in Divinity##94435 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  turnin A Lesson in Divinity##94436 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Deathguard Falgan##257663
  turnin A Lesson in Divinity##94438 |goto Tirisfal Glades 86.67,47.74
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  turnin A Lesson in Divinity##94440 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin A Lesson in Divinity##94441 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Lady Sylvanas Windrunner##10181
  turnin A Token of Good Faith##95803 |goto Undercity 58.05,91.79
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin Diplomatic Incident##91858 |goto Silverpine Forest 43.4,41
step
  only Undead Paladin
  talk Deathguard Baldren##259611
  turnin A Curious Pair##91859 |goto Silverpine Forest 44.43,40.87
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  turnin Into Fenris Keep##91861 |goto Silverpine Forest 65.6,28.6
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  turnin Lumina Windsinger##91862 |goto Silverpine Forest 65.6,28.6
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin The Windshaper's Wrath##96204 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin The Debt##95034 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.4,41
step
  only Paladin
  talk Ulric Frostveil##259649
  turnin Seeking the Kor Gem##95042 |goto Ashenvale 11.8,34.4
step
  only Undead Paladin
  talk Ott##3539
  turnin An Underrated Talent##95111 |goto Hillsbrad Foothills 60.43,26.18
step
  only Undead Paladin
  talk Ott##3539
  turnin Ott's Masterwork##95125 |goto Hillsbrad Foothills 60.43,26.18
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin The Moonsilver Blade##95126 |goto Silverpine Forest 43.4,41
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin Old Fire-Eye##95140 |goto Silverpine Forest 43.2,40.8
step
  only Paladin
  talk Lorekeeper Mykos##14382
  turnin The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
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
  accept Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 50.87,26.76 |tip {dropsfrom}Hive'Ashi Glyphed Crystal
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |goto Silithus 48.5,41.14 |elite
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 48.5,41.14
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Dungeon -1,-1 |elite
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
  turnin Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Tunic##9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Legguards##9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Headpiece##9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Spaulders##9046 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Boots##9047 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Handguards##9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Girdle##9049 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Wristguards##9050 |goto Eastern Plaguelands 71.72,48.59
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Legguards##22359 |q 9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 2 Cured Rugged Hides.
  collect Desecrated Headpiece##22360 |q 9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Spaulders##22361 |q 9046 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Boots##22365 |q 9047 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9049 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9050 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Tunic##9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Legguards##9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Headpiece##9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Spaulders##9046 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Boots##9047 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Handguards##9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Girdle##9049 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Wristguards##9050 |goto Eastern Plaguelands 71.72,48.59
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  kill Emissary Roman'khan##14862 |goto Silithus 48.77,58.14 |raid
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 48.77,58.14
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.76 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
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
  only Druid
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Druid
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  kill Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
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
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
]])
