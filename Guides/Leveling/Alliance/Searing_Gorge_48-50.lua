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
  talk Dying Archaeologist##8417
  accept Release Them##3372 |goto Searing Gorge 41.14,25.56
step
  talk Master Smith Burninate##14624
  accept What the Flux?##7722 |goto Searing Gorge 38.8,28.51
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
  kill Incendosaur##9318 |q 7727 |goto Searing Gorge 49.49,26.48
step
  talk Zamael Lunthistle##8436
  accept Prayer to Elune##3377 |goto Searing Gorge 29.57,26.29
step
  talk Kalaran Windblade##8479
  accept Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  note Hansel Heavyhands wants you to kill 20 Heavy War Golems.
  kill Heavy War Golem##5854 |q 7723 |goto Searing Gorge 40.54,45.87
step
  talk Nilith Lokrav##8439
  accept Shadoweaver##3379 |goto Searing Gorge 40.99,74.95
step
  note Hansel Heavyhands wants you to kill 20 Greater Lava Spiders in the Searing Gorge. You can find Greater Lava Spiders in the plateaus and lava pools of the Searing Gorge.
  kill Greater Lava Spider##5858 |q 7724 |goto Searing Gorge 28.94,62.39
step
  talk Elder Ironband##15567
  accept Ironband the Elder##8651 |goto Searing Gorge 21.46,78.97
step
  talk Sarah Tanner##7868
  accept Elemental Leatherworking##5144 |goto Searing Gorge 63.56,75.97
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
  talk Dying Archaeologist##8417
  accept Rise, Obsidion!##3566 |goto Searing Gorge 41.14,25.56
step
  note Kill the group of Shadow Silk Poachers that wander the Searing Gorge. Nilith has reason to believe that there are five of them that need to be exterminated. Return to Nilith in the Searing Gorge when this task is complete.
  kill Shadowsilk Poacher##8442 |q 3379 |goto Searing Gorge 59.62,25.26
step
  talk Zamael Lunthistle##8436
  turnin Prayer to Elune##3377 |goto Searing Gorge 29.57,26.29
step
  talk Zamael Lunthistle##8436
  accept Prayer to Elune##3378 |goto Searing Gorge 29.57,26.29
step
  talk Kalaran Windblade##8479
  turnin Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  talk Nilith Lokrav##8439
  turnin Shadoweaver##3379 |goto Searing Gorge 40.99,74.95
step
  talk Astarii Starseeker##4090
  turnin Prayer to Elune##3378 |goto Darnassus 38.33,80.95 |tip {turninat}Darnassus
step
  talk Nilith Lokrav##8439
  accept The Undermarket##3385 |goto Searing Gorge 40.99,74.95
step
  talk Elder Ironband##15567
  turnin Ironband the Elder##8651 |goto Searing Gorge 21.46,78.97
step
  talk Sarah Tanner##7868
  turnin Elemental Leatherworking##5144 |goto Searing Gorge 63.56,75.97
step
  talk Curator Thorius##8256
  turnin Rise, Obsidion!##3566 |goto Ironforge 71.5,15.74 |tip {turninat}Ironforge
step
  talk Kalaran Windblade##8479
  turnin The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  note Slay Trade Master Kovic and his minion Clunk. Retrieve the Trader's Satchel from his corpse and return it to Nilith.
  kill Trade Master Kovic##8444 |q 3385 |goto Searing Gorge 34.71,51.99
step
  talk Nilith Lokrav##8439
  turnin The Undermarket##3385 |goto Searing Gorge 40.99,74.95
step
  talk Nilith Lokrav##8439
  accept The Undermarket##3402 |goto Searing Gorge 40.99,74.95
step
  talk Vizzklick##6568
  turnin The Undermarket##3402 |goto Tanaris 51.01,27.36 |tip {turninat}Tanaris
step
  talk Kalaran Windblade##8479
  turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
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
  note Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
  collect Sentry Brazier##149025 |q 3463 |goto Searing Gorge 35.67,60.68
step
  talk Squire Maltrake##8509
  turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39.0
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 25.98,31.4
]])
