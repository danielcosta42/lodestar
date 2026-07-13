-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Durotar (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Hunter
  talk Thotar##3171
  accept Taming the Beast##6062 |goto Durotar 51.85,43.49
step
  talk Javnir Nashak##15012
  accept Honoring a Hero##8150 |goto Durotar 46.1,13.77
step
  talk Kali Remik##11814
  accept Incoming Gumdrop##8358 |goto Durotar 56.13,74.24
step
  talk Masked Orphan Matron##23973
  accept Stop the Fires!##11219 |goto Durotar 52.57,41.2
step
  only Hunter
  talk Thotar##3171
  turnin Taming the Beast##6062 |goto Durotar 51.85,43.49
step
  talk Javnir Nashak##15012
  turnin Honoring a Hero##8150 |goto Durotar 46.1,13.77
step
  talk Kali Remik##11814
  turnin Incoming Gumdrop##8358 |goto Durotar 56.13,74.24
step
  talk Masked Orphan Matron##23973
  turnin Stop the Fires!##11219 |goto Durotar 52.57,41.2
step
  talk Apothecary Lydon##2216
  turnin Venom Bottles##2933 |goto Hillsbrad Foothills 61.44,19.06
step
  only Hunter
  talk Thotar##3171
  accept Taming the Beast##6083 |goto Durotar 51.85,43.49
step
  talk Apothecary Lydon##2216
  accept Undamaged Venom Sac##2934 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring an Undamaged Venom Sac to Apothecary Lydon in Tarren Mill.
  kill Witherbark Broodguard##2686 |q 2934 |goto The Hinterlands 34.36,70.66
step
  only Hunter
  talk Thotar##3171
  turnin Taming the Beast##6083 |goto Durotar 51.85,43.49
step
  talk Apothecary Lydon##2216
  turnin Undamaged Venom Sac##2934 |goto Hillsbrad Foothills 61.44,19.06
step
  only Hunter
  talk Thotar##3171
  accept Taming the Beast##6082 |goto Durotar 51.85,43.49
step
  talk Apothecary Lydon##2216
  accept Consult Master Gadrin##2935 |goto Hillsbrad Foothills 61.44,19.06
step
  only Hunter
  talk Thotar##3171
  turnin Taming the Beast##6082 |goto Durotar 51.85,43.49
step
  talk Master Gadrin##3188
  turnin Consult Master Gadrin##2935 |goto Durotar 55.95,74.72
step
  talk Master Gadrin##3188
  accept The Spider God##2936 |goto Durotar 55.95,74.72
step
  talk Master Gadrin##3188
  turnin The Spider God##2936 |goto Durotar 55.95,74.72
]])
