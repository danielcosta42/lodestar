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
  talk Rigglefuzz##2817
  accept Pearl Diving##705 |goto Badlands 42.39,52.93
step
  talk Martek the Exiled##4618
  accept Indurium##1108 |goto Badlands 42.22,52.69
step
  talk Rigglefuzz##2817
  accept Flash Bomb Recipe##1559 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  accept Power Stones##2418 |goto Badlands 42.39,52.93
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Coolant Heads Prevail##713 |goto Badlands 25.95,44.87
step
  talk Gorn##1068
  accept Broken Alliances##782 |goto Badlands 2.91,45.6
step
  talk Neeka Bloodscar##5394
  accept Coyote Thieves##1419 |goto Badlands 6.49,47.2
step
  talk Neeka Bloodscar##5394
  accept Report to Helgrum##1420 |goto Badlands 6.49,47.2
step
  talk Jarkal Mossmeld##6868
  accept Badlands Reagent Run##2258 |goto Badlands 2.42,46.06
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
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4061 |goto Badlands 3.02,47.81
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
  talk Galamav the Marksman##9081
  accept The Pack Mistress##4724 |goto Badlands 5.96,47.73
step
  talk Shadowmage Vivian Lagrave##9078
  accept The Darkstone Tablet##4768 |goto Badlands 2.9,47.76
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
  talk Advisor Sarophas##17097
  accept Unclaimed Baggage##9439 |goto Badlands 6.0,48.06
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
  talk Theldurin the Lost##2785
  accept Solution to Doom##709 |goto Badlands 51.39,76.87
step
  talk Thorkaf Dragoneye##7867
  accept Dragonscale Leatherworking##5145 |goto Badlands 62.7,57.4
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
  talk Lotwil Veriatus##2921
  accept Gyro... What?##714 |goto Badlands 25.95,44.87
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
  talk Jarkal Mossmeld##6868
  accept Uldaman Reagent Run##2202 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  accept Find the Gems and Power Source##2339 |goto Badlands 2.42,46.06
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
  talk Lucien Tosselwrench##2920
  accept Liquid Stone##715 |goto Badlands 25.82,44.24
step
  talk Lotwil Veriatus##2921
  accept The Rise of the Machines##4063 |goto Badlands 25.95,44.87
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
  talk Lotwil Veriatus##2921
  turnin This Is Going to Be Hard##778 |goto Badlands 25.95,44.87
step
  talk Sha'ni Proudtusk##9136
  turnin Dreadmaul Rock##3821
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 26.66,73.51
]])
