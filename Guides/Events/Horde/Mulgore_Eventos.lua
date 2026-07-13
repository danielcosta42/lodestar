-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Mulgore (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6061 |goto Mulgore 47.82,55.69
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Poison Water##748 |goto Mulgore 48.53,60.39
step
  only Tauren
  note Bring 6 Prairie Wolf Paws and 4 Plainstrider Talons to Mull Thunderhorn in Bloodhoof.
  kill Prairie Wolf##2958 |q 748 |goto Mulgore 39.51,66.13
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6061 |goto Mulgore 47.82,55.69
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Poison Water##748 |goto Mulgore 48.53,60.39
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6087 |goto Mulgore 47.82,55.69
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Winterhoof Cleansing##754 |goto Mulgore 48.53,60.39
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6087 |goto Mulgore 47.82,55.69
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Winterhoof Cleansing##754 |goto Mulgore 48.53,60.39
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6088 |goto Mulgore 47.82,55.69
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Thunderhorn Totem##756 |goto Mulgore 48.53,60.39
step
  only Tauren
  note Bring 6 Stalker Claws and 6 Cougar Claws to Mull Thunderhorn.
  kill Prairie Stalker##2959 |q 756 |goto Mulgore 49.92,45.17
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6088 |goto Mulgore 47.82,55.69
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Thunderhorn Totem##756 |goto Mulgore 48.53,60.39
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Thunderhorn Cleansing##758 |goto Mulgore 48.53,60.39
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Thunderhorn Cleansing##758 |goto Mulgore 48.53,60.39
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Wildmane Totem##759 |goto Mulgore 48.53,60.39
step
  only Tauren
  note Bring 8 Prairie Alpha Teeth to Mull Thunderhorn in Bloodhoof Village.
  kill Prairie Wolf Alpha##2960 |q 759 |goto Mulgore 56.04,28.81
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Wildmane Totem##759 |goto Mulgore 48.53,60.39
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Wildmane Cleansing##760 |goto Mulgore 48.53,60.39
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Wildmane Cleansing##760 |goto Mulgore 48.53,60.39
]])
