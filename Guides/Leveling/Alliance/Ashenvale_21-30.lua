-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Ashenvale (21-30)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Wetlands (22-31)",
}, [[
step
  note {fp}Maluressian
  goto Ashenvale 36.51,50.36 |tip {vendor}
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##991 |goto Ashenvale 36.62,49.58
step
  talk Shindrell Swiftfire##3845
  accept The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
step
  note Bring 20 Wrathtail Heads to Shindrell Swiftfire in Astranaar.
  collect 20 Wrathtail Head##5490 |q 1008 |goto Ashenvale 7.2,14.49 |tip {dropsfrom}Wrathtail Myrmidon, Wrathtail Razortail, Wrathtail Wave Rider
step
  talk Raene Wolfrunner##3691
  accept Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
  note Bring Dal Bloodclaw's Skull to Raene Wolfrunner in Astranaar.
  collect Dal Bloodclaw's Skull##5544 |q 1054 |goto Ashenvale 39.61,36.31 |tip {dropsfrom}Dal Bloodclaw
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
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##970 |goto Ashenvale 26.2,38.7
step
  note Collect a Glowing Soul Gem and return it to Delgren the Purifier at Maestra's Post.
  collect Glowing Soul Gem##5366 |q 970 |goto Ashenvale 30.99,30.89 |tip {dropsfrom}Dark Strand Cultist, Dark Strand Enforcer, Dark Strand Adept
step
  talk Orendil Broadleaf##3847
  accept Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
  note Bring 5 Bathran's Hair to Orendil Broadleaf in Ashenvale.
  collect 5 Bathran's Hair##5437 |q 1010 |goto Ashenvale 32.07,22.94 |tip {dropsfrom}Plant Bundle
step
  talk Teronis' Corpse##3891
  turnin Raene's Cleansing##991 |goto Ashenvale 20.31,42.33
step
  talk Teronis' Corpse##3891
  accept Raene's Cleansing##1023 |goto Ashenvale 20.31,42.33
step
  note Find the Glowing Gem and return to Raene Wolfrunner in Astranaar with Teronis' Journal.
  collect Glowing Gem##5463 |q 1023 |goto Ashenvale 19.99,43.11 |tip {dropsfrom}Saltspittle Puddlejumper, Saltspittle Warrior, Saltspittle Muckdweller
step
  talk Illiyana##3901
  accept Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 21.73,53.34
step
  talk Sentinel Melyria Frostshadow##3880
  accept The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
  talk Keeper Albagorm##3994
  turnin Journey to Stonetalon Peak##1056 |goto Stonetalon Mountains 37.1,8.1 |tip {turninat}Stonetalon Mountains
step
  talk Talen##3846
  accept The Ancient Statuette##1007 |goto Ashenvale 14.79,31.29
step
  note Bring the Ancient Statuette to Talen, in his camp near the Zoram Strand.
  collect Ancient Statuette##5424 |q 1007 |goto Ashenvale 14.2,20.64
step
  only Mage
  talk Bink##5144
  accept High Sorcerer Andromath##1939 |goto Ironforge 27.25,8.3
step
  talk Brother Kristoff##1444
  accept Speaking of Fortitude##343 |goto Stormwind City 55.04,54.16
step
  talk Dawnwatcher Shaedlass##4786
  accept In Search of Thaelrid##1198 |goto Darnassus 55.36,25.03
step
  talk Argent Guard Manados##4784
  accept Twilight Falls##1199 |goto Darnassus 55.24,23.99
step
  note Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus.
  collect 10 Twilight Pendant##5879 |q 1199 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Acolyte, Twilight Reaver, Twilight Aquamancer
step
  talk Brother Sarno##7917
  accept Tinkmaster Overspark##2923 |goto Stormwind City 51.05,48.39
step
  note Go to the Howling Vale and study the Tome of Mel'Thandris, then return to Sentinel Melyria Frostshadow at Forest Song.
  collect Tome of Mel'Thandris##19027 |q 1022 |goto Ashenvale 50.49,39.13
step
  talk Kaela Shadowspear##4080
  turnin On Guard in Stonetalon##1070 |goto Stonetalon Mountains 59.9,66.85 |tip {turninat}Stonetalon Mountains
step
  talk Warden Thelwater##1719
  accept Quell The Uprising##387 |goto Stormwind City 51.49,69.38
step
  talk Sentinel Velene Starstrike##3885
  accept Elemental Bracers##1016 |goto Ashenvale 49.8,67.21
step
  note Collect 5 Intact Elemental Bracers and use the Divining Scroll on them. Afterwards, bring the Divined Scroll to Sentinel Velene Starstrike at the Silverwind Refuge.
  collect 5 Divined Scroll##5455 |q 1016 |goto Ashenvale 49.8,67.21
step
  talk Tyrande Whisperwind##7999
  turnin Reception from Tyrande##1081 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  talk Argos Nightwhisper##4984
  accept The Corruption Abroad##3765 |goto Stormwind City 36.24,67.61
step
  talk Alonso##210995
  accept Dragonslayer's Helm##78132 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  accept Dragonslayer's Shield##78133 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  accept Dragonslayer's Lance##78134 |goto Ashenvale 43.4,70.4
step
  only Mage
  talk High Sorcerer Andromath##5694
  turnin High Sorcerer Andromath##1939 |goto Stormwind City 48.71,87.62 |tip {turninat}Stormwind City
step
  talk Collin Mauren##4078
  accept Retrieval for Mauren##1078 |goto Stormwind City 53.02,86.64
step
  note Bring 8 Crystalized Scales to Collin Mauren in Stormwind.
  collect 8 Crystalized Scales##5675 |q 1078 |goto Stonetalon Mountains 33.27,72.14 |tip {dropsfrom}Scorched Basilisk, Singed Basilisk, Blackened Basilisk
step
  only Mage
  talk High Sorcerer Andromath##5694
  accept Pristine Spider Silk##1940 |goto Stormwind City 48.71,87.62
step
  only Mage
  note Bring 8 Pristine Spider Silk to Wynne Larson in Stormwind.
  collect 8 Pristine Spider Silk##7267 |q 1940 |goto Duskwood 32.57,51.43 |tip {dropsfrom}Black Widow Hatchling, Carrion Recluse
step
  talk Milton Sheaf##1440
  turnin Speaking of Fortitude##343 |goto Stormwind City 77.07,30.21 |tip {turninat}Stormwind City
step
  talk Tinkmaster Overspark##7944
  turnin Tinkmaster Overspark##2923 |goto Ironforge 69.55,50.33 |tip {turninat}Ironforge
step
  talk Anilia##3920
  turnin Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 78.33,44.82
step
  talk Milton Sheaf##1440
  accept Brother Paxton##344 |goto Stormwind City 77.07,30.21
step
  talk Nikova Raskol##1721
  accept The Color of Blood##388 |goto Stormwind City 76.42,63.67
step
  note Nikova Raskol of Stormwind wants you to collect 10 Red Wool Bandanas.
  collect 10 Red Wool Bandana##2909 |q 388 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Dextren Ward, Defias Prisoner, Defias Captive
step
  talk Anilia##3920
  accept The Branch of Cenarius##1031 |goto Ashenvale 78.33,44.82
step
  note Kill Geltharis and return the Branch of Cenarius to Illiyana at Forest Song.
  collect Branch of Cenarius##5461 |q 1031 |goto Ashenvale 77.99,42.42 |tip {dropsfrom}Geltharis
step
  talk Tinkmaster Overspark##7944
  accept Save Techbot's Brain!##2922 |goto Ironforge 69.55,50.33
step
  note Bring Techbot's Memory Core to Tinkmaster Overspark in Ironforge.
  kill Techbot##6231 |goto Dun Morogh 19.78,31.93 |elite
  collect Techbot's Memory Core##9277 |q 2922 |goto Dun Morogh 19.78,31.93
step
  talk Kayneth Stillwind##3848
  turnin Kayneth Stillwind##4581 |goto Ashenvale 85.24,44.71
step
  talk Kayneth Stillwind##3848
  accept Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
  note Bring a Bottle of Disease to Kayneth Stillwind in Forest Song.
  collect Bottle of Disease##5440 |q 1011 |goto Ashenvale 75.3,71.93
step
  talk Raene Wolfrunner##3691
  turnin Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
  talk Gershala Nightwhisper##8997
  turnin The Corruption Abroad##3765 |goto Darkshore 38.33,43.04 |tip {turninat}Darkshore
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
  talk Shindrell Swiftfire##3845
  accept Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
  note Bring 12 Pridewing Venom Sacs to Shindrell Swiftfire in Astranaar.
  collect 12 Pridewing Venom Sac##5808 |q 1134 |goto Stonetalon Mountains 63.51,54.09 |tip {dropsfrom}Young Pridewing, Pridewing Wyvern, Pridewing Skyhunter
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
  collect Ilkrud Magthrull's Tome##5533 |q 973 |goto Ashenvale 25.28,60.69 |tip {dropsfrom}Ilkrud Magthrull
step
  talk Orendil Broadleaf##3847
  accept Orendil's Cure##1020 |goto Ashenvale 26.44,38.59
step
  talk Illiyana##3901
  turnin The Branch of Cenarius##1031 |goto Ashenvale 21.73,53.34
step
  talk Sentinel Melyria Frostshadow##3880
  turnin The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
  talk Illiyana##3901
  accept Satyr Slaying!##1032 |goto Ashenvale 21.73,53.34
step
  note Bring 16 Satyr Horns to Illiyana in Forest Song.
  collect 16 Satyr Horns##5481 |q 1032 |goto Ashenvale 78.4,45.31 |tip {dropsfrom}Xavian Rogue, Xavian Betrayer, Xavian Felsworn
step
  talk Sentinel Melyria Frostshadow##3880
  accept Velinde Starsong##1037 |goto Ashenvale 22.23,52.98
step
  talk Argent Guard Thaelrid##4787
  turnin In Search of Thaelrid##1198 |goto Blackfathom Deeps - Dungeon -1,-1 |tip {turninat}Blackfathom Deeps - Dungeon
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
  note Warden Thelwater of Stormwind wants you to kill 10 Defias Prisoners, 8 Defias Convicts, and 8 Defias Insurgents in The Stockade.
  kill Defias Prisoner##1706 |q 387 |goto The Stockade - Dungeon -1,-1 |elite
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1024 |goto Ashenvale 53.54,46.22
step
  talk Thyn'tel Bladeweaver##8026
  turnin Velinde Starsong##1037 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  talk Argent Guard Manados##4784
  turnin Twilight Falls##1199 |goto Darnassus 55.24,23.99 |tip {turninat}Darnassus
step
  talk Brother Paxton##951
  turnin Brother Paxton##344 |goto Elwynn Forest 49.61,40.41 |tip {turninat}Elwynn Forest
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1026 |goto Ashenvale 53.54,46.22
step
  note Find the Wooden Key and a piece of Dartol's Rod before returning to Shael'dryn at the moonwell.
  collect Iron Shaft##5464 |q 1026 |goto Ashenvale 54.42,35.4 |tip {dropsfrom}Worn Chest
step
  talk Warden Thelwater##1719
  turnin Quell The Uprising##387 |goto Stormwind City 51.49,69.38 |tip {turninat}Stormwind City
step
  talk Sentinel Velene Starstrike##3885
  turnin Elemental Bracers##1016 |goto Ashenvale 49.8,67.21
step
  talk Sentinel Velene Starstrike##3885
  accept Mage Summoner##1017 |goto Ashenvale 49.8,67.21
step
  note Slay Sarilus Foulborne and bring his head to Sentinel Velene Starstrike in Silverwind Refuge.
  collect Sarilus Foulborne's Head##5537 |q 1017 |goto The Barrens 48.22,19.15 |tip {dropsfrom}Sarilus Foulborne
step
  note Kill 1 Den Watcher, 2 Ursas, 10 Totemics, and 12 Warriors of the Foulweald tribe, and then return to Raene Wolfrunner in Astranaar.
  kill Foulweald Den Watcher##3746 |q 1025 |goto Ashenvale 54.19,61.39
step
  talk Alonso##210995
  turnin Dragonslayer's Helm##78132 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  turnin Dragonslayer's Shield##78133 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  turnin Dragonslayer's Lance##78134 |goto Ashenvale 43.4,70.4
step
  only Mage
  talk Wynne Larson##1309
  turnin Pristine Spider Silk##1940 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  talk Collin Mauren##4078
  turnin Retrieval for Mauren##1078 |goto Stormwind City 53.02,86.64 |tip {turninat}Stormwind City
step
  only Mage
  talk Wynne Larson##1309
  accept Astral Knot Garment##1942 |goto Stormwind City 51.84,83.51
step
  talk Nikova Raskol##1721
  turnin The Color of Blood##388 |goto Stormwind City 76.42,63.67 |tip {turninat}Stormwind City
step
  talk Tinkmaster Overspark##7944
  turnin Save Techbot's Brain!##2922 |goto Ironforge 69.55,50.33 |tip {turninat}Ironforge
step
  talk Kayneth Stillwind##3848
  turnin Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
  talk Kayneth Stillwind##3848
  accept Insane Druids##1012 |goto Ashenvale 85.24,44.71
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
  collect Elune's Tear##5493 |q 1033 |goto Ashenvale 46.34,46.56
step
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##973 |goto Ashenvale 26.2,38.7
step
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##1140 |goto Ashenvale 26.2,38.7
step
  talk Illiyana##3901
  turnin Satyr Slaying!##1032 |goto Ashenvale 21.73,53.34
step
  talk Talen##3846
  turnin Ruuzel##1009 |goto Ashenvale 14.79,31.29
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1026 |goto Ashenvale 53.54,46.22
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1027 |goto Ashenvale 53.54,46.22
step
  note Find the final piece of Dartol's Rod and return to Shael'dryn at the moonwell.
  collect Iron Pommel##5519 |q 1027 |goto Ashenvale 74.36,73.8 |tip {dropsfrom}Rusty Chest
step
  talk Sentinel Velene Starstrike##3885
  turnin Mage Summoner##1017 |goto Ashenvale 49.8,67.21
step
  only Mage
  talk Wynne Larson##1309
  turnin Astral Knot Garment##1942 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  note Kill the druids: Taneel Darkwood, Uthil Mooncall, Mavoris Cloudsbreak; then return to Kayneth Stillwind in Forest Song.
  kill Taneel Darkwood##3940 |q 1012 |goto Ashenvale 77.18,73.99
step
  note Free the trapped Highborne souls in Night Run and Satyrnaar, then return to Delgren the Purifier at Maestra's Post.
  collect Circle of Imprisonment##19901 |q 1140 |goto Ashenvale 66.62,57
step
  talk Kayneth Stillwind##3848
  turnin Insane Druids##1012 |goto Ashenvale 85.24,44.71
step
  talk Pelturas Whitemoon##3894
  turnin Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
  talk Pelturas Whitemoon##3894
  accept The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
  note Bring 5 Handfuls of Stardust to Pelturas in Astranaar.
  collect 5 Handful of Stardust##5494 |q 1034 |goto Ashenvale 33.33,67.98 |tip {dropsfrom}Stardust Covered Bush
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
  talk Pelturas Whitemoon##3894
  turnin The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
  talk Pelturas Whitemoon##3894
  accept Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
step
  note Retrieve a Fallen Moonstone from the Shadethicket Oracle, then bring it to Pelturas in Astranaar.
  collect Fallen Moonstone##5508 |q 1035 |goto Ashenvale 66.66,82.17 |tip {dropsfrom}Shadethicket Oracle
step
  turnin Raene's Cleansing##1028 |goto Ashenvale 56.35,49.2
step
  click Hidden Shrine##19024
  accept Raene's Cleansing##1055 |goto Ashenvale 56.35,49.2
step
  talk Pelturas Whitemoon##3894
  turnin Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1055 |goto Ashenvale 53.54,46.22
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1029 |goto Ashenvale 53.54,46.22
step
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1029 |goto Ashenvale 36.62,49.58
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##1030 |goto Ashenvale 36.62,49.58
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
  talk Krolg##3897
  turnin Raene's Cleansing##1045 |goto Ashenvale 50.84,75.08
step
  talk Krolg##3897
  accept Raene's Cleansing##1046 |goto Ashenvale 50.84,75.08
step
  note Bring Ran Bloodtooth's Skull and Dartol's Rod of Transformation to Raene Wolfrunner in Astranaar.
  collect Ran Bloodtooth's Skull##5388 |q 1046 |goto Ashenvale 54.75,79.62 |tip {dropsfrom}Ran Bloodtooth
step
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1046 |goto Ashenvale 36.62,49.58
step
  note {travel}Wetlands
  goto Wetlands 50.05,18.17
]])
