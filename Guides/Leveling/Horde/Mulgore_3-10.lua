-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Mulgore (3-10)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Durotar (1-12)",
}, [[
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.88,77.07
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  collect Plainstrider Meat##4739 |q 747 |goto Mulgore 48.53,81.85 |tip {dropsfrom}Plainstrider
step
  talk Chief Hawkwind##2981
  accept A Humble Task##752 |goto Mulgore 44.18,76.06
step
  only Tauren Mage
  talk Seer Ravenfeather##5888
  accept Call of Earth##1519 |goto Mulgore 44.73,76.19
step
  only Tauren Mage
  note Bring 2 applications of Ritual Salve to Seer Ravenfeather in Camp Narache.
  collect 2 Ritual Salve##6634 |q 1519 |goto Mulgore 63.65,77.81 |tip {dropsfrom}Bristleback Shaman
step
  talk Brave Windfeather##3209
  accept Break Sharptusk!##3376 |goto Mulgore 44.53,76.5
step
  note Bring the head of Chief Sharptusk Thornmantle to Brave Windfeather in Red Cloud Mesa.
  collect Chief Sharptusk Thornmantle's Head##10459 |q 3376 |goto Mulgore 64.7,77.66 |tip {dropsfrom}Chief Sharptusk Thornmantle
step
  talk Antur Fallow##6775
  accept A Task Unfinished##1656 |goto Mulgore 38.52,81.55
step
  talk Greatmother Hawkwind##2991
  turnin A Humble Task##752 |goto Mulgore 50.03,81.16
step
  talk Greatmother Hawkwind##2991
  accept A Humble Task##753 |goto Mulgore 50.03,81.16
step
  note Take a Water Pitcher from the water well.
  collect Water Pitcher##4755 |q 753 |goto Mulgore 50.35,81.46 |tip {dropsfrom}Water Pitcher
step
  only Mage
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##1518 |goto Mulgore 53.89,80.54
step
  talk Morin Cloudstalker##2988
  accept The Ravaged Caravan##749 |goto Mulgore 57.2,61.22
step
  talk Morin Cloudstalker##2988
  accept The Venture Co.##764 |goto Mulgore 57.2,61.22
step
  talk Morin Cloudstalker##2988
  accept Supervisor Fizsprocket##765 |goto Mulgore 57.2,61.22
step
  note Kill Supervisor Fizsprocket and return his clipboard to Morin Cloudstalker at Bloodhoof Village.
  collect Fizsprocket's Clipboard##4819 |q 765 |goto Mulgore 64.9,43.31 |tip {dropsfrom}Supervisor Fizsprocket
step
  turnin The Ravaged Caravan##749 |goto Mulgore 53.74,48.17
step
  talk Innkeeper Kauth##6747
  turnin A Task Unfinished##1656 |goto Mulgore 46.62,61.09
step
  talk Ruul Eagletalon##2985
  accept Dangers of the Windfury##743 |goto Mulgore 47.35,62.02
step
  note Bring 8 Windfury Talons to Ruul Eagletalon in Bloodhoof Village.
  collect 8 Windfury Talon##4751 |q 743 |goto Mulgore 62.94,69.52 |tip {dropsfrom}Windfury Harpy, Windfury Wind Witch
step
  talk Baine Bloodhoof##2993
  accept Sharing the Land##745 |goto Mulgore 47.51,60.16
step
  talk Baine Bloodhoof##2993
  accept Dwarven Digging##746 |goto Mulgore 47.51,60.16
step
  note Collect 5 Prospector's Picks.
  collect 5 Broken Tools##4703 |q 746 |goto Mulgore 47.51,60.16
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Poison Water##748 |goto Mulgore 48.53,60.39
step
  only Tauren
  note Bring 6 Prairie Wolf Paws and 4 Plainstrider Talons to Mull Thunderhorn in Bloodhoof.
  collect 6 Prairie Wolf Paw##4758 |q 748 |goto Mulgore 39.51,66.13 |tip {dropsfrom}Prairie Wolf, Prairie Stalker, Prairie Wolf Alpha
step
  talk Harken Windtotem##2947
  accept Swoop Hunting##761 |goto Mulgore 48.71,59.32
step
  note Bring 8 Trophy Swoop Quills to Harken Windtotem in Bloodhoof Village.
  collect 8 Trophy Swoop Quill##4769 |q 761 |goto Mulgore 39.5,66.28 |tip {dropsfrom}Wiry Swoop, Swoop, Taloned Swoop
step
  talk Maur Raincaller##3055
  accept Mazzranache##766 |goto Mulgore 46.98,57.07
step
  note Bring a Prairie Wolf Heart, Flatland Cougar Femur, Plainstrider Scale and Swoop Gizzard to Maur Raincaller at Bloodhoof Village.
  collect Prairie Wolf Heart##4804 |q 766 |goto Mulgore 39.51,66.13 |tip {dropsfrom}Prairie Wolf, Prairie Stalker, Prairie Wolf Alpha
step
  talk Skorn Whitecloud##3052
  accept The Hunter's Way##861 |goto Mulgore 46.75,60.23
step
  note Bring 4 Flatland Prowler Claws to Melor Stonehoof in Thunder Bluff.
  collect 4 Flatland Prowler Claw##5203 |q 861 |goto Mulgore 50.64,18.41 |tip {dropsfrom}Flatland Prowler
step
  only Undead Priest
  talk Var'jun##11407
  accept Touch of Weakness##5661 |goto Mulgore 46.95,58.82
step
  talk Ahab Wheathoof##23618
  accept Kyle's Gone Missing!##11129 |goto Mulgore 48.24,53.27
step
  note Ahab Wheathoof at Bloodhoof Village in Mulgore wants you to feed his prized puppy, Kyle the Frenzied.
  kill Kyle the Frenzied##23616 |q 11129 |goto Mulgore 49.28,63.83
step
  note Kill 10 Palemane Tanners, 8 Palemane Skinners, and 5 Palemane Poachers, then return to Baine Bloodhoof in Bloodhoof Village.
  kill Palemane Tanner##2949 |q 745 |goto Mulgore 35.71,63.44
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5661 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  talk Lorekeeper Raintotem##3233
  accept A Sacred Burial##833 |goto Mulgore 59.86,25.62
step
  note Lorekeeper Raintotem wants you to kill 8 Bristleback Interlopers at Red Rocks.
  kill Bristleback Interloper##3232 |q 833 |goto Mulgore 61.34,21.28
step
  note Kill 14 Venture Co. Workers and 6 Venture Co. Supervisors for Morin Cloudstalker at Bloodhoof Village.
  kill Venture Co. Worker##2978 |q 764 |goto Mulgore 62.46,40.85
step
  talk Brave Windfeather##3209
  turnin Break Sharptusk!##3376 |goto Mulgore 44.53,76.5
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.88,77.07
step
  only Mage
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1518 |goto Durotar 42.4,69.17 |tip {turninat}Durotar
step
  only Tauren Mage
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1519 |goto Mulgore 44.73,76.19
step
  talk Chief Hawkwind##2981
  turnin A Humble Task##753 |goto Mulgore 44.18,76.06
step
  talk Grull Hawkwind##2980
  accept The Hunt Continues##750 |goto Mulgore 44.88,77.07
step
  note Grull Hawkwind in Camp Narache wants you to bring him 10 Mountain Cougar Pelts.
  collect Mountain Cougar Pelt##4742 |q 750 |goto Mulgore 48.52,90.43 |tip {dropsfrom}Mountain Cougar
step
  talk Chief Hawkwind##2981
  accept Rites of the Earthmother##755 |goto Mulgore 44.18,76.06
step
  only Tauren Mage
  talk Seer Ravenfeather##5888
  accept Call of Earth##1520 |goto Mulgore 44.73,76.19
step
  only Warrior
  talk Grull Hawkwind##2980
  accept Simple Note##3091 |goto Mulgore 44.88,77.07
step
  only Hunter
  talk Grull Hawkwind##2980
  accept Etched Note##3092 |goto Mulgore 44.88,77.07
step
  only Mage
  talk Grull Hawkwind##2980
  accept Rune-Inscribed Note##3093 |goto Mulgore 44.88,77.07
step
  talk Grull Hawkwind##2980
  accept Verdant Note##3094 |goto Mulgore 44.88,77.07
step
  talk Seer Graytongue##2982
  turnin Rites of the Earthmother##755 |goto Mulgore 42.57,92.19
step
  talk Seer Graytongue##2982
  accept Rite of Strength##757 |goto Mulgore 42.57,92.19
step
  note Kill Bristlebacks in Brambleblade Ravine and bring 12 Bristleback Belts to Chief Hawkwind in Camp Narache.
  collect 12 Bristleback Belt##4770 |q 757 |goto Mulgore 61.51,79.04 |tip {dropsfrom}Bristleback Quilboar, Bristleback Shaman
step
  talk Melor Stonehoof##3441
  turnin The Hunter's Way##861 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  only Tauren Mage
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1520 |goto Mulgore 53.89,80.54
step
  only Tauren Mage
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##1521 |goto Mulgore 53.89,80.54
step
  talk Morin Cloudstalker##2988
  turnin The Venture Co.##764 |goto Mulgore 57.2,61.22
step
  talk Morin Cloudstalker##2988
  turnin Supervisor Fizsprocket##765 |goto Mulgore 57.2,61.22
step
  talk Ruul Eagletalon##2985
  turnin Dangers of the Windfury##743 |goto Mulgore 47.35,62.02
step
  talk Baine Bloodhoof##2993
  turnin Sharing the Land##745 |goto Mulgore 47.51,60.16
step
  talk Baine Bloodhoof##2993
  turnin Dwarven Digging##746 |goto Mulgore 47.51,60.16
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Poison Water##748 |goto Mulgore 48.53,60.39
step
  talk Harken Windtotem##2947
  turnin Swoop Hunting##761 |goto Mulgore 48.71,59.32
step
  talk Ahab Wheathoof##23618
  turnin Kyle's Gone Missing!##11129 |goto Mulgore 48.24,53.27
step
  talk Maur Raincaller##3055
  turnin Mazzranache##766 |goto Mulgore 46.98,57.07
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Winterhoof Cleansing##754 |goto Mulgore 48.53,60.39
step
  talk Lorekeeper Raintotem##3233
  turnin A Sacred Burial##833 |goto Mulgore 59.86,25.62
step
  only Warrior
  talk Harutt Thunderhorn##3059
  turnin Simple Note##3091 |goto Mulgore 44.01,76.13
step
  only Hunter
  talk Lanka Farshot##3061
  turnin Etched Note##3092 |goto Mulgore 44.26,75.69
step
  only Mage
  talk Meela Dawnstrider##3062
  turnin Rune-Inscribed Note##3093 |goto Mulgore 45.01,75.94
step
  talk Gart Mistrunner##3060
  turnin Verdant Note##3094 |goto Mulgore 45.09,75.93
step
  talk Grull Hawkwind##2980
  turnin The Hunt Continues##750 |goto Mulgore 44.88,77.07
step
  only Tauren Mage
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1521 |goto Mulgore 44.73,76.19
step
  talk Chief Hawkwind##2981
  turnin Rite of Strength##757 |goto Mulgore 44.18,76.06
step
  talk Chief Hawkwind##2981
  accept Rites of the Earthmother##763 |goto Mulgore 44.18,76.06
step
  talk Grull Hawkwind##2980
  accept The Battleboars##780 |goto Mulgore 44.88,77.07
step
  note Grull Hawkwind in Camp Narache wants you to kill Battleboars and bring back 8 Battleboar Snouts and 8 Battleboar Flanks.
  collect Battleboar Snout##4848 |q 780 |goto Mulgore 62.87,78.59 |tip {dropsfrom}Bristleback Battleboar, Battleboar
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Winterhoof Cleansing##754 |goto Mulgore 48.53,60.39
step
  talk Baine Bloodhoof##2993
  turnin Rites of the Earthmother##763 |goto Mulgore 47.51,60.16
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Thunderhorn Totem##756 |goto Mulgore 48.53,60.39
step
  only Tauren
  note Bring 6 Stalker Claws and 6 Cougar Claws to Mull Thunderhorn.
  collect 6 Stalker Claws##4801 |q 756 |goto Mulgore 49.92,45.17 |tip {dropsfrom}Prairie Stalker
step
  talk Baine Bloodhoof##2993
  accept Rite of Vision##767 |goto Mulgore 47.51,60.16
step
  talk Grull Hawkwind##2980
  turnin The Battleboars##780 |goto Mulgore 44.88,77.07
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Thunderhorn Totem##756 |goto Mulgore 48.53,60.39
step
  talk Zarlman Two-Moons##3054
  turnin Rite of Vision##767 |goto Mulgore 47.76,57.53
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Thunderhorn Cleansing##758 |goto Mulgore 48.53,60.39
step
  talk Zarlman Two-Moons##3054
  accept Rite of Vision##771 |goto Mulgore 47.76,57.53
step
  note Collect 2 Well Stones and 2 Ambercorn and bring them back to Zarlman Two-Moons in Bloodhoof Village.
  collect 2 Well Stone##4808 |q 771 |goto Maraudon - Dungeon -1,-1 |tip {dropsfrom}Razorlash, Well Stone
step
  talk Zarlman Two-Moons##3054
  turnin Rite of Vision##771 |goto Mulgore 47.76,57.53
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Thunderhorn Cleansing##758 |goto Mulgore 48.53,60.39
step
  only Tauren
  talk Mull Thunderhorn##2948
  accept Wildmane Totem##759 |goto Mulgore 48.53,60.39
step
  only Tauren
  note Bring 8 Prairie Alpha Teeth to Mull Thunderhorn in Bloodhoof Village.
  collect 8 Prairie Alpha Tooth##4803 |q 759 |goto Mulgore 56.04,28.81 |tip {dropsfrom}Prairie Wolf Alpha
step
  talk Zarlman Two-Moons##3054
  accept Rite of Vision##772 |goto Mulgore 47.76,57.53
step
  talk Seer Wiserunner##2984
  turnin Rite of Vision##772 |goto Mulgore 32.71,36.09
step
  talk Seer Wiserunner##2984
  accept Rite of Wisdom##773 |goto Mulgore 32.71,36.09
step
  talk Ancestral Spirit##2994
  turnin Rite of Wisdom##773 |goto Mulgore 61.45,21.02
step
  talk Ancestral Spirit##2994
  accept Journey into Thunder Bluff##775 |goto Mulgore 61.45,21.02
step
  talk Cairne Bloodhoof##3057
  turnin Journey into Thunder Bluff##775 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  only Tauren
  talk Mull Thunderhorn##2948
  turnin Wildmane Totem##759 |goto Mulgore 48.53,60.39
step
  note {travel}Durotar
  goto Durotar 42.06,68.33
]])
