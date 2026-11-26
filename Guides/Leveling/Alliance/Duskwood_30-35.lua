-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Duskwood (30-35)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Hillsbrad Foothills (29-32)",
	rev = "07420247",
}, [[
step
  ding 29
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
  only hasitem(281142)
  use Merrick's Bow##281142 |tip It starts the quest.
  accept Merrick's Bow##96138
step
  only completed(133)
  note Return Abercrombie's Crate to Abercrombie.
  collect Abercrombie's Crate##1349 |q 134 |goto Duskwood 33.42,76.35
step
  only haveq(96138)
  note Defeat 8 Splinter Fist Warriors and 4 Splinter Fist Taskmasters then return to Sirra Von'Indi in Darkshire for more information.
  kill Splinter Fist Warrior##212 |q 96138/1 |goto Duskwood 33.67,76.02
  kill Splinter Fist Taskmaster##892 |q 96138 |goto Duskwood 36.57,72.44
step
  only completed(133)
  talk Abercrombie##289
  turnin Ogre Thieves##134 |goto Duskwood 28.11,31.46
step
  only completed(133)
  talk Abercrombie##289
  accept Note to the Mayor##160 |goto Duskwood 28.11,31.46
step
  note {fp}Felicia Maline
  goto Duskwood 77.49,44.29 |tip {vendor}
step
  only completed(133)
  note Bring Abercrombie's Letter to Ello Ebonlocke, Mayor of Darkshire.
  talk Lord Ello Ebonlocke##263
  turnin Note to the Mayor##160 |goto Duskwood 71.93,46.42
step
  only haveq(96138)
  talk Sirra Von'Indi##268
  turnin Merrick's Bow##96138 |goto Duskwood 72.62,47.62
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
  only completed(133)
  note Bring the Letter to Ello to Sirra Von'Indi.
  talk Sirra Von'Indi##268
  turnin Translate Abercrombie's Note##251 |goto Duskwood 72.62,47.62
step
  only completed(133)
  talk Sirra Von'Indi##268
  accept Wait for Sirra to Finish##401 |goto Duskwood 72.62,47.62
step
  only completed(133)
  note Wait a moment, then speak with Sirra Von'Indi again.
  talk Sirra Von'Indi##268
  turnin Wait for Sirra to Finish##401 |goto Duskwood 72.62,47.62
step
  only completed(133)
  talk Sirra Von'Indi##268
  accept Translation to Ello##252 |goto Duskwood 72.62,47.62
step
  only completed(133)
  note Bring the Translated Letter to Lord Ello Ebonlocke
  talk Lord Ello Ebonlocke##263
  turnin Translation to Ello##252 |goto Duskwood 71.93,46.42
step
  only completed(133) level>=30
  talk Lord Ello Ebonlocke##263
  accept Bride of the Embalmer##253 |goto Duskwood 71.93,46.42
step
  only completed(57)
  note Commander Althea Ebonlocke of Darkshire wants you to kill 20 Plague Spreaders in the eastern Raven Hill mausoleum.
  kill Plague Spreader##604 |q 58 |goto Duskwood 23.71,34.07
step
  only completed(133) haveq(253)
  note Find Eliza's grave. Retrieve the Embalmer's Heart from her, then return to Ello Ebonlocke.
  kill Eliza##314 |q 253 |goto Duskwood 28.82,30.91 |elite
  collect The Embalmer's Heart##2382 |q 253 |goto Duskwood 28.82,30.91
step
  only completed(1243)
  note Find the Defias Docket and return it to Watcher Backus in Duskwood.
  collect Defias Docket##5947 |q 1244 |goto Duskwood 23.92,72.07 |tip {dropsfrom}Defias Strongbox
step
  only completed(177)
  note Locate Zzarc'Vul in the southern ogre mound in Duskwood and return his monocle to Viktori in Darkshire.
  collect Ogre's Monocle##1968 |q 181 |goto Duskwood 38,80 |tip {dropsfrom}Zzarc' Vul
step
  only completed(221)
  note Kill 8 Nightbane Vile Fang and 8 Nightbane Tainted One worgen for Calor in Darkshire.
  kill Nightbane Tainted One##920 |q 222/2 |goto Duskwood 63.14,80.34
  kill Nightbane Vile Fang##206 |q 222 |goto Duskwood 71.94,72.31
step
  only completed(57)
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##58 |goto Duskwood 73.54,46.82
step
  only completed(177)
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##181 |goto Duskwood 79.8,48.02
step
  only completed(221)
  talk Calor##663
  turnin Worgen in the Woods##222 |goto Duskwood 75.75,47.57
step
  only completed(133) haveq(253)
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
  only completed(221)
  talk Calor##663
  accept Worgen in the Woods##223 |goto Duskwood 75.75,47.57
step
  only completed(221)
  note Bring Calor's note to Jonathan Carevin.
  talk Jonathan Carevin##661
  turnin Worgen in the Woods##223 |goto Duskwood 75.32,49.02
step
  only completed(322)
  note Bring Morbent's Bane to Sven in Duskwood.
  talk Sven Yorgen##311
  turnin Armed and Ready##325 |goto Duskwood 7.78,34.07
step
  only completed(322) level>=32
  talk Sven Yorgen##311
  accept Morbent Fel##55 |goto Duskwood 7.78,34.07
step
  click A Weathered Grave##61
  accept The Weathered Grave##225 |goto Duskwood 17.73,29.08
step
  only completed(322) haveq(55)
  note Use Morbent's Bane on Morbent Fel, kill Morbent Fel, then return Morbent's Bane to Sven at his camp.
  kill Morbent Fel##1200 |q 55 |goto Duskwood 16.9,33.4 |elite
step
  only completed(322) haveq(55)
  talk Sven Yorgen##311
  turnin Morbent Fel##55 |goto Duskwood 7.78,34.07
step
  note Speak with Sirra Von'Indi in Darkshire.
  talk Sirra Von'Indi##268
  turnin The Weathered Grave##225 |goto Duskwood 72.62,47.62
step
  only completed(97)
  talk Commander Althea Ebonlocke##264
  accept The Legend of Stalvan##98 |goto Duskwood 73.54,46.82
step
  talk Sirra Von'Indi##268
  accept Morgan Ladimore##227 |goto Duskwood 72.62,47.62
step
  note Speak with Commander Althea Ebonlocke in Darkshire.
  talk Commander Althea Ebonlocke##264
  turnin Morgan Ladimore##227 |goto Duskwood 73.54,46.82
step
  only level>=35
  talk Commander Althea Ebonlocke##264
  accept Mor'Ladim##228 |goto Duskwood 73.54,46.82
step
  only completed(97)
  note Kill Stalvan Mistmantle and show Madame Eva his family ring.
  collect Mistmantle Family Ring##3629 |q 98 |goto Duskwood 77.35,36.19 |tip {dropsfrom}Stalvan Mistmantle
step
  only haveq(228)
  note Kill Mor'Ladim, then return his skull to Commander Althea Ebonlocke in Darkshire.
  kill Mor'Ladim##522 |q 228 |goto Duskwood 16.67,37.35 |elite
  collect Mor'Ladim's Skull##3514 |q 228 |goto Duskwood 16.67,37.35
step
  only completed(97)
  talk Madame Eva##265
  turnin The Legend of Stalvan##98 |goto Duskwood 75.79,45.32
step
  only haveq(228)
  talk Commander Althea Ebonlocke##264
  turnin Mor'Ladim##228 |goto Duskwood 73.54,46.82
step
  only completed(228)
  talk Commander Althea Ebonlocke##264
  accept The Daughter Who Lived##229 |goto Duskwood 73.54,46.82
step
  only haveq(229)
  note Speak with Watcher Sarah Ladimore in Darkshire.
  talk Watcher Ladimore##576
  turnin The Daughter Who Lived##229 |goto Duskwood 74.02,47.82
step
  only completed(229)
  talk Watcher Ladimore##576
  accept A Daughter's Love##231 |goto Duskwood 74.02,47.82
step
  only haveq(231)
  note Take Sarah Ladimore's ring to Morgan Ladimore's grave.
  turnin A Daughter's Love##231 |goto Duskwood 17.73,29.08
step
  note Zardeth the Black Claw wants you to bring him a Tear of Tilloa from Darkshire and a Musquash Root from the Wetlands.
  collect Tear of Tilloa##2779 |q 335/1 |goto Duskwood 78.35,35.95
  collect Musquash Root##2784 |q 335 |goto Wetlands 64.78,75.32
step
  talk Zardeth of the Black Claw##1435
  turnin A Noble Brew##335 |goto Stormwind City 40.14,85.31 |tip {turninat}Stormwind City
step
  talk Zardeth of the Black Claw##1435
  accept A Noble Brew##336 |goto Stormwind City 40.14,85.31
step
  only completed(1243)
  note Bring the Defias Docket to Elling Trias in Stormwind.
  talk Elling Trias##482
  turnin The Missing Diplomat##1245 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  note Take the Black Claw Stout to Lord Wishock in the Hall of Petitioners.
  talk Lord Baurles K. Wishock##1439
  turnin A Noble Brew##336 |goto Stormwind City 77.88,48.95 |tip {turninat}Stormwind City
step
  only Warrior completed(1705)
  talk Grimand Elmore##1416
  turnin Grimand's Armor##1706 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Warlock
  talk Zardeth of the Black Claw##1435
  accept You Have Served Us Well##397 |goto Stormwind City 40.14,85.31
step
  only not Dwarf not NightElf not Skyborne Warlock
  note Speak with Zggi, the servant of Zardeth the Blackclaw, to claim your reward.
  talk Zggi##1733
  turnin You Have Served Us Well##397 |goto Stormwind City 40.21,85.31 |tip {turninat}Stormwind City
step
  only Warrior completed(1708)
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Creation##1709 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  only Shaman level>=30
  talk Eldrun Stormbreaker##258098
  accept Call of Air##94789 |goto Ironforge 47.1,13.79
step
  only Shaman haveq(94789)
  note Find Veyric Thundervein in Arathi Highlands.
  talk Veyric Thunderhame##259023
  turnin Call of Air##94789 |goto Arathi Highlands 59.84,27.57 |tip {turninat}Arathi Highlands
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 46.43,50.2
]])
