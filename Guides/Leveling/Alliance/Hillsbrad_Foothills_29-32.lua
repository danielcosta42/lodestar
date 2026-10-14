-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Hillsbrad Foothills (29-32)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Wetlands (30-33)",
	rev = "a50e790c",
}, [[
step
  only completed(391)
  talk Warden Thelwater##1719
  accept The Curious Visitor##392 |goto Stormwind City 51.49,69.38
step
  talk Tom "Half-fish" Wilson##254078
  accept A Lack of Virtue##98459 |goto Hillsbrad Foothills 51.2,66.45
step
  note {fp}Darla Harris
  goto Hillsbrad Foothills 49.34,52.27 |tip {vendor}
step
  talk Brewmeister Bilger##2705
  accept Brewer's Trade##98071 |goto Hillsbrad Foothills 52.13,58.74
step
  note Deliver the bottles of Fallrook Varietal to Dun Garok in southeast Hillsbrad Foothills, and bring back a sack of their Homebrew Hops.
  collect Sack of Homebrew Hops##279389 |q 98071 |goto Hillsbrad Foothills 52.13,58.74
step
  talk Brewmeister Bilger##2705
  turnin Brewer's Trade##98071 |goto Hillsbrad Foothills 52.13,58.74
step
  talk Captain McManus##251493
  accept Hillsbrad's Hoard##98059 |goto Hillsbrad Foothills 46.47,50.13
step
  talk Captain McManus##251493
  turnin Hillsbrad's Hoard##98059 |goto Hillsbrad Foothills 46.47,50.13
step
  talk Lieutenant Farren Orinelle##2228
  accept Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.39
step
  note Kill 10 Torn Fin Tidehunters and 10 Torn Fin Oracles for Lieutenant Farren Orinelle in Southshore.
  kill Torn Fin Tidehunter##2377 |q 536 |goto Hillsbrad Foothills 43.36,68.2
step
  talk Lieutenant Farren Orinelle##2228
  turnin Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Chef Jessen##2430
  accept Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
  note Bring 10 pieces of Turtle Meat and some Soothing Spices to Chef Jessen in Southshore.
  collect 10 Turtle Meat##3712 |q 555 |goto Hillsbrad Foothills 66.06,38.25 |tip {dropsfrom}Snapjaw, Saltwater Snapjaw, Sparkleshell Tortoise
step
  talk Chef Jessen##2430
  turnin Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
  talk Lieutenant Farren Orinelle##2228
  accept Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.39
step
  note Collect 10 Murloc Heads from the murlocs on the Western Strand for Lieutenant Farren Orinelle in Southshore.
  collect 10 Murloc Head##3716 |q 559 |goto Hillsbrad Foothills 25.32,72.79 |tip {dropsfrom}Torn Fin Muckdweller, Torn Fin Coastrunner, Torn Fin Oracle
step
  talk Lieutenant Farren Orinelle##2228
  turnin Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Lieutenant Farren Orinelle##2228
  accept Farren's Proof##560 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Marshal Redpath##2263
  turnin Farren's Proof##560 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Marshal Redpath##2263
  accept Farren's Proof##561 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Lieutenant Farren Orinelle##2228
  turnin Farren's Proof##561 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Lieutenant Farren Orinelle##2228
  accept Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.39
step
  note Kill 10 Daggerspine Shorehunters and 10 Daggerspine Sirens for Lieutenant Farren Orinelle in Southshore.
  kill Daggerspine Shorehunter##2369 |q 562 |goto Hillsbrad Foothills 57.84,69.11
step
  talk Lieutenant Farren Orinelle##2228
  turnin Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Lieutenant Farren Orinelle##2228
  accept Reassignment##563 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Bart Tidewater##1481
  turnin A Lack of Virtue##98459 |goto Wetlands 9.41,58.76 |tip {turninat}Wetlands
step
  only completed(391)
  talk Baros Alexston##1646
  turnin The Curious Visitor##392 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  talk Lord Grayson Shadowbreaker##928
  accept The Shamed Lieutenant##98219 |goto Stormwind City 48.43,50.22
step
  only completed(1245)
  talk Elling Trias##482
  accept The Missing Diplomat##1246 |goto Stormwind City 66.03,74.1
step
  only Warlock completed(1758)
  talk Krom Stoutarm##6294
  accept Tome of the Cabal##1802 |goto Ironforge 74.19,9.39
step
  only Warlock completed(1758)
  note Retrieve the Moldy Tome and Tattered Manuscript for Krom Stoutarm in Ironforge.
  collect Moldy Tome##6931 |q 1802 |goto Hillsbrad Foothills 27.78,72.79 |tip {dropsfrom}Tome of the Cabal
step
  talk Lieutenant Farren Orinelle##2228
  turnin The Shamed Lieutenant##98219 |goto Hillsbrad Foothills 51.46,58.39
step
  only completed(1245)
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1246 |goto Stormwind City 74.26,59.17 |tip {turninat}Stormwind City
step
  only Warlock completed(1758)
  talk Krom Stoutarm##6294
  turnin Tome of the Cabal##1802 |goto Ironforge 74.19,9.39 |tip {turninat}Ironforge
step
  only completed(391)
  talk Baros Alexston##1646
  accept Shadow of the Past##393 |goto Stormwind City 57.74,47.86
step
  only completed(1245)
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1447 |goto Stormwind City 74.26,59.17
step
  only completed(1245)
  note Defeat Dashel Stonefist in Stormwind.
  kill Dashel Stonefist##4961 |q 1447 |goto Stormwind City 74.26,59.17
step
  only completed(391)
  talk Master Mathias Shaw##332
  turnin Shadow of the Past##393 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(1245)
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1447 |goto Stormwind City 74.26,59.17 |tip {turninat}Stormwind City
step
  only completed(391)
  talk Master Mathias Shaw##332
  accept Look to an Old Friend##350 |goto Stormwind City 78.31,70.74
step
  only completed(1245)
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1247 |goto Stormwind City 74.26,59.17
step
  only completed(391)
  talk Elling Trias##482
  turnin Look to an Old Friend##350 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  only completed(1245)
  talk Elling Trias##482
  turnin The Missing Diplomat##1247 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  only completed(391)
  talk Elling Trias##482
  accept Infiltrating the Castle##2745 |goto Stormwind City 66.03,74.1
step
  only completed(391)
  talk Tyrion##7766
  turnin Infiltrating the Castle##2745 |goto Stormwind City 73.23,35.58 |tip {turninat}Stormwind City
step
  only completed(391)
  talk Tyrion##7766
  accept Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58
step
  only completed(391)
  note Bring 3 Silk Cloth and 2 of Clara's Fresh Apples to Tyrion in Stormwind.
  collect 3 Silk Cloth##4306 |q 2746 |goto Hillsbrad Foothills 43.54,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  only completed(391)
  talk Tyrion##7766
  turnin Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58 |tip {turninat}Stormwind City
step
  talk Major Samuelson##2439
  turnin Reassignment##563 |goto Stormwind City 75.83,36.72 |tip {turninat}Stormwind City
step
  only completed(391)
  talk Tyrion##7766
  accept The Attack!##434 |goto Stormwind City 73.23,35.58
step
  only completed(391)
  note Remain in the garden until Lord Gregor Lescovar and Marzon the Silent Blade have had their conversation. Afterwards, kill them both before returning to Elling Trias in Stormwind.
  kill Lord Gregor Lescovar##1754 |q 434 |goto Stormwind City 72.36,35.12
step
  only completed(391)
  talk Elling Trias##482
  turnin The Attack!##434 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  only completed(391)
  talk Elling Trias##482
  accept The Head of the Beast##394 |goto Stormwind City 66.03,74.1
step
  only completed(391)
  talk Master Mathias Shaw##332
  turnin The Head of the Beast##394 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(391)
  talk Master Mathias Shaw##332
  accept Brotherhood's End##395 |goto Stormwind City 78.31,70.74
step
  only completed(391)
  talk Baros Alexston##1646
  turnin Brotherhood's End##395 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  only completed(391)
  talk Baros Alexston##1646
  accept An Audience with the King##396 |goto Stormwind City 57.74,47.86
step
  only completed(391)
  talk Lady Katrana Prestor##1749
  turnin An Audience with the King##396 |goto Stormwind City 80.1,38.17 |tip {turninat}Stormwind City
step
  note {travel}Wetlands
  goto Wetlands 38.81,52.39
]])
