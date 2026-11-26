-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/City of Dalaran", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "8f6663fa",
}, [[
step
  talk Emissary Jacques##247264
  accept An Alarming Request##92432 |goto Hillsbrad Foothills 48.33,60.03
step
  talk Shylamiir##5502
  accept A Green Sample##92456 |goto Stormwind City 31.5,62.61
step
  talk High Sorcerer Andromath##5694
  accept Power Overwhelming##92489 |goto Stormwind City 48.71,87.62
step
  note Collect a Fel Infused Blossom from the City of Dalaran for Shylamiir in Stormwind City.
  collect Fel Infused Blossom##251983 |q 92456 |goto City of Dalaran - Dungeon -1,-1 |tip {dropsfrom}Fel Plant
step
  note Slay the Mana Elemental in the City of Dalaran for High Sorcerer Andromath in Stormwind City.
  kill Arcanic Enigma##246016 |q 92489 |goto Alterac Mountains 21.2,63 |elite
step
  note Report to the Image of Archmage Modera near the City of Dalaran.
  talk Image of Archmage Modera##269127
  turnin An Alarming Request##92432 |goto Silverpine Forest 68.62,45.13
step
  talk Shylamiir##5502
  turnin A Green Sample##92456 |goto Stormwind City 31.5,62.61
step
  talk High Sorcerer Andromath##5694
  turnin Power Overwhelming##92489 |goto Stormwind City 48.71,87.62
step
  talk Image of Archmage Modera##269127
  accept Starving Arcane##92457 |goto Silverpine Forest 68.62,45.13
step
  only not completed(96984) not haveq(96984)
  talk Image of Archmage Modera##269127
  accept Heart of Disruption##92458 |goto Silverpine Forest 68.62,45.13
step
  note Defeat 8 Seeking Remnants, 8 Saturated Remnants, and 8 Mana Echoes inside the City of Dalaran for Archmage Modera outside of Dalaran.
  kill Saturated Remnant##247001 |q 92457 |goto Alterac Mountains 14.7,67.7 |elite
step
  only not completed(96984) not haveq(96984)
  note Collect the Arcane Mote for the Image of Archmage Modera near the City of Dalaran.
  collect Arcane Mote##251961 |q 92458 |goto City of Dalaran - Dungeon -1,-1 |elite |tip {dropsfrom}Shade of the Archmage
step
  talk Image of Archmage Modera##269127
  turnin Starving Arcane##92457 |goto Silverpine Forest 68.62,45.13
step
  only not completed(96984) not haveq(96984)
  talk Image of Archmage Modera##269127
  turnin Heart of Disruption##92458 |goto Silverpine Forest 68.62,45.13
]])
