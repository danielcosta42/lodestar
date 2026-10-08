-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tirisfal Glades (5-10)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tirisfal Glades (13-21)",
}, [[
step
  only Undead
  talk Undertaker Mordo##1568
  accept Rude Awakening##363 |goto Tirisfal Glades 30.22,71.65
step
  only Warlock not completed(1485) not haveq(1485)
  talk Venya Marthand##5667
  accept Piercing the Veil##1470 |goto Tirisfal Glades 30.98,66.41
step
  only Undead Paladin
  talk Shadow Priest Sarvis##1569
  accept A Difficult Path##98601 |goto Tirisfal Glades 30.84,66.2
step
  talk Novice Elreth##1661
  accept The Damned##376 |goto Tirisfal Glades 30.86,66.05
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  accept Rediscovering the Light##90902 |goto Tirisfal Glades 31.09,66.32
step
  talk Aramis Hammerhand##244808
  accept A Light in the Darkness##98389 |goto Tirisfal Glades 31.09,66.32
step
  note Novice Elreth requires 6 Scavenger Paws and 6 Duskbat Wings.
  collect Scavenger Paw##3265 |q 376 |goto Tirisfal Glades 30.91,62.15 |tip {dropsfrom}Young Scavenger, Ragged Scavenger
step
  only Warlock not completed(1485) not haveq(1485)
  note Bring Venya Marthand 3 Rattlecage Skulls.
  collect Rattlecage Skull##6281 |q 1470 |goto Tirisfal Glades 32.91,61.62 |tip {dropsfrom}Rattlecage Skeleton
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin Rude Awakening##363 |goto Tirisfal Glades 30.84,66.2
step
  talk Novice Elreth##1661
  turnin The Damned##376 |goto Tirisfal Glades 30.86,66.05
step
  only Warlock not completed(1485) not haveq(1485)
  talk Venya Marthand##5667
  turnin Piercing the Veil##1470 |goto Tirisfal Glades 30.98,66.41
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  turnin Rediscovering the Light##90902 |goto Tirisfal Glades 31.09,66.32
step
  talk Aramis Hammerhand##244808
  turnin A Light in the Darkness##98389 |goto Tirisfal Glades 31.09,66.32
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  turnin A Difficult Path##98601 |goto Tirisfal Glades 31.09,66.32
step
  talk Shadow Priest Sarvis##1569
  accept The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  talk Executor Arren##1570
  accept Night Web's Hollow##380 |goto Tirisfal Glades 32.15,66.01
step
  talk Deathguard Saltain##1740
  accept Scavenging Deathknell##3902 |goto Tirisfal Glades 31.61,65.6
step
  note Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
  talk Mindless Zombie##1501 |q 364 |goto Tirisfal Glades 32.28,63.63
step
  note Executor Arren wants you to kill 10 Young Night Web Spiders and 8 Night Web Spiders.
  talk Young Night Web Spider##1504 |q 380 |goto Tirisfal Glades 28.32,57.43
step
  note Search Deathknell and the vicinity for 6 pieces of Scavenged Goods, and return them to Deathguard Saltain.
  collect Scavenged Goods##11127 |q 3902 |goto Tirisfal Glades 32.87,64.6 |tip {dropsfrom}Equipment Boxes
step
  talk Shadow Priest Sarvis##1569
  turnin The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  talk Executor Arren##1570
  turnin Night Web's Hollow##380 |goto Tirisfal Glades 32.15,66.01
step
  talk Deathguard Saltain##1740
  turnin Scavenging Deathknell##3902 |goto Tirisfal Glades 31.61,65.6
step
  only Undead Warrior
  talk Shadow Priest Sarvis##1569
  accept Simple Scroll##3095 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Rogue
  talk Shadow Priest Sarvis##1569
  accept Encrypted Scroll##3096 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Priest
  talk Shadow Priest Sarvis##1569
  accept Hallowed Scroll##3097 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Mage
  talk Shadow Priest Sarvis##1569
  accept Glyphic Scroll##3098 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Warlock
  talk Shadow Priest Sarvis##1569
  accept Tainted Scroll##3099 |goto Tirisfal Glades 30.84,66.2
step
  talk Shadow Priest Sarvis##1569
  accept Rattling the Rattlecages##3901 |goto Tirisfal Glades 30.84,66.2
step
  talk Executor Arren##1570
  accept The Scarlet Crusade##381 |goto Tirisfal Glades 32.15,66.01
step
  note Bring Executor Arren 12 Scarlet Armbands from Scarlet Converts and Scarlet Initiates.
  collect Scarlet Armband##3266 |q 381 |goto Tirisfal Glades 37.58,67.98 |tip {dropsfrom}Scarlet Convert, Scarlet Initiate, Meven Korgal
step
  note Kill 12 Rattlecage Skeletons, and then return to Shadow Priest Sarvis in Deathknell when you are done.
  talk Rattlecage Skeleton##1890 |q 3901 |goto Tirisfal Glades 32.91,61.62
step
  talk Executor Arren##1570
  turnin The Scarlet Crusade##381 |goto Tirisfal Glades 32.15,66.01
step
  only Undead Warrior
  talk Dannal Stern##2119
  turnin Simple Scroll##3095 |goto Tirisfal Glades 32.69,65.56
step
  only Undead Rogue
  talk David Trias##2122
  turnin Encrypted Scroll##3096 |goto Tirisfal Glades 32.53,65.65
step
  only Undead Priest
  talk Dark Cleric Duesten##2123
  turnin Hallowed Scroll##3097 |goto Tirisfal Glades 31.11,66.03
step
  only Undead Mage
  talk Isabella##2124
  turnin Glyphic Scroll##3098 |goto Tirisfal Glades 30.93,66.06
step
  only Undead Warlock
  talk Maximillion##2126
  turnin Tainted Scroll##3099 |goto Tirisfal Glades 30.91,66.34
step
  talk Shadow Priest Sarvis##1569
  turnin Rattling the Rattlecages##3901 |goto Tirisfal Glades 30.84,66.2
step
  talk Executor Arren##1570
  accept The Red Messenger##382 |goto Tirisfal Glades 32.15,66.01
step
  talk Novice Elreth##1661
  accept Marla's Last Wish##6395 |goto Tirisfal Glades 30.86,66.05
step
  note Kill Meven Korgal, the messenger, at the Crusader camp, then return any information you find to Executor Arren.
  collect Scarlet Crusade Documents##2885 |q 382 |goto Tirisfal Glades 36.57,68.54 |tip {dropsfrom}Meven Korgal
step
  note Bring Samuel Fipps' Remains to Marla's Grave, then return to Novice Elreth.
  collect Marla's Grave##178090 |q 6395 |goto Tirisfal Glades 31.17,65.08
step
  talk Executor Arren##1570
  turnin The Red Messenger##382 |goto Tirisfal Glades 32.15,66.01
step
  talk Novice Elreth##1661
  turnin Marla's Last Wish##6395 |goto Tirisfal Glades 30.86,66.05
step
  talk Executor Arren##1570
  accept Vital Intelligence##383 |goto Tirisfal Glades 32.15,66.01
step
  talk Calvin Montague##6784
  accept A Rogue's Deal##8 |goto Tirisfal Glades 38.23,56.79
step
  talk Innkeeper Renee##5688
  turnin A Rogue's Deal##8 |goto Tirisfal Glades 61.72,52.05
step
  talk Executor Zygand##1515
  turnin Vital Intelligence##383 |goto Tirisfal Glades 60.59,51.76
step
  talk Deathguard Dillinger##1496
  accept A Putrid Task##404 |goto Tirisfal Glades 58.2,51.45
step
  talk Executor Zygand##1515
  accept Discipline##99134 |goto Tirisfal Glades 60.59,51.76
step
  talk Executor Zygand##1515
  accept Patience##99141 |goto Tirisfal Glades 60.59,51.76
step
  note Obtain reports from Deathguard Dillinger, Deathguard Kristof, and Gordo for Executor Zygand.
  collect Dillinger's Report##286200 |q 99141 |goto Tirisfal Glades 60.59,51.76
step
  note Bring 7 Putrid Claws to Deathguard Dillinger in Brill.
  collect 7 Putrid Claw##2855 |q 404 |goto Tirisfal Glades 53.16,54.23 |tip {dropsfrom}Rotting Dead, Ravaged Corpse
step
  talk Deathguard Dillinger##1496
  turnin A Putrid Task##404 |goto Tirisfal Glades 58.2,51.45
step
  talk Executor Zygand##1515
  turnin Discipline##99134 |goto Tirisfal Glades 60.59,51.76
step
  talk Executor Zygand##1515
  turnin Patience##99141 |goto Tirisfal Glades 60.59,51.76
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  accept Coming to Terms##91208 |goto Tirisfal Glades 31.09,66.32
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  accept Continue Your Training##91209 |goto Tirisfal Glades 31.09,66.32
step
  only not completed(96627) not completed(96628) not completed(96630) not completed(96638) not completed(96652) not completed(96659) not haveq(96627) not haveq(96628) not haveq(96630) not haveq(96638) not haveq(96652) not haveq(96659)
  talk Executor Arren##1570
  accept The Adventurer##96656 |goto Tirisfal Glades 32.15,66.01
step
  only Undead Paladin
  talk Aramis Hammerhand##244808
  turnin Coming to Terms##91208 |goto Tirisfal Glades 31.09,66.32
step
  talk Calvin Montague##6784
  accept A Rogue's Deal##590 |goto Tirisfal Glades 38.23,56.79
step
  talk Calvin Montague##6784
  turnin A Rogue's Deal##590 |goto Tirisfal Glades 38.23,56.79
step
  only Undead Paladin
  talk Shari Stilwell##246152
  turnin Continue Your Training##91209 |goto Tirisfal Glades 60.25,52.63
step
  only not completed(96627) not completed(96628) not completed(96630) not completed(96638) not completed(96652) not completed(96659) not haveq(96627) not haveq(96628) not haveq(96630) not haveq(96638) not haveq(96652) not haveq(96659)
  talk Eleanor Shackleton##265812
  turnin The Adventurer##96656 |goto Tirisfal Glades 57.23,55.47
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96608)
  talk Eleanor Shackleton##265812
  accept The Great Outdoors##96607 |goto Tirisfal Glades 57.23,55.47
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96608)
  note Sit near Eleanor's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  collect Basic Campfire##450008 |q 96607 |goto Tirisfal Glades 57.17,55.55
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96608)
  talk Eleanor Shackleton##265812
  turnin The Great Outdoors##96607 |goto Tirisfal Glades 57.23,55.47
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96661)
  talk Eleanor Shackleton##265812
  accept Camping 101: Cooking##96658 |goto Tirisfal Glades 57.23,55.47
