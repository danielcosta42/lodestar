-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Uldaman", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Prospector Stormpike##1356
  accept The Lost Dwarves##2398 |goto Ironforge 74.64,11.74
step
  talk Baelog##6906
  turnin The Lost Dwarves##2398 |goto Uldaman - Dungeon -1,-1
step
  talk Talvash del Kissel##6826
  turnin The Shattered Necklace##2198 |goto Ironforge 36.38,3.61
step
  talk Baelog##6906
  accept The Hidden Chamber##2240 |goto Uldaman - Dungeon -1,-1
step
  talk Talvash del Kissel##6826
  accept Lore for a Price##2199 |goto Ironforge 36.38,3.61
step
  talk Prospector Stormpike##1356
  turnin The Hidden Chamber##2240 |goto Ironforge 74.64,11.74
step
  talk Talvash del Kissel##6826
  turnin Lore for a Price##2199 |goto Ironforge 36.38,3.61
step
  talk Talvash del Kissel##6826
  accept Back to Uldaman##2200 |goto Ironforge 36.38,3.61
step
  talk Remains of a Paladin##6912
  turnin Back to Uldaman##2200 |goto Uldaman - Dungeon -1,-1
step
  talk Remains of a Paladin##6912
  accept Find the Gems##2201 |goto Uldaman - Dungeon -1,-1
]])
