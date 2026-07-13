-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Priest", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
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
  only Draenei Priest
  talk Zalduun##16502
  accept Priest Training##9291 |goto Azuremyst Isle 80.13,48.89
step
  only NightElf Priest
  talk Shanda##3595
  accept In Favor of Elune##5622 |goto Teldrassil 59.17,40.44
step
  only Human Priest
  talk Priestess Anetta##375
  accept In Favor of the Light##5623 |goto Elwynn Forest 49.81,39.49
step
  only Dwarf Priest
  talk Branstock Khalder##837
  accept In Favor of the Light##5626 |goto Dun Morogh 28.6,66.39
step
  only Priest
  talk Ponaris##16276
  accept Cleansing the Scar##9489 |goto Eversong Woods 47.85,47.97
step
  only Priest
  talk Guvan##17482
  accept Help Tavara##9586 |goto Azuremyst Isle 48.6,49.29
step
  only NightElf Priest
  talk Priestess Josetta##377
  accept Returning Home##5628 |goto Elwynn Forest 43.28,65.72
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  accept Returning Home##5629 |goto Teldrassil 55.56,56.75
step
  only NightElf Priest
  talk Maxan Anvol##1226
  accept Returning Home##5630 |goto Dun Morogh 47.34,52.19
step
  only NightElf Priest
  talk Brother Joshua##5489
  accept Returning Home##5631 |goto Stormwind City 38.54,26.85
step
  only NightElf Priest
  talk Nara Meideros##11397
  accept Returning Home##5632 |goto Stormwind City 20.68,50.07
step
  only NightElf Priest
  talk Braenna Flintcrag##5142
  accept Returning Home##5633 |goto Ironforge 24.42,9.17
step
  only Priest
  talk High Priestess Laurena##376
  accept Desperate Prayer##5634 |goto Stormwind City 38.58,26.06
step
  only Priest
  talk Priestess Josetta##377
  accept Desperate Prayer##5635 |goto Elwynn Forest 43.28,65.72
step
  only Priest
  talk Laurna Morninglight##3600
  accept Desperate Prayer##5636 |goto Teldrassil 55.56,56.75
step
  only Priest
  talk Maxan Anvol##1226
  accept Desperate Prayer##5637 |goto Dun Morogh 47.34,52.19
step
  only Priest
  talk Nara Meideros##11397
  accept Desperate Prayer##5638 |goto Stormwind City 20.68,50.07
step
  only Priest
  talk High Priest Rohan##11406
  accept Desperate Prayer##5639 |goto Ironforge 24.73,8.16
step
  only NightElf Priest
  talk Priestess Alathea##11401
  accept Elune's Grace##5672 |goto Darnassus 39.52,81.2
step
  only NightElf Priest
  talk High Priestess Laurena##376
  accept Elune's Grace##5673 |goto Stormwind City 38.58,26.06
step
  only NightElf Priest
  talk High Priest Rohan##11406
  accept Elune's Grace##5675 |goto Ironforge 24.73,8.16
step
  only Human Priest
  talk High Priestess Laurena##376
  accept Arcane Feedback##5676 |goto Stormwind City 38.58,26.06
step
  only Human Priest
  talk High Priest Rohan##11406
  accept Arcane Feedback##5677 |goto Ironforge 24.73,8.16
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
  talk Deliana##16013
  accept An Earnest Proposition##8909 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  kill Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
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
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  talk Marshal McBride##197
  turnin A Threat Within##783 |goto Elwynn Forest 48.92,41.61
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only Draenei Priest
  talk Zalduun##16502
  turnin Priest Training##9291 |goto Azuremyst Isle 80.13,48.89
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  turnin In Favor of Elune##5622 |goto Teldrassil 55.56,56.75
step
  only Human Priest
  talk Priestess Josetta##377
  turnin In Favor of the Light##5623 |goto Elwynn Forest 43.28,65.72
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  turnin In Favor of the Light##5626 |goto Dun Morogh 47.34,52.19
step
  only Priest
  talk Ponaris##16276
  turnin Cleansing the Scar##9489 |goto Eversong Woods 47.85,47.97
