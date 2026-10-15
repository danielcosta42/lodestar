-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/The Barrens (14-21)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stonetalon Mountains (21-27)",
	rev = "f1c2f0fe",
}, [[
step
  ding 13
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
  note Kill 12 Southsea Brigands and 6 Southsea Cannoneers for Gazlowe in Ratchet.
  kill Southsea Brigand##3381 |q 887/1 |goto The Barrens 63.67,46.13
  kill Southsea Cannoneer##3382 |q 887 |goto The Barrens 63.58,46.69
step
  talk Gazlowe##3391
  turnin Southsea Freebooters##887 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept The Missing Shipment##890 |goto The Barrens 62.68,36.23
step
  click WANTED##3972
  accept WANTED: Baron Longshore##895 |goto The Barrens 62.59,37.47
step
  note Bring Gazlowe's Ledger to Wharfmaster Dizzywig.
  talk Wharfmaster Dizzywig##3453
  turnin The Missing Shipment##890 |goto The Barrens 63.35,38.45
step
  talk Wharfmaster Dizzywig##3453
  accept The Missing Shipment##892 |goto The Barrens 63.35,38.45
step
  note Return Gazlowe's Ledger to Gazlowe in Ratchet.
  talk Gazlowe##3391
  turnin The Missing Shipment##892 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  accept Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  note Retrieve the Shipment of Boots and Telescopic Lens for Gazlowe in Ratchet.
  collect Telescopic Lens##5077 |q 888/2 |goto The Barrens 63.58,49.25 |tip {dropsfrom}Fragile - Do Not Drop
  collect Shipment of Boots##5076 |q 888 |goto The Barrens 62.63,49.63 |tip {dropsfrom}Drizzlik's Emporium
step
  note Bring the head of Baron Longshore to Gazlowe in Ratchet.
  collect Baron Longshore's Head##5084 |q 895 |goto The Barrens 63.3,49 |tip {dropsfrom}Baron Longshore
step
  talk Gazlowe##3391
  turnin Stolen Booty##888 |goto The Barrens 62.68,36.23
step
  talk Gazlowe##3391
  turnin WANTED: Baron Longshore##895 |goto The Barrens 62.68,36.23
step
  only level>=13
  talk Mebok Mizzyrix##3446
  accept Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  only level>=13
  talk Wharfmaster Dizzywig##3453
  accept Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  only haveq(865)
  note Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
  collect 5 Intact Raptor Horn##5055 |q 865 |goto The Barrens 52.58,45.99 |tip {dropsfrom}Sunscale Scytheclaw, Ishamuhale, Takk the Leaper
step
  note Access the control console at the Venture Company research site.
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
  only haveq(896)
  note Retrieve the Cats Eye Emerald from one of the Venture Co. Overseers or Enforcers for Wharfmaster Dizzywig at Ratchet.
  collect Cats Eye Emerald##5097 |q 896 |goto The Barrens 60.81,3.79 |tip {dropsfrom}Venture Co. Enforcer, Venture Co. Overseer, Boss Copperplug
step
  note Close off the Fuel Control Valve, the Regulator Valve and the Main Control Valve then use the control console again.
  click Fuel Control Valve##61936 |q 900/2 |goto The Barrens 52.4,11.41
  click Regulator Valve##61935 |q 900/3 |goto The Barrens 52.3,11.42
  click Main Control Valve##4072 |q 900 |goto The Barrens 52.33,11.56
step
  talk Wizzlecrank's Shredder##3439
  turnin Ignition##858 |goto The Barrens 56.52,7.45
step
  turnin Samophlange##900 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##901 |goto The Barrens 52.4,11.65
step
  note Get the Console Key from Tinkerer Sniggles to use on the control console.
  collect Console Key##5089 |q 901 |goto The Barrens 52.84,10.39 |tip {dropsfrom}Tinkerer Sniggles
step
  turnin Samophlange##901 |goto The Barrens 52.4,11.65
step
  click Control Console##4141
  accept Samophlange##902 |goto The Barrens 52.4,11.65
step
  talk Wizzlecrank's Shredder##3439
  accept The Escape##863 |goto The Barrens 56.52,7.45
step
  note Protect Wizzlecrank and the stolen goblin shredder on the way to Sputtervalve in Ratchet.
  goto The Barrens 55.36,7.68 |tip Escort Wizzlecrank out of the Venture Co. drill site
step
  talk Sputtervalve##3442
  turnin The Escape##863 |goto The Barrens 62.98,37.22
step
  only haveq(865)
  talk Mebok Mizzyrix##3446
  turnin Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  only haveq(896)
  talk Wharfmaster Dizzywig##3453
  turnin Miner's Fortune##896 |goto The Barrens 63.35,38.45
step
  note Return the Samophlange to Sputtervalve in Ratchet.
  talk Sputtervalve##3442
  turnin Samophlange##902 |goto The Barrens 62.98,37.22
step
  only level>=15
  talk Mebok Mizzyrix##3446
  accept Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  only level>=16
  talk Sputtervalve##3442
  accept Ziz Fizziks##1483 |goto The Barrens 62.98,37.22
step
  only level>=15
  talk Bainham##267309
  accept Chol'aruk the Ravener##97005 |goto The Barrens 61.91,39.42
step
  only haveq(97005)
  note Bring Chol'aruk's Head to Bainham in the Barrens.
  collect Chol'aruk's Head##276070 |q 97005 |goto The Barrens 57.64,27.37 |tip {dropsfrom}Chol'aruk
step
  only haveq(97005)
  talk Bainham##267309
  turnin Chol'aruk the Ravener##97005 |goto The Barrens 61.91,39.42
step
  only completed(6981) level>=15
  talk Falla Sagewind##8418
  accept In Nightmares##3370 |goto The Barrens 48.18,32.78
step
  click Burned-Out Remains##415106
  accept Stepping Stones##79192 |goto The Barrens 46.41,73.96
step
  only haveq(1069)
  note Bring 15 Deepmoss Eggs to Mebok Mizzyrix in Ratchet.
  collect 15 Deepmoss Egg##5570 |q 1069 |goto Stonetalon Mountains 61.39,56.74 |tip {dropsfrom}Deepmoss Eggs
step
  only haveq(1069)
  talk Mebok Mizzyrix##3446
  turnin Deepmoss Spider Eggs##1069 |goto The Barrens 62.37,37.62
step
  only completed(6981) haveq(3370)
  note Bring the Nightmare Shard to Mathrengyl Bearwalker in Darnassus.
  talk Mathrengyl Bearwalker##4217
  turnin In Nightmares##3370 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only not Human not Dwarf not Gnome Druid level>=20
  talk Mathrengyl Bearwalker##4217
  accept The Great Cat Spirit##98393 |goto Darnassus 35.37,8.4
step
  only NightElf Priest not completed(5673) not completed(5674) not completed(5675) not haveq(5673) not haveq(5674) not haveq(5675) level>=20
  talk Priestess Alathea##11401
  accept Elune's Grace##5672 |goto Darnassus 39.52,81.2
step
  only NightElf Priest not completed(5673) not completed(5674) not completed(5675) not haveq(5673) not haveq(5674) not haveq(5675) haveq(5672)
  talk Priestess Alathea##11401
  turnin Elune's Grace##5672 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only not Human not Dwarf not Gnome Druid haveq(98393)
  note Speak with Dendrite Starblaze in the village of Nighthaven, Moonglade.
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98393 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  only haveq(1483)
  note Speak with Ziz Fizziks in Windshear Crag.
  talk Ziz Fizziks##4201
  turnin Ziz Fizziks##1483 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  note You tear the note from the plank and read the scrawled writing.
  turnin Stepping Stones##79192 |goto Stonetalon Mountains 40.76,52.57 |tip {turninat}Stonetalon Mountains
step
  note {travel}Stonetalon Mountains
  goto Stonetalon Mountains 59.9,66.85
]])
