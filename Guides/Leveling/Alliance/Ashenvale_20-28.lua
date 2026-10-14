-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Ashenvale (20-28)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Ashenvale (30-32)",
	rev = "024a4a31",
}, [[
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
  only completed(967)
  note Collect a Glowing Soul Gem and return it to Delgren the Purifier at Maestra's Post.
  collect Glowing Soul Gem##5366 |q 970 |goto Ashenvale 30.99,30.89 |tip {dropsfrom}Dark Strand Cultist, Dark Strand Enforcer, Dark Strand Adept
step
  only completed(967)
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##970 |goto Ashenvale 26.2,38.7
step
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
  note Bring the Ancient Statuette to Talen, in his camp near the Zoram Strand.
  collect Ancient Statuette##5424 |q 1007 |goto Ashenvale 14.2,20.64
step
  note Bring 20 Wrathtail Heads to Shindrell Swiftfire in Astranaar.
  collect 20 Wrathtail Head##5490 |q 1008 |goto Ashenvale 7.21,14.28 |tip {dropsfrom}Wrathtail Myrmidon, Wrathtail Razortail, Wrathtail Wave Rider
step
  talk Talen##3846
  turnin The Ancient Statuette##1007 |goto Ashenvale 14.79,31.29
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
  talk Shindrell Swiftfire##3845
  accept Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
  talk Raene Wolfrunner##3691
  accept An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
  talk Orendil Broadleaf##3847
  accept Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
  only completed(967)
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##973 |goto Ashenvale 26.2,38.7
step
  note Bring 5 Bathran's Hair to Orendil Broadleaf in Ashenvale.
  collect 5 Bathran's Hair##5437 |q 1010 |goto Ashenvale 31.86,22.94 |tip {dropsfrom}Plant Bundle
step
  talk Orendil Broadleaf##3847
  turnin Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
  talk Orendil Broadleaf##3847
  accept Orendil's Cure##1020 |goto Ashenvale 26.44,38.59
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1024 |goto Ashenvale 53.54,46.22
step
  talk Sentinel Velene Starstrike##3885
  accept Elemental Bracers##1016 |goto Ashenvale 49.8,67.21
step
  note Collect 5 Intact Elemental Bracers and use the Divining Scroll on them. Afterwards, bring the Divined Scroll to Sentinel Velene Starstrike at the Silverwind Refuge.
  collect 5 Divined Scroll##5455 |q 1016 |goto Ashenvale 49.8,67.21
step
  note Kill 1 Den Watcher, 2 Ursas, 10 Totemics, and 12 Warriors of the Foulweald tribe, and then return to Raene Wolfrunner in Astranaar.
  kill Foulweald Den Watcher##3746 |q 1025 |goto Ashenvale 54.19,61.39
step
  talk Sentinel Velene Starstrike##3885
  turnin Elemental Bracers##1016 |goto Ashenvale 49.8,67.21
step
  talk Sentinel Velene Starstrike##3885
  accept Mage Summoner##1017 |goto Ashenvale 49.8,67.21
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
  talk Alonso##210995
  turnin Dragonslayer's Helm##78132 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  turnin Dragonslayer's Shield##78133 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  turnin Dragonslayer's Lance##78134 |goto Ashenvale 43.4,70.4
step
  talk Pelturas Whitemoon##3894
  turnin Orendil's Cure##1020 |goto Ashenvale 37.37,51.79
step
  talk Raene Wolfrunner##3691
  turnin An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
  talk Pelturas Whitemoon##3894
  accept Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
  talk Raene Wolfrunner##3691
  accept Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
  only completed(967)
  note Bring Ilkrud Magthrull's Tome to Delgren the Purifier at Maestra's Post.
  collect Ilkrud Magthrull's Tome##5533 |q 973 |goto Ashenvale 25.28,60.69 |tip {dropsfrom}Ilkrud Magthrull
step
  note Bring Dal Bloodclaw's Skull to Raene Wolfrunner in Astranaar.
  collect Dal Bloodclaw's Skull##5544 |q 1054 |goto Ashenvale 39.61,36.31 |tip {dropsfrom}Dal Bloodclaw
step
  talk Raene Wolfrunner##3691
  turnin Culling the Threat##1054 |goto Ashenvale 36.62,49.58
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
  talk Delgren the Purifier##3663
  turnin Supplies to Auberdine##976 |goto Ashenvale 26.2,38.7
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
  talk Shael'dryn##3916
  accept Raene's Cleansing##1026 |goto Ashenvale 53.54,46.22
step
  note Find the Wooden Key and a piece of Dartol's Rod before returning to Shael'dryn at the moonwell.
  collect Iron Shaft##5464 |q 1026 |goto Ashenvale 54.42,35.4 |tip {dropsfrom}Worn Chest
step
  note Bring Elune's Tear to Pelturas in Astranaar.
  collect Elune's Tear##5493 |q 1033 |goto Ashenvale 46.07,46.56
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1026 |goto Ashenvale 53.54,46.22
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
  talk Pelturas Whitemoon##3894
  turnin The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
  only completed(1082)
  talk Sentinel Thenysil##4079
  accept Reception from Tyrande##1081 |goto Ashenvale 34.89,49.79
step
  only completed(967)
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##1140 |goto Ashenvale 26.2,38.7
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1027 |goto Ashenvale 53.54,46.22
step
  only completed(967)
  note Free the trapped Highborne souls in Night Run and Satyrnaar, then return to Delgren the Purifier at Maestra's Post.
  collect Circle of Imprisonment##19901 |q 1140 |goto Ashenvale 66.62,57
step
  note Find the final piece of Dartol's Rod and return to Shael'dryn at the moonwell.
  collect Iron Pommel##5519 |q 1027 |goto Ashenvale 74.41,73.38 |tip {dropsfrom}Rusty Chest
step
  only completed(967)
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##1140 |goto Ashenvale 26.2,38.7
step
  only completed(967)
  talk Delgren the Purifier##3663
  accept The Tower of Althalaxx##1167 |goto Ashenvale 26.2,38.7
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1027 |goto Ashenvale 53.54,46.22
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1028 |goto Ashenvale 53.54,46.22
step
  turnin Raene's Cleansing##1028 |goto Ashenvale 56.35,49.2
step
  click Hidden Shrine##19024
  accept Raene's Cleansing##1055 |goto Ashenvale 56.35,49.2
step
  talk Shael'dryn##3916
  turnin Raene's Cleansing##1055 |goto Ashenvale 53.54,46.22
step
  talk Shael'dryn##3916
  accept Raene's Cleansing##1029 |goto Ashenvale 53.54,46.22
step
  click Gleaming Crescent Pendant##669176
  accept Gleaming Crescent Necklace##98027 |goto Ashenvale 62.96,71.55
step
  talk Kayneth Stillwind##3848
  accept Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1029 |goto Ashenvale 36.62,49.58
step
  talk Maliynn##3961
  turnin Gleaming Crescent Necklace##98027 |goto Ashenvale 36.62,49.98
step
  talk Raene Wolfrunner##3691
  accept Raene's Cleansing##1030 |goto Ashenvale 36.62,49.58
step
  talk Shindrell Swiftfire##3845
  accept Kayneth Stillwind##4581 |goto Ashenvale 34.67,48.84
step
  talk Krolg##3897
  turnin Raene's Cleansing##1030 |goto Ashenvale 50.84,75.08
step
  note Bring a Bottle of Disease to Kayneth Stillwind in Forest Song.
  collect Bottle of Disease##5440 |q 1011 |goto Ashenvale 75.31,71.93
step
  talk Kayneth Stillwind##3848
  turnin Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
  talk Kayneth Stillwind##3848
  turnin Kayneth Stillwind##4581 |goto Ashenvale 85.24,44.71
step
  talk Keeper Albagorm##3994
  turnin Journey to Stonetalon Peak##1056 |goto Stonetalon Mountains 37.1,8.1 |tip {turninat}Stonetalon Mountains
step
  talk Kaela Shadowspear##4080
  turnin On Guard in Stonetalon##1070 |goto Stonetalon Mountains 59.9,66.85 |tip {turninat}Stonetalon Mountains
step
  only completed(1082)
  talk Tyrande Whisperwind##7999
  turnin Reception from Tyrande##1081 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  note Bring 12 Pridewing Venom Sacs to Shindrell Swiftfire in Astranaar.
  collect 12 Pridewing Venom Sac##5808 |q 1134 |goto Stonetalon Mountains 63.51,59.21 |tip {dropsfrom}Young Pridewing, Pridewing Wyvern, Pridewing Skyhunter
step
  note Slay Sarilus Foulborne and bring his head to Sentinel Velene Starstrike in Silverwind Refuge.
  collect Sarilus Foulborne's Head##5537 |q 1017 |goto The Barrens 48.22,19.15 |tip {dropsfrom}Sarilus Foulborne
step
  talk Shindrell Swiftfire##3845
  turnin Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
  talk Sentinel Velene Starstrike##3885
  turnin Mage Summoner##1017 |goto Ashenvale 49.8,67.21
step
  only completed(967)
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##1167 |goto Darkshore 54.97,24.89 |tip {turninat}Darkshore
step
  only completed(967)
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##1143 |goto Darkshore 54.97,24.89
step
  only completed(967)
  note Kill Athrikus Narassin and bring his head to Balthule Shadowstrike near the Tower of Althalaxx.
  collect Athrikus Narassin's Head##5383 |q 1143 |goto Darkshore 56.02,26.33 |tip {dropsfrom}Athrikus Narassin, Galvinquam Leafsyre
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
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##981 |goto Ashenvale 26.2,38.7
step
  note {travel}Darnassus
  goto Darnassus 59.51,45.38
]])