step
  talk Deathguard Bartholomew##1742
  accept Sticks and Bones##86784 |goto Tirisfal Glades 58.47,51.39
step
  note Collect 6 Dry Branches and bring them to Eleanor Shackleton.
  collect 6 Dry Branch##279991 |q 86784 |goto Tirisfal Glades 56.1,53.4
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96661)
  note Speak with William Pickman in Brill to learn to become a cook.
  talk William Pickman##265944 |q 96658 |goto Tirisfal Glades 61.77,51.51
step
  talk Eleanor Shackleton##265812
  turnin Sticks and Bones##86784 |goto Tirisfal Glades 57.23,55.47
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96661)
  talk William Pickman##265944
  turnin Camping 101: Cooking##96658 |goto Tirisfal Glades 61.77,51.51
step
  only Undead Priest
  talk Dark Cleric Duesten##2123
  accept In Favor of Darkness##5651 |goto Tirisfal Glades 31.11,66.03
step
  talk Deathguard Simmer##1519
  accept Fields of Grief##365 |goto Tirisfal Glades 40.91,54.17
step
  talk Gordo##10666
  accept Gordo's Task##5481 |goto Tirisfal Glades 43.06,54.69
step
  note Collect 3 Gloom Weed and deliver them to Junior Apothecary Holland in the Brill graveyard.
  collect 3 Gloom Weed##12737 |q 5481 |goto Tirisfal Glades 48.7,54.9
