-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Searing Gorge (48-50)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Blasted Lands (50-50)",
}, [[
step
  kill Dark Iron Steamsmith##5840 |goto Searing Gorge 40.58,49.48 |tip Loot the quest item here — it starts the quest.
  accept The Key to Freedom##4451 |goto Searing Gorge 40.58,49.48
step
  talk Kalaran Windblade##8479
  accept Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  note Listen as Kalaran Windblade tells his story.
  talk Kalaran Windblade##8479 |q 3441 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  turnin Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  turnin The Key to Freedom##4451 |goto Searing Gorge 65.59,62.17
step
  talk Kalaran Windblade##8479
  accept The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  note Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
  collect 4 Heart of Flame##10509 |q 3442 |goto Searing Gorge 57.56,46.7 |tip {dropsfrom}Blazing Elemental, Inferno Elemental, Magma Elemental
step
  talk Kalaran Windblade##8479
  turnin The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  note Bring 8 Thorium Plated Daggers to Kalaran Windblade.
  collect 8 Thorium Plated Dagger##10551 |q 3443 |goto Searing Gorge 63.66,59.26 |tip {dropsfrom}Dark Iron Geologist, Dark Iron Steamsmith, Slave Worker
step
  talk Kalaran Windblade##8479
  turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  note {fp}Grisha
  goto Searing Gorge 34.84,30.87 |tip {vendor}
step
  click Wanted/Missing/Lost & Found##179827
  accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 37.65,26.47
step
  click Wanted/Missing/Lost & Found##179827
  accept JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 37.65,26.47
step
  talk Hansel Heavyhands##14627
  accept Curse These Fat Fingers##7723 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  accept Fiery Menace!##7724 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  accept Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.58,27.81
step
  note Hansel Heavyhands wants you to kill 20 Incendosaurs.
  kill Incendosaur##9318 |q 7727 |goto Searing Gorge 48.46,26.48
step
  talk Hansel Heavyhands##14627
  turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.58,27.81
step
  click Wanted/Missing/Lost & Found##179827
  accept WANTED: Overseer Maltorius##7701 |goto Searing Gorge 37.65,26.47
step
  talk Master Smith Burninate##14624
  accept What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Kalaran Windblade##8479
  accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  note Find and return a Symbol of Ragnaros to Kalaran Windblade.
  kill Twilight Dark Shaman##5860 |goto Searing Gorge 23.52,36.55 |elite
  collect Symbol of Ragnaros##10552 |q 3452 |goto Searing Gorge 23.52,36.55
step
  note Deep within the Slag Pit of the Cauldron, in the Searing Gorge, you will find the traitorous Dark Iron dwarf named Overseer Maltorius.
  kill Overseer Maltorius##14621 |goto Searing Gorge 40.77,35.89 |elite
  collect Head of Overseer Maltorius##18946 |q 7701 |goto Searing Gorge 40.77,35.89
step
  note Somewhere in the Slag Pit of the Cauldron you will find the Secret Plans: Fiery Flux that Overseer Maltorius stole. Find those plans and return them to Master Smith Burninate in the Searing Gorge.
  collect Secret Plans: Fiery Flux##18922 |q 7722 |goto Searing Gorge 40.45,35.74
step
  note Hansel Heavyhands wants you to kill 20 Heavy War Golems.
  kill Heavy War Golem##5854 |q 7723 |goto Searing Gorge 39.86,44.17
step
  note Hansel Heavyhands wants you to kill 20 Greater Lava Spiders in the Searing Gorge. You can find Greater Lava Spiders in the plateaus and lava pools of the Searing Gorge.
  kill Greater Lava Spider##5858 |q 7724 |goto Searing Gorge 29.31,62.39
step
  note Find and return the Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in the Searing Gorge.
  collect Smithing Tuyere##18959 |q 7728 |goto Searing Gorge 40.58,49.48 |tip {dropsfrom}Dark Iron Steamsmith
step
  note Slay 15 Dark Iron Taskmasters and 15 Dark Iron Slavers. Return to Taskmaster Scrange in the Searing Gorge once you have accomplished this task.
  kill Dark Iron Taskmaster##5846 |q 7729 |goto Searing Gorge 43.12,40.37
step
  talk Kalaran Windblade##8479
  turnin The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  note Wait for Kalaran Windblade to complete the Torch of Retribution.
  talk Kalaran Windblade##8479 |q 3453 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  turnin The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3454 |goto Searing Gorge 39.06,38.99
step
  turnin The Torch of Retribution##3454 |goto Searing Gorge 39.06,39.07
step
  talk Kalaran Windblade##8479
  accept Squire Maltrake##3462 |goto Searing Gorge 39.06,38.99
step
  talk Squire Maltrake##8509
  turnin Squire Maltrake##3462 |goto Searing Gorge 39.17,39
step
  talk Lookout Captain Lolo Longstriker##14634
  turnin WANTED: Overseer Maltorius##7701 |goto Searing Gorge 37.74,26.56
step
  talk Master Smith Burninate##14624
  turnin What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Hansel Heavyhands##14627
  turnin Curse These Fat Fingers##7723 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  turnin Fiery Menace!##7724 |goto Searing Gorge 38.58,27.81
step
  talk Taskmaster Scrange##14626
  turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 38.97,27.51
step
  talk Taskmaster Scrange##14626
  turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 38.97,27.51
step
  talk Squire Maltrake##8509
  accept Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  note Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
  collect Sentry Brazier##149025 |q 3463 |goto Searing Gorge 35.67,60.68
step
  talk Squire Maltrake##8509
  turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  click Hoard of the Black Dragonflight##149502
  accept Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  turnin Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  note {travel}Blasted Lands
  goto Blasted Lands 50.55,14.2
]])
