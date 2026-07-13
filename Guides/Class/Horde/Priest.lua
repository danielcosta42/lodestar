-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Priest", {
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
  only Troll Priest
  talk Ken'jai##3707
  accept In Favor of Spirituality##5649 |goto Durotar 42.36,68.81
step
  only Undead Priest
  talk Dark Cleric Duesten##2123
  accept In Favor of Darkness##5651 |goto Tirisfal Glades 31.11,66.03
step
  only Priest
  talk Ponaris##16276
  accept Cleansing the Scar##9489 |goto Eversong Woods 47.85,47.97
step
  only Priest
  talk Guvan##17482
  accept Help Tavara##9586 |goto Azuremyst Isle 48.6,49.29
step
  only Troll Priest
  talk Ur'kyo##6018
  accept Hex of Weakness##5652 |goto Orgrimmar 35.59,87.82
step
  only Troll Priest
  talk Tai'jin##3706
  accept Hex of Weakness##5654 |goto Durotar 54.26,42.93
step
  only Troll Priest
  talk Miles Welsh##3044
  accept Hex of Weakness##5656 |goto Thunder Bluff 25.32,15.27
step
  only Troll Priest
  talk Aelthalyste##4606
  accept Hex of Weakness##5657 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Aelthalyste##4606
  accept Touch of Weakness##5658 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Tai'jin##3706
  accept Touch of Weakness##5660 |goto Durotar 54.26,42.93
step
  only Undead Priest
  talk Var'jun##11407
  accept Touch of Weakness##5661 |goto Mulgore 46.95,58.82
step
  only Undead Priest
  talk Ur'kyo##6018
  accept Touch of Weakness##5662 |goto Orgrimmar 35.59,87.82
step
  only Undead Priest
  talk Miles Welsh##3044
  accept Touch of Weakness##5663 |goto Thunder Bluff 25.32,15.27
step
  only Troll Priest
  talk Miles Welsh##3044
  accept Shadowguard##5642 |goto Thunder Bluff 25.32,15.27
step
  only Troll Priest
  talk Aelthalyste##4606
  accept Shadowguard##5643 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Miles Welsh##3044
  accept Devouring Plague##5644 |goto Thunder Bluff 25.32,15.27
step
  only Undead Priest
  talk Ur'kyo##6018
  accept Devouring Plague##5646 |goto Orgrimmar 35.59,87.82
step
  only Undead Priest
  talk Aelthalyste##4606
  accept Devouring Plague##5679 |goto Undercity 49.26,17.12
step
  only Troll Priest
  talk Ur'kyo##6018
  accept Shadowguard##5680 |goto Orgrimmar 35.59,87.82
step
  only Priest
  talk High Priestess Laurena##376
  accept Cenarion Aid##8254 |goto Stormwind City 38.58,26.06
step
  only Priest
  talk Eris Havenfire##14494
  accept A Warning##7621 |goto Eastern Plaguelands 20.96,18.4
step
  only Priest
  talk Eris Havenfire##14494
  accept The Balance of Light and Shadow##7622 |goto Eastern Plaguelands 20.96,18.4
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8049 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Wraps##8061 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Bindings##8070 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Mantle##8071 |goto Stranglethorn Vale 15.34,16.12
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Priest
  talk Andorgos##15502
  accept Tiara of the Oracle##8592 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  accept Trousers of the Oracle##8593 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Andorgos##15502
  accept Mantle of the Oracle##8594 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  accept Footwraps of the Oracle##8596 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Vethsera##15504
  accept Vestments of the Oracle##8603 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Keyl Swiftclaw##15500
  accept Shroud of Infinite Wisdom##8689 |goto Silithus 51.76,39.54
step
  only Priest
  talk Windcaller Yessendra##15498
  accept Ring of Infinite Wisdom##8697 |goto Silithus 52.05,38.16
step
  only Priest
  talk Warden Haro##15499
  accept Gavel of Infinite Wisdom##8705 |goto Silithus 51.14,38.94
step
  only Priest
  talk Mokvar##16012
  accept An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29
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
  only Priest
  note Cast Power Word: Fortitude on 6 Eversong Rangers in the Dead Scar.
  kill Eversong Ranger##15938 |q 9489 |goto Eversong Woods 46.55,66.77
