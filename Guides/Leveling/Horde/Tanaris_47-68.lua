-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tanaris (47-68)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Western Plaguelands (55-60)",
}, [[
step
  note {fp}Bulkrek Ragefist
  goto Tanaris 51.6,25.44 |tip {vendor}
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Slake That Thirst##379 |goto Tanaris 52.46,28.51
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Return to Apothecary Zinge##864 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
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
  talk Marin Noggenfogger##7564
  accept The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
step
  talk Trenton Lighthammer##7804
  accept A Good Head On Your Shoulders##2771 |goto Tanaris 51.41,28.75
step
  talk Trenton Lighthammer##7804
  accept The World At Your Feet##2772 |goto Tanaris 51.41,28.75
step
  talk Trenton Lighthammer##7804
  accept The Mithril Kid##2773 |goto Tanaris 51.41,28.75
step
  talk Tran'rek##7876
  accept Scarab Shells##2865 |goto Tanaris 51.57,26.76
step
  talk Trenton Lighthammer##7804
  accept Troll Temper##3042 |goto Tanaris 51.41,28.75
step
  talk Tran'rek##7876
  accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  talk Nixx Sprocketspring##8126
  accept The Pledge of Secrecy##3638 |goto Tanaris 52.48,27.33
step
  talk Gaeriyan##9299
  accept A Grave Situation##3913 |goto Tanaris 53.92,23.33
step
  talk Alchemist Pestlezugg##5594
  accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  talk Tran'rek##7876
  accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  talk Krinkle Goodsteel##5411
  accept Fire Plume Forged##5802 |goto Tanaris 51.46,28.81
step
  talk Andi Lynn##11758
  accept The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Dirge Quikcleave##8125
  accept Clamlette Surprise##6610 |goto Tanaris 52.63,28.11
step
  talk Derotain Mudsipper##14567
  accept A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
  talk Elder Dreamseer##15586
  accept Dreamseer the Elder##8684 |goto Tanaris 51.61,26.99
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Don Carlos##28126
  accept Nice Hat...##12513 |goto Tanaris 53.85,28.85
step
  talk Don Carlos##28126
  accept Nice Hat...##12515 |goto Tanaris 53.85,28.85
step
  talk Stoley##7881
  accept Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
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
  talk Security Chief Bilgewhizzle##7882
  accept Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  talk Narain Soothfancy##11811
  accept Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Decoy!##8606 |goto Tanaris 65.24,18.58
step
  note Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
  kill Wastewander Bandit##5618 |q 1690 |goto Tanaris 63.41,29.78
step
  talk Marvon Rivetseeker##7771
  accept Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  talk Marvon Rivetseeker##7771
  accept The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  note Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.
  kill Dunemaul Brute##5474 |q 5863 |goto Tanaris 40.63,54.8
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Protector##8747 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8752 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8757 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  talk Steward of Time##20142
  accept To The Master's Lair##10279 |goto Tanaris 66.02,49.7
step
  note Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to kill 10 Southsea Pirates, 10 Southsea Freebooters, 10 Southsea Dock Workers and 10 Southsea Swashbucklers.
  kill Southsea Pirate##7855 |q 8366 |goto Tanaris 72.44,46.18
step
  talk Razzeric##4706
  turnin Safety First##1189 |goto Thousand Needles 80.33,76.09 |tip {turninat}Thousand Needles
step
  talk Andormu##20130
  turnin To The Master's Lair##10279 |goto Tanaris 58.43,54.28
step
  talk Apothecary Dithers##11057
  turnin Fire Plume Forged##5802 |goto Tirisfal Glades 83.28,69.23 |tip {turninat}Tirisfal Glades
step
  talk Apothecary Zinge##5204
  turnin Return to Apothecary Zinge##864 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  talk Andormu##20130
  accept The Caverns of Time##10277 |goto Tanaris 58.43,54.28
step
  talk Andormu##19932
  accept The Black Morass##10296 |goto Tanaris 57.62,59.01
step
  talk Soridormi##19935
  accept The Vials of Eternity##10445 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Defender's Pledge##10460 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Restorer's Pledge##10461 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Champion's Pledge##10462 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Sage's Pledge##10463 |goto Tanaris 61.05,56.95
step
  talk Elder Ragetotem##15573
  accept Ragetotem the Elder##8671 |goto Tanaris 35.96,80.12
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
  talk Nixx Sprocketspring##8126
  turnin The Pledge of Secrecy##3638 |goto Tanaris 52.48,27.33
step
  talk Sa'at##20201
  turnin The Black Morass##10296 |goto The Black Morass - Dungeon -1,-1 |tip {turninat}The Black Morass - Dungeon
step
  turnin A Grave Situation##3913 |goto Tanaris 53.81,29.06
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
step
  talk Dirge Quikcleave##8125
  turnin Clamlette Surprise##6610 |goto Tanaris 52.63,28.11
step
  talk Trenton Lighthammer##7804
  turnin A Good Head On Your Shoulders##2771 |goto Tanaris 51.41,28.75
step
  talk Trenton Lighthammer##7804
  turnin The World At Your Feet##2772 |goto Tanaris 51.41,28.75
step
  talk Trenton Lighthammer##7804
  turnin The Mithril Kid##2773 |goto Tanaris 51.41,28.75
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Senior Surveyor Fizzledowser##7724
  turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  talk Trenton Lighthammer##7804
  turnin Troll Temper##3042 |goto Tanaris 51.41,28.75
step
  talk Don Carlos##28126
  turnin Nice Hat...##12513 |goto Tanaris 53.85,28.85
step
  talk Derotain Mudsipper##14567
  turnin A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
  talk Don Carlos##28126
  turnin Nice Hat...##12515 |goto Tanaris 53.85,28.85
step
  talk Andi Lynn##11758
  turnin The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Elder Dreamseer##15586
  turnin Dreamseer the Elder##8684 |goto Tanaris 51.61,26.99
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Slake That Thirst##379 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Another Power Source?##841 |goto Tanaris 52.46,28.51
step
  talk Chief Engineer Bilgewhizzle##7407
  accept More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Marin Noggenfogger##7564
  accept In Good Taste##2606 |goto Tanaris 51.81,28.66
step
  talk Nixx Sprocketspring##8126
  accept Show Your Work##3639 |goto Tanaris 52.48,27.33
step
  talk Alchemist Pestlezugg##5594
  accept Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Belt##7653 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Boots##7654 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Bracer##7655 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Chest##7656 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Helm##7657 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Leggings##7658 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Shoulders##7659 |goto Tanaris 51.38,28.67
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
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
  turnin Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Protector##8747 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8752 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8757 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Protector##8748 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8753 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8758 |goto Tanaris 64.2,51.42
step
  only Priest
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9257 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9269 |goto Tanaris 64.2,51.42
step
  only Warlock
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9270 |goto Tanaris 64.2,51.42
step
  only Druid
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9271 |goto Tanaris 64.2,51.42
step
  talk Andormu##20130
  turnin The Caverns of Time##10277 |goto Tanaris 58.43,54.28
step
  talk Soridormi##19935
  turnin The Vials of Eternity##10445 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Defender's Pledge##10460 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Restorer's Pledge##10461 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Champion's Pledge##10462 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Sage's Pledge##10463 |goto Tanaris 61.05,56.95
step
  talk Andormu##20130
  accept Old Hillsbrad##10282 |goto Tanaris 58.43,54.28
step
  talk Soridormi##19935
  accept Sage's Vow##10464 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Restorer's Vow##10465 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Champion's Vow##10466 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Defender's Vow##10467 |goto Tanaris 61.05,56.95
step
  turnin Stewvul, Ex-B.F.F.##8577 |goto Silverpine Forest 46.19,86.68 |tip {turninat}Silverpine Forest
step
  talk "Sea Wolf" MacKinley##2501
  turnin Deliver to MacKinley##2874 |goto Stranglethorn Vale 27.78,77.07 |tip {turninat}Stranglethorn Vale
step
  talk Elder Ragetotem##15573
  turnin Ragetotem the Elder##8671 |goto Tanaris 35.96,80.12
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
  talk Erozion##18723
  turnin Old Hillsbrad##10282 |goto Old Hillsbrad Foothills - Dungeon -1,-1 |tip {turninat}Old Hillsbrad Foothills - Dungeon
step
  talk Sprinkle##7583
  turnin In Good Taste##2606 |goto Tanaris 51.06,26.87
step
  talk Nixx Sprocketspring##8126
  turnin Show Your Work##3639 |goto Tanaris 52.48,27.33
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Another Power Source?##841 |goto Tanaris 52.46,28.51
step
  talk Alchemist Pestlezugg##5594
  turnin Noxious Lair Investigation##82 |goto Tanaris 50.89,26.96
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Belt##7653 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Boots##7654 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Bracer##7655 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Chest##7656 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Helm##7657 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Leggings##7658 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Shoulders##7659 |goto Tanaris 51.38,28.67
step
  turnin Into the Depths##3446 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |tip {turninat}The Temple of Atal'Hakkar - Dungeon
step
  turnin Secret of the Circle##3447 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |tip {turninat}The Temple of Atal'Hakkar - Dungeon
step
  talk Senior Surveyor Fizzledowser##7724
  accept The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  talk Sprinkle##7583
  accept Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
  talk Alchemist Pestlezugg##5594
  accept Calm Before the Storm##4509 |goto Tanaris 50.89,26.96
step
  talk Dirge Quikcleave##8125
  accept The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
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
  talk Narain Soothfancy##11811
  accept Scrying Goggles? No Problem!##8578 |goto Tanaris 65.24,18.58
step
  talk Zilzibin Drumlore##7010
  turnin Calm Before the Storm##4509 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  only Priest
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9257 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Protector##8748 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8753 |goto Tanaris 64.2,51.42
step
  only Warlock
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9270 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9269 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8758 |goto Tanaris 64.2,51.42
step
  only Druid
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9271 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Protector##8749 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8754 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8759 |goto Tanaris 64.2,51.42
step
  talk Soridormi##19935
  turnin Restorer's Vow##10465 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Defender's Vow##10467 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Sage's Vow##10464 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Champion's Vow##10466 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Sage's Oath##10468 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Restorer's Oath##10469 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Champion's Oath##10470 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Defender's Oath##10471 |goto Tanaris 61.05,56.95
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
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Narain Soothfancy##11811
  turnin Scrying Goggles? No Problem!##8578 |goto Tanaris 65.24,18.58
step
  talk Yeh'kinya##8579
  turnin The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Yeh'kinya##8579
  accept The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Anachronos##15192
  turnin The Path of the Protector##8749 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8754 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8759 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Protector##8750 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8755 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8760 |goto Tanaris 64.2,51.42
step
  talk Soridormi##19935
  turnin Defender's Oath##10471 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Champion's Oath##10470 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Restorer's Oath##10469 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Sage's Oath##10468 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Sage's Covenant##10472 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Restorer's Covenant##10473 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Champion's Covenant##10474 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Defender's Covenant##10475 |goto Tanaris 61.05,56.95
step
  talk Dirge Quikcleave##8125
  turnin Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  talk Marin Noggenfogger##7564
  turnin Delivery for Marin##2661 |goto Tanaris 51.81,28.66
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
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
  talk Yeh'kinya##8579
  turnin The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Narain Soothfancy##11811
  turnin Return to Narain##8587 |goto Tanaris 65.24,18.58
step
  talk Prospector Ironboot##10460
  accept The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Narain Soothfancy##11811
  accept The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  talk Anachronos##15192
  turnin The Path of the Protector##8750 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8755 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8760 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Protector of Kalimdor##8751 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Qiraji Conqueror##8756 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Grand Invoker##8761 |goto Tanaris 64.2,51.42
step
  talk Soridormi##19935
  turnin Sage's Covenant##10472 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Restorer's Covenant##10473 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Champion's Covenant##10474 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Defender's Covenant##10475 |goto Tanaris 61.05,56.95
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
  talk Narain Soothfancy##11811
  turnin The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  talk Prospector Ironboot##10460
  accept The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Narain Soothfancy##11811
  accept The Wrath of Neptulon##8729 |goto Tanaris 65.24,18.58
step
  talk Zilzibin Drumlore##7010
  turnin Rise of the Silithid##32 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  talk Anachronos##15192
  turnin The Wrath of Neptulon##8729 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Protector of Kalimdor##8751 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Qiraji Conqueror##8756 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Grand Invoker##8761 |goto Tanaris 64.2,51.42
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
  note {travel}Western Plaguelands
  goto Western Plaguelands 38.4,54.05
]])
