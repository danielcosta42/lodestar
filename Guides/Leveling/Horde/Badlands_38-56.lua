-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Badlands (38-56)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stranglethorn Vale (37-60)",
}, [[
step
  note {fp}Gorrik
  goto Badlands 3.99,44.78 |tip {vendor}
step
  talk Rigglefuzz##2817
  accept Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
  note Bring 4 Buzzard Wings to Rigglefuzz.
  collect 4 Buzzard Wing##3404 |q 703 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Young Mesa Buzzard, Mesa Buzzard
step
  talk Rigglefuzz##2817
  accept Pearl Diving##705 |goto Badlands 42.39,52.93
step
  note Bring 9 Blue Pearls to Rigglefuzz in the Badlands.
  collect 9 Blue Pearl##4611 |q 705 |goto Stranglethorn Vale 24.94,24.25 |tip {dropsfrom}Saltscale Warrior, Saltscale Oracle, Saltscale Tide Lord
step
  talk Martek the Exiled##4618
  accept Indurium##1108 |goto Badlands 42.22,52.69
step
  note Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
  collect 10 Indurium Flake##5797 |q 1108 |goto Badlands 64.82,43.51 |tip {dropsfrom}Stonevault Seer, Stonevault Bonesnapper, Stonevault Shaman
step
  talk Rigglefuzz##2817
  accept Flash Bomb Recipe##1559 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  accept Power Stones##2418 |goto Badlands 42.39,52.93
step
  note Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands.
  collect 8 Dentrium Power Stone##8009 |q 2418 |goto Loch Modan 38.32,88.59 |tip {dropsfrom}Shadowforge Surveyor, Shadowforge Ruffian, Shadowforge Digger
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
step
  note Find 10 Small Stone Shards and bring them to Lotwil Veriatus in the Badlands.
  collect 10 Small Stone Shard##4626 |q 710 |goto Badlands 19.26,43.19 |tip {dropsfrom}Lesser Rock Elemental
step
  talk Lotwil Veriatus##2921
  accept Coolant Heads Prevail##713 |goto Badlands 25.95,44.87
step
  note Find Frost Oil and bring it to Lotwil Veriatus in Badlands.
  collect Frost Oil##3829 |q 713 |goto The Hinterlands 67.33,68.58 |tip {dropsfrom}Vilebranch Witch Doctor, Tar Creeper, Deadwood Gardener
step
  talk Gorn##1068
  accept Broken Alliances##782 |goto Badlands 2.91,45.6
step
  note Kill Boss Tho'grun and bring the Sign of the Earth to Gorn in Kargath.
  collect Sign of the Earth##4640 |q 782 |goto Badlands 12.62,75.49 |tip {dropsfrom}Boss Tho'grun
step
  talk Neeka Bloodscar##5394
  accept Coyote Thieves##1419 |goto Badlands 6.49,47.2
step
  note Bring 30 Coyote Jawbones to Neeka Bloodscar in Kargath.
  collect 30 Coyote Jawbone##6166 |q 1419 |goto Badlands 50.97,41.5 |tip {dropsfrom}Crag Coyote, Feral Crag Coyote, Elder Crag Coyote
step
  talk Neeka Bloodscar##5394
  accept Report to Helgrum##1420 |goto Badlands 6.49,47.2
step
  talk Jarkal Mossmeld##6868
  accept Badlands Reagent Run##2258 |goto Badlands 2.42,46.06
step
  note Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
  collect 5 Buzzard Gizzard##7847 |q 2258 |goto Badlands 58.76,28.59 |tip {dropsfrom}Starving Buzzard, Buzzard, Giant Buzzard
step
  talk Jarkal Mossmeld##6868
  accept Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Thal'trak Proudtusk##9082
  accept Dreadmaul Rock##3821 |goto Badlands 3.36,48.06
step
  talk Thunderheart##9084
  accept Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  note Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment.
  kill Overmaster Pyron##9026 |q 3906 |elite
step
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  note Venture to the Burning Steppes and recover 10 Fractured Elemental Shards for Hierophant Theodora Mulvadania.
  collect Fractured Elemental Shard##11266 |q 4061 |goto Burning Steppes 54.83,49.02 |tip {dropsfrom}Greater Obsidian Elemental, War Reaver, Malfunctioning Reaver
step
  click WANTED##164867
  accept KILL ON SIGHT: Dark Iron Dwarves##4081 |goto Badlands 3.74,47.43
step
  talk Lexlort##9080
  accept Grark Lorkrub##4122 |goto Badlands 5.88,47.63
step
  talk Warlord Goretooth##9077
  accept Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Shadowmage Vivian Lagrave##9078
  accept Lost Thunderbrew Recipe##4134 |goto Badlands 2.9,47.76
step
  note Bring the Lost Thunderbrew Recipe to Vivian Lagrave in Kargath.
  collect Lost Thunderbrew Recipe##11312 |q 4134 |goto Badlands 2.9,47.76 |tip {dropsfrom}Hurley Blackbreath, Blackbreath Crony
step
  talk Galamav the Marksman##9081
  accept The Pack Mistress##4724 |goto Badlands 5.96,47.73
step
  talk Shadowmage Vivian Lagrave##9078
  accept The Darkstone Tablet##4768 |goto Badlands 2.9,47.76
step
  note Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath.
  collect Darkstone Tablet##12358 |q 4768 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warlord Goretooth##9077
  accept Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  talk Lexlort##9080
  accept Operative Bijou##4981 |goto Badlands 5.88,47.63
step
  talk Shadowmage Vivian Lagrave##9078
  accept The Last Element##7201 |goto Badlands 2.9,47.76
step
  note Travel to Blackrock Depths and recover 10 Essence of the Elements. Your first inclination is to search the golems and golem makers. You remember Vivian Lagrave also muttering something about elementals.
  collect Essence of the Elements##11129 |q 7201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite |tip {dropsfrom}Warbringer Construct, Ragereaver Golem, Scald
step
  talk Advisor Sarophas##17097
  accept Unclaimed Baggage##9439 |goto Badlands 6.0,48.06
step
  note Retrieve the Advisor's Pack and Advisor's Rapier from their holding places in the Angor Fortress and return them to Advisor Sarophas at Kargath.
  collect Advisor's Pack##23658 |q 9439 |goto Badlands 41.1,29.25 |tip {dropsfrom}Empty Barrel
step
  note Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete.
  kill General Angerforge##9033 |q 4132 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  note Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
  kill Overlord Wyrmthalak##9568 |q 4903 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Venture to Blackrock Depths and destroy the vile aggressors!
  kill Anvilrage Guardsman##8891 |q 4081 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  note Slay Halycon, pack mistress of the Bloodaxe worg.
  kill Halycon##10220 |q 4724 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Theldurin the Lost##2785
  accept The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  note Bring the Torn Scroll Fragment, the Crumpled Scroll Fragment and the Singed Scroll Fragment to Theldurin the Lost.
  collect Torn Scroll Fragment##4518 |q 692 |goto Badlands 54.52,83.91 |tip {dropsfrom}Enraged Rock Elemental
step
  talk Theldurin the Lost##2785
  accept Solution to Doom##709 |goto Badlands 51.39,76.87
step
  note Bring the Tablet of Ryun'eh to Theldurin the Lost.
  collect Tablet of Ryun'eh##4631 |q 709 |goto Loch Modan 38.57,93.18 |tip {dropsfrom}Ancient Chest
step
  talk Varimathras##2425
  accept Into The Scarlet Monastery##1048 |goto Undercity 56.25,92.2
step
  talk Uthel'nay##7311
  accept Shadowshard Fragments##7068 |goto Orgrimmar 39.16,86.27
step
  note Collect 10 Shadowshard Fragments from Maraudon and return them to Uthel'nay in Orgrimmar.
  collect 10 Shadowshard Fragment##17756 |q 7068 |goto Desolace 27.99,57.01 |tip {dropsfrom}Shadowshard Rumbler, Shadowshard Smasher
step
  talk Patrick Garrett##5651
  accept Reclaimed Treasures##2342 |goto Undercity 62.32,48.61
step
  note Get Patrick Garrett's family treasure from their family chest in the South Common Hall of Uldaman, and bring it to him in the Undercity.
  collect Reclaimed Treasures##8026 |q 2342 |goto Undercity 62.32,48.61
step
  talk Belgrom Rockmaul##4485
  accept A Threat in Feralas##2981 |goto Orgrimmar 75.23,34.24
step
  talk Andrew Brownell##2308
  accept Bring the End##3341 |goto Undercity 74.05,33.31
step
  note Andrew Brownell wants you to kill Amnennar the Coldbringer and return his skull.
  collect Skull of the Coldbringer##10420 |q 3341 |goto Razorfen Downs - Dungeon -1,-1 |tip {dropsfrom}Amnennar the Coldbringer
step
  talk Thorkaf Dragoneye##7867
  accept Dragonscale Leatherworking##5145 |goto Badlands 62.7,57.4
step
  note Bring 2 Tough Scorpid Breastplates, 2 Tough Scorpid Gloves, and 10 Worn Dragonscales to Thorkaf Dragoneye in the Badlands.
  collect 2 Tough Scorpid Breastplate##8203 |q 5145 |goto Badlands 62.7,57.4
step
  talk Helgrum the Swift##1442
  turnin Report to Helgrum##1420 |goto Swamp of Sorrows 47.74,55.2 |tip {turninat}Swamp of Sorrows
step
  talk Rigglefuzz##2817
  turnin Flash Bomb Recipe##1559 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  turnin Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  turnin Pearl Diving##705 |goto Badlands 42.39,52.93
step
  talk Martek the Exiled##4618
  turnin Indurium##1108 |goto Badlands 42.22,52.69
step
  talk Rigglefuzz##2817
  turnin Power Stones##2418 |goto Badlands 42.39,52.93
step
  talk Martek the Exiled##4618
  accept News for Fizzle##1137 |goto Badlands 42.22,52.69
step
  talk Grark Lorkrub##9520
  turnin Grark Lorkrub##4122 |goto Burning Steppes 40.2,34.24 |tip {turninat}Burning Steppes
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  turnin Coolant Heads Prevail##713 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
  note Bring 3 Large Stone Slabs to Lotwil Veriatus in the Badlands.
  collect 3 Large Stone Slab##4627 |q 711 |goto Badlands 40.97,77.75 |tip {dropsfrom}Rock Elemental
step
  talk Lotwil Veriatus##2921
  accept Gyro... What?##714 |goto Badlands 25.95,44.87
step
  note Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.
  collect Gyrochronatom##4389 |q 714 |goto Stranglethorn Vale 41.97,44.64 |tip {dropsfrom}Venture Co. Tinkerer, Venture Co. Mechanic, Advanced Target Dummy
step
  talk Neeka Bloodscar##5394
  turnin Coyote Thieves##1419 |goto Badlands 6.49,47.2
step
  talk Gorn##1068
  turnin Broken Alliances##782 |goto Badlands 2.91,45.6
step
  talk Shadowmage Vivian Lagrave##9078
  turnin The Darkstone Tablet##4768 |goto Badlands 2.9,47.76
step
  talk Shadowmage Vivian Lagrave##9078
  turnin The Last Element##7201 |goto Badlands 2.9,47.76
step
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Warlord Goretooth##9077
  turnin Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Lost Thunderbrew Recipe##4134 |goto Badlands 2.9,47.76
step
  talk Warlord Goretooth##9077
  turnin Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  talk Thunderheart##9084
  turnin Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  talk Jarkal Mossmeld##6868
  turnin Badlands Reagent Run##2258 |goto Badlands 2.42,46.06
step
  talk Hierophant Theodora Mulvadania##9079
  turnin The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  talk Advisor Sarophas##17097
  turnin Unclaimed Baggage##9439 |goto Badlands 6.0,48.06
step
  talk Warlord Goretooth##9077
  turnin KILL ON SIGHT: Dark Iron Dwarves##4081 |goto Badlands 5.81,47.52
step
  talk Galamav the Marksman##9081
  turnin The Pack Mistress##4724 |goto Badlands 5.96,47.73
step
  talk Bijou##10257
  turnin Operative Bijou##4981 |goto Blackrock Spire - Dungeon -1,-1 |tip {turninat}Blackrock Spire - Dungeon
step
  talk Gorn##1068
  accept Broken Alliances##793 |goto Badlands 2.91,45.6
step
  note Use the Sign of the Earth to activate the Pillars of Diamond, Opal, and Amethyst and obtain the Runestones.
  collect Blacklash's Bindings##4615 |q 793 |goto Badlands 2.91,45.6 |tip {dropsfrom}Blacklash
step
  talk Jarkal Mossmeld##6868
  accept Uldaman Reagent Run##2202 |goto Badlands 2.42,46.06
step
  note Bring 12 Magenta Fungus Caps to Jarkal Mossmeld in Kargath.
  collect 12 Magenta Fungus Cap##8047 |q 2202 |goto Loch Modan 37.19,89.74 |tip {dropsfrom}Magenta Cap Clusters
step
  talk Jarkal Mossmeld##6868
  accept Find the Gems and Power Source##2339 |goto Badlands 2.42,46.06
step
  note Recover all three gems and a power source for the necklace from Uldaman, and then bring them to Jarkal Mossmeld in Kargath. Jarkal believes a power source might be found on the strongest construct present in Uldaman.
  collect Shattered Necklace Ruby##7669 |q 2339 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Shadowforge Cache
step
  talk Thunderheart##9084
  accept Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Galamav the Marksman##9081
  accept Commander Gor'shak##3981 |goto Badlands 5.96,47.73
step
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4062 |goto Badlands 3.02,47.81
step
  click KILL ON SIGHT##164868
  accept KILL ON SIGHT: High Ranking Dark Iron Officials##4082 |goto Badlands 3.94,46.73
step
  note Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.
  kill High Inquisitor Whitemane##3977 |q 1048 |goto Scarlet Monastery - Dungeon -1,-1 |elite
step
  note Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart.
  kill Lord Incendius##9017 |q 3907 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  note Venture to Blackrock Depths and destroy the vile aggressors!
  kill Anvilrage Medic##8894 |q 4082 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  talk Varimathras##2425
  turnin Into The Scarlet Monastery##1048 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  talk Uthel'nay##7311
  turnin Shadowshard Fragments##7068 |goto Orgrimmar 39.16,86.27 |tip {turninat}Orgrimmar
step
  talk Theldurin the Lost##2785
  turnin The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  turnin Solution to Doom##709 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  accept Summoning the Princess##656 |goto Badlands 51.39,76.87
step
  note Go to the Shards of Myzrael, summon her and defeat her.
  collect Eldritch Shackles##4473 |q 656 |goto Badlands 51.39,76.87 |tip {dropsfrom}Myzrael
step
  talk Theldurin the Lost##2785
  accept To the Undercity for Yagyin's Digest##728 |goto Badlands 51.39,76.87
step
  talk Andrew Brownell##2308
  turnin Bring the End##3341 |goto Undercity 74.05,33.31 |tip {turninat}Undercity
step
  turnin Summoning the Princess##656 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  talk Thorkaf Dragoneye##7867
  turnin Dragonscale Leatherworking##5145 |goto Badlands 62.7,57.4
step
  talk Rok Orhan##7777
  turnin A Threat in Feralas##2981 |goto Feralas 75.8,43.58 |tip {turninat}Feralas
step
  talk Patrick Garrett##5651
  turnin Reclaimed Treasures##2342 |goto Undercity 62.32,48.61 |tip {turninat}Undercity
step
  talk Keeper Bel'dugur##2934
  turnin To the Undercity for Yagyin's Digest##728 |goto Undercity 53.74,54.46 |tip {turninat}Undercity
step
  talk Fizzle Brassbolts##4454
  turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13 |tip {turninat}Thousand Needles
step
  talk Keeper Bel'dugur##2934
  accept The Star, the Hand and the Heart##736 |goto Undercity 53.74,54.46
step
  note Bring the items on Bel'dugur's Note to Keeper Bel'dugur in the Undercity.
  collect Star of Xil'yeh##4646 |q 736 |goto Alterac Mountains 35.58,54.42 |tip {dropsfrom}Grel'borg the Miser
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  turnin Gyro... What?##714 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  turnin The Rise of the Machines##4062 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
step
  note Bring 5 Bracers of Rock Binding to Lotwil Veriatus in the Badlands.
  collect 5 Bracers of Rock Binding##4628 |q 712 |goto Badlands 6.57,82.27 |tip {dropsfrom}Greater Rock Elemental
step
  talk Lucien Tosselwrench##2920
  accept Liquid Stone##715 |goto Badlands 25.82,44.24
step
  note Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.
  collect Healing Potion##929 |q 715 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Skeletal Warrior, Skeletal Horror
step
  talk Lotwil Veriatus##2921
  accept The Rise of the Machines##4063 |goto Badlands 25.95,44.87
step
  note Find and slay Golem Lord Argelmach. Return his head to Lotwil. You will also need to collect 10 Intact Elemental Cores from the Ragereaver Golems and Warbringer Constructs protecting Argelmach. You know this because you are psychic.
  collect 10 Head of Argelmach##11268 |q 4063 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite |tip {dropsfrom}Golem Lord Argelmach
step
  talk Commander Gor'shak##9020
  turnin Commander Gor'shak##3981 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |tip {turninat}Blackrock Depths - Dungeon -- Shadowforge City
step
  talk Gorn##1068
  turnin Broken Alliances##793 |goto Badlands 2.91,45.6
step
  talk Jarkal Mossmeld##6868
  turnin Uldaman Reagent Run##2202 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  turnin Find the Gems and Power Source##2339 |goto Badlands 2.42,46.06
step
  talk Thunderheart##9084
  turnin Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Warlord Goretooth##9077
  turnin KILL ON SIGHT: High Ranking Dark Iron Officials##4082 |goto Badlands 5.81,47.52
step
  talk Jarkal Mossmeld##6868
  accept Badlands Reagent Run II##2203 |goto Badlands 2.42,46.06
step
  note Use the empty thaumaturgy vessels on scorched guardian dragons found in the Badlands. Once you have them filled, bring them to Jarkal Mossmeld in Kargath.
  collect Vessel of Dragon's Blood##7867 |q 2203 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  accept Deliver the Gems##2340 |goto Badlands 2.42,46.06
step
  talk Dran Droffers##6986
  turnin Deliver the Gems##2340 |goto Orgrimmar 59.49,36.57 |tip {turninat}Orgrimmar
step
  talk Keeper Bel'dugur##2934
  turnin The Star, the Hand and the Heart##736 |goto Undercity 53.74,54.46 |tip {turninat}Undercity
step
  talk Dran Droffers##6986
  accept Necklace Recovery, Take 3##2341 |goto Orgrimmar 59.49,36.57
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
step
  talk Lucien Tosselwrench##2920
  turnin Liquid Stone##715 |goto Badlands 25.82,44.24
step
  talk Lotwil Veriatus##2921
  turnin The Rise of the Machines##4063 |goto Badlands 25.95,44.87
step
  talk Lucien Tosselwrench##2920
  accept Stone Is Better than Cloth##716 |goto Badlands 25.82,44.24
step
  note Bring some Patterned Bronze Bracers to Lucien Tosselwrench in the Badlands.
  collect Patterned Bronze Bracers##2868 |q 716 |goto Badlands 25.82,44.24
step
  talk Lotwil Veriatus##2921
  accept This Is Going to Be Hard##734 |goto Badlands 25.95,44.87
step
  talk Jarkal Mossmeld##6868
  turnin Badlands Reagent Run II##2203 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  turnin Necklace Recovery, Take 3##2341 |goto Badlands 2.42,46.06
step
  talk Lucien Tosselwrench##2920
  turnin Stone Is Better than Cloth##716 |goto Badlands 25.82,44.24
step
  talk Lucien Tosselwrench##2920
  turnin This Is Going to Be Hard##734 |goto Badlands 25.82,44.24
step
  talk Lucien Tosselwrench##2920
  accept This Is Going to Be Hard##777 |goto Badlands 25.82,44.24
step
  talk Lotwil Veriatus##2921
  turnin This Is Going to Be Hard##777 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept This Is Going to Be Hard##778 |goto Badlands 25.95,44.87
step
  note Defeat the Fam'retor Guardian and bring Lotwil's Shackles of Elemental Binding back to Lotwil Veriatus.
  collect Lotwil's Shackles of Elemental Binding##4847 |q 778 |goto Badlands 25.95,44.87 |tip {dropsfrom}Fam'retor Guardian
step
  talk Lotwil Veriatus##2921
  turnin This Is Going to Be Hard##778 |goto Badlands 25.95,44.87
step
  talk Sha'ni Proudtusk##9136
  turnin Dreadmaul Rock##3821
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 26.66,73.51
]])
