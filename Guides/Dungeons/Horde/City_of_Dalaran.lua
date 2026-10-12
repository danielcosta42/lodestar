-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/City of Dalaran", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "7e47618e",
}, [[
step
  talk Melisara##2278
  accept The Grave Knight##96986 |goto Hillsbrad Foothills 62.63,20.65
step
  talk Image of Archmage Modera##269127
  accept Heart of Disruption##96984 |goto Silverpine Forest 68.6,45.18
step
  talk Doctor Martin Felben##11044
  accept Source of Power##96988 |goto Undercity 46.61,74.09
step
  note Defeat Atrexis the Grave Knight in the City of Dalaran for Melisara in Tarren Mill.
  kill Atrexis the Grave Knight##247126 |q 96986
step
  note Collect the Arcane Mote in the City of Dalaran for Magus Wordeen Voidglare in Tarren Mill.
  collect Arcane Mote##251961 |q 96984 |goto Silverpine Forest 68.6,45.18 |tip {dropsfrom}Shade of the Archmage, Rath'mael
step
  note Collect 6 Cracked Sentry Cores in the City of Dalaran for Doctor Martin Felben in Undercity.
  collect 6 Cracked Sentry Core##275997 |q 96988 |goto Undercity 46.61,74.09 |tip {dropsfrom}Fragmented Sentry
step
  talk Melisara##2278
  turnin The Grave Knight##96986 |goto Hillsbrad Foothills 62.63,20.65
step
  talk Magus Wordeen Voidglare##2410
  turnin Heart of Disruption##96984 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Doctor Martin Felben##11044
  turnin Source of Power##96988 |goto Undercity 46.61,74.09
]])
