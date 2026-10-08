-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Feralas (43-48)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/The Hinterlands (43-48)",
}, [[
step
  note {fp}Antarius
  goto Feralas 31.47,43.15 |tip {vendor}
step
  talk Falfindel Waywarder##4048
  accept The Crone of the Kraul##1101 |goto Feralas 89.64,46.57
step
  note Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar.
  collect Razorflank's Medallion##5792 |q 1101 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Charlga Razorflank
step
  kill Gordunni Ogre##5229 |goto Feralas 75.15,29.76 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-22/FE!##2766 |goto Feralas 75.15,29.76
step
  talk Klockmort Spannerspan##6169
  accept The Brassbolts Brothers##2769 |goto Ironforge 67.92,46.1
step
  talk Kindal Moonweaver##7956
  accept Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
  talk Homing Robot OOX-22/FE##7807
  turnin Find OOX-22/FE!##2766 |goto Feralas 53.35,55.7
step
  talk High Sorcerer Andromath##5694
  accept Vital Supplies##1477 |goto Stormwind City 48.71,87.62
step
  talk Zorbin Fandazzle##14637
  accept Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  note Use Zorbin's Ultra-Shrinker to zap any kind of giant found in Feralas into a more manageable form. Bring 15 Miniaturization Residues found on the zapped versions of these giants to Zorbin Fandazzle at the docks of the Forgotten Coast, Feralas.
  kill Land Walker##5357 |goto Feralas 39.16,23.6 |elite
  collect 15 Miniaturization Residue##18956 |q 7003 |goto Feralas 39.16,23.6
step
  talk Zorbin Fandazzle##14637
  accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  note Collect 10 Water Elemental Cores from the Sea Elementals and Sea Sprays along the Forgotten Coast of Feralas, and bring them back to Zorbin Fandazzle who is near the dock there.
  collect 10 Water Elemental Core##18958 |q 7721 |goto Feralas 45.33,49.7 |tip {dropsfrom}Sea Elemental, Sea Spray
step
  talk Pratt McGrubben##7852
  accept The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
  note Bring 10 Thick Yeti Hides to Pratt McGrubben in Feathermoon Stronghold.
  collect 10 Thick Yeti Hide##8973 |q 2821 |goto Feralas 55.48,56.5 |tip {dropsfrom}Feral Scar Yeti, Hulking Feral Scar, Enraged Feral Scar
step
  talk Shandris Feathermoon##3936
  accept The Ruins of Solarsal##2866 |goto Feralas 30.28,46.17
step
  talk Troyas Moonbreeze##7764
  accept The Stave of Equinex##2879 |goto Feralas 31.78,45.5
step
  note Energize Troyas' Stave and find the Equinex Monolith.
  collect Stave of Equinex##9306 |q 2879 |goto Feralas 38.83,13.17 |tip {dropsfrom}Equinex Monolith
step
  talk Troyas Moonbreeze##7764
  accept In Search of Knowledge##2939 |goto Feralas 31.78,45.5
step
  talk Angelas Moonbreeze##7900
  accept The High Wilderness##2982 |goto Feralas 31.83,45.61
step
  talk Angelas Moonbreeze##7900
  accept The Sunken Temple##3445 |goto Feralas 31.83,45.61
step
  talk Innkeeper Shyria##7736
  accept Jonespyre's Request##3788 |goto Feralas 30.97,43.49
step
  talk Quintis Jonespyre##7879
  accept The Mystery of Morrowgrain##3791 |goto Feralas 32.45,43.79
step
  note Bring 10 Morrowgrain to Quintis Jonespyre in Feathermoon Stronghold.
  collect 10 Morrowgrain##11040 |q 3791 |goto Feralas 32.45,43.79
step
  talk Latronicus Moonspear##7877
  accept The Missing Courier##4124 |goto Feralas 30.38,46.17
step
  talk Ginro Hearthkindle##7880
  accept A Hero's Welcome##4266 |goto Feralas 31.86,45.13
step
  talk Historian Karnik##2916
  accept An Ambassador of Evil##762 |goto Ironforge 77.54,11.82
step
  note Kill Ambassador Infernus in Angor Fortress and bring proof of his death to Advisor Belgrum in Ironforge.
  kill Ambassador Infernus##2745 |goto Badlands 42.1,28.88 |elite
  collect Ambassador Infernus' Bracer##4621 |q 762 |goto Badlands 42.1,28.88
step
  talk High Explorer Magellas##5387
  accept The Platinum Discs##2439 |goto Ironforge 69.93,18.55
step
  talk Rockbiter##7765
  accept The Giant Guardian##2844 |goto Feralas 42.39,22
step
  talk Curator Thorius##8256
  accept At Last!##3201 |goto Ironforge 71.5,15.74
step
  talk Gregan Brewspewer##7775
  accept Haze of Evil##4143 |goto Feralas 45.12,25.57
step
  note Collect 5 samples of Atal'ai Haze, then return to Muigin in Un'Goro Crater.
  collect 5 Atal'ai Haze##11318 |q 4143 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |tip {dropsfrom}Murk Worm, Saturated Ooze, Deep Lurker
step
  talk Shay Leafrunner##7774
  turnin The Giant Guardian##2844 |goto Feralas 38.22,10.3
step
  talk Muigin##9119
  turnin Haze of Evil##4143 |goto Un'Goro Crater 42.94,9.64 |tip {turninat}Un'Goro Crater
step
  turnin The Stave of Equinex##2879 |goto Feralas 38.83,13.17
step
  talk Gerrig Bonegrip##2786
  accept The Star, the Hand and the Heart##735 |goto Ironforge 50.83,5.62
step
  note Return the items on the Bonegrip's Note to Gerrig Bonegrip in Ironforge.
  collect Star of Xil'yeh##4646 |q 735 |goto Alterac Mountains 35.58,54.42 |tip {dropsfrom}Grel'borg the Miser
step
  talk Talvash del Kissel##6826
  accept Restoring the Necklace##2361 |goto Ironforge 36.38,3.61
step
  talk Bink##5144
  accept Tabetha's Task##2861 |goto Ironforge 27.25,8.3
step
  click Equinex Monolith##144063
  accept The Morrow Stone##2942 |goto Feralas 38.83,13.17
step
  note Return the Sparkling Stone and the Stave of Equinex to Troyas Moonbreeze in Feathermoon Stronghold.
  collect A Sparkling Stone##9307 |q 2942 |goto Feralas 38.83,13.17
step
  talk Falfindel Waywarder##4048
  turnin The Crone of the Kraul##1101 |goto Feralas 89.64,46.57
step
  talk Wizzle Brassbolts##4453
  turnin The Brassbolts Brothers##2769 |goto Thousand Needles 78.14,77.12 |tip {turninat}Thousand Needles
step
  talk Kindal Moonweaver##7956
  turnin Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
  talk Watchmaster Sorigal##5464
  turnin Vital Supplies##1477 |goto Duskwood 75.78,46.16 |tip {turninat}Duskwood
step
  talk Jer'kai Moonweaver##7957
  accept Doling Justice##2970 |goto Feralas 65.95,45.61
step
  note Kill 12 Grimtotem Naturalists, 10 Grimtotem Raiders, and 6 Grimtotem Shamans before returning to Jer'kai Moonweaver in Feralas.
  kill Grimtotem Naturalist##7726 |q 2970 |goto Feralas 68.74,39.19
step
  talk Tabetha##6546
  turnin Tabetha's Task##2861 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Daryn Lightwind##7907
  turnin In Search of Knowledge##2939 |goto Teldrassil 55.41,92.23 |tip {turninat}Teldrassil
step
  note Angelas Moonbreeze wants you to kill 8 Gordunni Warlocks, 8 Gordunni Shaman, and 8 Gordunni Brutes.
  kill Gordunni Warlock##5240 |q 2982 |goto Feralas 59.55,64.55
step
  talk Zorbin Fandazzle##14637
  turnin Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  talk Zorbin Fandazzle##14637
  turnin Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  talk Marvon Rivetseeker##7771
  turnin The Sunken Temple##3445 |goto Tanaris 52.71,45.92 |tip {turninat}Tanaris
step
  talk Mountaineer Pebblebitty##3836
  turnin At Last!##3201 |goto Loch Modan 18.18,84.01 |tip {turninat}Loch Modan
step
  talk Pratt McGrubben##7852
  turnin The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
  talk Dinita Stonemantle##7292
  turnin The Platinum Discs##2439 |goto Ironforge 33.88,59.15 |tip {turninat}Ironforge
step
  talk Ginro Hearthkindle##7880
  turnin The Missing Courier##4124 |goto Feralas 31.86,45.13
step
  talk Angelas Moonbreeze##7900
  turnin The High Wilderness##2982 |goto Feralas 31.83,45.61
step
  talk Shandris Feathermoon##3936
  turnin A Hero's Welcome##4266 |goto Feralas 30.28,46.17
step
  turnin The Ruins of Solarsal##2866 |goto Feralas 26.31,52.34
step
  talk Quintis Jonespyre##7879
  turnin Jonespyre's Request##3788 |goto Feralas 32.45,43.79
step
  talk Quintis Jonespyre##7879
  turnin The Mystery of Morrowgrain##3791 |goto Feralas 32.45,43.79
step
  talk Troyas Moonbreeze##7764
  turnin The Morrow Stone##2942 |goto Feralas 31.78,45.5
step
  click Solarsal Gazebo##142179
  accept Return to Feathermoon Stronghold##2867 |goto Feralas 26.31,52.34
step
  talk Ginro Hearthkindle##7880
  accept The Missing Courier##4125 |goto Feralas 31.86,45.13
step
  talk Shandris Feathermoon##3936
  accept Rise of the Silithid##4267 |goto Feralas 30.28,46.17
step
  talk Pratt McGrubben##7852
  accept Improved Quality##7733 |goto Feralas 30.63,42.71
step
  note Bring 10 Rage Scar Yeti Hides to Pratt McGrubben at Feathermoon Stronghold, Feralas.
  collect 10 Rage Scar Yeti Hide##18947 |q 7733 |goto Feralas 53.28,31.85 |tip {dropsfrom}Rage Scar Yeti, Elder Rage Scar, Ferocious Rage Scar
step
  talk Advisor Belgrum##2918
  turnin An Ambassador of Evil##762 |goto Ironforge 77.34,9.71 |tip {turninat}Ironforge
step
  talk Advisor Belgrum##2918
  accept The Lost Tablets of Will##1139 |goto Ironforge 77.34,9.71
step
  note Find the Tablet of Will, and return them to Advisor Belgrum in Ironforge.
  collect Tablet of Will##5824 |q 1139 |goto Uldaman - Dungeon -1,-1
step
  talk Talvash del Kissel##6826
  turnin Restoring the Necklace##2361 |goto Ironforge 36.38,3.61 |tip {turninat}Ironforge
step
  talk Gerrig Bonegrip##2786
  turnin The Star, the Hand and the Heart##735 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  talk Jer'kai Moonweaver##7957
  turnin Doling Justice##2970 |goto Feralas 65.95,45.61
step
  talk Jer'kai Moonweaver##7957
  accept Doling Justice##2972 |goto Feralas 65.95,45.61
step
  talk Tyrande Whisperwind##7999
  turnin Doling Justice##2972 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  turnin The Missing Courier##4125 |goto Feralas 45.44,64.96
step
  talk Gracina Spiritmight##7740
  turnin Rise of the Silithid##4267 |goto Darnassus 41.83,85.62 |tip {turninat}Darnassus
step
  click Wrecked Row Boat##164909
  accept Boat Wreckage##4127 |goto Feralas 45.44,64.96
step
  talk Ginro Hearthkindle##7880
  turnin Boat Wreckage##4127 |goto Feralas 31.86,45.13
step
  talk Shandris Feathermoon##3936
  turnin Return to Feathermoon Stronghold##2867 |goto Feralas 30.28,46.17
step
  talk Pratt McGrubben##7852
  turnin Improved Quality##7733 |goto Feralas 30.63,42.71
step
  talk Shandris Feathermoon##3936
  accept Against the Hatecrest##3130 |goto Feralas 30.28,46.17
step
  talk Ginro Hearthkindle##7880
  accept The Knife Revealed##4129 |goto Feralas 31.86,45.13
step
  talk Advisor Belgrum##2918
  turnin The Lost Tablets of Will##1139 |goto Ironforge 77.34,9.71 |tip {turninat}Ironforge
step
  talk Kindal Moonweaver##7956
  accept An Orphan Looking For a Home##3841 |goto Feralas 65.94,45.65
step
  talk Quintis Jonespyre##7879
  turnin The Knife Revealed##4129 |goto Feralas 32.45,43.79
step
  talk Latronicus Moonspear##7877
  turnin Against the Hatecrest##3130 |goto Feralas 30.38,46.17
step
  talk Latronicus Moonspear##7877
  accept Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
  note Bring 10 Hatecrest Naga Scales to Latronicus Moonspear in Feathermoon Stronghold.
  collect 10 Hatecrest Naga Scale##9247 |q 2869 |goto Feralas 28.82,53.67 |tip {dropsfrom}Hatecrest Warrior, Hatecrest Wave Rider, Hatecrest Serpent Guard
step
  talk Quintis Jonespyre##7879
  accept Psychometric Reading##4130 |goto Feralas 32.45,43.79
step
  talk Quentin##9238
  turnin An Orphan Looking For a Home##3841 |goto Thousand Needles 78.35,74.72 |tip {turninat}Thousand Needles
step
  talk Ginro Hearthkindle##7880
  turnin Psychometric Reading##4130 |goto Feralas 31.86,45.13
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
  talk Ginro Hearthkindle##7880
  accept The Woodpaw Gnolls##4131 |goto Feralas 31.86,45.13
step
  turnin The Woodpaw Gnolls##4131 |goto Feralas 73.32,56.31
step
  click Large Leather Backpacks##164953
  accept The Writhing Deep##4135 |goto Feralas 73.32,56.31
step
  collect Large Leather Backpacks##164953 |goto Feralas 73.32,56.31 |tip Loot the quest item here — it starts the quest.
  accept Thalanaar Delivery##4281 |goto Feralas 73.32,56.31
step
  talk Latronicus Moonspear##7877
  turnin Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
  talk Latronicus Moonspear##7877
  accept Delivering the Relic##2871 |goto Feralas 30.38,46.17
step
  talk Falfindel Waywarder##4048
  turnin Thalanaar Delivery##4281 |goto Feralas 89.64,46.57
step
  turnin The Writhing Deep##4135 |goto Feralas 72.07,63.72
step
  talk Vestia Moonspear##7878
  turnin Delivering the Relic##2871 |goto Feralas 30.08,45.06
step
  note {travel}The Hinterlands
  goto The Hinterlands 11.81,46.76
]])
