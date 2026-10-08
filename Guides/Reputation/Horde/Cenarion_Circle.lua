-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Cenarion Circle", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Skyborne Druid
  talk Turak Runetotem##3033
  accept Moonglade##94913 |goto Thunder Bluff 76.48,27.22
step
  only Skyborne Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##94913 |goto Moonglade 56.21,30.64
step
  only Tauren Druid not completed(5927) not completed(5928) not haveq(5927) not haveq(5928)
  talk Innkeeper Pala##6746
  accept Heeding the Call##5926 |goto Thunder Bluff 45.81,64.71
step
  only Tauren Druid not completed(5927) not completed(5928) not haveq(5927) not haveq(5928)
  talk Turak Runetotem##3033
  turnin Heeding the Call##5926 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Moonglade##5922 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5922 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  note Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear. When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.
  talk Great Bear Spirit##11956 |q 5930 |goto Moonglade 39.11,27.5
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Back to Thunder Bluff##5932 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Back to Thunder Bluff##5932 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Body and Heart##6002 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  note Use the Cenarion Lunardust on the Moonkin Stone between Mulgore and the Barrens to bring forth Lunaclaw. From there, you must face Lunaclaw and earn the strength of body and heart it possesses.
  use Lunaclaw Spirit##12144 |q 6002 |tip {useit}
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Body and Heart##6002 |goto Thunder Bluff 76.48,27.22
step
  only Skyborne Druid
  talk Lotheluum Starbreeze##252359
  accept The Great Ursera Spirit##94006 |goto Zephras Isle 64.02,75.11
step
  only Skyborne Druid
  talk Urs'endris##255853
  turnin The Great Ursera Spirit##94006 |goto Zephras Isle 69.72,61.68
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Lessons Anew##6126 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Lessons Anew##6126 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6127 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  note Use the Empty Dreadmist Peak Sampler to draw a sample of water from a pool at the top of the peak.
  collect Filled Dreadmist Peak Sampler##15843 |q 6127 |goto The Barrens 48.4,18.89 |tip {dropsfrom}Dreadmist Peak Pool
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  turnin The Principal Source##6127 |goto The Barrens 52.26,31.93
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  accept Gathering the Cure##6128 |goto The Barrens 52.26,31.93
step
  only Tauren Druid
  note Bring 5 Earthroot and 5 Kodo Horns to Tonga Runetotem at the Crossroads so he may make a curative salve.
  collect 5 Earthroot##2449 |q 6128 |goto Teldrassil 57.73,65.76 |tip {dropsfrom}Lasher Sproutling, Wrathvine, Earthroot
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  turnin Gathering the Cure##6128 |goto The Barrens 52.26,31.93
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  accept Curing the Sick##6129 |goto The Barrens 52.26,31.93
step
  only Tauren Druid
  note Use the Curative Animal Salve on 10 Sickly Gazelles that are located throughout the northern part of the Barrens; doing so should cure them. Sickly Gazelles have been reported north of the east-west road that runs through the Crossroads.
  use Sickly Gazelle##12296 |q 6129 |goto The Barrens 54.25,24.17 |tip {useit}
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Curing the Sick##6129 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6130 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Power over Poison##6130 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept A Lesson to Learn##27 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##27 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##28 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  note Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble.
  collect Shrine Of Remulos##15885 |q 28 |goto Moonglade 36,41.42
step
  only Tauren Druid
  talk Tajarri##11799
  turnin Trial of the Lake##28 |goto Moonglade 36.52,40.1
step
  only Tauren Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##30 |goto Moonglade 36.52,40.1
step
  only Tauren Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 30 |goto Moonglade 36,41.42 |tip {dropsfrom}Shrine Of Remulos
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##30 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##31 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Aquatic Form##31 |goto Thunder Bluff 76.48,27.22
step
  only Skyborne
  talk Dendrite Starblaze##11802
  accept The Great Windborne Cat Spirit##98341 |goto Moonglade 56.21,30.64
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  turnin The Great Windborne Cat Spirit##98341 |goto Moonglade 44,73.6
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept The Great Cat Spirit##98405 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98405 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  accept The Great Cat Spirit##98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit.
  collect Relic of the Fang##280502 |q 98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  accept Blessings of the Great Cat Spirit##98739 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Cat Spirit##98739 |goto Moonglade 56.21,30.64
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  accept The Great Windborne Cat Spirit##98404 |goto Moonglade 44,73.6
step
  only Skyborne
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Avatar of Saeyleenan.
  collect Relic of the Fang##280502 |q 98404 |goto Moonglade 44,73.6
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  turnin The Great Windborne Cat Spirit##98404 |goto Moonglade 44,73.6
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  accept Blessings of the Great Windborne Cat Spirit##98738 |goto Moonglade 44,73.6
step
  only Skyborne
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Windborne Cat Spirit##98738 |goto Moonglade 56.21,30.64
step
  only not Orc not Undead not Troll Druid
  talk Turak Runetotem##3033
  accept The Great Cat Spirit##98340 |goto Thunder Bluff 76.48,27.22
