-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Tanaris (50-54)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Azshara (51-58)",
	rev = "0f1f0196",
}, [[
step
  ding 49
step
  talk Tooga##5955
  accept Tooga's Quest##1560 |goto Tanaris 30,70
step
  talk Tooga##5955
  accept Oasis##97540 |goto Tanaris 30,70
step
  note Show the newly quenched Tooga the way back to his wife, Torta.
  talk Tooga##5955
  turnin Oasis##97540 |goto Tanaris 30,70
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
  note Show Tooga the way back to his wife, Torta.
  talk Torta##6015 |q 1560 |goto Tanaris 66.58,25.67
step
  talk Torta##6015
  turnin Tooga's Quest##1560 |goto Tanaris 66.58,25.67
step
  note {fp}Bera Stonehammer
  goto Tanaris 51.01,29.34 |tip {vendor}
step
  talk Tran'rek##7876
  accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  only completed(3380,3445)
  talk Marvon Rivetseeker##7771
  accept The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  note Tran'rek in Gadgetzan wants you to kill 8 Gnarled Thistleshrubs and 8 Thistleshrub Rootshapers.
  kill Thistleshrub Rootshaper##5485 |q 3362/2 |goto Tanaris 29.69,66.35
  kill Gnarled Thistleshrub##5490 |q 3362 |goto Tanaris 29.65,66.4
step
  talk Tran'rek##7876
  turnin Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  talk Tran'rek##7876
  accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  click Egg-O-Matic##142071
  accept The Super Egg-O-Matic##2741 |goto Tanaris 52.39,26.97
step
  only completed(3380,3445)
  note Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.
  collect Stone Circle##10556 |q 3444 |goto The Barrens 62.5,38.54 |tip {dropsfrom}Marvon's Chest
step
  only completed(3380,3445)
  talk Marvon Rivetseeker##7771
  turnin The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  only completed(162) level>=50
  talk Gracina Spiritmight##7740
  accept March of the Silithid##4493 |goto Darnassus 41.83,85.62
step
  only completed(162) haveq(4493)
  note Speak to Alchemist Pestlezugg in Gadgetzan.
  talk Alchemist Pestlezugg##5594
  turnin March of the Silithid##4493 |goto Tanaris 50.89,26.96
step
  only completed(162) completed(4493) level>=50
  talk Alchemist Pestlezugg##5594
  accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  note Collect 12 samples of Super Sticky Tar for Tran'rek in Gadgetzan.
  collect 12 Super Sticky Tar##11834 |q 4504 |goto Un'Goro Crater 58.98,31.38 |tip {dropsfrom}Tar Beast, Tar Lurker, Tar Lord
step
  only completed(162) haveq(4496)
  note Bring a Gorishi Scent Gland and 5 Un'Goro Soil samples to Alchemist Pestlezugg in Gadgetzan.
  collect 5 Un'Goro Soil##11018 |q 4496/2 |goto Un'Goro Crater 47,52.9 |tip {dropsfrom}Un'Goro Dirt Pile
  collect Gorishi Scent Gland##11837 |q 4496 |goto Un'Goro Crater 50.14,75.97 |tip {dropsfrom}Gorishi Wasp, Gorishi Worker, Gorishi Reaver
step
  talk Tran'rek##7876
  turnin Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  only completed(162) haveq(4496)
  talk Alchemist Pestlezugg##5594
  turnin Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  only completed(162) completed(4496) level>=50
  talk Alchemist Pestlezugg##5594
  accept Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  collect Hippogryph Egg##8564 |q 2741 |goto Feralas 56.65,75.89
step
  turnin The Super Egg-O-Matic##2741 |goto Tanaris 52.39,26.97
step
  only completed(162) haveq(4507)
  note Defeat the Gorishi Hive Queen once she is summoned.
  collect Gorishi Queen Brain##11835 |q 4507 |goto Un'Goro Crater 43.85,81.39 |tip {dropsfrom}Gorishi Hive Queen
step
  only completed(162) haveq(4507)
  talk Alchemist Pestlezugg##5594
  turnin Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  only completed(162) completed(4507) level>=50
  talk Alchemist Pestlezugg##5594
  accept Calm Before the Storm##4508 |goto Tanaris 50.89,26.96
step
  only completed(162) haveq(4508)
  note Bring Pestlezugg's Un'Goro Report to Gracina Spiritmight in Darnassus.
  talk Gracina Spiritmight##7740
  turnin Calm Before the Storm##4508 |goto Darnassus 41.83,85.62 |tip {turninat}Darnassus
step
  only completed(162) completed(4508) level>=50
  talk Gracina Spiritmight##7740
  accept Calm Before the Storm##4510 |goto Darnassus 41.83,85.62
step
  only completed(162) haveq(4510)
  note Bring the Bank Voucher to Idriana in the bank of Darnassus.
  talk Idriana##4155
  turnin Calm Before the Storm##4510 |goto Darnassus 39.39,42.44 |tip {turninat}Darnassus
step
  note {travel}Azshara
  goto Azshara 11.37,78.17
]])
