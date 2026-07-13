-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Darkshore (12-20)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Bloodmyst Isle (13-19)",
}, [[
step
  note {fp}Caylais Moonfeather
  goto Darkshore 36.34,45.58 |tip {vendor}
step
  talk Onu##3616
  accept Mathystra Relics##951 |goto Darkshore 43.55,76.29
step
  talk Onu##3616
  accept Onu is meditating##960 |goto Darkshore 43.55,76.29
step
  talk Sentinel Tysha Moonblade##3639
  accept The Fall of Ameth'Aran##953 |goto Darkshore 40.3,59.73
step
  note Study the tablets which tell of Ameth'Aran and of its fall, then return to Sentinel Tysha Moonblade in Darkshore.
  collect The Lay of Ameth'Aran##17188 |q 953 |goto Darkshore 43.3,58.68
step
  talk Archaeologist Hollee##2913
  accept The Absent Minded Prospector##729 |goto Darkshore 37.44,41.84
step
  talk Barithras Moonshade##3583
  accept Cave Mushrooms##947 |goto Darkshore 37.32,43.64
step
  talk Thundris Windweaver##3649
  accept Bashal'Aran##954 |goto Darkshore 37.4,40.13
step
  talk Thundris Windweaver##3649
  accept Tools of the Highborne##958 |goto Darkshore 37.4,40.13
step
  talk Cerellean Whiteclaw##3644
  accept For Love Eternal##963 |goto Darkshore 35.74,43.71
step
  talk Sentinel Elissa Starbreeze##3657
  accept The Tower of Althalaxx##965 |goto Darkshore 39.05,43.55
step
  talk Gorbold Steelhand##6301
  accept Deep Ocean, Vast Sea##982 |goto Darkshore 38.11,41.17
step
  talk Wizbang Cranktoggle##3666
  accept Buzzbox 827##983 |goto Darkshore 36.97,44.13
step
  talk Terenthis##3693
  accept How Big a Threat?##984 |goto Darkshore 39.37,43.48
step
  talk Fiora Longears##4456
  accept Journey to Astranaar##1133 |goto Darkshore 33.77,42.37
step
  talk Fiora Longears##4456
  accept Highperch Venom##1135 |goto Darkshore 33.77,42.37
step
  talk Gubber Blump##10216
  accept Fruit of the Sea##1138 |goto Darkshore 36.1,44.93
step
  talk Gubber Blump##10216
  accept The Family and the Fishing Pole##1141 |goto Darkshore 36.1,44.93
step
  talk Gershala Nightwhisper##8997
  accept Researching the Corruption##1275 |goto Darkshore 38.33,43.04
step
  only Paladin
  talk Thundris Windweaver##3649
  accept Seeking the Kor Gem##1442 |goto Darkshore 37.4,40.13
step
  talk Wizbang Cranktoggle##3666
  accept Gaffer Jacks##1579 |goto Darkshore 36.97,44.13
step
  talk Tharnariun Treetender##3701
  accept Plagued Lands##2118 |goto Darkshore 38.84,43.42
step
  talk Alanndarian Nightsong##3702
  accept Easy Strider Living##2178 |goto Darkshore 37.69,40.66
step
  talk Gwennyth Bly'Leggonde##10219
  accept Washed Ashore##3524 |goto Darkshore 36.62,45.59
step
  talk Sentinel Glynda Nal'Shea##2930
  accept The Red Crystal##4811 |goto Darkshore 37.7,43.41
step
  only NightElf
  talk Laird##4200
  accept Return to Nessa##6343 |goto Darkshore 36.77,44.28
step
  talk Elder Starweave##15601
  accept Starweave the Elder##8721 |goto Darkshore 36.81,46.77
step
  talk Thundris Windweaver##3649
  accept Onward to Ashenvale##10752 |goto Darkshore 37.4,40.13
step
  talk Asterion##3650
  turnin Bashal'Aran##954 |goto Darkshore 44.17,36.29
step
  talk Asterion##3650
  accept Bashal'Aran##955 |goto Darkshore 44.17,36.29
step
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##965 |goto Darkshore 54.97,24.89
step
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##966 |goto Darkshore 54.97,24.89
step
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##1143 |goto Darkshore 54.97,24.89
step
  talk Gelkak Gyromast##6667
  accept Gyromast's Retrieval##2098 |goto Darkshore 56.66,13.48
step
  talk Onu##3616
  turnin Mathystra Relics##951 |goto Darkshore 43.55,76.29
step
  talk Onu##3616
  turnin Onu is meditating##960 |goto Darkshore 43.55,76.29
step
  only NightElf
  talk Nessa Shadowsong##10118
  turnin Return to Nessa##6343 |goto Teldrassil 56.26,92.44 |tip {turninat}Teldrassil
step
  talk Prospector Remtravel##2917
  turnin The Absent Minded Prospector##729 |goto Darkshore 35.73,83.7
step
  talk Prospector Remtravel##2917
  accept The Absent Minded Prospector##731 |goto Darkshore 35.73,83.7
step
  talk Sentinel Tysha Moonblade##3639
  turnin The Fall of Ameth'Aran##953 |goto Darkshore 40.3,59.73
step
  talk Raene Wolfrunner##3691
  turnin Onward to Ashenvale##10752 |goto Ashenvale 36.62,49.58 |tip {turninat}Ashenvale
step
  talk Alanndarian Nightsong##3702
  turnin Easy Strider Living##2178 |goto Darkshore 37.69,40.66
step
  talk Elder Starweave##15601
  turnin Starweave the Elder##8721 |goto Darkshore 36.81,46.77
step
  only Paladin
  talk Thundris Windweaver##3649
  turnin Seeking the Kor Gem##1442 |goto Darkshore 37.4,40.13
step
  talk Wizbang Cranktoggle##3666
  turnin Gaffer Jacks##1579 |goto Darkshore 36.97,44.13
step
  talk Barithras Moonshade##3583
  turnin Cave Mushrooms##947 |goto Darkshore 37.32,43.64
step
  talk Thundris Windweaver##3649
  turnin Tools of the Highborne##958 |goto Darkshore 37.4,40.13
step
  talk Cerellean Whiteclaw##3644
  turnin For Love Eternal##963 |goto Darkshore 35.74,43.71
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Washed Ashore##3524 |goto Darkshore 36.62,45.59
step
  talk Tharnariun Treetender##3701
  turnin Plagued Lands##2118 |goto Darkshore 38.84,43.42
step
  talk Sentinel Glynda Nal'Shea##2930
  turnin The Red Crystal##4811 |goto Darkshore 37.7,43.41
step
  talk Gorbold Steelhand##6301
  turnin Deep Ocean, Vast Sea##982 |goto Darkshore 38.11,41.17
step
  turnin Buzzbox 827##983 |goto Darkshore 36.64,46.26
step
  talk Terenthis##3693
  turnin How Big a Threat?##984 |goto Darkshore 39.37,43.48
step
  talk Archaeologist Hollee##2913
  turnin The Absent Minded Prospector##731 |goto Darkshore 37.44,41.84
step
  talk Shindrell Swiftfire##3845
  turnin Journey to Astranaar##1133 |goto Ashenvale 34.67,48.84 |tip {turninat}Ashenvale
step
  talk Fiora Longears##4456
  turnin Highperch Venom##1135 |goto Darkshore 33.77,42.37
step
  talk Gubber Blump##10216
  turnin Fruit of the Sea##1138 |goto Darkshore 36.1,44.93
step
  talk Gubber Blump##10216
  turnin The Family and the Fishing Pole##1141 |goto Darkshore 36.1,44.93
step
  talk Gershala Nightwhisper##8997
  turnin Researching the Corruption##1275 |goto Darkshore 38.33,43.04
step
  talk Archaeologist Hollee##2913
  accept The Absent Minded Prospector##741 |goto Darkshore 37.44,41.84
step
  talk Barithras Moonshade##3583
  accept Onu##948 |goto Darkshore 37.32,43.64
step
  talk Terenthis##3693
  accept How Big a Threat?##985 |goto Darkshore 39.37,43.48
step
  talk Wizbang Cranktoggle##3666
  accept Electropellers##1580 |goto Darkshore 36.97,44.13
step
  talk Tharnariun Treetender##3701
  accept Cleansing of the Infected##2138 |goto Darkshore 38.84,43.42
step
  talk Gwennyth Bly'Leggonde##10219
  accept Washed Ashore##4681 |goto Darkshore 36.62,45.59
step
  talk Terenthis##3693
  accept Thundris Windweaver##4761 |goto Darkshore 39.37,43.48
step
  talk Sentinel Glynda Nal'Shea##2930
  accept As Water Cascades##4812 |goto Darkshore 37.7,43.41
step
  talk Asterion##3650
  turnin Bashal'Aran##955 |goto Darkshore 44.17,36.29
step
  talk Asterion##3650
  accept Bashal'Aran##956 |goto Darkshore 44.17,36.29
step
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##966 |goto Darkshore 54.97,24.89
step
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##1143 |goto Darkshore 54.97,24.89
step
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##967 |goto Darkshore 54.97,24.89
step
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##981 |goto Darkshore 54.97,24.89
step
  talk Gelkak Gyromast##6667
  turnin Gyromast's Retrieval##2098 |goto Darkshore 56.66,13.48
step
  talk Gelkak Gyromast##6667
  accept Gyromast's Revenge##2078 |goto Darkshore 56.66,13.48
step
  note Find Gelkak's First Mate, the Threshwackonator 4100, and lead it back to Gelkak.
  kill The Threshwackonator 4100##6669 |q 2078 |goto Darkshore 55.81,18.29
step
  talk Onu##3616
  turnin Onu##948 |goto Darkshore 43.55,76.29
step
  talk Chief Archaeologist Greywhisker##2912
  turnin The Absent Minded Prospector##741 |goto Darnassus 31.24,84.51 |tip {turninat}Darnassus
step
  note Kill 8 Blackwood Pathfinders and 5 Windtalkers and return to Terenthis in Auberdine.
  kill Blackwood Pathfinder##2167 |q 985 |goto Darkshore 39.63,53.94
step
  note Cleanse the forest of 20 Rabid Thistle Bears and return to Tharnariun Treetender in Darkshore.
  kill Rabid Thistle Bear##2164 |q 2138 |goto Darkshore 43.74,56.59
step
  talk Thundris Windweaver##3649
  turnin Thundris Windweaver##4761 |goto Darkshore 37.4,40.13
step
  talk Wizbang Cranktoggle##3666
  turnin Electropellers##1580 |goto Darkshore 36.97,44.13
step
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##967 |goto Ashenvale 26.2,38.7 |tip {turninat}Ashenvale
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Washed Ashore##4681 |goto Darkshore 36.62,45.59
step
  turnin As Water Cascades##4812 |goto Darkshore 47.32,48.68
step
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##981 |goto Ashenvale 26.2,38.7 |tip {turninat}Ashenvale
step
  talk Terenthis##3693
  turnin How Big a Threat?##985 |goto Darkshore 39.37,43.48
step
  talk Tharnariun Treetender##3701
  turnin Cleansing of the Infected##2138 |goto Darkshore 38.84,43.42
step
  talk Terenthis##3693
  accept A Lost Master##986 |goto Darkshore 39.37,43.48
step
  talk Tharnariun Treetender##3701
  accept Tharnariun's Hope##2139 |goto Darkshore 38.84,43.42
step
  talk Thundris Windweaver##3649
  accept The Cliffspring River##4762 |goto Darkshore 37.4,40.13
step
  talk Asterion##3650
  turnin Bashal'Aran##956 |goto Darkshore 44.17,36.29
step
  talk Asterion##3650
  accept Bashal'Aran##957 |goto Darkshore 44.17,36.29
step
  note Find and kill the Den Mother.
  kill Den Mother##6788 |q 2139 |goto Darkshore 51.48,38.26
step
  talk Gelkak Gyromast##6667
  turnin Gyromast's Revenge##2078 |goto Darkshore 56.66,13.48
step
  note Destroy the Ancient Moonstone Seal at the ancient flame in Ameth'Aran, then return to Asterion in Bashal'Aran.
  collect Ancient Flame##16393 |q 957 |goto Darkshore 42.37,61.82
step
  talk Thundris Windweaver##3649
  turnin The Cliffspring River##4762 |goto Darkshore 37.4,40.13
step
  talk Terenthis##3693
  turnin A Lost Master##986 |goto Darkshore 39.37,43.48
step
  talk Tharnariun Treetender##3701
  turnin Tharnariun's Hope##2139 |goto Darkshore 38.84,43.42
step
  talk Terenthis##3693
  accept A Lost Master##993 |goto Darkshore 39.37,43.48
step
  talk Thundris Windweaver##3649
  accept The Blackwood Corrupted##4763 |goto Darkshore 37.4,40.13
step
  talk Asterion##3650
  turnin Bashal'Aran##957 |goto Darkshore 44.17,36.29
step
  talk Volcor##3692
  turnin A Lost Master##993 |goto Darkshore 45.01,85.3
step
  talk Thundris Windweaver##3649
  turnin The Blackwood Corrupted##4763 |goto Darkshore 37.4,40.13
step
  note {travel}Bloodmyst Isle
  goto Bloodmyst Isle 55.85,59.81
]])