step
  only not Orc not Undead not Troll Druid
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98340 |goto Moonglade 56.21,30.64
step
  talk Selendra##13699
  accept Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  note Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace.
  kill Princess Theradras##12201 |q 7064 |goto Maraudon - Dungeon -1,-1 |elite
step
  talk Selendra##13699
  turnin Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  talk Zaetar's Spirit##12238
  accept Seed of Life##7066 |goto Maraudon - Dungeon -1,-1
step
  talk Keeper Remulos##11832
  turnin Seed of Life##7066 |goto Moonglade 36.18,41.79
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  note Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Wolf##1817 |q 4984 |goto Western Plaguelands 46.52,44.91
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  note Destroy 8 Diseased Grizzlies, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Grizzly##1816 |q 4985 |goto Western Plaguelands 59.01,51.61
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  talk Cenarion Emissary Blackhoof##15188
  accept Taking Back Silithus##8276 |goto Orgrimmar 47.64,65.76
step
  talk Windcaller Proudhorn##15191
  turnin Taking Back Silithus##8276 |goto Silithus 51.15,38.29
step
  talk Windcaller Proudhorn##15191
  accept Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to kill 15 Dredge Strikers.
  kill Dredge Striker##11740 |q 8280 |goto Silithus 55.73,28.63
step
  talk Windcaller Proudhorn##15191
  turnin Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  talk Windcaller Proudhorn##15191
  accept Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to slay 20 Dredge Crushers.
  kill Dredge Crusher##11741 |q 8281 |goto Silithus 38.71,54.21
step
  talk Windcaller Proudhorn##15191
  turnin Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  talk Beetix Ficklespragg##15189
  accept Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
  collect 8 Stonelash Scorpid Stinger##20373 |q 8277 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid
step
  talk Beetix Ficklespragg##15189
  turnin Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  talk Beetix Ficklespragg##15189
  accept Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
  collect 3 Stonelash Flayer Stinger##20375 |q 8278 |goto Silithus 36.03,78.08 |tip {dropsfrom}Stonelash Flayer
step
  talk Beetix Ficklespragg##15189
  turnin Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  talk Noggle Ficklespragg##15190
  accept Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  note Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
  collect Noggle's Satchel##20379 |q 8282 |goto Silithus 44.56,91.38
step
  talk Noggle Ficklespragg##15190
  turnin Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  only not completed(1004) not completed(1018) not haveq(1004) not haveq(1018)
  talk Bluff Runner Windstrider##10881
  accept The New Frontier##1000 |goto Thunder Bluff 44.33,58.76
step
  only not completed(1004) not completed(1018) not haveq(1004) not haveq(1018)
  talk Arch Druid Hamuul Runetotem##5769
  turnin The New Frontier##1000 |goto Thunder Bluff 78.62,28.56
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Rabine Saturna##1123 |goto Thunder Bluff 78.62,28.56
step
  talk Rabine Saturna##11801
  turnin Rabine Saturna##1123 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
step
  talk Layo Starstrike##13220
  turnin Wasteland##1124 |goto Silithus 81.87,18.93
step
  talk Layo Starstrike##13220
  accept The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  note Free the spirits of 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village, and then return to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  kill Tortured Druid##12178 |q 1125 |goto Silithus 62.65,52.84
step
  talk Layo Starstrike##13220
  turnin The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  talk Layo Starstrike##13220
  accept Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  note Scale the tower of Southwind Village and locate a means to stir the silithid hive into activity. Bring back anything unusual you may uncover when doing so to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  collect Encrusted Silithid Object##17346 |q 1126 |goto Silithus 60.2,52.6 |tip {dropsfrom}Hive'Ashi Ambusher
step
  talk Layo Starstrike##13220
  turnin Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  talk Layo Starstrike##13220
  accept Umber, Archivist##6844 |goto Silithus 81.87,18.93
step
  talk Umber##11939
  turnin Umber, Archivist##6844 |goto Moonglade 44.88,35.6
step
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  talk Rabine Saturna##11801
  turnin Uncovering Past Secrets##6845 |goto Moonglade 51.69,45.1
step
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Calandrath##15174
  accept Desert Recipe##8307 |goto Silithus 51.89,39.16
step
  turnin Desert Recipe##8307 |goto Silithus 37.94,45.31
step
  click Sandy Cookbook##180503
  accept Sharing the Knowledge##8313 |goto Silithus 37.94,45.31
step
  talk Calandrath##15174
  turnin Sharing the Knowledge##8313 |goto Silithus 51.89,39.16
step
  talk Calandrath##15174
  accept Kitchen Assistance##8317 |goto Silithus 51.89,39.16
step
  note Calandrath at Cenarion Hold needs a batch of 10 Smoked Desert Dumplings.
  collect Smoked Desert Dumplings##20452 |q 8317 |goto Silithus 51.89,39.16
step
  talk Calandrath##15174
  turnin Kitchen Assistance##8317 |goto Silithus 51.89,39.16
