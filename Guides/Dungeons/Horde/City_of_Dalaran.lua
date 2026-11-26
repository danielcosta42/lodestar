-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/City of Dalaran", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "aaed8279",
}, [[
step
  talk Rexxie Copperclutch##268743
  accept Opportunistic Education##96987 |goto City of Dalaran - Dungeon -1,-1
step
  talk Melisara##2278
  accept The Grave Knight##96986 |goto Hillsbrad Foothills 62.63,20.65
step
  talk Magus Wordeen Voidglare##2410
  accept Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  accept Key to the City##93680 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Doctor Martin Felben##11044
  accept Source of Power##96988 |goto Undercity 46.61,74.09
step
  note Collect the Founding of Dalaran from the City of Dalaran for Rexxie Copperclutch near the sewer entrance.
  collect The Founding of Dalaran##275996 |q 96987 |goto City of Dalaran - Dungeon -1,-1 |tip {dropsfrom}Dalaran Tome
step
  note Defeat Atrexis the Grave Knight in the City of Dalaran for Melisara in Tarren Mill.
  kill Atrexis the Grave Knight##247126 |q 96986 |goto City of Dalaran - Dungeon -1,-1 |elite
step
  note Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
  collect Bloodstone Wedge##3691 |q 544/1 |goto Alterac Mountains 18.76,91.41 |tip {dropsfrom}Dermot
  collect Bloodstone Shard##3690 |q 544/3 |goto Alterac Mountains 19.31,91.76 |tip {dropsfrom}Alina
  collect Bloodstone Marble##3689 |q 544/2 |goto Alterac Mountains 19.31,90.22 |tip {dropsfrom}Ricter
  collect Bloodstone Oval##3688 |q 544 |goto Alterac Mountains 16.58,89.03 |tip {dropsfrom}Kegan Darkmar
step
  note Acquire the Dalaran Sewer Key for Magus Wordeen Voidglare in Tarren Mill.
  collect Grimy Key##279469 |q 93680 |goto Alterac Mountains 16.3,89.31 |tip {dropsfrom}Warden's Footlocker
step
  note Collect 6 Cracked Sentry Cores in the City of Dalaran for Doctor Martin Felben in Undercity.
  collect 6 Cracked Sentry Core##275997 |q 96988 |goto City of Dalaran - Dungeon -1,-1 |elite |tip {dropsfrom}Unstable Sentinel
step
  talk Rexxie Copperclutch##268743
  turnin Opportunistic Education##96987 |goto City of Dalaran - Dungeon -1,-1
step
  talk Melisara##2278
  turnin The Grave Knight##96986 |goto Hillsbrad Foothills 62.63,20.65
step
  talk Magus Wordeen Voidglare##2410
  turnin Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  turnin Key to the City##93680 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Doctor Martin Felben##11044
  turnin Source of Power##96988 |goto Undercity 46.61,74.09
step
  talk Magus Wordeen Voidglare##2410
  accept Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  note Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
  kill Dalaran Summoner##2358 |q 545/1 |goto Alterac Mountains 25.1,57.5
  kill Elemental Slave##2359 |q 545 |goto Alterac Mountains 24.62,54.86
step
  talk Magus Wordeen Voidglare##2410
  turnin Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  accept Blood in the Streets##92434 |goto Hillsbrad Foothills 61.6,20.85
step
  note Find a way into Dalaran along the Lordamere Lake.
  talk Image of Archmage Modera##269127 |q 92434 |goto Silverpine Forest 68.62,45.13
step
  talk Image of Archmage Modera##269127
  turnin Blood in the Streets##92434 |goto Silverpine Forest 68.62,45.13
step
  only not completed(92458) not haveq(92458)
  talk Image of Archmage Modera##269127
  accept Heart of Disruption##96984 |goto Silverpine Forest 68.62,45.13
step
  only not completed(92458) not haveq(92458)
  note Collect the Arcane Mote in the City of Dalaran for Magus Wordeen Voidglare in Tarren Mill.
  collect Arcane Mote##251961 |q 96984 |goto City of Dalaran - Dungeon -1,-1 |elite |tip {dropsfrom}Shade of the Archmage
step
  only not completed(92458) not haveq(92458)
  talk Magus Wordeen Voidglare##2410
  turnin Heart of Disruption##96984 |goto Hillsbrad Foothills 61.6,20.85
]])
