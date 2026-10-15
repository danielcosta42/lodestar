-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stonetalon Mountains (19-26)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Barrens (23-27)",
	rev = "0e314c1b",
}, [[
step
  ding 18
step
  note {fp}Tharm
  goto Stonetalon Mountains 45.12,59.84 |tip {vendor}
step
  talk Mor'rogal##11861
  accept Boulderslide Ravine##6421 |goto Stonetalon Mountains 47.22,64.04
step
  note Explore deep into the cave at Boulderslide Ravine and bring back 10 Resonite Crystals for Mor'rogal at Sun Rock Retreat to investigate.
  collect 10 Resonite Crystal##16581 |q 6421 |goto Stonetalon Mountains 59.61,90.93
step
  talk Xen'Zilla##12816
  accept Blood Feeders##6461 |goto Stonetalon Mountains 71.25,95.02
step
  talk Darn Talongrip##11821
  accept Report to Kadrak##6542 |goto Stonetalon Mountains 73.25,94.89
step
  talk Kaya Flathoof##11856
  accept Protect Kaya##6523 |goto Stonetalon Mountains 73.48,85.59
step
  note Escort Kaya Flathoof to Camp Aparaje, and then return to Makaba Flathoof near the southeastern edge of Stonetalon.
  goto Stonetalon Mountains 77.1,90.85 |tip Kaya Escorted to Camp Aparaje
step
  note Xen'zilla at Malaka'Jin needs you to kill 10 Deepmoss Creepers and 7 Deepmoss Venomspitters.
  kill Deepmoss Creeper##4005 |q 6461/1 |goto Stonetalon Mountains 58.94,75.66
  kill Deepmoss Venomspitter##4007 |q 6461 |goto Stonetalon Mountains 53.97,61.45
step
  talk Mor'rogal##11861
  turnin Boulderslide Ravine##6421 |goto Stonetalon Mountains 47.22,64.04
step
  only level>=20
  talk Mor'rogal##11861
  accept Earthen Arise##6481 |goto Stonetalon Mountains 47.22,64.04
step
  only haveq(6481)
  note Open the Resonite cask with the Enchanted Resonite Crystal, and then slay Goggeroc. Return to Mor'rogal with the news and Enchanted Resonite Crystal.
  kill Goggeroc##11920 |q 6481 |goto Stonetalon Mountains 57.4,89.4 |elite
step
  talk Xen'Zilla##12816
  turnin Blood Feeders##6461 |goto Stonetalon Mountains 71.25,95.02
step
  only level>=21
  click Wanted Poster: Besseleth##177904
  accept Arachnophobia##6284 |goto Stonetalon Mountains 59.06,75.71
step
  only haveq(6284)
  note Kill Besseleth and bring Besseleth's Fang to Maggran at Sun Rock Retreat.
  kill Besseleth##11921 |q 6284 |goto Stonetalon Mountains 52.8,72.6 |elite
  collect Besseleth's Fang##16192 |q 6284 |goto Stonetalon Mountains 52.8,72.6
step
  only haveq(6284)
  talk Maggran Earthbinder##11860
  turnin Arachnophobia##6284 |goto Stonetalon Mountains 47.2,61.16
step
  only haveq(6481)
  talk Mor'rogal##11861
  turnin Earthen Arise##6481 |goto Stonetalon Mountains 47.22,64.04
step
  talk Tsunaman##11862
  accept Trouble in the Deeps##6562 |goto Stonetalon Mountains 47.36,64.25
step
  talk Ziz Fizziks##4201
  accept Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  talk Piznik##4276
  accept Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  note Get the mysterious ore from Piznik after he finishes mining it.
  talk Piznik##4276 |q 1090 |goto Stonetalon Mountains 71.87,60
step
  talk Piznik##4276
  turnin Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  talk Piznik##4276
  accept Gerenzo's Orders##1092 |goto Stonetalon Mountains 71.87,60
step
  note Get the Super Reaper 6000 Blueprints for Ziz Fizziks in the Stonetalon Mountains.
  collect Super Reaper 6000 Blueprints##5734 |q 1093 |goto Stonetalon Mountains 71.8,50.03 |tip {dropsfrom}Venture Co. Operator
step
  note Deliver the Unidentified Ore to Ziz Fizziks in the Stonetalon Mountains.
  talk Ziz Fizziks##4201
  turnin Gerenzo's Orders##1092 |goto Stonetalon Mountains 58.99,62.6
step
  talk Ziz Fizziks##4201
  turnin Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  talk Ziz Fizziks##4201
  accept Further Instructions##1094 |goto Stonetalon Mountains 58.99,62.6
step
  talk Tammra Windfield##11864
  accept Cycle of Rebirth##6301 |goto Stonetalon Mountains 47.46,58.38
step
  note Tammra Windfield at Sun Rock Retreat wants you to gather 10 Gaea Seeds.
  collect 10 Gaea Seed##16205 |q 6301 |goto Stonetalon Mountains 48.05,39.76
step
  talk Tammra Windfield##11864
  turnin Cycle of Rebirth##6301 |goto Stonetalon Mountains 47.46,58.38
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) level>=20
  talk Ken'zigla##4197
  accept Ken'zigla's Draught##1511 |goto Stonetalon Mountains 73.25,95.13
step
  click Pocket Litter##424005
  accept Scramble##79980 |goto Stonetalon Mountains 40.76,52.57
step
  note Find what awaits you.
  turnin Scramble##79980 |goto Stonetalon Mountains 39.62,49.86
step
  only level>=20
  talk Braelyn Firehand##4198
  accept Cenarius' Legacy##1087 |goto Stonetalon Mountains 45.94,60.42
step
  talk Tammra Windfield##11864
  accept New Life##6381 |goto Stonetalon Mountains 47.46,58.38
step
  only level>=19
  talk Tsunaman##11862
  accept Elemental War##6393 |goto Stonetalon Mountains 47.36,64.25
step
  only haveq(6393)
  note Bring 10 Incendrites to Tsunaman at Sun Rock Retreat.
  collect 10 Incendrites##16312 |q 6393 |goto Stonetalon Mountains 36.55,51.37 |tip {dropsfrom}Rogue Flame Spirit, Burning Ravager, Burning Destroyer
step
  only haveq(6393)
  talk Tsunaman##11862
  turnin Elemental War##6393 |goto Stonetalon Mountains 47.36,64.25
step
  talk Maggran Earthbinder##11860
  accept Harpies Threaten##6282 |goto Stonetalon Mountains 47.2,61.16
step
  talk Maggran Earthbinder##11860
  accept Bloodfury Trinkets##86576 |goto Stonetalon Mountains 47.2,61.16
step
  note Maggran Earthbinder in Sun Rock Retreat wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
  kill Bloodfury Harpy##4022 |q 6282/1 |goto Stonetalon Mountains 32.57,60.66
  kill Bloodfury Ambusher##4025 |q 6282/2 |goto Stonetalon Mountains 30.8,61.32
  kill Bloodfury Slayer##4024 |q 6282/3 |goto Stonetalon Mountains 30.24,69.58
  kill Bloodfury Roguefeather##4023 |q 6282 |goto Stonetalon Mountains 34.86,69.12
step
  note Bring 15 Glittering Sunstones to Mor'rogal.
  collect 15 Glittering Sunstone##277936 |q 86576 |goto Stonetalon Mountains 32.57,60.66 |tip {dropsfrom}Bloodfury Harpy, Bloodfury Roguefeather, Bloodfury Slayer
step
  note Plant 10 Gaea Seeds in Gaea Dirt Mounds, and then return the remaining Enchanted Gaea Seeds to Tammra at Sun Rock Retreat.
  click Gaea Dirt Mound##177929 |q 6381 |goto Stonetalon Mountains 33.61,68.96
step
  only level>=20
  talk Witch Doctor Jin'Zil##3995
  accept Jin'Zil's Forest Magic##1058 |goto Stonetalon Mountains 74.54,97.94
step
  only haveq(1058)
  note Witch Doctor Jin'Zil at Malaka'jin wants 5 portions of Stonetalon Sap, 5 Twilight Whiskers, 30 Courser Eyes and a Fey Dragon Scale.
  collect 30 Courser Eye##5585 |q 1058/3 |goto Stonetalon Mountains 45,21.32 |tip {dropsfrom}Antlered Courser, Great Courser
  collect Fey Dragon Scale##5583 |q 1058/4 |goto Stonetalon Mountains 37.41,20.93 |tip {dropsfrom}Fey Dragon, Wily Fey Dragon, Nal'taszar
  collect Stonetalon Sap##5582 |q 1058/1 |goto Stonetalon Mountains 34.78,17.41 |tip {dropsfrom}Sap Beast
  collect 5 Twilight Whisker##5584 |q 1058 |goto Stonetalon Mountains 33.28,9.93 |tip {dropsfrom}Twilight Runner
step
  only haveq(1087)
  note Kill 4 Sons of Cenarius, 4 Daughters of Cenarius and 4 Cenarion Botanists for Braelyn Firehand near Sun Rock Retreat.
  kill Son of Cenarius##4057 |q 1087/1 |goto Stonetalon Mountains 35.82,12.59
  kill Daughter of Cenarius##4053 |q 1087/2 |goto Stonetalon Mountains 36.45,13.09
  kill Cenarion Botanist##4051 |q 1087 |goto Stonetalon Mountains 35.96,14.57
step
  only haveq(1087)
  talk Braelyn Firehand##4198
  turnin Cenarius' Legacy##1087 |goto Stonetalon Mountains 45.94,60.42
step
  talk Maggran Earthbinder##11860
  turnin Harpies Threaten##6282 |goto Stonetalon Mountains 47.2,61.16
step
  talk Tammra Windfield##11864
  turnin New Life##6381 |goto Stonetalon Mountains 47.46,58.38
step
  talk Mor'rogal##11861
  turnin Bloodfury Trinkets##86576 |goto Stonetalon Mountains 47.22,64.04
step
  only level>=26
  talk Maggran Earthbinder##11860
  accept Bloodfury Bloodline##6283 |goto Stonetalon Mountains 47.2,61.16
step
  only haveq(6283)
  note Maggran at Sun Rock Retreat wishes you to slay Bloodfury Ripper and bring her remains as proof of your deed.
  kill Bloodfury Ripper##12579 |q 6283 |goto Stonetalon Mountains 30.75,61.91 |elite
  collect Bloodfury Ripper's Remains##16190 |q 6283 |goto Stonetalon Mountains 30.75,61.91
step
  only haveq(6283)
  talk Maggran Earthbinder##11860
  turnin Bloodfury Bloodline##6283 |goto Stonetalon Mountains 47.2,61.16
step
  only haveq(1058)
  talk Witch Doctor Jin'Zil##3995
  turnin Jin'Zil's Forest Magic##1058 |goto Stonetalon Mountains 74.54,97.94
step
  only level>=23
  talk Maggran Earthbinder##11860
  accept Calling in the Reserves##5881 |goto Stonetalon Mountains 47.2,61.16
step
  only completed(1087)
  talk Braelyn Firehand##4198
  accept Ordanus##1088 |goto Stonetalon Mountains 45.94,60.42
step
  talk Makaba Flathoof##11857
  turnin Protect Kaya##6523 |goto The Barrens 35.19,27.76 |tip {turninat}The Barrens
step
  talk Makaba Flathoof##11857
  accept Kaya's Alive##6401 |goto The Barrens 35.19,27.76
step
  note Report to Kadrak at the watch tower in northern Barrens.
  talk Kadrak##8582
  turnin Report to Kadrak##6542 |goto The Barrens 48.12,5.42 |tip {turninat}The Barrens
step
  note Deliver the Sealed Envelope to Sputtervalve in the Barrens.
  talk Sputtervalve##3442
  turnin Further Instructions##1094 |goto The Barrens 62.98,37.22 |tip {turninat}The Barrens
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) haveq(1511)
  note Bring Ken'zigla's Draught to Grunt Logmar at Camp Taurajo.
  talk Grunt Logmar##5911
  turnin Ken'zigla's Draught##1511 |goto The Barrens 44.62,59.27 |tip {turninat}The Barrens
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) completed(1511)
  talk Grunt Logmar##5911
  accept Dogran's Captivity##1515 |goto The Barrens 44.62,59.27
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) haveq(1515)
  note Bring Ken'zigla's Draught to Dogran in the Barrens.
  talk Grunt Dogran##5908
  turnin Dogran's Captivity##1515 |goto The Barrens 43.3,47.89 |tip {turninat}The Barrens
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) completed(1515)
  talk Grunt Dogran##5908
  accept Love's Gift##1512 |goto The Barrens 43.3,47.89