step
  only Priest
  note Guvan at Azure Watch wants you to find Tavara and heal her wounds.
  kill Tavara##17551 |q 9586 |goto Azuremyst Isle 56.22,48.88
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  kill Frankal Invisible Trigger##15221 |q 8304 |goto Silithus 40.62,89.18
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
  only Troll Priest
  talk Tai'jin##3706
  turnin In Favor of Spirituality##5649 |goto Durotar 54.26,42.93
step
  only Undead Priest
  talk Dark Cleric Beryl##2129
  turnin In Favor of Darkness##5651 |goto Tirisfal Glades 61.57,52.19
step
  only Priest
  talk Ponaris##16276
  turnin Cleansing the Scar##9489 |goto Eversong Woods 47.85,47.97
step
  only Priest
  talk Guvan##17482
  turnin Help Tavara##9586 |goto Azuremyst Isle 48.6,49.29
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5652 |goto Orgrimmar 35.59,87.82
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5654 |goto Orgrimmar 35.59,87.82
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5656 |goto Orgrimmar 35.59,87.82
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5657 |goto Orgrimmar 35.59,87.82
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5658 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5660 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5661 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5662 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5663 |goto Undercity 49.26,17.12
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Shadowguard##5642 |goto Orgrimmar 35.59,87.82
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Shadowguard##5643 |goto Orgrimmar 35.59,87.82
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Devouring Plague##5644 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Devouring Plague##5646 |goto Undercity 49.26,17.12
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Devouring Plague##5679 |goto Undercity 49.26,17.12
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Shadowguard##5680 |goto Orgrimmar 35.59,87.82
step
  only Priest
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62
step
  only Priest
  talk Lorekeeper Javon##14381
  turnin Holy Bologna: What the Light Won't Tell You##7504 |goto Dire Maul - Dungeon -1,-1
step
  only Priest
  talk Eris Havenfire##14494
  turnin A Warning##7621 |goto Eastern Plaguelands 20.96,18.4
step
  only Priest
  talk Eris Havenfire##14494
  turnin The Balance of Light and Shadow##7622 |goto Eastern Plaguelands 20.96,18.4
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8049 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Wraps##8061 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Bindings##8070 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Mantle##8071 |goto Stranglethorn Vale 15.34,16.12
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Priest
  talk Andorgos##15502
  turnin Tiara of the Oracle##8592 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  turnin Trousers of the Oracle##8593 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Andorgos##15502
  turnin Mantle of the Oracle##8594 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  turnin Footwraps of the Oracle##8596 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Vethsera##15504
  turnin Vestments of the Oracle##8603 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Keyl Swiftclaw##15500
  turnin Shroud of Infinite Wisdom##8689 |goto Silithus 51.76,39.54
step
  only Priest
  talk Windcaller Yessendra##15498
  turnin Ring of Infinite Wisdom##8697 |goto Silithus 52.05,38.16
step
  only Priest
  talk Warden Haro##15499
  turnin Gavel of Infinite Wisdom##8705 |goto Silithus 51.14,38.94
step
  only Priest
  talk Mokvar##16012
  turnin An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Anachronos##15192
  turnin Frame of Atiesh##9250 |goto Tanaris 64.2,51.42
step
  only Troll Priest
  talk Gornek##3143
  accept Hallowed Tablet##3085 |goto Durotar 42.06,68.33
step
  only Priest
  talk Magistrix Erona##15278
  accept Priest Training##8564 |goto Eversong Woods 38.21,20.83
step
  only Hunter
  talk Magistrix Erona##15278
  accept Hunter Training##9393 |goto Eversong Woods 38.21,20.83
step
  only Undead
  talk Shadow Priest Sarvis##1569
  accept The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only Troll Priest
  talk Tai'jin##3706
  accept Garments of Spirituality##5648 |goto Durotar 54.26,42.93
step
  only Undead Priest
  talk Dark Cleric Beryl##2129
  accept Garments of Darkness##5650 |goto Tirisfal Glades 61.57,52.19
step
  only Priest
  talk Aelthalyste##4606
  accept Touch of Weakness##10379 |goto Undercity 49.26,17.12