step
  kill Rattlecage Soldier##1520 |goto Tirisfal Glades 45.84,40.43 |tip Loot the quest item here — it starts the quest.
  accept A Letter Undelivered##361 |goto Tirisfal Glades 45.84,40.43
step
  talk Bareth Dawnstone##275954
  accept Seeking Refuge##99144 |goto Tirisfal Glades 31.96,46.34
step
  note Steal 10 pumpkins from the farm to the west, just north of Deathknell and take them to Apothecary Johaan in Brill.
  collect Tirisfal Pumpkin##2846 |q 365 |goto Tirisfal Glades 35.86,50.49
step
  talk Yvette Farthing##1560
  turnin A Letter Undelivered##361 |goto Tirisfal Glades 61.58,52.6
step
  talk Apothecary Johaan##1518
  turnin Fields of Grief##365 |goto Tirisfal Glades 59.45,52.4
step
  talk Junior Apothecary Holland##10665
  turnin Gordo's Task##5481 |goto Tirisfal Glades 57.44,48.85
step
  only Undead Priest
  talk Dark Cleric Beryl##2129
  turnin In Favor of Darkness##5651 |goto Tirisfal Glades 61.57,52.19
step
  talk Shari Stilwell##246152
  turnin Seeking Refuge##99144 |goto Tirisfal Glades 60.25,52.63
step
  talk Apothecary Johaan##1518
  accept Fields of Grief##407 |goto Tirisfal Glades 59.45,52.4
step
  talk Junior Apothecary Holland##10665
  accept Doom Weed##5482 |goto Tirisfal Glades 57.44,48.85
step
  only Undead Priest
  talk Dark Cleric Beryl##2129
  accept Garments of Darkness##5650 |goto Tirisfal Glades 61.57,52.19
step
  only Undead Priest
  note Find Deathguard Kel and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Dark Cleric Beryl in Brill.
  talk Deathguard Kel##12428 |q 5650 |goto Tirisfal Glades 59.18,46.5
step
  talk Captured Scarlet Zealot##1931
  turnin Fields of Grief##407 |goto Tirisfal Glades 61.97,51.29
step
  only Undead Priest
  talk Dark Cleric Beryl##2129
  turnin Garments of Darkness##5650 |goto Tirisfal Glades 61.57,52.19