step
  note Speak to Je'neu Sancrea in Ashenvale.
  talk Je'neu Sancrea##12736
  turnin Trouble in the Deeps##6562 |goto Ashenvale 11.56,34.29 |tip {turninat}Ashenvale
step
  only level>=22
  kill Blackfathom Tide Priestess##4802 |goto Ashenvale 13.55,12.06 |elite |tip Loot the quest item here — it starts the quest.
  accept Allegiance to the Old Gods##6564 |goto Ashenvale 13.55,12.06
step
  only haveq(6564)
  note Bring the Damp Note to Je'neu Sancrea in Ashenvale.
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6564 |goto Ashenvale 11.56,34.29 |tip {turninat}Ashenvale
step
  only haveq(1088)
  note Bring Ordanus' head to Braelyn Firehand near Sun Rock Retreat.
  collect Ordanus' Head##5686 |q 1088 |goto Ashenvale 62.05,51.37 |tip {dropsfrom}Keeper Ordanus
step
  talk Tah Winterhoof##3024
  accept Pigments for Paints##97538 |goto Thunder Bluff 54.14,47.05
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  accept Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98
step
  note Tell Tammra Windfield in Sun Rock Retreat the good news.
  talk Tammra Windfield##11864
  turnin Kaya's Alive##6401 |goto Stonetalon Mountains 47.46,58.38
