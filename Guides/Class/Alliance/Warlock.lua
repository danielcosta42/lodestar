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
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  kill Timber Wolf##69 |q 179 |goto Elwynn Forest 49.48,39.15
step
  only Warlock
  note Kill Murlocs of the Silting Shore to summon a Quel'dorei Magewraith, then destroy it. Afterwards, speak with Bati at the Vault of Lights in the Exodar.
  kill Quel'dorei Magewraith##17612 |q 9595
step
  only Warlock
  note Arcanist Vandril wants you to collect 10 Arcane Fragments for him.
  kill Arcane Reaver##16339 |q 9487 |goto Ghostlands 78.57,19.87
step
  only Warlock
  note Bring 1 Jade and the Bolt Charged Bramble to Tabetha in Dustwallow Marsh.
  kill Flesh Eater##3 |q 1948 |goto Duskwood 23.81,38.2
step
  only Warlock
  note Bring Al'tabim the All-Seeing Primal Hakkari Bindings. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8060 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  only Warlock
  note Bring Al'tabim the All-Seeing a Primal Hakkari Shawl. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8068 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  only Warlock
  note Bring Al'tabim the All-Seeing a Primal Hakkari Kossack. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8069 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  only Warlock
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Death, 5 Stone Scarabs and 5 Bronze Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  kill Viscidus##15299 |q 8625 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Warlock
  note Bring Ouro's Intact Hide, 2 Idols of the Sage, 5 Silver Scarabs and 5 Bone Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  get Enigma Leggings |q 8631 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  note Bring Vek'nilash's Circlet, 2 Idols of Night, 5 Bronze Scarabs and 5 Ivory Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  kill Emperor Vek'nilash##15275 |q 8632 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Warlock
  note Bring the Husk of the Old God, 2 Idols of the Sun, 5 Gold Scarabs and 5 Clay Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  kill C'Thun##15727 |q 8633 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Warlock
  note Bring the Qiraji Bindings of Dominance, 2 Idols of the Sun, 5 Silver Scarabs and 5 Crystal Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  kill Viscidus##15299 |q 8634 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Warlock
  note Bring 1 Qiraji Martial Drape, 2 Alabaster Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  kill General Rajaxx##15341 |q 8691 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Warlock
  note Bring 1 Qiraji Magisterial Ring, 2 Azure Idols, 5 Gold Scarabs and 5 Clay Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8699 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Warlock
  note Bring 1 Qiraji Ornate Hilt, 2 Obsidian Idols, 5 Silver Scarabs and 5 Bone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8707 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Warlock
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Magister's Bindings to Deliana in Ironforge.
  kill Frostsaber Cub##7430 |q 8907 |goto Winterspring 50.32,11.34
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9121 |goto Burning Steppes 62.76,44.03
step
  only Warlock
  note Retrieve the Prismatic Shell for Archmage Xylem. The Archmage resides in a tower atop the cliffs of Azshara.
  kill Warlord Krellian##8408 |q 9362 |goto Azshara 41.02,53.05
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
  only Human Warlock
  note Bring a Mirror Lake sample to Jennea Cannon in Stormwind.
  get Mirror Lake |q 1861 |goto Stormwind City 38.62,79.3
step
  only Warlock
  note Bring Bink her Mage-tastic Gizmonitor.
  collect Bink's Toolbox##102984 |q 1880 |goto Dun Morogh 27.72,36.42
step
  only Warlock
  note Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
  get Investigate the Blue Recluse |q 1920 |goto Stormwind City 38.62,79.3
step
  only Warlock
  note Bring Ur's Treatise on Shadow Magic to High Sorcerer Andromath in Stormwind.
  collect Ur's Treatise on Shadow Magic##103628 |q 1938 |goto Redridge Mountains 78.86,47.61
step
  only Warlock
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  kill Burning Blade Summoner##4668 |q 1954 |goto Desolace 79.47,77.84
step
  only Warlock
  note Bring 10 Glittering Dust to Archmage Xylem.
  kill Blood Elf Surveyor##6198 |q 8251 |goto Azshara 57.95,28.49