step
  note Collect 10 Doom Weed and deliver them back to Junior Apothecary Holland.
  collect 10 Doom Weed##13702 |q 5482 |goto Tirisfal Glades 57.14,39.77
step
  talk Junior Apothecary Holland##10665
  turnin Doom Weed##5482 |goto Tirisfal Glades 57.44,48.85
step
  talk Magistrate Sevren##1499
  accept Graverobbers##358 |goto Tirisfal Glades 61.26,50.84
step
  talk Apothecary Johaan##1518
  accept A New Plague##367 |goto Tirisfal Glades 59.45,52.4
step
  talk Deathguard Dillinger##1496
  accept The Mills Overrun##426 |goto Tirisfal Glades 58.2,51.45
step
  talk Executor Zygand##1515
  accept At War With The Scarlet Crusade##427 |goto Tirisfal Glades 60.59,51.76
step
  note Kill Rot Hide Graverobbers and Rot Hide Mongrels.
  kill Rot Hide Graverobber##1941 |q 358 |goto Tirisfal Glades 55.78,42.27
step
  note Apothecary Johaan in the town of Brill wants you to collect 5 Vials of Darkhound Blood.
  collect 5 Darkhound Blood##2858 |q 367 |goto Tirisfal Glades 57.81,52.71 |tip {dropsfrom}Decrepit Darkhound, Cursed Darkhound, Ravenous Darkhound
step
  talk Magistrate Sevren##1499
  turnin Graverobbers##358 |goto Tirisfal Glades 61.26,50.84
step
  talk Apothecary Johaan##1518
  turnin A New Plague##367 |goto Tirisfal Glades 59.45,52.4
step
  talk Magistrate Sevren##1499
  accept The Prodigal Lich##405 |goto Tirisfal Glades 61.26,50.84
step
  note Gather 5 Notched Ribs and 3 Blackened Skulls, then return to Deathguard Dillinger in Brill.
  collect 5 Notched Rib##3162 |q 426 |goto Tirisfal Glades 45.84,40.43 |tip {dropsfrom}Rattlecage Soldier, Cracked Skull Soldier
step
  note Executor Zygand of Brill wants you to kill 10 Scarlet Warriors.
  kill Scarlet Warrior##1535 |q 427 |goto Tirisfal Glades 32.08,47.4
step
  talk Deathguard Dillinger##1496
  turnin The Mills Overrun##426 |goto Tirisfal Glades 58.2,51.45
step
  talk Executor Zygand##1515
  turnin At War With The Scarlet Crusade##427 |goto Tirisfal Glades 60.59,51.76
step
  talk Deathguard Burgess##1652
  accept Proof of Demise##374 |goto Tirisfal Glades 60.93,52.01
step
  note Bring 10 Scarlet Insignia Rings to Deathguard Burgess in Brill.
  collect 10 Scarlet Insignia Ring##2875 |q 374 |goto Tirisfal Glades 32.08,47.4 |tip {dropsfrom}Scarlet Warrior, Scarlet Missionary, Scarlet Zealot
step
  talk Deathguard Burgess##1652
  turnin Proof of Demise##374 |goto Tirisfal Glades 60.93,52.01
step
  talk Gretchen Dedmar##1521
  accept The Chill of Death##375 |goto Tirisfal Glades 61.89,52.73
step
  talk Coleman Farthing##1500
  accept The Haunted Mills##362 |goto Tirisfal Glades 61.72,52.29
step
  click Wanted!##711
  accept Wanted: Maggot Eye##398 |goto Tirisfal Glades 60.74,51.5
step
  talk Carolai Anise##2132
  accept That Shadowvale Green Elixir##95314 |goto Tirisfal Glades 59.43,52.19
step
  kill Whispering Horror##260396 |goto Tirisfal Glades 9.37,59.94 |tip Loot the quest item here — it starts the quest.
  accept Whispering Horror Residue##95328 |goto Tirisfal Glades 9.37,59.94
step
  talk Hilda the Breaker##246389
  accept As Above, So Below##99152 |goto Tirisfal Glades 22.03,47.23
step
  talk Ephram Barbaro##259190
  accept The One That Got Away##99153 |goto Tirisfal Glades 20.23,46.55
step
  talk Coleman Farthing##1500
  accept Deaths in the Family##354 |goto Tirisfal Glades 61.72,52.29
step
  talk Deathguard Linnea##1495
  accept Rear Guard Patrol##356 |goto Tirisfal Glades 65.49,60.25
step
  talk Apothecary Johaan##1518
  accept Delivery to Silverpine Forest##445 |goto Tirisfal Glades 59.45,52.4
step
  only Undead Paladin
  talk Shari Stilwell##246152
  accept A Second Home##91282 |goto Tirisfal Glades 60.25,52.63
step
  only Undead Paladin
  talk Breton Samuels##246349
  accept Murlocs at the Gates##91285 |goto Tirisfal Glades 21.85,45.31
