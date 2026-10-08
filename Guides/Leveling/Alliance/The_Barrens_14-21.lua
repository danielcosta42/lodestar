-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/The Barrens (14-21)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stonetalon Mountains (21-27)",
}, [[
step
  note {fp}Bragok
  goto The Barrens 63.08,37.16 |tip {vendor}
step
  talk Gazlowe##3391
  accept Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Sputtervalve##3442
  accept Samophlange##894 |goto The Barrens 62.98,37.22
step
  click WANTED##3972
  accept WANTED: Baron Longshore##895 |goto The Barrens 62.59,37.47
step
  note Kill 12 Southsea Brigands and 6 Southsea Cannoneers for Gazlowe in Ratchet.
  kill Southsea Brigand##3381 |q 887 |goto The Barrens 63.67,46.13
step
  note Bring the head of Baron Longshore to Gazlowe in Ratchet.
  collect Baron Longshore's Head##5084 |q 895 |goto The Barrens 63.3,49 |tip {dropsfrom}Baron Longshore
step
  talk Gazlowe##3391
  turnin Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  turnin WANTED: Baron Longshore##895 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept The Missing Shipment##890 |goto The Barrens 62.68,36.23
step
  talk Wharfmaster Dizzywig##3453
  turnin The Missing Shipment##890 |goto The Barrens 63.35,38.45
step
  talk Wharfmaster Dizzywig##3453
  accept The Missing Shipment##892 |goto The Barrens 63.35,38.45
step
  talk Gazlowe##3391
  turnin The Missing Shipment##892 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note Retrieve the Shipment of Boots and Telescopic Lens for Gazlowe in Ratchet.
  collect Shipment of Boots##5076 |q 888 |goto The Barrens 62.63,49.63 |tip {dropsfrom}Drizzlik's Emporium
step
  talk Gazlowe##3391
  turnin Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  talk Nalpak##5767
  accept Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  note Nalpak in the Wailing Caverns wants 20 Deviate Hides.
  kill Deviate Coiler##3630 |goto The Barrens 46,36.4 |elite
  collect Deviate Hide##6443 |q 1486 |goto The Barrens 46,36.4
step
  talk Nalpak##5767
  turnin Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  turnin Samophlange##894 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##900 |goto The Barrens 52.4,11.65
step
  talk Wizzlecrank's Shredder##3439
  accept Ignition##858 |goto The Barrens 56.52,7.45
step
  note Get the Ignition Key and bring it to Wizzlecrank.
  collect Ignition Key##5050 |q 858 |goto The Barrens 56.27,8.58 |tip {dropsfrom}Supervisor Lugwizzle
step
  note Close off the Fuel Control Valve, the Regulator Valve and the Main Control Valve then use the control console again.
  collect Main Control Valve##4072 |q 900 |goto The Barrens 52.33,11.56
step
  talk Wizzlecrank's Shredder##3439
  turnin Ignition##858 |goto The Barrens 56.52,7.45
step
  turnin Samophlange##900 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##901 |goto The Barrens 52.4,11.65
step
  talk Wizzlecrank's Shredder##3439
  accept The Escape##863 |goto The Barrens 56.52,7.45
step
  note Get the Console Key from Tinkerer Sniggles to use on the control console.
  collect Console Key##5089 |q 901 |goto The Barrens 52.84,10.39 |tip {dropsfrom}Tinkerer Sniggles
step
  turnin Samophlange##901 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##902 |goto The Barrens 52.4,11.65
step
  talk Sputtervalve##3442
  turnin The Escape##863 |goto The Barrens 62.98,37.22
step
  talk Sputtervalve##3442
  turnin Samophlange##902 |goto The Barrens 62.98,37.22
step
  talk Mebok Mizzyrix##3446
  accept Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  talk Wharfmaster Dizzywig##3453
  accept Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  talk Crane Operator Bigglefuzz##3665
  accept Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  note Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
  kill Mad Magglish##3655 |goto The Barrens 46.83,34.66 |elite
  collect 99-Year-Old Port##5334 |q 959 |goto The Barrens 46.83,34.66
step
  note Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
  collect 5 Intact Raptor Horn##5055 |q 865 |goto The Barrens 52.58,45.99 |tip {dropsfrom}Sunscale Scytheclaw, Ishamuhale, Takk the Leaper
step
  note Retrieve the Cats Eye Emerald from one of the Venture Co. Overseers or Enforcers for Wharfmaster Dizzywig at Ratchet.
  collect Cats Eye Emerald##5097 |q 896 |goto The Barrens 60.81,3.79 |tip {dropsfrom}Venture Co. Enforcer, Venture Co. Overseer, Boss Copperplug
step
  talk Mebok Mizzyrix##3446
  turnin Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  talk Wharfmaster Dizzywig##3453
  turnin Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  talk Crane Operator Bigglefuzz##3665
  turnin Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  talk Mebok Mizzyrix##3446
  accept Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  talk Sputtervalve##3442
  accept Ziz Fizziks##1483 |goto The Barrens 62.98,37.22
step
  talk Bainham##267309
  accept Chol'aruk the Ravener##97005 |goto The Barrens 61.8,39.4
step
  note Bring Chol'aruk's Head to Bainham in the Barrens.
  collect Chol'aruk's Head##276070 |q 97005 |goto The Barrens 57.76,27.42 |tip {dropsfrom}Chol'aruk
step
  talk Bainham##267309
  turnin Chol'aruk the Ravener##97005 |goto The Barrens 61.8,39.4
step
  only Warlock completed(1716)
  talk Takar the Seer##6244
  accept Heartswood##1738 |goto The Barrens 49.31,57.1
step
  click Burned-Out Remains##415106
  accept Stepping Stones##79192 |goto The Barrens 46.34,73.96
step
  talk Ziz Fizziks##4201
  turnin Ziz Fizziks##1483 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  turnin Stepping Stones##79192 |goto Stonetalon Mountains 40.79,52.61 |tip {turninat}Stonetalon Mountains
step
  only Dwarf Priest not completed(5641) not completed(5645) not haveq(5641) not haveq(5645)
  talk Priestess Alathea##11401
  accept A Lack of Fear##5647 |goto Darnassus 39.52,81.2
step
  only NightElf Priest not completed(5673) not completed(5674) not completed(5675) not haveq(5673) not haveq(5674) not haveq(5675)
  talk Priestess Alathea##11401
  accept Elune's Grace##5672 |goto Darnassus 39.52,81.2
step
  only Human Priest not completed(5676) not completed(5677) not haveq(5676) not haveq(5677)
  talk Priestess Alathea##11401
  accept Arcane Feedback##5678 |goto Darnassus 39.52,81.2
step
  only not Human not Dwarf not Gnome Druid
  talk Mathrengyl Bearwalker##4217
  accept The Great Cat Spirit##98393 |goto Darnassus 35.37,8.4
step
  only completed(6981)
  talk Falla Sagewind##8418
  accept In Nightmares##3370 |goto The Barrens 48.18,32.78
step
  note Bring 15 Deepmoss Eggs to Mebok Mizzyrix in Ratchet.
  collect 15 Deepmoss Egg##5570 |q 1069 |goto Stonetalon Mountains 61.39,56.74 |tip {dropsfrom}Deepmoss Eggs
step
  only Warlock completed(1716)
  note Retrieve the Heartswood from Ashenvale and bring it to Gakin the Darkbinder in the Mage Quarter of Stormwind.
  collect Heartswood##6912 |q 1738 |goto Ashenvale 31.55,31.57
step
  talk Mebok Mizzyrix##3446
  turnin Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  only Warlock completed(1716)
  talk Gakin the Darkbinder##6122
  turnin Heartswood##1738 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only Dwarf Priest not completed(5641) not completed(5645) not haveq(5641) not haveq(5645)
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5647 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
step
  only NightElf Priest not completed(5673) not completed(5674) not completed(5675) not haveq(5673) not haveq(5674) not haveq(5675)
  talk Priestess Alathea##11401
  turnin Elune's Grace##5672 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only Human Priest not completed(5676) not completed(5677) not haveq(5676) not haveq(5677)
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5678 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only not Human not Dwarf not Gnome Druid
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98393 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  only completed(6981)
  talk Mathrengyl Bearwalker##4217
  turnin In Nightmares##3370 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  note {travel}Stonetalon Mountains
  goto Stonetalon Mountains 59.9,66.85
]])
