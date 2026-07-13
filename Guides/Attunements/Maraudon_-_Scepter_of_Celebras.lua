-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Maraudon - Scepter of Celebras", {
	author = "Lodestar Generator",
}, [[
step
  talk Cavindra##13697
  accept Legends of Maraudon##7044 |goto Desolace 32.1,63.96
step
  note Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
  kill Lord Vyletongue##12236 |q 7044 |goto Maraudon - Dungeon -1,-1
step
  talk Celebras the Redeemed##13716
  turnin Legends of Maraudon##7044
step
  talk Celebras the Redeemed##13716
  accept The Scepter of Celebras##7046
step
  talk Celebras the Redeemed##13716
  turnin The Scepter of Celebras##7046
]])
