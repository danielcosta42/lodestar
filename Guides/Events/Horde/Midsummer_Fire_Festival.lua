-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Midsummer Fire Festival", {
	faction = "Horde",
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
  accept Torch Catching##11657 |goto Teldrassil 56.56,92.09
step
  talk Earthen Ring Elder##26221
  accept Unusual Activity##11886 |goto Teldrassil 56.1,92.16
step
  talk Flame Eater##25994
  accept Playing with Fire##11915 |goto Shattrath City 59.09,38.73
step
  talk Master Flame Eater##26113
  accept Torch Tossing##11922 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  accept Torch Catching##11923 |goto Thunder Bluff 21.72,25.35
step
  talk Festival Talespinner##16818
  accept Stealing the Exodar's Flame##11933 |goto Thunder Bluff 21.33,26.44
step
  talk Festival Talespinner##16818
  accept Incense for the Festival Scorchlings##11966 |goto Thunder Bluff 21.33,26.44
step
  talk Goblin Commoner##20102
  accept The Spinner of Summer Tales##11971 |goto Shattrath City 55.17,47.04
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then return to the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9319 |goto Dire Maul - Dungeon -1,-1
step
  note Touch the bonfires within Orgrimmar, Thunder Bluff, and the Undercity, then speak to a Festival Talespinner within the capital cities.
  collect Flame of Orgrimmar##181336 |q 9368 |goto Orgrimmar 46.89,38.72
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
  talk Festival Talespinner##16818
  turnin Stealing Stormwind's Flame##9330 |goto Thunder Bluff 21.33,26.44
step
  talk Festival Talespinner##16818
  turnin Stealing Ironforge's Flame##9331 |goto Thunder Bluff 21.33,26.44
step
  talk Festival Talespinner##16818
  turnin Stealing Darnassus's Flame##9332 |goto Thunder Bluff 21.33,26.44
step
  talk Master Fire Eater##25975
  turnin Torch Catching##11657 |goto Teldrassil 56.56,92.09
step
  talk Master Flame Eater##26113
  turnin Playing with Fire##11915 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin Torch Tossing##11922 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin Torch Catching##11923 |goto Thunder Bluff 21.72,25.35
step
  talk Festival Talespinner##16818
  turnin Stealing the Exodar's Flame##11933 |goto Thunder Bluff 21.33,26.44
step
  talk Festival Scorchling##26520
  turnin Incense for the Festival Scorchlings##11966 |goto Terokkar Forest 51.98,42.98
step
  talk Festival Talespinner##16818
  turnin The Spinner of Summer Tales##11971 |goto Thunder Bluff 21.33,26.44
step
  talk Festival Talespinner##16818
  accept A Thief's Reward##9339 |goto Thunder Bluff 21.33,26.44
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9386
step
  talk Master Fire Eater##25975
  accept More Torch Tossing##11921 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  accept More Torch Catching##11924 |goto Teldrassil 56.56,92.09
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
  talk Festival Talespinner##16818
  turnin A Thief's Reward##9339 |goto Thunder Bluff 21.33,26.44
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9386
step
  talk Master Fire Eater##25975
  turnin More Torch Tossing##11921 |goto Teldrassil 56.56,92.09
step
  talk Master Fire Eater##25975
  turnin More Torch Catching##11924 |goto Teldrassil 56.56,92.09
step
  talk Master Flame Eater##26113
  turnin More Torch Catching##11925 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin More Torch Tossing##11926 |goto Thunder Bluff 21.72,25.35
]])
