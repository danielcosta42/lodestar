-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tirisfal Glades (4-58)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Silverpine Forest (11-20)",
}, [[
step
  talk Coleman Farthing##1500
  accept Deaths in the Family##354 |goto Tirisfal Glades 61.72,52.29
step
  talk Deathguard Linnea##1495
  accept Rear Guard Patrol##356 |goto Tirisfal Glades 65.49,60.25
step
  talk Magistrate Sevren##1499
  accept Graverobbers##358 |goto Tirisfal Glades 61.26,50.84
step
  talk Coleman Farthing##1500
  accept The Haunted Mills##362 |goto Tirisfal Glades 61.72,52.29
step
  only Undead
  talk Apothecary Johaan##1518
  accept A New Plague##367 |goto Tirisfal Glades 59.45,52.4
step
  talk Gretchen Dedmar##1521
  accept The Chill of Death##375 |goto Tirisfal Glades 61.89,52.73
step
  talk Deathguard Dillinger##1496
  accept A Putrid Task##404 |goto Tirisfal Glades 58.2,51.45
step
  talk Magistrate Sevren##1499
  accept Raleigh and the Undercity##441 |goto Tirisfal Glades 61.26,50.84
step
  talk Apothecary Johaan##1518
  accept Delivery to Silverpine Forest##445 |goto Tirisfal Glades 59.45,52.4
step
  only Warrior
  talk Austil de Mon##2131
  accept Speak with Dillinger##1818 |goto Tirisfal Glades 61.85,52.54
step
  only Warlock
  talk Cain Firesong##2128
  accept Speak with Anastasia##1881 |goto Tirisfal Glades 61.97,52.47
step
  only Rogue
  talk Marion Call##2130
  accept Mennet Carkad##1885 |goto Tirisfal Glades 61.75,52.0
step
  talk Elder Graveborn##15568
  accept Graveborn the Elder##8652 |goto Tirisfal Glades 61.87,53.84
step
  talk Deathguard Tor##16003
  accept Dearest Elenia,##8902 |goto Tirisfal Glades 60.66,59.48
step
  note Kill Rot Hide Graverobbers and Rot Hide Mongrels.
  kill Rot Hide Graverobber##1941 |q 358 |goto Tirisfal Glades 55.78,42.56
step
  talk Elenia Haydon##16004
  turnin Dearest Elenia,##8902 |goto Undercity 66.93,45.24 |tip {turninat}Undercity
step
  only Warlock
  talk Anastasia Hartwell##4568
  turnin Speak with Anastasia##1881 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  talk Raleigh Andrean##2050
  turnin Raleigh and the Undercity##441 |goto Undercity 62.01,42.75 |tip {turninat}Undercity
step
  talk Gunther Arcanus##1497
  accept Proving Allegiance##409 |goto Tirisfal Glades 68.2,41.92
step
  talk Apothecary Renferrel##1937
  turnin Delivery to Silverpine Forest##445 |goto Silverpine Forest 42.8,40.86 |tip {turninat}Silverpine Forest
step
  talk Calvin Montague##6784
  accept A Rogue's Deal##8 |goto Tirisfal Glades 38.23,56.79
step
  talk Deathguard Simmer##1519
  accept Fields of Grief##365 |goto Tirisfal Glades 40.91,54.17
step
  talk Gordo##10666
  accept Gordo's Task##5481 |goto Tirisfal Glades 43.06,54.69
step
  only Undead
  talk Undertaker Mordo##1568
  accept Rude Awakening##363 |goto Tirisfal Glades 30.22,71.65
step
  talk Novice Elreth##1661
  accept The Damned##376 |goto Tirisfal Glades 30.86,66.05
step
  only Undead Priest
  talk Dark Cleric Duesten##2123
  accept In Favor of Darkness##5651 |goto Tirisfal Glades 31.11,66.03
step
  only Rogue
  talk Mennet Carkad##6467
  turnin Mennet Carkad##1885 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  talk High Executor Derrington##10837
  accept Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  talk Shadow Priestess Vandis##11055
  accept Target: Dalson's Tears##5231 |goto Tirisfal Glades 83.04,71.91
step
  talk Shadow Priestess Vandis##11055
  accept Target: Writhing Haunt##5233 |goto Tirisfal Glades 83.04,71.91
step
  talk Shadow Priestess Vandis##11055
  accept Target: Gahrron's Withering##5235 |goto Tirisfal Glades 83.04,71.91
step
  talk High Executor Derrington##10837
  accept Mission Accomplished!##5237 |goto Tirisfal Glades 83.13,68.94
step
  talk Alexi Barov##11022
  accept Barov Family Fortune##5341 |goto Tirisfal Glades 83.06,71.6
step
  talk Argent Officer Garush##10839
  accept Argent Dawn Commission##5503 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Quartermaster Hasana##10856
  accept Mantles of the Dawn##5504 |goto Tirisfal Glades 83.26,68.14
step
  talk Argent Quartermaster Hasana##10856
  accept Chromatic Mantle of the Dawn##5524 |goto Tirisfal Glades 83.26,68.14
step
  talk Apothecary Dithers##11057
  accept Araj's Scarab##5804 |goto Tirisfal Glades 83.28,69.23
step
  talk Mickey Levine##11615
  accept A Plague Upon Thee##5901 |goto Tirisfal Glades 83.29,72.34
step
  talk Mehlar Dawnblade##17099
  accept The So-Called Mark of the Lightbringer##9443 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Mehlar Dawnblade##17099
  accept Prove Your Hatred##10590 |goto Tirisfal Glades 83.22,71.32
step
  note Kill 8 Bleeding Horrors and 8 Wandering Spirits, then report back to Linnea at her camp.
  kill Bleeding Horror##1529 |q 356 |goto Tirisfal Glades 76.51,61.08
step
  talk Innkeeper Renee##5688
  turnin A Rogue's Deal##8 |goto Tirisfal Glades 61.71,52.05
step
  only Undead Priest
  talk Dark Cleric Beryl##2129
  turnin In Favor of Darkness##5651 |goto Tirisfal Glades 61.57,52.19
step
  talk Deathguard Dillinger##1496
  turnin A Putrid Task##404 |goto Tirisfal Glades 58.2,51.45
step
  only Warrior
  talk Deathguard Dillinger##1496
  turnin Speak with Dillinger##1818 |goto Tirisfal Glades 58.2,51.45
step
  talk Elder Graveborn##15568
  turnin Graveborn the Elder##8652 |goto Tirisfal Glades 61.87,53.84
step
  talk Coleman Farthing##1500
  turnin Deaths in the Family##354 |goto Tirisfal Glades 61.72,52.29
step
  talk Deathguard Linnea##1495
  turnin Rear Guard Patrol##356 |goto Tirisfal Glades 65.49,60.25
step
  talk Magistrate Sevren##1499
  turnin Graverobbers##358 |goto Tirisfal Glades 61.26,50.84
step
  talk Junior Apothecary Holland##10665
  turnin Gordo's Task##5481 |goto Tirisfal Glades 57.44,48.85
step
  talk Coleman Farthing##1500
  turnin The Haunted Mills##362 |goto Tirisfal Glades 61.72,52.29
step
  talk Apothecary Johaan##1518
  turnin Fields of Grief##365 |goto Tirisfal Glades 59.45,52.4
step
  only Undead
  talk Apothecary Johaan##1518
  turnin A New Plague##367 |goto Tirisfal Glades 59.45,52.4
step
  turnin Target: Writhing Haunt##5233 |goto Western Plaguelands 53.02,65.61 |tip {turninat}Western Plaguelands
step
  turnin Target: Gahrron's Withering##5235 |goto Western Plaguelands 62.54,58.47 |tip {turninat}Western Plaguelands
step
  talk Gretchen Dedmar##1521
  turnin The Chill of Death##375 |goto Tirisfal Glades 61.89,52.73
step
  talk Coleman Farthing##1500
  accept Speak with Sevren##355 |goto Tirisfal Glades 61.72,52.29
step
  talk Magistrate Sevren##1499
  accept Forsaken Duties##359 |goto Tirisfal Glades 61.26,50.84
step
  only Undead
  talk Apothecary Johaan##1518
  accept A New Plague##368 |goto Tirisfal Glades 59.45,52.4
step
  talk Magistrate Sevren##1499
  accept The Prodigal Lich##405 |goto Tirisfal Glades 61.26,50.84
step
  talk Apothecary Johaan##1518
  accept Fields of Grief##407 |goto Tirisfal Glades 59.45,52.4
step
  talk Deathguard Dillinger##1496
  accept The Mills Overrun##426 |goto Tirisfal Glades 58.2,51.45
step
  only Warrior
  talk Deathguard Dillinger##1496
  accept Ulag the Cleaver##1819 |goto Tirisfal Glades 58.2,51.45
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
  kill Deathguard Kel##12428 |q 5650 |goto Tirisfal Glades 59.18,46.5
step
  talk Bethor Iceshard##1498
  turnin The Prodigal Lich##405 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Gunther Arcanus##1497
  turnin Proving Allegiance##409 |goto Tirisfal Glades 68.2,41.92
step
  talk Gunther Arcanus##1497
  accept The Prodigal Lich Returns##411 |goto Tirisfal Glades 68.2,41.92
step
  turnin Target: Dalson's Tears##5231 |goto Western Plaguelands 46.18,51.9 |tip {turninat}Western Plaguelands
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin Rude Awakening##363 |goto Tirisfal Glades 30.84,66.2
step
  talk Novice Elreth##1661
  turnin The Damned##376 |goto Tirisfal Glades 30.86,66.05
step
  only Undead
  talk Shadow Priest Sarvis##1569
  accept The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  talk Executor Arren##1570
  accept Night Web's Hollow##380 |goto Tirisfal Glades 32.15,66.01
step
  talk Deathguard Saltain##1740
  accept Scavenging Deathknell##3902 |goto Tirisfal Glades 31.61,65.6
step
  talk Novice Elreth##1661
  accept Marla's Last Wish##6395 |goto Tirisfal Glades 30.86,66.05
step
  only Undead
  note Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
  kill Mindless Zombie##1501 |q 364 |goto Tirisfal Glades 32.54,63.84
step
  note Bring Samuel Fipps' Remains to Marla's Grave, then return to Novice Elreth.
  collect Marla's Grave##178090 |q 6395 |goto Tirisfal Glades 31.17,65.08
step
  note Executor Arren wants you to kill 10 Young Night Web Spiders and 8 Night Web Spiders.
  kill Young Night Web Spider##1504 |q 380 |goto Tirisfal Glades 28.36,57.43
step
  talk Argent Quartermaster Hasana##10856
  turnin Mantles of the Dawn##5504 |goto Tirisfal Glades 83.26,68.14
step
  talk Mickey Levine##11615
  turnin A Plague Upon Thee##5901 |goto Tirisfal Glades 83.29,72.34
step
  talk Argent Quartermaster Hasana##10856
  turnin Chromatic Mantle of the Dawn##5524 |goto Tirisfal Glades 83.26,68.14
step
  talk Apothecary Dithers##11057
  turnin Araj's Scarab##5804 |goto Tirisfal Glades 83.28,69.23
step
  talk Alexi Barov##11022
  turnin Barov Family Fortune##5341 |goto Tirisfal Glades 83.06,71.6
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin Prove Your Hatred##10590 |goto Tirisfal Glades 83.22,71.32
step
  talk Mehlar Dawnblade##17099
  turnin The So-Called Mark of the Lightbringer##9443 |goto Tirisfal Glades 83.22,71.32
step
  talk High Executor Derrington##10837
  turnin Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  turnin Mission Accomplished!##5237 |goto Tirisfal Glades 83.13,68.94
step
  talk Argent Officer Garush##10839
  turnin Argent Dawn Commission##5503 |goto Tirisfal Glades 83.19,68.45
step
  talk High Executor Derrington##10837
  accept All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.13,68.94
step
  talk Alexi Barov##11022
  accept The Last Barov##5342 |goto Tirisfal Glades 83.06,71.6
step
  talk High Executor Derrington##10837
  accept The Key to Scholomance##5511 |goto Tirisfal Glades 83.13,68.94
step
  talk Mickey Levine##11615
  accept A Plague Upon Thee##5902 |goto Tirisfal Glades 83.29,72.34
step
  talk Mehlar Dawnblade##17099
  accept Defiling Uther's Tomb##9444 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Mehlar Dawnblade##17099
  accept Wisdom of the Banshee Queen##10592 |goto Tirisfal Glades 83.22,71.32
step
  only Undead Priest
  talk Dark Cleric Beryl##2129
  turnin Garments of Darkness##5650 |goto Tirisfal Glades 61.57,52.19
step
  talk Captured Scarlet Zealot##1931
  turnin Fields of Grief##407 |goto Tirisfal Glades 61.97,51.29
step
  only Warrior
  talk Deathguard Dillinger##1496
  turnin Ulag the Cleaver##1819 |goto Tirisfal Glades 58.2,51.45
step
  talk Deathguard Dillinger##1496
  turnin The Mills Overrun##426 |goto Tirisfal Glades 58.2,51.45
step
  talk Magistrate Sevren##1499
  turnin Speak with Sevren##355 |goto Tirisfal Glades 61.26,50.84
step
  talk Deathguard Linnea##1495
  turnin Forsaken Duties##359 |goto Tirisfal Glades 65.49,60.25
step
  talk Junior Apothecary Holland##10665
  turnin Doom Weed##5482 |goto Tirisfal Glades 57.44,48.85
step
  only Undead
  talk Apothecary Johaan##1518
  turnin A New Plague##368 |goto Tirisfal Glades 59.45,52.4
step
  talk Deathguard Linnea##1495
  accept Return to the Magistrate##360 |goto Tirisfal Glades 65.49,60.25
step
  only Undead
  talk Apothecary Johaan##1518
  accept A New Plague##369 |goto Tirisfal Glades 59.45,52.4
step
  talk Magistrate Sevren##1499
  accept The Family Crypt##408 |goto Tirisfal Glades 61.26,50.84
step
  only Warrior
  talk Deathguard Dillinger##1496
  accept Speak with Coleman##1820 |goto Tirisfal Glades 58.2,51.45
step
  turnin A Plague Upon Thee##5902 |goto Western Plaguelands 48.35,32.0 |tip {turninat}Western Plaguelands
step
  talk Bethor Iceshard##1498
  turnin The Prodigal Lich Returns##411 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  note Kill 8 Wailing Ancestors and 8 Rotting Ancestors.
  kill Wailing Ancestor##1534 |q 408 |goto Tirisfal Glades 52.23,28.76
step
  talk Deathguard Saltain##1740
  turnin Scavenging Deathknell##3902 |goto Tirisfal Glades 31.61,65.6
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  talk Novice Elreth##1661
  turnin Marla's Last Wish##6395 |goto Tirisfal Glades 30.86,66.05
step
  talk Executor Arren##1570
  turnin Night Web's Hollow##380 |goto Tirisfal Glades 32.15,66.01
step
  talk Executor Arren##1570
  accept The Scarlet Crusade##381 |goto Tirisfal Glades 32.15,66.01
step
  only Warrior
  talk Shadow Priest Sarvis##1569
  accept Simple Scroll##3095 |goto Tirisfal Glades 30.84,66.2
step
  only Rogue
  talk Shadow Priest Sarvis##1569
  accept Encrypted Scroll##3096 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Priest
  talk Shadow Priest Sarvis##1569
  accept Hallowed Scroll##3097 |goto Tirisfal Glades 30.84,66.2
step
  only Warlock
  talk Shadow Priest Sarvis##1569
  accept Glyphic Scroll##3098 |goto Tirisfal Glades 30.84,66.2
step
  only Druid
  talk Shadow Priest Sarvis##1569
  accept Tainted Scroll##3099 |goto Tirisfal Glades 30.84,66.2
step
  only Undead
  talk Shadow Priest Sarvis##1569
  accept Rattling the Rattlecages##3901 |goto Tirisfal Glades 30.84,66.2
step
  only Undead
  note Kill 12 Rattlecage Skeletons, and then return to Shadow Priest Sarvis in Deathknell when you are done.
  kill Rattlecage Skeleton##1890 |q 3901 |goto Tirisfal Glades 33.06,61.66
step
  note Defile Uther's Tomb and return to Mehlar Dawnblade at the Bulwark in the Western Plaguelands.
  collect Temp Uther's Statue##181653 |q 9444 |goto Western Plaguelands 52.13,83.5
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  kill Andorhal Tower One##10902 |q 5098 |goto Western Plaguelands 40.05,71.6
step
  talk High Executor Derrington##10837
  turnin The Key to Scholomance##5511 |goto Tirisfal Glades 83.13,68.94
step
  talk Alexi Barov##11022
  turnin The Last Barov##5342 |goto Tirisfal Glades 83.06,71.6
step
  only Paladin
  talk Lady Sylvanas Windrunner##10181
  turnin Wisdom of the Banshee Queen##10592 |goto Undercity 58.05,91.79 |tip {turninat}Undercity
step
  talk Mehlar Dawnblade##17099
  turnin Defiling Uther's Tomb##9444 |goto Tirisfal Glades 83.22,71.32
step
  talk High Executor Derrington##10837
  turnin All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk Shadow Priestess Vandis##11055
  turnin The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.04,71.91
step
  talk High Executor Derrington##10837
  accept Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept Scholomance##838 |goto Tirisfal Glades 83.13,68.94
step
  talk Shadow Priestess Vandis##11055
  accept Target: Felstone Field##5229 |goto Tirisfal Glades 83.04,71.91
step
  talk Magistrate Sevren##1499
  turnin Return to the Magistrate##360 |goto Tirisfal Glades 61.26,50.84
step
  talk Magistrate Sevren##1499
  turnin The Family Crypt##408 |goto Tirisfal Glades 61.26,50.84
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Speak with Coleman##1820 |goto Tirisfal Glades 61.72,52.29
step
  only Undead
  talk Apothecary Johaan##1518
  turnin A New Plague##369 |goto Tirisfal Glades 59.45,52.4
step
  only Undead
  talk Apothecary Johaan##1518
  accept A New Plague##492 |goto Tirisfal Glades 59.45,52.4
step
  only Warrior
  talk Coleman Farthing##1500
  accept Agamand Heirlooms##1821 |goto Tirisfal Glades 61.72,52.29
step
  turnin Target: Felstone Field##5229 |goto Western Plaguelands 37.25,56.78 |tip {turninat}Western Plaguelands
step
  only Undead Priest
  talk Dark Cleric Duesten##2123
  turnin Hallowed Scroll##3097 |goto Tirisfal Glades 31.11,66.03
step
  only Rogue
  talk David Trias##2122
  turnin Encrypted Scroll##3096 |goto Tirisfal Glades 32.53,65.65
step
  only Warrior
  talk Dannal Stern##2119
  turnin Simple Scroll##3095 |goto Tirisfal Glades 32.69,65.56
step
  only Warlock
  talk Isabella##2124
  turnin Glyphic Scroll##3098 |goto Tirisfal Glades 30.93,66.06
step
  only Druid
  talk Maximillion##2126
  turnin Tainted Scroll##3099 |goto Tirisfal Glades 30.91,66.34
step
  only Undead
  talk Shadow Priest Sarvis##1569
  turnin Rattling the Rattlecages##3901 |goto Tirisfal Glades 30.84,66.2
step
  talk Executor Arren##1570
  turnin The Scarlet Crusade##381 |goto Tirisfal Glades 32.15,66.01
step
  talk Executor Arren##1570
  accept The Red Messenger##382 |goto Tirisfal Glades 32.15,66.01
step
  talk Apothecary Dithers##11057
  turnin Scholomance##838 |goto Tirisfal Glades 83.28,69.23
step
  talk High Executor Derrington##10837
  turnin Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  talk Apothecary Dithers##11057
  accept Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Agamand Heirlooms##1821 |goto Tirisfal Glades 61.72,52.29
step
  only Undead
  talk Captured Mountaineer##2211
  turnin A New Plague##492 |goto Tirisfal Glades 61.94,51.4
step
  only Warrior
  talk Coleman Farthing##1500
  accept Heirloom Weapon##1822 |goto Tirisfal Glades 61.72,52.29
step
  talk Executor Arren##1570
  turnin The Red Messenger##382 |goto Tirisfal Glades 32.15,66.01
step
  talk Executor Arren##1570
  accept Vital Intelligence##383 |goto Tirisfal Glades 32.15,66.01
step
  talk Apothecary Dithers##11057
  turnin Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
  talk Apothecary Dithers##11057
  accept Mold Rhymes With...##5514 |goto Tirisfal Glades 83.28,69.23
step
  talk Executor Zygand##1515
  turnin Vital Intelligence##383 |goto Tirisfal Glades 60.59,51.76
step
  only Warrior
  talk Coleman Farthing##1500
  turnin Heirloom Weapon##1822 |goto Tirisfal Glades 61.72,52.29
step
  talk Executor Zygand##1515
  accept At War With The Scarlet Crusade##427 |goto Tirisfal Glades 60.59,51.76
step
  talk Krinkle Goodsteel##5411
  turnin Mold Rhymes With...##5514 |goto Tanaris 51.46,28.81 |tip {turninat}Tanaris
step
  note Executor Zygand of Brill wants you to kill 10 Scarlet Warriors.
  kill Scarlet Warrior##1535 |q 427 |goto Tirisfal Glades 32.08,47.71
step
  talk Executor Zygand##1515
  turnin At War With The Scarlet Crusade##427 |goto Tirisfal Glades 60.59,51.76
step
  talk Executor Zygand##1515
  accept At War With The Scarlet Crusade##370 |goto Tirisfal Glades 60.59,51.76
step
  talk Deathguard Burgess##1652
  accept Proof of Demise##374 |goto Tirisfal Glades 60.93,52.01
step
  note Executor Zygand in Brill wants you to kill Captain Perrine, 3 Scarlet Zealots and 3 Scarlet Missionaries.
  kill Captain Perrine##1662 |q 370 |goto Tirisfal Glades 51.14,67.8
step
  talk Executor Zygand##1515
  turnin At War With The Scarlet Crusade##370 |goto Tirisfal Glades 60.59,51.76
step
  talk Deathguard Burgess##1652
  turnin Proof of Demise##374 |goto Tirisfal Glades 60.93,52.01
step
  talk Executor Zygand##1515
  accept At War With The Scarlet Crusade##371 |goto Tirisfal Glades 60.59,51.76
step
  note Executor Zygand in Brill has commissioned you to slay Captain Vachon and 5 Scarlet Friars.
  kill Captain Vachon##1664 |q 371 |goto Tirisfal Glades 78.82,56.13
step
  talk Executor Zygand##1515
  turnin At War With The Scarlet Crusade##371 |goto Tirisfal Glades 60.59,51.76
step
  talk Executor Zygand##1515
  accept At War With The Scarlet Crusade##372 |goto Tirisfal Glades 60.59,51.76
step
  note Executor Zygand in the town of Brill wants you to assassinate Captain Melrache and his two bodyguards.
  kill Captain Melrache##1665 |q 372 |goto Tirisfal Glades 79.52,25.15
step
  talk Executor Zygand##1515
  turnin At War With The Scarlet Crusade##372 |goto Tirisfal Glades 60.59,51.76
step
  note {travel}Silverpine Forest
  goto Silverpine Forest 44.2,39.81
]])
