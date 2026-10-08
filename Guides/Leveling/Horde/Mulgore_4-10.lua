-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Mulgore (4-10)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Barrens (12-20)",
}, [[
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  talk Chief Hawkwind##2981
  accept A Humble Task##752 |goto Mulgore 43.89,76.66
step
  collect Dirt-stained Map##3076 |goto Mulgore 59.8,82.2 |tip Loot the quest item here — it starts the quest.
  accept Attack on Camp Narache##781 |goto Mulgore 59.8,82.2
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  collect Plainstrider Meat##4739 |q 747 |goto Mulgore 47.2,81.46 |tip {dropsfrom}Plainstrider
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  talk Greatmother Hawkwind##2991
  turnin A Humble Task##752 |goto Mulgore 48.77,80.92
step
  talk Chief Hawkwind##2981
  turnin Attack on Camp Narache##781 |goto Mulgore 43.89,76.66
step
  talk Grull Hawkwind##2980
  accept The Hunt Continues##750 |goto Mulgore 44.47,77.5
step
  talk Greatmother Hawkwind##2991
  accept A Humble Task##753 |goto Mulgore 48.77,80.92
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
  note Take a Water Pitcher from the water well.
  collect Water Pitcher##4755 |q 753 |goto Mulgore 49.04,81.09
step
  talk Chief Hawkwind##2981
  turnin A Humble Task##753 |goto Mulgore 43.89,76.66
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
  talk Chief Hawkwind##2981
  accept Rites of the Earthmother##755 |goto Mulgore 43.89,76.66
step
  talk Seer Graytongue##2982
  turnin Rites of the Earthmother##755 |goto Mulgore 42.54,90.13
step
  talk Seer Graytongue##2982
  accept Rite of Strength##757 |goto Mulgore 42.54,90.13
step
  talk Seer Graytongue##2982
  accept Grace of An'she and Mu'sha##95805 |goto Mulgore 42.54,90.13
step
  note Grull Hawkwind in Camp Narache wants you to bring him 10 Mountain Cougar Pelts.
  collect Mountain Cougar Pelt##4742 |q 750 |goto Mulgore 47.51,88.11 |tip {dropsfrom}Mountain Cougar
step
  turnin Grace of An'she and Mu'sha##95805 |goto Mulgore 56.57,88.69
step
  talk Grull Hawkwind##2980
  turnin The Hunt Continues##750 |goto Mulgore 44.47,77.5
step
  talk Grull Hawkwind##2980
  accept The Battleboars##780 |goto Mulgore 44.47,77.5
step
  talk Brave Windfeather##3209
  accept Break Sharptusk!##3376 |goto Mulgore 44.18,77.03
step
  note Kill Bristlebacks in Brambleblade Ravine and bring 12 Bristleback Belts to Chief Hawkwind in Camp Narache.
  collect 12 Bristleback Belt##4770 |q 757 |goto Mulgore 58.41,78.91 |tip {dropsfrom}Bristleback Quilboar, Bristleback Shaman
step
  talk Chief Hawkwind##2981
  turnin Rite of Strength##757 |goto Mulgore 43.89,76.66
step
  talk Chief Hawkwind##2981
  accept Rites of the Earthmother##763 |goto Mulgore 43.89,76.66
step
  talk Antur Fallow##6775
  accept A Task Unfinished##1656 |goto Mulgore 39.16,81.24
step
  talk Baine Bloodhoof##2993
  turnin Rites of the Earthmother##763 |goto Mulgore 46.67,63.38
step
  talk Innkeeper Kauth##6747
  turnin A Task Unfinished##1656 |goto Mulgore 45.93,64.16
step
  note Grull Hawkwind in Camp Narache wants you to kill Battleboars and bring back 8 Battleboar Snouts and 8 Battleboar Flanks.
  collect Battleboar Snout##4848 |q 780 |goto Mulgore 60.2,78.63 |tip {dropsfrom}Bristleback Battleboar, Battleboar
step
  note Bring the head of Chief Sharptusk Thornmantle to Brave Windfeather in Red Cloud Mesa.
  collect Chief Sharptusk Thornmantle's Head##10459 |q 3376 |goto Mulgore 61.02,78 |tip {dropsfrom}Chief Sharptusk Thornmantle
step
  talk Grull Hawkwind##2980
  turnin The Battleboars##780 |goto Mulgore 44.47,77.5
step
  talk Brave Windfeather##3209
  turnin Break Sharptusk!##3376 |goto Mulgore 44.18,77.03
step
  only Shaman completed(1517)
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##1518 |goto Mulgore 51.99,80.4
step
  only Shaman not completed(1516) not completed(92466) not haveq(1516) not haveq(92466)
  talk Seer Ravenfeather##5888
  accept Call of Earth##1519 |goto Mulgore 44.35,76.77
step
  only not completed(96627) not completed(96628) not completed(96630) not completed(96638) not completed(96652) not completed(96656) not haveq(96627) not haveq(96628) not haveq(96630) not haveq(96638) not haveq(96652) not haveq(96656)
  talk Chief Hawkwind##2981
  accept The Adventurer##96659 |goto Mulgore 43.89,76.66
step
  only not completed(96627) not completed(96628) not completed(96630) not completed(96638) not completed(96652) not completed(96656) not haveq(96627) not haveq(96628) not haveq(96630) not haveq(96638) not haveq(96652) not haveq(96656)
  talk Kaga Wildhoof##265810
  turnin The Adventurer##96659 |goto Mulgore 46.19,67.21
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Poison Water##748 |goto Mulgore 47.52,63.58
step
  talk Harken Windtotem##2947
  accept Swoop Hunting##761 |goto Mulgore 47.67,62.68
step
  talk Baine Bloodhoof##2993
  accept Rite of Vision##767 |goto Mulgore 46.67,63.38
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96606) not completed(96607) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96606) not haveq(96607) not haveq(96608)
  talk Kaga Wildhoof##265810
  accept The Great Outdoors##96605 |goto Mulgore 46.19,67.21
