-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Swamp of Sorrows (35-42)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Arathi Highlands (31-40)",
}, [[
step
  talk Magtoor##1776
  accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Watcher Biggs##5476
  accept Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
step
  note Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
  collect 6 Draenethyst Crystal##6071 |q 1389 |goto Swamp of Sorrows 62.08,22.45 |tip {dropsfrom}Draenethyst Crystals
step
  talk Magtoor##1776
  turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  note Kill 8 Young Sawtooth Crocolisks, 10 Sorrow Spinners and 10 Swamp Jaguars then return to Watcher Biggs in the Swamp of Sorrows.
  kill Young Sawtooth Crocolisk##1084 |q 1396 |goto Swamp of Sorrows 30.44,38.94
step
  talk Watcher Biggs##5476
  turnin Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
  talk Galen Goodward##5391
  accept Galen's Escape##1393 |goto Swamp of Sorrows 65.47,18.16
step
  kill Noboru the Cudgel##5477 |goto Swamp of Sorrows 54.9,34.1 |tip Loot the quest item here — it starts the quest.
  accept Noboru the Cudgel##1392 |goto Swamp of Sorrows 54.9,34.1
step
  note Find the Caravan Chest in the Fallow Sanctuary, obtain the Wizards' Reagents and bring to Watcher Biggs.
  collect Wizards' Reagents##6170 |q 1421 |goto Swamp of Sorrows 64.46,18.3 |tip {dropsfrom}Caravan Chest
step
  talk Magtoor##1776
  turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.98,31.4
step
  turnin Galen's Escape##1393 |goto Swamp of Sorrows 47.81,39.76
step
  talk Watcher Biggs##5476
  turnin The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
step
  note Bring 8 pieces of Sundried Driftwood to Watcher Biggs in the Swamp of Sorrows.
  collect 8 Sundried Driftwood##6146 |q 1398 |goto Swamp of Sorrows 93.96,57.09
step
  talk Watcher Biggs##5476
  turnin Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Deliver the Shipment##1425 |goto Swamp of Sorrows 26.74,59.83
step
  talk Quartermaster Lungertz##5393
  turnin Deliver the Shipment##1425 |goto Blasted Lands 66.52,21.39 |tip {turninat}Blasted Lands
step
  note {travel}Stormwind City
  goto Stormwind City 50.5,87.47
]])
