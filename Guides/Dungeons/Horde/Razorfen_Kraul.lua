-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Razorfen Kraul", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "a14f49b6",
}, [[
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  talk Mebok Mizzyrix##3446
  accept Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  talk Willix the Importer##4508
  accept Willix the Importer##1144 |goto Razorfen Kraul - Dungeon -1,-1
step
  only Shaman
  talk Rau Cliffrunner##4722
  accept Elemental Aid##79360 |goto Thousand Needles 46.14,51.71
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
  only Warrior
  note Bring 5 twitching antennae to Ruga Ragetotem at Camp Taurajo
  collect 5 Twitching Antenna##7119 |q 1824 |goto The Barrens 45.23,70.16 |tip {dropsfrom}Silithid Creeper, Silithid Grub, Silithid Protector
step
  note Grab a Crate with Holes.
  collect 6 Blueleaf Tuber##5876 |q 1221/1 |goto Razorfen Kraul - Dungeon -1,-1
  collect Crate With Holes##5880 |q 1221/2 |goto The Barrens 62.32,37.62
  collect Snufflenose Owner's Manual##5897 |q 1221/3 |goto The Barrens 62.33,37.62
  collect Snufflenose Command Stick##6684 |q 1221 |goto The Barrens 62.34,37.6 |tip {dropsfrom}Snufflenose Command Sticks
step
  only Shaman
  note Defeat Charlga Razorflank in Razorfen Kraul and collect information on the quilboar's plans.
  collect Tattered Note##274463 |q 79360 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Charlga Razorflank
step
  note Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity.
  collect 1 Kraul Guano##5801 |q 1109 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Kraul Bat, Greater Kraul Bat, Blind Hunter
step
  note Bring Razorflank's Heart to Auld Stonespire in Thunder Bluff.
  collect Razorflank's Heart##5793 |q 1102 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Charlga Razorflank
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  talk Mebok Mizzyrix##3446
  turnin Blueleaf Tubers##1221 |goto The Barrens 62.37,37.62
step
  note Escort Willix the Importer out of Razorfen Kraul.
  talk Willix the Importer##4508
  turnin Willix the Importer##1144 |goto Razorfen Kraul - Dungeon -1,-1
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Aid##79360 |goto Alterac Mountains 80.5,66.92
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
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  only Warrior
  note Bring to Thun'grim Firegaze 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars and a Vial of Phlogiston.
  collect 15 Smoky Iron Ingot##7126 |q 1838/1 |goto Stonetalon Mountains 71.76,60.29 |tip {dropsfrom}Windshear Vermin, Windshear Digger, Windshear Tunnel Rat
  collect 10 Powdered Azurite##7127 |q 1838/2 |goto Hillsbrad Foothills 30.44,55.62 |tip {dropsfrom}Hillsbrad Miner
  collect 10 Iron Bar##3575 |q 1838/3 |tip Crafted or bought.
  collect Vial of Phlogiston##6841 |q 1838 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Roogug
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Brutal Armor##1838 |goto The Barrens 57.23,30.34
]])
