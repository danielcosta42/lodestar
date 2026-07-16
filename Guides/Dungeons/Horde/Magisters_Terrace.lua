-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Magisters' Terrace", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Exarch Larethor##24813
  accept Magisters' Terrace##11488 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Sisters of Torment##11500 |goto Shattrath City 75.5,37.24
step
  note Nether-Stalker Mah'duun wants you to slay 4 Sisters of Torment. Return to him in Shattrath's Lower City once you have done so in order to collect the bounty.
  kill Sister of Torment##24697 |q 11500 |goto Magisters' Terrace - Dungeon -1,-1 |elite
step
  talk Tyrith##24822
  turnin Magisters' Terrace##11488 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Sisters of Torment##11500 |goto Shattrath City 75.5,37.24
step
  talk Tyrith##24822
  accept The Scryer's Scryer##11490 |goto Magisters' Terrace - Dungeon -1,-1
step
  note Tyrith wants you to use the orb on the balcony in Magisters' Terrace.
  get The Scryer's Scryer |q 11490 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Kalecgos##24848
  turnin The Scryer's Scryer##11490 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Kalecgos##24848
  accept Hard to Kill##11492 |goto Magisters' Terrace - Dungeon -1,-1
step
  note Kalecgos has asked you to defeat Kael'thas in Magisters' Terrace. You are to take Kael's head and report back to Larethor at the Shattered Sun Staging Area.
  collect Head of Kael'thas##34157 |q 11492 |goto Magisters' Terrace - Dungeon -1,-1 |tip {dropsfrom}Kael'thas Sunstrider, Kael'thas Sunstrider (1)
step
  talk Exarch Larethor##24813
  turnin Hard to Kill##11492 |goto Isle of Quel'Danas 47.42,30.74
]])
