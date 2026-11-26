-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Ashenvale (21-30)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Dustwallow Marsh (35-38)",
	rev = "5edf2f3b",
}, [[
step
  ding 20
step
  note {fp}Daelyshia
  goto Ashenvale 34.41,47.99 |tip {vendor}
step
  talk Shindrell Swiftfire##3845
  accept The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##991 |goto Ashenvale 36.62,49.58
step
  talk Faldreas Goeth'Shael##3996
  accept Journey to Stonetalon Peak##1056 |goto Ashenvale 35.77,49.1
step
  talk Sentinel Thenysil##4079
  accept On Guard in Stonetalon##1070 |goto Ashenvale 34.89,49.79
step
  only completed(967)
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##970 |goto Ashenvale 26.2,38.7
step
  only level>=20
  talk Orendil Broadleaf##3847
  accept Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
  note Find Teronis in Ashenvale.
  talk Teronis' Corpse##3891
  turnin Raene's Cleansing##991 |goto Ashenvale 20.31,42.33
step
  talk Teronis' Corpse##3891
  accept Raene's Cleansing##1023 |goto Ashenvale 20.31,42.33
step
  note Find the Glowing Gem and return to Raene Wolfrunner in Astranaar with Teronis' Journal.
  collect Glowing Gem##5463 |q 1023 |goto Ashenvale 19.3,43.14 |tip {dropsfrom}Saltspittle Puddlejumper, Saltspittle Warrior, Saltspittle Muckdweller
step
  talk Talen##3846
  accept The Ancient Statuette##1007 |goto Ashenvale 14.79,31.29
step
  note Bring 20 Wrathtail Heads to Shindrell Swiftfire in Astranaar.
  collect 20 Wrathtail Head##5490 |q 1008 |goto Ashenvale 10.48,29.74 |tip {dropsfrom}Wrathtail Razortail, Wrathtail Wave Rider, Wrathtail Sea Witch
step
  only completed(967)
  note Collect a Glowing Soul Gem and return it to Delgren the Purifier at Maestra's Post.
  collect Glowing Soul Gem##5366 |q 970 |goto Ashenvale 30.99,30.89 |tip {dropsfrom}Dark Strand Cultist, Dark Strand Enforcer, Dark Strand Adept
step
  only haveq(1010)
  note Bring 5 Bathran's Hair to Orendil Broadleaf in Ashenvale.
  collect 5 Bathran's Hair##5437 |q 1010 |goto Ashenvale 31.86,22.94 |tip {dropsfrom}Plant Bundle
step
  only completed(967)
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##970 |goto Ashenvale 26.2,38.7
step
  only haveq(1010)
  talk Orendil Broadleaf##3847
  turnin Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
  only completed(1010) level>=20
  talk Orendil Broadleaf##3847
  accept Orendil's Cure##1020 |goto Ashenvale 26.44,38.59
step
  talk Shindrell Swiftfire##3845
  turnin The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
step
  only haveq(1020)
  note Bring Orendil's Cure to Pelturas Whitemoon in Astranaar.
  talk Pelturas Whitemoon##3894
  turnin Orendil's Cure##1020 |goto Ashenvale 37.37,51.79
step
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1023 |goto Ashenvale 36.62,49.58
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##1024 |goto Ashenvale 36.62,49.58
step
  talk Shindrell Swiftfire##3845
  accept Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
  only completed(1020)
  talk Pelturas Whitemoon##3894
  accept Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
  talk Raene Wolfrunner##3691
  accept An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
  only haveq(1033)
  note Bring Elune's Tear to Pelturas in Astranaar.
  collect Elune's Tear##5493 |q 1033 |goto Ashenvale 46.07,46.56
step
  note Find Shael'dryn at the moonwell to the northeast.
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1024 |goto Ashenvale 53.54,46.22
step
  note Kill 1 Den Watcher, 2 Ursas, 10 Totemics, and 12 Warriors of the Foulweald tribe, and then return to Raene Wolfrunner in Astranaar.
  kill Foulweald Den Watcher##3746 |q 1025/1 |goto Ashenvale 54.19,61.39
  kill Foulweald Ursa##3749 |q 1025/2 |goto Ashenvale 53.79,62.04
  kill Foulweald Totemic##3750 |q 1025/3 |goto Ashenvale 53.53,63
  kill Foulweald Warrior##3743 |q 1025 |goto Ashenvale 54.12,62.98
step
  talk Raene Wolfrunner##3691
  turnin An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
  only haveq(1033)
  talk Pelturas Whitemoon##3894
  turnin Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
  only completed(1033)
  talk Pelturas Whitemoon##3894
  accept The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
  talk Raene Wolfrunner##3691
  accept Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
  only completed(967)
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##973 |goto Ashenvale 26.2,38.7
step
  note Bring the Ancient Statuette to Talen, in his camp near the Zoram Strand.
  collect Ancient Statuette##5424 |q 1007 |goto Ashenvale 14.2,20.64
step
  talk Talen##3846
  turnin The Ancient Statuette##1007 |goto Ashenvale 14.79,31.29
step
  talk Talen##3846
  accept Ruuzel##1009 |goto Ashenvale 14.79,31.29
step
  note Bring the Ring of Zoram to Talen near the Zoram Strand.
  collect Ring of Zoram##5445 |q 1009 |goto Ashenvale 7.22,13.06 |tip {dropsfrom}Ruuzel
step
  talk Talen##3846
  turnin Ruuzel##1009 |goto Ashenvale 14.79,31.29
step
  note Bring Dal Bloodclaw's Skull to Raene Wolfrunner in Astranaar.
  collect Dal Bloodclaw's Skull##5544 |q 1054 |goto Ashenvale 39.61,36.31 |tip {dropsfrom}Dal Bloodclaw
step
  only completed(967)
  note Bring Ilkrud Magthrull's Tome to Delgren the Purifier at Maestra's Post.
  collect Ilkrud Magthrull's Tome##5533 |q 973 |goto Ashenvale 25.28,60.69 |tip {dropsfrom}Ilkrud Magthrull
step
  only haveq(1034)
  note Bring 5 Handfuls of Stardust to Pelturas in Astranaar.
  collect 5 Handful of Stardust##5494 |q 1034 |goto Ashenvale 33.33,67.98 |tip {dropsfrom}Stardust Covered Bush
step
  only haveq(1034)
  talk Pelturas Whitemoon##3894
  turnin The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
  talk Raene Wolfrunner##3691
  turnin Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
  talk Sentinel Velene Starstrike##3885
  accept Elemental Bracers##1016 |goto Ashenvale 49.8,67.21
step
  note Collect 5 Intact Elemental Bracers and use the Divining Scroll on them. Afterwards, bring the Divined Scroll to Sentinel Velene Starstrike at the Silverwind Refuge.
  collect 5 Divined Scroll##5455 |q 1016 |goto Ashenvale 49.8,67.21
step
  talk Sentinel Velene Starstrike##3885
  turnin Elemental Bracers##1016 |goto Ashenvale 49.8,67.21
step
  talk Sentinel Velene Starstrike##3885
  accept Mage Summoner##1017 |goto Ashenvale 49.8,67.21
step
  only level>=22
  click Gleaming Crescent Pendant##669176
  accept Gleaming Crescent Necklace##98027 |goto Ashenvale 62.99,71.57
step
  only haveq(98027)
  note Deliver the Crescent Necklace to Maliynn in Astranaar.
  talk Maliynn##3961
  turnin Gleaming Crescent Necklace##98027 |goto Ashenvale 36.62,49.98
step
  only completed(967)
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##973 |goto Ashenvale 26.2,38.7
step
  only completed(967)
  talk Feero Ironhand##4484
  accept Supplies to Auberdine##976 |goto Ashenvale 26.21,38.88
step
  only completed(967)
  note Speak with Delgren the Purifier at Maestra's Post after seeing Feero safely through Ashenvale Forest.
  goto Ashenvale 29.5,16.8 |tip Protect Feero Ironhand
step
  only completed(967)
  talk Delgren the Purifier##3663
  turnin Supplies to Auberdine##976 |goto Ashenvale 26.2,38.7
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1026 |goto Ashenvale 53.54,46.22
step
  note Find the Wooden Key and a piece of Dartol's Rod before returning to Shael'dryn at the moonwell.
  collect Iron Shaft##5464 |q 1026 |goto Ashenvale 54.42,35.4 |tip {dropsfrom}Worn Chest
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1026 |goto Ashenvale 53.54,46.22
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1027 |goto Ashenvale 53.54,46.22
step
  only completed(967)
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##1140 |goto Ashenvale 26.2,38.7
step
  only completed(967)
  note Free the trapped Highborne souls in Night Run and Satyrnaar, then return to Delgren the Purifier at Maestra's Post.
  click Circle of Imprisonment##19901 |q 1140/1 |goto Ashenvale 66.62,57
  click Circle of Imprisonment##20352 |q 1140 |goto Ashenvale 81.6,48.57
step
  note Find the final piece of Dartol's Rod and return to Shael'dryn at the moonwell.
  collect Iron Pommel##5519 |q 1027 |goto Ashenvale 74.41,73.38 |tip {dropsfrom}Rusty Chest
step
  only level>=23
  talk Maseara Autumnmoon##221269
  accept Vengeful Trail##98417 |goto Ashenvale 86.24,45.86
step
  only haveq(98417)
  note Maseara Autumnmoon wants you to search west of Forest Song, amongst the Satyrnaar demons. Report any signs of her husband Kurothel upon your return.
  collect Vine-Wrapped Scroll##281014 |q 98417 |goto Ashenvale 81.06,49.48 |tip {dropsfrom}Kurothel's Knapsack
step
  only haveq(98417)
  talk Maseara Autumnmoon##221269
  turnin Vengeful Trail##98417 |goto Ashenvale 86.24,45.86
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1027 |goto Ashenvale 53.54,46.22
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1028 |goto Ashenvale 53.54,46.22
step
  note Find the hidden shrine and re-enchant Dartol's Rod.
  turnin Raene's Cleansing##1028 |goto Ashenvale 56.35,49.2
step
  click Hidden Shrine##19024
  accept Raene's Cleansing##1055 |goto Ashenvale 56.35,49.2
step
  note Return to Shael'dryn at the moonwell.
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1055 |goto Ashenvale 53.54,46.22
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1029 |goto Ashenvale 53.54,46.22
step
  only completed(967)
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##1140 |goto Ashenvale 26.2,38.7
step
  only completed(967)
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##1167 |goto Ashenvale 26.2,38.7
step
  note Return to Raene Wolfrunner in Astranaar.
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1029 |goto Ashenvale 36.62,49.58
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##1030 |goto Ashenvale 36.62,49.58
step
  only completed(1082)
  talk Sentinel Thenysil##4079
  accept Reception from Tyrande##1081 |goto Ashenvale 34.89,49.79
step
  only level>=24
  talk Shindrell Swiftfire##3845
  accept Kayneth Stillwind##4581 |goto Ashenvale 34.67,48.84
step
  note Find an uncorrupted furbolg, and using the power of Dartol's Rod of Transformation, speak to him.
  talk Krolg##3897
  turnin Raene's Cleansing##1030 |goto Ashenvale 50.84,75.08
step
  only haveq(4581)
  note Take Shindrell's Note to Kayneth Stillwind in Forest Song.
  talk Kayneth Stillwind##3848
  turnin Kayneth Stillwind##4581 |goto Ashenvale 85.24,44.71
step
  only level>=24
  talk Kayneth Stillwind##3848
  accept Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
  only haveq(1011)
  note Bring a Bottle of Disease to Kayneth Stillwind in Forest Song.
  collect Bottle of Disease##5440 |q 1011 |goto Ashenvale 75.31,71.93
step
  only haveq(1011)
  talk Kayneth Stillwind##3848
  turnin Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
  only completed(98417) level>=23
  talk Maseara Autumnmoon##221269
  accept Shared Fury##98418 |goto Ashenvale 86.24,45.86
step
  only level>=25
  talk Shandrina##3955
  accept Slowing the Orc Advance##86757 |goto Ashenvale 49.48,67.09
step
  only completed(1034)
  talk Pelturas Whitemoon##3894
  accept Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
step
  only level>=25
  talk Sentinel Melyria Frostshadow##3880
  accept The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
  only haveq(1022)
  note Go to the Howling Vale and study the Tome of Mel'Thandris, then return to Sentinel Melyria Frostshadow at Forest Song.
  click Tome of Mel'Thandris##19027 |q 1022 |goto Ashenvale 50.49,39.13
step
  only haveq(98418)
  note Kill 5 Xavian Rogues, 5 Felsworn, 5 Betrayers, and 5 Hellcallers.
  kill Xavian Hellcaller##3757 |q 98418/3 |goto Ashenvale 78.23,44.8
  kill Xavian Rogue##3752 |q 98418/4 |goto Ashenvale 78.4,45.12
  kill Xavian Felsworn##3755 |q 98418/2 |goto Ashenvale 78.92,45.78
  kill Xavian Betrayer##3754 |q 98418 |goto Ashenvale 78.27,46.4
step
  only haveq(98418)
  talk Maseara Autumnmoon##221269
  turnin Shared Fury##98418 |goto Ashenvale 86.24,45.86
step
  only haveq(86757)
  note Bring 6 Jagged Orc Swords and 4 Curved Orc Daggers to Shandrina.
  collect Jagged Orcish Sword##279505 |q 86757/1 |goto Ashenvale 88.6,57.66 |tip {dropsfrom}Horde Grunt
  collect Curved Orcish Dagger##279507 |q 86757 |goto Ashenvale 86.31,60.42 |tip {dropsfrom}Horde Scout
step
  only haveq(1035)
  note Retrieve a Fallen Moonstone from the Shadethicket Oracle, then bring it to Pelturas in Astranaar.
  collect Fallen Moonstone##5508 |q 1035 |goto Ashenvale 66.66,82.17 |tip {dropsfrom}Shadethicket Oracle
step
  talk Krolg##3897
  accept Raene's Cleansing##1045 |goto Ashenvale 50.84,75.08
step
  note Kill Ran Bloodtooth and 4 Bloodtooth Guards and return to Krolg near Lake Mystral.
  kill Bloodtooth Guard##3932 |q 1045 |goto Ashenvale 54.76,77.69
step
  talk Krolg##3897
  turnin Raene's Cleansing##1045 |goto Ashenvale 50.84,75.08
step
  talk Krolg##3897
  accept Raene's Cleansing##1046 |goto Ashenvale 50.84,75.08
step
  note Bring Ran Bloodtooth's Skull and Dartol's Rod of Transformation to Raene Wolfrunner in Astranaar.
  collect Dartol's Rod of Transformation##5462 |q 1046 |goto Ashenvale 50.84,75.08
step
  only haveq(86757)
  talk Shandrina##3955
  turnin Slowing the Orc Advance##86757 |goto Ashenvale 49.48,67.09
step
  only haveq(1035)
  talk Pelturas Whitemoon##3894
  turnin Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
step
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1046 |goto Ashenvale 36.62,49.58
step
  only haveq(1022)
  talk Sentinel Melyria Frostshadow##3880
  turnin The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
  only completed(1022) level>=25
  talk Sentinel Melyria Frostshadow##3880
  accept Velinde Starsong##1037 |goto Ashenvale 22.23,52.98
step
  only level>=26
  talk Illiyana##3901
  accept Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 21.73,53.34
step
  only haveq(1021)
  note Find Anilia in Xavian.
  talk Anilia##3920
  turnin Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 78.33,44.82
step
  only completed(1021) level>=26
  talk Anilia##3920
  accept The Branch of Cenarius##1031 |goto Ashenvale 78.33,44.82
step
  only haveq(1031)
  note Kill Geltharis and return the Branch of Cenarius to Illiyana at Forest Song.
  collect Branch of Cenarius##5461 |q 1031 |goto Ashenvale 77.99,42.42 |tip {dropsfrom}Geltharis
step
  only haveq(1031)
  talk Illiyana##3901
  turnin The Branch of Cenarius##1031 |goto Ashenvale 21.73,53.34
step
  only completed(1031) level>=26
  talk Illiyana##3901
  accept Satyr Slaying!##1032 |goto Ashenvale 21.73,53.34
step
  only haveq(1032)
  note Bring 16 Satyr Horns to Illiyana in Forest Song.
  collect 16 Satyr Horns##5481 |q 1032 |goto Ashenvale 78.4,45.12 |tip {dropsfrom}Xavian Rogue, Xavian Betrayer, Xavian Felsworn
step
  only completed(1011) level>=24
  talk Kayneth Stillwind##3848
  accept Insane Druids##1012 |goto Ashenvale 85.24,44.71
step
  only haveq(1012)
  note Kill the druids: Taneel Darkwood, Uthil Mooncall, Mavoris Cloudsbreak; then return to Kayneth Stillwind in Forest Song.
  kill Uthil Mooncall##3941 |q 1012/2 |goto Ashenvale 77.96,72.74
  kill Taneel Darkwood##3940 |q 1012/1 |goto Ashenvale 77.18,73.99
  kill Mavoris Cloudsbreak##3942 |q 1012 |goto Ashenvale 75.05,74.2
step
  only haveq(1012)
  talk Kayneth Stillwind##3848
  turnin Insane Druids##1012 |goto Ashenvale 85.24,44.71
step
  only haveq(1032)
  talk Illiyana##3901
  turnin Satyr Slaying!##1032 |goto Ashenvale 21.73,53.34
step
  note Travel to Keeper Albagorm on Stonetalon Peak.
  talk Keeper Albagorm##3994
  turnin Journey to Stonetalon Peak##1056 |goto Stonetalon Mountains 37.1,8.1 |tip {turninat}Stonetalon Mountains
step
  note Bring 12 Pridewing Venom Sacs to Shindrell Swiftfire in Astranaar.
  collect 12 Pridewing Venom Sac##5808 |q 1134 |goto Stonetalon Mountains 63.51,59.21 |tip {dropsfrom}Young Pridewing, Pridewing Wyvern, Unsuspecting Pridewing
step
  note Find Kaela Shadowspear overlooking the valley entering Windshear Crag in the Stonetalon Mountains.
  talk Kaela Shadowspear##4080
  turnin On Guard in Stonetalon##1070 |goto Stonetalon Mountains 59.9,66.85 |tip {turninat}Stonetalon Mountains
step
  only completed(1082)
  note Find Tyrande Whisperwind in Darnassus.
  talk Tyrande Whisperwind##7999
  turnin Reception from Tyrande##1081 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  only haveq(1037)
  note Speak with Thyn'tel Bladeweaver at the Warrior's Terrace in Darnassus.
  talk Thyn'tel Bladeweaver##8026
  turnin Velinde Starsong##1037 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  only completed(1037) level>=25
  talk Thyn'tel Bladeweaver##8026
  accept Velinde's Effects##1038 |goto Darnassus 61.77,39.18
step
  only haveq(1038)
  note Search through Velinde's chest for her journal, then return it along with the key to Thyn'tel Bladeweaver in Darnassus.
  collect Velinde's Journal##5520 |q 1038 |goto Darnassus 62.29,83.29 |tip {dropsfrom}Velinde's Locker
step
  only haveq(1038)
  talk Thyn'tel Bladeweaver##8026
  turnin Velinde's Effects##1038 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  only completed(1038) level>=25
  talk Thyn'tel Bladeweaver##8026
  accept The Barrens Port##1039 |goto Darnassus 61.77,39.18
step
  note Slay Sarilus Foulborne and bring his head to Sentinel Velene Starstrike in Silverwind Refuge.
  collect Sarilus Foulborne's Head##5537 |q 1017 |goto The Barrens 48.22,19.15 |tip {dropsfrom}Sarilus Foulborne
step
  only Warlock completed(1805,1804) level>=30
  talk Strahad Farsan##6251
  accept The Binding##1795 |goto The Barrens 62.63,35.5
step
  only Warlock completed(1805,1804) haveq(1795)
  note Using the Tome of the Cabal, summon and subdue a felhunter, then return the Tome of the Cabal to Strahad Farsan in Ratchet.
  use Summoned Felhunter##6268 |q 1795 |goto The Barrens 62.6,35.31 |tip {useit}
step
  only Warlock completed(1805,1804) haveq(1795)
  talk Strahad Farsan##6251
  turnin The Binding##1795 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  only Warrior completed(1718) level>=30
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior completed(1718) haveq(1719)
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  kill Big Will##6238 |q 1719 |goto The Barrens 68.61,48.72
step
  only Warrior completed(1718) haveq(1719)
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16 |tip {turninat}The Barrens
step
  talk Shindrell Swiftfire##3845
  turnin Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
  talk Sentinel Velene Starstrike##3885
  turnin Mage Summoner##1017 |goto Ashenvale 49.8,67.21
step
  only completed(967)
  note Speak with Balthule Shadowstrike near the Tower of Althalaxx.
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##1167 |goto Darkshore 54.97,24.89 |tip {turninat}Darkshore
step
  only completed(967)
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##1143 |goto Darkshore 54.97,24.89
step
  only completed(967)
  note Kill Athrikus Narassin and bring his head to Balthule Shadowstrike near the Tower of Althalaxx.
  collect Athrikus Narassin's Head##5383 |q 1143 |goto Darkshore 56.02,26.33 |tip {dropsfrom}Athrikus Narassin
step
  only completed(967)
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##1143 |goto Darkshore 54.97,24.89 |tip {turninat}Darkshore
step
  only completed(967)
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##981 |goto Darkshore 54.97,24.89
step
  only completed(967)
  note Talk to Delgren the Purifier at Maestra's Post.
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##981 |goto Ashenvale 26.2,38.7
step
  note {travel}Dustwallow Marsh
  goto Dustwallow Marsh 66.46,45.15
]])