step
  only Warlock
  get The Pebble of Kajaro |q 8102 |goto Stranglethorn Vale 15.34,16.12
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  get Glyph Chasing |q 8309 |goto Silithus 41.28,88.45
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |q 8310 |goto Silithus 48.5,41.14
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1 |elite
step
  note Anachronos at the Caverns of Time in Tanaris wants the Staff Head of Atiesh and the Base of Atiesh.
  kill Kel'Thuzad##15990 |q 9251 |goto Naxxramas - Raid -1,-1 |raid
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
  only Warlock
  note Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
  kill Flesh Eater##3 |q 1921 |goto Duskwood 23.81,38.2
step
  only Warlock
  note Bring 8 Pristine Spider Silk to Wynne Larson in Stormwind.
  kill Black Widow Hatchling##930 |q 1940 |goto Duskwood 32.57,51.43
step
  only Warlock
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |elite
step
  only Warlock
  note Collect 6 Enchanted Coral and return them to Archmage Xylem.
  kill Spitelash Siren##6195 |q 8252 |goto Azshara 44.56,54.02
step
  only Warlock
  get The Pebble of Kajaro |q 8103 |goto Stranglethorn Vale 15.34,16.12
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  get The Ectoplasmic Distiller |q 8921 |goto Tanaris 52.47,27.23
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Robe if you bring her the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Frostfire Robe |q 9095 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Leggings if you bring her the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Frostfire Leggings |q 9096 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Circlet if you bring her the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  get Frostfire Circlet |q 9097 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Shoulderpads if you bring her the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9098 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Sandals if you bring her the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9099 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Gloves if you bring her the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  get Frostfire Gloves |q 9100 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Belt if you bring her the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  kill Gluth##15932 |q 9101 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Bindings if you bring her the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  kill Gluth##15932 |q 9102 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  note Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him.
  kill Atiesh##16387 |q 9270 |raid
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
  note Bring the book Rituals of Power to Tabetha in Dustwallow Marsh.
  collect Rituals of Power##103664 |q 1951 |goto Scarlet Monastery - Dungeon -1,-1
step
  only Warlock
  note Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh.
  kill Obsidian Sentinel##7023 |q 1956 |goto Uldaman - Dungeon -1,-1 |elite
step
  only Warlock
  note Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem.
  kill Morphaz##5719 |q 8253 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite
step
  only Warlock
  get The Jewel of Kajaro |q 8104 |goto Stranglethorn Vale 15.34,16.12
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  get The Calling |q 8315 |goto Silithus 49.67,37.46
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  kill Tortured Druid##12178 |q 8924 |goto Silithus 62.65,52.76
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
  note Kill 12 Mana Surges in the allowed time limit.
  kill Mana Surge##6550 |q 1957
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  kill Magma Lord Bokk##16043 |q 8925 |goto Burning Steppes 35.39,57.76
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
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  get A Shifty Merchant |q 8928 |goto Tanaris 52.47,27.23
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
  note Bring a Magister's Belt and a set of Magister's Gloves to Deliana in Ironforge.
  kill Smolderthorn Mystic##9239 |q 8932 |goto Blackrock Spire - Dungeon -1,-1
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
  kill Highlord Omokk##9196 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  kill Eldreth Sorcerer##11470 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite
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
  only Warlock
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8953 |goto Eastern Plaguelands 30.85,16.75
step
  only Warlock
  note Return to Deliana in Ironforge with a set of Magister's Boots, Magister's Leggings and Magister's Mantle.
  kill Hearthsinger Forresten##10558 |q 8953 |goto Stratholme - Dungeon -1,-1 |elite
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
  kill Cursed Paladin##7071 |q 8965 |goto Hillsbrad Foothills 18.45,76.6 |elite
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
  kill Mor Grayhoof##16080 |q 8989 |elite
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
  kill Lord Valthalak##16042 |q 8995 |raid
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
  note Give Deliana your Magister's Crown and Magister's Robes.
  get Saving the Best for Last |q 9001 |goto Ironforge 43.53,52.64
step
  only Warlock
  talk Deliana##16013
  turnin Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
]])