step
  only Undead Paladin
  talk Breton Samuels##246349
  accept Touring the Grounds##91294 |goto Tirisfal Glades 21.85,45.31
step
  only Undead Paladin
  talk Jorin Croge##246393
  accept Making Repairs##91316 |goto Tirisfal Glades 22.65,44.77
step
  talk Shelene Rhobart##3549
  accept Hides for the Forsaken##97558 |goto Tirisfal Glades 65.43,60.12
step
  talk Junior Apothecary Holland##10665
  accept Tomb Weed##99142 |goto Tirisfal Glades 57.44,48.85
step
  only Warlock
  talk Ageron Kargal##5724
  accept Halgar's Summons##1478 |goto Tirisfal Glades 61.62,52.68
step
  only Warrior not completed(1498) not haveq(1498)
  talk Austil de Mon##2131
  accept Speak with Dillinger##1818 |goto Tirisfal Glades 61.85,52.54
step
  only not Orc not Tauren not Skyborne Mage not completed(1884) not haveq(1884)
  talk Cain Firesong##2128
  accept Speak with Anastasia##1881 |goto Tirisfal Glades 61.97,52.47
step
  only Undead Rogue not completed(1859) not haveq(1859)
  talk Marion Call##2130
  accept Mennet Carkad##1885 |goto Tirisfal Glades 61.75,52
step
  only Troll Priest not completed(5652) not completed(5654) not completed(5655) not completed(5656) not haveq(5652) not haveq(5654) not haveq(5655) not haveq(5656)
  talk Aelthalyste##4606
  accept Hex of Weakness##5657 |goto Undercity 49.26,17.12
step
  only Undead Priest not completed(5660) not completed(5661) not completed(5662) not completed(5663) not haveq(5660) not haveq(5661) not haveq(5662) not haveq(5663)
  talk Aelthalyste##4606
  accept Touch of Weakness##5658 |goto Undercity 49.26,17.12
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept The Tarnished##91317 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept A Token of Good Faith##95803 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept A Lesson in Divinity##94427 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept A Lesson in Divinity##94436 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  accept A Lesson in Divinity##94438 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Deathguard Falgan##257663
  accept A Lesson in Divinity##94440 |goto Tirisfal Glades 86.67,47.74
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  accept A Lesson in Divinity##94441 |goto Tirisfal Glades 21.95,44.57
step
  note Bring five Duskbat Pelts and some Coarse Thread to Gretchen Dedmar in Brill.
  collect Duskbat Pelt##2876 |q 375 |goto Tirisfal Glades 57.09,54.21 |tip {dropsfrom}Greater Duskbat, Vampiric Duskbat
step
  note Slay Devlin Agamand, and bring Devlin's Remains to Coleman Farthing in Brill.
  collect Devlin's Remains##2831 |q 362 |goto Tirisfal Glades 47.34,40.78 |tip {dropsfrom}Devlin Agamand
step
  note Kill Maggot Eye and return to Executor Zygand in Brill with his paw for a reward.
  collect Maggot Eye's Paw##3635 |q 398 |goto Tirisfal Glades 58.66,30.77 |tip {dropsfrom}Maggot Eye
step
  note Collect 8 Bottles of Whispering Elixir from Shadowvale, then return to Carolai Anise in Brill.
  collect 8 Bottle of Whispering Elixir##268801 |q 95314 |goto Tirisfal Glades 9.5,62 |tip {dropsfrom}Bottle
step
  note Deliver Whispering Horror Residue to Father Lankester in the War Quarter of Undercity.
  collect Whispering Horror Residue##268812 |q 95328 |goto Tirisfal Glades 9.37,59.94 |tip {dropsfrom}Whispering Horror
step
  note Collect 6 Faintly Glowing Bones for Hilda the Breaker.
  collect 6 Faintly Glowing Bone##286259 |q 99152 |goto Tirisfal Glades 10.06,66.33 |tip {dropsfrom}Shadowvale Lurcher, Shadowvale Mystic
step
  note Find the Hidden Crystal Fragment beneath Shadowvale for Ephram Barbaro.
  collect Glowing Crystal Fragment##286269 |q 99153 |goto Tirisfal Glades 9.8,69.3
step
  note Bring Gregor's Remains, Nissa's Remains and Thurman's Remains to Coleman Farthing in Brill.
  collect Gregor's Remains##2829 |q 354 |goto Tirisfal Glades 46.74,29.31 |tip {dropsfrom}Gregor Agamand
step
  note Kill 8 Bleeding Horrors and 8 Wandering Spirits, then report back to Linnea at her camp.
  kill Bleeding Horror##1529 |q 356 |goto Tirisfal Glades 76.14,61.08
