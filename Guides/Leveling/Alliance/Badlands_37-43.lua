-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Badlands (37-43)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stranglethorn Vale (37-60)",
}, [[
step
  talk Sigrun Ironhew##2860
  accept Fiery Blaze Enchantments##706 |goto Badlands 53.8,43.3
step
  note Acquire a Black Drake's Heart for Sigrun Ironhew.
  kill Scalding Whelp##2725 |q 706 |goto Badlands 81.39,37.38
step
  talk Sigrun Ironhew##2860
  accept Mirages##718 |goto Badlands 53.8,43.3
step
  note Retrieve the Supply Crate for Sigrun Ironhew.
  collect Excavation Supply Crate##2867 |q 718 |goto Badlands 66.92,23.45
step
  talk Prospector Ryedol##2910
  accept A Dwarf and His Tools##719 |goto Badlands 53.42,43.39
step
  note Find Ryedol's Lucky Pick and return it to Prospector Ryedol south of Hammertoe's Dig Site.
  kill Shadowforge Tunneler##2739 |q 719 |goto Badlands 53.43,32.7
step
  talk Prospector Ryedol##2910
  accept A Sign of Hope##721 |goto Badlands 53.42,43.39
step
  talk Prospector Ryedol##2910
  accept Prospect of Faith##724 |goto Badlands 53.42,43.39
step
  talk Rigglefuzz##2817
  accept Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
  note Bring 4 Buzzard Wings to Rigglefuzz.
  kill Carrion Vulture##1809 |q 703 |goto Western Plaguelands 32.26,62.39
step
  talk Rigglefuzz##2817
  accept Pearl Diving##705 |goto Badlands 42.39,52.93
step
  note Bring 9 Blue Pearls to Rigglefuzz in the Badlands.
  kill Saltscale Warrior##871 |q 705 |goto Stranglethorn Vale 24.94,24.25
step
  talk Martek the Exiled##4618
  accept Indurium##1108 |goto Badlands 42.22,52.69
step
  note Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
  kill Stonevault Seer##2892 |q 1108 |goto Badlands 64.82,43.51
step
  talk Rigglefuzz##2817
  accept Flash Bomb Recipe##1559 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  accept Power Stones##2418 |goto Badlands 42.39,52.93
step
  note Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands.
  kill Shadowforge Surveyor##4844 |q 2418 |goto Loch Modan 38.32,88.59
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
step
  note Find 10 Small Stone Shards and bring them to Lotwil Veriatus in the Badlands.
  kill Lesser Rock Elemental##2735 |q 710 |goto Badlands 19.26,43.19
step
  talk Lotwil Veriatus##2921
  accept Coolant Heads Prevail##713 |goto Badlands 25.95,44.87
step
  note Find Frost Oil and bring it to Lotwil Veriatus in Badlands.
  kill Vilebranch Witch Doctor##2640 |q 713 |goto The Hinterlands 67.33,68.58
step
  talk Jarkal Mossmeld##6868
  accept Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Hammertoe Grez##2909
  turnin A Sign of Hope##721 |goto Loch Modan 37.28,85.78 |tip {turninat}Loch Modan
step
  talk Theldurin the Lost##2785
  accept The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  note Bring the Torn Scroll Fragment, the Crumpled Scroll Fragment and the Singed Scroll Fragment to Theldurin the Lost.
  kill Enraged Rock Elemental##2791 |q 692 |goto Badlands 54.52,83.91
step
  talk Theldurin the Lost##2785
  accept Solution to Doom##709 |goto Badlands 51.39,76.87
step
  note Bring the Tablet of Ryun'eh to Theldurin the Lost.
  collect Ancient Chest##126260 |q 709 |goto Loch Modan 38.57,93.18
step
  talk Sigrun Ironhew##2860
  turnin Fiery Blaze Enchantments##706 |goto Badlands 53.8,43.3
step
  talk Sigrun Ironhew##2860
  turnin Mirages##718 |goto Badlands 53.8,43.3
step
  talk Prospector Ryedol##2910
  turnin A Dwarf and His Tools##719 |goto Badlands 53.42,43.39
step
  talk Historian Karnik##2916
  turnin Prospect of Faith##724 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  talk Sigrun Ironhew##2860
  accept Scrounging##733 |goto Badlands 53.8,43.3
step
  note Get 7 pieces of Scrap Metal for Sigrun.
  kill Dustbelcher Ogre##2701 |q 733 |goto Badlands 61.95,68.44
step
  talk Garek##2888
  accept Tremors of the Earth##732 |goto Badlands 61.94,54.26
step
  note Retrieve the Sign of the Earth for Garek.
  kill Boss Tho'grun##2944 |q 732 |goto Badlands 12.62,75.49
step
  talk Rigglefuzz##2817
  turnin Pearl Diving##705 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  turnin Power Stones##2418 |goto Badlands 42.39,52.93
step
  talk Martek the Exiled##4618
  turnin Indurium##1108 |goto Badlands 42.22,52.69
step
  talk Rigglefuzz##2817
  turnin Flash Bomb Recipe##1559 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  turnin Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
  talk Martek the Exiled##4618
  accept News for Fizzle##1137 |goto Badlands 42.22,52.69
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
  kill Rock Elemental##92 |q 711 |goto Badlands 40.97,77.75
step
  talk Lotwil Veriatus##2921
  accept Gyro... What?##714 |goto Badlands 25.95,44.87
step
  note Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.
  kill Venture Co. Tinkerer##677 |q 714 |goto Stranglethorn Vale 41.97,44.64
step
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Theldurin the Lost##2785
  turnin Solution to Doom##709 |goto Badlands 51.39,76.87
step
  talk Fizzle Brassbolts##4454
  turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13 |tip {turninat}Thousand Needles
step
  talk Theldurin the Lost##2785
  turnin The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  accept Summoning the Princess##656 |goto Badlands 51.39,76.87
step
  note Go to the Shards of Myzrael, summon her and defeat her.
  get Summoning the Princess |q 656 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  accept To Ironforge for Yagyin's Digest##727 |goto Badlands 51.39,76.87
step
  turnin Summoning the Princess##656 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  talk Gerrig Bonegrip##2786
  turnin To Ironforge for Yagyin's Digest##727 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  talk Sigrun Ironhew##2860
  turnin Scrounging##733 |goto Badlands 53.8,43.3
step
  talk Garek##2888
  turnin Tremors of the Earth##732 |goto Badlands 61.94,54.26
step
  talk Garek##2888
  accept Tremors of the Earth##717 |goto Badlands 61.94,54.26
step
  note Use the Sign of the Earth to activate the Pillars of Amethyst, Opal, and Diamond and obtain the Runestones.
  get Tremors of the Earth |q 717 |goto Badlands 61.94,54.26
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  turnin Gyro... What?##714 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
step
  note Bring 5 Bracers of Rock Binding to Lotwil Veriatus in the Badlands.
  kill Greater Rock Elemental##2736 |q 712 |goto Badlands 6.57,82.27
step
  talk Lucien Tosselwrench##2920
  accept Liquid Stone##715 |goto Badlands 25.82,44.24
step
  note Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.
  kill Flesh Eater##3 |q 715 |goto Duskwood 23.81,38.2
step
  talk Garek##2888
  turnin Tremors of the Earth##717 |goto Badlands 61.94,54.26
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
step
  talk Lucien Tosselwrench##2920
  turnin Liquid Stone##715 |goto Badlands 25.82,44.24
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
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 26.66,73.51
]])
