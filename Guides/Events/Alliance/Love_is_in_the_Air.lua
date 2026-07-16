-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Love is in the Air", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Fenstad Argyle##16108
  accept Dangerous Love##11558 |goto Undercity 66.67,44.72
step
  talk Lieutenant Jocryn Heldric##16005
  accept Dearest Colara,##8897 |goto Stormwind City 57.07,59.6
step
  talk Tormek Stoneriver##16009
  accept Dearest Colara,##8898 |goto Ironforge 32.64,66.23
step
  talk Aldris Fourclouds##16001
  accept Dearest Colara,##8899 |goto Darnassus 41.95,42.34
step
  note Get a Guardian's Moldy Card and bring it to Fenstad Argyle in the Undercity.
  collect Guardian's Moldy Card##22145 |q 11558 |goto Undercity 66.67,44.72
step
  talk Fenstad Argyle##16108
  turnin Dangerous Love##11558 |goto Undercity 66.67,44.72
step
  talk Colara Dean##16002
  turnin Dearest Colara,##8897 |goto Stormwind City 54.32,65.97
step
  talk Colara Dean##16002
  turnin Dearest Colara,##8898 |goto Stormwind City 54.32,65.97
step
  talk Colara Dean##16002
  turnin Dearest Colara,##8899 |goto Stormwind City 54.32,65.97
step
  talk Aristan Mottar##16105
  accept Dangerous Love##8903 |goto Stormwind City 54.6,65.3
step
  note Get a Stormwind Guard's Card and return it to Aristan Mottar in Stormwind.
  collect Stormwind Guard's Card##22143 |q 8903 |goto Elwynn Forest 25.68,72.74
step
  talk Aristan Mottar##16105
  turnin Dangerous Love##8903 |goto Stormwind City 54.6,65.3
]])
