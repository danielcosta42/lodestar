-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Swamp of Sorrows (38-44)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stranglethorn Vale (43-47)",
}, [[
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
  note Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
  collect 6 Draenethyst Crystal##6071 |q 1389 |goto Swamp of Sorrows 62.08,22.45 |tip {dropsfrom}Draenethyst Crystals
step
  talk Magtoor##1776
  turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Galen Goodward##5391
  accept Galen's Escape##1393 |goto Swamp of Sorrows 65.47,18.16
step
  turnin Galen's Escape##1393 |goto Swamp of Sorrows 47.81,39.76
step
  kill Noboru the Cudgel##5477 |goto Swamp of Sorrows 54.9,34.1 |tip Loot the quest item here — it starts the quest.
  accept Noboru the Cudgel##1392 |goto Swamp of Sorrows 54.9,34.1
step
  talk Magtoor##1776
  turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.98,31.4
step
  talk Dar##5591
  accept Lack of Surplus##698 |goto Swamp of Sorrows 44.7,57.21
step
  note Bring 8 Unprepared Sawtooth Flanks to Tok'Kar in Swamp of Sorrows.
  collect 8 Unprepared Sawtooth Flank##6169 |q 698 |goto Swamp of Sorrows 55.17,41.34 |tip {dropsfrom}Sawtooth Crocolisk, Sawtooth Snapper
step
  talk Tok'Kar##5592
  turnin Lack of Surplus##698 |goto Swamp of Sorrows 81.32,80.97
step
  talk Tok'Kar##5592
  accept Lack of Surplus##699 |goto Swamp of Sorrows 81.32,80.97
step
  note Bring 6 Sawtooth Snapper Claws to Tok'Kar in the Swamp of Sorrows.
  collect 6 Sawtooth Snapper Claw##6168 |q 699 |goto Swamp of Sorrows 79.44,26.73 |tip {dropsfrom}Sawtooth Snapper
step
  talk Tok'Kar##5592
  turnin Lack of Surplus##699 |goto Swamp of Sorrows 81.32,80.97
step
  talk Fel'zerul##1443
  accept Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  note Fel'zerul in Stonard wants you to gather 10 Atal'ai Artifacts.
  collect 10 Atal'ai Artifact##6175 |q 1424 |goto Swamp of Sorrows 72.53,53.11
step
  talk Fel'zerul##1443
  turnin Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  talk Fel'zerul##1443
  accept The Atal'ai Exile##1429 |goto Swamp of Sorrows 47.93,54.78
step
  talk Dar##5591
  accept Fresh Meat##1430 |goto Swamp of Sorrows 44.7,57.21
step
  note Bring 10 Monstrous Crawler Legs to Dar in the Swamp of Sorrows.
  collect 10 Monstrous Crawler Leg##6184 |q 1430 |goto Swamp of Sorrows 94.2,57.8 |tip {dropsfrom}Monstrous Crawler
step
  talk Dar##5591
  turnin Fresh Meat##1430 |goto Swamp of Sorrows 44.7,57.21
step
  talk Tok'Kar##5592
  accept Threat From the Sea##1422 |goto Swamp of Sorrows 81.32,80.97
step
  talk Katar##5593
  turnin Threat From the Sea##1422 |goto Swamp of Sorrows 83.76,80.41
step
  talk Katar##5593
  accept Threat From the Sea##1426 |goto Swamp of Sorrows 83.76,80.41
step
  note Kill 10 Marsh Murlocs, 10 Marsh Inkspewer, and 10 Marsh Flesheater, then return to Katar in the Swamp of Sorrows.
  kill Marsh Murloc##747 |q 1426 |goto Swamp of Sorrows 85.93,84.97
step
  talk Katar##5593
  turnin Threat From the Sea##1426 |goto Swamp of Sorrows 83.76,80.41
step
  talk Katar##5593
  accept Threat From the Sea##1427 |goto Swamp of Sorrows 83.76,80.41
step
  talk Tok'Kar##5592
  turnin Threat From the Sea##1427 |goto Swamp of Sorrows 81.32,80.97
step
  talk Katar##5593
  accept Continued Threat##1428 |goto Swamp of Sorrows 83.76,80.41
step
  note Kill 10 Marsh Inkspewers, 10 Marsh Flesheaters, and 10 Marsh Oracles, then return to Katar in the Swamp of Sorrows.
  kill Marsh Inkspewer##750 |q 1428 |goto Swamp of Sorrows 88.19,80.18
step
  talk Katar##5593
  turnin Continued Threat##1428 |goto Swamp of Sorrows 83.76,80.41
step
  talk Neeka Bloodscar##5394
  turnin Neeka Bloodscar##1418 |goto Badlands 6.49,47.2 |tip {turninat}Badlands
step
  only completed(728)
  talk Keeper Bel'dugur##2934
  accept The Star, the Hand and the Heart##736 |goto Undercity 53.74,54.46
step
  only completed(728)
  note Bring the items on Bel'dugur's Note to Keeper Bel'dugur in the Undercity.
  collect Star of Xil'yeh##4646 |q 736 |goto Alterac Mountains 35.58,54.42 |tip {dropsfrom}Grel'borg the Miser
step
  only completed(728)
  talk Keeper Bel'dugur##2934
  turnin The Star, the Hand and the Heart##736 |goto Undercity 53.74,54.46 |tip {turninat}Undercity
step
  talk Atal'ai Exile##5598
  turnin The Atal'ai Exile##1429 |goto The Hinterlands 33.75,75.21 |tip {turninat}The Hinterlands
step
  only completed(728)
  talk Keeper Bel'dugur##2934
  accept Forbidden Knowledge##737 |goto Undercity 53.74,54.46
step
  only completed(728)
  talk Theldurin the Lost##2785
  turnin Forbidden Knowledge##737 |goto Badlands 51.39,76.87 |tip {turninat}Badlands
step
  note {travel}Undercity
  goto Undercity 50.14,67.97
]])
