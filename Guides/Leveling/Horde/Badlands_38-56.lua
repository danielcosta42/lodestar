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
  get Barbecued Buzzard Wings |q 703 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  accept Pearl Diving##705 |goto Badlands 42.39,52.93
step
  note Bring 9 Blue Pearls to Rigglefuzz in the Badlands.
  get Pearl Diving |q 705 |goto Badlands 42.39,52.93
step
  talk Martek the Exiled##4618
  accept Indurium##1108 |goto Badlands 42.22,52.69
step
  note Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
  get Indurium |q 1108 |goto Badlands 42.22,52.69
step
  talk Rigglefuzz##2817
  accept Flash Bomb Recipe##1559 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  accept Power Stones##2418 |goto Badlands 42.39,52.93
step
  note Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands.
  get Power Stones |q 2418 |goto Badlands 42.39,52.93
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
step
  note Find 10 Small Stone Shards and bring them to Lotwil Veriatus in the Badlands.
  get Study of the Elements: Rock |q 710 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Coolant Heads Prevail##713 |goto Badlands 25.95,44.87
step
  note Find Frost Oil and bring it to Lotwil Veriatus in Badlands.
  get Coolant Heads Prevail |q 713 |goto Badlands 25.95,44.87
step
  talk Gorn##1068
  accept Broken Alliances##782 |goto Badlands 2.91,45.6
step
  note Kill Boss Tho'grun and bring the Sign of the Earth to Gorn in Kargath.
  get Broken Alliances |q 782 |goto Badlands 2.91,45.6
step
  talk Neeka Bloodscar##5394
  accept Coyote Thieves##1419 |goto Badlands 6.49,47.2
step
  note Bring 30 Coyote Jawbones to Neeka Bloodscar in Kargath.
  get Coyote Thieves |q 1419 |goto Badlands 6.49,47.2
step
  talk Neeka Bloodscar##5394
  accept Report to Helgrum##1420 |goto Badlands 6.49,47.2
step
  talk Jarkal Mossmeld##6868
  accept Badlands Reagent Run##2258 |goto Badlands 2.42,46.06
step
  note Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
  get Badlands Reagent Run |q 2258 |goto Badlands 2.42,46.06
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
  kill Overmaster Pyron##9026 |q 3906
step
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  note Venture to the Burning Steppes and recover 10 Fractured Elemental Shards for Hierophant Theodora Mulvadania.
  get The Rise of the Machines |q 4061 |goto Badlands 3.02,47.81
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
  get Lost Thunderbrew Recipe |q 4134 |goto Badlands 2.9,47.76
step
  talk Galamav the Marksman##9081
  accept The Pack Mistress##4724 |goto Badlands 5.96,47.73
step
  talk Shadowmage Vivian Lagrave##9078
  accept The Darkstone Tablet##4768 |goto Badlands 2.9,47.76
step
  note Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath.
  get The Darkstone Tablet |q 4768 |goto Badlands 2.9,47.76
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
  get The Last Element |q 7201 |goto Badlands 2.9,47.76
step
  talk Advisor Sarophas##17097
  accept Unclaimed Baggage##9439 |goto Badlands 6.0,48.06
step
  note Retrieve the Advisor's Pack and Advisor's Rapier from their holding places in the Angor Fortress and return them to Advisor Sarophas at Kargath.
  get Unclaimed Baggage |q 9439 |goto Badlands 6.0,48.06
step
  note Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete.
  kill General Angerforge##9033 |q 4132 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
  kill Overlord Wyrmthalak##9568 |q 4903 |goto Blackrock Spire - Dungeon -1,-1
step
  note Slay Halycon, pack mistress of the Bloodaxe worg.
  kill Halycon##10220 |q 4724 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Theldurin the Lost##2785
  accept The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  note Bring the Torn Scroll Fragment, the Crumpled Scroll Fragment and the Singed Scroll Fragment to Theldurin the Lost.
  get The Lost Fragments |q 692 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  accept Solution to Doom##709 |goto Badlands 51.39,76.87
