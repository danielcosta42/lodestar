-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Shadowfang Keep", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "c4540955",
}, [[
step
  only Dwarf Paladin completed(1653)
  talk Jordan Stilwell##6181
  accept The Test of Righteousness##1654 |goto Dun Morogh 52.49,36.92
step
  only Warlock
  talk Doan Karhan##6247
  accept The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  only Dwarf Paladin completed(1653)
  note Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge.
  collect Whitestone Oak Lumber##6994 |q 1654/1 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Goblin Woodcarver
  collect Jordan's Refined Ore Shipment##6993 |q 1654/2 |goto Loch Modan 35.95,44.91 |tip {dropsfrom}Bailor Stonehand
  collect Jordan's Smithing Hammer##6895 |q 1654/3 |goto Shadowfang Keep - Dungeon -1,-1 |tip {dropsfrom}Jordan's Hammer
  collect Purified Kor Gem##7083 |q 1654 |goto Darkshore 37.4,40.13 |tip {dropsfrom}Thundris Windweaver
step
  only Warlock
  note Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
  collect 3 Soran'ruk Fragment##6914 |q 1740 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Acolyte
step
  only Dwarf Paladin completed(1653)
  talk Jordan Stilwell##6181
  turnin The Test of Righteousness##1654 |goto Dun Morogh 52.49,36.92
step
  only Warlock
  talk Doan Karhan##6247
  turnin The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
]])