step
  only Undead Paladin
  note Slay 8 Vile Fin Attackers and 8 Vile Fin Seers and report back to Breton Samuels when it is done.
  kill Vile Fin Attacker##250283 |q 91285 |goto Tirisfal Glades 14.69,55.39
step
  only Undead Paladin
  note Collect 12 pieces of Sturdy Lumber from Shadowvale in Tirisfal Glades.
  collect 12 Sturdy Lumber##246213 |q 91316 |goto Tirisfal Glades 10,66.4 |tip {dropsfrom}Lumber Pile
step
  note Bring Shelene Rhobart 8 Duskbat Wing Membranes, 6 Darkhound Hides and 3 Vile Fin Murloc Skin.
  collect Duskbat Wing Membrane##278242 |q 97558 |goto Tirisfal Glades 57.09,54.21 |tip {dropsfrom}Greater Duskbat, Vampiric Duskbat
step
  note Collect 5 Tomb Weed and deliver them back to Junior Apothecary Holland.
  collect 5 Tomb Weed##286204 |q 99142 |goto Tirisfal Glades 76.3,60.8
step
  only Undead Paladin
  note Slay 8 Tarnished Drudges, 6 Tarnished Zealots, and collect the head of Commander Rudolph Gelhardt in Tirisfal Glades.
  talk Tarnished Drudge##259434 |q 91317 |goto Tirisfal Glades 12.98,64.03
step
  only Undead Paladin
  note Retrieve the Scarlet Crusade Attack Plans from the Scarlet Crusaders at Venomweb Vale, and return to Deathguard Billmuth at Tyr's Watch.
  collect Scarlet Crusade Attack Plans##264693 |q 94440 |goto Tirisfal Glades 78.38,56.03 |tip {dropsfrom}Scarlet Zealot, Scarlet Friar, Tarnished Exemplar
step
  talk Gretchen Dedmar##1521
  turnin The Chill of Death##375 |goto Tirisfal Glades 61.89,52.73
step
  talk Coleman Farthing##1500
  turnin The Haunted Mills##362 |goto Tirisfal Glades 61.72,52.29
step
  talk Executor Zygand##1515
  turnin Wanted: Maggot Eye##398 |goto Tirisfal Glades 60.59,51.76
step
  talk Carolai Anise##2132
  turnin That Shadowvale Green Elixir##95314 |goto Tirisfal Glades 59.43,52.19
step
  talk Father Lankester##4607
  turnin Whispering Horror Residue##95328 |goto Undercity 49.14,14.61 |tip {turninat}Undercity
step
  talk Hilda the Breaker##246389
  turnin As Above, So Below##99152 |goto Tirisfal Glades 22.03,47.23
step
  talk Ephram Barbaro##259190
  turnin The One That Got Away##99153 |goto Tirisfal Glades 20.23,46.55
step
  talk Coleman Farthing##1500
  turnin Deaths in the Family##354 |goto Tirisfal Glades 61.72,52.29
step
  talk Deathguard Linnea##1495
  turnin Rear Guard Patrol##356 |goto Tirisfal Glades 65.49,60.25
step
  talk Apothecary Renferrel##1937
  turnin Delivery to Silverpine Forest##445 |goto Silverpine Forest 42.8,40.86 |tip {turninat}Silverpine Forest
step
  only Undead Paladin
  talk Breton Samuels##246349
  turnin A Second Home##91282 |goto Tirisfal Glades 21.85,45.31
step
  only Undead Paladin
  talk Breton Samuels##246349
  turnin Murlocs at the Gates##91285 |goto Tirisfal Glades 21.85,45.31
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin Touring the Grounds##91294 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Jorin Croge##246393
  turnin Making Repairs##91316 |goto Tirisfal Glades 22.65,44.77
step
  talk Shelene Rhobart##3549
  turnin Hides for the Forsaken##97558 |goto Tirisfal Glades 65.43,60.12
step
  talk Junior Apothecary Holland##10665
  turnin Tomb Weed##99142 |goto Tirisfal Glades 57.44,48.85
step
  only Warlock
  talk Carendin Halgar##5675
  turnin Halgar's Summons##1478 |goto Undercity 85.06,25.99 |tip {turninat}Undercity
step
  only Warrior not completed(1498) not haveq(1498)
  talk Deathguard Dillinger##1496
  turnin Speak with Dillinger##1818 |goto Tirisfal Glades 58.2,51.45
