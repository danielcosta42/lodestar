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
  talk Skar'this the Heretic##22421
  turnin The Cudgel of Kar'desh##10901 |goto The Slave Pens - Dungeon -1,-1
]])
