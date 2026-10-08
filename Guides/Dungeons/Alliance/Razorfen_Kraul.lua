-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Razorfen Kraul", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Mebok Mizzyrix##3446
  accept Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  talk Heralath Fallowbrook##4510
  accept Mortality Wanes##1142 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Willix the Importer##4508
  accept Willix the Importer##1144 |goto Razorfen Kraul - Dungeon -1,-1
step
  collect Henrig Lonebrow's Journal##19861 |goto Thousand Needles 30.73,24.35 |tip Loot the quest item here — it starts the quest.
  accept Lonebrow's Journal##1100 |goto Thousand Needles 30.73,24.35
step
  note Grab a Crate with Holes.
  collect Blueleaf Tuber##5876 |q 1221 |goto Razorfen Kraul - Dungeon -1,-1
step
  note Find and return Treshala's Pendant to Treshala Fallowbrook in Darnassus.
  collect Treshala's Pendant##5825 |q 1142 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Overlord Ramtusk, Charlga Razorflank, Aggem Thorncurse
step
  talk Mebok Mizzyrix##3446
  turnin Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  talk Treshala Fallowbrook##4521
  turnin Mortality Wanes##1142 |goto Darnassus 69.54,67.75
step
  talk Willix the Importer##4508
  turnin Willix the Importer##1144 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Falfindel Waywarder##4048
  turnin Lonebrow's Journal##1100 |goto Feralas 89.64,46.57
step
  talk Falfindel Waywarder##4048
  accept The Crone of the Kraul##1101 |goto Feralas 89.64,46.57
step
  note Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar.
  collect Razorflank's Medallion##5792 |q 1101 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Charlga Razorflank
step
  talk Falfindel Waywarder##4048
  turnin The Crone of the Kraul##1101 |goto Feralas 89.64,46.57
]])
