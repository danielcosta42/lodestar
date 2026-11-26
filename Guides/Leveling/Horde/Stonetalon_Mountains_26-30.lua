-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stonetalon Mountains (26-30)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Hillsbrad Foothills (32-40)",
	rev = "5c5bdb5c",
}, [[
step
  ding 25
step
  note {fp}Tharm
  goto Stonetalon Mountains 45.12,59.84 |tip {vendor}
step
  only completed(6282) level>=26
  talk Maggran Earthbinder##11860
  accept Bloodfury Bloodline##6283 |goto Stonetalon Mountains 47.2,61.16
step
  only completed(6282) haveq(6283)
  note Maggran at Sun Rock Retreat wishes you to slay Bloodfury Ripper and bring her remains as proof of your deed.
  kill Bloodfury Ripper##12579 |q 6283 |goto Stonetalon Mountains 30.75,61.91 |elite
  collect Bloodfury Ripper's Remains##16190 |q 6283 |goto Stonetalon Mountains 30.75,61.91
step
  only completed(6282) haveq(6283)
  talk Maggran Earthbinder##11860
  turnin Bloodfury Bloodline##6283 |goto Stonetalon Mountains 47.2,61.16
step
  only completed(1152) level>=25
  talk Braug Dimspirit##4489
  accept Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  only completed(1152) haveq(1154)
  note Find the Legacy of the Aspects and return it to Braug Dimspirit near the entrance to Talondeep Path in Stonetalon Mountains.
  collect Legacy of the Aspects##5860 |q 1154 |goto Ashenvale 75.57,74.37 |tip {dropsfrom}The Legacy of the Aspects
step
  only completed(1152) haveq(1154)
  talk Braug Dimspirit##4489
  turnin Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  only completed(1152) completed(1154) level>=25
  talk Braug Dimspirit##4489
  accept Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  only completed(1152) haveq(6627)
  note Answer Braug Dimspirit's question successfully and then speak to him again. He will remain in Stonetalon Mountains when you are ready.
  talk Braug Dimspirit##4489 |q 6627 |goto Stonetalon Mountains 78.8,45.69
step
  only completed(1152) haveq(6627)
  talk Braug Dimspirit##4489
  turnin Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  only completed(1152) completed(6627) level>=25
  talk Braug Dimspirit##4489
  accept Test of Lore##1159 |goto Stonetalon Mountains 78.8,45.69
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  accept Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98
step
  only Warrior completed(1848)
  note Bring a Galvanized Horn to Orm Stonehoof in Thunder Bluff.
  collect Galvanized Horn##6840 |q 1844 |goto Stonetalon Mountains 33.64,74.66 |tip {dropsfrom}Chimaera Matriarch
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  turnin Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  accept Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  turnin Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 62.76,20.21
]])
