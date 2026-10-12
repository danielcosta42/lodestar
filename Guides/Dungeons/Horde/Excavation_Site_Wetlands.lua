-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Excavation Site: Wetlands", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "6a33befa",
}, [[
step
  talk Zaruk##2787
  accept Dragonmaw Rumors##95663 |goto Arathi Highlands 74.54,35.64
step
  talk Borstan##3368
  accept Changing Tastes##95697 |goto Orgrimmar 57.2,53.32
step
  talk Bashana Runetotem##9087
  accept Earthen Echo##98823 |goto Thunder Bluff 71.06,34.19
step
  note Enter the Excavation Sites in the Wetlands and bring back Thicket Raptor Meat.
  collect Thicket Raptor Meat##271100 |q 95697 |goto Orgrimmar 57.2,53.32 |tip {dropsfrom}Shadetooth, Thicket Lurker, Thicket Hunter
step
  note Travel to the Wetlands and meet the Deathstalker Agent in the hills above the Dragonmaw camp.
  talk Deathstalker Agent##13155
  turnin Dragonmaw Rumors##95663
step
  talk Borstan##3368
  turnin Changing Tastes##95697 |goto Orgrimmar 57.2,53.32
step
  note Bring the Titan Relic to Muln Earthfury at the Skywatcher Plateau in northwest Mulgore.
  talk Muln Earthfury##259118
  turnin Earthen Echo##98823 |goto Mulgore 33.42,22.52
]])
