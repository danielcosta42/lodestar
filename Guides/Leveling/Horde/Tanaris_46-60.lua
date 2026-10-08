-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tanaris (46-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Felwood (52-58)",
}, [[
step
  note {fp}Laziphus
  goto Tanaris 52.25,28 |tip {vendor}
step
  kill Glasshide Basilisk##5419 |goto Tanaris 45.74,32.82 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-17/TN!##351 |goto Tanaris 45.74,32.82
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Slake That Thirst##379 |goto Tanaris 52.46,28.51
step
  note Bring 5 Wastewander Water Pouches to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect 5 Wastewander Water Pouch##8483 |q 379 |goto Tanaris 61.84,38.21 |tip {dropsfrom}Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Return to Apothecary Zinge##864 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  note Use the untapped dowsing widget near the pool of water by Sandsorrow Watch. Once you have collected the sample, return the tapped dowsing widget to Senior Surveyor Fizzledowser in Gadgetzan.
  collect Tapped Dowsing Widget##8585 |q 992 |goto Tanaris 39,29 |tip {dropsfrom}Sandsorrow Watch Water Hole
step
  talk Shreev##4708
  accept Safety First##1189 |goto Tanaris 50.96,27.24
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
  talk Spigot Operator Luglunket##7408
  accept Water Pouch Bounty##1707 |goto Tanaris 52.49,28.45
step
  note Bring 5 Wastewander Water Pouches to Spigot Operator Luglunket in Gadgetzan.
  collect 5 Wastewander Water Pouch##8483 |q 1707 |goto Tanaris 61.84,38.21 |tip {dropsfrom}Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage
step
  talk Marin Noggenfogger##7564
  accept The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  note Collect a Laden Dew Gland and bring it to Marin Noggenfogger in Gadgetzan.
  collect Laden Dew Gland##8428 |q 2605 |goto Tanaris 29.36,66.28 |tip {dropsfrom}Thistleshrub Dew Collector
step
  click Egg-O-Matic##142071
  accept The Super Egg-O-Matic##2741 |goto Tanaris 52.39,26.97
step
  collect Hippogryph Egg##8564 |q 2741 |goto Feralas 57.31,76.11
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
step
  note Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect Divino-matic Rod##8548 |q 2768 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Sergeant Bly
step
  talk Tran'rek##7876
  accept Scarab Shells##2865 |goto Tanaris 51.57,26.76
step
  note Bring 5 Uncracked Scarab Shells to Tran'rek in Gadgetzan.
  collect 5 Uncracked Scarab Shell##9238 |q 2865 |goto Zul'Farrak - Dungeon -1,-1 |tip {dropsfrom}Scarab
step
  talk Trenton Lighthammer##7804
  accept Troll Temper##3042 |goto Tanaris 51.41,28.75
step
  note Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan.
  collect 20 Troll Temper##9523 |q 3042 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Sandfury Shadowcaster, Sandfury Blood Drinker, Sandfury Witch Doctor
step
  talk Tran'rek##7876
  accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  talk Gaeriyan##9299
  accept A Grave Situation##3913 |goto Tanaris 53.92,23.33
step
  talk Alchemist Pestlezugg##5594
  accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  note Bring a Gorishi Scent Gland and 5 Un'Goro Soil samples to Alchemist Pestlezugg in Gadgetzan.
  collect Gorishi Scent Gland##11837 |q 4496 |goto Un'Goro Crater 50.14,76.41 |tip {dropsfrom}Gorishi Wasp, Gorishi Worker, Gorishi Reaver
step
  talk Tran'rek##7876
  accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  note Collect 12 samples of Super Sticky Tar for Tran'rek in Gadgetzan.
  collect 12 Super Sticky Tar##11834 |q 4504 |goto Un'Goro Crater 59.89,31.38 |tip {dropsfrom}Tar Beast, Tar Lurker, Tar Lord
step
  talk Krinkle Goodsteel##5411
  accept Fire Plume Forged##5802 |goto Tanaris 51.46,28.81
step
  note Take the Skeleton Key Mold and 2 Thorium Bars to the top of Fire Plume Ridge in Un'Goro Crater. Use the Skeleton Key Mold by the lava lake to forge the Unfinished Skeleton Key.
  collect Unfinished Skeleton Key##14645 |q 5802 |goto Un'Goro Crater 48.86,47.01 |tip {dropsfrom}Fire Plume Ridge Lava Lake
step
  talk Andi Lynn##11758
  accept The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  click Wanted Poster##142122
  accept WANTED: Caliph Scorpidsting##2781 |goto Tanaris 66.82,22.29
step
  note Bring the head of Caliph Scorpidsting to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect Caliph Scorpidsting's Head##8723 |q 2781 |goto Tanaris 61.77,38.17 |tip {dropsfrom}Caliph Scorpidsting
step
  talk Stoley##7881
  accept Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
step
  note Bring Stoley's Shipment to Stoley in Steamwheedle Port.
  collect Stoley's Shipment##9244 |q 2873 |goto Tanaris 72.15,46.76 |tip {dropsfrom}Stolen Cargo
step
  click Wanted Poster##142122
  accept WANTED: Andre Firebeard##2875 |goto Tanaris 66.82,22.29
step
  note Bring Andre's Head to Security Chief Bilgewhizzle in Steamwheedle Port.
  collect Firebeard's Head##9246 |q 2875 |goto Tanaris 73.37,47.14 |tip {dropsfrom}Andre Firebeard
step
  talk Yeh'kinya##8579
  accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Yorba Screwspigot##9706
  accept Yuka Screwspigot##4324 |goto Tanaris 67.04,24.01
step
  talk Haughty Modiste##15165
  accept Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
  note Haughty Modiste wants you to collect 20 Southsea Pirate Hats and return them to her at Steamwheedle Port in Tanaris.
  collect 20 Southsea Pirate Hat##20519 |q 8365 |goto Tanaris 72.44,46.18 |tip {dropsfrom}Southsea Pirate, Southsea Freebooter, Southsea Dock Worker
step
  talk Security Chief Bilgewhizzle##7882
  accept Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  talk Narain Soothfancy##11811
  accept Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Decoy!##8606 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Wrath of Neptulon##8729 |goto Tanaris 65.24,18.58
step
  note Use the Arcanite Buoy at the Swirling Maelstrom at the Bay of Storms in Azshara.
  collect Blue Scepter Shard##21137 |q 8729 |goto Tanaris 65.24,18.58 |tip {dropsfrom}Maws
step
  note Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
  kill Wastewander Bandit##5618 |q 1690 |goto Tanaris 63.41,29.78
step
  talk Marvon Rivetseeker##7771
  accept Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  note Marvon Rivetseeker in Tanaris wants you to collect 30 Gahz'ridian Ornaments.
  collect 30 Gahz'ridian Ornament##8443 |q 3161 |goto Tanaris 47.1,56.5 |tip {dropsfrom}Gahz'ridian
step
  talk Marvon Rivetseeker##7771
  accept The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  note Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.
  collect Stone Circle##10556 |q 3444 |goto The Barrens 62.5,38.54 |tip {dropsfrom}Marvon's Chest
step
  talk Thrall##4949
  accept The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  note Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
  use Screecher Spirit##8612 |q 3520 |goto Feralas 47.89,49.19 |tip {useit}
step
  note Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.
  kill Dunemaul Brute##5474 |q 5863 |goto Tanaris 40.63,54.8
step
  talk Anachronos##15192
  turnin The Wrath of Neptulon##8729 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Protector##8747 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8752 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Invoker##8757 |goto Tanaris 65.27,50.03
step
  note Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to kill 10 Southsea Pirates, 10 Southsea Freebooters, 10 Southsea Dock Workers and 10 Southsea Swashbucklers.
  kill Southsea Pirate##7855 |q 8366 |goto Tanaris 72.44,46.18
step
  talk Razzeric##4706
  turnin Safety First##1189 |goto Thousand Needles 80.33,76.09 |tip {turninat}Thousand Needles
step
  talk Apothecary Dithers##11057
  turnin Fire Plume Forged##5802 |goto Tirisfal Glades 83.28,69.23 |tip {turninat}Tirisfal Glades
step
  talk Homing Robot OOX-17/TN##7784
  turnin Find OOX-17/TN!##351 |goto Tanaris 60.23,64.72
step
  talk Apothecary Zinge##5204
  turnin Return to Apothecary Zinge##864 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  note Narain Soothfancy in Tanaris wants you to travel to Winterspring and place the Bag of Gold at the drop off point documented by the booknappers.
  kill Number Two##15554 |q 8606 |goto Winterspring 67.2,72.6 |elite
step
  talk Stone Watcher of Norgannon##7918
  accept The Stone Watcher##2954 |goto Tanaris 37.6,81.4
step
  note Learn the purpose of the Stone Watcher of Norgannon, and then interact with the Uldum Pedestal in the Tanaris desert.
  kill Stone Watcher of Norgannon##7918 |q 2954 |goto Tanaris 37.6,81.4
step
  note Tran'rek in Gadgetzan wants you to kill 8 Gnarled Thistleshrubs and 8 Thistleshrub Rootshapers.
  kill Gnarled Thistleshrub##5490 |q 3362 |goto Tanaris 29.35,66.17
step
  talk Meridith the Mermaiden##15526
  accept Love Song for Narain##8599 |goto Tanaris 59.43,96.05
step
  talk Alchemist Pestlezugg##5594
  turnin Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  talk Tran'rek##7876
  turnin Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
  talk Tran'rek##7876
  turnin Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  talk Spigot Operator Luglunket##7408
  turnin Water Pouch Bounty##1707 |goto Tanaris 52.49,28.45
step
  talk Marin Noggenfogger##7564
  turnin The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  talk Tran'rek##7876
  turnin Scarab Shells##2865 |goto Tanaris 51.57,26.76
step
  turnin The Super Egg-O-Matic##2741 |goto Tanaris 52.39,26.97
step
  turnin A Grave Situation##3913 |goto Tanaris 53.81,29.06
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin WANTED: Caliph Scorpidsting##2781 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  talk Trenton Lighthammer##7804
  turnin Troll Temper##3042 |goto Tanaris 51.41,28.75
step
  talk Andi Lynn##11758
  turnin The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Slake That Thirst##379 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
  note Bring five Centipaar insect parts from the Noxious Lair to Alchemist Pestlezugg in Gadgetzan.
  collect Centipaar Insect Parts##8587 |q 82 |goto Tanaris 33.39,44.37 |tip {dropsfrom}Centipaar Wasp, Centipaar Stinger, Centipaar Swarmer
step
  talk Chief Engineer Bilgewhizzle##7407
  accept More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Marin Noggenfogger##7564
  accept In Good Taste##2606 |goto Tanaris 51.81,28.66
step
  click A Conspicuous Gravestone##148504
  accept Linken's Sword##3914 |goto Tanaris 53.81,29.06
step
  talk Alchemist Pestlezugg##5594
  accept Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  note Defeat the Gorishi Hive Queen once she is summoned.
  collect Gorishi Queen Brain##11835 |q 4507 |goto Un'Goro Crater 43.85,81.39 |tip {dropsfrom}Gorishi Hive Queen
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.76 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Narain Soothfancy##11811
  turnin Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin Love Song for Narain##8599 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin Decoy!##8606 |goto Tanaris 65.24,18.58
step
  talk Haughty Modiste##15165
  turnin Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
  talk Security Chief Bilgewhizzle##7882
  turnin Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  talk Stoley##7881
  turnin Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
step
  talk Security Chief Bilgewhizzle##7882
  turnin WANTED: Andre Firebeard##2875 |goto Tanaris 67.06,23.89
step
  talk Yeh'kinya##8579
  turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Yuka Screwspigot##9544
  turnin Yuka Screwspigot##4324 |goto Burning Steppes 66.06,21.95 |tip {turninat}Burning Steppes
step
  talk Stoley##7881
  accept Deliver to MacKinley##2874 |goto Tanaris 67.11,23.98
step
  talk Yeh'kinya##8579
  accept The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  note Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
  collect First Mosh'aru Tablet##10660 |q 3527 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Theka the Martyr, Theka the Martyr Shapeshift
step
  talk Narain Soothfancy##11811
  accept Stewvul, Ex-B.F.F.##8577 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Never Ask Me About My Business##8584 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Draconic for Dummies##8597 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  note Recover the 8 lost chapters of Draconic for Dummies and combine them with the Magical Book Binding and return the completed book of Draconic for Dummies: Volume II to Narain Soothfancy in Tanaris.
  collect Draconic For Dummies: Volume II##21111 |q 8620 |goto Tanaris 65.24,18.58
step
  talk Thrall##4949
  turnin The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Marvon Rivetseeker##7771
  turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  talk Marvon Rivetseeker##7771
  turnin The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  talk Marvon Rivetseeker##7771
  accept Into the Depths##3446 |goto Tanaris 52.71,45.92
step
  talk Marvon Rivetseeker##7771
  accept Secret of the Circle##3447 |goto Tanaris 52.71,45.92
step
  note Take down 10 Wastewander Shadow Mages, 8 Wastewander Rogues, and 6 Wastewander Assassins for Chief Engineer Bilgewhizzle in Gadgetzan.
  kill Wastewander Rogue##5615 |q 1691 |goto Tanaris 61.84,38.21
step
  talk Anachronos##15192
  turnin The Path of the Protector##8747 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8752 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8757 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Protector##8748 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21196 |q 8748 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8753 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21201 |q 8753 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Invoker##8758 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21206 |q 8758 |goto Tanaris 65.27,50.03
step
  turnin Stewvul, Ex-B.F.F.##8577 |goto Silverpine Forest 46.19,86.68 |tip {turninat}Silverpine Forest
step
  turnin The Stone Watcher##2954 |goto Tanaris 37.63,81.4
step
  turnin Draconic for Dummies##8597 |goto Azeroth - the world map 29.99,89.15 |tip {turninat}Azeroth - the world map
step
  talk "Sea Wolf" MacKinley##2501
  turnin Deliver to MacKinley##2874 |goto Stranglethorn Vale 27.78,77.07 |tip {turninat}Stranglethorn Vale
step
  click Uldum Pedestal##142343
  accept Return to Thunder Bluff##2967 |goto Tanaris 37.63,81.4
step
  talk Dirge Quikcleave##8125
  turnin Never Ask Me About My Business##8584 |goto Tanaris 52.63,28.11
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Alchemist Pestlezugg##5594
  turnin Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  talk Sprinkle##7583
  turnin In Good Taste##2606 |goto Tanaris 51.06,26.87
step
  talk Linken##8737
  turnin Linken's Sword##3914 |goto Un'Goro Crater 44.66,8.1 |tip {turninat}Un'Goro Crater
step
  talk Alchemist Pestlezugg##5594
  turnin Noxious Lair Investigation##82 |goto Tanaris 50.89,26.96
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  turnin Into the Depths##3446 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |tip {turninat}The Temple of Atal'Hakkar - Dungeon
step
  turnin Secret of the Circle##3447 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |tip {turninat}The Temple of Atal'Hakkar - Dungeon
step
  talk Senior Surveyor Fizzledowser##7724
  accept The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  note Discover the fate of Junior Surveyor Scrimshank, and bring either him or his surveying equipment to Senior Surveyor Fizzledowser in Gadgetzan.
  collect Scrimshank's Surveying Gear##8593 |q 10 |goto Tanaris 55.96,71.17
step
  talk Sprinkle##7583
  accept Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
  note Sprinkle in Gadgetzan wants you to collect a Violet Tragan and return it to her.
  collect Violet Tragan##8526 |q 2641 |goto The Hinterlands 40.99,59.83
step
  talk Alchemist Pestlezugg##5594
  accept Calm Before the Storm##4509 |goto Tanaris 50.89,26.96
step
  talk Dirge Quikcleave##8125
  accept The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  note Recover Lakmaeran's Carcass and 20 Chimaerok Tenderloins for Dirge Quikcleave in Tanaris.
  kill Lord Lakmaeran##12803 |goto Feralas 29.34,72.63 |elite
  collect Lakmaeran's Carcass##21027 |q 8585 |goto Feralas 29.34,72.63
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Nara Wildmane##5770
  turnin Return to Thunder Bluff##2967 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Narain Soothfancy##11811
  turnin The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  talk Yeh'kinya##8579
  turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  talk Yeh'kinya##8579
  accept The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  note Bring the Ancient Egg to Yeh'kinya in Tanaris.
  collect Ancient Egg##12402 |q 4787 |goto The Hinterlands 57.58,86.79
step
  talk Zilzibin Drumlore##7010
  turnin Calm Before the Storm##4509 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  talk Zilzibin Drumlore##7010
  accept Calm Before the Storm##4511 |goto Orgrimmar 56.26,46.68
step
  talk Anachronos##15192
  turnin The Path of the Protector##8748 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8753 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8758 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Protector##8749 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21197 |q 8749 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8754 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21202 |q 8754 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Invoker##8759 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21207 |q 8759 |goto Tanaris 65.27,50.03
step
  talk Karus##3309
  turnin Calm Before the Storm##4511 |goto Orgrimmar 49.58,69.12 |tip {turninat}Orgrimmar
step
  talk Dirge Quikcleave##8125
  turnin The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  talk Senior Surveyor Fizzledowser##7724
  turnin The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  talk Sprinkle##7583
  turnin Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Senior Surveyor Fizzledowser##7724
  accept Insect Part Analysis##110 |goto Tanaris 50.21,27.48
step
  talk Sprinkle##7583
  accept Delivery for Marin##2661 |goto Tanaris 51.06,26.87
step
  talk Dirge Quikcleave##8125
  accept Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  note Dirge Quikcleave in Gadgetzan wants you to bring him 20 Goblin Rocket Fuel and 20 Deeprock Salt.
  collect Goblin Rocket Fuel##9061 |q 8586 |goto Searing Gorge 34.69,51.89 |tip {dropsfrom}Clunk, Spirestone Ogre Magus, Tortured Druid
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  talk Yeh'kinya##8579
  turnin The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Yeh'kinya##8579
  accept The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  note Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
  collect Filled Egg of Hakkar##10662 |q 3528 |goto Tanaris 66.99,22.36
step
  talk Anachronos##15192
  turnin The Path of the Protector##8749 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8754 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8759 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Protector##8750 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21198 |q 8750 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8755 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21203 |q 8755 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Path of the Invoker##8760 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21208 |q 8760 |goto Tanaris 65.27,50.03
step
  talk Dirge Quikcleave##8125
  turnin Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Marin Noggenfogger##7564
  turnin Delivery for Marin##2661 |goto Tanaris 51.81,28.66
step
  talk Alchemist Pestlezugg##5594
  turnin Insect Part Analysis##110 |goto Tanaris 50.89,26.96
step
  talk Alchemist Pestlezugg##5594
  accept Insect Part Analysis##113 |goto Tanaris 50.89,26.96
step
  talk Marin Noggenfogger##7564
  accept Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
  talk Dirge Quikcleave##8125
  accept Return to Narain##8587 |goto Tanaris 52.63,28.11
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Narain Soothfancy##11811
  turnin Return to Narain##8587 |goto Tanaris 65.24,18.58
step
  talk Yeh'kinya##8579
  turnin The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Prospector Ironboot##10460
  accept The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  note Bring the Third and Fourth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Third Mosh'aru Tablet##12411 |q 5065 |goto Eastern Plaguelands 63.43,7.84
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8755 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Path of the Protector##8750 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8760 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Protector of Kalimdor##8751 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21199 |q 8751 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Qiraji Conqueror##8756 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21204 |q 8756 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Grand Invoker##8761 |goto Tanaris 65.27,50.03
step
  collect Signet Ring of the Bronze Dragonflight##21209 |q 8761 |goto Tanaris 65.27,50.03
step
  talk Marin Noggenfogger##7564
  turnin Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
  talk Senior Surveyor Fizzledowser##7724
  turnin Insect Part Analysis##113 |goto Tanaris 50.21,27.48
step
  talk Senior Surveyor Fizzledowser##7724
  accept Rise of the Silithid##32 |goto Tanaris 50.21,27.48
step
  talk Prospector Ironboot##10460
  turnin The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Prospector Ironboot##10460
  accept The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  note Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Fifth Mosh'aru Tablet##12740 |q 4788 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Zilzibin Drumlore##7010
  turnin Rise of the Silithid##32 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  talk Anachronos##15192
  turnin The Protector of Kalimdor##8751 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Grand Invoker##8761 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Qiraji Conqueror##8756 |goto Tanaris 65.27,50.03
step
  talk Prospector Ironboot##10460
  turnin The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Prospector Ironboot##10460
  accept Confront Yeh'kinya##8181 |goto Tanaris 66.89,24.03
step
  talk Yeh'kinya##8579
  turnin Confront Yeh'kinya##8181 |goto Tanaris 66.99,22.36
step
  talk Prospector Ironboot##10460
  accept The Hand of Rastakhan##8182 |goto Tanaris 66.89,24.03
step
  talk Molthor##14875
  turnin The Hand of Rastakhan##8182 |goto Stranglethorn Vale 15.04,15.13 |tip {turninat}Stranglethorn Vale
step
  note {travel}Felwood
  goto Felwood 50.93,85.01
]])
