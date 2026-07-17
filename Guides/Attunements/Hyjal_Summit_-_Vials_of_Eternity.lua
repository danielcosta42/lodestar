-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Hyjal Summit - Vials of Eternity", {
	author = "Lodestar Generator",
}, [[
step
  talk Soridormi##19935
  accept The Vials of Eternity##10445 |goto Tanaris 61.05,56.95
step
  note Soridormi at Caverns of Time wants you to retrieve Vashj's Vial Remnant from Lady Vashj at Coilfang Reservoir and Kael's Vial Remnant from Kael'thas Sunstrider at Tempest Keep.
  collect Vashj's Vial Remnant##29906 |q 10445 |goto Serpentshrine Cavern - Raid -1,-1 |raid |tip {dropsfrom}Lady Vashj
step
  talk Soridormi##19935
  turnin The Vials of Eternity##10445 |goto Tanaris 61.05,56.95
]])
