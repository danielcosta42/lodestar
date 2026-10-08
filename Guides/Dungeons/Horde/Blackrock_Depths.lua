-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackrock Depths", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "849b21dc",
}, [[
step
  talk Kalaran Windblade##8479
  accept Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
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
  only completed(3982)
  talk Commander Gor'shak##9020
  accept What Is Going On?##4001 |goto Blackrock Depths - Dungeon -1,-1
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
  talk Lokhtos Darkbargainer##12944 |goto Blackrock Depths - Dungeon -1,-1 |tip They give you the item that starts the quest.
  accept A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  note Listen as Kalaran Windblade tells his story.
  talk Kalaran Windblade##8479 |q 3441 |goto Searing Gorge 39.06,38.99
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
  only completed(3982)
  note Speak with Kharan Mighthammer and gather information about Princess Moira Bronzebeard's kidnapping. Take that information to Thrall in Orgrimmar.
  talk Kharan Mighthammer##9021 |q 4001 |goto Blackrock Depths - Dungeon -1,-1
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  collect 4 Gromsblood##8846 |q 4201 |goto Felwood 38.83,49.24 |tip {dropsfrom}Razorlash, Gromsblood
step
  collect Star Ruby##7910 |q 4083 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Small Thorium Vein, Mithril Deposit, Truesilver Deposit
step
  note Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes.
  collect The Heart of the Mountain##11309 |q 4123 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Heart of the Mountain
step
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  collect Sulfuron Ingot##17203 |q 7604 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Golemagg the Incinerator
step
  talk Kalaran Windblade##8479
  turnin Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
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
  only completed(3982)
  talk Thrall##4949
  turnin What Is Going On?##4001 |goto Orgrimmar 31.73,37.82
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
  only completed(3982)
  talk Thrall##4949
  accept The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  talk Shadowmage Vivian Lagrave##9078
  accept Lost Thunderbrew Recipe##4134 |goto Badlands 2.9,47.76
step
  talk Thunderheart##9084
  accept Disharmony of Fire##3907 |goto Badlands 3.33,48.26
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
  only completed(3982)
  talk Thrall##4949
  turnin The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Lost Thunderbrew Recipe##4134 |goto Badlands 2.9,47.76
step
  talk Thunderheart##9084
  turnin Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Kalaran Windblade##8479
  accept Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk Lotwil Veriatus##2921
  accept The Rise of the Machines##4063 |goto Badlands 25.95,44.87
step
  talk Lexlort##9080
  accept Grark Lorkrub##4122 |goto Badlands 5.88,47.63
step
  only completed(3982)
  talk Thrall##4949
  accept The Royal Rescue##4003 |goto Orgrimmar 31.73,37.82
step
  note Bring 8 Thorium Plated Daggers to Kalaran Windblade.
  collect 8 Thorium Plated Dagger##10551 |q 3443 |goto Searing Gorge 63.66,59.26 |tip {dropsfrom}Dark Iron Geologist, Dark Iron Steamsmith, Slave Worker
step
  note Find and slay Golem Lord Argelmach. Return his head to Lotwil. You will also need to collect 10 Intact Elemental Cores from the Ragereaver Golems and Warbringer Constructs protecting Argelmach. You know this because you are psychic.
  collect 10 Head of Argelmach##11268 |q 4063 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Golem Lord Argelmach
step
  only completed(3982)
  note Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell.
  kill Emperor Dagran Thaurissan##9019 |q 4003 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Kalaran Windblade##8479
  turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk Lotwil Veriatus##2921
  turnin The Rise of the Machines##4063 |goto Badlands 25.95,44.87
step
  talk Grark Lorkrub##9520
  turnin Grark Lorkrub##4122 |goto Burning Steppes 40.2,34.24
step
  only completed(3982)
  talk Princess Moira Bronzebeard##8929
  turnin The Royal Rescue##4003 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Grark Lorkrub##9520
  accept Precarious Predicament##4121 |goto Burning Steppes 40.2,34.24
step
  only completed(3982)
  talk Princess Moira Bronzebeard##8929
  accept The Princess Saved?##4004 |goto Blackrock Depths - Dungeon -1,-1
step
  note Find and return a Symbol of Ragnaros to Kalaran Windblade.
  kill Twilight Dark Shaman##5860 |goto Searing Gorge 23.52,36.55 |elite
  collect Symbol of Ragnaros##10552 |q 3452 |goto Searing Gorge 23.52,36.55
step
  note Escort your prisoner, Grark Lorkrub, through Burning Steppes and through Blackrock Mountain to the Searing Gorge.
  collect Thorium Shackles##11286 |q 4121 |goto Burning Steppes 40.2,34.24
step
  talk Kalaran Windblade##8479
  turnin The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Lexlort##9080
  turnin Precarious Predicament##4121 |goto Badlands 5.88,47.63
step
  only completed(3982)
  talk Thrall##4949
  turnin The Princess Saved?##4004 |goto Orgrimmar 31.73,37.82
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  talk Warlord Goretooth##9077
  accept Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  note Wait for Kalaran Windblade to complete the Torch of Retribution.
  talk Kalaran Windblade##8479 |q 3453 |goto Searing Gorge 39.06,38.99
step
  note Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete.
  kill General Angerforge##9033 |q 4132 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Kalaran Windblade##8479
  turnin The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  talk Warlord Goretooth##9077
  turnin Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3454 |goto Searing Gorge 39.06,38.99
step
  turnin The Torch of Retribution##3454 |goto Searing Gorge 39.06,39.07
step
  talk Kalaran Windblade##8479
  accept Squire Maltrake##3462 |goto Searing Gorge 39.06,38.99
step
  talk Squire Maltrake##8509
  turnin Squire Maltrake##3462 |goto Searing Gorge 39.17,39
step
  talk Squire Maltrake##8509
  accept Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  note Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
  collect Sentry Brazier##149025 |q 3463 |goto Searing Gorge 35.67,60.68
step
  talk Squire Maltrake##8509
  turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  click Hoard of the Black Dragonflight##149502
  accept Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  turnin Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  only not completed(4023) not haveq(4023)
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  only not completed(4023) not haveq(4023)
  note Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
  kill Frenzied Black Drake##9461 |goto Burning Steppes 94.4,31.8 |elite
  collect Black Dragonflight Molt##10575 |q 4022 |goto Burning Steppes 94.4,31.8
step
  only not completed(4023) not haveq(4023)
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
step
  note Travel to Blackrock Depths and slay Bael'Gar.
  collect Encased Fiery Essence##11230 |q 4024 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Bael'Gar
step
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
]])
