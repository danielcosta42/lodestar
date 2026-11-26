-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/The Hall of Thanes", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "933e4cac",
}, [[
step
  talk Ghostly Attendant##265002
  accept An Ancient Grudge##96395 |goto The Hall of Thanes - Dungeon -1,-1
step
  note Put the spirit of Faldrim Anvilmar to rest and then return to the Ghostly Attendant in the Hall of Thanes.
  kill Faldrim Anvilmar##261306 |q 96395 |goto The Hall of Thanes - Dungeon -1,-1 |elite
step
  talk Ghostly Attendant##265002
  turnin An Ancient Grudge##96395 |goto The Hall of Thanes - Dungeon -1,-1
]])
