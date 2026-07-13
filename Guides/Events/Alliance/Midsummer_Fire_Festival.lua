-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Midsummer Fire Festival", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9319
step
  talk Festival Flamekeeper##16788
  accept Wild Fires in Kalimdor##9322
step
  talk Festival Flamekeeper##16788
  accept Wild Fires in the Eastern Kingdoms##9323
step
  talk Master Fire Eater##25975
  accept Torch Tossing##11731 |goto Teldrassil 56.56,92.09
step
  talk Fire Eater##25962
  accept Playing with Fire##11882 |goto Shattrath City 60.66,49.95
step
  talk Earthen Ring Elder##26221
  accept Unusual Activity##11886 |goto Teldrassil 56.1,92.16
step
  talk Master Flame Eater##26113
  accept Torch Catching##11923 |goto Thunder Bluff 21.72,25.35
step
  talk Festival Loremaster##16817
  accept Incense for the Summer Scorchlings##11964 |goto Teldrassil 56.52,92.34
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then return to the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9319 |goto Dire Maul - Dungeon -1,-1
step
  note Visit the Midsummer camps located in Azshara, Silithus, Un'Goro Crater, and Winterspring, then return to the Festival Flamekeeper.
  collect Flame of Azshara##181342 |q 9322
step
  note Visit the Fire Festival camps located in Blasted Lands, Eastern Plaguelands, the Hinterlands and Searing Gorge, then speak with the Festival Flamekeeper.
  collect Flame of the Blasted Lands##181344 |q 9323
step
  note Touch the bonfires within Stormwind, Ironforge, and Darnassus, then speak to a Festival Loremaster within the capital cities.
  collect Flame of Stormwind##181332 |q 9367 |goto Stormwind City 38.93,62.27
step
  note Slay the Frostwave Lieutenant summoned from the Ice Stone located on Zoram Strand in Ashenvale, then return to the Earthen Ring Elder in a capital city.
  kill Frostwave Lieutenant##26116 |q 11917
step
  note Visit the bonfires within Ashenvale, the Barrens, Darkshore, and Stonetalon Mountains, then speak with the Festival Flamekeeper.
  collect Flame of Ashenvale##181561 |q 9388
step
  note Visit the bonfires within Hillsbrad Foothills, Silverpine Forest, Westfall, and the Wetlands, then speak with the Festival Flamekeeper.
  collect Flame of Hillsbrad##181566 |q 9389
step
  note Slay the Hailstone Lieutenant summoned from the Ice Stone located at Ethel Rethor in Desolace, then return to the Earthen Ring Elder in a capital city.
  kill Hailstone Lieutenant##26178 |q 11947
step
  note Slay the Chillwind Lieutenant summoned from the Ice Stone located on the water elemental's island in western Stranglethorn Vale, then return to the Earthen Ring Elder in a capital city.
  kill Chillwind Lieutenant##26204 |q 11948
step
  note Slay the Frigid Lieutenant summoned from the Ice Stone located in the cave underneath Firewatch Ridge in the northwest of Searing Gorge, then return to the Earthen Ring Elder in a capital city.
  kill Frigid Lieutenant##26214 |q 11952
step
  note Slay the Glacial Lieutenant summoned from the Ice Stone located at Twilight's Run in northern Silithus, then return to the Earthen Ring Elder in a capital city.
  kill Glacial Lieutenant##26215 |q 11953
step
  note Slay the Glacial Templar summoned from the Ice Stone located near the Dark Portal in Hellfire Peninsula, then return to the Earthen Ring Elder in a capital city.
  kill Glacial Templar##26216 |q 11954
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9319
step
  talk Festival Flamekeeper##16788
  turnin Wild Fires in Kalimdor##9322
step
  talk Festival Flamekeeper##16788
  turnin Wild Fires in the Eastern Kingdoms##9323
step
  talk Festival Loremaster##16817
  turnin Stealing Orgrimmar's Flame##9324 |goto Teldrassil 56.52,92.34
step
  talk Festival Loremaster##16817
  turnin Stealing Thunder Bluff's Flame##9325 |goto Teldrassil 56.52,92.34
step
  talk Festival Loremaster##16817
  turnin Stealing the Undercity's Flame##9326 |goto Teldrassil 56.52,92.34
step
  talk Master Fire Eater##25975
  turnin Torch Tossing##11731 |goto Teldrassil 56.56,92.09
step
  talk Master Flame Eater##26113
  turnin Playing with Fire##11882 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin Torch Catching##11923 |goto Thunder Bluff 21.72,25.35
step
  talk Festival Loremaster##16817
  turnin Stealing Silvermoon's Flame##11935 |goto Teldrassil 56.52,92.34
step
  talk Summer Scorchling##26401
  turnin Incense for the Summer Scorchlings##11964 |goto Teldrassil 55.0,60.41
step
  talk Festival Loremaster##16817
  turnin The Master of Summer Lore##11970 |goto Teldrassil 56.52,92.34
step
  talk Festival Loremaster##16817
  accept A Thief's Reward##9365 |goto Teldrassil 56.52,92.34
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9386
step
  talk Master Fire Eater##25975
  accept Torch Catching##11657 |goto Teldrassil 56.56,92.09
step
  talk Master Flame Eater##26113
  accept More Torch Catching##11925 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  accept More Torch Tossing##11926 |goto Thunder Bluff 21.72,25.35
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then speak with the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9386 |goto Dire Maul - Dungeon -1,-1
step
  talk Festival Loremaster##16817
  turnin A Thief's Reward##9365 |goto Teldrassil 56.52,92.34
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9386
step
  talk Master Fire Eater##25975
  turnin Torch Catching##11657 |goto Teldrassil 56.56,92.09
step
  talk Master Flame Eater##26113
  turnin More Torch Catching##11925 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin More Torch Tossing##11926 |goto Thunder Bluff 21.72,25.35
step
  talk Master Fire Eater##25975
  accept More Torch Tossing##11921 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  accept More Torch Catching##11924 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  turnin More Torch Tossing##11921 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  turnin More Torch Catching##11924 |goto Teldrassil 56.56,92.09
]])
