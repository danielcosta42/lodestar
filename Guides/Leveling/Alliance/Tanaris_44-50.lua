-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Tanaris (44-50)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Teldrassil (48-55)",
}, [[
step
  note {fp}Bera Stonehammer
  goto Tanaris 51.01,29.34 |tip {vendor}
step
  only completed(1188)
  talk Shreev##4708
  accept Safety First##1189 |goto Tanaris 50.96,27.24
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
  talk Spigot Operator Luglunket##7408
  accept Water Pouch Bounty##1707 |goto Tanaris 52.49,28.45
step
  talk Senior Surveyor Fizzledowser##7724
  accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  talk Curgle Cranklehop##7763
  accept Handle With Care##3022 |goto Tanaris 52.36,26.91
step
  note Use the untapped dowsing widget near the pool of water by Sandsorrow Watch. Once you have collected the sample, return the tapped dowsing widget to Senior Surveyor Fizzledowser in Gadgetzan.
  collect Tapped Dowsing Widget##8585 |q 992 |goto Tanaris 39,29 |tip {dropsfrom}Sandsorrow Watch Water Hole
step
  talk Senior Surveyor Fizzledowser##7724
  turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  talk Senior Surveyor Fizzledowser##7724
  accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
  talk Yeh'kinya##8579
  accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Stoley##7881
  accept Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
step
  click Wanted Poster##142122
  accept WANTED: Andre Firebeard##2875 |goto Tanaris 66.82,22.29
step
  talk Haughty Modiste##15165
  accept Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
  talk Security Chief Bilgewhizzle##7882
  accept Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  click Wanted Poster##142122
  accept WANTED: Caliph Scorpidsting##2781 |goto Tanaris 66.82,22.29
step
  note Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
  kill Wastewander Bandit##5618 |q 1690 |goto Tanaris 63.79,29.78
step
  note Bring five Centipaar insect parts from the Noxious Lair to Alchemist Pestlezugg in Gadgetzan.
  collect Centipaar Insect Parts##8587 |q 82 |goto Tanaris 33.28,44.39 |tip {dropsfrom}Centipaar Wasp, Centipaar Stinger, Centipaar Swarmer
step
  note Bring 5 Wastewander Water Pouches to Spigot Operator Luglunket in Gadgetzan.
  collect 5 Wastewander Water Pouch##8483 |q 1707 |goto Tanaris 61.71,38.21 |tip {dropsfrom}Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage
step
  note Bring the head of Caliph Scorpidsting to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect Caliph Scorpidsting's Head##8723 |q 2781 |goto Tanaris 61.77,38.17 |tip {dropsfrom}Caliph Scorpidsting
step
  note Bring Stoley's Shipment to Stoley in Steamwheedle Port.
  collect Stoley's Shipment##9244 |q 2873 |goto Tanaris 72.17,46.76 |tip {dropsfrom}Stolen Cargo
step
  note Bring Andre's Head to Security Chief Bilgewhizzle in Steamwheedle Port.
  collect Firebeard's Head##9246 |q 2875 |goto Tanaris 73.37,47.14 |tip {dropsfrom}Andre Firebeard
step
  note Haughty Modiste wants you to collect 20 Southsea Pirate Hats and return them to her at Steamwheedle Port in Tanaris.
  collect 20 Southsea Pirate Hat##20519 |q 8365 |goto Tanaris 72.95,46.18 |tip {dropsfrom}Southsea Pirate, Southsea Freebooter, Southsea Dock Worker
step
  note Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to kill 10 Southsea Pirates, 10 Southsea Freebooters, 10 Southsea Dock Workers and 10 Southsea Swashbucklers.
  kill Southsea Pirate##7855 |q 8366 |goto Tanaris 72.95,46.18
step
  talk Alchemist Pestlezugg##5594
  turnin Noxious Lair Investigation##82 |goto Tanaris 50.89,26.96
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
  talk Spigot Operator Luglunket##7408
  turnin Water Pouch Bounty##1707 |goto Tanaris 52.49,28.45
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin WANTED: Caliph Scorpidsting##2781 |goto Tanaris 52.46,28.51
step
  talk Chief Engineer Bilgewhizzle##7407
  accept More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  kill Glasshide Basilisk##5419 |goto Tanaris 45.64,32.27 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-17/TN!##351 |goto Tanaris 45.64,32.27
step
  talk Stoley##7881
  turnin Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
step
  talk Security Chief Bilgewhizzle##7882
  turnin WANTED: Andre Firebeard##2875 |goto Tanaris 67.06,23.89
step
  talk Haughty Modiste##15165
  turnin Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
  talk Security Chief Bilgewhizzle##7882
  turnin Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  talk Marvon Rivetseeker##7771
  accept Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  note Take down 10 Wastewander Shadow Mages, 8 Wastewander Rogues, and 6 Wastewander Assassins for Chief Engineer Bilgewhizzle in Gadgetzan.
  kill Wastewander Rogue##5615 |q 1691 |goto Tanaris 61.71,38.21
step
  note Marvon Rivetseeker in Tanaris wants you to collect 30 Gahz'ridian Ornaments.
  collect 30 Gahz'ridian Ornament##8443 |q 3161 |goto Tanaris 47.6,57.2 |tip {dropsfrom}Gahz'ridian
step
  talk Marvon Rivetseeker##7771
  turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  talk Homing Robot OOX-17/TN##7784
  turnin Find OOX-17/TN!##351 |goto Tanaris 60.23,64.72
step
  note Discover the fate of Junior Surveyor Scrimshank, and bring either him or his surveying equipment to Senior Surveyor Fizzledowser in Gadgetzan.
  collect Scrimshank's Surveying Gear##8593 |q 10 |goto Tanaris 55.96,71.17
step
  talk Senior Surveyor Fizzledowser##7724
  turnin The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept Insect Part Analysis##110 |goto Tanaris 50.21,27.48
step
  talk Marin Noggenfogger##7564
  accept The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  talk Andi Lynn##11758
  accept The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Alchemist Pestlezugg##5594
  turnin Insect Part Analysis##110 |goto Tanaris 50.89,26.96
step
  talk Alchemist Pestlezugg##5594
  accept Insect Part Analysis##113 |goto Tanaris 50.89,26.96
step
  talk Tran'rek##7876
  accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  talk Senior Surveyor Fizzledowser##7724
  turnin Insect Part Analysis##113 |goto Tanaris 50.21,27.48
step
  talk Senior Surveyor Fizzledowser##7724
  accept Rise of the Silithid##162 |goto Tanaris 50.21,27.48
step
  note Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.
  kill Dunemaul Brute##5474 |q 5863 |goto Tanaris 40.65,54.35
step
  only completed(2946,2966)
  talk Stone Watcher of Norgannon##7918
  accept The Stone Watcher##2954 |goto Tanaris 37.6,81.4
step
  only completed(2946,2966)
  note Learn the purpose of the Stone Watcher of Norgannon, and then interact with the Uldum Pedestal in the Tanaris desert.
  talk Stone Watcher of Norgannon##7918 |q 2954 |goto Tanaris 37.6,81.4
step
  only completed(2946,2966)
  turnin The Stone Watcher##2954 |goto Tanaris 37.63,81.4
step
  only completed(2946,2966)
  click Uldum Pedestal##142343
  accept Return to Ironforge##2977 |goto Tanaris 37.63,81.4
step
  talk Tooga##5955
  accept Tooga's Quest##1560 |goto Tanaris 30,70
step
  note Collect a Laden Dew Gland and bring it to Marin Noggenfogger in Gadgetzan.
  collect Laden Dew Gland##8428 |q 2605 |goto Tanaris 29.36,66.28 |tip {dropsfrom}Thistleshrub Dew Collector
step
  note Tran'rek in Gadgetzan wants you to kill 8 Gnarled Thistleshrubs and 8 Thistleshrub Rootshapers.
  kill Gnarled Thistleshrub##5490 |q 3362 |goto Tanaris 29.65,66.4
step
  talk Marin Noggenfogger##7564
  turnin The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  talk Tran'rek##7876
  turnin Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  talk Andi Lynn##11758
  turnin The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Marin Noggenfogger##7564
  accept In Good Taste##2606 |goto Tanaris 51.81,28.66
step
  talk Sprinkle##7583
  turnin In Good Taste##2606 |goto Tanaris 51.06,26.87
step
  note Show Tooga the way back to his wife, Torta.
  talk Torta##6015 |q 1560 |goto Tanaris 66.58,25.67
step
  talk Torta##6015
  turnin Tooga's Quest##1560 |goto Tanaris 66.58,25.67
step
  only completed(3380,3445)
  talk Marvon Rivetseeker##7771
  accept The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  only completed(1188)
  talk Razzeric##4706
  turnin Safety First##1189 |goto Thousand Needles 80.33,76.09 |tip {turninat}Thousand Needles
step
  talk Erelas Ambersky##7916
  turnin Handle With Care##3022 |goto Teldrassil 55.5,92.05 |tip {turninat}Teldrassil
step
  note Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
  use Screecher Spirit##8612 |q 3520 |goto Feralas 46.82,48.47 |tip {useit}
step
  only completed(3380,3445)
  note Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.
  collect Stone Circle##10556 |q 3444 |goto The Barrens 62.5,38.54 |tip {dropsfrom}Marvon's Chest
step
  talk Yeh'kinya##8579
  turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  only completed(3380,3445)
  talk Marvon Rivetseeker##7771
  turnin The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  only completed(2946,2966)
  talk Historian Karnik##2916
  turnin Return to Ironforge##2977 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  talk Gracina Spiritmight##7740
  turnin Rise of the Silithid##162 |goto Darnassus 41.83,85.62 |tip {turninat}Darnassus
step
  talk Gracina Spiritmight##7740
  accept March of the Silithid##4493 |goto Darnassus 41.83,85.62
step
  talk Alchemist Pestlezugg##5594
  turnin March of the Silithid##4493 |goto Tanaris 50.89,26.96
step
  note {travel}Teldrassil
  goto Teldrassil 55.22,91.46
]])