step
  only Priest
  talk Ogtinc##8405
  accept Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8050 |goto Stranglethorn Vale 15.34,16.12
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
  talk Anachronos##15192
  accept Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  only Undead
  note Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
  kill Mindless Zombie##1501 |q 364 |goto Tirisfal Glades 32.54,63.84
step
  only Troll Priest
  note Find Grunt Kor'ja and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude and then return to Tai'jin at Razor Hill.
  kill Grunt Kor'ja##12430 |q 5648 |goto Durotar 53.1,46.46
step
  only Undead Priest
  note Find Deathguard Kel and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Dark Cleric Beryl in Brill.
  kill Deathguard Kel##12428 |q 5650 |goto Tirisfal Glades 59.18,46.5
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  only Troll Priest
  talk Ken'jai##3707
  turnin Hallowed Tablet##3085 |goto Durotar 42.36,68.81
step
  only Priest
  talk Matron Arena##15284
  turnin Priest Training##8564 |goto Eversong Woods 39.42,20.38
step
  only Hunter
  talk Ranger Sallina##15513
  turnin Hunter Training##9393 |goto Eversong Woods 39.05,20.01
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only Troll Priest
  talk Tai'jin##3706
  turnin Garments of Spirituality##5648 |goto Durotar 54.26,42.93
step
  only Undead Priest
  talk Dark Cleric Beryl##2129
  turnin Garments of Darkness##5650 |goto Tirisfal Glades 61.57,52.19
step
  only Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##10379 |goto Undercity 49.26,17.12
step
  only Priest
  talk Ogtinc##8405
  turnin Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8050 |goto Stranglethorn Vale 15.34,16.12
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
  talk Anachronos##15192
  turnin Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  only Undead Priest
  talk Shadow Priest Sarvis##1569
  accept Hallowed Scroll##3097 |goto Tirisfal Glades 30.84,66.2
step
  only Priest
  talk Ranger Sallina##15513
  accept Well Watcher Solanian##10072 |goto Eversong Woods 39.05,20.01
step
  only Priest
  talk Ogtinc##8405
  accept The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8051 |goto Stranglethorn Vale 15.34,16.12
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Robe of Faith##9111 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Leggings of Faith##9112 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Circlet of Faith##9113 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Shoulderpads of Faith##9114 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Sandals of Faith##9115 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Gloves of Faith##9116 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Belt of Faith##9117 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Bindings of Faith##9118 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9257 |goto Tanaris 64.2,51.42
step
  only Undead Priest
  talk Dark Cleric Duesten##2123
  turnin Hallowed Scroll##3097 |goto Tirisfal Glades 31.11,66.03
step
  only Priest
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10072 |goto Eversong Woods 38.76,19.36
step
  only Priest
  talk Ogtinc##8405
  turnin The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8051 |goto Stranglethorn Vale 15.34,16.12
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Robe of Faith##9111 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Leggings of Faith##9112 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Circlet of Faith##9113 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Shoulderpads of Faith##9114 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Sandals of Faith##9115 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Gloves of Faith##9116 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Belt of Faith##9117 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Bindings of Faith##9118 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9257 |goto Tanaris 64.2,51.42
step
  only Priest
  talk Ogtinc##8405
  accept Blood of Morphaz##8257 |goto Azshara 42.4,42.62
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The All-Seeing Eye of Zuldazar##8052 |goto Stranglethorn Vale 15.34,16.12
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Priest
  talk Greta Mosshoof##10922
  turnin Blood of Morphaz##8257 |goto Felwood 51.21,82.11
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The All-Seeing Eye of Zuldazar##8052 |goto Stranglethorn Vale 15.34,16.12
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Priest
  talk Geologist Larksbane##15183
  accept Armaments of War##8379 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Priest
  talk Geologist Larksbane##15183
  turnin Armaments of War##8379 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
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
  only Priest
  talk Mokvar##16012
  accept Just Compensation##8940 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  turnin Just Compensation##8940 |goto Orgrimmar 34.95,38.29
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
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9019 |goto Eastern Plaguelands 30.85,16.75
step
  only Priest
  talk Mokvar##16012
  turnin Anthion's Parting Words##9019 |goto Orgrimmar 34.95,38.29
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
  accept Back to the Beginning##8998
step
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  accept Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  turnin Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29
]])
