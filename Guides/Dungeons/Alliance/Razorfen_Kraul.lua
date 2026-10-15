-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Razorfen Kraul", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "b54c511d",
}, [[
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
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
  only Shaman
  talk Veyric Thunderhame##259023
  accept Elemental Aid##96264 |goto Arathi Highlands 59.77,27.6
step
  collect Henrig Lonebrow's Journal##19861 |goto Thousand Needles 30.73,24.35 |tip Loot the quest item here — it starts the quest.
  accept Lonebrow's Journal##1100 |goto Thousand Needles 30.73,24.35
step
  only Warrior
  note Enter the Rethban Caverns, reach the first fork, and return to Yorus Barleybrew within the time allowed.
  goto Redridge Mountains 14.05,24.71 |tip Enter the Rethban Caverns
step
  note Grab a Crate with Holes.
  collect 6 Blueleaf Tuber##5876 |q 1221/1 |goto Razorfen Kraul - Dungeon -1,-1
  collect Crate With Holes##5880 |q 1221/2 |goto The Barrens 62.32,37.62
  collect Snufflenose Owner's Manual##5897 |q 1221/3 |goto The Barrens 62.33,37.62
  collect Snufflenose Command Stick##6684 |q 1221 |goto The Barrens 62.34,37.6 |tip {dropsfrom}Snufflenose Command Sticks
step
  note Find and return Treshala's Pendant to Treshala Fallowbrook in Darnassus.
  collect Treshala's Pendant##5825 |q 1142 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Aggem Thorncurse, Death Speaker Jargba, Razorfen Warrior
step
  only Shaman
  note Defeat Charlga Razorflank in Razorfen Kraul and collect information on the quilboar's plans.
  collect Tattered Note##274463 |q 96264 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Charlga Razorflank
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  talk Mebok Mizzyrix##3446
  turnin Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  talk Treshala Fallowbrook##4521
  turnin Mortality Wanes##1142 |goto Darnassus 69.54,67.75
step
  note Escort Willix the Importer out of Razorfen Kraul.
  talk Willix the Importer##4508
  turnin Willix the Importer##1144 |goto Razorfen Kraul - Dungeon -1,-1
step
  only Shaman
  talk Veyric Thunderhame##259023
  turnin Elemental Aid##96264 |goto Arathi Highlands 59.77,27.6
step
  note Read Henrig Lonebrow's Journal.
  talk Falfindel Waywarder##4048
  turnin Lonebrow's Journal##1100 |goto Feralas 89.64,46.57
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Shieldsmith##1702 |goto Redridge Mountains 21.49,44.72
step
  talk Falfindel Waywarder##4048
  accept The Crone of the Kraul##1101 |goto Feralas 89.64,46.57
step
  note Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar.
  collect Razorflank's Medallion##5792 |q 1101 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Charlga Razorflank
step
  only Warrior
  note Bring the Cask of Scalder to Furen Longbeard.
  talk Furen Longbeard##5413
  turnin The Shieldsmith##1702 |goto Stormwind City 64.62,37.23
step
  talk Falfindel Waywarder##4048
  turnin The Crone of the Kraul##1101 |goto Feralas 89.64,46.57
step
  only Warrior
  talk Furen Longbeard##5413
  accept Fire Hardened Mail##1701 |goto Stormwind City 64.62,37.23
step
  only Warrior
  note Gather the materials Furen Longbeard requires, and bring them to him in Stormwind.
  collect Scorched Spider Fang##6838 |q 1701/1 |goto Wetlands 52.66,63.02 |tip {dropsfrom}Leech Stalker, Cave Stalker
  collect Charred Horn##6839 |q 1701/2 |goto Stonetalon Mountains 32.84,72.68 |tip {dropsfrom}Fledgling Chimaera, Young Chimaera
  collect Galvanized Horn##6840 |q 1701/3 |goto Stonetalon Mountains 33.64,74.66 |tip {dropsfrom}Chimaera Matriarch
  collect Vial of Phlogiston##6841 |q 1701 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Roogug
step
  only Warrior
  talk Furen Longbeard##5413
  turnin Fire Hardened Mail##1701 |goto Stormwind City 64.62,37.23
]])
