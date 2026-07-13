-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Warrior", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only Warrior
  talk Lyria Du Lac##913
  accept A Warrior's Training##1638 |goto Elwynn Forest 41.09,65.77
step
  only Warrior
  talk Granis Swiftaxe##1229
  accept Muren Stormpike##1679 |goto Dun Morogh 47.36,52.65
step
  only Warrior
  talk Kyra Windblade##3598
  accept Elanaria##1684 |goto Teldrassil 56.22,59.2
step
  only Warrior
  talk Torm Ragetotem##3041
  accept The Islander##1718 |goto Thunder Bluff 57.24,87.37
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  talk Deputy Willem##823
  accept A Threat Within##783 |goto Elwynn Forest 48.17,42.94
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only Draenei Warrior
  talk Kore##16503
  accept Warrior Training##9289 |goto Azuremyst Isle 79.59,49.45
step
  only Warrior
  talk Ruada##17480
  accept Strength of One##9582 |goto Azuremyst Isle 50.02,50.52
step
  only Warrior
  talk Wu Shen##5479
  accept Yorus Barleybrew##1698 |goto Stormwind City 78.68,45.79
step
  only Draenei Warrior
  talk Ahonan##16771
  accept Yorus Barleybrew##10371 |goto The Exodar 55.1,83.61
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
  talk Deliana##16013
  accept An Earnest Proposition##8912 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  kill Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  only Warrior
  note Unlock the Ravager Cage and kill the Death Ravager, then return to Ruada at Azure Watch in Azuremyst.
  kill Death Ravager##17556 |q 9582 |goto Azuremyst Isle 54.03,9.95
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  kill Frankal Invisible Trigger##15221 |q 8304 |goto Silithus 40.62,89.18
step
  only Warrior
  talk Harry Burlguard##6089
  turnin A Warrior's Training##1638 |goto Stormwind City 74.26,37.25
step
  only Warrior
  talk Muren Stormpike##6114
  turnin Muren Stormpike##1679 |goto Ironforge 70.77,90.27
step
  only Warrior
  talk Elanaria##4088
  turnin Elanaria##1684 |goto Darnassus 57.3,34.61
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Islander##1718 |goto The Barrens 68.62,49.16
step
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  talk Marshal McBride##197
  turnin A Threat Within##783 |goto Elwynn Forest 48.92,41.61
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only Draenei Warrior
  talk Kore##16503
  turnin Warrior Training##9289 |goto Azuremyst Isle 79.59,49.45
step
  only Warrior
  talk Ruada##17480
  turnin Strength of One##9582 |goto Azuremyst Isle 50.02,50.52
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin Yorus Barleybrew##1698 |goto Redridge Mountains 26.58,44.72
step
  only Draenei Warrior
  talk Yorus Barleybrew##6166
  turnin Yorus Barleybrew##10371 |goto Redridge Mountains 26.58,44.72
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
  talk Deliana##16013
  turnin An Earnest Proposition##8912 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Warrior
  talk Harry Burlguard##6089
  accept Bartleby the Drunk##1639 |goto Stormwind City 74.26,37.25
step
  only Warrior
  talk Elanaria##4088
  accept Vorlus Vilehoof##1683 |goto Darnassus 57.3,34.61
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Dwarf Warrior
  talk Sten Stoutarm##658
  accept Simple Rune##3106 |goto Dun Morogh 29.93,71.2
step
  only Gnome Warrior
  talk Sten Stoutarm##658
  accept Simple Memorandum##3112 |goto Dun Morogh 29.93,71.2
step
  only Warrior
  talk Conservator Ilthalaine##2079
  accept Simple Sigil##3116 |goto Teldrassil 58.69,44.27
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Warrior
  talk Ruada##17480
  accept Behomat##10350 |goto Azuremyst Isle 50.02,50.52
step
  only Warrior
  talk Muren Stormpike##6114
  accept Vejrek##1678 |goto Ironforge 70.77,90.27
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Rethban Gauntlet##1699 |goto Redridge Mountains 26.58,44.72
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
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  note Kill 10 Kobold Vermin, then return to Marshal McBride.
  kill Kobold Vermin##6 |q 7 |goto Elwynn Forest 49.27,36.26
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 52.38,53.24
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  only Warrior
  talk Bartleby##6090
  turnin Bartleby the Drunk##1639 |goto Stormwind City 73.78,36.33
step
  only Warrior
  talk Elanaria##4088
  turnin Vorlus Vilehoof##1683 |goto Darnassus 57.3,34.61
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Dwarf Warrior
  talk Thran Khorman##912
  turnin Simple Rune##3106 |goto Dun Morogh 28.83,67.24
step
  only Gnome Warrior
  talk Thran Khorman##912
  turnin Simple Memorandum##3112 |goto Dun Morogh 28.83,67.24
step
  only Warrior
  talk Alyissia##3593
  turnin Simple Sigil##3116 |goto Teldrassil 59.64,38.44
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Warrior
  talk Behomat##17120
  turnin Behomat##10350 |goto The Exodar 55.59,82.27
step
  only Warrior
  talk Muren Stormpike##6114
  turnin Vejrek##1678 |goto Ironforge 70.77,90.27
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin The Rethban Gauntlet##1699 |goto Redridge Mountains 26.58,44.72
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
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  only Warrior
  talk Bartleby##6090
  accept Beat Bartleby##1640 |goto Stormwind City 73.78,36.33
