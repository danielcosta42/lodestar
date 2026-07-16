-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Black Temple - Cudgel of Kar'desh", {
	author = "Lodestar Generator",
}, [[
step
  talk Skar'this the Heretic##22421
  accept The Mark of Vashj##10900 |goto The Slave Pens - Dungeon -1,-1
step
  talk Skar'this the Heretic##22421
  turnin The Mark of Vashj##10900 |goto The Slave Pens - Dungeon -1,-1
step
  talk Skar'this the Heretic##22421
  accept The Cudgel of Kar'desh##10901 |goto The Slave Pens - Dungeon -1,-1
step
  note Skar'this the Heretic in the heroic Slave Pens of Coilfang Reservoir wants you to bring him the Earthen Signet and the Blazing Signet.
  collect Earthen Signet##31750 |q 10901 |goto Gruul's Lair - Raid -1,-1 |tip {dropsfrom}Gruul the Dragonkiller
step
  talk Skar'this the Heretic##22421
  turnin The Cudgel of Kar'desh##10901 |goto The Slave Pens - Dungeon -1,-1
]])
