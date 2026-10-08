-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Love is in the Air", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "e3912dab",
}, [[
step
  only not completed(8898) not completed(8899) not haveq(8898) not haveq(8899)
  talk Lieutenant Jocryn Heldric##16005
  accept Dearest Colara,##8897 |goto Stormwind City 63.83,70.55
step
  only not completed(8898) not completed(8899) not haveq(8898) not haveq(8899)
  talk Colara Dean##16002
  turnin Dearest Colara,##8897 |goto Stormwind City 61.71,75.48
step
  talk Aristan Mottar##16105
  accept Dangerous Love##8903 |goto Stormwind City 61.92,74.96
step
  note Get a Stormwind Guard's Card and return it to Aristan Mottar in Stormwind.
  kill Stormwind Guard##1423 |goto Elwynn Forest 25.59,72.88
  collect Stormwind Guard's Card##22143 |q 8903 |goto Elwynn Forest 25.59,72.88
step
  talk Aristan Mottar##16105
  turnin Dangerous Love##8903 |goto Stormwind City 61.92,74.96
]])
