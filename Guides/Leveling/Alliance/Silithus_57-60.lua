-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Silithus (57-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stranglethorn Vale (55-60)",
}, [[
step
  only completed(1124)
  talk Layo Starstrike##13220
  accept The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  note {fp}Cloud Skydancer
  goto Silithus 50.58,34.45 |tip {vendor}
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
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
  collect 3 Stonelash Flayer Stinger##20375 |q 8278 |goto Silithus 36.03,78.08 |tip {dropsfrom}Stonelash Flayer
step
  note Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
  kill Deathclasp##15196 |goto Silithus 45.07,92.31 |elite
  collect Deathclasp's Pincer##20385 |q 8283 |goto Silithus 45.07,92.31
step
  talk Hermit Ortell##15194
  turnin The Deserter##8285 |goto Silithus 67.19,69.76
step
  only completed(1124)
  note Free the spirits of 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village, and then return to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  kill Tortured Druid##12178 |q 1125 |goto Silithus 62.65,52.84
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
  talk Rifleman Torrig##17082
  accept Report to Marshal Bluewall##9415 |goto Silithus 50.68,34.71
step
  note Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
  collect 10 Encrypted Twilight Text##20404 |q 8318 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  talk Bor Wildmane##15306
  turnin Secret Communication##8318 |goto Silithus 48.57,37.78
step
  talk Marshal Bluewall##17080
  turnin Report to Marshal Bluewall##9415 |goto Silithus 33.29,51.06
step
  talk Marshal Bluewall##17080
  accept Scouring the Desert##9419 |goto Silithus 33.29,51.06
step
  note Find and deliver Silithyst to the Silithyst Extractor, then speak with Marshal Bluewall at the Alliance encampment near Hive'Zora.
  get Scouring the Desert |q 9419 |goto Silithus 33.29,51.06
step
  note Aurel Goldleaf at Cenarion Hold in Silithus wants you to bring her 1 Abyssal Scepter. You must also be Honored with the Cenarion Circle.
  kill Prince Skaldrenox##15203 |goto Silithus 25.56,34.04 |raid
  collect Abyssal Scepter##20515 |q 9248 |goto Silithus 25.56,34.04
step
  talk Marshal Bluewall##17080
  turnin Scouring the Desert##9419 |goto Silithus 33.29,51.06
step
  talk Rutgar Glyphshaper##15170
  turnin Brann Bronzebeard's Lost Letter##8308 |goto Silithus 41.28,88.45
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  talk Frankal Stonebridge##15171 |q 8304 |goto Silithus 40.81,88.86
step
  talk Hermit Ortell##15194
  accept The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Aurel Goldleaf##15282
  turnin A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  talk Commander Mar'alith##15181
  accept Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  note Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
  collect Twilight Lexicon - Chapter 1##20394 |q 8279 |goto Silithus 26.35,36.62 |tip {dropsfrom}Twilight Keeper Mayna
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
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
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Hermit Ortell##15194
  turnin True Believers##8323 |goto Silithus 67.19,69.76
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
  only Paladin
  talk Geologist Larksbane##15183
  accept Armaments of War##8376 |goto Silithus 49.67,37.46
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
  only Paladin
  talk Geologist Larksbane##15183
  turnin Armaments of War##8376 |goto Silithus 49.67,37.46
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
  only not Warrior not Paladin not Hunter not Rogue not Priest not Shaman not Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8381 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8382 |goto Silithus 49.67,37.46
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.
  kill Mistress Natalia Mar'alith##15215 |q 8306 |goto Kalimdor - the continent map 44.4,86.11 |elite
step
  talk Commander Mar'alith##15181
  turnin Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  only completed(1124)
  talk Umber##11939
  turnin Umber, Archivist##6844 |goto Moonglade 44.88,35.6 |tip {turninat}Moonglade
step
  only completed(1124)
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  only completed(1124)
  talk Rabine Saturna##11801
  turnin Uncovering Past Secrets##6845 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  only completed(1124)
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  only completed(1124)
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6 |tip {turninat}Moonglade
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 30.52,47.87
]])
