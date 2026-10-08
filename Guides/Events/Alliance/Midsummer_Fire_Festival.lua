-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Midsummer Fire Festival", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "c5e3ac02",
}, [[
step
  talk Festival Loremaster##16817
  accept Flickering Flames in Kalimdor##9388 |goto Teldrassil 56.47,92.23
step
  note Visit the bonfires within Ashenvale, the Barrens, Darkshore, and Stonetalon Mountains, then speak with the Festival Flamekeeper.
  collect Flame of Ashenvale##181561 |q 9388 |goto Ashenvale 64.81,71.62
step
  talk Festival Flamekeeper##16788
  turnin Flickering Flames in Kalimdor##9388 |goto Teldrassil 56.56,91.94
step
  talk Festival Loremaster##16817
  accept Flickering Flames in the Eastern Kingdoms##9389 |goto Teldrassil 56.47,92.23
step
  note Visit the bonfires within Hillsbrad Foothills, Silverpine Forest, Westfall, and the Wetlands, then speak with the Festival Flamekeeper.
  collect Flame of Hillsbrad##181566 |q 9389 |goto Hillsbrad Foothills 54.42,34.01
step
  talk Festival Flamekeeper##16788
  turnin Flickering Flames in the Eastern Kingdoms##9389 |goto Teldrassil 56.56,91.94
step
  collect Flame of Orgrimmar##181336 |goto Orgrimmar 42.1,34.3 |tip Loot the quest item here — it starts the quest.
  accept Stealing Orgrimmar's Flame##9324 |goto Orgrimmar 42.1,34.3
step
  note Return the Flame of Orgrimmar to the Festival Loremaster.
  talk Festival Loremaster##16817
  turnin Stealing Orgrimmar's Flame##9324 |goto Teldrassil 56.47,92.23
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
  talk Festival Loremaster##16817
  accept The Festival of Fire##9367 |goto Teldrassil 56.47,92.23
step
  note Touch the bonfires within Stormwind, Ironforge, and Darnassus, then speak to a Festival Loremaster within the capital cities.
  collect Flame of Stormwind##181332 |q 9367 |goto Stormwind City 49.71,72.29
step
  talk Festival Loremaster##16817
  turnin The Festival of Fire##9367 |goto Teldrassil 56.47,92.23
step
  collect Flame of Thunder Bluff##181337 |goto Thunder Bluff 20.99,26.77 |tip Loot the quest item here — it starts the quest.
  accept Stealing Thunder Bluff's Flame##9325 |goto Thunder Bluff 20.99,26.77
step
  note Return the Flame of Thunder Bluff to the Festival Loremaster.
  talk Festival Loremaster##16817
  turnin Stealing Thunder Bluff's Flame##9325 |goto Teldrassil 56.47,92.23
step
  collect Flame of the Undercity##181335 |goto Undercity 66.01,36.85 |tip Loot the quest item here — it starts the quest.
  accept Stealing the Undercity's Flame##9326 |goto Undercity 66.01,36.85
step
  note Return the Flame of the Undercity to the Festival Loremaster.
  talk Festival Loremaster##16817
  turnin Stealing the Undercity's Flame##9326 |goto Teldrassil 56.47,92.23
step
  talk Festival Loremaster##16817
  accept A Thief's Reward##9365 |goto Teldrassil 56.47,92.23
step
  talk Festival Loremaster##16817
  turnin A Thief's Reward##9365 |goto Teldrassil 56.47,92.23
]])
