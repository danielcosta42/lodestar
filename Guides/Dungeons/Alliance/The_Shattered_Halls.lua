-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/The Shattered Halls", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Field Commander Romus##16830
  accept Pride of the Fel Horde##9493 |goto Hellfire Peninsula 56.84,62.72
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Shattered Hand Centurions##11364 |goto Shattrath City 75.5,37.24
step
  note Field Commander Romus at Honor Hold wants you to kill 8 Shattered Hand Legionnaires, 4 Shattered Hand Centurions, and 4 Shattered Hand Champions.
  kill Shattered Hand Legionnaire##16700 |q 9493 |goto The Shattered Halls - Dungeon -1,-1 |elite
step
  note Nether-Stalker Mah'duun has tasked you with the deaths of 4 Shattered Hand Centurions. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Shattered Hand Centurion##17465 |q 11364 |goto The Shattered Halls - Dungeon -1,-1 |elite
step
  talk Field Commander Romus##16830
  turnin Pride of the Fel Horde##9493 |goto Hellfire Peninsula 56.84,62.72
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Shattered Hand Centurions##11364 |goto Shattrath City 75.5,37.24
]])
