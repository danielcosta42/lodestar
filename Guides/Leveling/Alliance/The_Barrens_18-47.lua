-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/The Barrens (18-47)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Hillsbrad Foothills (32-40)",
}, [[
step
  note {fp}Bragok
  goto The Barrens 63.08,37.16 |tip {vendor}
step
  talk Master Mathias Shaw##332
  accept Look to an Old Friend##350 |goto Stormwind City 75.78,59.84
step
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1247 |goto Stormwind City 70.55,44.89
step
  only Warrior
  talk Klockmort Spannerspan##6169
  accept Klockmort's Creation##1709 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  kill Big Will##6238 |q 1719
step
  talk Klockmort Spannerspan##6169
  accept Essential Artificials##2924 |goto Ironforge 67.92,46.1
step
  note Bring 12 Essential Artificials to Klockmort Spannerspan in Ironforge.
  collect 12 Essential Artificial##9278 |q 2924 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Artificial Extrapolator
step
  talk Master Mechanic Castpipe##7950
  accept Data Rescue##2930 |goto Ironforge 69.83,48.1
step
  note Bring a Prismatic Punch Card to Master Mechanic Castpipe in Ironforge.
  collect Prismatic Punch Card##9316 |q 2930 |goto Ironforge 69.83,48.1
step
  talk Mebok Mizzyrix##3446
  accept Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  note Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
  collect 5 Intact Raptor Horn##5055 |q 865 |goto The Barrens 52.69,45.68 |tip {dropsfrom}Sunscale Scytheclaw, Ishamuhale, Takk the Leaper
step
  talk Mebok Mizzyrix##3446
  accept Root Samples##866 |goto The Barrens 62.37,37.62
step
  note Bring 8 Root Samples to Mebok Mizzyrix in Ratchet.
  collect 8 Root Sample##5056 |q 866 |goto The Barrens 49.37,33.07 |tip {dropsfrom}Peacebloom, Silverleaf, Earthroot
step
  talk Gazlowe##3391
  accept Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Sputtervalve##3442
  accept Samophlange##894 |goto The Barrens 62.98,37.22
step
  click WANTED##3972
  accept WANTED: Baron Longshore##895 |goto The Barrens 62.59,37.47
step
  note Bring the head of Baron Longshore to Gazlowe in Ratchet.
  collect Baron Longshore's Head##5084 |q 895 |goto The Barrens 63.56,49.14 |tip {dropsfrom}Baron Longshore
step
  talk Wharfmaster Dizzywig##3453
  accept Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  note Retrieve the Cats Eye Emerald from one of the Venture Co. Overseers or Enforcers for Wharfmaster Dizzywig at Ratchet.
  collect Cats Eye Emerald##5097 |q 896 |goto The Barrens 60.81,3.81 |tip {dropsfrom}Venture Co. Enforcer, Venture Co. Overseer, Boss Copperplug
step
  talk Crane Operator Bigglefuzz##3665
  accept Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  note Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
  collect 99-Year-Old Port##5334 |q 959 |goto The Barrens 45.69,33.62 |tip {dropsfrom}Mad Magglish
step
  talk Thyn'tel Bladeweaver##8026
  accept Velinde's Effects##1038 |goto Darnassus 61.77,39.18
step
  note Search through Velinde's chest for her journal, then return it along with the key to Thyn'tel Bladeweaver in Darnassus.
  collect Velinde's Effects##5520 |q 1038 |goto Darnassus 61.77,39.18
step
  talk Mebok Mizzyrix##3446
  accept Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  note Bring 15 Deepmoss Eggs to Mebok Mizzyrix in Ratchet.
  collect 15 Deepmoss Egg##5570 |q 1069 |goto Stonetalon Mountains 61.35,53.71 |tip {dropsfrom}Deepmoss Eggs
step
  talk Sputtervalve##3442
  accept Further Instructions##1095 |goto The Barrens 62.98,37.22
step
  talk Wharfmaster Dizzywig##3453
  accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
step
  talk Gazlowe##3391
  accept Goblin Sponsorship##1180 |goto The Barrens 62.68,36.23
step
  talk Mebok Mizzyrix##3446
  accept Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  note Grab a Crate with Holes.
  collect Blueleaf Tuber##5876 |q 1221 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Sputtervalve##3442
  accept Ziz Fizziks##1483 |goto The Barrens 62.98,37.22
step
  only Warrior
  talk Mathiel##6142
  accept Sunscorched Shells##1710 |goto Darnassus 59.51,45.38
step
  only Warrior
  note Bring 20 Sunscorched Shells to Mathiel in Darnassus.
  collect 20 Sunscorched Shell##6849 |q 1710 |goto Thousand Needles 11.79,37.1
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring Robes of the Arcana to Menara Voidrender in the Barrens.
  collect Robes of Arcana##5770 |q 1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  accept Fragments of the Orb of Orahil##1799 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
  collect Infernal Orb##7291 |q 1799 |goto Desolace 79.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  talk Mathiel##6142
  accept Klockmort's Essentials##2925 |goto Darnassus 59.51,45.38
step
  talk Tinkerwiz##3494
  accept Goblin Engineering##3633 |goto The Barrens 62.67,36.31
step
  talk Tinkerwiz##3494
  accept Gnome Engineering##3634 |goto The Barrens 62.67,36.31
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.
  collect 10 Vial of Hatefury Blood##6989 |q 4783 |goto Desolace 74.45,18.85 |tip {dropsfrom}Hatefury Rogue, Hatefury Trickster, Hatefury Felsworn
step
  only Warlock
  talk Acolyte Wytula##6254
  accept Shard of a Felhound##4962 |goto The Barrens 62.64,35.3
step
  only Warlock
  note Take the Felhas Ruby and use it on one of the Felhounds found in Desolace. After successful, bring the Felhas Ruby and the Imprisoned Felhound Spirit back to Menara Voidrender in the Barrens.
  collect Imprisoned Felhound Spirit##12648 |q 4962 |goto The Barrens 62.64,35.3
step
  only Warlock
  talk Acolyte Magaz##6252
  accept Shard of an Infernal##4963 |goto The Barrens 62.56,35.23
step
  only Warlock
  note Take the Infus Emerald and use it on one of the Infernals found in Desolace. After successful, bring the Infus Emerald and the Imprisoned Infernal Spirit back to Menara Voidrender in the Barrens.
  collect Imprisoned Infernal Spirit##12649 |q 4963 |goto The Barrens 62.56,35.23
step
  only Warlock
  talk Menara Voidrender##6266
  accept The Completed Orb of Dar'Orahil##4964 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  accept The Completed Orb of Noh'Orahil##4975 |goto The Barrens 62.51,35.45
step
  talk Nixx Sprocketspring##8126
  turnin Goblin Engineering##3633 |goto Tanaris 52.48,27.33 |tip {turninat}Tanaris
step
  talk Ebru##5768
  accept Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  talk Falla Sagewind##8418
  accept In Nightmares##3370 |goto The Barrens 48.18,32.78
step
  only Warlock
  talk Tabetha##6546
  turnin Fragments of the Orb of Orahil##1799 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Wharfmaster Lozgil##4631
  turnin Goblin Sponsorship##1180 |goto Stranglethorn Vale 26.35,73.56 |tip {turninat}Stranglethorn Vale
step
  talk Ziz Fizziks##4201
  turnin Further Instructions##1095 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Ziz Fizziks##4201
  turnin Ziz Fizziks##1483 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Elling Trias##482
  turnin Look to an Old Friend##350 |goto Stormwind City 59.91,64.18 |tip {turninat}Stormwind City
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1247 |goto Stormwind City 59.91,64.18 |tip {turninat}Stormwind City
step
  talk Elling Trias##482
  accept The Head of the Beast##394 |goto Stormwind City 59.91,64.18
step
  talk Sara Balloo##2695
  accept Sara Balloo's Plea##683 |goto Ironforge 63.5,67.3
step
  talk Elling Trias##482
  accept The Missing Diplomat##1246 |goto Stormwind City 59.91,64.18
step
  only Warlock
  talk Doan Karhan##6247
  accept The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Warlock
  note Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
  collect 3 Soran'ruk Fragment##6914 |q 1740 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Acolyte
step
  talk Elling Trias##482
  accept Infiltrating the Castle##2745 |goto Stormwind City 59.91,64.18
step
  talk Zardeth of the Black Claw##1435
  accept A Noble Brew##335 |goto Stormwind City 26.44,78.67
step
  note Zardeth the Black Claw wants you to bring him a Tear of Tilloa from Darkshire and a Musquash Root from the Wetlands.
  collect Tear of Tilloa##2779 |q 335 |goto Duskwood 78.35,35.95
step
  talk Archmage Malin##2708
  accept Malin's Request##690 |goto Stormwind City 39.84,81.46
step
  talk Pilot Longbeard##2092
  accept The Brassbolts Brothers##1179 |goto Ironforge 72.73,94.01
step
  only Warlock
  talk Demisette Cloyce##461
  accept In Search of Menara Voidrender##4738 |goto Stormwind City 25.28,78.22
step
  talk Myriam Moonsinger##12866
  accept A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  note Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
  kill Razorfen Battleguard##7873 |q 6626 |goto The Barrens 47.48,90.1
step
  talk Mathrengyl Bearwalker##4217
  turnin In Nightmares##3370 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Tyrion##7766
  turnin Infiltrating the Castle##2745 |goto Stormwind City 69.21,14.4 |tip {turninat}Stormwind City
step
  turnin Samophlange##894 |goto The Barrens 52.4,11.65
step
  talk Wizzlecrank's Shredder##3439
  accept Ignition##858 |goto The Barrens 56.52,7.45
step
  note Get the Ignition Key and bring it to Wizzlecrank.
  collect Ignition Key##5050 |q 858 |goto The Barrens 56.27,8.58 |tip {dropsfrom}Supervisor Lugwizzle
step
  click Control Console##4141
  accept Samophlange##900 |goto The Barrens 52.4,11.65
step
  only Warrior
  talk Grimand Elmore##1416
  accept Grimand's Armor##1706 |goto Stormwind City 51.76,12.08
step
  talk Tyrion##7766
  accept Items of Some Consequence##2746 |goto Stormwind City 69.21,14.4
step
  note Bring 3 Silk Cloth and 2 of Clara's Fresh Apples to Tyrion in Stormwind.
  collect 3 Silk Cloth##4306 |q 2746 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Skeletal Warrior, Skeletal Horror
step
  talk Shoni the Shilent##6579
  accept Gyrodrillmatic Excavationators##2928 |goto Stormwind City 55.51,12.51
step
  note Bring twenty-four Robo-mechanical Guts to Shoni in Stormwind.
  collect Gyrodrillmatic Excavationators##9309 |q 2928 |goto Stormwind City 55.51,12.51
step
  only Warlock
  talk Briarthorn##5172
  accept In Search of Menara Voidrender##4736 |goto Ironforge 50.35,5.66
step
  note Close off the Fuel Control Valve, the Regulator Valve and the Main Control Valve then use the control console again.
  collect Main Control Valve##4072 |q 900 |goto The Barrens 52.33,11.56
step
  note Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs.
  kill Deviate Ravager##3636 |q 1487 |goto Wailing Caverns - Dungeon -1,-1 |elite
step
  talk Master Mathias Shaw##332
  turnin The Head of the Beast##394 |goto Stormwind City 75.78,59.84 |tip {turninat}Stormwind City
step
  talk Wizzle Brassbolts##4453
  turnin The Brassbolts Brothers##1179 |goto Thousand Needles 78.14,77.12 |tip {turninat}Thousand Needles
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Creation##1709 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  talk Tinkmaster Overspark##7944
  turnin Gnome Engineering##3634 |goto Ironforge 69.55,50.33 |tip {turninat}Ironforge
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16
step
  talk Kravel Koalbeard##4452
  turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.27 |tip {turninat}Thousand Needles
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1246 |goto Stormwind City 70.55,44.89 |tip {turninat}Stormwind City
step
  talk Klockmort Spannerspan##6169
  turnin Essential Artificials##2924 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Essentials##2925 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  talk Master Mechanic Castpipe##7950
  turnin Data Rescue##2930 |goto Ironforge 69.83,48.1 |tip {turninat}Ironforge
step
  talk Master Mathias Shaw##332
  accept Brotherhood's End##395 |goto Stormwind City 75.78,59.84
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Windwatcher##1791 |goto The Barrens 68.62,49.16
step
  note Kill 12 Southsea Brigands and 6 Southsea Cannoneers for Gazlowe in Ratchet.
  kill Southsea Brigand##3381 |q 887 |goto The Barrens 63.83,46.24
step
  talk Wharfmaster Dizzywig##3453
  turnin Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4736 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4738 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  talk Thyn'tel Bladeweaver##8026
  turnin Velinde's Effects##1038 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  talk Mebok Mizzyrix##3446
  turnin Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  only Warrior
  talk Mathiel##6142
  turnin Sunscorched Shells##1710 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  talk Crane Operator Bigglefuzz##3665
  turnin Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  talk Mebok Mizzyrix##3446
  turnin Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  talk Mebok Mizzyrix##3446
  turnin Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  talk Mebok Mizzyrix##3446
  turnin Root Samples##866 |goto The Barrens 62.37,37.62
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Shard of a Felhound##4962 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Shard of an Infernal##4963 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin The Completed Orb of Dar'Orahil##4964 |goto The Barrens 62.51,35.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin The Completed Orb of Noh'Orahil##4975 |goto The Barrens 62.51,35.45
step
  talk Gazlowe##3391
  turnin Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  turnin WANTED: Baron Longshore##895 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept The Missing Shipment##890 |goto The Barrens 62.68,36.23
step
  talk Thyn'tel Bladeweaver##8026
  accept The Barrens Port##1039 |goto Darnassus 61.77,39.18
step
  talk Mebok Mizzyrix##3446
  accept Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  note Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet.
  collect 6 Wailing Essence##6464 |q 1491 |goto The Barrens 47.91,33.38 |tip {dropsfrom}Devouring Ectoplasm, Evolving Ectoplasm, Nightmare Ectoplasm
step
  only Warrior
  talk Mathiel##6142
  accept Mathiel's Armor##1711 |goto Darnassus 59.51,45.38
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4781 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring a Gold Bar to Xizk Goodstitch in Stranglethorn Vale.
  collect Gold Bar##3577 |q 4781 |goto Bloodmyst Isle 52.92,75.29 |tip {dropsfrom}Tattered Chest, Battered Chest, Solid Chest
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring some Fine Gold Thread, 2 Smoldering Coals, and a Soul Shard to Menara Voidrender in the Barrens.
  collect Fine Gold Thread##12293 |q 4784 |goto The Barrens 62.51,35.45
step
  talk Baros Alexston##1646
  turnin Brotherhood's End##395 |goto Stormwind City 49.19,30.28 |tip {turninat}Stormwind City
step
  talk Ebru##5768
  turnin Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  talk Baros Alexston##1646
  accept An Audience with the King##396 |goto Stormwind City 49.19,30.28
step
  talk King Magni Bronzebeard##2784
  turnin Sara Balloo's Plea##683 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  talk Skuerto##2789
  turnin Malin's Request##690 |goto Arathi Highlands 46.65,47.01 |tip {turninat}Arathi Highlands
step
  only Warlock
  talk Doan Karhan##6247
  turnin The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  talk King Magni Bronzebeard##2784
  accept A King's Tribute##686 |goto Ironforge 39.09,56.2
step
  only Warlock
  talk Xizk Goodstitch##2670
  turnin Components for the Enchanted Gold Bloodrobe##4781 |goto Stranglethorn Vale 28.71,76.89 |tip {turninat}Stranglethorn Vale
step
  talk Grand Mason Marblesten##2790
  turnin A King's Tribute##686 |goto Ironforge 39.04,88.05 |tip {turninat}Ironforge
step
  talk Zardeth of the Black Claw##1435
  turnin A Noble Brew##335 |goto Stormwind City 26.44,78.67 |tip {turninat}Stormwind City
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  talk Zardeth of the Black Claw##1435
  accept A Noble Brew##336 |goto Stormwind City 26.44,78.67
step
  talk Grand Mason Marblesten##2790
  accept A King's Tribute##689 |goto Ironforge 39.04,88.05
step
  note Grand Mason Marblesten of Ironforge wants 5 pieces of Alterac Granite.
  collect A King's Tribute##4521 |q 689 |goto Ironforge 39.04,88.05
step
  turnin Samophlange##900 |goto The Barrens 52.4,11.65
step
  talk Lady Katrana Prestor##1749
  turnin An Audience with the King##396 |goto Stormwind City 78.1,17.75 |tip {turninat}Stormwind City
step
  only Warrior
  talk Grimand Elmore##1416
  turnin Grimand's Armor##1706 |goto Stormwind City 51.76,12.08 |tip {turninat}Stormwind City
step
  talk Tyrion##7766
  turnin Items of Some Consequence##2746 |goto Stormwind City 69.21,14.4 |tip {turninat}Stormwind City
step
  talk Wizzlecrank's Shredder##3439
  turnin Ignition##858 |goto The Barrens 56.52,7.45
step
  talk Shoni the Shilent##6579
  turnin Gyrodrillmatic Excavationators##2928 |goto Stormwind City 55.51,12.51 |tip {turninat}Stormwind City
step
  click Control Console##4141
  accept Samophlange##901 |goto The Barrens 52.4,11.65
step
  note Get the Console Key from Tinkerer Sniggles to use on the control console.
  collect Console Key##5089 |q 901 |goto The Barrens 52.84,10.39 |tip {dropsfrom}Tinkerer Sniggles
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Windwatcher##1791 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  talk Wharfmaster Dizzywig##3453
  turnin The Barrens Port##1039 |goto The Barrens 63.35,38.45
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  only Warrior
  talk Mathiel##6142
  turnin Mathiel's Armor##1711 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  talk Lord Baurles K. Wishock##1439
  turnin A Noble Brew##336 |goto Stormwind City 75.23,31.68 |tip {turninat}Stormwind City
step
  talk Mebok Mizzyrix##3446
  turnin Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  talk Wharfmaster Dizzywig##3453
  turnin The Missing Shipment##890 |goto The Barrens 63.35,38.45
step
  talk Wharfmaster Dizzywig##3453
  accept The Missing Shipment##892 |goto The Barrens 63.35,38.45
step
  talk Wharfmaster Dizzywig##3453
  accept Passage to Booty Bay##1040 |goto The Barrens 63.35,38.45
step
  only Warlock
  talk Menara Voidrender##6266
  accept The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  talk Caravaneer Ruzzgot##3945
  turnin Passage to Booty Bay##1040 |goto Stranglethorn Vale 27.37,74.08 |tip {turninat}Stranglethorn Vale
step
  talk Grand Mason Marblesten##2790
  turnin A King's Tribute##689 |goto Ironforge 39.04,88.05 |tip {turninat}Ironforge
step
  only Warlock
  talk Zardeth of the Black Claw##1435
  accept You Have Served Us Well##397 |goto Stormwind City 26.44,78.67
step
  talk Grand Mason Marblesten##2790
  accept A King's Tribute##700 |goto Ironforge 39.04,88.05
step
  turnin Samophlange##901 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##902 |goto The Barrens 52.4,11.65
step
  talk Sputtervalve##3442
  turnin Samophlange##902 |goto The Barrens 62.98,37.22
step
  only Warlock
  talk Menara Voidrender##6266
  turnin The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  talk Gazlowe##3391
  turnin The Missing Shipment##892 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note Retrieve the Shipment of Boots and Telescopic Lens for Gazlowe in Ratchet.
  collect Shipment of Boots##5076 |q 888 |goto The Barrens 62.63,49.63 |tip {dropsfrom}Drizzlik's Emporium
step
  talk King Magni Bronzebeard##2784
  turnin A King's Tribute##700 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  only Warlock
  talk Zggi##1733
  turnin You Have Served Us Well##397 |goto Stormwind City 26.54,78.67 |tip {turninat}Stormwind City
step
  talk Gazlowe##3391
  turnin Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 50.99,58.69
]])
