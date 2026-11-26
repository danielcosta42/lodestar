-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Mulgore (59-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "16837519",
}, [[
step
  ding 56
step
  only level>=59
  talk Muln Earthfury##259118
  accept Blackmaw Magic##97198 |goto Mulgore 33.41,22.59
step
  only haveq(97198)
  note Recover a Blackmaw Ritual Totem from Blackmaw Hold.
  collect Blackmaw Ritual Totem##276893 |q 97198 |goto Mulgore 33.41,22.59 |elite |tip {dropsfrom}Elder Shaman Bloodmane
step
  talk Mayena Earthseeker##263445
  accept Crystalline Elements##95928 |goto Mulgore 34.97,22.08
step
  note Bring Mayena Earthseeker a Moist Crystal, a Charged Crystal, a Noxious Crystal and a Fiery Crystal from Shaper's Terrace.
  collect Fiery Crystal##271894 |q 95928/1 |tip {dropsfrom}Fiery Crystal Fragment
  collect Charged Crystal##271898 |q 95928/2 |tip {dropsfrom}Charged Crystal Fragment
  collect Noxious Crystal##271902 |q 95928/3 |tip {dropsfrom}Noxious Crystal Fragment
  collect Moist Crystal##271912 |q 95928 |tip {dropsfrom}Moist Crystal Fragment
step
  talk Nuara Tremorhoof##272633
  accept Unstable Magic##98477 |goto Mulgore 33.54,22.66
step
  note Bring 10 Motes of Unstable Magic to Nuara Tremorhoof.
  collect 10 Mote of Unstable Magic##274964 |q 98477 |goto Mulgore 33.54,22.66 |tip Crafted or bought.
step
  talk Mayena Earthseeker##263445
  turnin Crystalline Elements##95928 |goto Mulgore 34.97,22.08
step
  only haveq(97198)
  talk Muln Earthfury##259118
  turnin Blackmaw Magic##97198 |goto Mulgore 33.41,22.59
step
  talk Nuara Tremorhoof##272633
  turnin Unstable Magic##98477 |goto Mulgore 33.54,22.66
]])
