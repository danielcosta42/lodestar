-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Swamp of Sorrows (35-42)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Arathi Highlands (36-40)",
}, [[
step
  talk Magtoor##1776
  accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  note Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
  collect 6 Draenethyst Crystal##6071 |q 1389 |goto Swamp of Sorrows 62.08,22.85 |tip {dropsfrom}Draenethyst Crystals
step
  kill Noboru the Cudgel##5477 |goto Swamp of Sorrows 54.9,34.1 |tip Loot the quest item here — it starts the quest.
  accept Noboru the Cudgel##1392 |goto Swamp of Sorrows 54.9,34.1
step
  click A Soggy Scroll##2553
  accept Cortello's Riddle##625 |goto Swamp of Sorrows 22.87,48.19
step
  talk Watcher Biggs##5476
  accept Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
step
  turnin Cortello's Riddle##625 |goto Dustwallow Marsh 31.11,66.14 |tip {turninat}Dustwallow Marsh
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  talk Magtoor##1776
  turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Magtoor##1776
  turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.98,31.4
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 50.2,38.8
step
  note Kill 8 Young Sawtooth Crocolisks, 10 Sorrow Spinners and 10 Swamp Jaguars then return to Watcher Biggs in the Swamp of Sorrows.
  kill Young Sawtooth Crocolisk##1084 |q 1396 |goto Swamp of Sorrows 30.44,42.55
step
  talk Watcher Biggs##5476
  turnin Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
  note Find the Caravan Chest in the Fallow Sanctuary, obtain the Wizards' Reagents and bring to Watcher Biggs.
  collect Wizards' Reagents##6170 |q 1421 |goto Swamp of Sorrows 64.46,18.3 |tip {dropsfrom}Caravan Chest
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.64,35.24
step
  talk Watcher Biggs##5476
  turnin The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
step
  note Bring 8 pieces of Sundried Driftwood to Watcher Biggs in the Swamp of Sorrows.
  collect 8 Sundried Driftwood##6146 |q 1398 |goto Swamp of Sorrows 90.68,57.09
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  collect Amber Voodoo Feather##20606 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  talk Watcher Biggs##5476
  turnin Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Deliver the Shipment##1425 |goto Swamp of Sorrows 26.74,59.83
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Quartermaster Lungertz##5393
  turnin Deliver the Shipment##1425 |goto Blasted Lands 66.52,21.39 |tip {turninat}Blasted Lands
]])
