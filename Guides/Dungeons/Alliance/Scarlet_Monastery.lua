-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Scarlet Monastery", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  note Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
  kill Undead Ravager##11561 |q 261 |goto Desolace 63.97,90.0
step
  talk Brother Anton##1182
  turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##1052 |goto Desolace 66.52,7.91
step
  talk Raleigh the Devout##3980
  turnin Down the Scarlet Path##1052 |goto Hillsbrad Foothills 51.47,58.35
step
  talk Raleigh the Devout##3980
  accept In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
step
  note Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore.
  kill High Inquisitor Whitemane##3977 |q 1053 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Raleigh the Devout##3980
  turnin In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
]])
