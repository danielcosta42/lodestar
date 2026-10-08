-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Shadowfang Keep", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "fe342fef",
}, [[
step
  talk High Executor Hadrec##1952
  accept Deathstalkers in Shadowfang##1098 |goto Silverpine Forest 43.42,40.86
step
  only Warlock
  talk Doan Karhan##6247
  accept The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  talk Keeper Bel'dugur##2934
  accept The Book of Ur##1013 |goto Undercity 53.74,54.46
step
  talk Dalar Dawnweaver##1938
  accept Arugal Must Die##1014 |goto Silverpine Forest 44.2,39.81
step
  only Warlock
  note Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens.
  collect 3 Soran'ruk Fragment##6914 |q 1740 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Acolyte
step
  note Bring the Book of Ur to Keeper Bel'dugur at the Apothecarium in the Undercity.
  collect The Book of Ur##6283 |q 1013 |goto Shadowfang Keep - Dungeon -1,-1
step
  note Kill Arugal and bring his head to Dalar Dawnweaver at the Sepulcher.
  collect Head of Arugal##5442 |q 1014 |goto Shadowfang Keep - Dungeon -1,-1 |elite |tip {dropsfrom}Archmage Arugal, Arugal
step
  talk Deathstalker Vincent##4444
  turnin Deathstalkers in Shadowfang##1098 |goto Shadowfang Keep - Dungeon -1,-1
step
  only Warlock
  talk Doan Karhan##6247
  turnin The Orb of Soran'ruk##1740 |goto The Barrens 49.31,57.21
step
  talk Keeper Bel'dugur##2934
  turnin The Book of Ur##1013 |goto Undercity 53.74,54.46
step
  talk Dalar Dawnweaver##1938
  turnin Arugal Must Die##1014 |goto Silverpine Forest 44.2,39.81
]])