step
  only Priest
  talk Guvan##17482
  turnin Help Tavara##9586 |goto Azuremyst Isle 48.6,49.29
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5628 |goto Darnassus 39.52,81.2
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5629 |goto Darnassus 39.52,81.2
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5630 |goto Darnassus 39.52,81.2
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5631 |goto Darnassus 39.52,81.2
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5634 |goto Stormwind City 38.58,26.06
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5635 |goto Stormwind City 38.58,26.06
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5636 |goto Stormwind City 38.58,26.06
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5637 |goto Stormwind City 38.58,26.06
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5638 |goto Stormwind City 38.58,26.06
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5639 |goto Stormwind City 38.58,26.06
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Elune's Grace##5672 |goto Darnassus 39.52,81.2
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Elune's Grace##5673 |goto Darnassus 39.52,81.2
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Elune's Grace##5675 |goto Darnassus 39.52,81.2
step
  only Human Priest
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5676 |goto Stormwind City 38.58,26.06
step
  only Human Priest
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5677 |goto Stormwind City 38.58,26.06
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
  talk Deliana##16013
  turnin An Earnest Proposition##8909 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Anachronos##15192
  turnin Frame of Atiesh##9250 |goto Tanaris 64.2,51.42
step
  only Dwarf Priest
  talk Sten Stoutarm##658
  accept Hallowed Rune##3110 |goto Dun Morogh 29.93,71.2
step
  only Priest
  talk Conservator Ilthalaine##2079
  accept Hallowed Sigil##3119 |goto Teldrassil 58.69,44.27
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  accept Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
step
  only Human Priest
  talk Priestess Josetta##377
  accept Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  accept Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
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
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Anachronos##15192
  accept Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  note Kill 10 Kobold Vermin, then return to Marshal McBride.
  kill Kobold Vermin##6 |q 7 |goto Elwynn Forest 49.27,36.26
step
  only NightElf Priest
  note Find Sentinel Shaya and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude and then return to Laurna Morninglight in Dolanaar.
  kill Sentinel Shaya##12429 |q 5621 |goto Teldrassil 57.24,63.51
step
  only Human Priest
  note Find Guard Roberts and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Priestess Josetta in Goldshire.
  kill Guard Roberts##12423 |q 5624 |goto Elwynn Forest 48.15,68.05
step
  only Dwarf Priest
  note Find Mountaineer Dolf and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Maxan Anvol in Kharanos.
  kill Mountaineer Dolf##12427 |q 5625 |goto Dun Morogh 45.81,54.57
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  only Dwarf Priest
  talk Branstock Khalder##837
  turnin Hallowed Rune##3110 |goto Dun Morogh 28.6,66.39
step
  only Priest
  talk Shanda##3595
  turnin Hallowed Sigil##3119 |goto Teldrassil 59.17,40.44
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  turnin Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
step
  only Human Priest
  talk Priestess Josetta##377
  turnin Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
step
  only Dwarf Priest
  talk Maxan Anvol##1226
  turnin Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
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
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Anachronos##15192
  turnin Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  only Human Priest
  talk Marshal McBride##197
  accept Hallowed Letter##3103 |goto Elwynn Forest 48.92,41.61
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
  only Human Priest
  talk Priestess Anetta##375
  turnin Hallowed Letter##3103 |goto Elwynn Forest 49.81,39.49
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
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  accept Just Compensation##8934 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  turnin Just Compensation##8934 |goto Ironforge 43.53,52.64
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
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8955 |goto Eastern Plaguelands 30.85,16.75
step
  only Priest
  talk Deliana##16013
  turnin Anthion's Parting Words##8955 |goto Ironforge 43.53,52.64
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
  only Priest
  talk Deliana##16013
  accept Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  turnin Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
]])
