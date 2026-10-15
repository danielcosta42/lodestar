-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Swamp of Sorrows (35-44)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Thousand Needles (37-41)",
	rev = "638caa37",
}, [[
step
  ding 31
step
  talk Magtoor##1776
  accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  note {fp}Breyk
  goto Swamp of Sorrows 46.07,54.83 |tip {vendor}
step
  talk Helgrum the Swift##1442
  accept Neeka Bloodscar##1418 |goto Swamp of Sorrows 47.74,55.2
step
  talk Dar##5591
  accept Lost in Transit##93663 |goto Swamp of Sorrows 44.7,57.21
step
  note Find the missing courier, and ensure Dar's shipment is delivered to the Harborage.
  collect Courier's Shipment##260452 |q 93663 |goto Swamp of Sorrows 44.7,57.21
step
  note Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
  collect 6 Draenethyst Crystal##6071 |q 1389 |goto Swamp of Sorrows 62.08,22.45 |tip {dropsfrom}Draenethyst Crystals
step
  talk Magtoor##1776
  turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Magtoor##1776
  turnin Lost in Transit##93663 |goto Swamp of Sorrows 25.98,31.4
step
  talk Galen Goodward##5391
  accept Galen's Escape##1393 |goto Swamp of Sorrows 65.47,18.16
step
  note Escort Galen out of danger, then find his camp in the Swamp of Sorrows and open his strongbox.
  goto Swamp of Sorrows 53.08,29.55 |tip Escort Galen out of the Fallow Sanctuary.
step
  turnin Galen's Escape##1393 |goto Swamp of Sorrows 47.81,39.76
step
  kill Noboru the Cudgel##5477 |goto Swamp of Sorrows 54.9,34.1 |tip Loot the quest item here — it starts the quest.
  accept Noboru the Cudgel##1392 |goto Swamp of Sorrows 54.9,34.1
step
  note Bring Noboru's Cudgel to the leader of The Harborage in the Swamp of Sorrows.
  talk Magtoor##1776
  turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.98,31.4
step
  only level>=35
  talk Dar##5591
  accept Lack of Surplus##698 |goto Swamp of Sorrows 44.7,57.21
step
  only haveq(698)
  note Bring 8 Unprepared Sawtooth Flanks to Tok'Kar in Swamp of Sorrows.
  collect 8 Unprepared Sawtooth Flank##6169 |q 698 |goto Swamp of Sorrows 55.17,41.34 |tip {dropsfrom}Sawtooth Crocolisk, Sawtooth Snapper
step
  only haveq(698)
  talk Tok'Kar##5592
  turnin Lack of Surplus##698 |goto Swamp of Sorrows 81.32,80.97
step
  only completed(698) level>=35
  talk Tok'Kar##5592
  accept Lack of Surplus##699 |goto Swamp of Sorrows 81.32,80.97
step
  only haveq(699)
  note Bring 6 Sawtooth Snapper Claws to Tok'Kar in the Swamp of Sorrows.
  collect 6 Sawtooth Snapper Claw##6168 |q 699 |goto Swamp of Sorrows 79.44,26.73 |tip {dropsfrom}Sawtooth Snapper
step
  only haveq(699)
  talk Tok'Kar##5592
  turnin Lack of Surplus##699 |goto Swamp of Sorrows 81.32,80.97
step
  only level>=38
  talk Fel'zerul##1443
  accept Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  only haveq(1424)
  note Fel'zerul in Stonard wants you to gather 10 Atal'ai Artifacts.
  collect 10 Atal'ai Artifact##6175 |q 1424 |goto Swamp of Sorrows 72.53,53.11
step
  only haveq(1424)
  talk Fel'zerul##1443
  turnin Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  only completed(1424) level>=38
  talk Fel'zerul##1443
  accept The Atal'ai Exile##1429 |goto Swamp of Sorrows 47.93,54.78
step
  only level>=35
  talk Dar##5591
  accept Fresh Meat##1430 |goto Swamp of Sorrows 44.7,57.21
step
  only haveq(1430)
  note Bring 10 Monstrous Crawler Legs to Dar in the Swamp of Sorrows.
  collect 10 Monstrous Crawler Leg##6184 |q 1430 |goto Swamp of Sorrows 94.2,57.8 |tip {dropsfrom}Monstrous Crawler
step
  only haveq(1430)
  talk Dar##5591
  turnin Fresh Meat##1430 |goto Swamp of Sorrows 44.7,57.21
step
  only completed(699) level>=35
  talk Tok'Kar##5592
  accept Threat From the Sea##1422 |goto Swamp of Sorrows 81.32,80.97
step
  only haveq(1422)
  note Speak to Katar in the Swamp of Sorrows.
  talk Katar##5593
  turnin Threat From the Sea##1422 |goto Swamp of Sorrows 83.76,80.41
step
  only completed(1422) level>=35
  talk Katar##5593
  accept Threat From the Sea##1426 |goto Swamp of Sorrows 83.76,80.41
step
  only haveq(1426)
  note Kill 10 Marsh Murlocs, 10 Marsh Inkspewer, and 10 Marsh Flesheater, then return to Katar in the Swamp of Sorrows.
  kill Marsh Inkspewer##750 |q 1426/2 |goto Swamp of Sorrows 88.19,80.18
  kill Marsh Murloc##747 |q 1426/1 |goto Swamp of Sorrows 85.93,84.97
  kill Marsh Flesheater##751 |q 1426 |goto Swamp of Sorrows 63.22,84.91
step
  only haveq(1426)
  talk Katar##5593
  turnin Threat From the Sea##1426 |goto Swamp of Sorrows 83.76,80.41
step
  only completed(1426) level>=35
  talk Katar##5593
  accept Threat From the Sea##1427 |goto Swamp of Sorrows 83.76,80.41
step
  only haveq(1427)
  note Speak with Tok'Kar in the Swamp of Sorrows.
  talk Tok'Kar##5592
  turnin Threat From the Sea##1427 |goto Swamp of Sorrows 81.32,80.97
step
  only completed(1427) level>=35
  talk Katar##5593
  accept Continued Threat##1428 |goto Swamp of Sorrows 83.76,80.41
step
  only haveq(1428)
  note Kill 10 Marsh Inkspewers, 10 Marsh Flesheaters, and 10 Marsh Oracles, then return to Katar in the Swamp of Sorrows.
  kill Marsh Inkspewer##750 |q 1428/1 |goto Swamp of Sorrows 88.19,80.18
  kill Marsh Flesheater##751 |q 1428/2 |goto Swamp of Sorrows 63.22,84.91
  kill Marsh Oracle##752 |q 1428 |goto Swamp of Sorrows 61.41,84.34
step
  only haveq(1428)
  talk Katar##5593
  turnin Continued Threat##1428 |goto Swamp of Sorrows 83.76,80.41
step
  note Speak with Neeka Bloodscar.
  talk Neeka Bloodscar##5394
  turnin Neeka Bloodscar##1418 |goto Badlands 6.49,47.2 |tip {turninat}Badlands
step
  note {travel}Thousand Needles
  goto Thousand Needles 32.24,22.17
]])
