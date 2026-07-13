-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Hunter", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only Draenei Hunter
  talk Keilnei##16499
  accept Hunter Training##9288 |goto Azuremyst Isle 79.89,49.71
step
  only Hunter
  talk Kary Thunderhorn##3038
  accept The Hunter's Charm##8151 |goto Thunder Bluff 58.49,88.33
step
  only Hunter
  talk Vartrus the Ancient##14524
  accept An Introduction##7633
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Bracers##8062 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Belt##8066 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Mantle##8067 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Hunter
  talk Kandrostrasz##15503
  accept Striker's Footguards##8626 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Vethsera##15504
  accept Striker's Hauberk##8656 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  accept Striker's Diadem##8657 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  accept Striker's Leggings##8658 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  accept Striker's Pauldrons##8659 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Keyl Swiftclaw##15500
  accept Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only Hunter
  talk Windcaller Yessendra##15498
  accept Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Hunter
  talk Warden Haro##15499
  accept Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  only Hunter
  talk Deliana##16013
  accept An Earnest Proposition##8906 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  kill Timber Wolf##69 |q 179 |goto Elwynn Forest 49.48,39.15
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  kill Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  only Hunter
  note Bring the following Paragons of Power from Zul'Gurub to Falthir the Sightless: A Primal Hakkari Bindings. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8062 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  only Hunter
  note Bring the following Paragons of Power from Zul'Gurub to Falthir the Sightless: A Primal Hakkari Shawl. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8066 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  only Hunter
  note Bring the following Paragons of Power from Zul'Gurub to Falthir the Sightless: A Primal Hakkari Aegis. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  kill Jin'do the Hexxer##11380 |q 8067 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  only Hunter
  note Bring the Qiraji Bindings of Command, 2 Idols of Life, 5 Stone Scarabs and 5 Bone Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  kill Viscidus##15299 |q 8626 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Hunter
  note Bring the the Carapace of the Old God, 2 Idols of Life, 5 Gold Scarabs and 5 Clay Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  kill C'Thun##15727 |q 8656 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Hunter
  note Bring Vek'lor's Diadem, 2 Idols of Strife, 5 Bronze Scarabs and 5 Ivory Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  kill Emperor Vek'lor##15276 |q 8657 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Hunter
  note Bring the Skin of the Great Sandworm, 2 Idols of the Sun, 5 Silver Scarabs and 5 Bone Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  get Striker's Leggings |q 8658 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  note Bring the Qiraji Bindings of Command, 2 Idols of War, 5 Crystal Scarabs and 5 Ivory Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  kill Viscidus##15299 |q 8659 |goto Ahn'Qiraj - Raid -1,-1 |raid
step
  only Hunter
  note Bring 1 Qiraji Regal Drape, 2 Lambent Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  kill General Rajaxx##15341 |q 8696 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Hunter
  note Bring 1 Qiraji Ceremonial Ring, 2 Amber Idols, 5 Gold Scarabs and 5 Clay Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8704 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Hunter
  note Bring 1 Qiraji Spiked Hilt, 2 Azure Idols, 5 Silver Scarabs and 5 Bone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  kill Ossirian the Unscarred##15339 |q 8712 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid
step
  only Hunter
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Beaststalker's Bindings to Deliana in Ironforge.
  kill Frostsaber Cub##7430 |q 8906 |goto Winterspring 50.32,11.34
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9121 |goto Burning Steppes 62.76,44.03
step
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only Draenei Hunter
  talk Keilnei##16499
  turnin Hunter Training##9288 |goto Azuremyst Isle 79.89,49.71
step
  only Hunter
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Lorekeeper Mykos##14382
  turnin The Greatest Race of Hunters##7503 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin The Ancient Leaf##7632
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin An Introduction##7633
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Bracers##8062 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Belt##8066 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Mantle##8067 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Hunter
  talk Kandrostrasz##15503
  turnin Striker's Footguards##8626 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Vethsera##15504
  turnin Striker's Hauberk##8656 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  turnin Striker's Diadem##8657 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  turnin Striker's Leggings##8658 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  turnin Striker's Pauldrons##8659 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only Hunter
  talk Windcaller Yessendra##15498
  turnin Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Hunter
  talk Warden Haro##15499
  turnin Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  only Hunter
  talk Deliana##16013
  turnin An Earnest Proposition##8906 |goto Ironforge 43.53,52.64
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Dwarf Hunter
  talk Sten Stoutarm##658
  accept Etched Rune##3108 |goto Dun Morogh 29.93,71.2
step
  only Hunter
  talk Conservator Ilthalaine##2079
  accept Etched Sigil##3117 |goto Teldrassil 58.69,44.27