step
  talk Geologist Larksbane##15183
  accept The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to collect 8 Twilight Tablet Fragments.
  collect 8 Twilight Tablet Fragment##20378 |q 8284 |goto Silithus 20.72,10.25
step
  talk Geologist Larksbane##15183
  turnin The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  talk Geologist Larksbane##15183
  accept The Deserter##8285 |goto Silithus 49.67,37.46
step
  talk Hermit Ortell##15194
  turnin The Deserter##8285 |goto Silithus 67.19,69.76
step
  talk Hermit Ortell##15194
  accept The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  note Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
  collect Twilight Lexicon - Chapter 1##20394 |q 8279 |goto Silithus 26.35,36.62 |tip {dropsfrom}Twilight Keeper Mayna
step
  talk Hermit Ortell##15194
  turnin The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  talk Hermit Ortell##15194
  accept A Terrible Purpose##8287 |goto Silithus 67.19,69.76
step
  talk Commander Mar'alith##15181
  turnin A Terrible Purpose##8287 |goto Silithus 49.2,34.18
step
  click Wanted Poster: Deathclasp##180448
  accept Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 51.35,38.27
step
  note Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
  kill Deathclasp##15196 |goto Silithus 45.07,92.31 |elite
  collect Deathclasp's Pincer##20385 |q 8283 |goto Silithus 45.07,92.31
step
  talk Vish Kozus##15182
  turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 50.75,33.65
step
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  note Travel to Silithus and search for a Reliquary of Purity within the ruins of Southwind Village. If you are able to find it, return with it to Rabine Saturna in Nighthaven, Moonglade.
  collect Reliquary of Purity##22201 |q 5527 |goto Silithus 63.23,55.35 |tip {dropsfrom}Dusty Reliquary
step
  talk Rabine Saturna##11801
  turnin A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  accept Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  note Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade.
  collect Sealed Reliquary of Purity##18540 |q 5526 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  turnin Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
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
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.
  kill Mistress Natalia Mar'alith##15215 |q 8306 |goto Kalimdor - the continent map 44.4,86.11 |elite
step
  talk Commander Mar'alith##15181
  turnin Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  talk Bor Wildmane##15306
  accept Secret Communication##8318 |goto Silithus 48.57,37.78
step
  note Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
  collect 10 Encrypted Twilight Text##20404 |q 8318 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  talk Bor Wildmane##15306
  turnin Secret Communication##8318 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  accept Encrypted Twilight Texts##8319 |goto Silithus 48.57,37.78
step
  collect Encrypted Twilight Text##20404 |q 8319 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  talk Bor Wildmane##15306
  turnin Encrypted Twilight Texts##8319 |goto Silithus 48.57,37.78
step
  talk Aurel Goldleaf##15282
  accept A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  note Aurel Goldleaf at Cenarion Hold in Silithus wants you to bring her 1 Abyssal Scepter. You must also be Honored with the Cenarion Circle.
  kill Prince Skaldrenox##15203 |goto Silithus 25.56,34.04 |raid
  collect Abyssal Scepter##20515 |q 9248 |goto Silithus 25.56,34.04
step
  talk Aurel Goldleaf##15282
  turnin A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite |tip Loot the quest item here — it starts the quest.
  accept Brann Bronzebeard's Lost Letter##8308 |goto Silithus 50.21,40.97
step
  talk Rutgar Glyphshaper##15170
  turnin Brann Bronzebeard's Lost Letter##8308 |goto Silithus 41.28,88.45
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
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 50.87,26.76 |tip {dropsfrom}Hive'Ashi Glyphed Crystal
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 50.21,40.97
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
  only Warrior
  talk Geologist Larksbane##15183
  turnin Armaments of War##8316 |goto Silithus 49.67,37.46
step
  only Hunter
  talk Geologist Larksbane##15183
  accept Armaments of War##8377 |goto Silithus 49.67,37.46
step
  only Hunter
  talk Geologist Larksbane##15183
  turnin Armaments of War##8377 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Geologist Larksbane##15183
  accept Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Geologist Larksbane##15183
  turnin Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Priest
  talk Geologist Larksbane##15183
  accept Armaments of War##8379 |goto Silithus 49.67,37.46
step
  only Priest
  talk Geologist Larksbane##15183
  turnin Armaments of War##8379 |goto Silithus 49.67,37.46
step
  only Shaman
  talk Geologist Larksbane##15183
  accept Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only Shaman
  talk Geologist Larksbane##15183
  turnin Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only not Warrior not Paladin not Hunter not Rogue not Priest not Shaman not Druid
  talk Geologist Larksbane##15183
  accept Armaments of War##8381 |goto Silithus 49.67,37.46
step
  only not Warrior not Paladin not Hunter not Rogue not Priest not Shaman not Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8381 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  accept Armaments of War##8382 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8382 |goto Silithus 49.67,37.46
step
  kill Ysondre##14887 |goto Duskwood 46.5,39.6 |raid |tip Loot the quest item here — it starts the quest.
  accept Shrouded in Nightmare##8446 |goto Duskwood 46.5,39.6
