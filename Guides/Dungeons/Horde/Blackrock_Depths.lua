-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackrock Depths", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Private Rocknot##9503
  accept Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  accept Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  talk Master Smith Burninate##14624
  accept What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  click WANTED##164867
  accept KILL ON SIGHT: Dark Iron Dwarves##4081 |goto Badlands 3.74,47.43
step
  talk Thunderheart##9084
  accept Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  talk Franclorn Forgewright##8888
  accept Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  talk Yorba Screwspigot##9706
  accept Yuka Screwspigot##4324 |goto Tanaris 67.04,24.01
step
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  talk Mistress Nagmara##9500
  accept The Love Potion##4201 |goto Blackrock Depths - Dungeon -1,-1
step
  click Spectral Chalice##164869
  accept The Spectral Chalice##4083 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Maxwort Uberglint##9536
  accept The Heart of the Mountain##4123 |goto Burning Steppes 65.15,23.91
step
  talk Apothecary Zinge##5204
  accept Vivian Lagrave##4133 |goto Undercity 50.14,67.97
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Lothos Riftwaker##14387
  accept Attunement to the Core##7848 |goto Searing Gorge 32.13,94.7
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -1,-1
step
  kill Lokhtos Darkbargainer##12944 |goto Blackrock Depths - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Dark Iron Ale Mug##11325 |q 4295 |goto Duskwood 78.99,44.35 |tip {dropsfrom}Whit Wantmal, Anvilrage Officer, Grim Patron
step
  note Listen as Kalaran Windblade tells his story.
  talk Kalaran Windblade##8479 |q 3441 |goto Searing Gorge 39.06,38.99
step
  note Somewhere in the Slag Pit of the Cauldron you will find the Secret Plans: Fiery Flux that Overseer Maltorius stole. Find those plans and return them to Master Smith Burninate in the Searing Gorge.
  collect Secret Plans: Fiery Flux##18922 |q 7722 |goto Searing Gorge 40.45,35.74
step
  note Venture to Blackrock Depths and destroy the vile aggressors!
  kill Anvilrage Guardsman##8891 |q 4081 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment.
  kill Overmaster Pyron##9026 |q 3906 |goto Eastern Kingdoms - the continent map 46.82,67.7 |elite
step
  note Venture to the Burning Steppes and recover 10 Fractured Elemental Shards for Hierophant Theodora Mulvadania.
  collect Fractured Elemental Shard##11266 |q 4061 |goto Burning Steppes 55.47,49.02 |tip {dropsfrom}Greater Obsidian Elemental, War Reaver, Malfunctioning Reaver
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  collect 4 Gromsblood##8846 |q 4201 |goto Felwood 38.83,49.24 |tip {dropsfrom}Razorlash, Gromsblood
step
  collect Star Ruby##7910 |q 4083 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Small Thorium Vein, Mithril Deposit, Truesilver Deposit
step
  note Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes.
  collect The Heart of the Mountain##11309 |q 4123 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Heart of the Mountain
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  note Venture to the Molten Core entry portal in Blackrock Depths and recover a Core Fragment. Return to Lothos Riftwaker in Blackrock Mountain when you have recovered the Core Fragment.
  collect Core Fragment##18412 |q 7848 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Dark Iron Ore##11370 |q 6642 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Dark Iron Deposit
step
  collect Fiery Core##17010 |q 6643 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Molten Destroyer, Firewalker, Flameguard
step
  collect Lava Core##17011 |q 6644 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Molten Destroyer, Lava Annihilator, Golemagg the Incinerator
step
  collect Core Leather##17012 |q 6645 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Blood of the Mountain##11382 |q 6646 |goto Burning Steppes 80.56,42.82 |tip {dropsfrom}Firegut Brute, War Reaver, Scalding Broodling
step
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  collect Sulfuron Ingot##17203 |q 7604 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Golemagg the Incinerator
step
  talk Private Rocknot##9503
  turnin Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  turnin Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  talk Master Smith Burninate##14624
  turnin What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Warlord Goretooth##9077
  turnin KILL ON SIGHT: Dark Iron Dwarves##4081 |goto Badlands 5.81,47.52
step
  talk Thunderheart##9084
  turnin Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  talk Franclorn Forgewright##8888
  turnin Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  talk Yuka Screwspigot##9544
  turnin Yuka Screwspigot##4324 |goto Burning Steppes 66.06,21.95
