-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Feralas (43-48)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Tanaris (44-50)",
	rev = "48c913d1",
}, [[
step
  ding 41
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
  note Speak with Ginro Hearthkindle in Feathermoon Stronghold.
  talk Ginro Hearthkindle##7880
  turnin The Missing Courier##4124 |goto Feralas 31.86,45.13
step
  talk Ginro Hearthkindle##7880
  accept The Missing Courier##4125 |goto Feralas 31.86,45.13
step
  note Locate the courier's boat somewhere along the coast of Feralas.
  turnin The Missing Courier##4125 |goto Feralas 45.44,64.96
step
  click Wrecked Row Boat##164909
  accept Boat Wreckage##4127 |goto Feralas 45.44,64.96
step
  note Explore the Ruins of Solarsal and investigate the presence of the naga there.
  turnin The Ruins of Solarsal##2866 |goto Feralas 26.31,52.34
step
  click Solarsal Gazebo##142179
  accept Return to Feathermoon Stronghold##2867 |goto Feralas 26.31,52.34
step
  note Return to Shandris Feathermoon in the Feathermoon Stronghold and report your findings.
  talk Shandris Feathermoon##3936
  turnin Return to Feathermoon Stronghold##2867 |goto Feralas 30.28,46.17
step
  note Return to Feathermoon Stronghold and show Ginro Hearthkindle the Discarded Knife you have found.
  talk Ginro Hearthkindle##7880
  turnin Boat Wreckage##4127 |goto Feralas 31.86,45.13
step
  talk Shandris Feathermoon##3936
  accept Against the Hatecrest##3130 |goto Feralas 30.28,46.17
step
  talk Ginro Hearthkindle##7880
  accept The Knife Revealed##4129 |goto Feralas 31.86,45.13
step
  note Report to Latronicus Moonspear in Feathermoon Stronghold.
  talk Latronicus Moonspear##7877
  turnin Against the Hatecrest##3130 |goto Feralas 30.38,46.17
step
  note Take the Discarded Knife to Quintis Jonespyre in Feathermoon Stronghold.
  talk Quintis Jonespyre##7879
  turnin The Knife Revealed##4129 |goto Feralas 32.45,43.79
step
  talk Latronicus Moonspear##7877
  accept Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
  talk Quintis Jonespyre##7879
  accept Psychometric Reading##4130 |goto Feralas 32.45,43.79
step
  talk Pratt McGrubben##7852
  accept The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
  note Speak with Ginro Hearthkindle in Feathermoon Stronghold.
  talk Ginro Hearthkindle##7880
  turnin Psychometric Reading##4130 |goto Feralas 31.86,45.13
step
  talk Ginro Hearthkindle##7880
  accept The Woodpaw Gnolls##4131 |goto Feralas 31.86,45.13
step
  note Bring 10 Hatecrest Naga Scales to Latronicus Moonspear in Feathermoon Stronghold.
  collect 10 Hatecrest Naga Scale##9247 |q 2869 |goto Feralas 29.57,53.56 |tip {dropsfrom}Hatecrest Warrior, Hatecrest Wave Rider, Hatecrest Myrmidon
step
  note Bring 10 Thick Yeti Hides to Pratt McGrubben in Feathermoon Stronghold.
  collect 10 Thick Yeti Hide##8973 |q 2821 |goto Feralas 55.55,56.47 |tip {dropsfrom}Feral Scar Yeti, Hulking Feral Scar, Enraged Feral Scar
step
  note Angelas Moonbreeze wants you to kill 8 Gordunni Warlocks, 8 Gordunni Shaman, and 8 Gordunni Brutes.
  kill Gordunni Warlock##5240 |q 2982/1 |goto Feralas 59.55,64.55
  kill Gordunni Shaman##5236 |q 2982/2 |goto Feralas 60.98,67.86
  kill Gordunni Brute##5232 |q 2982 |goto Feralas 75.69,34.02
step
  note Search the Woodpaw Gnoll camps of southern Feralas for evidence of the courier's belongings or the courier himself.
  turnin The Woodpaw Gnolls##4131 |goto Feralas 73.32,56.31
step
  collect Large Leather Backpacks##164953 |goto Feralas 73.32,56.31 |tip Loot the quest item here — it starts the quest.
  accept Thalanaar Delivery##4281 |goto Feralas 73.32,56.31
step
  click Large Leather Backpacks##164953
  accept The Writhing Deep##4135 |goto Feralas 73.32,56.31
step
  note Now that Raschal's last known whereabouts have been discovered, continue your search for him or his remains in the Writhing Deep. According to the note, it is located to the south of the Woodpaw gnoll camps.
  turnin The Writhing Deep##4135 |goto Feralas 72.07,63.72
step
  click Zukk'ash Pod##164954
  accept Freed from the Hive##4265 |goto Feralas 72.07,63.72
step
  note Free Raschal from the Zukk'ash hive.
  goto Feralas 72.13,63.84 |tip Free Raschal.
step
  note {fp}Thyssiana
  goto Feralas 89.5,45.85 |tip {vendor}
step
  note Bring the Undelivered Parcel to Falfindel Waywarder in Thalanaar.
  talk Falfindel Waywarder##4048
  turnin Thalanaar Delivery##4281 |goto Feralas 89.64,46.57
step
  kill Gordunni Ogre##5229 |goto Feralas 75.21,29.62 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-22/FE!##2766 |goto Feralas 75.21,29.62
step
  talk Pratt McGrubben##7852
  turnin The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
  talk Latronicus Moonspear##7877
  turnin Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
  talk Angelas Moonbreeze##7900
  turnin The High Wilderness##2982 |goto Feralas 31.83,45.61
step
  talk Ginro Hearthkindle##7880
  turnin Freed from the Hive##4265 |goto Feralas 31.86,45.13
step
  talk Latronicus Moonspear##7877
  accept Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
  talk Ginro Hearthkindle##7880
  accept A Hero's Welcome##4266 |goto Feralas 31.86,45.13
step
  only level>=42
  talk Troyas Moonbreeze##7764
  accept In Search of Knowledge##2939 |goto Feralas 31.78,45.5
step
  note Speak with Shandris Feathermoon in Feathermoon Stronghold.
  talk Shandris Feathermoon##3936
  turnin A Hero's Welcome##4266 |goto Feralas 30.28,46.17
step
  talk Shandris Feathermoon##3936
  accept Rise of the Silithid##4267 |goto Feralas 30.28,46.17
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
  note Deliver the Mysterious Relic to Vestia Moonspear in Feathermoon Stronghold.
  talk Vestia Moonspear##7878
  turnin Delivering the Relic##2871 |goto Feralas 30.08,45.06
step
  talk Pratt McGrubben##7852
  accept Improved Quality##7733 |goto Feralas 30.63,42.71
step
  only level>=45
  talk Zorbin Fandazzle##14637
  accept Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  only level>=45
  talk Zorbin Fandazzle##14637
  accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  only haveq(7003)
  note Use Zorbin's Ultra-Shrinker to zap any kind of giant found in Feralas into a more manageable form. Bring 15 Miniaturization Residues found on the zapped versions of these giants to Zorbin Fandazzle at the docks of the Forgotten Coast, Feralas.
  collect 15 Miniaturization Residue##18956 |q 7003 |goto Feralas 42.52,46.88 |tip {dropsfrom}Zapped Shore Strider, Land Walker, Shore Strider
step
  only haveq(7721)
  note Collect 10 Water Elemental Cores from the Sea Elementals and Sea Sprays along the Forgotten Coast of Feralas, and bring them back to Zorbin Fandazzle who is near the dock there.
  collect 10 Water Elemental Core##18958 |q 7721 |goto Feralas 44.21,49.69 |tip {dropsfrom}Sea Elemental, Sea Spray
step
  only haveq(7003)
  talk Zorbin Fandazzle##14637
  turnin Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  only haveq(7721)
  talk Zorbin Fandazzle##14637
  turnin Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  note Bring 10 Rage Scar Yeti Hides to Pratt McGrubben at Feathermoon Stronghold, Feralas.
  collect 10 Rage Scar Yeti Hide##18947 |q 7733 |goto Feralas 53.28,31.85 |tip {dropsfrom}Rage Scar Yeti, Elder Rage Scar, Ferocious Rage Scar
step
  talk Kindal Moonweaver##7956
  accept Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
  note Using the Bamboo Cage Key, free the Sprite Darters from the pen in the Grimtotem camp. At least 6 Sprite Darters and Kindal Moonweaver must survive.
  talk Captured Sprite Darter##7997 |q 2969 |goto Feralas 66.54,46.93
step
  talk Kindal Moonweaver##7956
  turnin Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
  talk Jer'kai Moonweaver##7957
  accept Doling Justice##2970 |goto Feralas 65.95,45.61
step
  note Kill 12 Grimtotem Naturalists, 10 Grimtotem Raiders, and 6 Grimtotem Shamans before returning to Jer'kai Moonweaver in Feralas.
  kill Grimtotem Raider##7725 |q 2970/2 |goto Feralas 67.22,46.37
  kill Grimtotem Shaman##7727 |q 2970/3 |goto Feralas 68.09,46.12
  kill Grimtotem Naturalist##7726 |q 2970 |goto Feralas 68.74,39.25
step
  talk Jer'kai Moonweaver##7957
  turnin Doling Justice##2970 |goto Feralas 65.95,45.61
step
  talk Jer'kai Moonweaver##7957
  accept Doling Justice##2972 |goto Feralas 65.95,45.61
step
  note Take the distress beacon to Oglethorpe's homing robot in a cave near Feral Scar Vale.
  talk Homing Robot OOX-22/FE##7807
  turnin Find OOX-22/FE!##2766 |goto Feralas 53.35,55.7
step
  talk Pratt McGrubben##7852
  turnin Improved Quality##7733 |goto Feralas 30.63,42.71
step
  only level>=44
  talk Rockbiter##7765
  accept The Giant Guardian##2844 |goto Feralas 42.39,22
step
  only haveq(2844)
  note Locate the lost night elf girl.
  talk Shay Leafrunner##7774
  turnin The Giant Guardian##2844 |goto Feralas 38.22,10.3
step
  only completed(2844) level>=44
  talk Shay Leafrunner##7774
  accept Wandering Shay##2845 |goto Feralas 38.22,10.3
step
  only haveq(2845)
  note Pick up Shay's Bell from the chest.
  collect Shay's Bell##9189 |q 2845 |goto Feralas 38.25,10.29 |tip {dropsfrom}Shay's Chest
step
  only haveq(2845)
  talk Rockbiter##7765
  turnin Wandering Shay##2845 |goto Feralas 42.39,22
step
  only level>=46
  talk Angelas Moonbreeze##7900
  accept The Sunken Temple##3445 |goto Feralas 31.83,45.61
step
  only haveq(1188)
  note Bring the Seaforium Booster to Shreev in Gadgetzan.
  talk Shreev##4708
  turnin Safety First##1188 |goto Tanaris 50.96,27.24 |tip {turninat}Tanaris
step
  only haveq(3445)
  note Find Marvon Rivetseeker in Tanaris.
  talk Marvon Rivetseeker##7771
  turnin The Sunken Temple##3445 |goto Tanaris 52.71,45.92 |tip {turninat}Tanaris
step
  note Take Jer'kai's Signet Ring to High Priestess Tyrande Whisperwind in Darnassus.
  talk Tyrande Whisperwind##7999
  turnin Doling Justice##2972 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  note Bring Raschal's Report to Gracina Spiritmight in Darnassus.
  talk Gracina Spiritmight##7740
  turnin Rise of the Silithid##4267 |goto Darnassus 41.83,85.62 |tip {turninat}Darnassus
step
  talk Kindal Moonweaver##7956
  accept An Orphan Looking For a Home##3841 |goto Feralas 65.94,45.65
step
  note Speak to Quentin in Thousand Needles.
  talk Quentin##9238
  turnin An Orphan Looking For a Home##3841 |goto Thousand Needles 78.35,74.72 |tip {turninat}Thousand Needles
step
  note {travel}Tanaris
  goto Tanaris 52.46,28.51
]])
