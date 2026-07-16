-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Alliance/Tanaris (Dailies)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Soridormi##19935
  accept Sage No More##11103 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Restorer No More##11104 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Champion No More##11105 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  accept Defender No More##11106 |goto Tanaris 61.05,56.95
step
  collect Band of the Eternal Sage##29305 |q 11103 |goto Tanaris 61.05,56.95
step
  collect Band of the Eternal Restorer##29309 |q 11104 |goto Tanaris 61.05,56.95
step
  collect Band of the Eternal Champion##29301 |q 11105 |goto Tanaris 61.05,56.95
step
  collect Band of the Eternal Defender##29297 |q 11106 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Sage No More##11103 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Restorer No More##11104 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Champion No More##11105 |goto Tanaris 61.05,56.95
step
  talk Soridormi##19935
  turnin Defender No More##11106 |goto Tanaris 61.05,56.95
]])
