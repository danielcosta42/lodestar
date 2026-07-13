-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Uldaman", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Dran Droffers##6986
  accept Necklace Recovery##2283 |goto Orgrimmar 59.49,36.57
step
  talk Dran Droffers##6986
  turnin Necklace Recovery##2283 |goto Orgrimmar 59.49,36.57
step
  talk Dran Droffers##6986
  accept Necklace Recovery, Take 2##2284 |goto Orgrimmar 59.49,36.57
step
  talk Remains of a Paladin##6912
  turnin Necklace Recovery, Take 2##2284 |goto Uldaman - Dungeon -1,-1
step
  talk Remains of a Paladin##6912
  accept Translating the Journal##2318 |goto Uldaman - Dungeon -1,-1
step
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2318 |goto Badlands 2.42,46.06
]])
