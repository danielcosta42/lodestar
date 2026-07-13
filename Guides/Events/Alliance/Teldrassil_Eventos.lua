-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Teldrassil (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6063 |goto Teldrassil 56.68,59.49
step
  talk Master Fire Eater##25975
  accept Torch Tossing##11731 |goto Teldrassil 56.56,92.09
step
  talk Oben Rageclaw##7317
  accept The Sleeping Druid##2541 |goto Teldrassil 44.94,61.59
step
  talk Mist##3568
  accept Mist##938 |goto Teldrassil 31.54,31.61
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6063 |goto Teldrassil 56.68,59.49
step
  talk Master Fire Eater##25975
  turnin Torch Tossing##11731 |goto Teldrassil 56.56,92.09
step
  talk Oben Rageclaw##7317
  turnin The Sleeping Druid##2541 |goto Teldrassil 44.94,61.59
step
  talk Sentinel Arynia Cloudsbreak##3519
  turnin Mist##938 |goto Teldrassil 38.32,34.36
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6101 |goto Teldrassil 56.68,59.49
step
  talk Master Fire Eater##25975
  accept Torch Catching##11657 |goto Teldrassil 56.56,92.09
step
  talk Oben Rageclaw##7317
  accept Druid of the Claw##2561 |goto Teldrassil 44.94,61.59
step
  note Oben Rageclaw wants you to kill his soulless body, and then use the Voodoo Charm.
  kill Rageclaw##7318 |q 2561 |goto Teldrassil 45.53,58.58
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6101 |goto Teldrassil 56.68,59.49
step
  talk Master Fire Eater##25975
  turnin Torch Catching##11657 |goto Teldrassil 56.56,92.09
step
  talk Oben Rageclaw##7317
  turnin Druid of the Claw##2561 |goto Teldrassil 44.94,61.59
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6102 |goto Teldrassil 56.68,59.49
step
  talk Master Fire Eater##25975
  accept More Torch Tossing##11921 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  accept More Torch Catching##11924 |goto Teldrassil 56.56,92.09
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6102 |goto Teldrassil 56.68,59.49
step
  talk Master Fire Eater##25975
  turnin More Torch Tossing##11921 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  turnin More Torch Catching##11924 |goto Teldrassil 56.56,92.09
]])
