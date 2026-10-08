-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Razorfen Downs", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Myriam Moonsinger##12866
  accept A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  kill Charlga Razorflank##4421 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept An Unholy Alliance##6522 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Belnistrasz##8516
  accept Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Andrew Brownell##2308
  accept Bring the End##3341 |goto Undercity 74.05,33.31
step
  note Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
  kill Razorfen Battleguard##7873 |q 6626 |goto The Barrens 47.3,89.89 |elite
step
  note Andrew Brownell wants you to kill Amnennar the Coldbringer and return his skull.
  collect Skull of the Coldbringer##10420 |q 3341 |goto Razorfen Downs - Dungeon -1,-1 |elite |tip {dropsfrom}Amnennar the Coldbringer
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  talk Varimathras##2425
  turnin An Unholy Alliance##6522 |goto Undercity 56.25,92.2
step
  talk Belnistrasz##8516
  turnin Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Andrew Brownell##2308
  turnin Bring the End##3341 |goto Undercity 74.05,33.31
step
  talk Varimathras##2425
  accept An Unholy Alliance##6521 |goto Undercity 56.25,92.2
step
  talk Belnistrasz##8516
  accept Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
step
  note Bring Ambassador Malcin's Head to Varimathras in the Undercity.
  kill Ambassador Malcin##12865 |goto The Barrens 48.4,95.4 |elite
  collect Ambassador Malcin's Head##17009 |q 6521 |goto The Barrens 48.4,95.4
step
  talk Varimathras##2425
  turnin An Unholy Alliance##6521 |goto Undercity 56.25,92.2
step
  turnin Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
]])
