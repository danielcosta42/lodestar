-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dustwallow Marsh (44-53)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Tanaris (41-48)",
	rev = "e7db408e",
}, [[
step
  ding 40
step
  only Mage completed(1954)
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage completed(1954)
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  only Mage completed(1954)
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Drazzit Dripvalve##270723
  accept Whelps are the Worst!##98205 |goto Dustwallow Marsh 41.01,75.73
step
  talk Drazzit Dripvalve##270723
  accept Dragon Scales, Post Burnt Tails##98215 |goto Dustwallow Marsh 41.01,75.73
step
  talk Gizzix Grimegurgle##270727
  accept Active Ingredient##98231 |goto Dustwallow Marsh 40.97,75.68
step
  note Slay 8 Searing Hatchlings and 8 Searing Whelps.
  kill Searing Whelp##4324 |q 98205/2 |goto Dustwallow Marsh 45.4,73.6
  kill Searing Hatchling##4323 |q 98205 |goto Dustwallow Marsh 45.4,73
step
  note Bring 20 Shed Dark Dragonscales to Drazzit Dripvalve.
  collect 20 Shed Dark Dragonscale##279934 |q 98215 |goto Dustwallow Marsh 44.26,75.39
step
  note Bring 10 Wyrmtail to Gizzix Grimegurgle.
  collect 10 Wyrmtail##280092 |q 98231 |goto Dustwallow Marsh 47.22,74.48
step
  talk Drazzit Dripvalve##270723
  turnin Whelps are the Worst!##98205 |goto Dustwallow Marsh 41.01,75.73
step
  talk Drazzit Dripvalve##270723
  turnin Dragon Scales, Post Burnt Tails##98215 |goto Dustwallow Marsh 41.01,75.73
step
  talk Gizzix Grimegurgle##270727
  turnin Active Ingredient##98231 |goto Dustwallow Marsh 40.97,75.68
step
  note {fp}Baldruc
  goto Dustwallow Marsh 67.48,51.3 |tip {vendor}
step
  talk Guard Jameson##271167
  accept Sword in the Slime##98233 |goto Dustwallow Marsh 65.5,45.39
step
  note Recover Jameson's Training Sword and bring it to Guard Jameson.
  collect Jameson's Training Sword##280203 |q 98233 |goto Dustwallow Marsh 51.81,54.62 |tip {dropsfrom}Corrosive Swamp Ooze
step
  talk Guard Jameson##271167
  turnin Sword in the Slime##98233 |goto Dustwallow Marsh 65.5,45.39
step
  only completed(95263) level>=48
  talk Sully McCleary##260271
  accept Shaw Needs To Know##95264 |goto Dustwallow Marsh 63.45,42.33
step
  only completed(95194) level>=48
  talk Sully McCleary##260146
  accept Watch Yer Back##95196 |goto Dustwallow Marsh 66.21,45.08
step
  only completed(95194) haveq(95196)
  note Meet Sully McCleary in Dustwallow Marsh and learn more about your mission.
  talk Sully McCleary##260271
  turnin Watch Yer Back##95196 |goto Dustwallow Marsh 63.45,42.33
step
  only completed(95194) completed(95196) level>=48
  talk Sully McCleary##260271
  accept The Return of the King?##95198 |goto Dustwallow Marsh 63.45,42.33
step
  only completed(95194) haveq(95198)
  note Use the SI:7 Disguise Kit to eavesdrop on Jaina and her inner circle at the Theramore Mage Tower.
  get The Return of the King? |q 95198
step
  only completed(95194) haveq(95198)
  talk Sully McCleary##260271
  turnin The Return of the King?##95198 |goto Dustwallow Marsh 63.45,42.33
step
  only completed(95194) completed(95198) level>=48
  talk Sully McCleary##260271
  accept A Bit of Wet Work##96381 |goto Dustwallow Marsh 63.45,42.33
step
  only completed(95194) haveq(96381)
  note Enter the Alcaz Prison and slay 15  Strashasz Soldiers, 8 Strashaz Enchantresses, and bring the head of Tidemistress Ca'zass to Sully McCleary.
  get A Bit of Wet Work |q 96381
step
  only completed(95194) haveq(96381)
  talk Sully McCleary##260271
  turnin A Bit of Wet Work##96381 |goto Dustwallow Marsh 63.45,42.33
step
  note {travel}Tanaris
  goto Tanaris 66.82,22.29
]])
