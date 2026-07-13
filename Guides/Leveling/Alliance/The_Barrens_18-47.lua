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
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  kill Big Will##6238 |q 1719
step
  talk Islen Waterseer##5901
  accept Cleansed Water Returns to Felwood##5159 |goto The Barrens 65.83,43.78
step
  talk Mebok Mizzyrix##3446
  accept Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  note Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
  get Raptor Horns |q 865 |goto The Barrens 62.37,37.62
step
  talk Mebok Mizzyrix##3446
  accept Root Samples##866 |goto The Barrens 62.37,37.62
step
  note Bring 8 Root Samples to Mebok Mizzyrix in Ratchet.
  get Root Samples |q 866 |goto The Barrens 62.37,37.62
step
  talk Gazlowe##3391
  accept Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Sputtervalve##3442
  accept Samophlange##894 |goto The Barrens 62.98,37.22
step
  talk Wharfmaster Dizzywig##3453
  accept Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  note Retrieve the Cats Eye Emerald from one of the Venture Co. Overseers or Enforcers for Wharfmaster Dizzywig at Ratchet.
  get Miner's Fortune |q 896 |goto The Barrens 63.35,38.45
step
  talk Crane Operator Bigglefuzz##3665
  accept Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  note Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
  get Trouble at the Docks |q 959 |goto The Barrens 63.09,37.61
step
  talk Wharfmaster Dizzywig##3453
  accept Passage to Booty Bay##1040 |goto The Barrens 63.35,38.45
step
  talk Mebok Mizzyrix##3446
  accept Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  note Bring 15 Deepmoss Eggs to Mebok Mizzyrix in Ratchet.
  get Deepmoss Spider Eggs |q 1069 |goto The Barrens 62.37,37.62
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
  get Blueleaf Tubers |q 1221 |goto The Barrens 62.37,37.62
step
  talk Sputtervalve##3442
  accept Ziz Fizziks##1483 |goto The Barrens 62.98,37.22
step
  only Druid
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Druid
  note Bring Robes of the Arcana to Menara Voidrender in the Barrens.
  get Components for the Enchanted Gold Bloodrobe |q 1796 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  accept Fragments of the Orb of Orahil##1799 |goto The Barrens 62.51,35.45
step
  only Druid
  note Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
  get Fragments of the Orb of Orahil |q 1799 |goto The Barrens 62.51,35.45
step
  talk Tinkerwiz##3494
  accept Goblin Engineering##3633 |goto The Barrens 62.67,36.31
step
  talk Tinkerwiz##3494
  accept Gnome Engineering##3634 |goto The Barrens 62.67,36.31
step
  talk Liv Rizzlefix##8496
  accept Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
  note Collect 9 samples of Un'Goro Ash from the fire elementals around the volcano in Un'Goro Crater, and return them to Liv Rizzlefix in Ratchet.
  get Volcanic Activity |q 4502 |goto The Barrens 62.45,38.73
step
  only Druid
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only Druid
  note Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.
  get Components for the Enchanted Gold Bloodrobe |q 4783 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Acolyte Wytula##6254
  accept Shard of a Felhound##4962 |goto The Barrens 62.64,35.3
step
  only Druid
  note Take the Felhas Ruby and use it on one of the Felhounds found in Desolace. After successful, bring the Felhas Ruby and the Imprisoned Felhound Spirit back to Menara Voidrender in the Barrens.
  get Shard of a Felhound |q 4962 |goto The Barrens 62.64,35.3
step
  only Druid
  talk Acolyte Magaz##6252
  accept Shard of an Infernal##4963 |goto The Barrens 62.56,35.23
step
  only Druid
  note Take the Infus Emerald and use it on one of the Infernals found in Desolace. After successful, bring the Infus Emerald and the Imprisoned Infernal Spirit back to Menara Voidrender in the Barrens.
  get Shard of an Infernal |q 4963 |goto The Barrens 62.56,35.23
