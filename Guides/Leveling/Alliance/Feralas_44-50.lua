-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Feralas (44-50)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Blasted Lands (47-57)",
}, [[
step
  note {fp}Thyssiana
  goto Feralas 89.5,45.85 |tip {vendor}
step
  talk Falfindel Waywarder##4048
  accept The Crone of the Kraul##1101 |goto Feralas 89.64,46.57
step
  note Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar.
  get The Crone of the Kraul |q 1101 |goto Feralas 89.64,46.57
step
  talk Caryssia Moonhunter##7870
  accept Tribal Leatherworking##5143 |goto Feralas 89.42,46.55
step
  note Bring a Wild Leather Vest and a Wild Leather Helmet to Caryssia Moonhunter in Feralas.
  get Tribal Leatherworking |q 5143 |goto Feralas 89.42,46.55
step
  talk Azj'Tordin##14355
  accept Pusillin and the Elder Azj'Tordin##7441 |goto Feralas 76.91,37.35
step
  note Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary.
  get Pusillin and the Elder Azj'Tordin |q 7441 |goto Feralas 76.91,37.35
step
  talk Elder Grimtotem##15581
  accept Grimtotem the Elder##8679 |goto Feralas 76.72,37.9
step
  talk Jannos Lighthoof##8142
  accept Torwa Pathfinder##9063 |goto Feralas 75.99,42.28
step
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96 |tip {turninat}Un'Goro Crater
step
  talk Kindal Moonweaver##7956
  accept Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
  talk Zorbin Fandazzle##14637
  accept Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  note Use Zorbin's Ultra-Shrinker to zap any kind of giant found in Feralas into a more manageable form. Bring 15 Miniaturization Residues found on the zapped versions of these giants to Zorbin Fandazzle at the docks of the Forgotten Coast, Feralas.
  get Zapped Giants |q 7003 |goto Feralas 44.81,43.42
step
  talk Zorbin Fandazzle##14637
  accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  note Collect 10 Water Elemental Cores from the Sea Elementals and Sea Sprays along the Forgotten Coast of Feralas, and bring them back to Zorbin Fandazzle who is near the dock there.
  get Fuel for the Zapping |q 7721 |goto Feralas 44.81,43.42
step
  talk Pratt McGrubben##7852
  accept The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
  note Bring 10 Thick Yeti Hides to Pratt McGrubben in Feathermoon Stronghold.
  get The Mark of Quality |q 2821 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  accept Wild Leather Armor##2847 |goto Feralas 30.63,42.71
step
  note Bring 10 Thick Leather to Pratt McGrubben in Feathermoon Stronghold.
  get Wild Leather Armor |q 2847 |goto Feralas 30.63,42.71
step
  talk Shandris Feathermoon##3936
  accept The Ruins of Solarsal##2866 |goto Feralas 30.28,46.17
step
  talk Troyas Moonbreeze##7764
  accept The Stave of Equinex##2879 |goto Feralas 31.78,45.5
step
  note Energize Troyas' Stave and find the Equinex Monolith.
  get The Stave of Equinex |q 2879 |goto Feralas 31.78,45.5
step
  talk Troyas Moonbreeze##7764
  accept In Search of Knowledge##2939 |goto Feralas 31.78,45.5
step
  talk Angelas Moonbreeze##7900
  accept The High Wilderness##2982 |goto Feralas 31.83,45.61
step
  talk Shandris Feathermoon##3936
  accept Against the Hatecrest##3130 |goto Feralas 30.28,46.17
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
  get The Mystery of Morrowgrain |q 3791 |goto Feralas 32.45,43.79
step
  talk Latronicus Moonspear##7877
  accept The Missing Courier##4124 |goto Feralas 30.38,46.17
step
  talk Ginro Hearthkindle##7880
  accept The Knife Revealed##4129 |goto Feralas 31.86,45.13
step
  talk Ginro Hearthkindle##7880
  accept A Hero's Welcome##4266 |goto Feralas 31.86,45.13
step
  talk Latronicus Moonspear##7877
  accept Lethtendris's Web##7488 |goto Feralas 30.38,46.17
step
  note Bring Lethtendris' Web to Latronicus Moonspear at the Feathermoon Stronghold in Feralas.
  get Lethtendris's Web |q 7488 |goto Feralas 30.38,46.17
step
  talk Rockbiter##7765
  accept The Giant Guardian##2844 |goto Feralas 42.39,22.0
step
  talk Gregan Brewspewer##7775
  accept Haze of Evil##4143 |goto Feralas 45.12,25.57
step
  note Collect 5 samples of Atal'ai Haze, then return to Muigin in Un'Goro Crater.
  get Haze of Evil |q 4143 |goto Feralas 45.12,25.57
step
  talk Shay Leafrunner##7774
  turnin The Giant Guardian##2844 |goto Feralas 38.22,10.3
step
  talk Muigin##9119
  turnin Haze of Evil##4143 |goto Un'Goro Crater 42.94,9.64 |tip {turninat}Un'Goro Crater
step
  turnin The Stave of Equinex##2879 |goto Feralas 38.83,13.17
step
  talk Caryssia Moonhunter##7870
  turnin Tribal Leatherworking##5143 |goto Feralas 89.42,46.55
step
  talk Falfindel Waywarder##4048
  turnin The Crone of the Kraul##1101 |goto Feralas 89.64,46.57
step
  talk Azj'Tordin##14355
  turnin Pusillin and the Elder Azj'Tordin##7441 |goto Feralas 76.91,37.35
step
  talk Elder Grimtotem##15581
  turnin Grimtotem the Elder##8679 |goto Feralas 76.72,37.9
step
  talk Kindal Moonweaver##7956
  turnin Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
  talk Daryn Lightwind##7907
  turnin In Search of Knowledge##2939 |goto Teldrassil 55.41,92.23 |tip {turninat}Teldrassil
step
  talk Jer'kai Moonweaver##7957
  accept Doling Justice##2970 |goto Feralas 65.95,45.61
step
  note Kill 12 Grimtotem Naturalists, 10 Grimtotem Raiders, and 6 Grimtotem Shamans before returning to Jer'kai Moonweaver in Feralas.
  kill Grimtotem Naturalist##7726 |q 2970 |goto Feralas 68.74,39.19
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
  talk Pratt McGrubben##7852
  turnin The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
  talk Ginro Hearthkindle##7880
  turnin The Missing Courier##4124 |goto Feralas 31.86,45.13
step
  talk Pratt McGrubben##7852
  turnin Wild Leather Armor##2847 |goto Feralas 30.63,42.71
step
  talk Quintis Jonespyre##7879
  turnin The Knife Revealed##4129 |goto Feralas 32.45,43.79
step
  talk Angelas Moonbreeze##7900
  turnin The High Wilderness##2982 |goto Feralas 31.83,45.61
step
  talk Shandris Feathermoon##3936
  turnin A Hero's Welcome##4266 |goto Feralas 30.28,46.17
step
  turnin The Ruins of Solarsal##2866 |goto Feralas 26.31,52.34
step
  talk Latronicus Moonspear##7877
  turnin Against the Hatecrest##3130 |goto Feralas 30.38,46.17
step
  talk Latronicus Moonspear##7877
  turnin Lethtendris's Web##7488 |goto Feralas 30.38,46.17
step
  talk Quintis Jonespyre##7879
  turnin Jonespyre's Request##3788 |goto Feralas 32.45,43.79
step
  talk Quintis Jonespyre##7879
  turnin The Mystery of Morrowgrain##3791 |goto Feralas 32.45,43.79
step
  talk Pratt McGrubben##7852
  accept Wild Leather Shoulders##2848 |goto Feralas 30.63,42.71
step
  note Bring 6 Thick Armor Kits and a Wildvine to Pratt McGrubben in Feathermoon Stronghold.
  get Wild Leather Shoulders |q 2848 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  accept Wild Leather Vest##2849 |goto Feralas 30.63,42.71
step
  note Bring 2 Turtle Scale Breastplates, 2 Turtle Scale Gloves, and a Wildvine to Pratt McGrubben in Feathermoon Stronghold.
  get Wild Leather Vest |q 2849 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  accept Wild Leather Helmet##2850 |goto Feralas 30.63,42.71
step
  note Bring 2 Nightscape Tunics, 2 Nightscape Headbands, and a Wildvine to Pratt McGrubben in Feathermoon Stronghold.
  get Wild Leather Helmet |q 2850 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  accept Wild Leather Boots##2851 |goto Feralas 30.63,42.71
step
  note Bring 2 Nightscape Pants, 2 Nightscape Boots, and 2 Wildvines to Pratt McGrubben in Feathermoon Stronghold.
  get Wild Leather Boots |q 2851 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  accept Wild Leather Leggings##2852 |goto Feralas 30.63,42.71
step
  note Bring 2 Turtle Scale Helms, 2 Turtle Scale Bracers, and 2 Wildvines to Pratt McGrubben in Feathermoon Stronghold.
  get Wild Leather Leggings |q 2852 |goto Feralas 30.63,42.71
step
  talk Latronicus Moonspear##7877
  accept Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
  note Bring 10 Hatecrest Naga Scales to Latronicus Moonspear in Feathermoon Stronghold.
  get Against the Hatecrest |q 2869 |goto Feralas 30.38,46.17
step
  talk Ginro Hearthkindle##7880
  accept The Missing Courier##4125 |goto Feralas 31.86,45.13
step
  talk Quintis Jonespyre##7879
  accept Psychometric Reading##4130 |goto Feralas 32.45,43.79
step
  talk Shandris Feathermoon##3936
  accept Rise of the Silithid##4267 |goto Feralas 30.28,46.17
step
  talk Pratt McGrubben##7852
  accept Improved Quality##7733 |goto Feralas 30.63,42.71
step
  note Bring 10 Rage Scar Yeti Hides to Pratt McGrubben at Feathermoon Stronghold, Feralas.
  get Improved Quality |q 7733 |goto Feralas 30.63,42.71
step
  talk Jer'kai Moonweaver##7957
  turnin Doling Justice##2970 |goto Feralas 65.95,45.61
step
  talk Jer'kai Moonweaver##7957
  accept Doling Justice##2972 |goto Feralas 65.95,45.61
step
  turnin The Missing Courier##4125 |goto Feralas 45.44,64.96
step
  talk Tyrande Whisperwind##7999
  turnin Doling Justice##2972 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  talk Pratt McGrubben##7852
  turnin Wild Leather Shoulders##2848 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  turnin Wild Leather Vest##2849 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  turnin Wild Leather Helmet##2850 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  turnin Wild Leather Boots##2851 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  turnin Wild Leather Leggings##2852 |goto Feralas 30.63,42.71
step
  talk Ginro Hearthkindle##7880
  turnin Psychometric Reading##4130 |goto Feralas 31.86,45.13
step
  talk Gracina Spiritmight##7740
  turnin Rise of the Silithid##4267 |goto Darnassus 41.83,85.62 |tip {turninat}Darnassus
step
  talk Latronicus Moonspear##7877
  turnin Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
  talk Pratt McGrubben##7852
  turnin Improved Quality##7733 |goto Feralas 30.63,42.71
step
  talk Pratt McGrubben##7852
  accept Master of the Wild Leather##2853 |goto Feralas 30.63,42.71
step
  talk Latronicus Moonspear##7877
  accept Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
  note Eliminate Lord Shalzaru, and then bring the Mysterious Relic he uncovered to Latronicus Moonspear in Feathermoon Stronghold.
  get Against Lord Shalzaru |q 2870 |goto Feralas 30.38,46.17
step
  talk Ginro Hearthkindle##7880
  accept The Woodpaw Gnolls##4131 |goto Feralas 31.86,45.13
step
  talk Telonis##4212
  turnin Master of the Wild Leather##2853 |goto Darnassus 64.43,21.54 |tip {turninat}Darnassus
step
  turnin The Woodpaw Gnolls##4131 |goto Feralas 73.32,56.31
step
  talk Kindal Moonweaver##7956
  accept An Orphan Looking For a Home##3841 |goto Feralas 65.94,45.65
step
  talk Latronicus Moonspear##7877
  turnin Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
  talk Latronicus Moonspear##7877
  accept Delivering the Relic##2871 |goto Feralas 30.38,46.17
step
  talk Quentin##9238
  turnin An Orphan Looking For a Home##3841 |goto Thousand Needles 78.35,74.72 |tip {turninat}Thousand Needles
step
  talk Vestia Moonspear##7878
  turnin Delivering the Relic##2871 |goto Feralas 30.08,45.06
step
  note {travel}Blasted Lands
  goto Blasted Lands 66.9,19.47
]])