step
  talk Krang Stonehoof##3063
  accept Sparring Match##99108 |goto Mulgore 48.35,63.74
step
  only Tauren
  note Bring 6 Prairie Wolf Paws and 4 Plainstrider Talons to Mull Thunderhorn in Bloodhoof.
  collect 6 Prairie Wolf Paw##4758 |q 748 |goto Mulgore 40.99,68.63 |tip {dropsfrom}Prairie Wolf, Prairie Stalker, Prairie Wolf Alpha
step
  note Bring 8 Trophy Swoop Quills to Harken Windtotem in Bloodhoof Village.
  collect 8 Trophy Swoop Quill##4769 |q 761 |goto Mulgore 41.23,68.49 |tip {dropsfrom}Wiry Swoop, Swoop, Taloned Swoop
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96606) not completed(96607) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96606) not haveq(96607) not haveq(96608)
  note Sit near Kaga's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  collect Basic Campfire##450006 |q 96605 |goto Mulgore 46.21,67.31
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Poison Water##748 |goto Mulgore 47.52,63.58
step
  talk Harken Windtotem##2947
  turnin Swoop Hunting##761 |goto Mulgore 47.67,62.68
step
  talk Zarlman Two-Moons##3054
  turnin Rite of Vision##767 |goto Mulgore 46.88,61.19
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96606) not completed(96607) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96606) not haveq(96607) not haveq(96608)
  talk Kaga Wildhoof##265810
  turnin The Great Outdoors##96605 |goto Mulgore 46.19,67.21
step
  talk Krang Stonehoof##3063
  turnin Sparring Match##99108 |goto Mulgore 48.35,63.74
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Winterhoof Cleansing##754 |goto Mulgore 47.52,63.58
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658)
  talk Kaga Wildhoof##265810
  accept Camping 101: Cooking##96661 |goto Mulgore 46.19,67.21
step
  talk Zarlman Two-Moons##3054
  accept Rite of Vision##771 |goto Mulgore 46.88,61.19
step
  talk Yaw Sharpmane##3065
  accept Chakuyak##96130 |goto Mulgore 46.93,59.65
step
  note Collect 2 Well Stones and 2 Ambercorn and bring them back to Zarlman Two-Moons in Bloodhoof Village.
  collect 2 Well Stone##4808 |q 771 |goto Mulgore 44.4,51.29 |tip {dropsfrom}Razorlash, Well Stone
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658)
  note Speak with Pyall Silentstride in Bloodhoof Village to learn to become a cook.
  talk Pyall Silentstride##3067 |q 96661 |goto Mulgore 44.92,61.67
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Winterhoof Cleansing##754 |goto Mulgore 47.52,63.58
step
  talk Zarlman Two-Moons##3054
  turnin Rite of Vision##771 |goto Mulgore 46.88,61.19
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658)
  talk Pyall Silentstride##3067
  turnin Camping 101: Cooking##96661 |goto Mulgore 44.92,61.67
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Thunderhorn Totem##756 |goto Mulgore 47.52,63.58
step
  talk Zarlman Two-Moons##3054
  accept Rite of Vision##772 |goto Mulgore 46.88,61.19
