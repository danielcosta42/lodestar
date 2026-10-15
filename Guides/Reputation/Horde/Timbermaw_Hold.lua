-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Timbermaw Hold", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "0c69a8cc",
}, [[
step
  talk Grazle##11554
  accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  note Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
  kill Deadwood Pathfinder##7155 |q 8460/2 |goto Felwood 48.3,89.46
  kill Deadwood Gardener##7154 |q 8460/3 |goto Felwood 48.42,89.84
  kill Deadwood Warrior##7153 |q 8460 |goto Felwood 48.39,91.4
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Meilosh##11557
  accept Runecloth##6031 |goto Felwood 65.69,2.81
step
  note Bring 30 Runecloth to Meilosh in Timbermaw Hold.
  collect 30 Runecloth##14047 |q 6031 |goto Felwood 65.69,2.81 |tip {dropsfrom}humanoids
step
  talk Meilosh##11557
  turnin Runecloth##6031 |goto Felwood 65.69,2.81
step
  talk Meilosh##11557
  accept Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  note Bring 2 Mooncloth to Meilosh in Timbermaw Hold.
  collect 2 Mooncloth##14342 |q 6032 |goto Felwood 65.69,2.81 |tip Crafted or bought.
step
  talk Meilosh##11557
  turnin Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  kill Deadwood Den Watcher##7156 |goto Felwood 62.76,8.01 |tip Loot the quest item here — it starts the quest.
  accept Deadwood Ritual Totem##8470 |goto Felwood 62.76,8.01
step
  note Take the Deadwood Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
  talk Kernda##11558
  turnin Deadwood Ritual Totem##8470 |goto Felwood 65.5,3.52
step
  talk Nafien##15395
  accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  note Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
  kill Deadwood Den Watcher##7156 |q 8461/1 |goto Felwood 62.76,8.01
  kill Deadwood Avenger##7157 |q 8461/2 |goto Felwood 62.67,8.45
  kill Deadwood Shaman##7158 |q 8461 |goto Felwood 62.63,11.22
step
  talk Nafien##15395
  turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  talk Nafien##15395
  accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
  note Travel through Timbermaw Hold and exit into Winterspring. Speak with Salfa, who stands guard outside the entrance to Timbermaw Hold.
  talk Salfa##11556
  turnin Speak to Salfa##8465 |goto Winterspring 27.73,34.5
step
  talk Nafien##15395
  accept Feathers for Nafien##8467 |goto Felwood 64.77,8.13
step
  collect Deadwood Headdress Feather##21377 |q 8467 |goto Felwood 48.39,91.4 |tip {dropsfrom}Deadwood Warrior, Deadwood Gardener, Deadwood Pathfinder
step
  talk Nafien##15395
  turnin Feathers for Nafien##8467 |goto Felwood 64.77,8.13
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  note Travel north along the main road in Felwood and speak with the furbolg named Nafien. He stands guard outside the entrance to Timbermaw Hold.
  talk Nafien##15395
  turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
step
  talk Grazle##11554
  accept Feathers for Grazle##8466 |goto Felwood 50.93,85.01
step
  collect Deadwood Headdress Feather##21377 |q 8466 |goto Felwood 48.39,91.4 |tip {dropsfrom}Deadwood Warrior, Deadwood Gardener, Deadwood Pathfinder
step
  talk Grazle##11554
  turnin Feathers for Grazle##8466 |goto Felwood 50.93,85.01
step
  kill Winterfall Ursa##7438 |goto Winterspring 66.66,37.07 |tip Loot the quest item here — it starts the quest.
  accept Winterfall Ritual Totem##8471 |goto Winterspring 66.66,37.07
step
  note Take the Winterfall Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
  talk Kernda##11558
  turnin Winterfall Ritual Totem##8471 |goto Felwood 65.5,3.52
step
  talk Salfa##11556
  accept Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  note Salfa wants you to kill 8 Winterfall Shaman, 8 Winterfall Den Watchers, and 8 Winterfall Ursa. Salfa is located just outside the entrance to Timbermaw Hold in Winterspring.
  kill Winterfall Den Watcher##7440 |q 8464/2 |goto Winterspring 66.54,35.92
  kill Winterfall Ursa##7438 |q 8464/3 |goto Winterspring 66.66,37.07
  kill Winterfall Shaman##7439 |q 8464 |goto Winterspring 67.86,38.06
step
  talk Salfa##11556
  turnin Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  talk Salfa##11556
  accept Beads for Salfa##8469 |goto Winterspring 27.73,34.5
step
  collect Winterfall Spirit Beads##21383 |q 8469 |goto Winterspring 67.86,38.06 |tip {dropsfrom}Winterfall Shaman, Winterfall Den Watcher, Winterfall Totemic
step
  talk Salfa##11556
  turnin Beads for Salfa##8469 |goto Winterspring 27.73,34.5
step
  talk Gorn One Eye##11555
  accept The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  note Plant the Demon Summoning Torch in the mouth of High Chief Winterfall's cave in the Winterfall furbolg village. Defeat the demon and retrieve the Essence of Xandivious for Gorn One Eye in Timbermaw Hold.
  kill Xandivious##15623 |elite
  goto Winterspring 69.56,38.31
step
  note Plant the Demon Summoning Torch in the mouth of High Chief Winterfall's cave in the Winterfall furbolg village. Defeat the demon and retrieve the Essence of Xandivious for Gorn One Eye in Timbermaw Hold.
  collect Essence of Xandivious##21145 |q 8481 |goto Winterspring 69.56,38.31 |tip {dropsfrom}Xandivious' Demon Bag
step
  talk Gorn One Eye##11555
  turnin The Root of All Evil##8481 |goto Felwood 65.18,2.68
]])