step
  talk Hierophant Theodora Mulvadania##9079
  turnin The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  talk Mistress Nagmara##9500
  turnin The Love Potion##4201 |goto Blackrock Depths - Dungeon -1,-1
step
  turnin The Spectral Chalice##4083 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Maxwort Uberglint##9536
  turnin The Heart of the Mountain##4123 |goto Burning Steppes 65.15,23.91
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave##4133 |goto Badlands 2.9,47.76
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Lothos Riftwaker##14387
  turnin Attunement to the Core##7848 |goto Searing Gorge 32.13,94.7
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  accept The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  talk Galamav the Marksman##9081
  accept Commander Gor'shak##3981 |goto Badlands 5.96,47.73
step
  talk Franclorn Forgewright##8888
  accept Dark Iron Legacy##3802 |goto Burning Steppes 28.96,28.93
step
  talk Yuka Screwspigot##9544
  accept Ribbly Screwspigot##4136 |goto Burning Steppes 66.06,21.95
step
  click KILL ON SIGHT##164868
  accept KILL ON SIGHT: High Ranking Dark Iron Officials##4082 |goto Badlands 3.94,46.73
step
  talk Shadowmage Vivian Lagrave##9078
  accept The Last Element##7201 |goto Badlands 2.9,47.76
step
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4062 |goto Badlands 3.02,47.81
step
  talk Shadowmage Vivian Lagrave##9078
  accept Lost Thunderbrew Recipe##4134 |goto Badlands 2.9,47.76
step
  talk Thunderheart##9084
  accept Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Master Smith Burninate##14624
  accept Gaining Acceptance##7737 |goto Searing Gorge 38.8,28.51
step
  note Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
  collect 4 Heart of Flame##10509 |q 3442 |goto Searing Gorge 57.56,46.7 |tip {dropsfrom}Blazing Elemental, Inferno Elemental, Magma Elemental
step
  note Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright.
  collect Ironfel##10999 |q 3802 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Fineous Darkvire
step
  note Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes.
  collect Ribbly's Head##11313 |q 4136 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Ribbly Screwspigot
step
  note Venture to Blackrock Depths and destroy the vile aggressors!
  kill Anvilrage Medic##8894 |q 4082 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Travel to Blackrock Depths and recover 10 Essence of the Elements. Your first inclination is to search the golems and golem makers. You remember Vivian Lagrave also muttering something about elementals.
  collect Essence of the Elements##11129 |q 7201 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Molten War Golem, Ragereaver Golem, Warbringer Construct
step
  note Bring the Lost Thunderbrew Recipe to Vivian Lagrave in Kargath.
  collect Lost Thunderbrew Recipe##11312 |q 4134 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Hurley Blackbreath, Blackbreath Crony
step
  note Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart.
  kill Lord Incendius##9017 |q 3907 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  collect Dark Iron Residue##18945 |q 7737 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Anvilrage Overseer, Anvilrage Warden, Anvilrage Guardsman
step
  talk Kalaran Windblade##8479
  turnin The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  talk Commander Gor'shak##9020
  turnin Commander Gor'shak##3981 |goto Blackrock Depths - Dungeon -1,-1
step
  turnin Dark Iron Legacy##3802 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Yuka Screwspigot##9544
  turnin Ribbly Screwspigot##4136 |goto Burning Steppes 66.06,21.95
step
  talk Warlord Goretooth##9077
  turnin KILL ON SIGHT: High Ranking Dark Iron Officials##4082 |goto Badlands 5.81,47.52
step
  talk Shadowmage Vivian Lagrave##9078
  turnin The Last Element##7201 |goto Badlands 2.9,47.76
step
  talk Lotwil Veriatus##2921
  turnin The Rise of the Machines##4062 |goto Badlands 25.95,44.87
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Lost Thunderbrew Recipe##4134 |goto Badlands 2.9,47.76
step
  talk Thunderheart##9084
  turnin Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Master Smith Burninate##14624
  turnin Gaining Acceptance##7737 |goto Searing Gorge 38.8,28.51
step
  talk Kalaran Windblade##8479
  accept Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk Commander Gor'shak##9020
  accept What Is Going On?##3982 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lotwil Veriatus##2921
  accept The Rise of the Machines##4063 |goto Badlands 25.95,44.87
