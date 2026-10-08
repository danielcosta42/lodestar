-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Hillsbrad Foothills (30-32)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Hillsbrad Foothills (33-38)",
	rev = "7077073b",
}, [[
step
  only completed(2745)
  talk Tyrion##7766
  accept Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58
step
  only Warlock completed(1758)
  talk Krom Stoutarm##6294
  accept Tome of the Cabal##1802 |goto Ironforge 74.19,9.39
step
  talk Tom "Half-fish" Wilson##254078
  accept A Lack of Virtue##98459 |goto Hillsbrad Foothills 50.53,70.01
step
  only Warlock completed(1758)
  note Retrieve the Moldy Tome and Tattered Manuscript for Krom Stoutarm in Ironforge.
  collect Moldy Tome##6931 |q 1802 |goto Hillsbrad Foothills 27.78,72.79 |tip {dropsfrom}Tome of the Cabal
step
  note {fp}Darla Harris
  goto Hillsbrad Foothills 49.34,52.27 |tip {vendor}
step
  talk Lieutenant Farren Orinelle##2228
  accept Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Chef Jessen##2430
  accept Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
  note Bring 10 pieces of Turtle Meat and some Soothing Spices to Chef Jessen in Southshore.
  collect 10 Turtle Meat##3712 |q 555 |goto Hillsbrad Foothills 66.06,38.25 |tip {dropsfrom}Snapjaw, Saltwater Snapjaw, Sparkleshell Tortoise
step
  only completed(2745)
  note Bring 3 Silk Cloth and 2 of Clara's Fresh Apples to Tyrion in Stormwind.
  collect 3 Silk Cloth##4306 |q 2746 |goto Hillsbrad Foothills 43.54,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Chef Jessen##2430
  turnin Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
  note Kill 10 Torn Fin Tidehunters and 10 Torn Fin Oracles for Lieutenant Farren Orinelle in Southshore.
  kill Torn Fin Tidehunter##2377 |q 536 |goto Hillsbrad Foothills 43.36,68.2
step
  talk Lieutenant Farren Orinelle##2228
  turnin Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.39
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
  only completed(2745)
  talk Tyrion##7766
  turnin Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58 |tip {turninat}Stormwind City
step
  only Warlock completed(1758)
  talk Krom Stoutarm##6294
  turnin Tome of the Cabal##1802 |goto Ironforge 74.19,9.39 |tip {turninat}Ironforge
step
  only completed(2745)
  talk Tyrion##7766
  accept The Attack!##434 |goto Stormwind City 73.23,35.58
step
  only completed(2745)
  note Remain in the garden until Lord Gregor Lescovar and Marzon the Silent Blade have had their conversation. Afterwards, kill them both before returning to Elling Trias in Stormwind.
  talk Lord Gregor Lescovar##1754 |q 434 |goto Stormwind City 72.36,35.12
step
  only completed(2745)
  talk Elling Trias##482
  turnin The Attack!##434 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  only completed(2745)
  talk Elling Trias##482
  accept The Head of the Beast##394 |goto Stormwind City 66.03,74.1
step
  only completed(2745)
  talk Master Mathias Shaw##332
  turnin The Head of the Beast##394 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(2745)
  talk Master Mathias Shaw##332
  accept Brotherhood's End##395 |goto Stormwind City 78.31,70.74
step
  only completed(2745)
  talk Baros Alexston##1646
  turnin Brotherhood's End##395 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  only completed(2745)
  talk Baros Alexston##1646
  accept An Audience with the King##396 |goto Stormwind City 57.74,47.86
step
  only completed(2745)
  talk Lady Katrana Prestor##1749
  turnin An Audience with the King##396 |goto Stormwind City 80.1,38.17 |tip {turninat}Stormwind City
step
  talk Major Samuelson##2439
  turnin Reassignment##563 |goto Stormwind City 75.83,36.72 |tip {turninat}Stormwind City
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 48.14,59.11
]])
