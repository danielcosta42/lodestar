-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Feralas (43-48)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Tanaris (44-50)",
}, [[
step
  talk Shandris Feathermoon##3936
  accept The Ruins of Solarsal##2866 |goto Feralas 30.28,46.17
step
  talk Latronicus Moonspear##7877
  accept The Missing Courier##4124 |goto Feralas 30.38,46.17
step
  talk Angelas Moonbreeze##7900
  accept The High Wilderness##2982 |goto Feralas 31.83,45.61
step
  turnin The Ruins of Solarsal##2866 |goto Feralas 26.31,52.34
step
  talk Ginro Hearthkindle##7880
  turnin The Missing Courier##4124 |goto Feralas 31.86,45.13
step
  click Solarsal Gazebo##142179
  accept Return to Feathermoon Stronghold##2867 |goto Feralas 26.31,52.34
step
  talk Ginro Hearthkindle##7880
  accept The Missing Courier##4125 |goto Feralas 31.86,45.13
step
  talk Shandris Feathermoon##3936
  turnin Return to Feathermoon Stronghold##2867 |goto Feralas 30.28,46.17
step
  talk Shandris Feathermoon##3936
  accept Against the Hatecrest##3130 |goto Feralas 30.28,46.17
step
  talk Latronicus Moonspear##7877
  turnin Against the Hatecrest##3130 |goto Feralas 30.38,46.17
step
  talk Latronicus Moonspear##7877
  accept Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
  note Bring 10 Hatecrest Naga Scales to Latronicus Moonspear in Feathermoon Stronghold.
  collect 10 Hatecrest Naga Scale##9247 |q 2869 |goto Feralas 29.57,53.56 |tip {dropsfrom}Hatecrest Warrior, Hatecrest Wave Rider, Hatecrest Serpent Guard
step
  talk Latronicus Moonspear##7877
  turnin Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
  talk Latronicus Moonspear##7877
  accept Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
  note Eliminate Lord Shalzaru, and then bring the Mysterious Relic he uncovered to Latronicus Moonspear in Feathermoon Stronghold.
  collect Mysterious Relic##9248 |q 2870 |goto Feralas 28.5,70.46 |tip {dropsfrom}Lord Shalzaru
step
  talk Latronicus Moonspear##7877
  turnin Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
  talk Latronicus Moonspear##7877
  accept Delivering the Relic##2871 |goto Feralas 30.38,46.17
step
  talk Pratt McGrubben##7852
  accept The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
  talk Vestia Moonspear##7878
  turnin Delivering the Relic##2871 |goto Feralas 30.08,45.06
step
  turnin The Missing Courier##4125 |goto Feralas 45.44,64.96
step
  click Wrecked Row Boat##164909
  accept Boat Wreckage##4127 |goto Feralas 45.44,64.96
step
  note Bring 10 Thick Yeti Hides to Pratt McGrubben in Feathermoon Stronghold.
  collect 10 Thick Yeti Hide##8973 |q 2821 |goto Feralas 55.55,56.47 |tip {dropsfrom}Feral Scar Yeti, Hulking Feral Scar, Enraged Feral Scar
step
  note Angelas Moonbreeze wants you to kill 8 Gordunni Warlocks, 8 Gordunni Shaman, and 8 Gordunni Brutes.
  kill Gordunni Warlock##5240 |q 2982 |goto Feralas 59.55,64.55
step
  kill Gordunni Ogre##5229 |goto Feralas 75.21,29.62 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-22/FE!##2766 |goto Feralas 75.21,29.62
step
  talk Pratt McGrubben##7852
  turnin The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
  talk Angelas Moonbreeze##7900
  turnin The High Wilderness##2982 |goto Feralas 31.83,45.61
step
  talk Ginro Hearthkindle##7880
  turnin Boat Wreckage##4127 |goto Feralas 31.86,45.13
step
  talk Ginro Hearthkindle##7880
  accept The Knife Revealed##4129 |goto Feralas 31.86,45.13
step
  talk Troyas Moonbreeze##7764
  accept In Search of Knowledge##2939 |goto Feralas 31.78,45.5
step
  talk Quintis Jonespyre##7879
  turnin The Knife Revealed##4129 |goto Feralas 32.45,43.79
step
  talk Quintis Jonespyre##7879
  accept Psychometric Reading##4130 |goto Feralas 32.45,43.79
step
  talk Ginro Hearthkindle##7880
  turnin Psychometric Reading##4130 |goto Feralas 31.86,45.13
step
  talk Ginro Hearthkindle##7880
  accept The Woodpaw Gnolls##4131 |goto Feralas 31.86,45.13
step
  talk Homing Robot OOX-22/FE##7807
  turnin Find OOX-22/FE!##2766 |goto Feralas 53.35,55.7
step
  turnin The Woodpaw Gnolls##4131 |goto Feralas 73.32,56.31
step
  collect Large Leather Backpacks##164953 |goto Feralas 73.32,56.31 |tip Loot the quest item here — it starts the quest.
  accept Thalanaar Delivery##4281 |goto Feralas 73.32,56.31
step
  click Large Leather Backpacks##164953
  accept The Writhing Deep##4135 |goto Feralas 73.32,56.31
step
  talk Kindal Moonweaver##7956
  accept Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
  talk Kindal Moonweaver##7956
  turnin Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
  turnin The Writhing Deep##4135 |goto Feralas 72.07,63.72
step
  click Zukk'ash Pod##164954
  accept Freed from the Hive##4265 |goto Feralas 72.07,63.72
step
  talk Jer'kai Moonweaver##7957
  accept Doling Justice##2970 |goto Feralas 65.95,45.61
step
  note Kill 12 Grimtotem Naturalists, 10 Grimtotem Raiders, and 6 Grimtotem Shamans before returning to Jer'kai Moonweaver in Feralas.
  kill Grimtotem Naturalist##7726 |q 2970 |goto Feralas 68.74,39.25
step
  talk Jer'kai Moonweaver##7957
  turnin Doling Justice##2970 |goto Feralas 65.95,45.61
step
  talk Jer'kai Moonweaver##7957
  accept Doling Justice##2972 |goto Feralas 65.95,45.61
step
  note {fp}Thyssiana
  goto Feralas 89.5,45.85 |tip {vendor}
step
  talk Falfindel Waywarder##4048
  turnin Thalanaar Delivery##4281 |goto Feralas 89.64,46.57
step
  talk Ginro Hearthkindle##7880
  turnin Freed from the Hive##4265 |goto Feralas 31.86,45.13
step
  talk Ginro Hearthkindle##7880
  accept A Hero's Welcome##4266 |goto Feralas 31.86,45.13
step
  talk Pratt McGrubben##7852
  accept Improved Quality##7733 |goto Feralas 30.63,42.71
step
  talk Shandris Feathermoon##3936
  turnin A Hero's Welcome##4266 |goto Feralas 30.28,46.17
step
  talk Shandris Feathermoon##3936
  accept Rise of the Silithid##4267 |goto Feralas 30.28,46.17
step
  talk Zorbin Fandazzle##14637
  accept Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  talk Zorbin Fandazzle##14637
  accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  note Collect 10 Water Elemental Cores from the Sea Elementals and Sea Sprays along the Forgotten Coast of Feralas, and bring them back to Zorbin Fandazzle who is near the dock there.
  collect 10 Water Elemental Core##18958 |q 7721 |goto Feralas 44.21,49.69 |tip {dropsfrom}Sea Elemental, Sea Spray
step
  note Bring 10 Rage Scar Yeti Hides to Pratt McGrubben at Feathermoon Stronghold, Feralas.
  collect 10 Rage Scar Yeti Hide##18947 |q 7733 |goto Feralas 53.28,31.85 |tip {dropsfrom}Rage Scar Yeti, Elder Rage Scar, Ferocious Rage Scar
step
  talk Zorbin Fandazzle##14637
  turnin Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  talk Rockbiter##7765
  accept The Giant Guardian##2844 |goto Feralas 42.39,22
step
  note Use Zorbin's Ultra-Shrinker to zap any kind of giant found in Feralas into a more manageable form. Bring 15 Miniaturization Residues found on the zapped versions of these giants to Zorbin Fandazzle at the docks of the Forgotten Coast, Feralas.
  kill Land Walker##5357 |goto Feralas 39.16,23.89 |elite
  collect 15 Miniaturization Residue##18956 |q 7003 |goto Feralas 39.16,23.89
step
  talk Shay Leafrunner##7774
  turnin The Giant Guardian##2844 |goto Feralas 38.22,10.3
step
  talk Shay Leafrunner##7774
  accept Wandering Shay##2845 |goto Feralas 38.22,10.3
step
  note Pick up Shay's Bell from the chest.
  collect Shay's Bell##9189 |q 2845 |goto Feralas 38.25,10.29 |tip {dropsfrom}Shay's Chest
step
  talk Pratt McGrubben##7852
  turnin Improved Quality##7733 |goto Feralas 30.63,42.71
step
  talk Zorbin Fandazzle##14637
  turnin Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  talk Rockbiter##7765
  turnin Wandering Shay##2845 |goto Feralas 42.39,22
step
  talk Daryn Lightwind##7907
  turnin In Search of Knowledge##2939 |goto Teldrassil 55.41,92.23 |tip {turninat}Teldrassil
step
  talk Angelas Moonbreeze##7900
  accept The Sunken Temple##3445 |goto Feralas 31.83,45.61
step
  talk Marvon Rivetseeker##7771
  turnin The Sunken Temple##3445 |goto Tanaris 52.71,45.92 |tip {turninat}Tanaris
step
  talk Tyrande Whisperwind##7999
  turnin Doling Justice##2972 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  talk Kindal Moonweaver##7956
  accept An Orphan Looking For a Home##3841 |goto Feralas 65.94,45.65
step
  talk Quentin##9238
  turnin An Orphan Looking For a Home##3841 |goto Thousand Needles 78.35,74.72 |tip {turninat}Thousand Needles
step
  talk Quentin##9238
  accept A Short Incubation##3842 |goto Thousand Needles 78.35,74.72
step
  note Bring 2 Elixir of Fortitudes to Quentin in Thousand Needles.
  collect 2 Elixir of Fortitude##3825 |q 3842 |goto Thousand Needles 78.35,74.72
step
  talk Quentin##9238
  turnin A Short Incubation##3842 |goto Thousand Needles 78.35,74.72 |tip {turninat}Thousand Needles
step
  talk Gracina Spiritmight##7740
  turnin Rise of the Silithid##4267 |goto Darnassus 41.83,85.62 |tip {turninat}Darnassus
step
  note {travel}Tanaris
  goto Tanaris 50.96,27.24
]])
