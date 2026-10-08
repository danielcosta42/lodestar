-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Razorfen Kraul", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "37ca6d5c",
}, [[
step
  talk Mebok Mizzyrix##3446
  accept Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  talk Willix the Importer##4508
  accept Willix the Importer##1144 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Master Apothecary Faranell##2055
  accept Going, Going, Guano!##1109 |goto Undercity 48.82,69.28
step
  talk Auld Stonespire##4451
  accept A Vengeful Fate##1102 |goto Thunder Bluff 35.97,59.92
step
  kill Charlga Razorflank##4421 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept An Unholy Alliance##6522 |goto Razorfen Kraul - Dungeon -1,-1
step
  note Grab a Crate with Holes.
  collect Blueleaf Tuber##5876 |q 1221 |goto Razorfen Kraul - Dungeon -1,-1
step
  note Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity.
  collect 1 Kraul Guano##5801 |q 1109 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Kraul Bat, Greater Kraul Bat, Blind Hunter
step
  note Bring Razorflank's Heart to Auld Stonespire in Thunder Bluff.
  collect Razorflank's Heart##5793 |q 1102 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Charlga Razorflank
step
  talk Mebok Mizzyrix##3446
  turnin Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  note Escort Willix the Importer out of Razorfen Kraul.
  talk Willix the Importer##4508
  turnin Willix the Importer##1144 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Master Apothecary Faranell##2055
  turnin Going, Going, Guano!##1109 |goto Undercity 48.82,69.28
step
  talk Auld Stonespire##4451
  turnin A Vengeful Fate##1102 |goto Thunder Bluff 35.97,59.92
step
  note Take the Small Scroll to Varimathras in the Undercity.
  talk Varimathras##2425
  turnin An Unholy Alliance##6522 |goto Undercity 56.25,92.2
]])
