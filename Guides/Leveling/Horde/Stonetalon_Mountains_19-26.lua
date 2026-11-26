-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stonetalon Mountains (19-26)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Ashenvale (22-27)",
	rev = "924d1894",
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
  note Plant 10 Gaea Seeds in Gaea Dirt Mounds, and then return the remaining Enchanted Gaea Seeds to Tammra at Sun Rock Retreat.
  click Gaea Dirt Mound##177929 |q 6381 |goto Stonetalon Mountains 33.61,68.96
step
  only haveq(1087)
  note Kill 4 Sons of Cenarius, 4 Daughters of Cenarius and 4 Cenarion Botanists for Braelyn Firehand near Sun Rock Retreat.
  kill Cenarion Botanist##4051 |q 1087/3 |goto Stonetalon Mountains 35.96,14.57
  kill Daughter of Cenarius##4053 |q 1087/2 |goto Stonetalon Mountains 36.45,13.09
  kill Son of Cenarius##4057 |q 1087 |goto Stonetalon Mountains 35.82,12.59
step
  only haveq(1087)
  talk Braelyn Firehand##4198
  turnin Cenarius' Legacy##1087 |goto Stonetalon Mountains 45.94,60.42
step
  talk Tammra Windfield##11864
  turnin New Life##6381 |goto Stonetalon Mountains 47.46,58.38
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
  note Maggran Earthbinder in Sun Rock Retreat wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
  kill Bloodfury Harpy##4022 |q 6282/1 |goto Stonetalon Mountains 32.57,60.66
  kill Bloodfury Ambusher##4025 |q 6282/2 |goto Stonetalon Mountains 30.8,61.32
  kill Bloodfury Slayer##4024 |q 6282/3 |goto Stonetalon Mountains 30.24,69.58
  kill Bloodfury Roguefeather##4023 |q 6282 |goto Stonetalon Mountains 34.86,69.12
step
  note Bring 15 Glittering Sunstones to Mor'rogal.
  collect 15 Glittering Sunstone##277936 |q 86576 |goto Stonetalon Mountains 32.57,60.66 |tip {dropsfrom}Bloodfury Harpy, Bloodfury Roguefeather, Bloodfury Slayer
step
  talk Maggran Earthbinder##11860
  turnin Harpies Threaten##6282 |goto Stonetalon Mountains 47.2,61.16
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
  only completed(882) not completed(235) not completed(742) not haveq(235) not haveq(742)
  talk Jorn Skyseer##3387
  accept The Ashenvale Hunt##6382 |goto The Barrens 44.86,59.14
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Zankaja##5910
  accept News of Dogran##1509 |goto Orgrimmar 37.04,59.45
step
  only Rogue
  talk Shenthul##3401
  accept The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  note Perform the Shattered Salute on Shenthul.
  talk Shenthul##3401 |q 2460 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Shenthul##3401
  turnin The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Shenthul##3401
  accept Deep Cover##2458 |goto Orgrimmar 43.05,53.74
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  talk Cazul##5909
  accept Love Hurts##65601 |goto Orgrimmar 47.06,46.43
step
  only Shaman not completed(1529) not completed(2985) not completed(2986) not haveq(1529) not haveq(2985) not haveq(2986)
  talk Searn Firewarder##5892
  accept Call of Water##1528 |goto Orgrimmar 37.96,37.73
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  note Speak with Magar in Orgrimmar.
  talk Magar##3363
  turnin Love Hurts##65601 |goto Orgrimmar 63.65,49.93 |tip {turninat}Orgrimmar
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  note Speak with Gazrog at the Crossroads.
  talk Gazrog##3464
  turnin News of Dogran##1509 |goto The Barrens 51.93,30.32 |tip {turninat}The Barrens
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Gazrog##3464
  accept News of Dogran##1510 |goto The Barrens 51.93,30.32
step
  only Shaman not completed(1529) not completed(2985) not completed(2986) not haveq(1529) not haveq(2985) not haveq(2986)
  note Find Islen Waterseer in the Barrens.
  talk Islen Waterseer##5901
  turnin Call of Water##1528 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  only Rogue
  note Travel to the Venture Co. Tower, north of the Sludge Fen and contact the Shattered Hand's covert operative, Taskmaster Fizzule.
  talk Taskmaster Fizzule##7233
  turnin Deep Cover##2458 |goto The Barrens 55.44,5.56 |tip {turninat}The Barrens
step
  only Warrior
  talk Torm Ragetotem##3041
  accept Speak with Ruga##1823 |goto Thunder Bluff 57.24,87.37
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  accept Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98
step
  talk Tah Winterhoof##3024
  accept Pigments for Paints##97538 |goto Thunder Bluff 54.14,47.05
step
  only not Orc not Undead not Troll Druid not completed(98393) not haveq(98393)
  talk Turak Runetotem##3033
  accept The Great Cat Spirit##98340 |goto Thunder Bluff 76.48,27.22
step
  only Troll Priest not completed(5643) not completed(5680) not haveq(5643) not haveq(5680)
  talk Miles Welsh##3044
  accept Shadowguard##5642 |goto Thunder Bluff 25.32,15.27
