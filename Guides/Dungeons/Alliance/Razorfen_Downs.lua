-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Razorfen Downs", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Belnistrasz##8516
  accept Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Archbishop Benedictus##1284
  accept Bring the Light##3636 |goto Stormwind City 39.59,27.19
step
  note Archbishop Bendictus wants you to slay Amnennar the Coldbringer in Razorfen Downs.
  kill Amnennar the Coldbringer##7358 |q 3636 |goto Razorfen Downs - Dungeon -1,-1 |elite
step
  talk Belnistrasz##8516
  turnin Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Archbishop Benedictus##1284
  turnin Bring the Light##3636 |goto Stormwind City 39.59,27.19
step
  talk Belnistrasz##8516
  accept Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
step
  turnin Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
]])