step
  talk Keeper Remulos##11832
  turnin Shrouded in Nightmare##8446 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept Waking Legends##8447 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  turnin Waking Legends##8447 |goto Moonglade 36.18,41.79
step
  kill Ossirian the Unscarred##15339 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Fall of Ossirian##8791 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1
step
  talk Commander Mar'alith##15181
  turnin The Fall of Ossirian##8791 |goto Silithus 49.2,34.18
step
  talk Windcaller Kaldon##15540
  accept Field Duty##8731 |goto Silithus 49.98,36.35
step
  note Report to Krug Skullsplit at the Orgrimmar Legion post in front of Hive'Regal. Prepare your Unsigned Field Duty Papers, obtain Signed Field Duty Papers and bring them to Windcaller Kaldon in Cenarion Hold.
  collect Signed Field Duty Papers##20810 |q 8731 |goto Silithus 49.98,36.35
step
  talk Windcaller Kaldon##15540
  turnin Field Duty##8731 |goto Silithus 49.98,36.35
step
  talk Windcaller Kaldon##15540
  accept Cenarion Battlegear##8800 |goto Silithus 49.98,36.35
step
  talk Vargus##15176
  turnin Cenarion Battlegear##8800 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  accept Volunteer's Battlegear##8548 |goto Silithus 51.23,38.86
step
  note Bring 5 Cenarion Combat Badges, 3 Cenarion Logistics Badges and 7 Cenarion Tactical Badges to Vargus at Cenarion Hold in Silithus. You must also attain Friendly reputation with Cenarion Circle to be able to complete this quest.
  collect 5 Cenarion Combat Badge##20802 |q 8548 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  turnin Volunteer's Battlegear##8548 |goto Silithus 51.23,38.86
step
  talk Windcaller Kaldon##15540
  accept Allegiance to Cenarion Circle##9338 |goto Silithus 49.98,36.35
step
  collect Cenarion Combat Badge##20802 |q 9338 |goto Silithus 49.98,36.35
step
  talk Windcaller Kaldon##15540
  turnin Allegiance to Cenarion Circle##9338 |goto Silithus 49.98,36.35
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  note Venture to the Caverns of Time in Tanaris and find Anachronos, Brood of Nozdormu.
  talk Anachronos##15192 |q 8286 |goto Tanaris 65.27,50.03
step
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  collect Head of the Broodlord Lashlayer##20383 |q 8288 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Broodlord Lashlayer
step
  talk Baristolth of the Shifting Sands##15180
  turnin Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  note Collect 200 Silithid Carapace Fragments and return to Baristolth.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect 200 Silithid Carapace Fragment##20384 |q 8301 |goto Silithus 50.21,40.97
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept Anachronos##8303 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  turnin Anachronos##8303 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept Long Forgotten Memories##8305 |goto Tanaris 65.27,50.03
step
  turnin Long Forgotten Memories##8305 |goto Silithus 28.68,89.14
step
  click Crystalline Tear##180633
  accept A Pawn on the Eternal Board##8519 |goto Silithus 28.68,89.14
step
  talk Anachronos##15192
  turnin A Pawn on the Eternal Board##8519 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 65.27,50.03
step
  talk Spirit of Azuregos##15481
  accept Azuregos's Magical Ledger##8575 |goto Azshara 52.98,81.73
step
  talk Narain Soothfancy##11811
  turnin Azuregos's Magical Ledger##8575 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Stewvul, Ex-B.F.F.##8577 |goto Tanaris 65.24,18.58
step
  turnin Stewvul, Ex-B.F.F.##8577 |goto Silverpine Forest 46.19,86.68
step
  click Inconspicuous Crate##180642
  accept Scrying Goggles? No Problem!##8578 |goto Silverpine Forest 46.19,86.68
step
  note Find Narain's Scrying Goggles and return them to Narain Soothfancy in Tanaris.
  collect Narain's Scrying Goggles##20951 |q 8578 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Flamewaker, Ragnaros, Magmadar
step
  talk Narain Soothfancy##11811
  turnin Scrying Goggles? No Problem!##8578 |goto Tanaris 65.24,18.58
step
  talk Vaelastrasz the Corrupt##13020
  accept Nefarius's Corruption##8730 |goto Blackwing Lair - Dungeon -1,-1
step
  note Slay Nefarian and recover the Red Scepter Shard. Return the Red Scepter Shard to Anachronos at the Caverns of Time in Tanaris. You have 5 hours to complete this task.
  collect Red Scepter Shard##21138 |q 8730 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Nefarian
step
  talk Anachronos##15192
  turnin Nefarius's Corruption##8730 |goto Tanaris 65.27,50.03
step
  talk Bor Wildmane##15306
  accept Abyssal Contacts##8361 |goto Silithus 48.57,37.78
