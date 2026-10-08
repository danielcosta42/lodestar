-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Darkshore (13-20)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Redridge Mountains (15-25)",
}, [[
step
  note {fp}Jaelysia
  goto Darkshore 37.4,44.28 |tip {vendor}
step
  talk Archaeologist Hollee##2913
  accept The Absent Minded Prospector##729 |goto Darkshore 37.44,41.84
step
  talk Barithras Moonshade##3583
  accept Cave Mushrooms##947 |goto Darkshore 37.32,43.64
step
  note Bring 5 Scaber Stalks and 1 Death Cap to Barithras Moonshade in Auberdine.
  collect 5 Scaber Stalk##5271 |q 947 |goto Darkshore 55.51,34.59
step
  talk Thundris Windweaver##3649
  accept Bashal'Aran##954 |goto Darkshore 37.4,40.13
step
  talk Thundris Windweaver##3649
  accept Tools of the Highborne##958 |goto Darkshore 37.4,40.13
step
  note Retrieve 7 Highborne Relics for Thundris Windweaver in Auberdine.
  collect 7 Highborne Relic##5360 |q 958 |goto Darkshore 42.23,58.23 |tip {dropsfrom}Cursed Highborne, Writhing Highborne, Wailing Highborne
step
  talk Cerellean Whiteclaw##3644
  accept For Love Eternal##963 |goto Darkshore 35.74,43.71
step
  note Free the spirit of Anaya Dawnrunner and bring her pendant back to Cerellean Whiteclaw in Auberdine.
  collect Anaya's Pendant##5382 |q 963 |goto Darkshore 41.81,60.73 |tip {dropsfrom}Anaya Dawnrunner
step
  talk Sentinel Elissa Starbreeze##3657
  accept The Tower of Althalaxx##965 |goto Darkshore 39.05,43.55
step
  talk Gorbold Steelhand##6301
  accept Deep Ocean, Vast Sea##982 |goto Darkshore 38.11,41.17
step
  note Recover the Silver Dawning's Lockbox and the Mist Veil's Lockbox for Gorbold Steelhand in Auberdine. Both items should be found aboard the wreckage of the ships to the north of the village.
  collect Silver Dawning's Lockbox##12191 |q 982 |goto Darkshore 38.24,28.8
step
  talk Wizbang Cranktoggle##3666
  accept Buzzbox 827##983 |goto Darkshore 36.97,44.13
step
  note Collect 6 Crawler Legs and place them in Buzzbox 827.
  collect 6 Crawler Leg##5385 |q 983 |goto Darkshore 36.31,44.4 |tip {dropsfrom}Pygmy Tide Crawler, Tide Crawler, Encrusted Tide Crawler
step
  talk Terenthis##3693
  accept How Big a Threat?##984 |goto Darkshore 39.37,43.48
step
  talk Gubber Blump##10216
  accept Fruit of the Sea##1138 |goto Darkshore 36.1,44.93
step
  note Collect 6 Fine Crab Chunks for Gubber Blump in Auberdine.
  collect 6 Fine Crab Chunks##12237 |q 1138 |goto Darkshore 51.73,22.54 |tip {dropsfrom}Encrusted Tide Crawler, Reef Crawler
step
  talk Gubber Blump##10216
  accept The Family and the Fishing Pole##1141 |goto Darkshore 36.1,44.93
step
  note Catch 6 Darkshore Grouper for Gubber Blump in Auberdine.
  collect Darkshore Grouper##12238 |q 1141 |goto Darkshore 36.1,44.93
step
  talk Gershala Nightwhisper##8997
  accept Researching the Corruption##1275 |goto Darkshore 38.33,43.04
step
  note Gershala Nightwhisper in Auberdine wants 8 Corrupt Brain stems.
  kill Fallenroot Satyr##4788 |goto Ashenvale 13.78,12.22 |elite
  collect Corrupted Brain Stem##5952 |q 1275 |goto Ashenvale 13.78,12.22
step
  talk Tharnariun Treetender##3701
  accept Plagued Lands##2118 |goto Darkshore 38.84,43.42
step
  talk Gwennyth Bly'Leggonde##10219
  accept Washed Ashore##3524 |goto Darkshore 36.62,45.59
step
  note Recover Sea Creature Bones from the beached sea creature just south of Auberdine, and then return with it to Gwennyth Bly'Leggonde in Auberdine.
  collect Sea Creature Bones##12242 |q 3524 |goto Darkshore 36.37,50.92 |tip {dropsfrom}Beached Sea Creature
step
  click WANTED: Murkdeep!##175320
  accept WANTED: Murkdeep!##4740 |goto Darkshore 37.22,44.22
step
  talk Sentinel Glynda Nal'Shea##2930
  accept The Red Crystal##4811 |goto Darkshore 37.7,43.41
step
  only NightElf Druid
  talk Alanndarian Nightsong##3702
  accept Gathering the Cure##6123 |goto Darkshore 37.69,40.66
step
  only NightElf Druid
  note Bring 5 Earthroot and 12 Lunar Funguses to Alanndarian Nightsong in Auberdine so she may make a curative salve.
  collect 5 Earthroot##2449 |q 6123 |goto Teldrassil 57.95,66.7 |tip {dropsfrom}Lasher Sproutling, Wrathvine, Earthroot
step
  only NightElf
  talk Laird##4200
  accept Return to Nessa##6343 |goto Darkshore 36.77,44.28
step
  talk Gwennyth Bly'Leggonde##10219
  accept Holy Diver##87760 |goto Darkshore 36.62,45.59
step
  note Find a Stormscale Beastmistress, slay her, and bring back her Rod of Deep Dominion.
  collect Rod of Deep Dominion##280686 |q 87760 |goto Darkshore 49.6,11.8 |tip {dropsfrom}Stormscale Beastmistress
step
  talk Thundris Windweaver##3649
  accept Expanding Horizons##97914 |goto Darkshore 37.4,40.13
step
  click WANTED: Murkdeep!##175320
  accept WANTED: Jai'vhanel##98025 |goto Darkshore 37.22,44.22
step
  note Find and slay the owl known as Jai'vhanel and take one of her feathers. The black owl was last seen north of the Ameth'Aran ruins near the mountain base. Report the death of Jai'vhanel to Sentinel Glynda Nal'Shea in Auberdine.
  collect Feather of Jai'vhanel##281038 |q 98025 |goto Darkshore 45.15,58.25 |tip {dropsfrom}Jai'vhanel
step
  talk Archaeologist Hollee##2913
  accept Unrequited Love##98461 |goto Darkshore 37.44,41.84
step
  note Travel east of Auberdine and look for a large, red crystal along Darkshore's eastern mountain range. Report back what you find to Sentinel Glynda Nal'Shea in Auberdine.
  collect Mysterious Red Crystal##175524 |q 4811 |goto Darkshore 47.32,48.68
step
  talk Asterion##3650
  turnin Bashal'Aran##954 |goto Darkshore 44.17,36.29
step
  talk Baros Alexston##1646
  turnin Expanding Horizons##97914 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  talk Asterion##3650
  accept Bashal'Aran##955 |goto Darkshore 44.17,36.29
step
  note Acquire 8 Grell Earrings for Asterion in Bashal'Aran.
  collect 8 Grell Earring##5336 |q 955 |goto Darkshore 44.82,37.54 |tip {dropsfrom}Vile Sprite, Wild Grell
step
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##965 |goto Darkshore 54.97,24.89
step
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##966 |goto Darkshore 54.97,24.89
step
  note Collect 4 Worn Parchments for Balthule Shadowstrike near the Tower of Althalaxx.
  collect 4 Worn Parchment##5348 |q 966 |goto Darkshore 56.5,26.63 |tip {dropsfrom}Dark Strand Fanatic
step
  talk Balthule Shadowstrike##3661
  accept The Tower of Althalaxx##1143 |goto Darkshore 54.97,24.89
step
  note Kill Athrikus Narassin and bring his head to Balthule Shadowstrike near the Tower of Althalaxx.
  collect Athrikus Narassin's Head##5383 |q 1143 |goto Darkshore 56.02,26.33 |tip {dropsfrom}Athrikus Narassin, Galvinquam Leafsyre
step
  kill Baron Marinous##270294 |goto Darkshore 59.06,22.95 |tip Loot the quest item here — it starts the quest.
  accept Baron Marinous##98028 |goto Darkshore 59.06,22.95
step
  talk Gelkak Gyromast##6667
  accept Gyromast's Retrieval##2098 |goto Darkshore 56.66,13.48
step
  note Find and return the three pieces of Gelkak's Key to Gelkak Gyromast.
  collect Top of Gelkak's Key##7498 |q 2098 |goto Darkshore 39.1,89.1 |tip {dropsfrom}Giant Foreststrider
step
  talk Sentinel Tysha Moonblade##3639
  accept The Fall of Ameth'Aran##953 |goto Darkshore 40.3,59.73
step
  note Study the tablets which tell of Ameth'Aran and of its fall, then return to Sentinel Tysha Moonblade in Darkshore.
  collect The Lay of Ameth'Aran##17188 |q 953 |goto Darkshore 43.3,58.68
step
  note Capture a living Rabid Thistle Bear and bring it back to Tharnariun.
  use Rabid Thistle Bear##2164 |q 2118 |goto Darkshore 43.74,56.59 |tip {useit}
step
  talk Onu##3616
  turnin Baron Marinous##98028 |goto Darkshore 43.55,76.29
step
  talk Arbal##270269
  accept Swelling Forces##98013 |goto Darkshore 43.71,76.51
step
  note Find and slay the murloc known as Murkdeep. The creature is thought to be defending the murloc huts south of Auberdine along the water.
  kill Murkdeep##10323 |q 4740 |goto Darkshore 36.44,76.51
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
  kill Twilight Disciple##2338 |goto Darkshore 38.74,87.21 |tip Loot the quest item here — it starts the quest.
  accept The Powers Below##968 |goto Darkshore 38.74,87.21
step
  click Twilight Tome##12666
  accept It's All Fun and Games Until...##98042 |goto Darkshore 38.54,86.05
step
  note Obtain a Peerless Eye from a Twilight Disciple or Thug at the Master's Glaive in Darkshore and find someone in Auberdine who is willing to take it.
  collect Peerless Eye##279279 |q 98042 |goto Darkshore 38.74,87.21 |tip {dropsfrom}Twilight Disciple, Twilight Thug
step
  talk Sentinel Glynda Nal'Shea##2930
  turnin WANTED: Murkdeep!##4740 |goto Darkshore 37.7,43.41
step
  talk Tarrel Rockweaver##2096
  turnin Unrequited Love##98461 |goto Wetlands 11.5,52.17 |tip {turninat}Wetlands
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
  talk Gwennyth Bly'Leggonde##10219
  turnin Holy Diver##87760 |goto Darkshore 36.62,45.59
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
  talk Sentinel Glynda Nal'Shea##2930
  turnin WANTED: Jai'vhanel##98025 |goto Darkshore 37.7,43.41
step
  only NightElf Druid
  talk Alanndarian Nightsong##3702
  turnin Gathering the Cure##6123 |goto Darkshore 37.69,40.66
step
  talk Gubber Blump##10216
  turnin Fruit of the Sea##1138 |goto Darkshore 36.1,44.93
step
  talk Gubber Blump##10216
  turnin The Family and the Fishing Pole##1141 |goto Darkshore 36.1,44.93
step
  talk Thundris Windweaver##3649
  turnin It's All Fun and Games Until...##98042 |goto Darkshore 37.4,40.13
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
  click Buzzbox 827##17182
  accept Buzzbox 411##1001 |goto Darkshore 36.64,46.26
step
  note Collect 3 Thresher Eyes from Darkshore Threshers in the deep sea near Buzzbox 411.
  collect 3 Thresher Eye##5412 |q 1001 |goto Darkshore 33.85,38.38 |tip {dropsfrom}Darkshore Thresher, Elder Darkshore Thresher
step
  talk Tharnariun Treetender##3701
  accept Cleansing of the Infected##2138 |goto Darkshore 38.84,43.42
step
  talk Gwennyth Bly'Leggonde##10219
  accept Washed Ashore##4681 |goto Darkshore 36.62,45.59
step
  note Recover the Sea Turtle Remains from the Skeletal Sea Turtle in the waters west of Auberdine, and then speak with Gwennyth Bly'Leggonde back in Auberdine.
  collect Sea Turtle Remains##12289 |q 4681 |goto Darkshore 31.82,46.31 |tip {dropsfrom}Skeletal Sea Turtle
step
  talk Terenthis##3693
  accept Thundris Windweaver##4761 |goto Darkshore 39.37,43.48
step
  talk Sentinel Glynda Nal'Shea##2930
  accept As Water Cascades##4812 |goto Darkshore 37.7,43.41
step
  note Fill the Empty Water Tube at the Auberdine moonwell, and then investigate the red crystal along Darkshore's eastern mountain wall.
  collect Moonwell Water Tube##14339 |q 4812 |goto Darkshore 37.78,44.03 |tip {dropsfrom}Auberdine Moonwell
step
  only NightElf Druid
  talk Alanndarian Nightsong##3702
  accept Curing the Sick##6124 |goto Darkshore 37.69,40.66
step
  only NightElf Druid
  note Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore; doing so should cure them. Sickly Deer have been reported starting south of the Cliffspring River to the north of Auberdine and extending all the way into southern Darkshore where the edge of Ashenvale begins.
  use Sickly Deer##12298 |q 6124 |goto Darkshore 43.35,48.22 |tip {useit}
step
  talk Asterion##3650
  turnin Bashal'Aran##955 |goto Darkshore 44.17,36.29
step
  turnin Buzzbox 411##1001 |goto Darkshore 41.96,28.62
step
  talk Asterion##3650
  accept Bashal'Aran##956 |goto Darkshore 44.17,36.29
step
  note Obtain the Ancient Moonstone Seal and bring it to Asterion in Bashal'Aran.
  collect Ancient Moonstone Seal##5338 |q 956 |goto Darkshore 47.28,37.68 |tip {dropsfrom}Deth'ryll Satyr
step
  click Buzzbox 411##17183
  accept Buzzbox 323##1002 |goto Darkshore 41.96,28.62
step
  note Collect 6 Moonstalker Fangs and place them in Buzzbox 323.
  collect 6 Moonstalker Fang##5413 |q 1002 |goto Darkshore 42.66,66.05 |tip {dropsfrom}Moonstalker, Moonstalker Runt, Moonstalker Matriarch
step
  talk Balthule Shadowstrike##3661
  turnin The Tower of Althalaxx##966 |goto Darkshore 54.97,24.89
step
  turnin Buzzbox 323##1002 |goto Darkshore 51.29,24.57
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Curing the Sick##6124 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
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
  click Buzzbox 323##17184
  accept Buzzbox 525##1003 |goto Darkshore 51.29,24.57
step
  note Collect 4 Grizzled Scalps from Grizzled Thistle Bears to the south of Auberdine and place them in Buzzbox 525.
  collect 4 Grizzled Scalp##5414 |q 1003 |goto Darkshore 39.3,81.13 |tip {dropsfrom}Grizzled Thistle Bear, Den Mother
step
  note Eliminate 12 Stormscale Myrmidons, 8 Stormscale Sorceresses, and 6 Stormscale Warriors for Arbal at the Grove of the Ancients.
  kill Stormscale Myrmidon##2181 |q 98013 |goto Darkshore 58.56,21.33
step
  talk Gelkak Gyromast##6667
  turnin Gyromast's Retrieval##2098 |goto Darkshore 56.66,13.48
step
  talk Gerrig Bonegrip##2786
  turnin The Powers Below##968 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  talk Gelkak Gyromast##6667
  accept Gyromast's Revenge##2078 |goto Darkshore 56.66,13.48
step
  note Find Gelkak's First Mate, the Threshwackonator 4100, and lead it back to Gelkak.
  kill The Threshwackonator 4100##6669 |q 2078 |goto Darkshore 55.81,18.29 |elite
step
  talk Sentinel Tysha Moonblade##3639
  turnin The Fall of Ameth'Aran##953 |goto Darkshore 40.3,59.73
step
  note Kill 8 Blackwood Pathfinders and 5 Windtalkers and return to Terenthis in Auberdine.
  kill Blackwood Pathfinder##2167 |q 985 |goto Darkshore 39.63,53.94
step
  note Cleanse the forest of 20 Rabid Thistle Bears and return to Tharnariun Treetender in Darkshore.
  kill Rabid Thistle Bear##2164 |q 2138 |goto Darkshore 43.74,56.59
step
  talk Onu##3616
  turnin Onu##948 |goto Darkshore 43.55,76.29
step
  talk Arbal##270269
  turnin Swelling Forces##98013 |goto Darkshore 43.71,76.51
step
  turnin Buzzbox 525##1003 |goto Darkshore 41.39,80.56
step
  talk Onu##3616
  accept The Master's Glaive##944 |goto Darkshore 43.55,76.29
step
  turnin The Master's Glaive##944 |goto Darkshore 38.6,86.2
step
  talk Chief Archaeologist Greywhisker##2912
  turnin The Absent Minded Prospector##741 |goto Darnassus 31.24,84.51 |tip {turninat}Darnassus
step
  click Scrying Bowl##10076
  accept The Twilight Camp##949 |goto Darkshore 38.6,86.2
step
  talk Thundris Windweaver##3649
  turnin Thundris Windweaver##4761 |goto Darkshore 37.4,40.13
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Washed Ashore##4681 |goto Darkshore 36.62,45.59
step
  talk Delgren the Purifier##3663
  turnin The Tower of Althalaxx##967 |goto Ashenvale 26.2,38.7 |tip {turninat}Ashenvale
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
  note Find 5 Fine Moonstalker Pelts and return them to Terenthis in Auberdine.
  collect 5 Fine Moonstalker Pelt##5386 |q 986 |goto Darkshore 43.03,89.68 |tip {dropsfrom}Moonstalker Matriarch, Moonstalker Sire
step
  talk Tharnariun Treetender##3701
  accept Tharnariun's Hope##2139 |goto Darkshore 38.84,43.42
step
  talk Thundris Windweaver##3649
  accept The Cliffspring River##4762 |goto Darkshore 37.4,40.13
step
  note Travel north of Auberdine to the first waterfall along the Cliffspring River and draw a sample from the pool there.
  collect Cliffspring River Sample##12349 |q 4762 |goto Darkshore 50.84,25.63 |tip {dropsfrom}Cliffspring River Waterfall
step
  click Mysterious Red Crystal##175524
  accept The Fragments Within##4813 |goto Darkshore 47.32,48.68
step
  talk Asterion##3650
  turnin Bashal'Aran##956 |goto Darkshore 44.17,36.29
step
  talk Asterion##3650
  accept Bashal'Aran##957 |goto Darkshore 44.17,36.29
step
  click Beached Sea Creature##175233
  accept Beached Sea Creature##4723 |goto Darkshore 41.93,31.53
step
  note Find and kill the Den Mother.
  kill Den Mother##6788 |q 2139 |goto Darkshore 51.48,38.26
step
  click Beached Sea Turtle##176197
  accept Beached Sea Turtle##4725 |goto Darkshore 44.19,20.6
step
  talk Gelkak Gyromast##6667
  turnin Gyromast's Revenge##2078 |goto Darkshore 56.66,13.48
step
  click Beached Sea Turtle##176196
  accept Beached Sea Turtle##4727 |goto Darkshore 53.11,18.08
step
  click Beached Sea Turtle##176190
  accept Beached Sea Turtle##4722 |goto Darkshore 37.09,62.18
step
  note Destroy the Ancient Moonstone Seal at the ancient flame in Ameth'Aran, then return to Asterion in Bashal'Aran.
  collect Ancient Flame##16393 |q 957 |goto Darkshore 42.37,61.82
step
  click Beached Sea Creature##175226
  accept Beached Sea Creature##4728 |goto Darkshore 36.01,70.88
step
  turnin The Twilight Camp##949 |goto Darkshore 38.54,86.05
step
  click Twilight Tome##12666
  accept Return to Onu##950 |goto Darkshore 38.54,86.05
step
  click Beached Sea Creature##175227
  accept Beached Sea Creature##4730 |goto Darkshore 32.69,80.79
step
  click Beached Sea Turtle##176198
  accept Beached Sea Turtle##4731 |goto Darkshore 31.67,83.68
step
  click Beached Sea Turtle##176191
  accept Beached Sea Turtle##4732 |goto Darkshore 31.23,85.6
step
  click Beached Sea Creature##175230
  accept Beached Sea Creature##4733 |goto Darkshore 31.26,87.44
step
  talk Thundris Windweaver##3649
  turnin The Cliffspring River##4762 |goto Darkshore 37.4,40.13
step
  talk Sentinel Glynda Nal'Shea##2930
  turnin The Fragments Within##4813 |goto Darkshore 37.7,43.41
step
  talk Terenthis##3693
  turnin A Lost Master##986 |goto Darkshore 39.37,43.48
step
  talk Tharnariun Treetender##3701
  turnin Tharnariun's Hope##2139 |goto Darkshore 38.84,43.42
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Turtle##4731 |goto Darkshore 36.62,45.59
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Turtle##4722 |goto Darkshore 36.62,45.59
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Creature##4723 |goto Darkshore 36.62,45.59
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Turtle##4725 |goto Darkshore 36.62,45.59
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Turtle##4727 |goto Darkshore 36.62,45.59
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Creature##4728 |goto Darkshore 36.62,45.59
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Creature##4730 |goto Darkshore 36.62,45.59
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Turtle##4732 |goto Darkshore 36.62,45.59
step
  talk Gwennyth Bly'Leggonde##10219
  turnin Beached Sea Creature##4733 |goto Darkshore 36.62,45.59
step
  talk Terenthis##3693
  accept A Lost Master##993 |goto Darkshore 39.37,43.48
step
  talk Thundris Windweaver##3649
  accept The Blackwood Corrupted##4763 |goto Darkshore 37.4,40.13
step
  note Fill the Empty Cleansing Bowl at the Auberdine Moonwell.
  collect Talisman of Corruption##12355 |q 4763 |goto Darkshore 52.48,33.39 |tip {dropsfrom}Xabraxxis' Demon Bag
step
  talk Asterion##3650
  turnin Bashal'Aran##957 |goto Darkshore 44.17,36.29
step
  talk Onu##3616
  turnin Return to Onu##950 |goto Darkshore 43.55,76.29
step
  talk Onu##3616
  accept Mathystra Relics##951 |goto Darkshore 43.55,76.29
step
  note Bring 6 Mathystra Relics to Onu at the Grove of the Ancients.
  collect 6 Mathystra Relic##5273 |q 951 |goto Darkshore 59.95,23.21
step
  talk Volcor##3692
  turnin A Lost Master##993 |goto Darkshore 45.01,85.3
step
  talk Volcor##3692
  accept Escape Through Force##994 |goto Darkshore 45.01,85.3
step
  talk Volcor##3692
  accept Escape Through Stealth##995 |goto Darkshore 45.01,85.3
step
  talk Thundris Windweaver##3649
  turnin The Blackwood Corrupted##4763 |goto Darkshore 37.4,40.13
step
  talk Terenthis##3693
  turnin Escape Through Force##994 |goto Darkshore 39.37,43.48
step
  talk Terenthis##3693
  turnin Escape Through Stealth##995 |goto Darkshore 39.37,43.48
step
  talk Sentinel Selarin##3694
  accept Trek to Ashenvale##990 |goto Darkshore 39.28,43.46
step
  talk Onu##3616
  turnin Mathystra Relics##951 |goto Darkshore 43.55,76.29
step
  talk Raene Wolfrunner##3691
  turnin Trek to Ashenvale##990 |goto Ashenvale 36.62,49.58 |tip {turninat}Ashenvale
step
  note {travel}Redridge Mountains
  goto Redridge Mountains 24.9,44.45
]])