step
  note Bring the Tablet of Ryun'eh to Theldurin the Lost.
  get Solution to Doom |q 709 |goto Badlands 51.39,76.87
step
  talk Thorkaf Dragoneye##7867
  accept Dragonscale Leatherworking##5145 |goto Badlands 62.7,57.4
step
  note Bring 2 Tough Scorpid Breastplates, 2 Tough Scorpid Gloves, and 10 Worn Dragonscales to Thorkaf Dragoneye in the Badlands.
  get Dragonscale Leatherworking |q 5145 |goto Badlands 62.7,57.4
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
  get Study of the Elements: Rock |q 711 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Gyro... What?##714 |goto Badlands 25.95,44.87
step
  note Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.
  get Gyro... What? |q 714 |goto Badlands 25.95,44.87
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
  get Broken Alliances |q 793 |goto Badlands 2.91,45.6
step
  talk Jarkal Mossmeld##6868
  accept Uldaman Reagent Run##2202 |goto Badlands 2.42,46.06
step
  note Bring 12 Magenta Fungus Caps to Jarkal Mossmeld in Kargath.
  get Uldaman Reagent Run |q 2202 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  accept Find the Gems and Power Source##2339 |goto Badlands 2.42,46.06
step
  note Recover all three gems and a power source for the necklace from Uldaman, and then bring them to Jarkal Mossmeld in Kargath. Jarkal believes a power source might be found on the strongest construct present in Uldaman.
  get Find the Gems and Power Source |q 2339 |goto Badlands 2.42,46.06
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
  note Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart.
  kill Lord Incendius##9017 |q 3907 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
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
  get Summoning the Princess |q 656 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  accept To the Undercity for Yagyin's Digest##728 |goto Badlands 51.39,76.87
step
  turnin Summoning the Princess##656 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  talk Thorkaf Dragoneye##7867
  turnin Dragonscale Leatherworking##5145 |goto Badlands 62.7,57.4
step
  talk Keeper Bel'dugur##2934
  turnin To the Undercity for Yagyin's Digest##728 |goto Undercity 53.74,54.46 |tip {turninat}Undercity
step
  talk Fizzle Brassbolts##4454
  turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13 |tip {turninat}Thousand Needles
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
  get Study of the Elements: Rock |q 712 |goto Badlands 25.95,44.87
step
  talk Lucien Tosselwrench##2920
  accept Liquid Stone##715 |goto Badlands 25.82,44.24
step
  note Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.
  get Liquid Stone |q 715 |goto Badlands 25.82,44.24
step
  talk Lotwil Veriatus##2921
  accept The Rise of the Machines##4063 |goto Badlands 25.95,44.87
step
  note Find and slay Golem Lord Argelmach. Return his head to Lotwil. You will also need to collect 10 Intact Elemental Cores from the Ragereaver Golems and Warbringer Constructs protecting Argelmach. You know this because you are psychic.
  get The Rise of the Machines |q 4063 |goto Badlands 25.95,44.87
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
  talk Jarkal Mossmeld##6868
  accept Badlands Reagent Run II##2203 |goto Badlands 2.42,46.06
step
  note Use the empty thaumaturgy vessels on scorched guardian dragons found in the Badlands. Once you have them filled, bring them to Jarkal Mossmeld in Kargath.
  get Badlands Reagent Run II |q 2203 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  accept Deliver the Gems##2340 |goto Badlands 2.42,46.06
step
  talk Dran Droffers##6986
  turnin Deliver the Gems##2340 |goto Orgrimmar 59.49,36.57 |tip {turninat}Orgrimmar
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
  get Stone Is Better than Cloth |q 716 |goto Badlands 25.82,44.24
step
  talk Lotwil Veriatus##2921
  accept This Is Going to Be Hard##734 |goto Badlands 25.95,44.87
step
  talk Jarkal Mossmeld##6868
  turnin Badlands Reagent Run II##2203 |goto Badlands 2.42,46.06
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
  get This Is Going to Be Hard |q 778 |goto Badlands 25.95,44.87
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
