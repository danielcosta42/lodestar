-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Molten Core - Attunement to the Core", {
	author = "Lodestar Generator",
	rev = "a0830456",
}, [[
step
  talk Lothos Riftwaker##14387
  accept Attunement to the Core##7848 |goto Searing Gorge 32.13,94.7
step
  note Venture to the Molten Core entry portal in Blackrock Depths and recover a Core Fragment. Return to Lothos Riftwaker in Blackrock Mountain when you have recovered the Core Fragment.
  collect Core Fragment##18412 |q 7848 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lothos Riftwaker##14387
  turnin Attunement to the Core##7848 |goto Searing Gorge 32.13,94.7
]])
