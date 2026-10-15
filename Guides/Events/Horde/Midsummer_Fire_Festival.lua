-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Midsummer Fire Festival", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "b9a25ef7",
}, [[
step
  talk Festival Talespinner##16818
  accept Flickering Flames in Kalimdor##9388 |goto Undercity 66.47,37.76
step
  note Visit the bonfires within Ashenvale, the Barrens, Darkshore, and Stonetalon Mountains, then speak with the Festival Flamekeeper.
  click Flame of Ashenvale##181561 |q 9388/1 |goto Ashenvale 64.81,71.62
  click Flame of the Barrens##181560 |q 9388/2 |goto The Barrens 59.77,39.28
  click Flame of Darkshore##181563 |q 9388/3 |goto Darkshore 41.52,90.68
  click Flame of Stonetalon##181562 |q 9388 |goto Stonetalon Mountains 59.45,72.36
step
  talk Festival Flamekeeper##16788
  turnin Flickering Flames in Kalimdor##9388 |goto Teldrassil 56.56,91.94
step
  talk Festival Talespinner##16818
  accept Flickering Flames in the Eastern Kingdoms##9389 |goto Undercity 66.47,37.76
step
  note Visit the bonfires within Hillsbrad Foothills, Silverpine Forest, Westfall, and the Wetlands, then speak with the Festival Flamekeeper.
  click Flame of Hillsbrad##181566 |q 9389/1 |goto Hillsbrad Foothills 54.42,34.01
  click Flame of Silverpine##181564 |q 9389/2 |goto Silverpine Forest 54.26,69.46
  click Flame of Westfall##181565 |q 9389/3 |goto Westfall 34.02,80.4
  click Flame of the Wetlands##181567 |q 9389 |goto Wetlands 51.23,17.29
step
  talk Festival Flamekeeper##16788
  turnin Flickering Flames in the Eastern Kingdoms##9389 |goto Teldrassil 56.56,91.94
step
  collect Flame of Ironforge##181333 |goto Ironforge 64.6,24.84 |tip Loot the quest item here — it starts the quest.
  accept Stealing Ironforge's Flame##9331 |goto Ironforge 64.6,24.84
step
  note Return the Flame of Ironforge to the Festival Talespinner.
  talk Festival Talespinner##16818
  turnin Stealing Ironforge's Flame##9331 |goto Undercity 66.47,37.76
step
  collect Flame of Stormwind##181332 |goto Stormwind City 49.71,72.29 |tip Loot the quest item here — it starts the quest.
  accept Stealing Stormwind's Flame##9330 |goto Stormwind City 49.71,72.29
step
  note Return the Flame of Stormwind to the Festival Talespinner.
  talk Festival Talespinner##16818
  turnin Stealing Stormwind's Flame##9330 |goto Undercity 66.47,37.76
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9319 |goto Teldrassil 56.56,91.94
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then return to the Festival Flamekeeper.
  click Flame of Dire Maul##181346 |q 9319 |goto Dire Maul - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9319 |goto Teldrassil 56.56,91.94
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9386 |goto Teldrassil 56.56,91.94
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then speak with the Festival Flamekeeper.
  click Flame of Dire Maul##181346 |q 9386 |goto Dire Maul - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9386 |goto Teldrassil 56.56,91.94
step
  talk Festival Flamekeeper##16788
  accept Wild Fires in Kalimdor##9322 |goto Teldrassil 56.56,91.94
step
  note Visit the Midsummer camps located in Azshara, Silithus, Un'Goro Crater, and Winterspring, then return to the Festival Flamekeeper.
  click Flame of Azshara##181342 |q 9322/1 |goto Azshara 41.42,43.25
  click Flame of Silithus##181339 |q 9322/2 |goto Silithus 77.93,18.83
  click Flame of Un'Goro##181343 |q 9322/3 |goto Un'Goro Crater 70.31,75.86
  click Flame of Winterspring##181340 |q 9322 |goto Winterspring 30.73,43.12
step
  talk Festival Flamekeeper##16788
  turnin Wild Fires in Kalimdor##9322 |goto Teldrassil 56.56,91.94
step
  talk Festival Flamekeeper##16788
  accept Wild Fires in the Eastern Kingdoms##9323 |goto Teldrassil 56.56,91.94
step
  note Visit the Fire Festival camps located in Blasted Lands, Eastern Plaguelands, the Hinterlands and Searing Gorge, then speak with the Festival Flamekeeper.
  click Flame of the Blasted Lands##181344 |q 9323/1 |goto Blasted Lands 54.1,31.13
  click Flame of the Plaguelands##181338 |q 9323/2 |goto Eastern Plaguelands 50.1,61.42
  click Flame of the Hinterlands##181345 |q 9323/3 |goto The Hinterlands 62.1,53.33
  click Flame of Searing Gorge##181341 |q 9323 |goto Searing Gorge 32.84,73.04
step
  talk Festival Flamekeeper##16788
  turnin Wild Fires in the Eastern Kingdoms##9323 |goto Teldrassil 56.56,91.94
step
  collect Flame of Darnassus##181334 |goto Teldrassil 56.6,92.12 |tip Loot the quest item here — it starts the quest.
  accept Stealing Darnassus's Flame##9332 |goto Teldrassil 56.6,92.12
step
  note Return the Flame of Darnassus to the Festival Talespinner.
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
  click Flame of the Undercity##181335 |q 9368/3 |goto Undercity 66.01,36.85
  click Flame of Orgrimmar##181336 |q 9368/1 |goto Orgrimmar 42.1,34.3
  click Flame of Thunder Bluff##181337 |q 9368 |goto Thunder Bluff 20.99,26.77
step
  talk Festival Talespinner##16818
  turnin The Festival of Fire##9368 |goto Undercity 66.47,37.76
]])
