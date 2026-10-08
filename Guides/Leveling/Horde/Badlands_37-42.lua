-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Badlands (37-42)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Swamp of Sorrows (38-44)",
	rev = "47d5c49e",
}, [[
step
  talk Rigglefuzz##2817
  accept Power Stones##2418 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  accept Pearl Diving##705 |goto Badlands 42.39,52.93
step
  only completed(1106)
  talk Martek the Exiled##4618
  accept Indurium##1108 |goto Badlands 42.22,52.69
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Coolant Heads Prevail##713 |goto Badlands 25.95,44.87
step
  note Find Frost Oil and bring it to Lotwil Veriatus in Badlands.
  collect Frost Oil##3829 |q 713 |goto Badlands 25.95,44.87
step
  note Find 10 Small Stone Shards and bring them to Lotwil Veriatus in the Badlands.
  collect 10 Small Stone Shard##4626 |q 710 |goto Badlands 18.81,42.99 |tip {dropsfrom}Lesser Rock Elemental
step
  note Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands.
  kill Shadowforge Surveyor##4844 |goto Badlands 48.2,11 |elite
  collect 8 Dentrium Power Stone##8009 |q 2418 |goto Badlands 48.2,11
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  turnin Coolant Heads Prevail##713 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Gyro... What?##714 |goto Badlands 25.95,44.87
step
  note Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.
  buy Gyrochronatom##4389 |q 714 |goto Ironforge 67.84,42.5
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  turnin Gyro... What?##714 |goto Badlands 25.95,44.87
step
  talk Lucien Tosselwrench##2920
  accept Liquid Stone##715 |goto Badlands 25.82,44.24
step
  note {fp}Gorrik
  goto Badlands 3.99,44.78 |tip {vendor}
step
  talk Jarkal Mossmeld##6868
  accept Badlands Reagent Run##2258 |goto Badlands 2.42,46.06
step
  note Bring 3 Large Stone Slabs to Lotwil Veriatus in the Badlands.
  collect 3 Large Stone Slab##4627 |q 711 |goto Badlands 40.51,78.29 |tip {dropsfrom}Rock Elemental
step
  only completed(1106)
  note Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
  collect 10 Indurium Flake##5797 |q 1108 |goto Badlands 49.89,68.38 |tip {dropsfrom}Stonevault Basher, Stonevault Shaman, Stonevault Bonesnapper
step
  only completed(1106)
  talk Martek the Exiled##4618
  turnin Indurium##1108 |goto Badlands 42.22,52.69
step
  talk Rigglefuzz##2817
  turnin Power Stones##2418 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  accept Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
  note Bring 5 Buzzard Gizzards, 10 Crag Coyote Fangs, and 5 Rock Elemental Shards to Jarkal Mossmeld in Kargath, Badlands.
  collect 5 Buzzard Gizzard##7847 |q 2258 |goto Badlands 57.46,28.59 |tip {dropsfrom}Starving Buzzard, Buzzard, Giant Buzzard
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
  talk Jarkal Mossmeld##6868
  turnin Badlands Reagent Run##2258 |goto Badlands 2.42,46.06
step
  talk Neeka Bloodscar##5394
  accept Coyote Thieves##1419 |goto Badlands 6.49,47.2
step
  talk Neeka Bloodscar##5394
  accept Report to Helgrum##1420 |goto Badlands 6.49,47.2
step
  talk Theldurin the Lost##2785
  accept Solution to Doom##709 |goto Badlands 51.39,76.87
step
  note Bring 30 Coyote Jawbones to Neeka Bloodscar in Kargath.
  collect 30 Coyote Jawbone##6166 |q 1419 |goto Badlands 49.87,41.92 |tip {dropsfrom}Crag Coyote, Feral Crag Coyote, Elder Crag Coyote
step
  note Bring the Tablet of Ryun'eh to Theldurin the Lost.
  collect Tablet of Ryun'eh##4631 |q 709 |goto Badlands 39.34,18.82 |tip {dropsfrom}Ancient Chest
step
  talk Neeka Bloodscar##5394
  turnin Coyote Thieves##1419 |goto Badlands 6.49,47.2
step
  talk Theldurin the Lost##2785
  turnin Solution to Doom##709 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  accept To the Undercity for Yagyin's Digest##728 |goto Badlands 51.39,76.87
step
  only completed(687)
  talk Theldurin the Lost##2785
  accept The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  only completed(687)
  note Bring the Torn Scroll Fragment, the Crumpled Scroll Fragment and the Singed Scroll Fragment to Theldurin the Lost.
  collect Torn Scroll Fragment##4518 |q 692 |goto Badlands 53.87,83.91 |tip {dropsfrom}Enraged Rock Elemental
step
  only completed(687)
  talk Theldurin the Lost##2785
  turnin The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
step
  talk Jarkal Mossmeld##6868
  accept Uldaman Reagent Run##2202 |goto Badlands 2.42,46.06
step
  only completed(2318)
  talk Jarkal Mossmeld##6868
  accept Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  note Bring 5 Bracers of Rock Binding to Lotwil Veriatus in the Badlands.
  collect 5 Bracers of Rock Binding##4628 |q 712 |goto Badlands 5.48,82.27 |tip {dropsfrom}Greater Rock Elemental
step
  only completed(2318)
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
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
  note Bring 12 Magenta Fungus Caps to Jarkal Mossmeld in Kargath.
  collect 12 Magenta Fungus Cap##8047 |q 2202 |goto Badlands 37.57,15.26 |tip {dropsfrom}Magenta Cap Clusters
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
  talk Jarkal Mossmeld##6868
  turnin Uldaman Reagent Run##2202 |goto Badlands 2.42,46.06
step
  talk Gorn##1068
  accept Broken Alliances##782 |goto Badlands 2.91,45.6
step
  note Kill Boss Tho'grun and bring the Sign of the Earth to Gorn in Kargath.
  collect Sign of the Earth##4640 |q 782 |goto Badlands 12.62,75.49 |tip {dropsfrom}Boss Tho'grun
step
  talk Gorn##1068
  turnin Broken Alliances##782 |goto Badlands 2.91,45.6
step
  talk Lotwil Veriatus##2921
  accept This Is Going to Be Hard##778 |goto Badlands 25.95,44.87
step
  note Defeat the Fam'retor Guardian and bring Lotwil's Shackles of Elemental Binding back to Lotwil Veriatus.
  collect Lotwil's Shackles of Elemental Binding##4847 |q 778 |goto Badlands 26.01,45.78 |tip {dropsfrom}Fam'retor Guardian
step
  talk Lotwil Veriatus##2921
  turnin This Is Going to Be Hard##778 |goto Badlands 25.95,44.87
step
  talk Helgrum the Swift##1442
  turnin Report to Helgrum##1420 |goto Swamp of Sorrows 47.74,55.2 |tip {turninat}Swamp of Sorrows
step
  talk Patrick Garrett##5651
  accept Reclaimed Treasures##2342 |goto Undercity 62.32,48.61
step
  note Bring 9 Blue Pearls to Rigglefuzz in the Badlands.
  collect 9 Blue Pearl##4611 |q 705 |goto Stranglethorn Vale 26.3,26.1 |tip {dropsfrom}Giant Clam
step
  note Bring 4 Buzzard Wings to Rigglefuzz.
  collect 4 Buzzard Wing##3404 |q 703 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Young Mesa Buzzard, Mesa Buzzard
step
  note Get Patrick Garrett's family treasure from their family chest in the South Common Hall of Uldaman, and bring it to him in the Undercity.
  collect Garrett Family Treasure##8026 |q 2342 |goto Badlands 34.19,18.63 |tip {dropsfrom}Garrett Family Chest
step
  talk Rigglefuzz##2817
  turnin Pearl Diving##705 |goto Badlands 42.39,52.93
step
  talk Rigglefuzz##2817
  turnin Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
  talk Patrick Garrett##5651
  turnin Reclaimed Treasures##2342 |goto Undercity 62.32,48.61 |tip {turninat}Undercity
step
  talk Keeper Bel'dugur##2934
  turnin To the Undercity for Yagyin's Digest##728 |goto Undercity 53.74,54.46 |tip {turninat}Undercity
step
  note Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.
  collect Healing Potion##929 |q 715 |goto Duskwood 23.81,39.21 |tip {dropsfrom}Flesh Eater, Skeletal Warrior, Skeletal Horror
step
  talk Lucien Tosselwrench##2920
  turnin Liquid Stone##715 |goto Badlands 25.82,44.24
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 25.98,31.4
]])
