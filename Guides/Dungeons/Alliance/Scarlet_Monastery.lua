-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Scarlet Monastery", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "6f8697e2",
}, [[
step
  talk Magus Olvek##264265
  accept Past Due##96800 |goto Alterac Mountains 9.51,62.25
step
  talk Librarian Mae Paledust##3979
  accept Mythology of the Titans##1050 |goto Ironforge 74.97,12.48
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  only Mage completed(1950)
  talk Magus Tirth##6548
  accept Rituals of Power##1951 |goto Thousand Needles 78.29,75.7
step
  note Retrieve the book The Lost Magic of the Runemasters from the Scarlet Monastery.
  collect The Lost Magic of the Runemasters##273169 |q 96800 |goto Alterac Mountains 9.51,62.25
step
  note Retrieve Mythology of the Titans from the Monastery and bring it to Librarian Mae Paledust in Ironforge.
  collect Mythology of the Titans##5536 |q 1050 |goto Scarlet Monastery - Dungeon -1,-1
step
  note Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
  kill Undead Ravager##11561 |q 261 |goto Desolace 64.24,90.37
step
  only Mage completed(1950)
  note Bring the book Rituals of Power to Tabetha in Dustwallow Marsh.
  collect Rituals of Power##7274 |q 1951 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Magus Olvek##264265
  turnin Past Due##96800 |goto Alterac Mountains 9.51,62.25
step
  talk Librarian Mae Paledust##3979
  turnin Mythology of the Titans##1050 |goto Ironforge 74.97,12.48
step
  talk Brother Anton##1182
  turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  only Mage completed(1950)
  talk Tabetha##6546
  turnin Rituals of Power##1951 |goto Dustwallow Marsh 46.06,57.09
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##1052 |goto Desolace 66.52,7.91
step
  note Take Brother Anton's Letter of Commendation to Raleigh the Devout in Southshore.
  talk Raleigh the Devout##3980
  turnin Down the Scarlet Path##1052 |goto Hillsbrad Foothills 51.47,58.35
step
  talk Raleigh the Devout##3980
  accept In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
step
  note Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore.
  kill High Inquisitor Whitemane##3977 |q 1053 |goto Scarlet Monastery - Dungeon -1,-1 |elite
step
  talk Raleigh the Devout##3980
  turnin In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
]])
