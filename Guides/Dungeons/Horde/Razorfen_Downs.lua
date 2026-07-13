-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Razorfen Downs", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Belnistrasz##8516
  accept Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Belnistrasz##8516
  turnin Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Belnistrasz##8516
  accept Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
step
  turnin Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
]])