step
  only Hunter
  talk Ogtinc##8405
  accept Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Hastat the Ancient##14526
  accept Ancient Sinew Wrapped Lamina##7634
step
  only Hunter
  talk Stoma the Ancient##14525
  accept A Proper String##7635
step
  only Hunter
  talk Vartrus the Ancient##14524
  accept Stave of the Ancients##7636
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
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
  only Hunter
  note Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
  kill Mosshoof Courser##8761 |q 8153 |goto Azshara 52.87,68.58
step
  only Hunter
  note Hastat the Ancient has asked that you bring him a Mature Blue Dragon Sinew. Should you find this sinew, return it to Hastat in Felwood.
  kill Cobalt Wyrmkin##7435 |q 7634 |goto Winterspring 56.52,50.94
step
  only Hunter
  note Stoma the Ancient has asked that you bring him a Mature Black Dragon Sinew. Should you find this sinew, return it to Stoma in Felwood.
  kill Black Dragonspawn##7040 |q 7635 |goto Burning Steppes 87.2,52.28
step
  only Hunter
  note You must find and destroy these four demonic corrupters:
  get Stave of the Ancients |q 7636
step
  only Hunter
  get The Maelstrom's Tendril |q 8146 |goto Stranglethorn Vale 14.08,13.72
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
  only Dwarf Hunter
  talk Thorgas Grimson##895
  turnin Etched Rune##3108 |goto Dun Morogh 29.18,67.45
step
  only Hunter
  talk Ayanna Everstride##3596
  turnin Etched Sigil##3117 |goto Teldrassil 58.66,40.45
step
  only Hunter
  talk Ogtinc##8405
  turnin Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Hastat the Ancient##14526
  turnin Ancient Sinew Wrapped Lamina##7634
step
  only Hunter
  talk Stoma the Ancient##14525
  turnin A Proper String##7635
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin Stave of the Ancients##7636
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
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
  only Hunter
  talk Ogtinc##8405
  accept Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Tunic##9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Legguards##9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Boots##9058 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Handguards##9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Girdle##9060 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  kill Young Wavethrasher##6347 |q 8231 |goto Azshara 85.54,12.61
step
  only Hunter
  get The Maelstrom's Tendril |q 8147 |goto Stranglethorn Vale 14.08,13.72
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  get The Ectoplasmic Distiller |q 8921 |goto Tanaris 52.47,27.23
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  get Cryptstalker Tunic |q 9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  get Cryptstalker Legguards |q 9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  get Cryptstalker Headpiece |q 9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9057 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9058 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Cryptstalker Handguards |q 9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9060 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9061 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  talk Ogtinc##8405
  turnin Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Tunic##9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Legguards##9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Boots##9058 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Handguards##9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Girdle##9060 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Ogtinc##8405
  accept The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Hunter
  note Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  kill Morphaz##5719 |q 8232 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite
step
  only Hunter
  get Maelstrom's Wrath |q 8148 |goto Stranglethorn Vale 14.08,13.72
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  get The Calling |q 8315 |goto Silithus 49.67,37.46
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  kill Tortured Druid##12178 |q 8924 |goto Silithus 62.65,52.76
step
  only Hunter
  talk Ogtinc##8405
  turnin The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Hunter
  talk Geologist Larksbane##15183
  accept Armaments of War##8377 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  kill Magma Lord Bokk##16043 |q 8925 |goto Burning Steppes 35.39,57.76
step
  only Hunter
  talk Geologist Larksbane##15183
  turnin Armaments of War##8377 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  get A Shifty Merchant |q 8928 |goto Tanaris 52.47,27.23
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
  only Hunter
  talk Deliana##16013
  accept Just Compensation##8931 |goto Ironforge 43.53,52.64
step
  only Hunter
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Deliana in Ironforge.
  kill Smolderthorn Headhunter##9241 |q 8931 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only Hunter
  talk Deliana##16013
  turnin Just Compensation##8931 |goto Ironforge 43.53,52.64
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
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8952 |goto Eastern Plaguelands 30.85,16.75
step
  only Hunter
  note Return to Deliana in Ironforge with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  kill Nerub'enkan##10437 |q 8952 |goto Stratholme - Dungeon -1,-1 |elite
step
  only Hunter
  talk Deliana##16013
  turnin Anthion's Parting Words##8952 |goto Ironforge 43.53,52.64
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
  only Hunter
  talk Deliana##16013
  accept Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
step
  only Hunter
  note Give Deliana your Beaststalker's Cap and Beaststalker's Tunic.
  get Saving the Best for Last |q 9000 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  turnin Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
]])