step
  only Tauren
  note Bring 6 Stalker Claws and 6 Cougar Claws to Mull Thunderhorn.
  collect 6 Stalker Claws##4801 |q 756 |goto Mulgore 49.46,50.77 |tip {dropsfrom}Prairie Stalker
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Thunderhorn Totem##756 |goto Mulgore 47.52,63.58
step
  talk Ruul Eagletalon##2985
  accept Dangers of the Windfury##743 |goto Mulgore 46.54,64.94
step
  talk Baine Bloodhoof##2993
  accept Sharing the Land##745 |goto Mulgore 46.67,63.38
step
  talk Baine Bloodhoof##2993
  accept Dwarven Digging##746 |goto Mulgore 46.67,63.38
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Thunderhorn Cleansing##758 |goto Mulgore 47.52,63.58
step
  talk Maur Raincaller##3055
  accept Mazzranache##766 |goto Mulgore 46.23,60.8
step
  note Bring a Prairie Wolf Heart, Flatland Cougar Femur, Plainstrider Scale and Swoop Gizzard to Maur Raincaller at Bloodhoof Village.
  collect Prairie Wolf Heart##4804 |q 766 |goto Mulgore 40.99,68.63 |tip {dropsfrom}Prairie Wolf, Prairie Stalker, Prairie Wolf Alpha
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Thunderhorn Cleansing##758 |goto Mulgore 47.52,63.58
step
  talk Maur Raincaller##3055
  turnin Mazzranache##766 |goto Mulgore 46.23,60.8
step
  talk Morin Cloudstalker##2988
  accept The Ravaged Caravan##749 |goto Mulgore 54.76,64.27
step
  note Bring 8 Windfury Talons to Ruul Eagletalon in Bloodhoof Village.
  collect 8 Windfury Talon##4751 |q 743 |goto Mulgore 59.55,72.03 |tip {dropsfrom}Windfury Harpy, Windfury Wind Witch
step
  only Shaman not completed(1516) not completed(92466) not haveq(1516) not haveq(92466)
  note Bring 2 applications of Ritual Salve to Seer Ravenfeather in Camp Narache.
  collect 2 Ritual Salve##6634 |q 1519 |goto Mulgore 61.05,78.16 |tip {dropsfrom}Bristleback Shaman
step
  turnin The Ravaged Caravan##749 |goto Mulgore 51.87,53.37
step
  click Sealed Supply Crate##2908
  accept The Ravaged Caravan##751 |goto Mulgore 51.87,53.37
step
  talk Morin Cloudstalker##2988
  turnin The Ravaged Caravan##751 |goto Mulgore 54.76,64.27
step
  talk Seer Wiserunner##2984
  turnin Rite of Vision##772 |goto Mulgore 34.31,43.29
step
  only Shaman not completed(1516) not completed(92466) not haveq(1516) not haveq(92466)
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1519 |goto Mulgore 44.35,76.77
step
  only Shaman not completed(92466) not haveq(92466)
  talk Seer Ravenfeather##5888
  accept Call of Earth##1520 |goto Mulgore 44.35,76.77
step
  only Shaman not completed(92466) not haveq(92466)
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1520 |goto Mulgore 51.99,80.4
step
  only Shaman not completed(92466) not haveq(92466)
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##1521 |goto Mulgore 51.99,80.4
step
  only Shaman not completed(92466) not haveq(92466)
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1521 |goto Mulgore 44.35,76.77
step
  talk Perith Stormhoof##272203
  accept The Longwalkers##98430 |goto Mulgore 33.1,65.93
step
  note Kill 10 Palemane Tanners, 8 Palemane Skinners, and 5 Palemane Poachers, then return to Baine Bloodhoof in Bloodhoof Village.
  kill Palemane Tanner##2949 |q 745 |goto Mulgore 36.76,66.12
step
  note Collect 5 Prospector's Picks.
  collect 5 Broken Tools##4703 |q 746 |goto Mulgore 33.1,54.8 |tip {dropsfrom}Forge
