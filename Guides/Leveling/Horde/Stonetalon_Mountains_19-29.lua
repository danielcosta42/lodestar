-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stonetalon Mountains (19-29)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Ashenvale (23-30)",
}, [[
step
  note {fp}Tharm
  goto Stonetalon Mountains 45.12,59.84 |tip {vendor}
step
  talk Braelyn Firehand##4198
  accept Cenarius' Legacy##1087 |goto Stonetalon Mountains 45.94,60.42
step
  talk Maggran Earthbinder##11860
  accept Calling in the Reserves##5881 |goto Stonetalon Mountains 47.2,61.16
step
  talk Maggran Earthbinder##11860
  accept Harpies Threaten##6282 |goto Stonetalon Mountains 47.2,61.16
step
  talk Tammra Windfield##11864
  accept Cycle of Rebirth##6301 |goto Stonetalon Mountains 47.46,58.38
step
  note Tammra Windfield at Sun Rock Retreat wants you to gather 10 Gaea Seeds.
  get Cycle of Rebirth |q 6301 |goto Stonetalon Mountains 47.46,58.38
step
  talk Tsunaman##11862
  accept Elemental War##6393 |goto Stonetalon Mountains 47.36,64.25
step
  note Bring 10 Incendrites to Tsunaman at Sun Rock Retreat.
  get Elemental War |q 6393 |goto Stonetalon Mountains 47.36,64.25
step
  talk Mor'rogal##11861
  accept Boulderslide Ravine##6421 |goto Stonetalon Mountains 47.22,64.04
step
  note Explore deep into the cave at Boulderslide Ravine and bring back 10 Resonite Crystals for Mor'rogal at Sun Rock Retreat to investigate.
  get Boulderslide Ravine |q 6421 |goto Stonetalon Mountains 47.22,64.04
step
  talk Tsunaman##11862
  accept Trouble in the Deeps##6562 |goto Stonetalon Mountains 47.36,64.25
step
  note Maggran Earthbinder in Sun Rock Retreat wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
  kill Bloodfury Harpy##4022 |q 6282 |goto Stonetalon Mountains 32.75,60.8
step
  note Kill 4 Sons of Cenarius, 4 Daughters of Cenarius and 4 Cenarion Botanists for Braelyn Firehand near Sun Rock Retreat.
  kill Son of Cenarius##4057 |q 1087 |goto Stonetalon Mountains 35.9,12.59
step
  talk Ziz Fizziks##4201
  accept Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  note Get the Super Reaper 6000 Blueprints for Ziz Fizziks in the Stonetalon Mountains.
  get Super Reaper 6000 |q 1093 |goto Stonetalon Mountains 58.99,62.6
step
  talk Ziz Fizziks##4201
  accept Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  note Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
  get Gerenzo Wrenchwhistle |q 1096 |goto Stonetalon Mountains 58.99,62.6
step
  talk Piznik##4276
  accept Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60.0
step
  talk Braug Dimspirit##4489
  accept Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  note Find the Legacy of the Aspects and return it to Braug Dimspirit near the entrance to Talondeep Path in Stonetalon Mountains.
  get Test of Lore |q 1154 |goto Stonetalon Mountains 78.8,45.69
step
  talk Witch Doctor Jin'Zil##3995
  accept Jin'Zil's Forest Magic##1058 |goto Stonetalon Mountains 74.54,97.94
step
  note Witch Doctor Jin'Zil at Malaka'jin wants 5 portions of Stonetalon Sap, 5 Twilight Whiskers, 30 Courser Eyes and a Fey Dragon Scale.
  get Jin'Zil's Forest Magic |q 1058 |goto Stonetalon Mountains 74.54,97.94
step
  talk Xen'Zilla##12816
  accept Blood Feeders##6461 |goto Stonetalon Mountains 71.25,95.02
step
  talk Darn Talongrip##11821
  accept Report to Kadrak##6542 |goto Stonetalon Mountains 73.25,94.89
step
  talk Je'neu Sancrea##12736
  turnin Trouble in the Deeps##6562 |goto Ashenvale 11.56,34.29 |tip {turninat}Ashenvale
step
  talk Maggran Earthbinder##11860
  turnin Harpies Threaten##6282 |goto Stonetalon Mountains 47.2,61.16
step
  talk Grish Longrunner##12576
  turnin Calling in the Reserves##5881 |goto Thousand Needles 31.86,21.66 |tip {turninat}Thousand Needles
step
  talk Mor'rogal##11861
  turnin Boulderslide Ravine##6421 |goto Stonetalon Mountains 47.22,64.04
step
  talk Tsunaman##11862
  turnin Elemental War##6393 |goto Stonetalon Mountains 47.36,64.25
step
  talk Tammra Windfield##11864
  turnin Cycle of Rebirth##6301 |goto Stonetalon Mountains 47.46,58.38
step
  talk Braelyn Firehand##4198
  turnin Cenarius' Legacy##1087 |goto Stonetalon Mountains 45.94,60.42
step
  talk Braelyn Firehand##4198
  accept Ordanus##1088 |goto Stonetalon Mountains 45.94,60.42
step
  note Bring Ordanus' head to Braelyn Firehand near Sun Rock Retreat.
  get Ordanus |q 1088 |goto Stonetalon Mountains 45.94,60.42
step
  talk Maggran Earthbinder##11860
  accept Bloodfury Bloodline##6283 |goto Stonetalon Mountains 47.2,61.16
step
  note Maggran at Sun Rock Retreat wishes you to slay Bloodfury Ripper and bring her remains as proof of your deed.
  get Bloodfury Bloodline |q 6283 |goto Stonetalon Mountains 47.2,61.16
step
  talk Tammra Windfield##11864
  accept New Life##6381 |goto Stonetalon Mountains 47.46,58.38
step
  talk Mor'rogal##11861
  accept Earthen Arise##6481 |goto Stonetalon Mountains 47.22,64.04
step
  note Open the Resonite cask with the Enchanted Resonite Crystal, and then slay Goggeroc. Return to Mor'rogal with the news and Enchanted Resonite Crystal.
  kill Goggeroc##11920 |q 6481
step
  note Plant 10 Gaea Seeds in Gaea Dirt Mounds, and then return the remaining Enchanted Gaea Seeds to Tammra at Sun Rock Retreat.
  collect Gaea Dirt Mound##177929 |q 6381 |goto Stonetalon Mountains 33.61,68.54
step
  talk Ziz Fizziks##4201
  turnin Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  talk Ziz Fizziks##4201
  turnin Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  talk Ziz Fizziks##4201
  accept Further Instructions##1094 |goto Stonetalon Mountains 58.99,62.6
step
  note Xen'zilla at Malaka'Jin needs you to kill 10 Deepmoss Creepers and 7 Deepmoss Venomspitters.
  kill Deepmoss Creeper##4005 |q 6461 |goto Stonetalon Mountains 59.09,76.24
step
  talk Piznik##4276
  turnin Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60.0
step
  talk Piznik##4276
  accept Gerenzo's Orders##1092 |goto Stonetalon Mountains 71.87,60.0
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  talk Sputtervalve##3442
  turnin Further Instructions##1094 |goto The Barrens 62.98,37.22 |tip {turninat}The Barrens
step
  talk Kadrak##8582
  turnin Report to Kadrak##6542 |goto The Barrens 48.12,5.42 |tip {turninat}The Barrens
step
  talk Braug Dimspirit##4489
  accept Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  talk Witch Doctor Jin'Zil##3995
  turnin Jin'Zil's Forest Magic##1058 |goto Stonetalon Mountains 74.54,97.94
step
  talk Xen'Zilla##12816
  turnin Blood Feeders##6461 |goto Stonetalon Mountains 71.25,95.02
step
  talk Braelyn Firehand##4198
  turnin Ordanus##1088 |goto Stonetalon Mountains 45.94,60.42
step
  talk Maggran Earthbinder##11860
  turnin Bloodfury Bloodline##6283 |goto Stonetalon Mountains 47.2,61.16
step
  talk Mor'rogal##11861
  turnin Earthen Arise##6481 |goto Stonetalon Mountains 47.22,64.04
step
  talk Tammra Windfield##11864
  turnin New Life##6381 |goto Stonetalon Mountains 47.46,58.38
step
  talk Braelyn Firehand##4198
  accept The Den##1089 |goto Stonetalon Mountains 45.94,60.42
step
  note Travel to the Den on Stonetalon Peak. Using the Gatekeeper's Key, obtain the druids' hidden items. Use these items to open the Talon Den Hoard.
  get The Den |q 1089 |goto Stonetalon Mountains 45.94,60.42
step
  talk Ziz Fizziks##4201
  turnin Gerenzo's Orders##1092 |goto Stonetalon Mountains 58.99,62.6
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  talk Braug Dimspirit##4489
  accept Test of Lore##1159 |goto Stonetalon Mountains 78.8,45.69
step
  turnin The Den##1089 |goto Stonetalon Mountains 26.6,10.87
step
  talk Parqual Fintallas##4488
  turnin Test of Lore##1159 |goto Undercity 57.8,65.42 |tip {turninat}Undercity
step
  note {travel}Ashenvale
  goto Ashenvale 11.69,34.91
]])
