-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Badlands (37-43)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stranglethorn Vale (37-60)",
}, [[
step
  talk Count Remington Ridgewell##2285
  accept The Perenolde Tiara##543 |goto Stormwind City 74.01,30.24
step
  note Bring the Perenolde Tiara to Remington Ridgewell in Stormwind.
  collect The Perenolde Tiara##3684 |q 543 |goto Stormwind City 74.01,30.24
step
  talk Sigrun Ironhew##2860
  accept Fiery Blaze Enchantments##706 |goto Badlands 53.8,43.3
step
  note Acquire a Black Drake's Heart for Sigrun Ironhew.
  collect Black Drake's Heart##4612 |q 706 |goto Badlands 81.39,37.38 |tip {dropsfrom}Scalding Whelp, Scorched Guardian
step
  talk Sigrun Ironhew##2860
  accept Mirages##718 |goto Badlands 53.8,43.3
step
  note Retrieve the Supply Crate for Sigrun Ironhew.
  collect Supply Crate##4629 |q 718 |goto Badlands 66.92,23.45 |tip {dropsfrom}Excavation Supply Crate
step
  talk Prospector Ryedol##2910
  accept A Dwarf and His Tools##719 |goto Badlands 53.42,43.39
step
  note Find Ryedol's Lucky Pick and return it to Prospector Ryedol south of Hammertoe's Dig Site.
  collect Ryedol's Lucky Pick##4616 |q 719 |goto Badlands 53.43,32.7 |tip {dropsfrom}Shadowforge Tunneler, Shadowforge Darkweaver, Shadowforge Chanter
step
  click Crumpled Map##2868
  accept A Sign of Hope##720 |goto Badlands 53.03,33.94
step
  talk Prospector Ryedol##2910
  accept Prospect of Faith##724 |goto Badlands 53.42,43.39
step
  talk Gerrig Bonegrip##2786
  accept Forbidden Knowledge##737 |goto Ironforge 50.83,5.62
step
  only Mage
  talk Anastasia Hartwell##4568
  accept Return to the Marsh##1953 |goto Undercity 85.14,10.03
step
  talk Prospector Stormpike##1356
  accept The Lost Dwarves##2398 |goto Ironforge 74.64,11.74
step
  talk Hank the Hammer##7798
  accept The Origins of Smithing##2758 |goto Stormwind City 55.8,15.99
step
  note Bring six Golden Scale Bracers to Hank the Hammer in Stormwind.
  collect Golden Scale Bracers##6040 |q 2758 |goto Stormwind City 55.8,15.99
step
  talk Grumnus Steelshaper##5164
  accept The Art of the Armorsmith##5283 |goto Ironforge 49.96,42.81
step
  note To become an Armorsmith, you must make the following items and return them to Grumnus: 4 Ornate Mithril Helms, 2 Ornate Mithril Boots, 1 Ornate Mithril Breastplate.
  collect The Art of the Armorsmith##7937 |q 5283 |goto Ironforge 49.96,42.81
step
  talk Ironus Coldsteel##11146
  accept The Way of the Weaponsmith##5284 |goto Ironforge 50.33,43.56
step
  note To become a Weaponsmith, you must make the following items and return them to Ironus: 4 Moonsteel Broadswords, 4 Massive Iron Axes, 2 Heavy Mithril Axes, and 2 Big Black Maces.
  collect Moonsteel Broadsword##3853 |q 5284 |goto Ironforge 50.33,43.56
step
  only Mage
  talk Tabetha##6546
  turnin Return to the Marsh##1953 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
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
  click Battered Dwarven Skeleton##2875
  accept Murdaloc##739 |goto Badlands 50.89,62.4
step
  talk Martek the Exiled##4618
  accept Indurium##1108 |goto Badlands 42.22,52.69
step
  note Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
  collect 10 Indurium Flake##5797 |q 1108 |goto Badlands 64.82,43.51 |tip {dropsfrom}Stonevault Seer, Stonevault Bonesnapper, Stonevault Shaman
step
  talk Mazen Mac'Nadir##338
  accept Mazen's Behest##1363 |goto Stormwind City 41.52,64.36
step
  talk Acolyte Dellis##5386
  accept Mazen's Behest##1364 |goto Stormwind City 41.0,63.81
step
  note Retrieve Khadgar's Essays on Dimensional Convergence and deliver them to Watcher Mahar Ba in Nethergarde Keep.
  collect Mazen's Behest##6065 |q 1364 |goto Stormwind City 41.0,63.81
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
  talk Talvash del Kissel##6826
  accept Lore for a Price##2199 |goto Ironforge 36.38,3.61
step
  note Bring five silver bars to Talvash del Kissel in Ironforge.
  collect Silver Bar##2842 |q 2199 |goto Azuremyst Isle 28.62,68.23 |tip {dropsfrom}Battered Chest, Tattered Chest
step
  only Paladin
  talk Arthur the Faithful##5491
  accept The Tome of Nobility##4485 |goto Stormwind City 38.68,32.83
step
  only Paladin
  talk Brandur Ironhammer##5149
  accept The Tome of Nobility##4486 |goto Ironforge 23.13,6.14
step
  talk Baelog##6906
  turnin The Lost Dwarves##2398 |goto Uldaman - Dungeon -1,-1 |tip {turninat}Uldaman - Dungeon
step
  talk Jarkal Mossmeld##6868
  accept Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Theldurin the Lost##2785
  turnin Forbidden Knowledge##737 |goto Badlands 51.39,76.87
step
  talk Angus Stern##1141
  accept A Meal Served Cold##212 |goto Stormwind City 41.49,89.4
step
  note Kill a Cold Eye Basilisk, get a Chilled Basilisk Haunch, and return it to Angus Stern in the Blue Recluse.
  collect A Meal Served Cold##2476 |q 212 |goto Stormwind City 41.49,89.4
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
  note Slay Agmond's killer, Murdaloc.
  kill Murdaloc##2945 |q 739 |goto Badlands 49.63,66.31
step
  only Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Nobility##4485 |goto Stormwind City 39.81,29.79 |tip {turninat}Stormwind City
step
  only Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Nobility##4486 |goto Stormwind City 39.81,29.79 |tip {turninat}Stormwind City
step
  talk Count Remington Ridgewell##2285
  turnin The Perenolde Tiara##543 |goto Stormwind City 74.01,30.24 |tip {turninat}Stormwind City
step
  talk Grumnus Steelshaper##5164
  turnin The Art of the Armorsmith##5283 |goto Ironforge 49.96,42.81 |tip {turninat}Ironforge
step
  talk Ironus Coldsteel##11146
  turnin The Way of the Weaponsmith##5284 |goto Ironforge 50.33,43.56 |tip {turninat}Ironforge
step
  talk Sigrun Ironhew##2860
  turnin Fiery Blaze Enchantments##706 |goto Badlands 53.8,43.3
step
  talk Hank the Hammer##7798
  turnin The Origins of Smithing##2758 |goto Stormwind City 55.8,15.99 |tip {turninat}Stormwind City
step
  talk Sigrun Ironhew##2860
  turnin Mirages##718 |goto Badlands 53.8,43.3
step
  talk Prospector Ryedol##2910
  turnin A Dwarf and His Tools##719 |goto Badlands 53.42,43.39
step
  talk Prospector Ryedol##2910
  turnin A Sign of Hope##720 |goto Badlands 53.42,43.39
step
  talk Historian Karnik##2916
  turnin Prospect of Faith##724 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  talk Watcher Mahar Ba##5385
  turnin Mazen's Behest##1364 |goto Blasted Lands 67.65,19.17 |tip {turninat}Blasted Lands
step
  talk Prospector Ryedol##2910
  accept A Sign of Hope##721 |goto Badlands 53.42,43.39
step
  talk Historian Karnik##2916
  accept Passing Word of a Threat##725 |goto Ironforge 77.54,11.82
step
  talk Sigrun Ironhew##2860
  accept Scrounging##733 |goto Badlands 53.8,43.3
step
  note Get 7 pieces of Scrap Metal for Sigrun.
  collect Scrap Metal##4630 |q 733 |goto Badlands 61.95,68.44 |tip {dropsfrom}Dustbelcher Ogre, Dustbelcher Brute, Dustbelcher Wyrmhunter
step
  talk Hank the Hammer##7798
  accept In Search of Galvan##2759 |goto Stormwind City 55.8,15.99
step
  talk Prospector Ironband##1344
  turnin Murdaloc##739 |goto Loch Modan 65.93,65.62 |tip {turninat}Loch Modan
step
  talk Garek##2888
  accept Tremors of the Earth##732 |goto Badlands 61.94,54.26
step
  note Retrieve the Sign of the Earth for Garek.
  collect Sign of the Earth##4640 |q 732 |goto Badlands 12.62,75.49 |tip {dropsfrom}Boss Tho'grun
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
  talk Acolyte Dellis##5386
  turnin Mazen's Behest##1363 |goto Stormwind City 41.0,63.81 |tip {turninat}Stormwind City
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
  talk Talvash del Kissel##6826
  turnin Lore for a Price##2199 |goto Ironforge 36.38,3.61 |tip {turninat}Ironforge
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
  talk Talvash del Kissel##6826
  accept Back to Uldaman##2200 |goto Ironforge 36.38,3.61
step
  talk Remains of a Paladin##6912
  turnin Back to Uldaman##2200 |goto Uldaman - Dungeon -1,-1 |tip {turninat}Uldaman - Dungeon
step
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Theldurin the Lost##2785
  turnin The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  turnin Solution to Doom##709 |goto Badlands 51.39,76.87
step
  talk McGavan##7794
  turnin In Search of Galvan##2759 |goto Stranglethorn Vale 28.87,75.42 |tip {turninat}Stranglethorn Vale
step
  talk Hammertoe Grez##2909
  turnin A Sign of Hope##721 |goto Loch Modan 37.28,85.78 |tip {turninat}Loch Modan
step
  talk Angus Stern##1141
  turnin A Meal Served Cold##212 |goto Stormwind City 41.49,89.4 |tip {turninat}Stormwind City
step
  talk Fizzle Brassbolts##4454
  turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13 |tip {turninat}Thousand Needles
step
  talk Theldurin the Lost##2785
  accept Summoning the Princess##656 |goto Badlands 51.39,76.87
step
  note Go to the Shards of Myzrael, summon her and defeat her.
  collect Eldritch Shackles##4473 |q 656 |goto Badlands 51.39,76.87 |tip {dropsfrom}Myzrael
step
  talk Theldurin the Lost##2785
  accept To Ironforge for Yagyin's Digest##727 |goto Badlands 51.39,76.87
step
  turnin Summoning the Princess##656 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  talk Advisor Belgrum##2918
  turnin Passing Word of a Threat##725 |goto Ironforge 77.34,9.71 |tip {turninat}Ironforge
step
  talk Gerrig Bonegrip##2786
  turnin To Ironforge for Yagyin's Digest##727 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  talk Sigrun Ironhew##2860
  turnin Scrounging##733 |goto Badlands 53.8,43.3
step
  talk Advisor Belgrum##2918
  accept Passing Word of a Threat##726 |goto Ironforge 77.34,9.71
step
  talk Garek##2888
  turnin Tremors of the Earth##732 |goto Badlands 61.94,54.26
step
  talk Garek##2888
  accept Tremors of the Earth##717 |goto Badlands 61.94,54.26
step
  note Use the Sign of the Earth to activate the Pillars of Amethyst, Opal, and Diamond and obtain the Runestones.
  collect Blacklash's Bindings##4615 |q 717 |goto Badlands 61.94,54.26 |tip {dropsfrom}Blacklash
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
  collect 5 Bracers of Rock Binding##4628 |q 712 |goto Badlands 6.57,82.27 |tip {dropsfrom}Greater Rock Elemental
step
  talk Lucien Tosselwrench##2920
  accept Liquid Stone##715 |goto Badlands 25.82,44.24
step
  note Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.
  collect Healing Potion##929 |q 715 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Skeletal Warrior, Skeletal Horror
step
  talk Historian Karnik##2916
  turnin Passing Word of a Threat##726 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
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
  collect Patterned Bronze Bracers##2868 |q 716 |goto Badlands 25.82,44.24
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
  collect Lotwil's Shackles of Elemental Binding##4847 |q 778 |goto Badlands 25.95,44.87 |tip {dropsfrom}Fam'retor Guardian
step
  talk Lotwil Veriatus##2921
  turnin This Is Going to Be Hard##778 |goto Badlands 25.95,44.87
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 26.66,73.51
]])
