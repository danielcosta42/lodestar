-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Razorfen Downs", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "c6415b4f",
}, [[
step
  talk Myriam Moonsinger##12866
  accept A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  talk Belnistrasz##8516
  accept Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Archbishop Benedictus##1284
  accept Bring the Light##3636 |goto Stormwind City 50.31,45.47
step
  note Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
  kill Razorfen Battleguard##7873 |q 6626/1 |goto The Barrens 47.3,89.89 |elite
  kill Death's Head Cultist##7872 |q 6626/3 |goto The Barrens 47.86,90.73 |elite
  kill Razorfen Thornweaver##7874 |q 6626 |goto The Barrens 48.12,92.23 |elite
step
  note Archbishop Bendictus wants you to slay Amnennar the Coldbringer in Razorfen Downs.
  kill Amnennar the Coldbringer##7358 |q 3636 |goto Razorfen Downs - Dungeon -1,-1 |elite
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  note If you agree to aid Belnistrasz, speak with him again and hand the Oathstone he gave you back to him.
  talk Belnistrasz##8516
  turnin Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Archbishop Benedictus##1284
  turnin Bring the Light##3636 |goto Stormwind City 50.31,45.47
step
  talk Belnistrasz##8516
  accept Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
step
  note Escort Belnistrasz to the Quilboar's idol in Razorfen Downs.
  goto The Barrens 50.86,92.87 |tip Protect Belnistrasz while he performs the ritual to shut down the idol
step
  turnin Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
]])
