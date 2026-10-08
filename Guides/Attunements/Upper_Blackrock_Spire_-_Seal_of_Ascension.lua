-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Upper Blackrock Spire - Seal of Ascension", {
	author = "Lodestar Generator",
	rev = "41e55865",
}, [[
step
  talk Scarshield Infiltrator##10299
  accept Seal of Ascension##4742 |goto Blackrock Spire - Dungeon -1,-1
step
  note Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
  collect Gemstone of Spirestone##12336 |q 4742 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  talk Scarshield Infiltrator##10299
  turnin Seal of Ascension##4742 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Scarshield Infiltrator##10299
  accept Seal of Ascension##4743 |goto Blackrock Spire - Dungeon -1,-1
step
  note Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
  collect Forged Seal of Ascension##12324 |q 4743 |goto Dustwallow Marsh 56.37,87.83
step
  talk Scarshield Infiltrator##10299
  turnin Seal of Ascension##4743 |goto Blackrock Spire - Dungeon -1,-1
]])
