-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Midsummer Fire Festival", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Festival Talespinner##16818
  accept Flickering Flames in Kalimdor##9388 |goto Undercity 66.47,37.76
step
  note Visit the bonfires within Ashenvale, the Barrens, Darkshore, and Stonetalon Mountains, then speak with the Festival Flamekeeper.
  collect Flame of Ashenvale##181561 |q 9388 |goto Ashenvale 64.81,71.62
step
  talk Festival Flamekeeper##16788
  turnin Flickering Flames in Kalimdor##9388 |goto Teldrassil 56.56,91.94
step
  talk Festival Talespinner##16818
  accept Flickering Flames in the Eastern Kingdoms##9389 |goto Undercity 66.47,37.76
step
  note Visit the bonfires within Hillsbrad Foothills, Silverpine Forest, Westfall, and the Wetlands, then speak with the Festival Flamekeeper.
  collect Flame of Hillsbrad##181566 |q 9389 |goto Hillsbrad Foothills 54.42,34.01
step
  talk Festival Flamekeeper##16788
  turnin Flickering Flames in the Eastern Kingdoms##9389 |goto Teldrassil 56.56,91.94
step
  collect Flame of Ironforge##181333 |goto Ironforge 64.6,24.84 |tip Loot the quest item here — it starts the quest.
  accept Stealing Ironforge's Flame##9331 |goto Ironforge 64.6,24.84
step
  talk Festival Talespinner##16818
  turnin Stealing Ironforge's Flame##9331 |goto Undercity 66.47,37.76
step
  collect Flame of Stormwind##181332 |goto Stormwind City 49.71,72.29 |tip Loot the quest item here — it starts the quest.
  accept Stealing Stormwind's Flame##9330 |goto Stormwind City 49.71,72.29
step
  talk Festival Talespinner##16818
  turnin Stealing Stormwind's Flame##9330 |goto Undercity 66.47,37.76
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9319 |goto Teldrassil 56.56,91.94
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then return to the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9319 |goto Dire Maul - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9319 |goto Teldrassil 56.56,91.94
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9386 |goto Teldrassil 56.56,91.94
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then speak with the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9386 |goto Dire Maul - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9386 |goto Teldrassil 56.56,91.94
step
  talk Festival Flamekeeper##16788
  accept Wild Fires in Kalimdor##9322 |goto Teldrassil 56.56,91.94
step
  note Visit the Midsummer camps located in Azshara, Silithus, Un'Goro Crater, and Winterspring, then return to the Festival Flamekeeper.
  collect Flame of Azshara##181342 |q 9322 |goto Azshara 41.42,43.25
step
  talk Festival Flamekeeper##16788
  turnin Wild Fires in Kalimdor##9322 |goto Teldrassil 56.56,91.94
step
  talk Festival Flamekeeper##16788
  accept Wild Fires in the Eastern Kingdoms##9323 |goto Teldrassil 56.56,91.94
step
  note Visit the Fire Festival camps located in Blasted Lands, Eastern Plaguelands, the Hinterlands and Searing Gorge, then speak with the Festival Flamekeeper.
  collect Flame of the Blasted Lands##181344 |q 9323 |goto Blasted Lands 54.1,31.13
step
  talk Festival Flamekeeper##16788
  turnin Wild Fires in the Eastern Kingdoms##9323 |goto Teldrassil 56.56,91.94
step
  collect Flame of Darnassus##181334 |goto Teldrassil 56.6,92.12 |tip Loot the quest item here — it starts the quest.
  accept Stealing Darnassus's Flame##9332 |goto Teldrassil 56.6,92.12
step
  talk Festival Talespinner##16818
  turnin Stealing Darnassus's Flame##9332 |goto Undercity 66.47,37.76
step
  talk Festival Talespinner##16818
  accept A Thief's Reward##9339 |goto Undercity 66.47,37.76
step
  talk Festival Talespinner##16818
  turnin A Thief's Reward##9339 |goto Undercity 66.47,37.76
step
  talk Festival Talespinner##16818
  accept The Festival of Fire##9368 |goto Undercity 66.47,37.76
step
  note Touch the bonfires within Orgrimmar, Thunder Bluff, and the Undercity, then speak to a Festival Talespinner within the capital cities.
  collect Flame of Orgrimmar##181336 |q 9368 |goto Orgrimmar 42.1,34.3
step
  talk Festival Talespinner##16818
  turnin The Festival of Fire##9368 |goto Undercity 66.47,37.76
]])
