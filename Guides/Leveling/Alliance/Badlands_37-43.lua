-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Badlands (37-43)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stranglethorn Vale (43-51)",
	rev = "37775595",
}, [[
step
  ding 36
step
  talk Prospector Ryedol##2910
  accept A Dwarf and His Tools##719 |goto Badlands 53.42,43.39
step
  talk Sigrun Ironhew##2860
  accept Mirages##718 |goto Badlands 53.8,43.3
step
  click Crumpled Map##2868
  accept A Sign of Hope##720 |goto Badlands 53.03,33.94
step
  note Find Ryedol's Lucky Pick and return it to Prospector Ryedol south of Hammertoe's Dig Site.
  collect Ryedol's Lucky Pick##4616 |q 719 |goto Badlands 53.33,32.7 |tip {dropsfrom}Shadowforge Tunneler, Shadowforge Darkweaver, Shadowforge Chanter
step
  note Retrieve the Supply Crate for Sigrun Ironhew.
  collect Supply Crate##4629 |q 718 |goto Badlands 66.6,22 |tip {dropsfrom}Excavation Supply Crate
step
  talk Sigrun Ironhew##2860
  turnin Mirages##718 |goto Badlands 53.8,43.3
step
  talk Prospector Ryedol##2910
  turnin A Dwarf and His Tools##719 |goto Badlands 53.42,43.39
step
  note Find Prospector Ryedol and let him know Hammertoe Grez is alive.
  talk Prospector Ryedol##2910
  turnin A Sign of Hope##720 |goto Badlands 53.42,43.39
step
  talk Prospector Ryedol##2910
  accept A Sign of Hope##721 |goto Badlands 53.42,43.39
step
  only level>=36
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
  only completed(713)
  talk Lotwil Veriatus##2921
  accept Gyro... What?##714 |goto Badlands 25.95,44.87
step
  only completed(713)
  note Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.
  talk Gearcutter Cogspinner##5175
  buy Gyrochronatom##4389 |q 714 |goto Ironforge 67.84,42.5
step
  only completed(713)
  talk Lotwil Veriatus##2921
  turnin Gyro... What?##714 |goto Badlands 25.95,44.87
step
  note Find 10 Small Stone Shards and bring them to Lotwil Veriatus in the Badlands.
  collect 10 Small Stone Shard##4626 |q 710 |goto Badlands 18.81,42.99 |tip {dropsfrom}Lesser Rock Elemental
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
  only haveq(738)
  note Find Agmond.
  turnin Find Agmond##738 |goto Badlands 50.89,62.4
step
  only completed(1106)
  note Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
  collect 10 Indurium Flake##5797 |q 1108 |goto Badlands 51.35,69.72 |tip {dropsfrom}Stonevault Bonesnapper, Stonevault Basher, Stonevault Seer
step
  note Bring 3 Large Stone Slabs to Lotwil Veriatus in the Badlands.
  collect 3 Large Stone Slab##4627 |q 711 |goto Badlands 40.51,78.29 |tip {dropsfrom}Rock Elemental
step
  only completed(1106)
  talk Martek the Exiled##4618
  turnin Indurium##1108 |goto Badlands 42.22,52.69
step
  talk Rigglefuzz##2817
  accept Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
  talk Sigrun Ironhew##2860
  accept Scrounging##733 |goto Badlands 53.8,43.3
step
  note Get 7 pieces of Scrap Metal for Sigrun.
  collect Scrap Metal##4630 |q 733 |goto Badlands 62.52,68.44 |tip {dropsfrom}Dustbelcher Ogre, Dustbelcher Brute, Dustbelcher Wyrmhunter
step
  talk Theldurin the Lost##2785
  accept Solution to Doom##709 |goto Badlands 51.39,76.87
step
  talk Sigrun Ironhew##2860
  turnin Scrounging##733 |goto Badlands 53.8,43.3
step
  note Bring 4 Buzzard Wings to Rigglefuzz.
  collect 4 Buzzard Wing##3404 |q 703 |goto Badlands 57.46,28.59 |tip {dropsfrom}Starving Buzzard, Buzzard, Giant Buzzard
step
  only haveq(2418)
  note Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands.
  kill Shadowforge Surveyor##4844 |q 2418 |goto Badlands 48.2,11 |elite
  collect 8 Dentrium Power Stone##8009 |q 2418 |goto Badlands 48.2,11
step
  note Find Hammertoe Grez in Uldaman.
  talk Hammertoe Grez##2909
  turnin A Sign of Hope##721 |goto Badlands 37.9,10.59
step
  only level>=40
  talk Hammertoe Grez##2909
  accept Amulet of Secrets##722 |goto Badlands 37.9,10.59
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
  talk Rigglefuzz##2817
  turnin Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
  only haveq(2418)
  talk Rigglefuzz##2817
  turnin Power Stones##2418 |goto Badlands 42.39,52.93
step
  note Bring the Tablet of Ryun'eh to Theldurin the Lost.
  collect Tablet of Ryun'eh##4631 |q 709 |goto Badlands 39.34,18.82 |tip {dropsfrom}Ancient Chest
step
  only haveq(722)
  note Find Hammertoe's Amulet and return it to him in Uldaman.
  kill Magregan Deepshadow##2932 |q 722 |goto Badlands 38.99,19.73 |elite
  collect Hammertoe's Amulet##4635 |q 722 |goto Badlands 38.99,19.73
step
  only haveq(722)
  talk Hammertoe Grez##2909
  turnin Amulet of Secrets##722 |goto Badlands 37.9,10.59
step
  only completed(722)
  talk Hammertoe Grez##2909
  accept Prospect of Faith##723 |goto Badlands 37.9,10.59
step
  only level>=37
  kill Shadowforge Surveyor##4844 |goto Badlands 48.2,11 |tip Loot the quest item here — it starts the quest.
  accept The Shattered Necklace##2198 |goto Badlands 48.2,11
step
  only haveq(723)
  note Take Hammertoe's Amulet to Prospector Ryedol in the Badlands.
  talk Prospector Ryedol##2910
  turnin Prospect of Faith##723 |goto Badlands 53.42,43.39
step
  only completed(723)
  talk Prospector Ryedol##2910
  accept Prospect of Faith##724 |goto Badlands 53.42,43.39
step
  talk Theldurin the Lost##2785
  turnin Solution to Doom##709 |goto Badlands 51.39,76.87
step
  talk Theldurin the Lost##2785
  accept To Ironforge for Yagyin's Digest##727 |goto Badlands 51.39,76.87
step
  only completed(738)
  click Battered Dwarven Skeleton##2875
  accept Murdaloc##739 |goto Badlands 50.89,62.4
step
  only completed(738)
  note Slay Agmond's killer, Murdaloc.
  kill Murdaloc##2945 |q 739/1 |goto Badlands 49.63,66.31
  kill Stonevault Bonesnapper##2893 |q 739 |goto Badlands 51.35,69.72
step
  talk Lotwil Veriatus##2921
  accept Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
step
  note Bring 5 Bracers of Rock Binding to Lotwil Veriatus in the Badlands.
  collect 5 Bracers of Rock Binding##4628 |q 712 |goto Badlands 5.48,82.27 |tip {dropsfrom}Greater Rock Elemental
step
  talk Lotwil Veriatus##2921
  turnin Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
step
  only completed(713)
  talk Lotwil Veriatus##2921
  accept This Is Going to Be Hard##734 |goto Badlands 25.95,44.87
step
  only completed(713)
  note Speak to Lucien Tosselwrench in the Badlands.
  talk Lucien Tosselwrench##2920
  turnin This Is Going to Be Hard##734 |goto Badlands 25.82,44.24
step
  only completed(713)
  talk Lucien Tosselwrench##2920
  accept This Is Going to Be Hard##777 |goto Badlands 25.82,44.24
step
  only completed(713)
  note Bring Cog #5 to Lotwil Veriatus.
  talk Lotwil Veriatus##2921
  turnin This Is Going to Be Hard##777 |goto Badlands 25.95,44.87
step
  only level>=40
  talk Garek##2888
  accept Tremors of the Earth##732 |goto Badlands 61.94,54.26
step
  only haveq(732)
  note Retrieve the Sign of the Earth for Garek.
  collect Sign of the Earth##4640 |q 732 |goto Badlands 12.62,75.49 |tip {dropsfrom}Boss Tho'grun
step
  only haveq(732)
  talk Garek##2888
  turnin Tremors of the Earth##732 |goto Badlands 61.94,54.26
step
  only level>=40
  talk Sigrun Ironhew##2860
  accept Fiery Blaze Enchantments##706 |goto Badlands 53.8,43.3
step
  only haveq(706)
  note Acquire a Black Drake's Heart for Sigrun Ironhew.
  collect Black Drake's Heart##4612 |q 706 |goto Badlands 80.66,37.38 |tip {dropsfrom}Scalding Whelp, Scorched Guardian
step
  only haveq(706)
  talk Sigrun Ironhew##2860
  turnin Fiery Blaze Enchantments##706 |goto Badlands 53.8,43.3
step
  only completed(713)
  talk Lotwil Veriatus##2921
  accept This Is Going to Be Hard##778 |goto Badlands 25.95,44.87
step
  only completed(713)
  note Defeat the Fam'retor Guardian and bring Lotwil's Shackles of Elemental Binding back to Lotwil Veriatus.
  collect Lotwil's Shackles of Elemental Binding##4847 |q 778 |goto Badlands 26.01,45.78 |tip {dropsfrom}Fam'retor Guardian
step
  only completed(713)
  talk Lotwil Veriatus##2921
  turnin This Is Going to Be Hard##778 |goto Badlands 25.95,44.87
step
  only completed(732) level>=50
  talk Garek##2888
  accept Tremors of the Earth##717 |goto Badlands 61.94,54.26
step
  only haveq(717)
  note Use the Sign of the Earth to activate the Pillars of Amethyst, Opal, and Diamond and obtain the Runestones.
  kill Blacklash##2757 |q 717/1 |goto Badlands 81.88,49.46 |elite
  collect Blacklash's Bindings##4615 |q 717/1 |goto Badlands 81.88,49.46
  kill Hematus##2759 |q 717 |goto Badlands 82.03,49.93 |elite
  collect Chains of Hematus##4645 |q 717 |goto Badlands 82.03,49.93
step
  only haveq(717)
  talk Garek##2888
  turnin Tremors of the Earth##717 |goto Badlands 61.94,54.26
step
  note Bring 9 Blue Pearls to Rigglefuzz in the Badlands.
  collect 9 Blue Pearl##4611 |q 705 |goto Stranglethorn Vale 26.3,26.1 |tip {dropsfrom}Giant Clam
step
  talk Rigglefuzz##2817
  turnin Pearl Diving##705 |goto Badlands 42.39,52.93
step
  only haveq(2198)
  note Search for the original creator of the shattered necklace to learn of its potential value.
  talk Talvash del Kissel##6826
  turnin The Shattered Necklace##2198 |goto Ironforge 36.38,3.61 |tip {turninat}Ironforge
step
  note Give the Sigil of the Hammer to Gerrig Bonegrip in the Forlorn Cavern of Ironforge.
  talk Gerrig Bonegrip##2786
  turnin To Ironforge for Yagyin's Digest##727 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  only completed(653,688)
  talk Gerrig Bonegrip##2786
  accept Theldurin the Lost##687 |goto Ironforge 50.83,5.62
step
  only completed(735,736)
  talk Gerrig Bonegrip##2786
  accept Forbidden Knowledge##737 |goto Ironforge 50.83,5.62
step
  talk Krom Stoutarm##6294
  accept Reclaimed Treasures##1360 |goto Ironforge 74.19,9.39
step
  only haveq(724)
  note Take Hammertoe's Amulet to Historian Karnik in Ironforge.
  talk Historian Karnik##2916
  turnin Prospect of Faith##724 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  only completed(724)
  talk Historian Karnik##2916
  accept Passing Word of a Threat##725 |goto Ironforge 77.54,11.82
step
  only haveq(725)
  note Find Advisor Belgrum and give him his note.
  talk Advisor Belgrum##2918
  turnin Passing Word of a Threat##725 |goto Ironforge 77.34,9.71 |tip {turninat}Ironforge
step
  only completed(725)
  talk Advisor Belgrum##2918
  accept Passing Word of a Threat##726 |goto Ironforge 77.34,9.71
step
  only haveq(726)
  note Speak to Historian Karnik.
  talk Historian Karnik##2916
  turnin Passing Word of a Threat##726 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  only completed(726) level>=44
  talk Historian Karnik##2916
  accept An Ambassador of Evil##762 |goto Ironforge 77.54,11.82
step
  only completed(653,688)
  note Find Theldurin the Lost.
  talk Theldurin the Lost##2785
  turnin Theldurin the Lost##687 |goto Badlands 51.39,76.87
step
  only completed(735,736)
  note Bring Yagyin's Digest to Theldurin.
  talk Theldurin the Lost##2785
  turnin Forbidden Knowledge##737 |goto Badlands 51.39,76.87
step
  only completed(653,688)
  talk Theldurin the Lost##2785
  accept The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  only completed(653,688)
  note Bring the Torn Scroll Fragment, the Crumpled Scroll Fragment and the Singed Scroll Fragment to Theldurin the Lost.
  collect Torn Scroll Fragment##4518 |q 692 |goto Badlands 53.87,83.91 |tip {dropsfrom}Enraged Rock Elemental
step
  only completed(653,688)
  talk Theldurin the Lost##2785
  turnin The Lost Fragments##692 |goto Badlands 51.39,76.87
step
  only completed(653,688)
  talk Theldurin the Lost##2785
  accept Summoning the Princess##656 |goto Badlands 51.39,76.87
step
  only haveq(762)
  note Kill Ambassador Infernus in Angor Fortress and bring proof of his death to Advisor Belgrum in Ironforge.
  kill Ambassador Infernus##2745 |q 762 |goto Badlands 42.1,28.88 |elite
  collect Ambassador Infernus' Bracer##4621 |q 762 |goto Badlands 42.1,28.88
step
  note Get Krom Stoutarm's treasured possession from his chest in the North Common Hall of Uldaman, and bring it to him in Ironforge.
  collect Krom Stoutarm's Treasure##8027 |q 1360 |goto Badlands 35.56,23.51 |tip {dropsfrom}Krom Stoutarm's Chest
step
  only level>=37
  talk Mazen Mac'Nadir##338
  accept Mazen's Behest##1363 |goto Stormwind City 51.8,74.24
step
  only haveq(1363)
  note Speak with Acolyte Dellis in Stormwind.
  talk Acolyte Dellis##5386
  turnin Mazen's Behest##1363 |goto Stormwind City 51.4,73.81 |tip {turninat}Stormwind City
step
  only completed(1363) level>=37
  talk Acolyte Dellis##5386
  accept Mazen's Behest##1364 |goto Stormwind City 51.4,73.81
step
  only not NightElf not Gnome not Skyborne Paladin not completed(4485) not completed(4486) not haveq(4485) not haveq(4486) level>=40
  talk Duthorian Rall##6171
  accept The Tome of Nobility##1661 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin not completed(4485) not completed(4486) not haveq(4485) not haveq(4486) haveq(1661)
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Nobility##1661 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only haveq(1425)
  note Bring the Shipment to Nethergarde to Quartermaster Lungertz in Nethergarde Keep.
  talk Quartermaster Lungertz##5393
  turnin Deliver the Shipment##1425 |goto Blasted Lands 66.52,21.39 |tip {turninat}Blasted Lands
step
  talk Krom Stoutarm##6294
  turnin Reclaimed Treasures##1360 |goto Ironforge 74.19,9.39 |tip {turninat}Ironforge
step
  only haveq(762)
  talk Advisor Belgrum##2918
  turnin An Ambassador of Evil##762 |goto Ironforge 77.34,9.71 |tip {turninat}Ironforge
step
  only haveq(1364)
  note Retrieve Khadgar's Essays on Dimensional Convergence and deliver them to Watcher Mahar Ba in Nethergarde Keep.
  collect Khadgar's Essays on Dimensional Convergence##6065 |q 1364 |goto Swamp of Sorrows 15.81,36.55 |tip {dropsfrom}Swampwalker, Swampwalker Elder, Tangled Horror
step
  only haveq(1364)
  talk Watcher Mahar Ba##5385
  turnin Mazen's Behest##1364 |goto Blasted Lands 67.65,19.17 |tip {turninat}Blasted Lands
step
  only completed(738)
  talk Prospector Ironband##1344
  turnin Murdaloc##739 |goto Loch Modan 65.93,65.62 |tip {turninat}Loch Modan
step
  only completed(738)
  talk Prospector Ironband##1344
  accept Agmond's Fate##704 |goto Loch Modan 65.93,65.62
step
  only completed(738)
  note Bring 4 Carved Stone Urns to Prospector Ironband in Loch Modan.
  collect 4 Carved Stone Urn##4610 |q 704 |goto Badlands 35.52,16.36
step
  only completed(738)
  talk Prospector Ironband##1344
  turnin Agmond's Fate##704 |goto Loch Modan 65.93,65.62 |tip {turninat}Loch Modan
step
  only completed(653,688)
  note Go to the Shards of Myzrael, summon her and defeat her.
  collect Eldritch Shackles##4473 |q 656 |goto Arathi Highlands 62.62,34.06 |tip {dropsfrom}Myzrael
step
  only completed(653,688)
  turnin Summoning the Princess##656 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 26.76,76.38
]])
