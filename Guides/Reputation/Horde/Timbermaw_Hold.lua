-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Timbermaw Hold", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Grazle##11554
  accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Meilosh##11557
  accept Runecloth##6031 |goto Felwood 65.69,2.81
step
  talk Meilosh##11557
  accept Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  talk Nafien##15395
  accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  talk Nafien##15395
  accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
  talk Salfa##11556
  accept Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  note Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
  kill Deadwood Warrior##7153 |q 8460 |goto Felwood 48.59,91.43
step
  note Bring 30 Runecloth to Meilosh in Timbermaw Hold.
  collect 30 Runecloth##14047 |q 6031 |goto Alterac Valley - Battleground 51.71,94.86 |tip {dropsfrom}Grimtooth, Stonard Shaman, Firewing Bloodwarder
step
  note Bring 2 Mooncloth to Meilosh in Timbermaw Hold.
  collect 2 Mooncloth##14342 |q 6032 |goto Felwood 65.69,2.81
step
  note Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
  kill Deadwood Den Watcher##7156 |q 8461 |goto Felwood 62.08,8.01
step
  note Salfa wants you to kill 8 Winterfall Shaman, 8 Winterfall Den Watchers, and 8 Winterfall Ursa. Salfa is located just outside the entrance to Timbermaw Hold in Winterspring.
  kill Winterfall Shaman##7439 |q 8464 |goto Winterspring 67.86,38.06
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Meilosh##11557
  turnin Runecloth##6031 |goto Felwood 65.69,2.81
step
  talk Meilosh##11557
  turnin Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  talk Nafien##15395
  turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  talk Salfa##11556
  turnin Speak to Salfa##8465 |goto Winterspring 27.73,34.5
step
  talk Kernda##11558
  turnin Deadwood Ritual Totem##8470 |goto Felwood 65.5,3.52
step
  talk Kernda##11558
  turnin Winterfall Ritual Totem##8471 |goto Felwood 65.5,3.52
step
  talk Salfa##11556
  turnin Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  talk Grazle##11554
  accept Feathers for Grazle##8466 |goto Felwood 50.93,85.01
step
  talk Nafien##15395
  accept Feathers for Nafien##8467 |goto Felwood 64.77,8.13
step
  talk Salfa##11556
  accept Beads for Salfa##8469 |goto Winterspring 27.73,34.5
step
  collect Deadwood Headdress Feather##21377 |q 8466 |goto Felwood 48.59,91.43 |tip {dropsfrom}Deadwood Warrior, Deadwood Gardener, Deadwood Pathfinder
step
  collect Deadwood Headdress Feather##21377 |q 8467 |goto Felwood 48.59,91.43 |tip {dropsfrom}Deadwood Warrior, Deadwood Gardener, Deadwood Pathfinder
step
  collect Winterfall Spirit Beads##21383 |q 8469 |goto Winterspring 66.84,37.84 |tip {dropsfrom}Winterfall Ursa, Winterfall Shaman, Winterfall Den Watcher
step
  talk Nafien##15395
  turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
step
  talk Grazle##11554
  turnin Feathers for Grazle##8466 |goto Felwood 50.93,85.01
step
  talk Nafien##15395
  turnin Feathers for Nafien##8467 |goto Felwood 64.77,8.13
step
  talk Salfa##11556
  turnin Beads for Salfa##8469 |goto Winterspring 27.73,34.5
]])
