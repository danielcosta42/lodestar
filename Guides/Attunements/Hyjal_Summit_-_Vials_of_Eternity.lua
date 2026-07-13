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
  talk Soridormi##19935
  turnin The Vials of Eternity##10445 |goto Tanaris 61.05,56.95
]])
