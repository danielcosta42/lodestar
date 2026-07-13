-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Stratholme", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9319
step
  talk Aurius##10917
  accept The Medallion of Faith##5122 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Elder Farwhisper##15607
  accept Farwhisper the Elder##8727 |goto Stratholme - Dungeon -1,-1
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then return to the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9319 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9319
step
  talk Aurius##10917
  turnin The Medallion of Faith##5122 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Elder Farwhisper##15607
  turnin Farwhisper the Elder##8727 |goto Stratholme - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9386
step
  talk Aurius##10917
  accept Aurius' Reckoning##5125 |goto Stratholme - Dungeon -1,-1
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then speak with the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9386 |goto Dire Maul - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9386
step
  talk Aurius##10917
  turnin Aurius' Reckoning##5125 |goto Stratholme - Dungeon -1,-1
]])
