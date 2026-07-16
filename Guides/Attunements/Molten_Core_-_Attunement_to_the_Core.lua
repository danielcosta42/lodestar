-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Molten Core - Attunement to the Core", {
	author = "Lodestar Generator",
}, [[
step
  talk Lothos Riftwaker##14387
  accept Attunement to the Core##7848
step
  note Venture to the Molten Core entry portal in Blackrock Depths and recover a Core Fragment. Return to Lothos Riftwaker in Blackrock Mountain when you have recovered the Core Fragment.
  collect Core Fragment##18412 |q 7848 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |tip {dropsfrom}Core Fragment
step
  talk Lothos Riftwaker##14387
  turnin Attunement to the Core##7848
]])
