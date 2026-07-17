-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Scarlet Monastery", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Vorrel Sengutz##3981
  accept Vorrel's Revenge##1051 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Varimathras##2425
  accept Into The Scarlet Monastery##1048 |goto Undercity 56.25,92.2
step
  note Return Vorrel Sengutz's wedding ring to Monika Sengutz in Tarren Mill.
  kill Nancy Vishas##3984 |goto Alterac Mountains 32.33,32.78 |elite
  collect Vorrel's Wedding Ring##5538 |q 1051 |goto Alterac Mountains 32.33,32.78
step
  note Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.
  kill High Inquisitor Whitemane##3977 |q 1048 |goto Scarlet Monastery - Dungeon -1,-1 |elite
step
  talk Monika Sengutz##3982
  turnin Vorrel's Revenge##1051 |goto Hillsbrad Foothills 62.67,18.88
step
  talk Varimathras##2425
  turnin Into The Scarlet Monastery##1048 |goto Undercity 56.25,92.2
]])
