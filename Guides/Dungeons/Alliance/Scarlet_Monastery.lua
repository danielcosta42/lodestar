-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Scarlet Monastery", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "278d9475",
}, [[
step
  only Mage
  talk Bink##5144
  accept Journey to the Marsh##1947 |goto Ironforge 27.25,8.3
step
  talk Librarian Mae Paledust##3979
  accept Mythology of the Titans##1050 |goto Ironforge 74.97,12.48
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  note Retrieve Mythology of the Titans from the Monastery and bring it to Librarian Mae Paledust in Ironforge.
  collect Mythology of the Titans##5536 |q 1050 |goto Scarlet Monastery - Dungeon -1,-1
step
  note Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
  kill Undead Ravager##11561 |q 261 |goto Desolace 64.24,90.37
step
  only Mage
  note Speak with Tabetha.
  talk Tabetha##6546
  turnin Journey to the Marsh##1947 |goto Dustwallow Marsh 46.06,57.09
step
  talk Librarian Mae Paledust##3979
  turnin Mythology of the Titans##1050 |goto Ironforge 74.97,12.48
step
  talk Brother Anton##1182
  turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  only Mage
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##1052 |goto Desolace 66.52,7.91
step
  only Mage
  note Speak with Magus Tirth in the Shimmering Flats.
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7
step
  note Take Brother Anton's Letter of Commendation to Raleigh the Devout in Southshore.
  talk Raleigh the Devout##3980
  turnin Down the Scarlet Path##1052 |goto Hillsbrad Foothills 51.47,58.35
step
  only Mage
  talk Magus Tirth##6548
  accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  talk Raleigh the Devout##3980
  accept In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
step
  only Mage
  note Find the phrase to Tirth's strongbox, then return to Tirth.
  talk "Plucky" Johnson##6626 |q 1950 |goto Thousand Needles 79.61,75.63
step
  note Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore.
  kill High Inquisitor Whitemane##3977 |q 1053 |goto Scarlet Monastery - Dungeon -1,-1 |elite
step
  only Mage
  talk Magus Tirth##6548
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  talk Raleigh the Devout##3980
  turnin In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
step
  only Mage
  talk Magus Tirth##6548
  accept Rituals of Power##1951 |goto Thousand Needles 78.29,75.7
step
  only Mage
  note Bring the book Rituals of Power to Tabetha in Dustwallow Marsh.
  collect Rituals of Power##7274 |q 1951 |goto Scarlet Monastery - Dungeon -1,-1
step
  only Mage
  talk Tabetha##6546
  turnin Rituals of Power##1951 |goto Dustwallow Marsh 46.06,57.09
]])