step
  only Warrior
  note Speak with Ruga Ragetotem.
  talk Ruga Ragetotem##6394
  turnin Speak with Ruga##1823 |goto The Barrens 44.67,59.42 |tip {turninat}The Barrens
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Warrior
  note Bring 5 twitching antennae to Ruga Ragetotem at Camp Taurajo
  collect 5 Twitching Antenna##7119 |q 1824 |goto The Barrens 45.23,70.16 |tip {dropsfrom}Silithid Creeper, Silithid Grub, Silithid Protector
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42 |tip {turninat}The Barrens
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Speak with Thun'grim##1825 |goto The Barrens 44.67,59.42
step
  only Warrior
  note Speak with Thun'grim Firegaze in the Barrens.
  talk Thun'grim Firegaze##5878
  turnin Speak with Thun'grim##1825 |goto The Barrens 57.23,30.34 |tip {turninat}The Barrens
step
  only Troll Priest not completed(5643) not completed(5680) not haveq(5643) not haveq(5680)
  note Speak to Ur'kyo in Orgrimmar.
  talk Ur'kyo##6018
  turnin Shadowguard##5642 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only not Orc not Undead not Troll Druid not completed(98393) not haveq(98393)
  note Speak with Dendrite Starblaze in the village of Nighthaven, Moonglade.
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98340 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  note Tell Tammra Windfield in Sun Rock Retreat the good news.
  talk Tammra Windfield##11864
  turnin Kaya's Alive##6401 |goto Stonetalon Mountains 47.46,58.38
step
  note Tah Winterhoof in Thunder Bluff wants 30 Mirkweed Pods from Mirkfallon Lake.
  collect 30 Mirkweed Pods##278201 |q 97538 |goto Stonetalon Mountains 49.57,39.78 |tip {dropsfrom}Mirkweed, Dried Mirkweed Pile
step
  only Warrior completed(1848)
  note Bring a Galvanized Horn to Orm Stonehoof in Thunder Bluff.
  collect Galvanized Horn##6840 |q 1844 |goto Stonetalon Mountains 33.64,74.66 |tip {dropsfrom}Chimaera Matriarch
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  note Speak with Ken'zigla at the Malaka'jin.
  talk Ken'zigla##4197
  turnin News of Dogran##1510 |goto Stonetalon Mountains 73.25,95.13
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Ken'zigla##4197
  accept Ken'zigla's Draught##1511 |goto Stonetalon Mountains 73.25,95.13
step
  talk Tah Winterhoof##3024
  turnin Pigments for Paints##97538 |goto Thunder Bluff 54.14,47.05 |tip {turninat}Thunder Bluff
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  turnin Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  accept Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98
step
  only Warrior completed(1848)
  talk Orm Stonehoof##6410
  turnin Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  only haveq(1088)
  note Bring Ordanus' head to Braelyn Firehand near Sun Rock Retreat.
  collect Ordanus' Head##5686 |q 1088 |goto Ashenvale 62.05,51.37 |tip {dropsfrom}Keeper Ordanus
step
  only haveq(1088)
  talk Braelyn Firehand##4198
  turnin Ordanus##1088 |goto Stonetalon Mountains 45.94,60.42
step
  only completed(1088)
  talk Braelyn Firehand##4198
  accept The Den##1089 |goto Stonetalon Mountains 45.94,60.42
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
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  note Bring Ken'zigla's Draught to Grunt Logmar at Camp Taurajo.
  talk Grunt Logmar##5911
  turnin Ken'zigla's Draught##1511 |goto The Barrens 44.62,59.27 |tip {turninat}The Barrens
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Grunt Logmar##5911
  accept Dogran's Captivity##1515 |goto The Barrens 44.62,59.27
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  note Bring Ken'zigla's Draught to Dogran in the Barrens.
  talk Grunt Dogran##5908
  turnin Dogran's Captivity##1515 |goto The Barrens 43.3,47.89 |tip {turninat}The Barrens
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Grunt Dogran##5908
  accept Love's Gift##1512 |goto The Barrens 43.3,47.89
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  note Bring the Dirt-caked Pendant to Gan'rul Bloodeye in Orgrimmar.
  talk Gan'rul Bloodeye##5875
  turnin Love's Gift##1512 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Gan'rul Bloodeye##5875
  accept The Binding##1513 |goto Orgrimmar 48.25,45.28
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  note Using Dogran's Pendant, summon and subdue a succubus, then return Dogran's Pendant to Gan'rul Bloodeye in Orgrimmar.
  use Summoned Succubus##5677 |q 1513 |tip {useit}
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Gan'rul Bloodeye##5875
  turnin The Binding##1513 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  only completed(882) not completed(235) not completed(742) not haveq(235) not haveq(742)
  note Speak with Senani Thunderheart at Splintertree Post, Ashenvale.
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##6382 |goto Ashenvale 73.78,61.46 |tip {turninat}Ashenvale
step
  note Speak to Je'neu Sancrea in Ashenvale.
  talk Je'neu Sancrea##12736
  turnin Trouble in the Deeps##6562 |goto Ashenvale 11.56,34.29 |tip {turninat}Ashenvale
step
  note {travel}Ashenvale
  goto Ashenvale 11.69,34.91
]])
