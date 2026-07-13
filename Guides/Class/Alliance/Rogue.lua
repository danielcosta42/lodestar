-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Rogue", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only Rogue
  talk Master Mathias Shaw##332
  accept Mathias and the Defias##2360 |goto Stormwind City 75.78,59.84
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
  only Human Rogue
  talk Keryn Sylvius##917
  accept Seek out SI: 7##2205 |goto Elwynn Forest 43.87,65.94
step
  only Rogue
  talk Hogral Bakkan##1234
  accept Road to Salvation##2218 |goto Dun Morogh 47.56,52.61
step
  only Rogue
  talk Jannok Breezesong##3599
  accept The Apple Falls##2241 |goto Teldrassil 56.38,60.14
step
  only Rogue
  talk Renzik "The Shiv"##6946
  accept Redridge Rendezvous##2281 |goto Stormwind City 75.76,60.36
step
  only Rogue
  talk Ormok##3328
  accept A Simple Request##8233 |goto Orgrimmar 43.9,54.63
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
  talk Deliana##16013
  accept An Earnest Proposition##8910 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  kill Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  only Rogue
  note Take the Seal of Ravenholdt to Fahrad at Ravenholdt Manor, hidden away in the hills of Hillsbrad.
  kill Ravenholdt##13936 |q 6681 |goto Alterac Mountains 81.27,74.62
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  kill Frankal Invisible Trigger##15221 |q 8304 |goto Silithus 40.62,89.18
step
  only Rogue
  talk Agent Kearnen##7024
  turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
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
  only Human Rogue
  talk Master Mathias Shaw##332
  turnin Seek out SI: 7##2205 |goto Stormwind City 75.78,59.84
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin Road to Salvation##2218 |goto Ironforge 51.96,14.84
step
  only Rogue
  talk Syurna##4163
  turnin The Apple Falls##2241 |goto Darnassus 36.99,21.91
step
  only Rogue
  talk Lucius##6966
  turnin Redridge Rendezvous##2281 |goto Redridge Mountains 28.06,52.04
step
  only Rogue
  talk Arantir##7009
  turnin OLD Horns of Nez'ra##2358 |goto Redridge Mountains 28.06,52.32
step
  only Rogue
  talk Fahrad##6707
  turnin The Manor, Ravenholdt##6681 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88
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
  talk Deliana##16013
  turnin An Earnest Proposition##8910 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Rogue
  talk Agent Kearnen##7024
  accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
step
  only Dwarf Rogue
  talk Sten Stoutarm##658
  accept Encrypted Rune##3109 |goto Dun Morogh 29.93,71.2
step
  only Gnome Rogue
  talk Sten Stoutarm##658
  accept Encrypted Memorandum##3113 |goto Dun Morogh 29.93,71.2
step
  only Rogue
  talk Conservator Ilthalaine##2079
  accept Encrypted Sigil##3118 |goto Teldrassil 58.69,44.27
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Human Rogue
  talk Master Mathias Shaw##332
  accept Snatch and Grab##2206 |goto Stormwind City 75.78,59.84
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Simple Subterfugin'##2238 |goto Ironforge 51.96,14.84
step
  only Rogue
  talk Syurna##4163
  accept Destiny Calls##2242 |goto Darnassus 36.99,21.91
step
  only Rogue
  talk Mennet Carkad##6467
  accept [Not Used Tools of the Trade##2019 |goto Undercity 83.51,69.11
step
  only Rogue
  talk Jannok Breezesong##3599
  accept Erion Shadewhisper##2259 |goto Teldrassil 56.38,60.14
step
  only Rogue
  talk Hogral Bakkan##1234
  accept To Hulfdan!##2299 |goto Dun Morogh 47.56,52.61
step
  only Rogue
  talk Keryn Sylvius##917
  accept SI:7##2300 |goto Elwynn Forest 43.87,65.94
step
  only Rogue
  talk Lucius##6966
  accept Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
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
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  note Kill 10 Kobold Vermin, then return to Marshal McBride.
  kill Kobold Vermin##6 |q 7 |goto Elwynn Forest 49.27,36.26
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Klaven's Tower##2359 |goto Stormwind City 75.78,59.84
step
  only Dwarf Rogue
  talk Solm Hargrin##916
  turnin Encrypted Rune##3109 |goto Dun Morogh 28.37,67.51
step
  only Gnome Rogue
  talk Solm Hargrin##916
  turnin Encrypted Memorandum##3113 |goto Dun Morogh 28.37,67.51
step
  only Rogue
  talk Frahun Shadewhisper##3594
  turnin Encrypted Sigil##3118 |goto Teldrassil 59.64,38.66
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Human Rogue
  talk Master Mathias Shaw##332
  turnin Snatch and Grab##2206 |goto Stormwind City 75.78,59.84
step
  only Rogue
  talk Onin MacHammar##6886
  turnin Simple Subterfugin'##2238 |goto Dun Morogh 25.16,44.45
step
  only Rogue
  talk Syurna##4163
  turnin Destiny Calls##2242 |goto Darnassus 36.99,21.91
step
  only Rogue
  talk Therzok##6446
  turnin [Not Used Tools of the Trade##2019 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  talk Erion Shadewhisper##4214
  turnin Erion Shadewhisper##2259 |goto Darnassus 34.52,25.93
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin To Hulfdan!##2299 |goto Ironforge 51.96,14.84
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin SI:7##2300 |goto Stormwind City 75.76,60.36
step
  only Rogue
  talk Lucius##6966
  turnin Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21
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
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  only Human Rogue
  talk Marshal McBride##197
  accept Encrypted Letter##3102 |goto Elwynn Forest 48.92,41.61
step
  only Rogue
  talk Onin MacHammar##6886
  accept Onin's Report##2239 |goto Dun Morogh 25.16,44.45
step
  only Rogue
  talk Erion Shadewhisper##4214
  accept Erion's Behest##2260 |goto Darnassus 34.52,25.93
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Kingly Shakedown##2298 |goto Ironforge 51.96,14.84
step
  only Rogue
  talk Master Mathias Shaw##332
  accept The Touch of Zanzil##2607 |goto Stormwind City 75.78,59.84
step
  only Rogue
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
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
  only Human Rogue
  talk Jorik Kerridan##915
  turnin Encrypted Letter##3102 |goto Elwynn Forest 50.31,39.92
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin Onin's Report##2239 |goto Ironforge 51.96,14.84
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Erion's Behest##2260 |goto Stormwind City 75.76,60.36
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Kingly Shakedown##2298 |goto Stormwind City 75.76,60.36
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2607 |goto Stormwind City 78.04,58.76
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
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
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.76
step
  only Rogue
  talk Archmage Xylem##8379
  accept The Azure Key##8236 |goto Azshara 29.25,40.21
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
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.76
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin The Azure Key##8236 |goto Alterac Mountains 86.02,78.88
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
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2609 |goto Stormwind City 78.04,58.76
step
  only Rogue
  talk Geologist Larksbane##15183
  accept Armaments of War##8378 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2609 |goto Stormwind City 78.04,58.76
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
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Rogue
  talk Deliana##16013
  accept Just Compensation##8935 |goto Ironforge 43.53,52.64
step
  only Rogue
  talk Deliana##16013
  turnin Just Compensation##8935 |goto Ironforge 43.53,52.64
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
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8956 |goto Eastern Plaguelands 30.85,16.75
step
  only Rogue
  talk Deliana##16013
  turnin Anthion's Parting Words##8956 |goto Ironforge 43.53,52.64
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
  only Rogue
  talk Deliana##16013
  accept Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
step
  only Rogue
  talk Deliana##16013
  turnin Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
]])
