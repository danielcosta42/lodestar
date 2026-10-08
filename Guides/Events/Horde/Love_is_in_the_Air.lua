-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Love is in the Air", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "b429c316",
}, [[
step
  only not completed(8901) not completed(8902) not completed(8904) not haveq(8901) not haveq(8902) not haveq(8904)
  talk Orok Deathbane##16007
  accept Dearest Elenia,##8900 |goto Orgrimmar 51.29,70.19
step
  only not completed(8901) not completed(8902) not completed(8904) not haveq(8901) not haveq(8902) not haveq(8904)
  note Deliver the Slightly Creased Note to Elenia Haydon near the bank in the Undercity.
  talk Elenia Haydon##16004
  turnin Dearest Elenia,##8900 |goto Undercity 66.93,45.24
]])