step
  only not Orc not Tauren not Skyborne Mage not completed(1884) not haveq(1884)
  talk Anastasia Hartwell##4568
  turnin Speak with Anastasia##1881 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  only Undead Rogue not completed(1859) not haveq(1859)
  talk Mennet Carkad##6467
  turnin Mennet Carkad##1885 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Troll Priest not completed(5652) not completed(5654) not completed(5655) not completed(5656) not haveq(5652) not haveq(5654) not haveq(5655) not haveq(5656)
  talk Ur'kyo##6018
  turnin Hex of Weakness##5657 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only Undead Priest not completed(5660) not completed(5661) not completed(5662) not completed(5663) not haveq(5660) not haveq(5661) not haveq(5662) not haveq(5663)
  talk Aelthalyste##4606
  turnin Touch of Weakness##5658 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin The Tarnished##91317 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Lady Sylvanas Windrunner##10181
  turnin A Token of Good Faith##95803 |goto Undercity 58.05,91.79 |tip {turninat}Undercity
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  turnin A Lesson in Divinity##94427 |goto Undercity 65.62,37.94 |tip {turninat}Undercity
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  turnin A Lesson in Divinity##94436 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Deathguard Falgan##257663
  turnin A Lesson in Divinity##94438 |goto Tirisfal Glades 86.67,47.74
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  turnin A Lesson in Divinity##94440 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin A Lesson in Divinity##94441 |goto Tirisfal Glades 22.05,44.7
step
  talk Bethor Iceshard##1498
  turnin The Prodigal Lich##405 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Magistrate Sevren##1499
  accept Forsaken Duties##359 |goto Tirisfal Glades 61.26,50.84
step
  talk Apothecary Johaan##1518
  accept A New Plague##368 |goto Tirisfal Glades 59.45,52.4
step
  talk Executor Zygand##1515
  accept At War With The Scarlet Crusade##370 |goto Tirisfal Glades 60.59,51.76
step
  talk Coleman Farthing##1500
  accept Speak with Sevren##355 |goto Tirisfal Glades 61.72,52.29
step
  only Undead Warlock
  talk Carendin Halgar##5675
  accept Creature of the Void##1473 |goto Undercity 85.06,25.99
step
  only Warrior not completed(1498) not haveq(1498)
  talk Deathguard Dillinger##1496
  accept Ulag the Cleaver##1819 |goto Tirisfal Glades 58.2,51.45
step
  only not Orc not Tauren not Skyborne Mage not completed(1884) not haveq(1884)
  talk Anastasia Hartwell##4568
  accept The Balnir Farmstead##1882 |goto Undercity 85.14,10.03
step
  note Apothecary Johaan of the town of Brill needs 5 Vile Fin Scales from Murlocs in Tirisfal Glades.
  collect Vile Fin Scale##2859 |q 368 |goto Tirisfal Glades 62.63,30.69 |tip {dropsfrom}Vile Fin Puddlejumper, Vile Fin Minor Oracle, Vile Fin Muckdweller
step
  note Executor Zygand in Brill wants you to kill Captain Perrine, 3 Scarlet Zealots and 3 Scarlet Missionaries.
  kill Captain Perrine##1662 |q 370 |goto Tirisfal Glades 51.14,67.8
step
  only Undead Warlock
  note Recover Egalin's Grimoire and bring it to Carendin Halgar in the Temple of the Damned.
  collect Egalin's Grimoire##6285 |q 1473 |goto Tirisfal Glades 51.06,67.57 |tip {dropsfrom}Perrine's Chest
step
  only Warrior not completed(1498) not haveq(1498)
  note Kill Ulag the Cleaver, then speak with Deathguard Dillinger.
  kill Ulag the Cleaver##6390 |q 1819 |goto Tirisfal Glades 59.47,48.28
step
  only not Orc not Tauren not Skyborne Mage not completed(1884) not haveq(1884)
  note Bring Balnir Snapdragons to Anastasia Hartwell in the Mage Quarter of the Undercity.
  collect Balnir Snapdragons##7227 |q 1882 |goto Tirisfal Glades 77.59,62.01
step
  talk Deathguard Linnea##1495
  turnin Forsaken Duties##359 |goto Tirisfal Glades 65.49,60.25
step
  talk Apothecary Johaan##1518
  turnin A New Plague##368 |goto Tirisfal Glades 59.45,52.4
step
  talk Executor Zygand##1515
  turnin At War With The Scarlet Crusade##370 |goto Tirisfal Glades 60.59,51.76
step
  talk Magistrate Sevren##1499
  turnin Speak with Sevren##355 |goto Tirisfal Glades 61.26,50.84
step
  only Undead Warlock
  talk Carendin Halgar##5675
  turnin Creature of the Void##1473 |goto Undercity 85.06,25.99 |tip {turninat}Undercity
step
  only Warrior not completed(1498) not haveq(1498)
  talk Deathguard Dillinger##1496
  turnin Ulag the Cleaver##1819 |goto Tirisfal Glades 58.2,51.45
step
  only not Orc not Tauren not Skyborne Mage not completed(1884) not haveq(1884)
  talk Anastasia Hartwell##4568
  turnin The Balnir Farmstead##1882 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  accept The Lich's Identity##357 |goto Undercity 84.07,17.45
step
  talk Deathguard Linnea##1495
  accept Return to the Magistrate##360 |goto Tirisfal Glades 65.49,60.25