step
  note Bor Wildmane at Cenarion Hold in Silithus wants you to destroy an Abyssal Templar and bring him an Abyssal Crest as proof of the deed.
  kill Crimson Templar##15209 |goto Silithus 38.29,46.46 |elite
  collect Abyssal Crest##20513 |q 8361 |goto Silithus 38.29,46.46
step
  talk Bor Wildmane##15306
  turnin Abyssal Contacts##8361 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  accept Abyssal Crests##8362 |goto Silithus 48.57,37.78
step
  kill Crimson Templar##15209 |goto Silithus 38.29,46.46 |elite
  collect Abyssal Crest##20513 |q 8362 |goto Silithus 38.29,46.46
step
  talk Bor Wildmane##15306
  turnin Abyssal Crests##8362 |goto Silithus 48.57,37.78
step
  talk Huum Wildmane##15270
  accept Twilight Geolords##8320 |goto Silithus 48.62,37.87
step
  note Kill 10 Twilight Geolords, then return to Huum Wildmane in Cenarion Hold.
  kill Twilight Geolord##11881 |q 8320 |goto Silithus 24.82,38.48
step
  talk Huum Wildmane##15270
  turnin Twilight Geolords##8320 |goto Silithus 48.62,37.87
step
  talk Huum Wildmane##15270
  accept Vyral the Vile##8321 |goto Silithus 48.62,37.87
step
  note Bring Vyral's Signet Ring to Huum Wildmane in Cenarion Hold.
  collect Vyral's Signet Ring##20466 |q 8321 |goto Silithus 72.39,15.58 |tip {dropsfrom}Vyral the Vile
step
  talk Huum Wildmane##15270
  turnin Vyral the Vile##8321 |goto Silithus 48.62,37.87
step
  talk Huum Wildmane##15270
  accept Aurel Goldleaf##8331 |goto Silithus 48.62,37.87
step
  talk Aurel Goldleaf##15282
  turnin Aurel Goldleaf##8331 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  accept Dukes of the Council##8332 |goto Silithus 51.96,38.16
step
  note Bring 1 Large Brilliant Shard and 3 Abyssal Crests to Aurel Goldleaf in Cenarion Hold.
  collect 1 Large Brilliant Shard##14344 |q 8332 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  turnin Dukes of the Council##8332 |goto Silithus 51.96,38.16
step
  talk Bor Wildmane##15306
  accept Signet of the Dukes##8348 |goto Silithus 48.57,37.78
step
  note Bring the Abyssal Signet to Bor Wildmane in Cenarion Hold.
  kill The Duke of Cynders##15206 |goto Silithus 24.7,32.65 |elite
  collect Abyssal Signet##20514 |q 8348 |goto Silithus 24.7,32.65
step
  talk Bor Wildmane##15306
  turnin Signet of the Dukes##8348 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  accept Abyssal Signets##8363 |goto Silithus 48.57,37.78
step
  kill The Duke of Cynders##15206 |goto Silithus 24.7,32.65 |elite
  collect Abyssal Signet##20514 |q 8363 |goto Silithus 24.7,32.65
step
  talk Bor Wildmane##15306
  turnin Abyssal Signets##8363 |goto Silithus 48.57,37.78
step
  talk Huum Wildmane##15270
  accept Goldleaf's Discovery##8343 |goto Silithus 48.62,37.87
step
  talk Aurel Goldleaf##15282
  turnin Goldleaf's Discovery##8343 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  accept Lords of the Council##8341 |goto Silithus 51.96,38.16
step
  note Bring 5 Large Brilliant Shards and 3 Abyssal Signets to Aurel Goldleaf in Cenarion Hold.
  collect 5 Large Brilliant Shard##14344 |q 8341 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  turnin Lords of the Council##8341 |goto Silithus 51.96,38.16
step
  talk Bor Wildmane##15306
  accept Scepter of the Council##8352 |goto Silithus 48.57,37.78
step
  note Bring an Abyssal Scepter to Bor Wildmane in Cenarion Hold.
  kill Prince Skaldrenox##15203 |goto Silithus 25.56,34.04 |raid
  collect Abyssal Scepter##20515 |q 8352 |goto Silithus 25.56,34.04
step
  talk Bor Wildmane##15306
  turnin Scepter of the Council##8352 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  accept Abyssal Scepters##8364 |goto Silithus 48.57,37.78
step
  kill Prince Skaldrenox##15203 |goto Silithus 25.56,34.04 |raid
  collect Abyssal Scepter##20515 |q 8364 |goto Silithus 25.56,34.04
step
  talk Bor Wildmane##15306
  turnin Abyssal Scepters##8364 |goto Silithus 48.57,37.78
step
  talk Aurel Goldleaf##15282
  accept Bor Wildmane##8349 |goto Silithus 51.96,38.16
step
  talk Bor Wildmane##15306
  turnin Bor Wildmane##8349 |goto Silithus 48.57,37.78
step
  talk Aurel Goldleaf##15282
  accept Bor Wishes to Speak##8351 |goto Silithus 51.96,38.16
step
  talk Bor Wildmane##15306
  turnin Bor Wishes to Speak##8351 |goto Silithus 48.57,37.78
