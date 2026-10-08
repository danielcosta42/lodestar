-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Maraudon - Scepter of Celebras", {
	author = "Lodestar Generator",
}, [[
step
  talk Cavindra##13697
  accept Legends of Maraudon##7044 |goto Desolace 31.9,63.8
step
  note Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
  collect Celebrian Diamond##17703 |q 7044 |goto Maraudon - Dungeon -1,-1 |elite |tip {dropsfrom}Lord Vyletongue
step
  talk Celebras the Redeemed##13716
  turnin Legends of Maraudon##7044 |goto Maraudon - Dungeon -1,-1
step
  talk Celebras the Redeemed##13716
  accept The Scepter of Celebras##7046 |goto Maraudon - Dungeon -1,-1
step
  note Assist Celebras the Redeemed while he creates the Scepter of Celebras.
  collect Incantation of Celebras##178965 |q 7046 |goto Maraudon - Dungeon -1,-1
step
  talk Celebras the Redeemed##13716
  turnin The Scepter of Celebras##7046 |goto Maraudon - Dungeon -1,-1
]])