step
  note Defeat Chakuyak and bring back her pelt.
  collect Chakuyak's Pelt##270302 |q 96130 |goto Mulgore 39.29,66.21 |tip {dropsfrom}Chakuyak
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
  talk Yaw Sharpmane##3065
  turnin Chakuyak##96130 |goto Mulgore 46.93,59.65
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
  talk Ahab Wheathoof##277182
  accept Kyle's Gone Missing!##99411 |goto Mulgore 47.28,57.63
step
  note Ahab Wheathoof at Bloodhoof Village in Mulgore wants you to feed his prized puppy, Kyle the Frenzied.
  talk Kyle the Frenzied##277154 |q 99411 |goto Mulgore 46.82,63.84
step
  talk Baine Bloodhoof##2993
  turnin Our Ancient Enemy##99101 |goto Mulgore 46.67,63.38
step
  talk Ahab Wheathoof##277182
  turnin Kyle's Gone Missing!##99411 |goto Mulgore 47.28,57.63
step
  talk Malah Longwind##275789
  turnin Longwalker Malah##99079 |goto Mulgore 57.65,63.27
step
  talk Malah Longwind##275789
  accept Grim Tidings##99081 |goto Mulgore 57.65,63.27
step
  note Kill 6 Galak Centaurs, 4 Galak Outrunners, and bring the head of Herak the Pillager to Baine Bloodhoof.
  kill Galak Centaur##2967 |q 99080 |goto Mulgore 64.05,61.68
step
  talk Baine Bloodhoof##2993
  turnin Drive Them Out##99080 |goto Mulgore 46.67,63.38
step
  talk Brave Wildrunner##3222
  turnin Grim Tidings##99081 |goto Mulgore 46.68,63.83
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Wildmane Totem##759 |goto Mulgore 47.52,63.58
step
  talk Mull Thunderhorn##2948
  accept Thunderhorn's Report##98435 |goto Mulgore 47.52,63.58
step
  talk Morin Cloudstalker##2988
  accept The Venture Co.##764 |goto Mulgore 54.76,64.27
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
  talk Lorekeeper Raintotem##3233
  accept A Sacred Burial##833 |goto Mulgore 56.98,34.55
step
  kill Supervisor Fizsprocket##3051 |goto Mulgore 61.19,49.32 |tip Loot the quest item here — it starts the quest.
  accept Fizsprocket's Notes##98424 |goto Mulgore 61.19,49.32
step
  note Collect the rest of Supervisor Fizsprocket's pages inside The Venture Co. Mine and bring them to Morin Cloudstalker near Bloodhoof Village.
  collect Shredder Operation Instructions##281035 |q 98424 |goto Mulgore 61.19,49.32
step
  only Tauren
  note Bring 8 Prairie Alpha Teeth to Mull Thunderhorn in Bloodhoof Village.
  collect 8 Prairie Alpha Tooth##4803 |q 759 |goto Mulgore 54.41,36.89 |tip {dropsfrom}Prairie Wolf Alpha
step
  note Kill 14 Venture Co. Workers and 6 Venture Co. Supervisors for Morin Cloudstalker at Bloodhoof Village.
  kill Venture Co. Worker##2978 |q 764 |goto Mulgore 59.02,47.26
step
  note Lorekeeper Raintotem wants you to kill 8 Bristleback Interlopers at Red Rocks.
  kill Bristleback Interloper##3232 |q 833 |goto Mulgore 57.96,30.92
step
  talk Lorekeeper Raintotem##3233
  turnin A Sacred Burial##833 |goto Mulgore 56.98,34.55
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Wildmane Totem##759 |goto Mulgore 47.52,63.58
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Wildmane Cleansing##760 |goto Mulgore 47.52,63.58
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Wildmane Cleansing##760 |goto Mulgore 47.52,63.58
step
  talk Morin Cloudstalker##2988
  turnin The Venture Co.##764 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  turnin Fizsprocket's Notes##98424 |goto Mulgore 54.76,64.27
step
  only not completed(844) not haveq(844)
  talk Skorn Whitecloud##3052
  accept The Hunter's Way##861 |goto Mulgore 46.03,63.44
step
  only Warrior not completed(1819) not haveq(1819)
  talk Krang Stonehoof##3063
  accept Veteran Uzzek##1505 |goto Mulgore 48.35,63.74
step
  only Shaman not completed(1522) not completed(1523) not completed(2983) not haveq(1522) not haveq(1523) not haveq(2983)
  talk Narm Skychaser##3066
  accept Call of Fire##2984 |goto Mulgore 47.4,62.54
