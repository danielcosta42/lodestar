-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackfathom Deeps", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Argent Guard Thaelrid##4787
  accept Blackfathom Villainy##6561 |goto Blackfathom Deeps - Dungeon -1,-1
step
  note Bring the head of Twilight Lord Kelris to Bashana Runetotem in Thunder Bluff.
  get Blackfathom Villainy |q 6561 |goto Blackfathom Deeps - Dungeon -1,-1
step
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6564 |goto Ashenvale 11.56,34.29
step
  talk Bashana Runetotem##9087
  turnin Blackfathom Villainy##6561 |goto Thunder Bluff 71.06,34.19
step
  talk Je'neu Sancrea##12736
  accept Allegiance to the Old Gods##6565 |goto Ashenvale 11.56,34.29
step
  note Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale.
  kill Lorgus Jett##12902 |q 6565 |goto Blackfathom Deeps - Dungeon -1,-1
step
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6565 |goto Ashenvale 11.56,34.29
]])