step
  only Warrior
  talk Windcaller Yessendra##15498
  accept Signet of Unyielding Strength##8556 |goto Silithus 52.05,38.16
step
  only Warrior
  note Bring 1 Qiraji Magisterial Ring, 2 Lambent Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8556 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Warrior
  talk Windcaller Yessendra##15498
  turnin Signet of Unyielding Strength##8556 |goto Silithus 52.05,38.16
step
  only Priest
  talk Windcaller Yessendra##15498
  accept Ring of Infinite Wisdom##8697 |goto Silithus 52.05,38.16
step
  only Priest
  note Bring 1 Qiraji Ceremonial Ring, 2 Obsidian Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8697 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Priest
  talk Windcaller Yessendra##15498
  turnin Ring of Infinite Wisdom##8697 |goto Silithus 52.05,38.16
step
  only Shaman
  talk Windcaller Yessendra##15498
  accept Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Shaman
  note Bring 1 Qiraji Magisterial Ring, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8698 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Shaman
  talk Windcaller Yessendra##15498
  turnin Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Mage
  talk Windcaller Yessendra##15498
  accept Band of Vaulted Secrets##8699 |goto Silithus 52.05,38.16
step
  only Mage
  note Bring 1 Qiraji Magisterial Ring, 2 Azure Idols, 5 Gold Scarabs and 5 Clay Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8699 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Mage
  talk Windcaller Yessendra##15498
  turnin Band of Vaulted Secrets##8699 |goto Silithus 52.05,38.16
step
  only Druid
  talk Windcaller Yessendra##15498
  accept Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Druid
  note Bring 1 Qiraji Magisterial Ring, 2 Alabaster Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8700 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Druid
  talk Windcaller Yessendra##15498
  turnin Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Rogue
  talk Windcaller Yessendra##15498
  accept Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  only Rogue
  note Bring 1 Qiraji Ceremonial Ring, 2 Onyx Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8701 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Rogue
  talk Windcaller Yessendra##15498
  turnin Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  only Warlock
  talk Windcaller Yessendra##15498
  accept Ring of Unspoken Names##8702 |goto Silithus 52.05,38.16
step
  only Warlock
  note Bring 1 Qiraji Ceremonial Ring, 2 Jasper Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8702 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Warlock
  talk Windcaller Yessendra##15498
  turnin Ring of Unspoken Names##8702 |goto Silithus 52.05,38.16
step
  only Hunter
  talk Windcaller Yessendra##15498
  accept Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Hunter
  note Bring 1 Qiraji Ceremonial Ring, 2 Amber Idols, 5 Gold Scarabs and 5 Clay Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8704 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Hunter
  talk Windcaller Yessendra##15498
  turnin Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  talk Vargus##15176
  accept Veteran's Battlegear##8572 |goto Silithus 51.23,38.86
step
  note Bring 7 Cenarion Combat Badges, 4 Cenarion Logistics Badges and 4 Cenarion Tactical Badges to Vargus at Cenarion Hold in Silithus. You must also attain Honored reputation with Cenarion Circle to be able to complete this quest.
  collect 7 Cenarion Combat Badge##20802 |q 8572 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  turnin Veteran's Battlegear##8572 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  accept Champion's Battlegear##8573 |goto Silithus 51.23,38.86
step
  note Bring 15 Cenarion Combat Badges, 20 Cenarion Logistics Badges, 20 Cenarion Tactical Badges and 1 Mark of Cenarius to Vargus at Cenarion Hold in Silithus. You must also attain Exalted reputation with Cenarion Circle to be able to complete this quest.
  collect 15 Cenarion Combat Badge##20802 |q 8573 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  turnin Champion's Battlegear##8573 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  accept Stalwart's Battlegear##8574 |goto Silithus 51.23,38.86
step
  note Bring 15 Cenarion Combat Badges, 20 Cenarion Logistics Badges, 17 Cenarion Tactical Badges and 1 Mark of Remulos to Vargus at Cenarion Hold in Silithus. You must also attain Revered reputation with Cenarion Circle to be able to complete this quest.
  collect 15 Cenarion Combat Badge##20802 |q 8574 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  turnin Stalwart's Battlegear##8574 |goto Silithus 51.23,38.86
step
  only Warrior
  talk Warden Haro##15499
  accept Sickle of Unyielding Strength##8558 |goto Silithus 51.14,38.94
step
  only Warrior
  note Bring 1 Qiraji Spiked Hilt, 2 Alabaster Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8558 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Warrior
  talk Warden Haro##15499
  turnin Sickle of Unyielding Strength##8558 |goto Silithus 51.14,38.94
step
  only Priest
  talk Warden Haro##15499
  accept Gavel of Infinite Wisdom##8705 |goto Silithus 51.14,38.94
step
  only Priest
  note Bring 1 Qiraji Ornate Hilt, 2 Lambent Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8705 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Priest
  talk Warden Haro##15499
  turnin Gavel of Infinite Wisdom##8705 |goto Silithus 51.14,38.94