step
  only Druid
  talk Menara Voidrender##6266
  accept The Completed Orb of Dar'Orahil##4964 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  accept The Completed Orb of Noh'Orahil##4975 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Babagaya Shadowcleft##23534
  accept An Imp's Request##8419 |goto The Barrens 62.44,35.45
step
  only Druid
  note Bring a piece of felcloth to Impsy in Felwood.
  get An Imp's Request |q 8419 |goto The Barrens 62.44,35.45
step
  talk Nixx Sprocketspring##8126
  turnin Goblin Engineering##3633 |goto Tanaris 52.48,27.33 |tip {turninat}Tanaris
step
  only Druid
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02 |tip {turninat}Felwood
step
  talk Ebru##5768
  accept Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  talk Falla Sagewind##8418
  accept In Nightmares##3370 |goto The Barrens 48.18,32.78
step
  only Druid
  talk Tabetha##6546
  turnin Fragments of the Orb of Orahil##1799 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Caravaneer Ruzzgot##3945
  turnin Passage to Booty Bay##1040 |goto Stranglethorn Vale 27.37,74.08 |tip {turninat}Stranglethorn Vale
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
  only Druid
  talk Doan Karhan##6247
  accept The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Druid
  note Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
  get The Orb of Soran'ruk |q 1740 |goto The Barrens 49.31,57.21
step
  talk Greta Mosshoof##10922
  turnin Cleansed Water Returns to Felwood##5159 |goto Felwood 51.21,82.11 |tip {turninat}Felwood
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
  turnin Samophlange##894 |goto The Barrens 52.4,11.65
step
  talk Wizzlecrank's Shredder##3439
  accept Ignition##858 |goto The Barrens 56.52,7.45
step
  note Get the Ignition Key and bring it to Wizzlecrank.
  get Ignition |q 858 |goto The Barrens 56.52,7.45
step
  note Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs.
  kill Deviate Ravager##3636 |q 1487 |goto Wailing Caverns - Dungeon -1,-1
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
  only Druid
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  talk Liv Rizzlefix##8496
  turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
  talk Mebok Mizzyrix##3446
  turnin Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  only Druid
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
  only Druid
  talk Menara Voidrender##6266
  turnin Shard of a Felhound##4962 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  turnin Shard of an Infernal##4963 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  turnin The Completed Orb of Dar'Orahil##4964 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  turnin The Completed Orb of Noh'Orahil##4975 |goto The Barrens 62.51,35.45
step
  talk Gazlowe##3391
  turnin Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept The Missing Shipment##890 |goto The Barrens 62.68,36.23
step
  talk Mebok Mizzyrix##3446
  accept Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  note Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet.
  get Smart Drinks |q 1491 |goto The Barrens 62.37,37.62
step
  only Druid
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4781 |goto The Barrens 62.51,35.45
step
  only Druid
  note Bring a Gold Bar to Xizk Goodstitch in Stranglethorn Vale.
  get Components for the Enchanted Gold Bloodrobe |q 4781 |goto The Barrens 62.51,35.45
step
  only Druid
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
step
  only Druid
  note Bring some Fine Gold Thread, 2 Smoldering Coals, and a Soul Shard to Menara Voidrender in the Barrens.
  get Components for the Enchanted Gold Bloodrobe |q 4784 |goto The Barrens 62.51,35.45
step
  talk Ebru##5768
  turnin Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  only Druid
  talk Doan Karhan##6247
  turnin The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Druid
  talk Xizk Goodstitch##2670
  turnin Components for the Enchanted Gold Bloodrobe##4781 |goto Stranglethorn Vale 28.71,76.89 |tip {turninat}Stranglethorn Vale
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  talk Wizzlecrank's Shredder##3439
  turnin Ignition##858 |goto The Barrens 56.52,7.45
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Windwatcher##1791 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  only Druid
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4784 |goto The Barrens 62.51,35.45
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
  only Druid
  talk Menara Voidrender##6266
  accept The Completed Robe##4786 |goto The Barrens 62.51,35.45
step
  only Druid
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
  get Stolen Booty |q 888 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  turnin Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 50.99,58.69
]])
