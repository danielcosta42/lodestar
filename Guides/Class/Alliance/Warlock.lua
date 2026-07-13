-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Warlock", {
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
  only Draenei Warlock
  talk Valaatu##16500
  accept Mage Training##9290 |goto Azuremyst Isle 79.58,48.76
step
  only Human Warlock
  talk Zaldimar Wefhellt##328
  accept Speak with Jennea##1860 |goto Elwynn Forest 43.25,66.19
step
  only Warlock
  talk Magis Sparkmantle##1228
  accept Speak with Bink##1879 |goto Dun Morogh 47.5,52.08
step
  only Warlock
  talk Semid##17481
  accept Control##9595 |goto Azuremyst Isle 49.87,49.95
step
  only Warlock
  talk Dink##7312
  accept Report to Jennea##1919 |goto Ironforge 27.16,8.57
step
  only Warlock
  talk Arcanist Vandril##16197
  accept Arcane Reavers##9487 |goto Ghostlands 46.55,28.38
step
  only Warlock
  talk Jennea Cannon##5497
  accept High Sorcerer Andromath##1939 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk Jennea Cannon##5497
  accept Journey to the Marsh##1947 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk Tabetha##6546
  accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Anastasia Hartwell##4568
  accept Return to the Marsh##1953 |goto Undercity 85.14,10.03
step
  only Warlock
  talk Thurston Xane##3049
  accept Magecraft##8250 |goto Thunder Bluff 25.18,20.96
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Wraps##8060 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Mantle##8068 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Robes##8069 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8101 |goto Stranglethorn Vale 15.34,16.12
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Warlock
  talk Andorgos##15502
  accept Enigma Shoulderpads##8625 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  accept Enigma Leggings##8631 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  accept Enigma Circlet##8632 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Vethsera##15504
  accept Enigma Robes##8633 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  accept Enigma Boots##8634 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Keyl Swiftclaw##15500
  accept Drape of Vaulted Secrets##8691 |goto Silithus 51.76,39.54
step
  only Warlock
  talk Windcaller Yessendra##15498
  accept Band of Vaulted Secrets##8699 |goto Silithus 52.05,38.16
step
  only Warlock
  talk Warden Haro##15499
  accept Blade of Vaulted Secrets##8707 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Deliana##16013
  accept An Earnest Proposition##8907 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Xylem##8379
  accept Warlord Krellian##9362 |goto Azshara 29.25,40.21
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
  only Draenei Warlock
  talk Valaatu##16500
  turnin Mage Training##9290 |goto Azuremyst Isle 79.58,48.76
step
  only Human Warlock
  talk Jennea Cannon##5497
  turnin Speak with Jennea##1860 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk Bink##5144
  turnin Speak with Bink##1879 |goto Ironforge 27.25,8.3
step
  only Warlock
  talk Bati##17514
  turnin Control##9595 |goto The Exodar 46.35,63.48
step
  only Warlock
  talk Jennea Cannon##5497
  turnin Report to Jennea##1919 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk Arcanist Vandril##16197
  turnin Arcane Reavers##9487 |goto Ghostlands 46.55,28.38
step
  only Warlock
  talk High Sorcerer Andromath##5694
  turnin High Sorcerer Andromath##1939 |goto Stormwind City 37.52,81.66
step
  only Warlock
  talk Tabetha##6546
  turnin Journey to the Marsh##1947 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  turnin Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  turnin Return to the Marsh##1953 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Sanath Lim-yo##8395
  turnin Magecraft##8250 |goto Azshara 28.11,50.09
step
  only Warlock
  talk Lorekeeper Kildrath##14383
  turnin The Arcanist's Cookbook##7500 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Wraps##8060 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Mantle##8068 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Robes##8069 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8101 |goto Stranglethorn Vale 15.34,16.12
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Warlock
  talk Andorgos##15502
  turnin Enigma Shoulderpads##8625 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  turnin Enigma Leggings##8631 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  turnin Enigma Circlet##8632 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Vethsera##15504
  turnin Enigma Robes##8633 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  turnin Enigma Boots##8634 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Keyl Swiftclaw##15500
  turnin Drape of Vaulted Secrets##8691 |goto Silithus 51.76,39.54
step
  only Warlock
  talk Windcaller Yessendra##15498
  turnin Band of Vaulted Secrets##8699 |goto Silithus 52.05,38.16
step
  only Warlock
  talk Warden Haro##15499
  turnin Blade of Vaulted Secrets##8707 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Deliana##16013
  turnin An Earnest Proposition##8907 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Anachronos##15192
  turnin Frame of Atiesh##9250 |goto Tanaris 64.2,51.42
step
  only Warlock
  talk Archmage Xylem##8379
  turnin Warlord Krellian##9362 |goto Azshara 29.25,40.21