step
  only Human Warrior
  talk Marshal McBride##197
  accept Simple Letter##3100 |goto Elwynn Forest 48.92,41.61
step
  only Warrior
  talk Elanaria##4088
  accept The Shade of Elura##1686 |goto Darnassus 57.3,34.61
step
  only Warrior
  talk Muren Stormpike##6114
  accept Tormus Deepforge##1680 |goto Ironforge 70.77,90.27
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Shieldsmith##1702 |goto Redridge Mountains 26.58,44.72
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
  talk Bartleby##6090
  turnin Beat Bartleby##1640 |goto Stormwind City 73.78,36.33
step
  only Human Warrior
  talk Llane Beshere##911
  turnin Simple Letter##3100 |goto Elwynn Forest 50.24,42.29
step
  only Warrior
  talk Elanaria##4088
  turnin The Shade of Elura##1686 |goto Darnassus 57.3,34.61
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Tormus Deepforge##1680 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Furen Longbeard##5413
  turnin The Shieldsmith##1702 |goto Stormwind City 58.09,16.54
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
  talk Bartleby##6090
  accept Bartleby's Mug##1665 |goto Stormwind City 73.78,36.33
step
  only Warrior
  talk Elanaria##4088
  accept Smith Mathiel##1692 |goto Darnassus 57.3,34.61
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Ironband's Compound##1681 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Furen Longbeard##5413
  accept Fire Hardened Mail##1701 |goto Stormwind City 58.09,16.54
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
  talk Harry Burlguard##6089
  turnin Bartleby's Mug##1665 |goto Stormwind City 74.26,37.25
step
  only Warrior
  talk Mathiel##6142
  turnin Smith Mathiel##1692 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Ironband's Compound##1681 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Furen Longbeard##5413
  turnin Fire Hardened Mail##1701 |goto Stormwind City 58.09,16.54
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
  talk Harry Burlguard##6089
  accept Marshal Haggard##1666 |goto Stormwind City 74.26,37.25
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Mathiel##6142
  accept Weapons of Elunite##1693 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Furen Longbeard##5413
  accept Grimand Elmore##1700 |goto Stormwind City 58.09,16.54
step
  only Warrior
  talk Furen Longbeard##5413
  accept Mathiel##1703 |goto Stormwind City 58.09,16.54
step
  only Warrior
  talk Furen Longbeard##5413
  accept Klockmort Spannerspan##1704 |goto Stormwind City 58.09,16.54
step
  only Warrior
  talk Furen Longbeard##5413
  accept Furen's Armor##1782 |goto Stormwind City 58.09,16.54
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
  talk Marshal Haggard##294
  turnin Marshal Haggard##1666 |goto Elwynn Forest 84.61,69.38
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Mathiel##6142
  turnin Weapons of Elunite##1693 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Grimand Elmore##1416
  turnin Grimand Elmore##1700 |goto Stormwind City 51.76,12.08
step
  only Warrior
  talk Mathiel##6142
  turnin Mathiel##1703 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Klockmort Spannerspan##1704 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Furen Longbeard##5413
  turnin Furen's Armor##1782 |goto Stormwind City 58.09,16.54
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
  talk Marshal Haggard##294
  accept Dead-tooth Jack##1667 |goto Elwynn Forest 84.61,69.38
step
  only Warrior
  talk Grimand Elmore##1416
  accept Burning Blood##1705 |goto Stormwind City 51.76,12.08
step
  only Warrior
  talk Klockmort Spannerspan##6169
  accept Iron Coral##1708 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Mathiel##6142
  accept Sunscorched Shells##1710 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Marshal Haggard##294
  turnin Dead-tooth Jack##1667 |goto Elwynn Forest 84.61,69.38
step
  only Warrior
  talk Grimand Elmore##1416
  turnin Burning Blood##1705 |goto Stormwind City 51.76,12.08
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Iron Coral##1708 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Mathiel##6142
  turnin Sunscorched Shells##1710 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Grimand Elmore##1416
  accept Grimand's Armor##1706 |goto Stormwind City 51.76,12.08
step
  only Warrior
  talk Klockmort Spannerspan##6169
  accept Klockmort's Creation##1709 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Mathiel##6142
  accept Mathiel's Armor##1711 |goto Darnassus 59.51,45.38
step
  talk Mux Manascrambler##16014
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Grimand Elmore##1416
  turnin Grimand's Armor##1706 |goto Stormwind City 51.76,12.08
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Creation##1709 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Mathiel##6142
  turnin Mathiel's Armor##1711 |goto Darnassus 59.51,45.38
step
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  accept Just Compensation##8937 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  turnin Just Compensation##8937 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
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
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 30.85,16.75
step
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8959 |goto Eastern Plaguelands 30.85,16.75
step
  only Warrior
  talk Deliana##16013
  turnin Anthion's Parting Words##8959 |goto Ironforge 43.53,52.64
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
  talk Bodley##16033
  turnin Three Kings of Flame##8961
step
  talk Bodley##16033
  accept Components of Importance##8965
step
  talk Bodley##16033
  turnin Components of Importance##8965
step
  talk Bodley##16033
  accept More Components of Importance##8986
step
  talk Bodley##16033
  turnin More Components of Importance##8986
step
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989
step
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989
step
  talk Bodley##16033
  accept Final Preparations##8994
step
  talk Bodley##16033
  turnin Final Preparations##8994
step
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995
step
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995
step
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996
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
  only Warrior
  talk Deliana##16013
  accept Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  turnin Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
]])
