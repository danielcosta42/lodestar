-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Upper Blackrock Spire - Seal of Ascension", {
	author = "Lodestar Generator",
}, [[
step
  talk Vaelan##10296
  accept Seal of Ascension##4742
step
  note Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
  collect Gemstone of Spirestone##12336 |q 4742 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  talk Vaelan##10296
  turnin Seal of Ascension##4742
step
  talk Vaelan##10296
  accept Seal of Ascension##4743
step
  note Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
  collect Forged Seal of Ascension##12324 |q 4743
step
  talk Vaelan##10296
  turnin Seal of Ascension##4743
]])