step
  only haveq(1088)
  talk Braelyn Firehand##4198
  turnin Ordanus##1088 |goto Stonetalon Mountains 45.94,60.42
step
  only completed(1088)
  talk Braelyn Firehand##4198
  accept The Den##1089 |goto Stonetalon Mountains 45.94,60.42
step
  only Warrior completed(1848)
  note Bring a Galvanized Horn to Orm Stonehoof in Thunder Bluff.
  collect Galvanized Horn##6840 |q 1844 |goto Stonetalon Mountains 33.64,74.66 |tip {dropsfrom}Chimaera Matriarch
step
  note Tah Winterhoof in Thunder Bluff wants 30 Mirkweed Pods from Mirkfallon Lake.
  collect 30 Mirkweed Pods##278201 |q 97538 |goto Stonetalon Mountains 47.5,41 |tip {dropsfrom}Mirkweed, Dried Mirkweed Pile
step
  only haveq(1089)
  note Travel to the Den on Stonetalon Peak. Using the Gatekeeper's Key, obtain the druids' hidden items. Use these items to open the Talon Den Hoard.
  collect Claw Key##5690 |q 1089/2 |goto Stonetalon Mountains 29.55,15.84 |tip {dropsfrom}Druids' Cache
  collect Barrow Key##5691 |q 1089/3 |goto Stonetalon Mountains 27.96,13.81 |tip {dropsfrom}Barrow Cache
  collect Sleepers' Key##5689 |q 1089 |goto Stonetalon Mountains 25.55,11.36 |tip {dropsfrom}Sleepers' Cache
step
  only haveq(1089)
  turnin The Den##1089 |goto Stonetalon Mountains 26.6,10.87
step
  talk Tah Winterhoof##3024
  turnin Pigments for Paints##97538 |goto Thunder Bluff 54.14,47.05 |tip {turninat}Thunder Bluff
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  turnin Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) haveq(1512)
  note Bring the Dirt-caked Pendant to Gan'rul Bloodeye in Orgrimmar.
  talk Gan'rul Bloodeye##5875
  turnin Love's Gift##1512 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) completed(1512)
  talk Gan'rul Bloodeye##5875
  accept The Binding##1513 |goto Orgrimmar 48.25,45.28
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) haveq(1513)
  note Using Dogran's Pendant, summon and subdue a succubus, then return Dogran's Pendant to Gan'rul Bloodeye in Orgrimmar.
  use Summoned Succubus##5677 |q 1513 |tip {useit}
step
  only Warlock completed(1510) not completed(1472) not haveq(1472) haveq(1513)
  talk Gan'rul Bloodeye##5875
  turnin The Binding##1513 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  note {travel}The Barrens
  goto The Barrens 51.07,29.63
]])
