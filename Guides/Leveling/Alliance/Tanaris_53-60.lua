-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Tanaris (53-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Felwood (52-57)",
}, [[
step
  only completed(4787)
  talk Yeh'kinya##8579
  accept The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  only completed(4787)
  note Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
  collect Filled Egg of Hakkar##10662 |q 3528 |goto Tanaris 66.99,22.36
step
  only completed(4787)
  talk Yeh'kinya##8579
  turnin The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  note {fp}Bera Stonehammer
  goto Tanaris 51.01,29.34 |tip {vendor}
step
  only completed(4493,4494)
  talk Alchemist Pestlezugg##5594
  accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  talk Tran'rek##7876
  accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  click Egg-O-Matic##142071
  accept The Super Egg-O-Matic##2741 |goto Tanaris 52.39,26.97
step
  only completed(8922,8923)
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only completed(8922,8923)
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  only completed(4493,4494)
  note Bring a Gorishi Scent Gland and 5 Un'Goro Soil samples to Alchemist Pestlezugg in Gadgetzan.
  collect Gorishi Scent Gland##11837 |q 4496 |goto Un'Goro Crater 50.14,75.97 |tip {dropsfrom}Gorishi Wasp, Gorishi Worker, Gorishi Reaver
step
  note Collect 12 samples of Super Sticky Tar for Tran'rek in Gadgetzan.
  collect 12 Super Sticky Tar##11834 |q 4504 |goto Un'Goro Crater 58.98,31.38 |tip {dropsfrom}Tar Beast, Tar Lurker, Tar Lord
step
  collect Hippogryph Egg##8564 |q 2741 |goto Feralas 56.65,75.89
step
  only completed(4493,4494)
  talk Alchemist Pestlezugg##5594
  turnin Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  talk Tran'rek##7876
  turnin Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  turnin The Super Egg-O-Matic##2741 |goto Tanaris 52.39,26.97
step
  only completed(8922,8923)
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only completed(4493,4494)
  talk Alchemist Pestlezugg##5594
  accept Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  only completed(8922,8923)
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only completed(4493,4494)
  note Defeat the Gorishi Hive Queen once she is summoned.
  collect Gorishi Queen Brain##11835 |q 4507 |goto Un'Goro Crater 43.85,81.39 |tip {dropsfrom}Gorishi Hive Queen
step
  only completed(8922,8923)
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  only completed(4493,4494)
  talk Alchemist Pestlezugg##5594
  turnin Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  only completed(8922,8923)
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only completed(4493,4494)
  talk Alchemist Pestlezugg##5594
  accept Calm Before the Storm##4508 |goto Tanaris 50.89,26.96
step
  only completed(4493,4494)
  talk Gracina Spiritmight##7740
  turnin Calm Before the Storm##4508 |goto Darnassus 41.83,85.62 |tip {turninat}Darnassus
step
  only completed(4493,4494)
  talk Gracina Spiritmight##7740
  accept Calm Before the Storm##4510 |goto Darnassus 41.83,85.62
step
  only completed(4493,4494)
  talk Idriana##4155
  turnin Calm Before the Storm##4510 |goto Darnassus 39.39,42.44 |tip {turninat}Darnassus
step
  note {travel}Felwood
  goto Felwood 50.93,85.01
]])
