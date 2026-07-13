-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Dustwallow Marsh (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk "Stinky" Ignatz##4880
  accept Stinky's Escape##1270 |goto Dustwallow Marsh 46.88,17.52
step
  talk Draz'Zilb##4501
  accept Identifying the Brood##1169 |goto Dustwallow Marsh 37.15,33.09
step
  note Draz'Zilb in Brackenwall Village would like you to bring him 7 Searing Tongues and 7 Searing Hearts.
  kill Searing Hatchling##4323 |q 1169 |goto Dustwallow Marsh 45.79,72.13
step
  talk Krog##4926
  turnin Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 36.42,31.88
step
  talk Mebok Mizzyrix##3446
  turnin Stinky's Escape##1270 |goto The Barrens 62.37,37.62
step
  talk Draz'Zilb##4501
  turnin Identifying the Brood##1169 |goto Dustwallow Marsh 37.15,33.09
step
  talk Ogron##4983
  accept Questioning Reethe##1273 |goto Dustwallow Marsh 40.96,36.69
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1170 |goto Dustwallow Marsh 37.15,33.09
step
  talk Krog##4926
  turnin Questioning Reethe##1273 |goto Dustwallow Marsh 36.42,31.88
step
  talk Overlord Mok'Morokk##4500
  turnin The Brood of Onyxia##1170 |goto Dustwallow Marsh 36.29,31.41
step
  talk Overlord Mok'Morokk##4500
  accept The Brood of Onyxia##1171 |goto Dustwallow Marsh 36.29,31.41
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1171 |goto Dustwallow Marsh 37.15,33.09
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  note Draz'Zilb in Brackenwall Village wants you to destroy 5 Eggs of Onyxia.
  collect Egg of Onyxia##20359 |q 1172 |goto Dustwallow Marsh 53.56,75.96
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  talk Overlord Mok'Morokk##4500
  accept Challenge Overlord Mok'Morokk##1173 |goto Dustwallow Marsh 36.29,31.41
step
  talk Draz'Zilb##4501
  turnin Challenge Overlord Mok'Morokk##1173 |goto Dustwallow Marsh 37.15,33.09
]])