step
  only Shaman
  talk Warden Haro##15499
  accept Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  only Shaman
  note Bring 1 Qiraji Spiked Hilt, 2 Amber Idols, 5 Ivory Scarabs and 5 Bronze Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8706 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Shaman
  talk Warden Haro##15499
  turnin Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  only Mage
  talk Warden Haro##15499
  accept Blade of Vaulted Secrets##8707 |goto Silithus 51.14,38.94
step
  only Mage
  note Bring 1 Qiraji Ornate Hilt, 2 Obsidian Idols, 5 Silver Scarabs and 5 Bone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8707 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Mage
  talk Warden Haro##15499
  turnin Blade of Vaulted Secrets##8707 |goto Silithus 51.14,38.94
step
  only Druid
  talk Warden Haro##15499
  accept Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Druid
  note Bring 1 Qiraji Ornate Hilt, 2 Jasper Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8708 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Druid
  talk Warden Haro##15499
  turnin Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Rogue
  talk Warden Haro##15499
  accept Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Rogue
  note Bring 1 Qiraji Spiked Hilt, 2 Vermillion Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8709 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Rogue
  talk Warden Haro##15499
  turnin Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Warden Haro##15499
  accept Kris of Unspoken Names##8710 |goto Silithus 51.14,38.94
step
  only Warlock
  note Bring 1 Qiraji Ornate Hilt, 2 Onyx Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8710 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Warlock
  talk Warden Haro##15499
  turnin Kris of Unspoken Names##8710 |goto Silithus 51.14,38.94
step
  only Hunter
  talk Warden Haro##15499
  accept Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  only Hunter
  note Bring 1 Qiraji Spiked Hilt, 2 Azure Idols, 5 Silver Scarabs and 5 Bone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8712 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Hunter
  talk Warden Haro##15499
  turnin Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  talk Dirk Thunderwood##16091
  accept The Perfect Poison##9023 |goto Silithus 52.13,39.14
step
  note Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac.
  collect Venoxis's Venom Sac##22216 |q 9023 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}High Priest Venoxis
step
  talk Dirk Thunderwood##16091
  turnin The Perfect Poison##9023 |goto Silithus 52.13,39.14
step
  only Warrior
  talk Keyl Swiftclaw##15500
  accept Drape of Unyielding Strength##8557 |goto Silithus 51.76,39.54
step
  only Warrior
  note Bring 1 Qiraji Martial Drape, 2 Onyx Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8557 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Warrior
  talk Keyl Swiftclaw##15500
  turnin Drape of Unyielding Strength##8557 |goto Silithus 51.76,39.54
step
  only Priest
  talk Keyl Swiftclaw##15500
  accept Shroud of Infinite Wisdom##8689 |goto Silithus 51.76,39.54
step
  only Priest
  note Bring 1 Qiraji Martial Drape, 2 Jasper Idols, 5 Gold Scarabs and 5 Clay Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8689 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Priest
  talk Keyl Swiftclaw##15500
  turnin Shroud of Infinite Wisdom##8689 |goto Silithus 51.76,39.54
step
  only Shaman
  talk Keyl Swiftclaw##15500
  accept Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  only Shaman
  note Bring 1 Qiraji Regal Drape, 2 Obsidian Idols, 5 Clay Scarabs and 5 Gold Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8690 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Shaman
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  only Mage
  talk Keyl Swiftclaw##15500
  accept Drape of Vaulted Secrets##8691 |goto Silithus 51.76,39.54
step
  only Mage
  note Bring 1 Qiraji Martial Drape, 2 Alabaster Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8691 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Mage
  talk Keyl Swiftclaw##15500
  turnin Drape of Vaulted Secrets##8691 |goto Silithus 51.76,39.54
step
  only Druid
  talk Keyl Swiftclaw##15500
  accept Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Druid
  note Bring 1 Qiraji Regal Drape, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8692 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Druid
  talk Keyl Swiftclaw##15500
  turnin Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Rogue
  talk Keyl Swiftclaw##15500
  accept Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Rogue
  note Bring 1 Qiraji Martial Drape, 2 Azure Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8693 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Rogue
  talk Keyl Swiftclaw##15500
  turnin Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Warlock
  talk Keyl Swiftclaw##15500
  accept Shroud of Unspoken Names##8694 |goto Silithus 51.76,39.54
step
  only Warlock
  note Bring 1 Qiraji Regal Drape, 2 Amber Idols, 5 Ivory Scarabs and 5 Bronze Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8694 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Warlock
  talk Keyl Swiftclaw##15500
  turnin Shroud of Unspoken Names##8694 |goto Silithus 51.76,39.54
step
  only Hunter
  talk Keyl Swiftclaw##15500
  accept Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only Hunter
  note Bring 1 Qiraji Regal Drape, 2 Lambent Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8696 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Hunter
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  talk Narain Soothfancy##11811
  accept Never Ask Me About My Business##8584 |goto Tanaris 65.24,18.58
step
  talk Dirge Quikcleave##8125
  turnin Never Ask Me About My Business##8584 |goto Tanaris 52.63,28.11
