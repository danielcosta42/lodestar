-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Searing Gorge (48-50)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Swamp of Sorrows (37-58)",
}, [[
step
  note {fp}Lanie Reed
  goto Searing Gorge 37.94,30.86 |tip {vendor}
step
  kill Margol the Rager##5833 |goto Searing Gorge 73.52,82.31 |tip Loot the quest item here — it starts the quest.
  accept The Horn of the Beast##3181 |goto Searing Gorge 73.52,82.31
step
  talk Sarah Tanner##7868
  accept Elemental Leatherworking##5144 |goto Searing Gorge 63.56,75.97
step
  note Bring 2 Heart of Fire, 2 Globe of Water, 2 Core of Earth, and 2 Breath of Wind to Sarah Tanner in Searing Gorge.
  collect 2 Heart of Fire##7077 |q 5144 |goto Badlands 42.1,28.88 |tip {dropsfrom}Ambassador Infernus, Blazing Elemental, Inferno Elemental
step
  talk Dorius Stonetender##8284
  accept Suntara Stones##3367 |goto Searing Gorge 63.92,60.99
step
  click Wooden Outhouse##173265
  accept Caught!##4449 |goto Searing Gorge 65.59,62.17
step
  note Kill 8 Dark Iron Geologists and bring 15 pieces of Silk Cloth to the person locked in the outhouse in Searing Gorge.
  kill Dark Iron Geologist##5839 |q 4449 |goto Searing Gorge 63.9,59.56
step
  talk Nilith Lokrav##8439
  accept Shadoweaver##3379 |goto Searing Gorge 40.99,74.95
step
  talk Mountaineer Pebblebitty##3836
  turnin The Horn of the Beast##3181 |goto Loch Modan 18.18,84.01 |tip {turninat}Loch Modan
step
  talk Elder Ironband##15567
  accept Ironband the Elder##8651 |goto Searing Gorge 21.46,78.97
step
  talk Kalaran Windblade##8479
  accept Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  kill Dark Iron Steamsmith##5840 |goto Searing Gorge 40.01,49.65 |tip Loot the quest item here — it starts the quest.
  accept The Key to Freedom##4451 |goto Searing Gorge 40.01,49.65
step
  turnin Suntara Stones##3367 |goto Searing Gorge 74.45,19.29
step
  click Singed Letter##175704
  accept Suntara Stones##3368 |goto Searing Gorge 74.45,19.29
step
  talk Dying Archaeologist##8417
  accept Release Them##3372 |goto Searing Gorge 41.14,25.56
step
  note Find the Mysterious Artifact being guarded by the Twilight's Hammer Idolaters in the northwest quadrant of the Searing Gorge and bring it to the Altar of Suntara in the Slag Pit.
  collect Mysterious Artifact##10442 |q 3372 |goto Searing Gorge 29.14,25.87 |tip {dropsfrom}Twilight Artifact
step
  click Wanted/Missing/Lost & Found##179827
  accept WANTED: Overseer Maltorius##7701 |goto Searing Gorge 37.65,26.47
step
  note Deep within the Slag Pit of the Cauldron, in the Searing Gorge, you will find the traitorous Dark Iron dwarf named Overseer Maltorius.
  collect Head of Overseer Maltorius##18946 |q 7701 |goto Searing Gorge 40.77,35.89 |tip {dropsfrom}Overseer Maltorius
step
  talk Master Smith Burninate##14624
  accept What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  note Somewhere in the Slag Pit of the Cauldron you will find the Secret Plans: Fiery Flux that Overseer Maltorius stole. Find those plans and return them to Master Smith Burninate in the Searing Gorge.
  collect Secret Plans: Fiery Flux##18922 |q 7722 |goto Searing Gorge 40.45,35.74
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
  click Wanted/Missing/Lost & Found##179827
  accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 37.65,26.47
step
  note Find and return the Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in the Searing Gorge.
  collect Smithing Tuyere##18959 |q 7728 |goto Searing Gorge 40.01,49.65 |tip {dropsfrom}Dark Iron Steamsmith
step
  click Wanted/Missing/Lost & Found##179827
  accept JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 37.65,26.47
step
  note Hansel Heavyhands wants you to kill 20 Incendosaurs.
  kill Incendosaur##9318 |q 7727 |goto Searing Gorge 49.49,26.48
step
  note Kill the group of Shadow Silk Poachers that wander the Searing Gorge. Nilith has reason to believe that there are five of them that need to be exterminated. Return to Nilith in the Searing Gorge when this task is complete.
  kill Shadowsilk Poacher##8442 |q 3379 |goto Searing Gorge 59.62,25.26
step
  talk Zamael Lunthistle##8436
  accept Prayer to Elune##3377 |goto Searing Gorge 29.57,26.29
step
  talk Sarah Tanner##7868
  turnin Elemental Leatherworking##5144 |goto Searing Gorge 63.56,75.97
step
  turnin Caught!##4449 |goto Searing Gorge 65.59,62.17
step
  turnin The Key to Freedom##4451 |goto Searing Gorge 65.59,62.17
step
  click Wooden Outhouse##173265
  accept Ledger from Tanaris##4450 |goto Searing Gorge 65.59,62.17
step
  note Take the copy of Goodsteel's Ledger and then find the items listed in it before seeking Krinkle Goodsteel in Tanaris.
  collect Goodsteel Ledger##11727 |q 4450 |goto Searing Gorge 65.5,62.19
step
  talk Nilith Lokrav##8439
  turnin Shadoweaver##3379 |goto Searing Gorge 40.99,74.95
step
  talk Nilith Lokrav##8439
  accept The Undermarket##3385 |goto Searing Gorge 40.99,74.95
step
  note Hansel Heavyhands wants you to kill 20 Greater Lava Spiders in the Searing Gorge. You can find Greater Lava Spiders in the plateaus and lava pools of the Searing Gorge.
  kill Greater Lava Spider##5858 |q 7724 |goto Searing Gorge 28.94,62.39
step
  talk Elder Ironband##15567
  turnin Ironband the Elder##8651 |goto Searing Gorge 21.46,78.97
step
  talk Kalaran Windblade##8479
  turnin Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  note Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
  collect 4 Heart of Flame##10509 |q 3442 |goto Searing Gorge 57.56,46.7 |tip {dropsfrom}Blazing Elemental, Inferno Elemental, Magma Elemental
step
  note Hansel Heavyhands wants you to kill 20 Heavy War Golems.
  kill Heavy War Golem##5854 |q 7723 |goto Searing Gorge 40.54,45.87
step
  note Slay 15 Dark Iron Taskmasters and 15 Dark Iron Slavers. Return to Taskmaster Scrange in the Searing Gorge once you have accomplished this task.
  kill Dark Iron Taskmaster##5846 |q 7729 |goto Searing Gorge 42.74,39.64
step
  note Slay Trade Master Kovic and his minion Clunk. Retrieve the Trader's Satchel from his corpse and return it to Nilith.
  kill Trade Master Kovic##8444 |q 3385 |goto Searing Gorge 34.71,51.99
step
  talk Lookout Captain Lolo Longstriker##14634
  turnin WANTED: Overseer Maltorius##7701 |goto Searing Gorge 37.74,26.56
step
  talk Krinkle Goodsteel##5411
  turnin Ledger from Tanaris##4450 |goto Tanaris 51.46,28.81 |tip {turninat}Tanaris
step
  talk Curator Thorius##8256
  turnin Suntara Stones##3368 |goto Ironforge 71.5,15.74 |tip {turninat}Ironforge
step
  talk Master Smith Burninate##14624
  turnin What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Hansel Heavyhands##14627
  turnin Curse These Fat Fingers##7723 |goto Searing Gorge 38.58,27.81
step
  turnin Release Them##3372 |goto Searing Gorge 41.25,25.41
step
  talk Hansel Heavyhands##14627
  turnin Fiery Menace!##7724 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.58,27.81
step
  talk Taskmaster Scrange##14626
  turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 38.97,27.51
step
  talk Taskmaster Scrange##14626
  turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 38.97,27.51
step
  talk Dying Archaeologist##8417
  accept Rise, Obsidion!##3566 |goto Searing Gorge 41.14,25.56
step
  note Slay Lathoric the Black and Obsidion, and return to Thorius in Ironforge with the Head of Lathoric the Black and the Heart of Obsidion.
  collect Head of Lathoric the Black##10447 |q 3566 |goto Searing Gorge 41.14,25.56 |tip {dropsfrom}Lathoric the Black
step
  talk Zamael Lunthistle##8436
  turnin Prayer to Elune##3377 |goto Searing Gorge 29.57,26.29
step
  talk Zamael Lunthistle##8436
  accept Prayer to Elune##3378 |goto Searing Gorge 29.57,26.29
step
  note Find the Prayer to Elune and take it to Astarii Starseeker in Darnassus.
  collect Prayer to Elune##10458 |q 3378 |goto Searing Gorge 23.52,36.55 |tip {dropsfrom}Twilight Dark Shaman, Twilight Fire Guard, Twilight Geomancer
step
  talk Astarii Starseeker##4090
  turnin Prayer to Elune##3378 |goto Darnassus 38.33,80.95 |tip {turninat}Darnassus
step
  talk Nilith Lokrav##8439
  turnin The Undermarket##3385 |goto Searing Gorge 40.99,74.95
step
  talk Nilith Lokrav##8439
  accept The Undermarket##3402 |goto Searing Gorge 40.99,74.95
step
  talk Kalaran Windblade##8479
  turnin The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  note Bring 8 Thorium Plated Daggers to Kalaran Windblade.
  collect 8 Thorium Plated Dagger##10551 |q 3443 |goto Searing Gorge 63.9,59.56 |tip {dropsfrom}Dark Iron Geologist, Dark Iron Steamsmith, Slave Worker
step
  talk Vizzklick##6568
  turnin The Undermarket##3402 |goto Tanaris 51.01,27.36 |tip {turninat}Tanaris
step
  talk Curator Thorius##8256
  turnin Rise, Obsidion!##3566 |goto Ironforge 71.5,15.74 |tip {turninat}Ironforge
step
  talk Kalaran Windblade##8479
  turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  note Find and return a Symbol of Ragnaros to Kalaran Windblade.
  collect Symbol of Ragnaros##10552 |q 3452 |goto Searing Gorge 23.52,36.55 |tip {dropsfrom}Twilight Dark Shaman, Twilight Fire Guard, Twilight Geomancer
step
  talk Kalaran Windblade##8479
  turnin The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
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
  turnin Squire Maltrake##3462 |goto Searing Gorge 39.17,39.0
step
  talk Squire Maltrake##8509
  accept Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39.0
step
  talk Squire Maltrake##8509
  turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39.0
step
  click Hoard of the Black Dragonflight##149502
  accept Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  turnin Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 25.98,31.4
]])