step
  talk Executor Zygand##1515
  accept At War With The Scarlet Crusade##371 |goto Tirisfal Glades 60.59,51.76
step
  talk Apothecary Johaan##1518
  accept A New Plague##369 |goto Tirisfal Glades 59.45,52.4
step
  only Undead Warlock
  talk Carendin Halgar##5675
  accept The Binding##1471 |goto Undercity 85.06,25.99
step
  only Undead Warlock
  note Using the Runes of Summoning, summon and subdue a voidwalker, then return the Runes of Summoning to Carendin Halgar in the Magic Quarter of the Undercity.
  use Summoned Voidwalker##5676 |q 1471 |tip {useit}
step
  only Warrior
  talk Deathguard Dillinger##1496
  accept Speak with Coleman##1820 |goto Tirisfal Glades 58.2,51.45
step
  only Warrior
  talk Coleman Farthing##1500
  accept Agamand Heirlooms##1821 |goto Tirisfal Glades 61.72,52.29
step
  note Bring the Lich's Spellbook to Bethor Iceshard in the Undercity.
  collect The Lich's Spellbook##2833 |q 357 |goto Tirisfal Glades 67.96,42.09 |tip {dropsfrom}Gunther's Books
step
  note Executor Zygand in Brill has commissioned you to slay Captain Vachon and 5 Scarlet Friars.
  kill Captain Vachon##1664 |q 371 |goto Tirisfal Glades 78.82,56.13
step
  note Apothecary Johaan in the town of Brill wants you to bring him 4 samples of venom from a Vicious Night Web Spider.
  collect Vicious Night Web Spider Venom##2872 |q 369 |goto Tirisfal Glades 86.74,53.2 |tip {dropsfrom}Vicious Night Web Spider
step
  only Warrior
  note Bring Coleman Farthing the Agamand Family Axe, the Agamand Family Sword, the Agamand Family Mace and the Agamand Family dagger.
  collect Agamand Family Axe##7567 |q 1821 |goto Tirisfal Glades 51.68,25.69 |tip {dropsfrom}Agamand Weapon Rack
step
  talk Bethor Iceshard##1498
  turnin The Lich's Identity##357 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Magistrate Sevren##1499
  turnin Return to the Magistrate##360 |goto Tirisfal Glades 61.26,50.84
step
  talk Executor Zygand##1515
  turnin At War With The Scarlet Crusade##371 |goto Tirisfal Glades 60.59,51.76
step
  talk Apothecary Johaan##1518
  turnin A New Plague##369 |goto Tirisfal Glades 59.45,52.4
step
  only Undead Warlock
  talk Carendin Halgar##5675
  turnin The Binding##1471 |goto Undercity 85.06,25.99 |tip {turninat}Undercity
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Speak with Coleman##1820 |goto Tirisfal Glades 61.72,52.29
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Agamand Heirlooms##1821 |goto Tirisfal Glades 61.72,52.29
step
  talk Bethor Iceshard##1498
  accept Return the Book##366 |goto Undercity 84.07,17.45
step
  talk Apothecary Johaan##1518
  accept A New Plague##492 |goto Tirisfal Glades 59.45,52.4
step
  talk Executor Zygand##1515
  accept At War With The Scarlet Crusade##372 |goto Tirisfal Glades 60.59,51.76
step
  only Warrior
  talk Coleman Farthing##1500
  accept Heirloom Weapon##1822 |goto Tirisfal Glades 61.72,52.29
step
  note Executor Zygand in the town of Brill wants you to assassinate Captain Melrache and his two bodyguards.
  kill Captain Melrache##1665 |q 372 |goto Tirisfal Glades 79.52,25.15
step
  talk Gunther Arcanus##1497
  turnin Return the Book##366 |goto Tirisfal Glades 68.2,41.92
step
  talk Captured Mountaineer##2211
  turnin A New Plague##492 |goto Tirisfal Glades 61.94,51.4
step
  talk Executor Zygand##1515
  turnin At War With The Scarlet Crusade##372 |goto Tirisfal Glades 60.59,51.76
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Heirloom Weapon##1822 |goto Tirisfal Glades 61.72,52.29
step
  talk Gunther Arcanus##1497
  accept Proving Allegiance##409 |goto Tirisfal Glades 68.2,41.92
step
  note Obtain a Candle of Beckoning.
  kill Lillith Nefara##1946 |q 409 |goto Tirisfal Glades 66.67,44.97
step
  talk Gunther Arcanus##1497
  turnin Proving Allegiance##409 |goto Tirisfal Glades 68.2,41.92
step
  talk Gunther Arcanus##1497
  accept The Prodigal Lich Returns##411 |goto Tirisfal Glades 68.2,41.92
step
  talk Bethor Iceshard##1498
  turnin The Prodigal Lich Returns##411 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  note {travel}Undercity
  goto Undercity 83.51,69.11
]])