step
  only Gnome Warlock
  talk Sten Stoutarm##658
  accept Glyphic Memorandum##3114 |goto Dun Morogh 29.93,71.2
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Human Warlock
  talk Jennea Cannon##5497
  accept Mirror Lake##1861 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk Bink##5144
  accept Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3
step
  only Warlock
  talk Jennea Cannon##5497
  accept Investigate the Blue Recluse##1920 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk High Sorcerer Andromath##5694
  accept Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 37.52,81.66
step
  only Warlock
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Archmage Xylem##8379
  accept Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8102 |goto Stranglethorn Vale 15.34,16.12
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
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  only Gnome Warlock
  talk Marryk Nurribit##944
  turnin Glyphic Memorandum##3114 |goto Dun Morogh 28.71,66.37
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Human Warlock
  talk Jennea Cannon##5497
  turnin Mirror Lake##1861 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk Bink##5144
  turnin Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3
step
  only Warlock
  talk Jennea Cannon##5497
  turnin Investigate the Blue Recluse##1920 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk High Sorcerer Andromath##5694
  turnin Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 37.52,81.66
step
  only Warlock
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7
step
  only Warlock
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Archmage Xylem##8379
  turnin Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8102 |goto Stranglethorn Vale 15.34,16.12
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
  only Human Warlock
  talk Marshal McBride##197
  accept Glyphic Letter##3104 |goto Elwynn Forest 48.92,41.61
step
  only Warlock
  talk Jennea Cannon##5497
  accept Gathering Materials##1921 |goto Stormwind City 38.62,79.3
step
  only Warlock
  talk High Sorcerer Andromath##5694
  accept Pristine Spider Silk##1940 |goto Stormwind City 37.52,81.66
step
  only Warlock
  talk Magus Tirth##6548
  accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  only Warlock
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Archmage Xylem##8379
  accept The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8103 |goto Stranglethorn Vale 15.34,16.12
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Robe##9095 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Leggings##9096 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Circlet##9097 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Sandals##9099 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Gloves##9100 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Belt##9101 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Bindings##9102 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9270 |goto Tanaris 64.2,51.42
step
  only Human Warlock
  talk Khelden Bremen##198
  turnin Glyphic Letter##3104 |goto Elwynn Forest 49.66,39.4
step
  only Warlock
  talk Wynne Larson##1309
  turnin Gathering Materials##1921 |goto Stormwind City 41.57,76.35
step
  only Warlock
  talk Wynne Larson##1309
  turnin Pristine Spider Silk##1940 |goto Stormwind City 41.57,76.35
step
  only Warlock
  talk Magus Tirth##6548
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  only Warlock
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Archmage Xylem##8379
  turnin The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8103 |goto Stranglethorn Vale 15.34,16.12
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Robe##9095 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Leggings##9096 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Circlet##9097 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Sandals##9099 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Gloves##9100 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Belt##9101 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Bindings##9102 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9270 |goto Tanaris 64.2,51.42
step
  only Warlock
  talk Wynne Larson##1309
  accept Manaweave Robe##1941 |goto Stormwind City 41.57,76.35
step
  only Warlock
  talk Wynne Larson##1309
  accept Astral Knot Garment##1942 |goto Stormwind City 41.57,76.35
step
  only Warlock
  talk Magus Tirth##6548
  accept Rituals of Power##1951 |goto Thousand Needles 78.29,75.7
step
  only Warlock
  talk Tabetha##6546
  accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Archmage Xylem##8379
  accept Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Jewel of Kajaro##8104 |goto Stranglethorn Vale 15.34,16.12
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Wynne Larson##1309
  turnin Manaweave Robe##1941 |goto Stormwind City 41.57,76.35
step
  only Warlock
  talk Wynne Larson##1309
  turnin Astral Knot Garment##1942 |goto Stormwind City 41.57,76.35
step
  only Warlock
  talk Tabetha##6546
  turnin Rituals of Power##1951 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Archmage Xylem##8379
  turnin Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Jewel of Kajaro##8104 |goto Stranglethorn Vale 15.34,16.12
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Tabetha##6546
  accept Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Geologist Larksbane##15183
  accept Armaments of War##8381 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Tabetha##6546
  turnin Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  turnin Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Geologist Larksbane##15183
  turnin Armaments of War##8381 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Tabetha##6546
  accept Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only Warlock
  talk Tabetha##6546
  turnin Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
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
  only Warlock
  talk Deliana##16013
  accept Just Compensation##8932 |goto Ironforge 43.53,52.64
step
  only Warlock
  talk Deliana##16013
  turnin Just Compensation##8932 |goto Ironforge 43.53,52.64
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
  only Warlock
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8953 |goto Eastern Plaguelands 30.85,16.75
step
  only Warlock
  talk Deliana##16013
  turnin Anthion's Parting Words##8953 |goto Ironforge 43.53,52.64
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
  only Warlock
  talk Deliana##16013
  accept Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
step
  only Warlock
  talk Deliana##16013
  turnin Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
]])
