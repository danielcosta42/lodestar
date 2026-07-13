-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/The Slave Pens", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Skar'this the Heretic##22421
  accept The Mark of Vashj##10900 |goto The Slave Pens - Dungeon -1,-1
step
  talk Numa Cloudsister##25710
  accept Ahune is Here!##11696 |goto The Slave Pens - Dungeon -1,-1
step
  talk Luma Skymother##25697
  turnin Shards of Ahune##11972 |goto The Slave Pens - Dungeon -1,-1
step
  talk Skar'this the Heretic##22421
  turnin The Mark of Vashj##10900 |goto The Slave Pens - Dungeon -1,-1
step
  talk Luma Skymother##25697
  turnin Ahune is Here!##11696 |goto The Slave Pens - Dungeon -1,-1
step
  talk Skar'this the Heretic##22421
  accept The Cudgel of Kar'desh##10901 |goto The Slave Pens - Dungeon -1,-1
step
  talk Luma Skymother##25697
  accept Summon Ahune##11691 |goto The Slave Pens - Dungeon -1,-1
step
  note Skar'this the Heretic in the heroic Slave Pens of Coilfang Reservoir wants you to bring him the Earthen Signet and the Blazing Signet.
  get The Cudgel of Kar'desh |q 10901 |goto The Slave Pens - Dungeon -1,-1
step
  talk Skar'this the Heretic##22421
  turnin The Cudgel of Kar'desh##10901 |goto The Slave Pens - Dungeon -1,-1
step
  turnin Summon Ahune##11691 |goto The Slave Pens - Dungeon -1,-1
]])
