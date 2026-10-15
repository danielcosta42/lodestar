-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Elwynn Forest (21-28)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Duskwood (30-35)",
	rev = "4628afc2",
}, [[
step
  ding 20
step
  only completed(373)
  talk Baros Alexston##1646
  accept Bazil Thredd##389 |goto Stormwind City 57.74,47.86
step
  only haveq(69)
  note Go to The Lion's Pride Inn to see if anyone there has heard of the name Stalvan.
  talk Innkeeper Farley##295
  turnin The Legend of Stalvan##69 |goto Elwynn Forest 43.77,65.8
step
  only completed(118)
  talk Smith Argus##514
  accept Return to Verner##119 |goto Elwynn Forest 41.71,65.54
step
  only level>=20
  talk Theocritus##313
  accept A Watchful Eye##94 |goto Elwynn Forest 65.22,69.71
step
  only completed(69) level>=22
  talk Innkeeper Farley##295
  accept The Legend of Stalvan##70 |goto Elwynn Forest 43.77,65.8
step
  only completed(69) haveq(70)
  note Retrieve Stalvan's Undelivered Letter from the chest and deliver it to the Canal District in Stormwind.
  collect An Undelivered Letter##910 |q 70 |goto Elwynn Forest 44.3,65.82 |tip {dropsfrom}Storage Chest
step
  only completed(118)
  note Return to Verner Osgood in Redridge. Give him the Crate of Horseshoes.
  talk Verner Osgood##415
  turnin Return to Verner##119 |goto Redridge Mountains 25.88,47.27 |tip {turninat}Redridge Mountains
step
  only completed(118)
  talk Verner Osgood##415
  accept Underbelly Scales##122 |goto Redridge Mountains 25.88,47.27
step
  only completed(118)
  talk Verner Osgood##415
  accept A Baying of Gnolls##124 |goto Redridge Mountains 25.88,47.27
step
  only completed(118)
  note Kill 10 Redridge Brutes and 8 Redridge Mystics, then return to Verner Osgood.
  kill Redridge Brute##426 |q 124/1 |goto Redridge Mountains 18.91,34.91
  kill Redridge Mystic##430 |q 124 |goto Redridge Mountains 22.97,28.89
step
  only completed(118)
  talk Verner Osgood##415
  turnin A Baying of Gnolls##124 |goto Redridge Mountains 25.88,47.27 |tip {turninat}Redridge Mountains
step
  only completed(118)
  talk Verner Osgood##415
  accept Howling in the Hills##126 |goto Redridge Mountains 25.88,47.27
step
  only completed(118)
  note Bring Yowler's Paw to Verner Osgood in Lakeshire.
  collect Yowler's Paw##3614 |q 126 |goto Redridge Mountains 22.56,21.38 |tip {dropsfrom}Yowler
step
  only completed(118)
  talk Verner Osgood##415
  turnin Howling in the Hills##126 |goto Redridge Mountains 25.88,47.27 |tip {turninat}Redridge Mountains
step
  only completed(118)
  note Gather 6 Underbelly Whelp Scales from Black Dragon Whelps, and bring them to Verner Osgood in Redridge.
  collect 6 Underbelly Whelp Scale##1221 |q 122 |goto Redridge Mountains 38.42,77.96 |tip {dropsfrom}Black Dragon Whelp, Snarlflare
step
  only completed(118)
  talk Verner Osgood##415
  turnin Underbelly Scales##122 |goto Redridge Mountains 25.88,47.27 |tip {turninat}Redridge Mountains
step
  only haveq(94)
  note Take the Glyph of Azora to the Lion Statue near the Tower of Ilgalar in Redridge.
  turnin A Watchful Eye##94 |goto Redridge Mountains 79.4,46.83 |tip {turninat}Redridge Mountains
step
  only completed(94) level>=20
  click Old Lion Statue##31
  accept Looking Further##248 |goto Redridge Mountains 79.4,46.83
step
  only haveq(248)
  note Climb the intact watch tower beside Stonewatch Keep.
  turnin Looking Further##248 |goto Redridge Mountains 58.16,49.84 |tip {turninat}Redridge Mountains
step
  only haveq(968)
  note Bring the Book: The Powers Below to Gerrig Bonegrip in the Forlorn Cavern, Ironforge.
  talk Gerrig Bonegrip##2786
  turnin The Powers Below##968 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  only haveq(2931)
  note Speak with Master Mechanic Castpipe in Ironforge.
  talk Master Mechanic Castpipe##7950
  turnin Castpipe's Task##2931 |goto Ironforge 69.83,48.1 |tip {turninat}Ironforge
step
  only haveq(1072)
  note Speak to Lomac Gearstrip in Ironforge.
  talk Lomac Gearstrip##4081
  turnin An Old Colleague##1072 |goto Ironforge 72.08,51.88 |tip {turninat}Ironforge
step
  only completed(373)
  note Speak with Warden Thelwater in the Stockade.
  talk Warden Thelwater##1719
  turnin Bazil Thredd##389 |goto Stormwind City 51.49,69.38 |tip {turninat}Stormwind City
step
  only completed(69) haveq(70)
  talk Caretaker Folsom##297
  turnin The Legend of Stalvan##70 |goto Stormwind City 42.53,72.36 |tip {turninat}Stormwind City
step
  only completed(69) completed(70) level>=22
  talk Caretaker Folsom##297
  accept The Legend of Stalvan##72 |goto Stormwind City 42.53,72.36
step
  only completed(69) haveq(72)
  note Search through the packed up possessions for a clue.
  turnin The Legend of Stalvan##72 |goto Stormwind City 42.47,72.05 |tip {turninat}Stormwind City
step
  only completed(69) completed(72) level>=22
  click Sealed Crate##1561
  accept The Legend of Stalvan##74 |goto Stormwind City 42.47,72.05
step
  only not Dwarf not NightElf not Skyborne Mage completed(1940) level>=26
  talk Wynne Larson##1309
  accept Astral Knot Garment##1942 |goto Stormwind City 51.84,83.51
step
  only not Dwarf not NightElf not Skyborne Mage completed(1940) haveq(1942)
  talk Wynne Larson##1309
  turnin Astral Knot Garment##1942 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Mage level>=26
  talk Jennea Cannon##5497
  accept High Sorcerer Andromath##1939 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1939)
  note Speak with High Sorcerer Andromath.
  talk High Sorcerer Andromath##5694
  turnin High Sorcerer Andromath##1939 |goto Stormwind City 48.71,87.62 |tip {turninat}Stormwind City
step
  talk Brother Kristoff##1444
  accept Speaking of Fortitude##343 |goto Stormwind City 55.04,54.16
step
  talk Brother Sarno##7917
  accept Tinkmaster Overspark##2923 |goto Stormwind City 51.05,48.39
step
  only level>=28
  talk Thomas##4982
  accept The Missing Diplomat##1274 |goto Stormwind City 49.64,44.48
step
  only Warrior completed(1701)
  talk Furen Longbeard##5413
  accept Furen's Armor##1782 |goto Stormwind City 64.62,37.23
step
  only Warrior completed(1701)
  talk Furen Longbeard##5413
  turnin Furen's Armor##1782 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  only Human Warrior completed(1701)
  talk Furen Longbeard##5413
  accept Grimand Elmore##1700 |goto Stormwind City 64.62,37.23
step
  only not Human not NightElf not Skyborne Warrior completed(1701)
  talk Furen Longbeard##5413
  accept Klockmort Spannerspan##1704 |goto Stormwind City 64.62,37.23
step
  only Human Warrior completed(1701)
  note Bring Furen's Notes to Grimand Elmore.
  talk Grimand Elmore##1416
  turnin Grimand Elmore##1700 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only Warrior completed(1701)
  talk Grimand Elmore##1416
  accept Burning Blood##1705 |goto Stormwind City 59.73,33.78
step
  note Go to the Royal Library in Stormwind Keep and speak with Milton Sheaf. He can find for you the book on metallurgy that Brother Kristoff needs for his speech.
  talk Milton Sheaf##1440
  turnin Speaking of Fortitude##343 |goto Stormwind City 77.07,30.21 |tip {turninat}Stormwind City
step
  talk Milton Sheaf##1440
  accept Brother Paxton##344 |goto Stormwind City 77.07,30.21
step
  talk Highlord Bolvar Fordragon##1748
  accept A Friend of the Family##98191 |goto Stormwind City 80.21,38.35
step
  only haveq(1274)
  note Find Bishop DeLavey in Stormwind Keep.
  talk Bishop DeLavey##4960
  turnin The Missing Diplomat##1274 |goto Stormwind City 80.24,44.07 |tip {turninat}Stormwind City
step
  only completed(1274) level>=28
  talk Bishop DeLavey##4960
  accept The Missing Diplomat##1241 |goto Stormwind City 80.24,44.07
step
  note Bring the Menethil Statuette to Lord Grayson Shadowbreaker in the Cathedral of Light.
  talk Lord Grayson Shadowbreaker##928
  turnin A Friend of the Family##98191 |goto Stormwind City 48.43,50.22 |tip {turninat}Stormwind City
step
  only haveq(1241)
  note Find Jorgen in Stormwind City.
  talk Jorgen##4959
  turnin The Missing Diplomat##1241 |goto Stormwind City 76.29,85.12 |tip {turninat}Stormwind City
step
  only completed(1241) level>=28
  talk Jorgen##4959
  accept The Missing Diplomat##1242 |goto Stormwind City 76.29,85.12
step
  only haveq(1242)
  note Delivery Jorgen's Sealed Note to Elling Trias in Stormwind City.
  talk Elling Trias##482
  turnin The Missing Diplomat##1242 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  only completed(1242) level>=28
  talk Elling Trias##482
  accept The Missing Diplomat##1243 |goto Stormwind City 66.03,74.1
step
  note Speak with Tinkmaster Overspark in Ironforge.
  talk Tinkmaster Overspark##7944
  turnin Tinkmaster Overspark##2923 |goto Ironforge 69.55,50.33 |tip {turninat}Ironforge
step
  only not Human not NightElf not Skyborne Warrior completed(1701)
  note Bring Furen's Notes to Klockmort Spannerspan.
  talk Klockmort Spannerspan##6169
  turnin Klockmort Spannerspan##1704 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  only Warrior completed(1701)
  talk Klockmort Spannerspan##6169
  accept Iron Coral##1708 |goto Ironforge 67.92,46.1
step
  note Speak with Brother Paxton in the Northshire Abbey.
  talk Brother Paxton##951
  turnin Brother Paxton##344 |goto Elwynn Forest 49.61,40.41
step
  talk Brother Paxton##951
  accept Ink Supplies##345 |goto Elwynn Forest 49.61,40.41
step
  only completed(248) level>=27
  talk Theocritus##313
  accept Morganth##249 |goto Elwynn Forest 65.22,69.71
step
  only completed(69) haveq(74)
  note The Torn Journal page you discovered provides your next clue.
  talk Marshal Haggard##294
  turnin The Legend of Stalvan##74 |goto Elwynn Forest 84.61,69.38
step
  only completed(69) completed(74) level>=22
  talk Marshal Haggard##294
  accept The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
step
  only completed(69) haveq(75)
  note Marshal Haggard wants you to check the chest upstairs for the Faded Journal Page.
  collect A Faded Journal Page##921 |q 75 |goto Elwynn Forest 85.7,69.54 |tip {dropsfrom}Marshal Haggard's Chest
step
  only completed(69) haveq(75)
  talk Marshal Haggard##294
  turnin The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
step
  only completed(69) completed(75) level>=22
  talk Marshal Haggard##294
  accept The Legend of Stalvan##78 |goto Elwynn Forest 84.61,69.38
step
  only haveq(1243)
  note Give the Sealed Note to Watcher Backus in Duskwood.
  talk Watcher Backus##840
  turnin The Missing Diplomat##1243 |goto Duskwood 74.83,44.22 |tip {turninat}Duskwood
step
  only completed(69) haveq(78)
  note Take the Faded Journal Page to Tavernkeep Smitts.
  talk Tavernkeep Smitts##273
  turnin The Legend of Stalvan##78 |goto Duskwood 73.78,44.49 |tip {turninat}Duskwood
step
  only completed(69) completed(78) level>=22
  talk Tavernkeep Smitts##273
  accept The Legend of Stalvan##79 |goto Duskwood 73.78,44.49
step
  only completed(69) haveq(79)
  note Take the muddy page to Commander Ebonlocke.
  talk Commander Althea Ebonlocke##264
  turnin The Legend of Stalvan##79 |goto Duskwood 73.54,46.82 |tip {turninat}Duskwood
step
  only completed(69) completed(79) level>=22
  talk Commander Althea Ebonlocke##264
  accept The Legend of Stalvan##80 |goto Duskwood 73.54,46.82
step
  only completed(69) haveq(80)
  note Show Clerk Daltry the Bloodstained Journal Page.
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##80 |goto Duskwood 72.54,46.87 |tip {turninat}Duskwood
step
  only completed(69) completed(80) level>=22
  talk Clerk Daltry##267
  accept The Legend of Stalvan##97 |goto Duskwood 72.54,46.87
step
  only completed(69) haveq(97)
  note Report the news to Commander Ebonlocke.
  talk Commander Althea Ebonlocke##264
  turnin The Legend of Stalvan##97 |goto Duskwood 73.54,46.82 |tip {turninat}Duskwood
step
  only Warrior completed(1701)
  note Bring 20 vials of Burning Blood and 1 Burning Rock to Grimand Elmore in Stormwind.
  collect Burning Blood##6844 |q 1705/1 |goto Duskwood 65.13,67.39 |tip {dropsfrom}Nightbane Dark Runner, Nightbane Shadow Weaver, Nightbane Worgen
  collect 1 Burning Rock##6845 |q 1705 |goto Silverpine Forest 49.56,85.2 |tip {dropsfrom}Old Fire-Eye
step
  only Warrior completed(1701)
  talk Grimand Elmore##1416
  turnin Burning Blood##1705 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only Warrior completed(1701)
  note Bring 20 loads of Searing Coral to Klockmort Spannerspan in Ironforge.
  collect 20 Searing Coral##6848 |q 1708 |goto Wetlands 8.92,70.18 |tip {dropsfrom}Iron Coral
step
  only Warrior completed(1701)
  talk Klockmort Spannerspan##6169
  turnin Iron Coral##1708 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  note Speak with Foreman Oslow in Lakeshire and ask him for Rethban Iron Ore.
  talk Foreman Oslow##341
  turnin Ink Supplies##345 |goto Redridge Mountains 27.05,48.64 |tip {turninat}Redridge Mountains
step
  talk Foreman Oslow##341
  accept Rethban Ore##347 |goto Redridge Mountains 27.05,48.64
step
  note Gather 5 loads of Rethban Ore and bring it to Brother Paxton in the Northshire Library.
  collect 5 Rethban Ore##2798 |q 347 |goto Redridge Mountains 16.19,17.37 |tip {dropsfrom}Redridge Drudger, Tin Vein, Copper Vein
step
  only haveq(249)
  note Defeat Morganth.
  kill Morganth##397 |q 249 |goto Redridge Mountains 75.02,49.49 |elite
  collect Pendant of Shadow##3617 |q 249 |goto Redridge Mountains 75.02,49.49
step
  only haveq(249)
  talk Theocritus##313
  turnin Morganth##249 |goto Elwynn Forest 65.22,69.71
step
  talk Brother Paxton##951
  turnin Rethban Ore##347 |goto Elwynn Forest 49.61,40.41
step
  talk Brother Paxton##951
  accept Return to Kristoff##346 |goto Elwynn Forest 49.61,40.41
step
  note Return to Brother Kristoff in the Cathedral Square. Give him the book The Stresses of Iron.
  talk Brother Kristoff##1444
  turnin Return to Kristoff##346 |goto Stormwind City 55.04,54.16 |tip {turninat}Stormwind City
step
  note {travel}Stormwind City
  goto Stormwind City 40.14,85.31
]])
