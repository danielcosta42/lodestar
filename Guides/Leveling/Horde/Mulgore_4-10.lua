-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Mulgore (4-10)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tirisfal Glades (4-12)",
}, [[
step
  note {fp}Seikwa
  goto Mulgore 46.04,63.55 |tip {vendor}
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  collect Plainstrider Meat##4739 |q 747 |goto Mulgore 47.52,81.49 |tip {dropsfrom}Plainstrider
step
  talk Chief Hawkwind##2981
  accept A Humble Task##752 |goto Mulgore 43.89,76.66
step
  talk Greatmother Hawkwind##2991
  accept A Humble Task##753 |goto Mulgore 48.77,80.92
step
  note Take a Water Pitcher from the water well.
  collect Water Pitcher##4755 |q 753 |goto Mulgore 49.04,81.17
step
  collect Dirt-stained Map##3076 |goto Mulgore 59.8,82.2 |tip Loot the quest item here — it starts the quest.
  accept Attack on Camp Narache##781 |goto Mulgore 59.8,82.2
step
  only Shaman
  talk Seer Ravenfeather##5888
  accept Call of Earth##1519 |goto Mulgore 44.35,76.77
step
  only Shaman
  note Bring 2 applications of Ritual Salve to Seer Ravenfeather in Camp Narache.
  collect 2 Ritual Salve##6634 |q 1519 |goto Mulgore 60.14,78.12 |tip {dropsfrom}Bristleback Shaman
step
  talk Brave Windfeather##3209
  accept Break Sharptusk!##3376 |goto Mulgore 44.18,77.03
step
  note Bring the head of Chief Sharptusk Thornmantle to Brave Windfeather in Red Cloud Mesa.
  collect Chief Sharptusk Thornmantle's Head##10459 |q 3376 |goto Mulgore 61.02,78 |tip {dropsfrom}Chief Sharptusk Thornmantle
step
  talk Chief Hawkwind##2981
  accept The Adventurer##96659 |goto Mulgore 43.89,76.66
step
  talk Antur Fallow##6775
  accept A Task Unfinished##1656 |goto Mulgore 39.16,81.24
step
  only Tauren Hunter
  talk Kary Thunderhorn##3038
  accept The Hunter's Path##6065 |goto Thunder Bluff 58.49,88.33
step
  only Hunter
  talk Kary Thunderhorn##3038
  accept The Hunter's Path##6070 |goto Thunder Bluff 58.49,88.33
step
  talk Seer Graytongue##2982
  accept Grace of An'she and Mu'sha##95805 |goto Mulgore 42.54,90.13
step
  talk Boarton Shadetotem##205729
  accept Stalk With The Earthmother##76156 |goto Thunder Bluff 39.58,65.85
step
  talk Eylah Sunhorn##269068
  accept Traditions of the Bluff##97485 |goto Thunder Bluff 38.14,56.25
step
  talk Perith Stormhoof##272203
  accept The Longwalkers##98430 |goto Mulgore 33.1,65.93
step
  talk Kaga Wildhoof##265810
  turnin The Adventurer##96659 |goto Mulgore 46.19,67.21
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin The Hunter's Path##6065 |goto Mulgore 46.93,59.65
step
  talk Innkeeper Kauth##6747
  turnin A Task Unfinished##1656 |goto Mulgore 45.93,64.16
step
  talk Ruul Eagletalon##2985
  accept Dangers of the Windfury##743 |goto Mulgore 46.54,64.94
step
  note Bring 8 Windfury Talons to Ruul Eagletalon in Bloodhoof Village.
  collect 8 Windfury Talon##4751 |q 743 |goto Mulgore 59.55,71.2 |tip {dropsfrom}Windfury Harpy, Windfury Wind Witch
step
  talk Baine Bloodhoof##2993
  accept Sharing the Land##745 |goto Mulgore 46.67,63.38
step
  talk Baine Bloodhoof##2993
  accept Dwarven Digging##746 |goto Mulgore 46.67,63.38
step
  note Collect 5 Prospector's Picks.
  collect 5 Broken Tools##4703 |q 746 |goto Mulgore 33.1,54.8 |tip {dropsfrom}Forge
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Poison Water##748 |goto Mulgore 47.52,63.58
step
  only Tauren
  note Bring 6 Prairie Wolf Paws and 4 Plainstrider Talons to Mull Thunderhorn in Bloodhoof.
  collect 6 Prairie Wolf Paw##4758 |q 748 |goto Mulgore 39.99,68.37 |tip {dropsfrom}Prairie Wolf, Prairie Stalker, Prairie Wolf Alpha
step
  talk Harken Windtotem##2947
  accept Swoop Hunting##761 |goto Mulgore 47.67,62.68
step
  note Bring 8 Trophy Swoop Quills to Harken Windtotem in Bloodhoof Village.
  collect 8 Trophy Swoop Quill##4769 |q 761 |goto Mulgore 39.98,68.49 |tip {dropsfrom}Wiry Swoop, Swoop, Taloned Swoop
step
  talk Maur Raincaller##3055
  accept Mazzranache##766 |goto Mulgore 46.23,60.8
step
  note Bring a Prairie Wolf Heart, Flatland Cougar Femur, Plainstrider Scale and Swoop Gizzard to Maur Raincaller at Bloodhoof Village.
  collect Prairie Wolf Heart##4804 |q 766 |goto Mulgore 39.99,68.37 |tip {dropsfrom}Prairie Wolf, Prairie Stalker, Prairie Wolf Alpha
step
  talk Baine Bloodhoof##2993
  accept Rite of Vision##767 |goto Mulgore 46.67,63.38
step
  talk Skorn Whitecloud##3052
  accept The Hunter's Way##861 |goto Mulgore 46.03,63.44
step
  note Bring 4 Flatland Prowler Claws to Melor Stonehoof in Thunder Bluff.
  collect 4 Flatland Prowler Claw##5203 |q 861 |goto Mulgore 49.28,28.53 |tip {dropsfrom}Flatland Prowler
step
  only Shaman
  talk Narm Skychaser##3066
  accept Call of Fire##2984 |goto Mulgore 47.4,62.54
step
  only Troll Priest
  talk Var'jun##11407
  accept Hex of Weakness##5655 |goto Mulgore 46.2,62.27
step
  only Undead Priest
  talk Var'jun##11407
  accept Touch of Weakness##5661 |goto Mulgore 46.2,62.27
step
  only Tauren Druid
  talk Innkeeper Pala##6746
  accept Heeding the Call##5926 |goto Thunder Bluff 45.81,64.71
step
  only Tauren Druid
  talk Gennia Runetotem##3064
  accept Heeding the Call##5928 |goto Mulgore 47.48,62.95
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6061 |goto Mulgore 46.93,59.65
step
  only Tauren
  talk Ahanu##8359
  accept Tal the Wind Rider Master##6363 |goto Thunder Bluff 45.77,55.84
step
  talk Yaw Sharpmane##3065
  accept Chakuyak##96130 |goto Mulgore 46.93,59.65
step
  note Defeat Chakuyak and bring back her pelt.
  collect Chakuyak's Pelt##270302 |q 96130 |goto Mulgore 39.26,66.17 |tip {dropsfrom}Chakuyak
step
  talk Kaga Wildhoof##265810
  accept The Great Outdoors##96605 |goto Mulgore 46.19,67.21
step
  talk Mull Thunderhorn##2948
  accept Thunderhorn's Report##98435 |goto Mulgore 47.52,63.58
step
  talk Brave Wildrunner##3222
  accept Longwalker Malah##99079 |goto Mulgore 46.68,63.83
step
  talk Baine Bloodhoof##2993
  accept Drive Them Out##99080 |goto Mulgore 46.67,63.38
step
  talk Baine Bloodhoof##2993
  accept The High Chieftain##99082 |goto Mulgore 46.67,63.38
step
  talk Brave Wildrunner##3222
  accept Our Ancient Enemy##99101 |goto Mulgore 46.68,63.83
step
  talk Krang Stonehoof##3063
  accept Sparring Match##99108 |goto Mulgore 48.35,63.74
step
  talk Ahab Wheathoof##277182
  accept Kyle's Gone Missing!##99411 |goto Mulgore 47.28,57.63
step
  only Tauren Hunter
  note Use the Taming Rod to tame an Adult Plainstrider. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Adult Plainstrider##2956 |q 6061 |goto Mulgore 41.08,61.57 |tip {useit}
step
  note Ahab Wheathoof at Bloodhoof Village in Mulgore wants you to feed his prized puppy, Kyle the Frenzied.
  kill Kyle the Frenzied##277154 |q 99411 |goto Mulgore 46.82,63.84
step
  note Sit near Kaga's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  collect Basic Campfire##450006 |q 96605 |goto Mulgore 46.21,67.31
step
  talk Malah Longwind##275789
  turnin Longwalker Malah##99079 |goto Mulgore 57.65,63.27
step
  talk Cairne Bloodhoof##3057
  turnin The High Chieftain##99082 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  talk Cairne Bloodhoof##3057
  turnin The Longwalkers##98430 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  talk Morin Cloudstalker##2988
  accept The Ravaged Caravan##749 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  accept Ceasing Operations##98427 |goto Mulgore 54.76,64.27
step
  note Bring the Clearcutter Key to Morin Cloudstalker outside Bloodhoof Village.
  collect Clearcutter Key##281048 |q 98427 |goto Mulgore 56.79,43.2 |tip {dropsfrom}Venture Co. Clearclutter
step
  talk Malah Longwind##275789
  accept Grim Tidings##99081 |goto Mulgore 57.65,63.27
step
  note Kill 6 Galak Centaurs, 4 Galak Outrunners, and bring the head of Herak the Pillager to Baine Bloodhoof.
  kill Galak Centaur##2967 |q 99080 |goto Mulgore 64.05,61.68
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5661 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Shaman
  talk Xanis Flameweaver##5906
  accept Call of Fire##1523 |goto Thunder Bluff 25.16,20.51
step
  only Mage
  talk Thurston Xane##3049
  accept Speak with Un'thuwa##1883 |goto Thunder Bluff 25.18,20.96
step
  only Troll Priest
  talk Miles Welsh##3044
  accept Hex of Weakness##5656 |goto Thunder Bluff 25.32,15.27
step
  only Undead Priest
  talk Miles Welsh##3044
  accept Touch of Weakness##5663 |goto Thunder Bluff 25.32,15.27
step
  only Skyborne Druid
  talk Muln Earthfury##259118
  accept Child of Nature##94911 |goto Mulgore 33.4,22.5
step
  only Skyborne
  talk Alaana Stormwalker##259119
  accept Welcome to Azeroth##95350 |goto Mulgore 33.4,22.5
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin Thunderhorn's Report##98435 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Heeding the Call##5926 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##2984 |goto The Barrens 56.03,19.89 |tip {turninat}The Barrens
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Heeding the Call##5928 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Hunter
  talk Thotar##3171
  turnin The Hunter's Path##6070 |goto Durotar 51.85,43.49 |tip {turninat}Durotar
step
  only Skyborne Druid
  talk Turak Runetotem##3033
  turnin Child of Nature##94911 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##1523 |goto The Barrens 56.03,19.89 |tip {turninat}The Barrens
step
  kill Ghost Howl##3056 |goto Mulgore 46.7,34.23 |tip Loot the quest item here — it starts the quest.
  accept The Demon Scarred Cloak##770 |goto Mulgore 46.7,34.23
step
  talk Lorekeeper Raintotem##3233
  accept A Sacred Burial##833 |goto Mulgore 56.98,34.55
step
  talk Arch Druid Hamuul Runetotem##5769
  accept The Barrens Oases##886 |goto Thunder Bluff 78.62,28.56
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Moonglade##5922 |goto Thunder Bluff 76.48,27.22
step
  only Skyborne Druid
  talk Turak Runetotem##3033
  accept Moonglade##94913 |goto Thunder Bluff 76.48,27.22
step
  kill Supervisor Fizsprocket##3051 |goto Mulgore 61.19,49.32 |tip Loot the quest item here — it starts the quest.
  accept Fizsprocket's Notes##98424 |goto Mulgore 61.19,49.32
step
  note Collect the rest of Supervisor Fizsprocket's pages inside The Venture Co. Mine and bring them to Morin Cloudstalker near Bloodhoof Village.
  collect Shredder Operation Instructions##281035 |q 98424 |goto Mulgore 61.19,49.32
step
  note Lorekeeper Raintotem wants you to kill 8 Bristleback Interlopers at Red Rocks.
  kill Bristleback Interloper##3232 |q 833 |goto Mulgore 58.21,30.92
step
  talk Chief Hawkwind##2981
  turnin Attack on Camp Narache##781 |goto Mulgore 43.89,76.66
step
  talk Brave Windfeather##3209
  turnin Break Sharptusk!##3376 |goto Mulgore 44.18,77.03
step
  talk Melor Stonehoof##3441
  turnin The Hunter's Way##861 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  only Shaman
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1519 |goto Mulgore 44.35,76.77
step
  talk Greatmother Hawkwind##2991
  turnin A Humble Task##752 |goto Mulgore 48.77,80.92
step
  talk Chief Hawkwind##2981
  turnin A Humble Task##753 |goto Mulgore 43.89,76.66
step
  talk Grull Hawkwind##2980
  accept The Hunt Continues##750 |goto Mulgore 44.47,77.5
step
  note Grull Hawkwind in Camp Narache wants you to bring him 10 Mountain Cougar Pelts.
  collect Mountain Cougar Pelt##4742 |q 750 |goto Mulgore 47.51,88.66 |tip {dropsfrom}Mountain Cougar
step
  talk Chief Hawkwind##2981
  accept Rites of the Earthmother##755 |goto Mulgore 43.89,76.66
step
  talk Melor Stonehoof##3441
  accept Sergra Darkthorn##860 |goto Thunder Bluff 61.54,80.92
step
  only Shaman
  talk Seer Ravenfeather##5888
  accept Call of Earth##1520 |goto Mulgore 44.35,76.77
step
  only Tauren Warrior
  talk Grull Hawkwind##2980
  accept Simple Note##3091 |goto Mulgore 44.47,77.5
step
  only Tauren Hunter
  talk Grull Hawkwind##2980
  accept Etched Note##3092 |goto Mulgore 44.47,77.5
step
  only Tauren Shaman
  talk Grull Hawkwind##2980
  accept Rune-Inscribed Note##3093 |goto Mulgore 44.47,77.5
step
  only Tauren Druid
  talk Grull Hawkwind##2980
  accept Verdant Note##3094 |goto Mulgore 44.47,77.5
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5655 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5656 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  turnin Grace of An'she and Mu'sha##95805 |goto Mulgore 56.57,88.69
step
  talk Seer Graytongue##2982
  turnin Rites of the Earthmother##755 |goto Mulgore 42.54,90.13
step
  talk Seer Graytongue##2982
  accept Rite of Strength##757 |goto Mulgore 42.54,90.13
step
  note Kill Bristlebacks in Brambleblade Ravine and bring 12 Bristleback Belts to Chief Hawkwind in Camp Narache.
  collect 12 Bristleback Belt##4770 |q 757 |goto Mulgore 58.36,79.15 |tip {dropsfrom}Bristleback Quilboar, Bristleback Shaman
step
  talk Eylah Sunhorn##269068
  turnin Traditions of the Bluff##97485 |goto Thunder Bluff 38.14,56.25 |tip {turninat}Thunder Bluff
step
  talk Boarton Shadetotem##205729
  turnin Stalk With The Earthmother##76156 |goto Thunder Bluff 39.58,65.85 |tip {turninat}Thunder Bluff
step
  note Kill 10 Palemane Tanners, 8 Palemane Skinners, and 5 Palemane Poachers, then return to Baine Bloodhoof in Bloodhoof Village.
  kill Palemane Tanner##2949 |q 745 |goto Mulgore 36.82,66.12
step
  talk Yaw Sharpmane##3065
  turnin Chakuyak##96130 |goto Mulgore 46.93,59.65
step
  talk Skorn Whitecloud##3052
  turnin The Demon Scarred Cloak##770 |goto Mulgore 46.03,63.44
step
  talk Baine Bloodhoof##2993
  turnin Drive Them Out##99080 |goto Mulgore 46.67,63.38
step
  talk Brave Wildrunner##3222
  turnin Grim Tidings##99081 |goto Mulgore 46.68,63.83
step
  talk Maur Raincaller##3055
  turnin Mazzranache##766 |goto Mulgore 46.23,60.8
step
  talk Baine Bloodhoof##2993
  turnin Our Ancient Enemy##99101 |goto Mulgore 46.67,63.38
step
  talk Krang Stonehoof##3063
  turnin Sparring Match##99108 |goto Mulgore 48.35,63.74
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6061 |goto Mulgore 46.93,59.65
step
  talk Ahab Wheathoof##277182
  turnin Kyle's Gone Missing!##99411 |goto Mulgore 47.28,57.63
step
  only Tauren
  talk Tal##2995
  turnin Tal the Wind Rider Master##6363 |goto Thunder Bluff 47,49.83 |tip {turninat}Thunder Bluff
step
  talk Kaga Wildhoof##265810
  turnin The Great Outdoors##96605 |goto Mulgore 46.19,67.21
step
  talk Ruul Eagletalon##2985
  turnin Dangers of the Windfury##743 |goto Mulgore 46.54,64.94
step
  talk Baine Bloodhoof##2993
  turnin Sharing the Land##745 |goto Mulgore 46.67,63.38
step
  talk Baine Bloodhoof##2993
  turnin Dwarven Digging##746 |goto Mulgore 46.67,63.38
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Poison Water##748 |goto Mulgore 47.52,63.58
step
  turnin The Ravaged Caravan##749 |goto Mulgore 51.87,53.37
step
  talk Harken Windtotem##2947
  turnin Swoop Hunting##761 |goto Mulgore 47.67,62.68
step
  talk Zarlman Two-Moons##3054
  turnin Rite of Vision##767 |goto Mulgore 46.88,61.19
step
  click Sealed Supply Crate##2908
  accept The Ravaged Caravan##751 |goto Mulgore 51.87,53.37
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Winterhoof Cleansing##754 |goto Mulgore 47.52,63.58
step
  talk Zarlman Two-Moons##3054
  accept Rite of Vision##771 |goto Mulgore 46.88,61.19
step
  note Collect 2 Well Stones and 2 Ambercorn and bring them back to Zarlman Two-Moons in Bloodhoof Village.
  collect 2 Well Stone##4808 |q 771 |goto Maraudon - Dungeon -1,-1 |elite |tip {dropsfrom}Razorlash, Well Stone
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6087 |goto Mulgore 46.93,59.65
step
  only Tauren
  talk Tal##2995
  accept Return to Jahan##6364 |goto Thunder Bluff 47,49.83
step
  talk Kaga Wildhoof##265810
  accept Camping 101: Cooking##96661 |goto Mulgore 46.19,67.21
step
  note Speak with Pyall Silentstride in Bloodhoof Village to learn to become a cook.
  talk Pyall Silentstride##3067 |q 96661 |goto Mulgore 44.92,61.67
step
  only Tauren Hunter
  note Use the Taming Rod to tame a Prairie Stalker. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Prairie Stalker##2959 |q 6087 |goto Mulgore 48.68,50.87 |tip {useit}
step
  only Mage
  talk Un'Thuwa##5880
  turnin Speak with Un'thuwa##1883 |goto Durotar 56.31,75.11 |tip {turninat}Durotar
step
  talk Morin Cloudstalker##2988
  turnin The Ravaged Caravan##751 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  turnin Fizsprocket's Notes##98424 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  turnin Ceasing Operations##98427 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  accept The Venture Co.##764 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  accept Supervisor Fizsprocket##765 |goto Mulgore 54.76,64.27
step
  note Kill Supervisor Fizsprocket and return his clipboard to Morin Cloudstalker at Bloodhoof Village.
  collect Fizsprocket's Clipboard##4819 |q 765 |goto Mulgore 61.19,49.32 |tip {dropsfrom}Supervisor Fizsprocket
step
  only Skyborne
  talk Thrall##4949
  turnin Welcome to Azeroth##95350 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5663 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5922 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  talk Lorekeeper Raintotem##3233
  turnin A Sacred Burial##833 |goto Mulgore 56.98,34.55
step
  only Skyborne Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##94913 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  talk Sergra Darkthorn##3338
  turnin Sergra Darkthorn##860 |goto The Barrens 52.23,31.01 |tip {turninat}The Barrens
step
  only Tauren
  talk Jahan Hawkwing##3483
  turnin Return to Jahan##6364 |goto The Barrens 51.21,29.05 |tip {turninat}The Barrens
step
  talk Tonga Runetotem##3448
  turnin The Barrens Oases##886 |goto The Barrens 52.26,31.93 |tip {turninat}The Barrens
step
  note Kill 14 Venture Co. Workers and 6 Venture Co. Supervisors for Morin Cloudstalker at Bloodhoof Village.
  kill Venture Co. Worker##2978 |q 764 |goto Mulgore 59.15,47.26
step
  only Tauren Warrior
  talk Harutt Thunderhorn##3059
  turnin Simple Note##3091 |goto Mulgore 43.75,76.72
step
  only Tauren Hunter
  talk Lanka Farshot##3061
  turnin Etched Note##3092 |goto Mulgore 43.96,76.35
step
  only Tauren Shaman
  talk Meela Dawnstrider##3062
  turnin Rune-Inscribed Note##3093 |goto Mulgore 44.58,76.56
step
  only Tauren Druid
  talk Gart Mistrunner##3060
  turnin Verdant Note##3094 |goto Mulgore 44.65,76.55
step
  talk Grull Hawkwind##2980
  turnin The Hunt Continues##750 |goto Mulgore 44.47,77.5
step
  only Shaman
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1520 |goto Mulgore 51.99,80.4
step
  talk Chief Hawkwind##2981
  turnin Rite of Strength##757 |goto Mulgore 43.89,76.66
step
  talk Chief Hawkwind##2981
  accept Rites of the Earthmother##763 |goto Mulgore 43.89,76.66
step
  talk Grull Hawkwind##2980
  accept The Battleboars##780 |goto Mulgore 44.47,77.5
step
  note Grull Hawkwind in Camp Narache wants you to kill Battleboars and bring back 8 Battleboar Snouts and 8 Battleboar Flanks.
  collect Battleboar Snout##4848 |q 780 |goto Mulgore 59.49,78.77 |tip {dropsfrom}Bristleback Battleboar, Battleboar
step
  talk Zarlman Two-Moons##3054
  turnin Rite of Vision##771 |goto Mulgore 46.88,61.19
step
  talk Pyall Silentstride##3067
  turnin Camping 101: Cooking##96661 |goto Mulgore 44.92,61.67
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6087 |goto Mulgore 46.93,59.65
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Winterhoof Cleansing##754 |goto Mulgore 47.52,63.58
step
  talk Baine Bloodhoof##2993
  turnin Rites of the Earthmother##763 |goto Mulgore 46.67,63.38
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Thunderhorn Totem##756 |goto Mulgore 47.52,63.58
step
  only Tauren
  note Bring 6 Stalker Claws and 6 Cougar Claws to Mull Thunderhorn.
  collect 6 Stalker Claws##4801 |q 756 |goto Mulgore 48.68,50.87 |tip {dropsfrom}Prairie Stalker
step
  talk Zarlman Two-Moons##3054
  accept Rite of Vision##772 |goto Mulgore 46.88,61.19
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6088 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  note Use the Taming Rod to tame a Swoop. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Swoop##2970 |q 6088 |goto Mulgore 48.39,50.19 |tip {useit}
step
  talk Morin Cloudstalker##2988
  turnin The Venture Co.##764 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  turnin Supervisor Fizsprocket##765 |goto Mulgore 54.76,64.27
step
  talk Seer Wiserunner##2984
  turnin Rite of Vision##772 |goto Mulgore 34.31,43.29
step
  talk Seer Wiserunner##2984
  accept Rite of Wisdom##773 |goto Mulgore 34.31,43.29
step
  talk Ancestral Spirit##2994
  turnin Rite of Wisdom##773 |goto Mulgore 58.31,30.7
step
  talk Ancestral Spirit##2994
  accept Journey into Thunder Bluff##775 |goto Mulgore 58.31,30.7
step
  talk Grull Hawkwind##2980
  turnin The Battleboars##780 |goto Mulgore 44.47,77.5
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6088 |goto Mulgore 46.93,59.65
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Thunderhorn Totem##756 |goto Mulgore 47.52,63.58
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Thunderhorn Cleansing##758 |goto Mulgore 47.52,63.58
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Training the Beast##6089 |goto Mulgore 46.93,59.65
step
  talk Cairne Bloodhoof##3057
  turnin Journey into Thunder Bluff##775 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  only Tauren Hunter
  talk Holt Thunderhorn##3039
  turnin Training the Beast##6089 |goto Thunder Bluff 57.3,89.79 |tip {turninat}Thunder Bluff
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Thunderhorn Cleansing##758 |goto Mulgore 47.52,63.58
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Wildmane Totem##759 |goto Mulgore 47.52,63.58
step
  only Tauren
  note Bring 8 Prairie Alpha Teeth to Mull Thunderhorn in Bloodhoof Village.
  collect 8 Prairie Alpha Tooth##4803 |q 759 |goto Mulgore 53.79,37.21 |tip {dropsfrom}Prairie Wolf Alpha
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Wildmane Totem##759 |goto Mulgore 47.52,63.58
step
  note {travel}Tirisfal Glades
  goto Tirisfal Glades 30.84,66.2
]])
