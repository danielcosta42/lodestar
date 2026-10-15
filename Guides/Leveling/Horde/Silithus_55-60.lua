-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Silithus (55-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Swamp of Sorrows (50-57)",
	rev = "aab691d1",
}, [[
step
  ding 54
step
  only level>=54
  talk Cenarion Emissary Blackhoof##15188
  accept Taking Back Silithus##8276 |goto Orgrimmar 47.64,65.76
step
  only completed(1124) level>=54
  talk Layo Starstrike##13220
  accept The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  only completed(1124) haveq(1125)
  note Free the spirits of 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village, and then return to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  kill Tortured Sentinel##12179 |q 1125/2 |goto Silithus 63.59,52.79
  kill Tortured Druid##12178 |q 1125 |goto Silithus 62.65,52.84
step
  note {fp}Runk Windtamer
  goto Silithus 48.68,36.67 |tip {vendor}
step
  only haveq(8276)
  note Talk to Windcaller Proudhorn at Cenarion Hold in Silithus.
  talk Windcaller Proudhorn##15191
  turnin Taking Back Silithus##8276 |goto Silithus 51.15,38.29
step
  only level>=54
  talk Beetix Ficklespragg##15189
  accept Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  only level>=54
  talk Windcaller Proudhorn##15191
  accept Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  only haveq(8277)
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
  collect 8 Sand Skitterer Fang##20376 |q 8277/2 |goto Silithus 58.46,27.73 |tip {dropsfrom}Sand Skitterer
  collect 8 Stonelash Scorpid Stinger##20373 |q 8277 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid
step
  only haveq(8280)
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to kill 15 Dredge Strikers.
  kill Dredge Striker##11740 |q 8280 |goto Silithus 55.73,28.63
step
  only haveq(8277)
  talk Beetix Ficklespragg##15189
  turnin Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  only haveq(8280)
  talk Windcaller Proudhorn##15191
  turnin Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  only completed(8277) level>=54
  talk Beetix Ficklespragg##15189
  accept Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  only completed(8280) level>=54
  talk Windcaller Proudhorn##15191
  accept Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  only haveq(8281)
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to slay 20 Dredge Crushers.
  kill Dredge Crusher##11741 |q 8281 |goto Silithus 38.71,54.21
step
  only haveq(8278)
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
  collect 3 Stonelash Pincer Stinger##20374 |q 8278/2 |goto Silithus 38.44,55.6 |tip {dropsfrom}Stonelash Pincer
  collect 3 Rock Stalker Fang##20377 |q 8278/3 |goto Silithus 38.53,75.75 |tip {dropsfrom}Rock Stalker
  collect 3 Stonelash Flayer Stinger##20375 |q 8278 |goto Silithus 36.03,78.08 |tip {dropsfrom}Stonelash Flayer
step
  only completed(1124) haveq(1125)
  talk Layo Starstrike##13220
  turnin The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  only completed(1124) completed(1125) level>=54
  talk Layo Starstrike##13220
  accept Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  only completed(1124) haveq(1126)
  note Scale the tower of Southwind Village and locate a means to stir the silithid hive into activity. Bring back anything unusual you may uncover when doing so to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  collect Encrusted Silithid Object##17346 |q 1126 |goto Silithus 60.2,52.6 |tip {dropsfrom}Hive'Ashi Ambusher
step
  only haveq(8278)
  talk Beetix Ficklespragg##15189
  turnin Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  only haveq(8281)
  talk Windcaller Proudhorn##15191
  turnin Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  only completed(8278) level>=54
  talk Noggle Ficklespragg##15190
  accept Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  only level>=54
  talk Geologist Larksbane##15183
  accept The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  only completed(1124) haveq(1126)
  talk Layo Starstrike##13220
  turnin Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  only completed(1124) completed(1126) level>=54
  talk Layo Starstrike##13220
  accept Umber, Archivist##6844 |goto Silithus 81.87,18.93
step
  only haveq(8284)
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to collect 8 Twilight Tablet Fragments.
  collect 8 Twilight Tablet Fragment##20378 |q 8284 |goto Silithus 20.72,10.25
step
  only haveq(8282)
  note Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
  collect Noggle's Satchel##20379 |q 8282 |goto Silithus 44.56,91.38
step
  only haveq(8282)
  talk Noggle Ficklespragg##15190
  turnin Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  only haveq(8284)
  talk Geologist Larksbane##15183
  turnin The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  only level>=59
  click Wanted Poster: Deathclasp##180448
  accept Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 51.35,38.27
step
  only completed(8284) level>=54
  talk Geologist Larksbane##15183
  accept The Deserter##8285 |goto Silithus 49.67,37.46
step
  only haveq(8285)
  note Take the restored tablet to Hermit Ortell in Silithus.
  talk Hermit Ortell##15194
  turnin The Deserter##8285 |goto Silithus 67.19,69.76
step
  only completed(8285) level>=54
  talk Hermit Ortell##15194
  accept The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  only haveq(8283)
  note Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
  kill Deathclasp##15196 |q 8283 |goto Silithus 45.07,92.31 |elite
  collect Deathclasp's Pincer##20385 |q 8283 |goto Silithus 45.07,92.31
step
  only haveq(8283)
  talk Vish Kozus##15182
  turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 50.75,33.65
step
  only level>=57
  talk Bor Wildmane##15306
  accept Secret Communication##8318 |goto Silithus 48.57,37.78
step
  talk Scout Bloodfist##17081
  accept Report to General Kirika##9416 |goto Silithus 48.95,36.69
step
  only haveq(8279)
  note Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
  collect Twilight Lexicon - Chapter 3##20396 |q 8279/3 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth
  collect Twilight Lexicon - Chapter 1##20394 |q 8279/1 |goto Silithus 26.35,36.62 |tip {dropsfrom}Twilight Keeper Mayna
  collect Twilight Lexicon - Chapter 2##20395 |q 8279 |goto Silithus 16.09,86.37 |tip {dropsfrom}Twilight Keeper Exeter
step
  only haveq(8318)
  note Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
  collect 10 Encrypted Twilight Text##20404 |q 8318 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  note Speak with General Kirika at the Horde encampment near Hive'Regal.
  talk General Kirika##17079
  turnin Report to General Kirika##9416 |goto Silithus 50.75,69.54
step
  talk General Kirika##17079
  accept Scouring the Desert##9422 |goto Silithus 50.75,69.54
step
  note Find and deliver Silithyst to the Silithyst Extractor then speak with General Kirika at the Horde encampment near Hive'Regal.
  get Scouring the Desert |q 9422
step
  talk General Kirika##17079
  turnin Scouring the Desert##9422 |goto Silithus 50.75,69.54
step
  only haveq(8279)
  talk Hermit Ortell##15194
  turnin The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  only completed(8279)
  talk Hermit Ortell##15194
  accept True Believers##8323 |goto Silithus 67.19,69.76
step
  only completed(8279)
  talk Hermit Ortell##15194
  accept A Terrible Purpose##8287 |goto Silithus 67.19,69.76
step
  only haveq(8287)
  note Take the Decoded Tablet Parchment to Commander Mar'alith.
  talk Commander Mar'alith##15181
  turnin A Terrible Purpose##8287 |goto Silithus 49.2,34.18
step
  only haveq(8318)
  talk Bor Wildmane##15306
  turnin Secret Communication##8318 |goto Silithus 48.57,37.78
step
  only level>=58
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only haveq(8323)
  note Hermit Ortell wants you to bring him 10 Encrypted Twilight Texts
  collect 10 Encrypted Twilight Text##20404 |q 8323 |goto Silithus 26.31,37.02 |tip {dropsfrom}Twilight Avenger, Twilight Geolord, Twilight Stonecaller
step
  only level>=58
  kill Hive'Zora Wasp##11727 |goto Silithus 27.87,61.78 |tip Loot the quest item here — it starts the quest.
  accept Brann Bronzebeard's Lost Letter##8308 |goto Silithus 27.87,61.78
step
  only haveq(8308)
  note Take Brann Bronzebeard's Letter to Bronzebeard's Encampment in southern Silithus.
  talk Rutgar Glyphshaper##15170
  turnin Brann Bronzebeard's Lost Letter##8308 |goto Silithus 41.28,88.45
step
  only haveq(8304)
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  talk Frankal Stonebridge##15171 |q 8304/1 |goto Silithus 40.81,88.86
  talk Rutgar Glyphshaper##15170 |q 8304 |goto Silithus 41.28,88.45
step
  only haveq(8323)
  talk Hermit Ortell##15194
  turnin True Believers##8323 |goto Silithus 67.19,69.76
step
  only haveq(8304)
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only completed(8304) level>=60
  talk Commander Mar'alith##15181
  accept Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  only completed(8304) level>=58
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  only completed(8304) level>=60
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  only haveq(8310)
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Regal Ambusher##11730 |q 8310/3 |goto Silithus 58.08,86.89 |elite
  collect Hive'Regal Silithid Brain##20459 |q 8310/3 |goto Silithus 58.08,86.89
  collect Hive'Ashi Silithid Brain##20457 |q 8310/1 |goto Silithus 61.73,52.51 |tip {dropsfrom}Hive'Ashi Drone, Hive'Ashi Stinger, Hive'Ashi Worker
  collect Hive'Zora Silithid Brain##20458 |q 8310 |goto Silithus 27.87,61.78 |tip {dropsfrom}Hive'Zora Wasp, Hive'Zora Waywatcher, Hive'Zora Tunneler
step
  only haveq(8309)
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Zora Rubbing##20454 |q 8309/2 |goto Silithus 37.27,62.5 |tip {dropsfrom}Hive'Zora Glyphed Crystal
  collect Hive'Ashi Rubbing##20455 |q 8309/1 |goto Silithus 50.87,26.76 |tip {dropsfrom}Hive'Ashi Glyphed Crystal
  collect Hive'Regal Rubbing##20456 |q 8309 |goto Kalimdor - the continent map 44.4,86.1 |tip {dropsfrom}Hive'Regal Glyphed Crystal
step
  only haveq(8309)
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  only haveq(8310)
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  only completed(8309) completed(8310) level>=58
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  only haveq(8314)
  note Rutgar Glyphshaper at Bronzebeard's Encampment wants you to deliver the Glyphed Crystal Prism to Geologist Larksbane at the Cenarion Hold in Silithus.
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  only haveq(8306)
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.
  kill Mistress Natalia Mar'alith##15215 |q 8306 |goto Kalimdor - the continent map 44.4,86.11 |elite
step
  only haveq(8306)
  talk Commander Mar'alith##15181
  turnin Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  only completed(1124) haveq(6844)
  note Take the Encrusted Silithid Object to Umber - the Cenarion Circle's archivist - in the village of Nighthaven, Moonglade.
  talk Umber##11939
  turnin Umber, Archivist##6844 |goto Moonglade 44.88,35.6 |tip {turninat}Moonglade
step
  only completed(1124) completed(6844)
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  only completed(1124) haveq(6845)
  note Speak with Rabine Saturna in the village of Nighthaven, Moonglade.
  talk Rabine Saturna##11801
  turnin Uncovering Past Secrets##6845 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  only completed(1124) completed(6845)
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  only completed(1124) haveq(1185)
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6 |tip {turninat}Moonglade
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 34.29,66.14
]])
