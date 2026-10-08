-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stonetalon Mountains (19-29)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Ashenvale (23-27)",
}, [[
step
  note {fp}Gereck
  goto Stonetalon Mountains 47.93,61.39 |tip {vendor}
step
  talk Keeper Bel'dugur##2934
  accept The Book of Ur##1013 |goto Undercity 53.74,54.46
step
  note Bring the Book of Ur to Keeper Bel'dugur at the Apothecarium in the Undercity.
  collect The Book of Ur##6283 |q 1013 |goto Shadowfang Keep - Dungeon -1,-1
step
  talk Braelyn Firehand##4198
  accept Cenarius' Legacy##1087 |goto Stonetalon Mountains 45.94,60.42
step
  only Mage
  talk Deino##5885
  accept Waters of Xavian##1944 |goto Orgrimmar 38.45,86.13
step
  only Mage
  note Bring the Xavian Water Sample to Deino in Orgrimmar.
  collect Xavian Water Sample##7268 |q 1944 |goto Ashenvale 76.29,41.49 |tip {dropsfrom}Xavian Waterfall
step
  only Rogue
  talk Shenthul##3401
  accept Hinott's Assistance##2479 |goto Orgrimmar 43.05,53.74
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
  collect 10 Gaea Seed##16205 |q 6301 |goto Stonetalon Mountains 48.92,40.73
step
  talk Tsunaman##11862
  accept Elemental War##6393 |goto Stonetalon Mountains 47.36,64.25
step
  note Bring 10 Incendrites to Tsunaman at Sun Rock Retreat.
  collect 10 Incendrites##16312 |q 6393 |goto Stonetalon Mountains 37.14,53.06 |tip {dropsfrom}Rogue Flame Spirit, Burning Ravager, Burning Destroyer
step
  talk Mor'rogal##11861
  accept Boulderslide Ravine##6421 |goto Stonetalon Mountains 47.22,64.04
step
  note Explore deep into the cave at Boulderslide Ravine and bring back 10 Resonite Crystals for Mor'rogal at Sun Rock Retreat to investigate.
  collect Resonite Crystal##16581 |q 6421 |goto Stonetalon Mountains 59.61,90.93
step
  talk Tsunaman##11862
  accept Trouble in the Deeps##6562 |goto Stonetalon Mountains 47.36,64.25
step
  click Mound of Dirt##424012
  accept Wet Job##79974 |goto Stonetalon Mountains 39.64,49.91
step
  click Pocket Litter##424005
  accept Scramble##79980 |goto Stonetalon Mountains 40.79,52.61
step
  talk Maggran Earthbinder##11860
  accept Bloodfury Trinkets##86576 |goto Stonetalon Mountains 47.2,61.16
step
  note Bring 15 Glittering Sunstones to Mor'rogal.
  collect 15 Glittering Sunstone##277936 |q 86576 |goto Stonetalon Mountains 32.75,60.8 |tip {dropsfrom}Bloodfury Harpy, Bloodfury Roguefeather, Bloodfury Slayer
step
  talk Theodore Griffs##11835
  accept The New Plague##95216 |goto Undercity 46.31,71.91
step
  note Collect the Highly Toxic Strain from Witherfang in Ruins of Lordaeron for Theodore Griffs in Undercity.
  collect Highly Toxic Strain##275443 |q 95216 |goto Undercity 46.31,71.91 |tip {dropsfrom}Witherfang
step
  talk Tah Winterhoof##3024
  accept Pigments for Paints##97538 |goto Thunder Bluff 54.14,47.05
step
  note Tah Winterhoof in Thunder Bluff wants 30 Mirkweed Pods from Mirkfallon Lake.
  collect Mirkweed Pods##278201 |q 97538 |goto Thunder Bluff 54.14,47.05
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
  collect Super Reaper 6000 Blueprints##5734 |q 1093 |goto Stonetalon Mountains 69.99,52.05 |tip {dropsfrom}Venture Co. Operator
step
  talk Ziz Fizziks##4201
  accept Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  note Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
  collect Gerenzo's Mechanical Arm##5736 |q 1096 |goto Stonetalon Mountains 64.49,40.25 |tip {dropsfrom}Gerenzo Wrenchwhistle
step
  talk Zangen Stonehoof##4721
  accept The Sacred Flame##1195 |goto Thunder Bluff 54.97,51.41
step
  note Return a Filled Etched Phial to Zangen Stonehoof in Thunder Bluff.
  collect Filled Etched Phial##5868 |q 1195 |goto Ashenvale 60.2,72.91 |tip {dropsfrom}Ashenvale Moonwell
step
  click Wanted Poster: Besseleth##177904
  accept Arachnophobia##6284 |goto Stonetalon Mountains 59.06,75.71
step
  note Kill Besseleth and bring Besseleth's Fang to Maggran at Sun Rock Retreat.
  kill Besseleth##11921 |goto Stonetalon Mountains 53,72.6 |elite
  collect Besseleth's Fang##16192 |q 6284 |goto Stonetalon Mountains 53,72.6
step
  talk Piznik##4276
  accept Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  note Get the mysterious ore from Piznik after he finishes mining it.
  kill Piznik##4276 |q 1090 |goto Stonetalon Mountains 71.87,60
step
  only Rogue
  talk Serge Hinott##2391
  turnin Hinott's Assistance##2479 |goto Hillsbrad Foothills 61.63,19.19 |tip {turninat}Hillsbrad Foothills
step
  turnin Wet Job##79974 |goto Loch Modan 49.42,12.78 |tip {turninat}Loch Modan
step
  talk Nara Wildmane##5770
  accept Leaders of the Fang##914 |goto Thunder Bluff 75.65,31.61
step
  note Bring the Gems of Cobrahn, Anacondra, Pythas and Serpentis to Nara Wildmane in Thunder Bluff.
  collect Gem of Cobrahn##9738 |q 914 |goto Wailing Caverns - Dungeon -1,-1 |elite |tip {dropsfrom}Lord Cobrahn, Cobrahn Snake Form
step
  talk Braug Dimspirit##4489
  accept Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  note Find the Legacy of the Aspects and return it to Braug Dimspirit near the entrance to Talondeep Path in Stonetalon Mountains.
  collect Legacy of the Aspects##5860 |q 1154 |goto Ashenvale 75.57,74.37 |tip {dropsfrom}The Legacy of the Aspects
step
  talk Dawnwatcher Shaedlass##4786
  accept In Search of Thaelrid##1198 |goto Darnassus 55.36,25.03
step
  only Mage
  talk Anastasia Hartwell##4568
  accept Speak with Deino##1943 |goto Undercity 85.14,10.03
step
  talk Witch Doctor Jin'Zil##3995
  accept Jin'Zil's Forest Magic##1058 |goto Stonetalon Mountains 74.54,97.94
step
  note Witch Doctor Jin'Zil at Malaka'jin wants 5 portions of Stonetalon Sap, 5 Twilight Whiskers, 30 Courser Eyes and a Fey Dragon Scale.
  collect Stonetalon Sap##5582 |q 1058 |goto Stonetalon Mountains 35.66,17.41 |tip {dropsfrom}Sap Beast
step
  only Warlock
  talk Ken'zigla##4197
  accept Ken'zigla's Draught##1511 |goto Stonetalon Mountains 73.25,95.13
step
  talk Xen'Zilla##12816
  accept Blood Feeders##6461 |goto Stonetalon Mountains 71.25,95.02
step
  talk Darn Talongrip##11821
  accept Report to Kadrak##6542 |goto Stonetalon Mountains 73.25,94.89
step
  talk Morbin Lightbane##266484
  accept Light's Justice##92421 |goto Undercity 57.89,89.34
step
  note Collect 25 Intact Limbs within The Ruins of Lordaeron for Morbin Lightbane in the Undercity.
  collect 25 Intact Limbs##268580 |q 92421 |goto Undercity 57.89,89.34 |tip {dropsfrom}Skeleton, Cadaver, Ragged Ghoul
step
  talk Maggran Earthbinder##11860
  turnin Harpies Threaten##6282 |goto Stonetalon Mountains 47.2,61.16
step
  talk Maggran Earthbinder##11860
  turnin Arachnophobia##6284 |goto Stonetalon Mountains 47.2,61.16
step
  talk Mor'rogal##11861
  turnin Boulderslide Ravine##6421 |goto Stonetalon Mountains 47.22,64.04
step
  talk Grish Longrunner##12576
  turnin Calling in the Reserves##5881 |goto Thousand Needles 31.86,21.66 |tip {turninat}Thousand Needles
step
  only Mage
  talk Deino##5885
  turnin Speak with Deino##1943 |goto Orgrimmar 38.45,86.13 |tip {turninat}Orgrimmar
step
  only Mage
  talk Deino##5885
  turnin Waters of Xavian##1944 |goto Orgrimmar 38.45,86.13 |tip {turninat}Orgrimmar
step
  talk Tammra Windfield##11864
  turnin Cycle of Rebirth##6301 |goto Stonetalon Mountains 47.46,58.38
step
  talk Je'neu Sancrea##12736
  turnin Trouble in the Deeps##6562 |goto Ashenvale 11.56,34.29 |tip {turninat}Ashenvale
step
  talk Argent Guard Thaelrid##4787
  turnin In Search of Thaelrid##1198 |goto Blackfathom Deeps - Dungeon -1,-1 |tip {turninat}Blackfathom Deeps - Dungeon
step
  talk Braelyn Firehand##4198
  turnin Cenarius' Legacy##1087 |goto Stonetalon Mountains 45.94,60.42
step
  only Warlock
  talk Grunt Logmar##5911
  turnin Ken'zigla's Draught##1511 |goto The Barrens 44.62,59.27 |tip {turninat}The Barrens
step
  turnin Scramble##79980 |goto Stonetalon Mountains 39.64,49.91
step
  talk Theodore Griffs##11835
  turnin The New Plague##95216 |goto Undercity 46.31,71.91 |tip {turninat}Undercity
step
  talk Keeper Bel'dugur##2934
  turnin The Book of Ur##1013 |goto Undercity 53.74,54.46 |tip {turninat}Undercity
step
  talk Tsunaman##11862
  turnin Elemental War##6393 |goto Stonetalon Mountains 47.36,64.25
step
  talk Braelyn Firehand##4198
  accept Ordanus##1088 |goto Stonetalon Mountains 45.94,60.42
step
  note Bring Ordanus' head to Braelyn Firehand near Sun Rock Retreat.
  collect Ordanus' Head##5686 |q 1088 |goto Ashenvale 62.05,51.37 |tip {dropsfrom}Keeper Ordanus
step
  only Mage
  talk Deino##5885
  accept Laughing Sisters##1945 |goto Orgrimmar 38.45,86.13
step
  only Mage
  note Bring 12 Laughing Sister's Hairs to Kil'hala at the Crossroads.
  collect 12 Laughing Sister's Hair##7270 |q 1945 |goto Ashenvale 59.86,55.06 |tip {dropsfrom}Laughing Sister
step
  talk Maggran Earthbinder##11860
  accept Bloodfury Bloodline##6283 |goto Stonetalon Mountains 47.2,61.16
step
  note Maggran at Sun Rock Retreat wishes you to slay Bloodfury Ripper and bring her remains as proof of your deed.
  kill Bloodfury Ripper##12579 |goto Stonetalon Mountains 30.75,61.91 |elite
  collect Bloodfury Ripper's Remains##16190 |q 6283 |goto Stonetalon Mountains 30.75,61.91
step
  talk Tammra Windfield##11864
  accept New Life##6381 |goto Stonetalon Mountains 47.46,58.38
step
  talk Mor'rogal##11861
  accept Earthen Arise##6481 |goto Stonetalon Mountains 47.22,64.04
step
  note Plant 10 Gaea Seeds in Gaea Dirt Mounds, and then return the remaining Enchanted Gaea Seeds to Tammra at Sun Rock Retreat.
  collect Gaea Dirt Mound##177929 |q 6381 |goto Stonetalon Mountains 33.61,68.54
step
  talk Zangen Stonehoof##4721
  turnin The Sacred Flame##1195 |goto Thunder Bluff 54.97,51.41 |tip {turninat}Thunder Bluff
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
  turnin Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  talk Piznik##4276
  accept Gerenzo's Orders##1092 |goto Stonetalon Mountains 71.87,60
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  talk Kadrak##8582
  turnin Report to Kadrak##6542 |goto The Barrens 48.12,5.42 |tip {turninat}The Barrens
step
  talk Nara Wildmane##5770
  turnin Leaders of the Fang##914 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Sputtervalve##3442
  turnin Further Instructions##1094 |goto The Barrens 62.98,37.22 |tip {turninat}The Barrens
step
  talk Braug Dimspirit##4489
  accept Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  talk Morbin Lightbane##266484
  turnin Light's Justice##92421 |goto Undercity 57.89,89.34 |tip {turninat}Undercity
step
  talk Witch Doctor Jin'Zil##3995
  turnin Jin'Zil's Forest Magic##1058 |goto Stonetalon Mountains 74.54,97.94
step
  talk Xen'Zilla##12816
  turnin Blood Feeders##6461 |goto Stonetalon Mountains 71.25,95.02
step
  note Open the Resonite cask with the Enchanted Resonite Crystal, and then slay Goggeroc. Return to Mor'rogal with the news and Enchanted Resonite Crystal.
  kill Goggeroc##11920 |q 6481 |goto Stonetalon Mountains 57.4,89.4 |elite
step
  talk Maggran Earthbinder##11860
  turnin Bloodfury Bloodline##6283 |goto Stonetalon Mountains 47.2,61.16
step
  only Mage
  talk Kil'hala##3484
  turnin Laughing Sisters##1945 |goto The Barrens 52.2,31.7 |tip {turninat}The Barrens
step
  talk Braelyn Firehand##4198
  turnin Ordanus##1088 |goto Stonetalon Mountains 45.94,60.42
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
  collect Sleepers' Key##5689 |q 1089 |goto Stonetalon Mountains 25.55,11.36 |tip {dropsfrom}Sleepers' Cache
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