step
  talk Dirge Quikcleave##8125
  accept The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  note Recover Lakmaeran's Carcass and 20 Chimaerok Tenderloins for Dirge Quikcleave in Tanaris.
  kill Lord Lakmaeran##12803 |goto Feralas 29.34,72.63 |elite
  collect Lakmaeran's Carcass##21027 |q 8585 |goto Feralas 29.34,72.63
step
  talk Dirge Quikcleave##8125
  turnin The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  talk Dirge Quikcleave##8125
  accept Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  note Dirge Quikcleave in Gadgetzan wants you to bring him 20 Goblin Rocket Fuel and 20 Deeprock Salt.
  collect Goblin Rocket Fuel##9061 |q 8586 |goto Silithus 62.65,52.84 |tip {dropsfrom}Clunk, Spirestone Ogre Magus, Tortured Druid
step
  talk Dirge Quikcleave##8125
  turnin Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  talk Dirge Quikcleave##8125
  accept Return to Narain##8587 |goto Tanaris 52.63,28.11
step
  talk Narain Soothfancy##11811
  turnin Return to Narain##8587 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Draconic for Dummies##8597 |goto Tanaris 65.24,18.58
step
  turnin Draconic for Dummies##8597 |goto Azeroth - the world map 29.99,89.15
step
  click Freshly Dug Dirt##180652
  accept rAnS0m##8598 |goto Azeroth - the world map 29.99,89.15
step
  talk Narain Soothfancy##11811
  turnin rAnS0m##8598 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Decoy!##8606 |goto Tanaris 65.24,18.58
step
  note Narain Soothfancy in Tanaris wants you to travel to Winterspring and place the Bag of Gold at the drop off point documented by the booknappers.
  kill Number Two##15554 |q 8606 |goto Winterspring 67.2,72.6 |elite
step
  talk Narain Soothfancy##11811
  turnin Decoy!##8606 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  note Recover the 8 lost chapters of Draconic for Dummies and combine them with the Magical Book Binding and return the completed book of Draconic for Dummies: Volume II to Narain Soothfancy in Tanaris.
  collect Draconic For Dummies: Volume II##21111 |q 8620 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  note Narain Soothfancy in Tanaris wants you to bring him 20 Arcanite Bars, 10 Elementium Ore, 10 Azerothian Diamonds, and 10 Blue Sapphires.
  collect Arcanite Bar##12360 |q 8728 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Wrath of Neptulon##8729 |goto Tanaris 65.24,18.58
step
  note Use the Arcanite Buoy at the Swirling Maelstrom at the Bay of Storms in Azshara.
  collect Blue Scepter Shard##21137 |q 8729 |goto Tanaris 65.24,18.58 |tip {dropsfrom}Maws
step
  talk Anachronos##15192
  turnin The Wrath of Neptulon##8729 |goto Tanaris 65.27,50.03
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  collect Qiraji Lord's Insignia##21229 |q 8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8595 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  collect Qiraji Lord's Insignia##21229 |q 8595 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8595 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  kill C'Thun##15727 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept C'Thun's Legacy##8801 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Caelestrasz##15379
  turnin C'Thun's Legacy##8801 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Caelestrasz##15379
  accept The Savior of Kalimdor##8802 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Anachronos##15192
  turnin The Savior of Kalimdor##8802 |goto Tanaris 65.27,50.03
step
  talk Malfurion Stormrage##15362
  accept Eranikus, Tyrant of the Dream##8733 |goto The Temple of Atal'Hakkar - Dungeon -1,-1
step
  talk Forest Wisp##15624
  turnin Eranikus, Tyrant of the Dream##8733 |goto Teldrassil 37.55,47.92
step
  talk Forest Wisp##15624
  accept Tyrande and Remulos##8734 |goto Teldrassil 37.55,47.92
step
  talk Keeper Remulos##11832
  turnin Tyrande and Remulos##8734 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  note Travel to the four Emerald Dream portals in Azeroth and collect a Fragment of the Nightmare's Corruption from each. Return to Keeper Remulos in the Moonglade when you have completed this task.
  kill Emeraldon Boughguard##12474 |goto Ashenvale 94.98,39.79 |elite
  collect Fragment of the Nightmare's Corruption##21147 |q 8735 |goto Ashenvale 94.98,39.79
step
  talk Keeper Remulos##11832
  turnin The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  turnin The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Champion Returns##8741 |goto Moonglade 36.18,41.79
step
  talk Anachronos##15192
  turnin The Champion Returns##8741 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Might of Kalimdor##8742 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Might of Kalimdor##8742 |goto Tanaris 65.27,50.03
step
  click The Scarab Gong##180717
  accept Bang a Gong!##8743 |goto Silithus 25.72,90.86
step
  collect The Scepter of the Shifting Sands##21175 |q 8743 |goto Silithus 25.72,90.86
step
  turnin Bang a Gong!##8743 |goto Silithus 25.72,90.86
]])
