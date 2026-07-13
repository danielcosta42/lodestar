-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Teldrassil (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Master Fire Eater##25975
  accept Torch Catching##11657 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  turnin Torch Catching##11657 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  accept More Torch Tossing##11921 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  accept More Torch Catching##11924 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  turnin More Torch Tossing##11921 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  turnin More Torch Catching##11924 |goto Teldrassil 56.56,92.09
]])