step
  talk Lexlort##9080
  accept Grark Lorkrub##4122 |goto Badlands 5.88,47.63
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Bring 8 Thorium Plated Daggers to Kalaran Windblade.
  collect 8 Thorium Plated Dagger##10551 |q 3443 |goto Searing Gorge 63.66,59.26 |tip {dropsfrom}Dark Iron Geologist, Dark Iron Steamsmith, Slave Worker
step
  note Defend Gor'shak.
  talk Commander Gor'shak##9020 |q 3982 |goto Blackrock Depths - Dungeon -1,-1
step
  note Find and slay Golem Lord Argelmach. Return his head to Lotwil. You will also need to collect 10 Intact Elemental Cores from the Ragereaver Golems and Warbringer Constructs protecting Argelmach. You know this because you are psychic.
  collect 10 Head of Argelmach##11268 |q 4063 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Golem Lord Argelmach
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk Commander Gor'shak##9020
  turnin What Is Going On?##3982 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lotwil Veriatus##2921
  turnin The Rise of the Machines##4063 |goto Badlands 25.95,44.87
step
  talk Grark Lorkrub##9520
  turnin Grark Lorkrub##4122 |goto Burning Steppes 40.2,34.24
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Commander Gor'shak##9020
  accept What Is Going On?##4001 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Grark Lorkrub##9520
  accept Precarious Predicament##4121 |goto Burning Steppes 40.2,34.24
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Find and return a Symbol of Ragnaros to Kalaran Windblade.
  kill Twilight Dark Shaman##5860 |goto Searing Gorge 23.52,36.55 |elite
  collect Symbol of Ragnaros##10552 |q 3452 |goto Searing Gorge 23.52,36.55
step
  note Speak with Kharan Mighthammer and gather information about Princess Moira Bronzebeard's kidnapping. Take that information to Thrall in Orgrimmar.
  talk Kharan Mighthammer##9021 |q 4001 |goto Blackrock Depths - Dungeon -1,-1
step
  note Escort your prisoner, Grark Lorkrub, through Burning Steppes and through Blackrock Mountain to the Searing Gorge.
  collect Thorium Shackles##11286 |q 4121 |goto Burning Steppes 40.2,34.24
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Kalaran Windblade##8479
  turnin The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Thrall##4949
  turnin What Is Going On?##4001 |goto Orgrimmar 31.73,37.82
step
  talk Lexlort##9080
  turnin Precarious Predicament##4121 |goto Badlands 5.88,47.63
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  talk Thrall##4949
  accept The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  talk Warlord Goretooth##9077
  accept Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Wait for Kalaran Windblade to complete the Torch of Retribution.
  talk Kalaran Windblade##8479 |q 3453 |goto Searing Gorge 39.06,38.99
step
  note Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete.
  kill General Angerforge##9033 |q 4132 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Kalaran Windblade##8479
  turnin The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  talk Thrall##4949
  turnin The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  talk Warlord Goretooth##9077
  turnin Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3454 |goto Searing Gorge 39.06,38.99
step
  talk Thrall##4949
  accept The Royal Rescue##4003 |goto Orgrimmar 31.73,37.82
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell.
  kill Emperor Dagran Thaurissan##9019 |q 4003 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  turnin The Torch of Retribution##3454 |goto Searing Gorge 39.06,39.07
step
  talk Princess Moira Bronzebeard##8929
  turnin The Royal Rescue##4003 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  accept Squire Maltrake##3462 |goto Searing Gorge 39.06,38.99
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess Saved?##4004 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Squire Maltrake##8509
  turnin Squire Maltrake##3462 |goto Searing Gorge 39.17,39
step
  talk Thrall##4949
  turnin The Princess Saved?##4004 |goto Orgrimmar 31.73,37.82
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  talk Squire Maltrake##8509
  accept Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  only Druid
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  note Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
  collect Sentry Brazier##149025 |q 3463 |goto Searing Gorge 35.67,60.68
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  talk Squire Maltrake##8509
  turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  only Druid
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  click Hoard of the Black Dragonflight##149502
  accept Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  turnin Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
step
  only not completed(4023) not haveq(4023)
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  only not completed(4023) not haveq(4023)
  note Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
  kill Frenzied Black Drake##9461 |goto Burning Steppes 94.4,31.8 |elite
  collect Black Dragonflight Molt##10575 |q 4022 |goto Burning Steppes 94.4,31.8
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  only not completed(4023) not haveq(4023)
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  note Travel to Blackrock Depths and slay Bael'Gar.
  collect Encased Fiery Essence##11230 |q 4024 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Bael'Gar
step
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
]])
