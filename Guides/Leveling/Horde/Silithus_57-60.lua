-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Silithus (57-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Cenarion Emissary Blackhoof##15188
  accept Taking Back Silithus##8276 |goto Orgrimmar 47.64,65.76
step
  only completed(1124)
  talk Layo Starstrike##13220
  accept The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  note {fp}Runk Windtamer
  goto Silithus 48.68,36.67 |tip {vendor}
step
  talk Windcaller Proudhorn##15191
  turnin Taking Back Silithus##8276 |goto Silithus 51.15,38.29
step
  talk Beetix Ficklespragg##15189
  accept Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  talk Windcaller Proudhorn##15191
  accept Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  talk Geologist Larksbane##15183
  accept The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  click Wanted Poster: Deathclasp##180448
  accept Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 51.35,38.27
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
  collect 8 Stonelash Scorpid Stinger##20373 |q 8277 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to kill 15 Dredge Strikers.
  kill Dredge Striker##11740 |q 8280 |goto Silithus 55.73,28.63
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to collect 8 Twilight Tablet Fragments.
  collect 8 Twilight Tablet Fragment##20378 |q 8284 |goto Silithus 20.72,10.25
step
  talk Beetix Ficklespragg##15189
  turnin Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  talk Windcaller Proudhorn##15191
  turnin Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  talk Geologist Larksbane##15183
  turnin The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  talk Beetix Ficklespragg##15189
  accept Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  talk Windcaller Proudhorn##15191
  accept Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  talk Geologist Larksbane##15183
  accept The Deserter##8285 |goto Silithus 49.67,37.46
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to slay 20 Dredge Crushers.
  kill Dredge Crusher##11741 |q 8281 |goto Silithus 38.71,54.21
step
  talk Hermit Ortell##15194
  turnin The Deserter##8285 |goto Silithus 67.19,69.76
step
  only completed(1124)
  note Free the spirits of 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village, and then return to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  kill Tortured Druid##12178 |q 1125 |goto Silithus 62.65,52.84
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
  collect 3 Stonelash Flayer Stinger##20375 |q 8278 |goto Silithus 36.03,78.08 |tip {dropsfrom}Stonelash Flayer
step
  note Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
  kill Deathclasp##15196 |goto Silithus 45.07,92.31 |elite
  collect Deathclasp's Pincer##20385 |q 8283 |goto Silithus 45.07,92.31
step
  only completed(1124)
  talk Layo Starstrike##13220
  turnin The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  only completed(1124)
  talk Layo Starstrike##13220
  accept Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  talk Beetix Ficklespragg##15189
  turnin Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  talk Windcaller Proudhorn##15191
  turnin Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  talk Vish Kozus##15182
  turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 50.75,33.65
step
  talk Noggle Ficklespragg##15190
  accept Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  only completed(1124)
  note Scale the tower of Southwind Village and locate a means to stir the silithid hive into activity. Bring back anything unusual you may uncover when doing so to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  collect Encrusted Silithid Object##17346 |q 1126 |goto Silithus 60.2,52.6 |tip {dropsfrom}Hive'Ashi Ambusher
step
  note Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
  collect Noggle's Satchel##20379 |q 8282 |goto Silithus 44.56,91.38
step
  only completed(1124)
  talk Layo Starstrike##13220
  turnin Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  only completed(1124)
  talk Layo Starstrike##13220
  accept Umber, Archivist##6844 |goto Silithus 81.87,18.93
step
  talk Noggle Ficklespragg##15190
  turnin Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite |tip Loot the quest item here — it starts the quest.
  accept Brann Bronzebeard's Lost Letter##8308 |goto Silithus 50.21,40.97
step
  talk Bor Wildmane##15306
  accept Secret Communication##8318 |goto Silithus 48.57,37.78
step
  talk Aurel Goldleaf##15282
  accept A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  talk Scout Bloodfist##17081
  accept Report to General Kirika##9416 |goto Silithus 48.95,36.69
step
  note Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
  collect 10 Encrypted Twilight Text##20404 |q 8318 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  note Aurel Goldleaf at Cenarion Hold in Silithus wants you to bring her 1 Abyssal Scepter. You must also be Honored with the Cenarion Circle.
  kill Prince Skaldrenox##15203 |goto Silithus 25.56,34.04 |raid
  collect Abyssal Scepter##20515 |q 9248 |goto Silithus 25.56,34.04
step
  talk Bor Wildmane##15306
  turnin Secret Communication##8318 |goto Silithus 48.57,37.78
step
  talk Aurel Goldleaf##15282
  turnin A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  talk General Kirika##17079
  turnin Report to General Kirika##9416 |goto Silithus 50.75,69.54
step
  talk General Kirika##17079
  accept Scouring the Desert##9422 |goto Silithus 50.75,69.54
step
  note Find and deliver Silithyst to the Silithyst Extractor then speak with General Kirika at the Horde encampment near Hive'Regal.
  get Scouring the Desert |q 9422 |goto Silithus 50.75,69.54
step
  talk General Kirika##17079
  turnin Scouring the Desert##9422 |goto Silithus 50.75,69.54
step
  talk Hermit Ortell##15194
  accept The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  talk Rutgar Glyphshaper##15170
  turnin Brann Bronzebeard's Lost Letter##8308 |goto Silithus 41.28,88.45
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  talk Frankal Stonebridge##15171 |q 8304 |goto Silithus 40.81,88.86
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  accept Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  note Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
  collect Twilight Lexicon - Chapter 1##20394 |q 8279 |goto Silithus 26.35,36.62 |tip {dropsfrom}Twilight Keeper Mayna
step
  talk Hermit Ortell##15194
  turnin The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  talk Hermit Ortell##15194
  accept True Believers##8323 |goto Silithus 67.19,69.76
step
  talk Hermit Ortell##15194
  accept A Terrible Purpose##8287 |goto Silithus 67.19,69.76
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Commander Mar'alith##15181
  turnin A Terrible Purpose##8287 |goto Silithus 49.2,34.18
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 50.87,26.76 |tip {dropsfrom}Hive'Ashi Glyphed Crystal
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 50.21,40.97
step
  note Hermit Ortell wants you to bring him 10 Encrypted Twilight Texts
  collect Encrypted Twilight Text##20404 |q 8323 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  talk Hermit Ortell##15194
  turnin True Believers##8323 |goto Silithus 67.19,69.76
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  kill Emissary Roman'khan##14862 |goto Silithus 48.77,58.14 |raid
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 48.77,58.14
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  only Warrior
  talk Geologist Larksbane##15183
  accept Armaments of War##8316 |goto Silithus 49.67,37.46
step
  only Hunter
  talk Geologist Larksbane##15183
  accept Armaments of War##8377 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Geologist Larksbane##15183
  accept Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Priest
  talk Geologist Larksbane##15183
  accept Armaments of War##8379 |goto Silithus 49.67,37.46
step
  only Shaman
  talk Geologist Larksbane##15183
  accept Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only not Warrior not Paladin not Hunter not Rogue not Priest not Shaman not Druid
  talk Geologist Larksbane##15183
  accept Armaments of War##8381 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  accept Armaments of War##8382 |goto Silithus 49.67,37.46
step
  only Warrior
  talk Geologist Larksbane##15183
  turnin Armaments of War##8316 |goto Silithus 49.67,37.46
step
  only Hunter
  talk Geologist Larksbane##15183
  turnin Armaments of War##8377 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Geologist Larksbane##15183
  turnin Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Priest
  talk Geologist Larksbane##15183
  turnin Armaments of War##8379 |goto Silithus 49.67,37.46
step
  only Shaman
  talk Geologist Larksbane##15183
  turnin Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only not Warrior not Paladin not Hunter not Rogue not Priest not Shaman not Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8381 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8382 |goto Silithus 49.67,37.46
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  accept An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29
step
  only Mage
  talk Mokvar##16012
  accept An Earnest Proposition##8915 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  accept An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  talk Mokvar##16012
  accept An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  talk Mokvar##16012
  accept An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  talk Mokvar##16012
  accept An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  accept An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Hunter
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Beaststalker's Bindings to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8914 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Mage
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Magister's Bindings to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8915 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Priest
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Devout Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8916 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Rogue
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Shadowcraft Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8917 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Shaman
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bindings of Elements to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8918 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warlock
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Dreadmist Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8919 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warrior
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bracers of Valor to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8920 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin An Earnest Proposition##8915 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Priest
  talk Mokvar##16012
  turnin An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Mokvar##16012
  turnin An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Mokvar##16012
  turnin An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Mokvar##16012
  turnin An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only not Paladin
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.
  kill Mistress Natalia Mar'alith##15215 |q 8306 |goto Kalimdor - the continent map 44.4,86.11 |elite
step
  talk Commander Mar'alith##15181
  turnin Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  only not Paladin
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23 |tip {turninat}Tanaris
step
  only completed(1124)
  talk Umber##11939
  turnin Umber, Archivist##6844 |goto Moonglade 44.88,35.6 |tip {turninat}Moonglade
step
  only not Paladin
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only not Paladin
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  only not Paladin
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23 |tip {turninat}Tanaris
step
  only completed(1124)
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  only not Paladin
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only not Paladin
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  only completed(1124)
  talk Rabine Saturna##11801
  turnin Uncovering Past Secrets##6845 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  only not Paladin
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23 |tip {turninat}Tanaris
step
  only completed(1124)
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  only completed(1124)
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6 |tip {turninat}Moonglade
]])