step
  only Troll Priest not completed(5652) not completed(5654) not completed(5656) not completed(5657) not haveq(5652) not haveq(5654) not haveq(5656) not haveq(5657)
  talk Var'jun##11407
  accept Hex of Weakness##5655 |goto Mulgore 46.2,62.27
step
  only Undead Priest not completed(5658) not completed(5660) not completed(5662) not completed(5663) not haveq(5658) not haveq(5660) not haveq(5662) not haveq(5663)
  talk Var'jun##11407
  accept Touch of Weakness##5661 |goto Mulgore 46.2,62.27
step
  only Tauren Druid not completed(5926) not completed(5927) not haveq(5926) not haveq(5927)
  talk Gennia Runetotem##3064
  accept Heeding the Call##5928 |goto Mulgore 47.48,62.95
step
  talk Morin Cloudstalker##2988
  accept Supervisor Fizsprocket##765 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  accept Ceasing Operations##98427 |goto Mulgore 54.76,64.27
step
  kill Ghost Howl##3056 |goto Mulgore 46.7,25.48 |tip Loot the quest item here — it starts the quest.
  accept The Demon Scarred Cloak##770 |goto Mulgore 46.7,25.48
step
  only Skyborne Druid
  talk Muln Earthfury##259118
  accept Child of Nature##94911 |goto Mulgore 33.4,22.5
step
  note Kill Supervisor Fizsprocket and return his clipboard to Morin Cloudstalker at Bloodhoof Village.
  collect Fizsprocket's Clipboard##4819 |q 765 |goto Mulgore 61.19,49.32 |tip {dropsfrom}Supervisor Fizsprocket
step
  only not completed(844) not haveq(844)
  note Bring 4 Flatland Prowler Claws to Melor Stonehoof in Thunder Bluff.
  collect 4 Flatland Prowler Claw##5203 |q 861 |goto Mulgore 48.56,28.22 |tip {dropsfrom}Flatland Prowler
step
  note Bring the Clearcutter Key to Morin Cloudstalker outside Bloodhoof Village.
  collect Clearcutter Key##281048 |q 98427 |goto Mulgore 56.79,43.23 |tip {dropsfrom}Venture Co. Clearclutter
step
  talk Skorn Whitecloud##3052
  turnin The Demon Scarred Cloak##770 |goto Mulgore 46.03,63.44
step
  talk Morin Cloudstalker##2988
  turnin Supervisor Fizsprocket##765 |goto Mulgore 54.76,64.27
step
  talk Morin Cloudstalker##2988
  turnin Ceasing Operations##98427 |goto Mulgore 54.76,64.27
step
  only Skyborne
  talk Alaana Stormwalker##259119
  accept Welcome to Azeroth##95350 |goto Mulgore 33.4,22.5
step
  only Shaman completed(1517)
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1518 |goto Durotar 42.4,69.17 |tip {turninat}Durotar
step
  talk Cairne Bloodhoof##3057
  turnin The Longwalkers##98430 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  talk Cairne Bloodhoof##3057
  turnin The High Chieftain##99082 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin Thunderhorn's Report##98435 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  only not completed(844) not haveq(844)
  talk Melor Stonehoof##3441
  turnin The Hunter's Way##861 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  only Warrior not completed(1819) not haveq(1819)
  talk Uzzek##5810
  turnin Veteran Uzzek##1505 |goto The Barrens 61.38,21.12 |tip {turninat}The Barrens
step
  only Shaman not completed(1522) not completed(1523) not completed(2983) not haveq(1522) not haveq(1523) not haveq(2983)
  talk Kranal Fiss##5907
  turnin Call of Fire##2984 |goto The Barrens 56.03,19.89 |tip {turninat}The Barrens
step
  only Troll Priest not completed(5652) not completed(5654) not completed(5656) not completed(5657) not haveq(5652) not haveq(5654) not haveq(5656) not haveq(5657)
  talk Ur'kyo##6018
  turnin Hex of Weakness##5655 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only Undead Priest not completed(5658) not completed(5660) not completed(5662) not completed(5663) not haveq(5658) not haveq(5660) not haveq(5662) not haveq(5663)
  talk Aelthalyste##4606
  turnin Touch of Weakness##5661 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Tauren Druid not completed(5926) not completed(5927) not haveq(5926) not haveq(5927)
  talk Turak Runetotem##3033
  turnin Heeding the Call##5928 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Skyborne Druid
  talk Turak Runetotem##3033
  turnin Child of Nature##94911 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Skyborne
  talk Thrall##4949
  turnin Welcome to Azeroth##95350 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only not Undead not Skyborne not Paladin not Hunter not Rogue not Priest not Mage not Warlock
  talk Boarton Shadetotem##205729
  accept Stalk With The Earthmother##76156 |goto Thunder Bluff 39.6,65.85
