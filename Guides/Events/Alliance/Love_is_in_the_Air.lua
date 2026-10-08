-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Love is in the Air", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Lieutenant Jocryn Heldric##16005
  accept Dearest Colara,##8897 |goto Stormwind City 63.83,70.55
step
  talk Tormek Stoneriver##16009
  accept Dearest Colara,##8898 |goto Ironforge 32.64,66.23
step
  talk Aldris Fourclouds##16001
  accept Dearest Colara,##8899 |goto Darnassus 41.95,42.34
step
  talk Aristan Mottar##16105
  accept Dangerous Love##8903 |goto Stormwind City 61.92,74.96
step
  note Get a Stormwind Guard's Card and return it to Aristan Mottar in Stormwind.
  kill Stormwind Guard##1423 |goto Elwynn Forest 25.75,72.71
  collect Stormwind Guard's Card##22143 |q 8903 |goto Elwynn Forest 25.75,72.71
step
  talk Colara Dean##16002
  turnin Dearest Colara,##8897 |goto Stormwind City 61.71,75.48
step
  talk Colara Dean##16002
  turnin Dearest Colara,##8898 |goto Stormwind City 61.71,75.48
step
  talk Colara Dean##16002
  turnin Dearest Colara,##8899 |goto Stormwind City 61.71,75.48
step
  talk Aristan Mottar##16105
  turnin Dangerous Love##8903 |goto Stormwind City 61.92,74.96
]])
