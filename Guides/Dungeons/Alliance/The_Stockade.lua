-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/The Stockade", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "b30ef47f",
}, [[
step
  kill Edwin VanCleef##639 |goto The Deadmines - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Unsent Letter##373 |goto The Deadmines - Dungeon -1,-1
step
  talk Guard Berton##859
  accept What Comes Around...##386 |goto Redridge Mountains 21.17,46.58
step
  talk Councilman Millstipe##270
  accept Crime and Punishment##377 |goto Duskwood 71.92,47.79
step
  talk Nikova Raskol##1721
  accept The Color of Blood##388 |goto Stormwind City 76.42,63.67
step
  talk Warden Thelwater##1719
  accept Quell The Uprising##387 |goto Stormwind City 51.49,69.38
step
  talk Motley Garmason##1074
  accept The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  note Bring the head of Targorr the Dread to Guard Berton in Lakeshire.
  collect Head of Targorr##3630 |q 386 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Targorr the Dread
step
  note Councilman Millstipe of Darkshire wants you to bring him the hand of Dextren Ward.
  collect Hand of Dextren Ward##3628 |q 377 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Dextren Ward
step
  note Nikova Raskol of Stormwind wants you to collect 10 Red Wool Bandanas.
  collect 10 Red Wool Bandana##2909 |q 388 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Dextren Ward, Defias Prisoner, Defias Captive
step
  note Warden Thelwater of Stormwind wants you to kill 10 Defias Prisoners, 8 Defias Convicts, and 8 Defias Insurgents in The Stockade.
  kill Defias Prisoner##1706 |q 387 |goto The Stockade - Dungeon -1,-1 |elite
step
  note Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
  kill Dark Iron Dwarf##1051 |q 303 |goto Wetlands 59.93,23.02 |elite
step
  note Deliver the Letter to the City Architect to Baros Alexston in Stormwind.
  talk Baros Alexston##1646
  turnin The Unsent Letter##373 |goto Stormwind City 57.74,47.86
step
  talk Guard Berton##859
  turnin What Comes Around...##386 |goto Redridge Mountains 21.17,46.58
step
  talk Councilman Millstipe##270
  turnin Crime and Punishment##377 |goto Duskwood 71.92,47.79
step
  talk Nikova Raskol##1721
  turnin The Color of Blood##388 |goto Stormwind City 76.42,63.67
step
  talk Warden Thelwater##1719
  turnin Quell The Uprising##387 |goto Stormwind City 51.49,69.38
step
  talk Motley Garmason##1074
  turnin The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  talk Baros Alexston##1646
  accept Bazil Thredd##389 |goto Stormwind City 57.74,47.86
step
  talk Motley Garmason##1074
  accept The Fury Runs Deep##378 |goto Wetlands 49.67,18.23
step
  note Motley Garmason wants Kam Deepfury's head brought to him at Dun Modr.
  collect Head of Deepfury##3640 |q 378 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Kam Deepfury
step
  note Speak with Warden Thelwater in the Stockade.
  talk Warden Thelwater##1719
  turnin Bazil Thredd##389 |goto Stormwind City 51.49,69.38
step
  talk Motley Garmason##1074
  turnin The Fury Runs Deep##378 |goto Wetlands 49.67,18.23
step
  talk Warden Thelwater##1719
  accept The Stockade Riots##391 |goto Stormwind City 51.49,69.38
step
  note Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade.
  collect Head of Bazil Thredd##2926 |q 391 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Bazil Thredd
step
  talk Warden Thelwater##1719
  turnin The Stockade Riots##391 |goto Stormwind City 51.49,69.38
]])