step
  talk Eylah Sunhorn##269068
  accept Traditions of the Bluff##97485 |goto Thunder Bluff 38.1,56.25
step
  talk Eyahn Eagletalon##2987
  accept Preparation for Ceremony##744 |goto Thunder Bluff 37.75,59.57
step
  only Tauren Druid completed(5932)
  talk Turak Runetotem##3033
  accept Body and Heart##6002 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid completed(5932)
  note Use the Cenarion Lunardust on the Moonkin Stone between Mulgore and the Barrens to bring forth Lunaclaw. From there, you must face Lunaclaw and earn the strength of body and heart it possesses.
  use Lunaclaw Spirit##12144 |q 6002 |tip {useit}
step
  only Tauren Hunter not completed(6066) not completed(6067) not haveq(6066) not haveq(6067)
  talk Kary Thunderhorn##3038
  accept The Hunter's Path##6065 |goto Thunder Bluff 58.49,88.33
step
  only Skyborne Druid
  talk Turak Runetotem##3033
  accept Moonglade##94913 |goto Thunder Bluff 76.48,27.22
step
  note Collect 6 Azure Feathers and 6 Bronze Feathers, and bring them to Eyahn Eagletalon in Thunder Bluff.
  collect 6 Azure Feather##4752 |q 744 |goto Mulgore 36.23,24.57 |tip {dropsfrom}Windfury Sorceress
step
  only not Undead not Skyborne not Paladin not Hunter not Rogue not Priest not Mage not Warlock
  talk Boarton Shadetotem##205729
  turnin Stalk With The Earthmother##76156 |goto Thunder Bluff 39.6,65.85 |tip {turninat}Thunder Bluff
step
  talk Eylah Sunhorn##269068
  turnin Traditions of the Bluff##97485 |goto Thunder Bluff 38.1,56.25 |tip {turninat}Thunder Bluff
step
  talk Eyahn Eagletalon##2987
  turnin Preparation for Ceremony##744 |goto Thunder Bluff 37.75,59.57 |tip {turninat}Thunder Bluff
step
  only Tauren Druid completed(5932)
  talk Turak Runetotem##3033
  turnin Body and Heart##6002 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Tauren Hunter not completed(6066) not completed(6067) not haveq(6066) not haveq(6067)
  talk Yaw Sharpmane##3065
  turnin The Hunter's Path##6065 |goto Mulgore 46.93,59.65
step
  only Skyborne Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##94913 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Moonglade##5922 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6061 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  note Use the Taming Rod to tame an Adult Plainstrider. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Adult Plainstrider##2956 |q 6061 |goto Mulgore 40.37,60.65 |tip {useit}
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5922 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6061 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6087 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  note Use the Taming Rod to tame a Prairie Stalker. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Prairie Stalker##2959 |q 6087 |goto Mulgore 49.46,50.77 |tip {useit}
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6087 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6088 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  note Use the Taming Rod to tame a Swoop. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Swoop##2970 |q 6088 |goto Mulgore 48.6,50.19 |tip {useit}
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6088 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Training the Beast##6089 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  talk Holt Thunderhorn##3039
  turnin Training the Beast##6089 |goto Thunder Bluff 57.3,89.79 |tip {turninat}Thunder Bluff
step
  talk Cairne Bloodhoof##3057
  turnin Journey into Thunder Bluff##775 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  talk Cairne Bloodhoof##3057
  accept Rites of the Earthmother##776 |goto Thunder Bluff 60.3,51.68
step
  note Cairne Bloodhoof in Thunder Bluff wants you to bring him the Horn of Arra'chea.
  collect Horn of Arra'chea##4841 |q 776 |goto Mulgore 51.25,24.82 |tip {dropsfrom}Arra'chea
step
  talk Cairne Bloodhoof##3057
  turnin Rites of the Earthmother##776 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  note {travel}Thunder Bluff
  goto Thunder Bluff 78.62,28.56
]])
