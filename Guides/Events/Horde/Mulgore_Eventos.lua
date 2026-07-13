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
