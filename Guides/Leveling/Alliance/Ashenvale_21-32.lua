-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Ashenvale (21-32)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Duskwood (24-30)",
}, [[
step
  note {fp}Daelyshia
  goto Ashenvale 34.41,47.99 |tip {vendor}
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##991 |goto Ashenvale 36.62,49.58
step
  talk Shindrell Swiftfire##3845
  accept The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
step
  note Bring 20 Wrathtail Heads to Shindrell Swiftfire in Astranaar.
  kill Wrathtail Myrmidon##3711 |q 1008 |goto Ashenvale 7.2,14.49
step
  talk Raene Wolfrunner##3691
  accept Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
  note Bring Dal Bloodclaw's Skull to Raene Wolfrunner in Astranaar.
  kill Dal Bloodclaw##3987 |q 1054 |goto Ashenvale 37.74,34.73
step
  talk Faldreas Goeth'Shael##3996
  accept Journey to Stonetalon Peak##1056 |goto Ashenvale 35.77,49.1
step
  talk Sentinel Thenysil##4079
  accept On Guard in Stonetalon##1070 |goto Ashenvale 34.89,49.79
step
  talk Sentinel Thenysil##4079
  accept Reception from Tyrande##1081 |goto Ashenvale 34.89,49.79
step
  talk Shindrell Swiftfire##3845
  accept Kayneth Stillwind##4581 |goto Ashenvale 34.67,48.84
step
  talk Vindicator Palanaar##17106
  accept A Helping Hand##9533 |goto Ashenvale 34.89,49.71
step
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##970 |goto Ashenvale 26.2,38.7
step
  note Collect a Glowing Soul Gem and return it to Delgren the Purifier at Maestra's Post.
  kill Dark Strand Cultist##3725 |q 970 |goto Ashenvale 30.99,30.89
step
  talk Orendil Broadleaf##3847
  accept Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
  note Bring 5 Bathran's Hair to Orendil Broadleaf in Ashenvale.
  collect Plant Bundle##17282 |q 1010 |goto Ashenvale 32.07,22.94
step
  talk Teronis' Corpse##3891
  turnin Raene's Cleansing##991 |goto Ashenvale 20.31,42.33
step
  talk Teronis' Corpse##3891
  accept Raene's Cleansing##1023 |goto Ashenvale 20.31,42.33
step
  note Find the Glowing Gem and return to Raene Wolfrunner in Astranaar with Teronis' Journal.
  kill Saltspittle Puddlejumper##3737 |q 1023 |goto Ashenvale 19.99,43.11
step
  talk Keeper Albagorm##3994
  turnin Journey to Stonetalon Peak##1056 |goto Stonetalon Mountains 37.1,8.1 |tip {turninat}Stonetalon Mountains
step
  talk Talen##3846
  accept The Ancient Statuette##1007 |goto Ashenvale 14.79,31.29
step
  note Bring the Ancient Statuette to Talen, in his camp near the Zoram Strand.
  collect Ancient Statuette##17783 |q 1007 |goto Ashenvale 14.2,20.64
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1029 |goto Ashenvale 53.54,46.22
step
  talk Kaela Shadowspear##4080
  turnin On Guard in Stonetalon##1070 |goto Stonetalon Mountains 59.9,66.85 |tip {turninat}Stonetalon Mountains
step
  talk Sentinel Velene Starstrike##3885
  accept Elemental Bracers##1016 |goto Ashenvale 49.8,67.21
step
  note Collect 5 Intact Elemental Bracers and use the Divining Scroll on them. Afterwards, bring the Divined Scroll to Sentinel Velene Starstrike at the Silverwind Refuge.
  get Elemental Bracers |q 1016 |goto Ashenvale 49.8,67.21
step
  talk Tyrande Whisperwind##7999
  turnin Reception from Tyrande##1081 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  talk Illiyana Moonblaze##14753
  accept Sentinel Basic Care Package##7863 |goto Ashenvale 61.49,83.86
step
  talk Illiyana Moonblaze##14753
  accept Sentinel Standard Care Package##7864 |goto Ashenvale 61.49,83.86
step
  talk Kayneth Stillwind##3848
  turnin Kayneth Stillwind##4581 |goto Ashenvale 85.24,44.71
step
  talk Architect Nemos##17291
  turnin A Helping Hand##9533 |goto Ashenvale 86.84,44.81
step
  talk Kayneth Stillwind##3848
  accept Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
  note Bring a Bottle of Disease to Kayneth Stillwind in Forest Song.
  collect Bottle of Disease##18036 |q 1011 |goto Ashenvale 75.3,71.93
step
  talk Illiyana##3901
  accept Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 87.1,43.49
step
  talk Sentinel Melyria Frostshadow##3880
  accept The Howling Vale##1022 |goto Ashenvale 86.03,44.12
step
  talk Vindicator Vedaar##17303
  accept Destroy the Legion##9516 |goto Ashenvale 86.47,43.64
step
  talk Architect Nemos##17291
  accept A Shameful Waste##9517 |goto Ashenvale 86.84,44.81
step
  note Bring 15 pieces of Warsong Lumber and 5 Satyrnaar Fel Wood to Gnarl at Forest Song.
  collect Lumber Pile##181686 |q 9517 |goto Ashenvale 86.84,59.06
step
  talk Sentinel Luciel Starwhisper##17287
  accept Agents of Destruction##9518 |goto Ashenvale 86.0,44.36
step
  talk Kayneth Stillwind##3848
  accept The Lost Chalice##9519 |goto Ashenvale 85.24,44.71
step
  note Bring the Chalice of Elune to Kayneth Stillwind at Forest Song.
  collect Chalice of Elune##181681 |q 9519 |goto Ashenvale 81.4,48.9
step
  talk Sentinel Luciel Starwhisper##17287
  accept Report from the Northern Front##9521 |goto Ashenvale 86.0,44.36
step
  talk Vindicator Vedaar##17303
  accept Never Again!##9522 |goto Ashenvale 86.47,43.64
step
  talk Gnarl##17310
  accept Reclaiming Felfire Hill##9526 |goto Ashenvale 84.18,45.63
step
  note Sentinel Luciel Starwhisper at Forest Song wants you to kill Overseer Gorthak, 2 Warsong Shredders, 5 Horde Deforesters, and 10 Horde Scouts.
  kill Overseer Gorthak##17304 |q 9518 |goto Ashenvale 88.82,59.55
step
  note Plant 8 Tree Seedlings in the Fertile Dirt Mounds and then return to Gnarl at Forest Song in Ashenvale.
  collect Fertile Dirt Mound##181690 |q 9526 |goto Ashenvale 82.29,68.89
step
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1029 |goto Ashenvale 36.62,49.58
step
  talk Raene Wolfrunner##3691
  turnin Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
  talk Shindrell Swiftfire##3845
  turnin The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
step
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1023 |goto Ashenvale 36.62,49.58
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##1024 |goto Ashenvale 36.62,49.58
step
  talk Raene Wolfrunner##3691
  accept An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##1030 |goto Ashenvale 36.62,49.58
step
  talk Shindrell Swiftfire##3845
  accept Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
  note Bring 12 Pridewing Venom Sacs to Shindrell Swiftfire in Astranaar.
  kill Young Pridewing##4011 |q 1134 |goto Stonetalon Mountains 63.51,54.09
step
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##970 |goto Ashenvale 26.2,38.7
step
  talk Orendil Broadleaf##3847
  turnin Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##973 |goto Ashenvale 26.2,38.7
step
  note Bring Ilkrud Magthrull's Tome to Delgren the Purifier at Maestra's Post.
  kill Ilkrud Magthrull##3664 |q 973 |goto Ashenvale 25.28,60.69
step
  talk Orendil Broadleaf##3847
  accept Orendil's Cure##1020 |goto Ashenvale 26.44,38.59
step
  talk Talen##3846
  turnin The Ancient Statuette##1007 |goto Ashenvale 14.79,31.29
step
  talk Talen##3846
  accept Ruuzel##1009 |goto Ashenvale 14.79,31.29
step
  note Bring the Ring of Zoram to Talen near the Zoram Strand.
  kill Ruuzel##3943 |q 1009 |goto Ashenvale 7.01,12.58
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1024 |goto Ashenvale 53.54,46.22
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1026 |goto Ashenvale 53.54,46.22
step
  note Find the Wooden Key and a piece of Dartol's Rod before returning to Shael'dryn at the moonwell.
  collect Worn Chest##19022 |q 1026 |goto Ashenvale 54.42,35.4
step
  note Go to the Howling Vale and study the Tome of Mel'Thandris, then return to Sentinel Melyria Frostshadow at Forest Song.
  collect Tome of Mel'Thandris##19027 |q 1022 |goto Ashenvale 50.49,39.13
step
  talk Sentinel Velene Starstrike##3885
  turnin Elemental Bracers##1016 |goto Ashenvale 49.8,67.21
step
  talk Sentinel Velene Starstrike##3885
  accept Mage Summoner##1017 |goto Ashenvale 49.8,67.21
step
  note Slay Sarilus Foulborne and bring his head to Sentinel Velene Starstrike in Silverwind Refuge.
  kill Sarilus Foulborne##3986 |q 1017 |goto The Barrens 48.22,19.15
step
  note Kill 1 Den Watcher, 2 Ursas, 10 Totemics, and 12 Warriors of the Foulweald tribe, and then return to Raene Wolfrunner in Astranaar.
  kill Foulweald Den Watcher##3746 |q 1025 |goto Ashenvale 54.19,61.39
step
  talk Krolg##3897
  turnin Raene's Cleansing##1030 |goto Ashenvale 50.84,75.08
step
  talk Krolg##3897
  accept Raene's Cleansing##1045 |goto Ashenvale 50.84,75.08
step
  note Kill Ran Bloodtooth and 4 Bloodtooth Guards and return to Krolg near Lake Mystral.
  kill Ran Bloodtooth##3696 |q 1045 |goto Ashenvale 54.75,79.62
step
  talk Sentinel Farsong##14733
  turnin Report from the Northern Front##9521 |goto Ashenvale 61.85,83.9
step
  talk Illiyana Moonblaze##14753
  turnin Sentinel Basic Care Package##7863 |goto Ashenvale 61.49,83.86
step
  talk Illiyana Moonblaze##14753
  turnin Sentinel Standard Care Package##7864 |goto Ashenvale 61.49,83.86
step
  note Slay 6 Mannoroc Lashers, 6 Felguards and 6 Searing Infernals, and then return to Vindicator Vedaar at Forest Song in Ashenvale.
  kill Mannoroc Lasher##11697 |q 9516 |goto Ashenvale 79.38,81.53
step
  note Kill Gorgannon and Diathorus the Seeker, and then return to Vindicator Vedaar at Forest Song in Ashenvale.
  kill Gorgannon##17300 |q 9522 |goto Ashenvale 89.79,76.73
step
  talk Vindicator Vedaar##17303
  turnin Destroy the Legion##9516 |goto Ashenvale 86.47,43.64
step
  talk Gnarl##17310
  turnin A Shameful Waste##9517 |goto Ashenvale 84.18,45.63
step
  talk Sentinel Luciel Starwhisper##17287
  turnin Agents of Destruction##9518 |goto Ashenvale 86.0,44.36
step
  talk Kayneth Stillwind##3848
  turnin The Lost Chalice##9519 |goto Ashenvale 85.24,44.71
step
  talk Vindicator Vedaar##17303
  turnin Never Again!##9522 |goto Ashenvale 86.47,43.64
step
  talk Gnarl##17310
  turnin Reclaiming Felfire Hill##9526 |goto Ashenvale 84.18,45.63
step
  talk Kayneth Stillwind##3848
  turnin Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
  talk Anilia##3920
  turnin Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 78.33,44.82
step
  talk Sentinel Melyria Frostshadow##3880
  turnin The Howling Vale##1022 |goto Ashenvale 86.03,44.12
step
  talk Kayneth Stillwind##3848
  accept Insane Druids##1012 |goto Ashenvale 85.24,44.71
step
  talk Anilia##3920
  accept The Branch of Cenarius##1031 |goto Ashenvale 78.33,44.82
step
  note Kill Geltharis and return the Branch of Cenarius to Illiyana at Forest Song.
  kill Geltharis##4619 |q 1031 |goto Ashenvale 77.99,42.42
step
  talk Sentinel Melyria Frostshadow##3880
  accept Velinde Starsong##1037 |goto Ashenvale 86.03,44.12
step
  talk Raene Wolfrunner##3691
  turnin An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
  talk Shindrell Swiftfire##3845
  turnin Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
  talk Pelturas Whitemoon##3894
  turnin Orendil's Cure##1020 |goto Ashenvale 37.37,51.79
step
  talk Pelturas Whitemoon##3894
  accept Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
  note Bring Elune's Tear to Pelturas in Astranaar.
  collect Elune's Tear##19015 |q 1033 |goto Ashenvale 46.34,46.56
step
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##973 |goto Ashenvale 26.2,38.7
step
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##1140 |goto Ashenvale 26.2,38.7
step
  talk Talen##3846
  turnin Ruuzel##1009 |goto Ashenvale 14.79,31.29
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1026 |goto Ashenvale 53.54,46.22
step
  talk Thyn'tel Bladeweaver##8026
  turnin Velinde Starsong##1037 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1027 |goto Ashenvale 53.54,46.22
step
  note Find the final piece of Dartol's Rod and return to Shael'dryn at the moonwell.
  get Raene's Cleansing |q 1027 |goto Ashenvale 53.54,46.22
step
  note Free the trapped Highborne souls in Night Run and Satyrnaar, then return to Delgren the Purifier at Maestra's Post.
  collect Circle of Imprisonment##19901 |q 1140 |goto Ashenvale 66.62,57.0
step
  talk Sentinel Velene Starstrike##3885
  turnin Mage Summoner##1017 |goto Ashenvale 49.8,67.21
step
  talk Krolg##3897
  turnin Raene's Cleansing##1045 |goto Ashenvale 50.84,75.08
step
  talk Krolg##3897
  accept Raene's Cleansing##1046 |goto Ashenvale 50.84,75.08
step
  note Bring Ran Bloodtooth's Skull and Dartol's Rod of Transformation to Raene Wolfrunner in Astranaar.
  get Raene's Cleansing |q 1046 |goto Ashenvale 50.84,75.08
step
  note Kill the druids: Taneel Darkwood, Uthil Mooncall, Mavoris Cloudsbreak; then return to Kayneth Stillwind in Forest Song.
  kill Taneel Darkwood##3940 |q 1012 |goto Ashenvale 77.18,73.99
step
  talk Illiyana##3901
  turnin The Branch of Cenarius##1031 |goto Ashenvale 87.1,43.49
step
  talk Kayneth Stillwind##3848
  turnin Insane Druids##1012 |goto Ashenvale 85.24,44.71
step
  talk Illiyana##3901
  accept Satyr Slaying!##1032 |goto Ashenvale 87.1,43.49
step
  note Bring 16 Satyr Horns to Illiyana in Forest Song.
  kill Xavian Rogue##3752 |q 1032 |goto Ashenvale 78.4,45.31
step
  talk Pelturas Whitemoon##3894
  turnin Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1046 |goto Ashenvale 36.62,49.58
step
  talk Pelturas Whitemoon##3894
  accept The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
  note Bring 5 Handfuls of Stardust to Pelturas in Astranaar.
  collect Stardust Covered Bush##19016 |q 1034 |goto Ashenvale 33.33,67.98
step
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##1140 |goto Ashenvale 26.2,38.7
step
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##1167 |goto Ashenvale 26.2,38.7
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1027 |goto Ashenvale 53.54,46.22
step
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##1167 |goto Darkshore 54.97,24.89 |tip {turninat}Darkshore
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1028 |goto Ashenvale 53.54,46.22
step
  talk Illiyana##3901
  turnin Satyr Slaying!##1032 |goto Ashenvale 87.1,43.49
step
  talk Pelturas Whitemoon##3894
  turnin The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
  talk Pelturas Whitemoon##3894
  accept Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
step
  note Retrieve a Fallen Moonstone from the Shadethicket Oracle, then bring it to Pelturas in Astranaar.
  kill Shadethicket Oracle##3931 |q 1035 |goto Ashenvale 66.66,82.17
step
  turnin Raene's Cleansing##1028 |goto Ashenvale 56.35,49.2
step
  talk Pelturas Whitemoon##3894
  turnin Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
step
  note {travel}Duskwood
  goto Duskwood 71.93,46.42
]])
