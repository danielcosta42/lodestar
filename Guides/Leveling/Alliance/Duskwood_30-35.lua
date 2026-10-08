-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Duskwood (30-35)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Wetlands (30-33)",
	rev = "b53da317",
}, [[
step
  only completed(322)
  talk Grimand Elmore##1416
  accept Armed and Ready##325 |goto Stormwind City 59.73,33.78
step
  talk Zardeth of the Black Claw##1435
  accept A Noble Brew##335 |goto Stormwind City 40.14,85.31
step
  only Warrior completed(1705)
  talk Grimand Elmore##1416
  accept Grimand's Armor##1706 |goto Stormwind City 59.73,33.78
step
  only Warrior completed(1708)
  talk Klockmort Spannerspan##6169
  accept Klockmort's Creation##1709 |goto Ironforge 67.92,46.1
step
  only completed(133)
  talk Abercrombie##289
  accept Ogre Thieves##134 |goto Duskwood 28.11,31.46
step
  only completed(133)
  note Return Abercrombie's Crate to Abercrombie.
  collect Abercrombie's Crate##1349 |q 134 |goto Duskwood 33.42,76.35
step
  only completed(133)
  talk Abercrombie##289
  turnin Ogre Thieves##134 |goto Duskwood 28.11,31.46
step
  only completed(133)
  talk Abercrombie##289
  accept Note to the Mayor##160 |goto Duskwood 28.11,31.46
step
  only completed(322)
  talk Sven Yorgen##311
  turnin Armed and Ready##325 |goto Duskwood 7.78,34.07
step
  only completed(322)
  talk Sven Yorgen##311
  accept Morbent Fel##55 |goto Duskwood 7.78,34.07
step
  only completed(322)
  note Use Morbent's Bane on Morbent Fel, kill Morbent Fel, then return Morbent's Bane to Sven at his camp.
  kill Morbent Fel##1200 |q 55 |goto Duskwood 16.9,33.4 |elite
step
  only completed(322)
  talk Sven Yorgen##311
  turnin Morbent Fel##55 |goto Duskwood 7.78,34.07
step
  note {fp}Felicia Maline
  goto Duskwood 77.49,44.29 |tip {vendor}
step
  only completed(133)
  talk Lord Ello Ebonlocke##263
  turnin Note to the Mayor##160 |goto Duskwood 71.93,46.42
step
  only completed(57)
  talk Commander Althea Ebonlocke##264
  accept The Night Watch##58 |goto Duskwood 73.54,46.82
step
  only completed(177)
  talk Viktori Prism'Antras##276
  accept Look To The Stars##181 |goto Duskwood 79.8,48.02
step
  only completed(133)
  talk Lord Ello Ebonlocke##263
  accept Translate Abercrombie's Note##251 |goto Duskwood 71.93,46.42
step
  only completed(1243)
  talk Watcher Backus##840
  accept The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  only completed(221)
  talk Calor##663
  accept Worgen in the Woods##222 |goto Duskwood 75.75,47.57
step
  only completed(177)
  note Locate Zzarc'Vul in the southern ogre mound in Duskwood and return his monocle to Viktori in Darkshire.
  collect Ogre's Monocle##1968 |q 181 |goto Duskwood 38,80 |tip {dropsfrom}Zzarc' Vul
step
  only completed(221)
  note Kill 8 Nightbane Vile Fang and 8 Nightbane Tainted One worgen for Calor in Darkshire.
  kill Nightbane Vile Fang##206 |q 222 |goto Duskwood 71.94,72.31
step
  note Zardeth the Black Claw wants you to bring him a Tear of Tilloa from Darkshire and a Musquash Root from the Wetlands.
  collect Tear of Tilloa##2779 |q 335 |goto Duskwood 78.35,35.95
step
  only completed(177)
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##181 |goto Duskwood 79.8,48.02
step
  only completed(221)
  talk Calor##663
  turnin Worgen in the Woods##222 |goto Duskwood 75.75,47.57
step
  only completed(133)
  talk Sirra Von'Indi##268
  turnin Translate Abercrombie's Note##251 |goto Duskwood 72.62,47.62
step
  only completed(133)
  talk Sirra Von'Indi##268
  accept Wait for Sirra to Finish##401 |goto Duskwood 72.62,47.62
step
  only completed(221)
  talk Calor##663
  accept Worgen in the Woods##223 |goto Duskwood 75.75,47.57
step
  only completed(221)
  talk Jonathan Carevin##661
  turnin Worgen in the Woods##223 |goto Duskwood 75.32,49.02
step
  only completed(133)
  talk Sirra Von'Indi##268
  turnin Wait for Sirra to Finish##401 |goto Duskwood 72.62,47.62
step
  only completed(133)
  talk Sirra Von'Indi##268
  accept Translation to Ello##252 |goto Duskwood 72.62,47.62
step
  only completed(133)
  talk Lord Ello Ebonlocke##263
  turnin Translation to Ello##252 |goto Duskwood 71.93,46.42
step
  only completed(133)
  talk Lord Ello Ebonlocke##263
  accept Bride of the Embalmer##253 |goto Duskwood 71.93,46.42
step
  only completed(57)
  note Commander Althea Ebonlocke of Darkshire wants you to kill 20 Plague Spreaders in the eastern Raven Hill mausoleum.
  kill Plague Spreader##604 |q 58 |goto Duskwood 23.71,34.07
step
  only completed(133)
  note Find Eliza's grave. Retrieve the Embalmer's Heart from her, then return to Ello Ebonlocke.
  kill Eliza##314 |goto Duskwood 28.82,30.91 |elite
  collect The Embalmer's Heart##2382 |q 253 |goto Duskwood 28.82,30.91
step
  only completed(1243)
  note Find the Defias Docket and return it to Watcher Backus in Duskwood.
  collect Defias Docket##5947 |q 1244 |goto Duskwood 23.92,72.07 |tip {dropsfrom}Defias Strongbox
step
  only completed(57)
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##58 |goto Duskwood 73.54,46.82
step
  only completed(133)
  talk Lord Ello Ebonlocke##263
  turnin Bride of the Embalmer##253 |goto Duskwood 71.93,46.42
step
  only completed(1243)
  talk Watcher Backus##840
  turnin The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  only completed(1243)
  talk Watcher Backus##840
  accept The Missing Diplomat##1245 |goto Duskwood 74.83,44.22
step
  only completed(97)
  talk Commander Althea Ebonlocke##264
  accept The Legend of Stalvan##98 |goto Duskwood 73.54,46.82
step
  only completed(97)
  note Kill Stalvan Mistmantle and show Madame Eva his family ring.
  collect Mistmantle Family Ring##3629 |q 98 |goto Duskwood 77.35,36.19 |tip {dropsfrom}Stalvan Mistmantle
step
  only completed(97)
  talk Madame Eva##265
  turnin The Legend of Stalvan##98 |goto Duskwood 75.79,45.32
step
  click A Weathered Grave##61
  accept The Weathered Grave##225 |goto Duskwood 17.73,29.08
step
  talk Sirra Von'Indi##268
  turnin The Weathered Grave##225 |goto Duskwood 72.62,47.62
step
  talk Sirra Von'Indi##268
  accept Morgan Ladimore##227 |goto Duskwood 72.62,47.62
step
  talk Commander Althea Ebonlocke##264
  turnin Morgan Ladimore##227 |goto Duskwood 73.54,46.82
step
  talk Commander Althea Ebonlocke##264
  accept Mor'Ladim##228 |goto Duskwood 73.54,46.82
step
  note Kill Mor'Ladim, then return his skull to Commander Althea Ebonlocke in Darkshire.
  kill Mor'Ladim##522 |goto Duskwood 16.67,37.35 |elite
  collect Mor'Ladim's Skull##3514 |q 228 |goto Duskwood 16.67,37.35
step
  talk Commander Althea Ebonlocke##264
  turnin Mor'Ladim##228 |goto Duskwood 73.54,46.82
step
  talk Commander Althea Ebonlocke##264
  accept The Daughter Who Lived##229 |goto Duskwood 73.54,46.82
step
  talk Watcher Ladimore##576
  turnin The Daughter Who Lived##229 |goto Duskwood 74.02,47.82
step
  talk Watcher Ladimore##576
  accept A Daughter's Love##231 |goto Duskwood 74.02,47.82
step
  turnin A Daughter's Love##231 |goto Duskwood 17.73,29.08
step
  talk Zardeth of the Black Claw##1435
  turnin A Noble Brew##335 |goto Stormwind City 40.14,85.31 |tip {turninat}Stormwind City
step
  only Warrior completed(1705)
  talk Grimand Elmore##1416
  turnin Grimand's Armor##1706 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only Warrior completed(1708)
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Creation##1709 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  only completed(1243)
  talk Elling Trias##482
  turnin The Missing Diplomat##1245 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  talk Zardeth of the Black Claw##1435
  accept A Noble Brew##336 |goto Stormwind City 40.14,85.31
step
  talk Lord Baurles K. Wishock##1439
  turnin A Noble Brew##336 |goto Stormwind City 77.88,48.95 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Warlock
  talk Zardeth of the Black Claw##1435
  accept You Have Served Us Well##397 |goto Stormwind City 40.14,85.31
step
  only not Dwarf not NightElf not Skyborne Warlock
  talk Zggi##1733
  turnin You Have Served Us Well##397 |goto Stormwind City 40.21,85.31 |tip {turninat}Stormwind City
step
  note {travel}Wetlands
  goto Wetlands 49.67,18.23
]])
