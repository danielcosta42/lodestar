-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Zephras Isle (5-12)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Barrens (12-20)",
}, [[
step
  talk Ailee Farheart##251362
  accept Coming of Age##92460 |goto Zephras Isle 42.82,23.37
step
  talk Rorian the Dayseeker##251361
  accept Elemental Unrest##92464 |goto Zephras Isle 42.1,23.49
step
  talk Yala Windwatcher##249363
  accept Agitators##92465 |goto Zephras Isle 47.26,21.88
step
  only Skyborne
  talk Myriaal Mistwake##263113
  accept Falling With Style##92474 |goto Zephras Isle 43.68,24.09
step
  only Skyborne
  talk Ventaari Brightwish##251487
  accept The Gift of Skysight##92598 |goto Zephras Isle 42.65,24.36
step
  talk Halaan Hawk-Eye##257554
  accept The Anchors of Zephras##94414 |goto Zephras Isle 43.77,24.08
step
  note Slay 6 Roiling Winds and 7 Al'Aketh Converts in Thendal Grove.
  talk Al'Aketh Convert##251160 |q 92465 |goto Zephras Isle 47.13,19.63
step
  only Skyborne
  note Use your Skysight racial ability at the Elemental Convergence in Thendal Grove.
  collect Elemental Convergence##450001 |q 92598 |goto Zephras Isle 48.28,20.62
step
  note Speak with Halaan Hawk-Eye and borrow his gift to view the anchor pylon in the distance.
  talk Halaan Hawk-Eye##257554 |q 94414 |goto Zephras Isle 43.77,24.08
step
  talk Rorian the Dayseeker##251361
  turnin Coming of Age##92460 |goto Zephras Isle 42.1,23.49
step
  talk Yala Windwatcher##249363
  turnin Elemental Unrest##92464 |goto Zephras Isle 47.26,21.88
step
  talk Yala Windwatcher##249363
  turnin Agitators##92465 |goto Zephras Isle 47.26,21.88
step
  only Skyborne
  talk Rorian the Dayseeker##251361
  turnin Falling With Style##92474 |goto Zephras Isle 42.1,23.49
step
  only Skyborne
  talk Ventaari Brightwish##251487
  turnin The Gift of Skysight##92598 |goto Zephras Isle 42.65,24.36
step
  talk Halaan Hawk-Eye##257554
  turnin The Anchors of Zephras##94414 |goto Zephras Isle 43.77,24.08
step
  talk Rorian the Dayseeker##251361
  accept Harmony in Balance##92461 |goto Zephras Isle 42.1,23.49
step
  talk Elatrell Featherlight##251368
  accept Infestation Investigation##92462 |goto Zephras Isle 43.4,24.79
step
  note Slay 8 Vuldren Juveniles in Thendal Grove.
  talk Juvenile Vuldren##250873 |q 92461 |goto Zephras Isle 44.71,26.43
step
  note Slay 8 Pesky Cirrusflies in Thendal Grove.
  kill Pesky Cirrusfly##251169 |q 92462 |goto Zephras Isle 46.01,27.05
step
  talk Rorian the Dayseeker##251361
  turnin Harmony in Balance##92461 |goto Zephras Isle 42.1,23.49
step
  talk Elatrell Featherlight##251368
  turnin Infestation Investigation##92462 |goto Zephras Isle 43.4,24.79
step
  talk Elatrell Featherlight##251368
  accept The Cirrusfly Queen##92463 |goto Zephras Isle 43.4,24.79
step
  only Hunter
  talk Rorian the Dayseeker##251361
  accept The Way of the Hunter##92482 |goto Zephras Isle 42.1,23.49
step
  only Rogue
  talk Rorian the Dayseeker##251361
  accept At Home in the Shadows##92483 |goto Zephras Isle 42.1,23.49
step
  only Shaman
  talk Rorian the Dayseeker##251361
  accept Embracing the Elements##92484 |goto Zephras Isle 42.1,23.49
step
  only Druid
  talk Rorian the Dayseeker##251361
  accept A Student of Nature##92485 |goto Zephras Isle 42.1,23.49
step
  only Warrior
  talk Rorian the Dayseeker##251361
  accept The Warrior's Path##92532 |goto Zephras Isle 42.1,23.49
step
  talk Dalia the Collector##251363
  accept Harvesting Windstones##93552 |goto Zephras Isle 43.34,23.98
step
  note Destroy the Cirrusfly Queen in Thendal Grove.
  kill Cirrusfly Queen##251404 |q 92463 |goto Zephras Isle 48.41,28.53
step
  note Collect 15 Windstone Clusters from Raw Windstones in Thendal Grove.
  collect 15 Windstone Cluster##258772 |q 93552 |goto Zephras Isle 43.82,25.43 |tip {dropsfrom}Raw Windstone
step
  talk Elatrell Featherlight##251368
  turnin The Cirrusfly Queen##92463 |goto Zephras Isle 43.4,24.79
step
  only Hunter
  talk Tai'ree Farsight##251376
  turnin The Way of the Hunter##92482 |goto Zephras Isle 42.44,23.68
step
  only Rogue
  talk Akeri Duskblade##251389
  turnin At Home in the Shadows##92483 |goto Zephras Isle 43.71,24.3
step
  only Shaman
  talk Windshaper Boro##251374
  turnin Embracing the Elements##92484 |goto Zephras Isle 42.76,23.58
step
  only Druid
  talk Xyton Silverwind##251373
  turnin A Student of Nature##92485 |goto Zephras Isle 41.72,23.38
step
  only Warrior
  talk Blademaster Ren##251964
  turnin The Warrior's Path##92532 |goto Zephras Isle 43.68,24.17
step
  talk Dalia the Collector##251363
  turnin Harvesting Windstones##93552 |goto Zephras Isle 43.34,23.98
step
  only Shaman not completed(1516) not completed(1519) not haveq(1516) not haveq(1519)
  talk Windshaper Boro##251374
  accept Call of Earth##92466 |goto Zephras Isle 42.76,23.58
step
  talk Yala Windwatcher##249363
  accept Return to Rorian##92469 |goto Zephras Isle 47.26,21.88
step
  talk Rorian the Dayseeker##251361
  turnin Return to Rorian##92469 |goto Zephras Isle 42.1,23.49
step
  talk Hanaa Nightwind##252095
  accept Al'Aketh Thugs##92544 |goto Zephras Isle 38.32,30.19
step
  only Shaman not completed(1516) not completed(1519) not haveq(1516) not haveq(1519)
  note Bring a Signet of Akir to Windshaper Boro.
  collect Signet of Akir##251924 |q 92466 |goto Zephras Isle 37.06,32.64 |tip {dropsfrom}Al'Aketh Brute, Al'Aketh Convert, Al'Aketh Neophyte
step
  note Slay 6 Al'Aketh Brutes, 4 Al'Aketh Neophytes, and Malduko Cloudcrush in Thendal Grove.
  talk Al'Aketh Brute##251145 |q 92544 |goto Zephras Isle 37.06,32.64
step
  talk Hanaa Nightwind##252095
  turnin Al'Aketh Thugs##92544 |goto Zephras Isle 38.32,30.19
step
  only Shaman not completed(1516) not completed(1519) not haveq(1516) not haveq(1519)
  talk Windshaper Boro##251374
  turnin Call of Earth##92466 |goto Zephras Isle 42.76,23.58
step
  only Shaman
  talk Windshaper Boro##251374
  accept Call of Earth##92467 |goto Zephras Isle 42.76,23.58
step
  only Shaman
  talk Minor Manifestation of Earth##251166
  turnin Call of Earth##92467 |goto Zephras Isle 49.67,23.8
step
  only Shaman
  talk Minor Manifestation of Earth##251166
  accept Call of Earth##92468 |goto Zephras Isle 49.67,23.8
step
  only Shaman
  talk Windshaper Boro##251374
  turnin Call of Earth##92468 |goto Zephras Isle 42.76,23.58
step
  talk Rorian the Dayseeker##251361
  accept Aetheen of the Gales##92471 |goto Zephras Isle 42.1,23.49
step
  talk Aetheen of the Gales##251366
  turnin Aetheen of the Gales##92471 |goto Zephras Isle 42.74,23.66
step
  talk Aetheen of the Gales##251366
  accept Foul Matriarch##92470 |goto Zephras Isle 42.74,23.66
step
  talk Valreaa Valewind##257551
  accept Aggressive Encroachment##92473 |goto Zephras Isle 42.43,25.12
step
  note Slay 8 Ursera Scavengers and collect the head of the den mother, Urs'anah in Thendal Grove.
  kill Ursera Scavenger##250937 |q 92470 |goto Zephras Isle 37.31,25.06
step
  note Collect 6 Scrawny Ursera Claws from Scrawny Ursera in Thendal Grove.
  collect 6 Scrawny Ursera Claw##251918 |q 92473 |goto Zephras Isle 40.02,26.86 |tip {dropsfrom}Scrawny Ursera
step
  talk Constable Aonda##251523
  accept Welcome to Shen'dar Village##92514 |goto Zephras Isle 45.63,45.49
step
  talk Illaya Amberwind##251902
  accept The Windshapers##92595 |goto Zephras Isle 43.53,44.78
step
  note Speak with Illaya Amberwind and Coriella Calmbreeze in Shen'dar Village.
  talk Illaya Amberwind##251902 |q 92514 |goto Zephras Isle 43.53,44.78
step
  note Listen to what Illaya Amberwind has to say.
  talk Illaya Amberwind##251902 |q 92595 |goto Zephras Isle 43.53,44.78
step
  talk Constable Aonda##251523
  turnin Welcome to Shen'dar Village##92514 |goto Zephras Isle 45.63,45.49
step
  talk Illaya Amberwind##251902
  turnin The Windshapers##92595 |goto Zephras Isle 43.53,44.78
step
  talk Indari Sunseam##251993
  accept The Problem With Prideclaws##92515 |goto Zephras Isle 44.67,44.52
step
  talk Illaya Amberwind##251902
  accept Meddlesome Mages##94411 |goto Zephras Isle 43.53,44.78
step
  talk Teeri Wellwind##251906
  accept Hippogryph Harrassment##92516 |goto Zephras Isle 44.44,44.96
step
  talk Constable Aonda##251523
  accept The Criminal Element##92517 |goto Zephras Isle 45.63,45.49
step
  talk Teeri Wellwind##251906
  accept Pilfered Windstones##93319 |goto Zephras Isle 44.44,44.96
step
  talk Taleen Shimmerthread##251991
  accept A Little Beauty##93951 |goto Zephras Isle 44.83,44.25
step
  note Collect 10 Prideclaw Pelts from the Prideclaws in Shen'dar Highlands.
  collect 10 Prideclaw Pelt##252670 |q 92515 |goto Zephras Isle 41.38,44.79 |tip {dropsfrom}Prideclaw
step
  note Slay 6 High Order Apprentices in Shen'dar Highlands.
  talk High Order Apprentice##257521 |q 94411 |goto Zephras Isle 46.16,39.21
step
  talk Indari Sunseam##251993
  turnin The Problem With Prideclaws##92515 |goto Zephras Isle 44.67,44.52
step
  talk Illaya Amberwind##251902
  turnin Meddlesome Mages##94411 |goto Zephras Isle 43.53,44.78
step
  note Kill 10 Highlands Bandits and their leader, "Badwind" Bennic in the Shen'dar Highlands.
  kill Highlands Bandit##251918 |q 92517 |goto Zephras Isle 48.65,37.42
step
  note Collect 10 Pilfered Windstones from the Highlands Bandits in the Shen'dar Highlands.
  collect 10 Pilfered Windstone##257945 |q 93319 |goto Zephras Isle 48.65,37.42 |tip {dropsfrom}Highlands Bandit, "Badwind" Bennic
step
  note Slay 8 Hippogryph Youths, 6 Hippogryph Protectors and a Hippogryph Matriarch in the Shen'dar Highlands.
  kill Hippogryph Youth##251291 |q 92516 |goto Zephras Isle 38.02,53.74
step
  note Collect 8 Hippogryph Down feathers in the Shen'dar Highlands.
  collect 8 Hippogryph Down##263493 |q 93951 |goto Zephras Isle 36.02,54.29
step
  talk Aetheen of the Gales##251366
  turnin Foul Matriarch##92470 |goto Zephras Isle 42.74,23.66
step
  talk Valreaa Valewind##257551
  turnin Aggressive Encroachment##92473 |goto Zephras Isle 42.43,25.12
step
  talk Aetheen of the Gales##251366
  accept The Next Step##92472 |goto Zephras Isle 42.74,23.66
step
  only not completed(96627) not completed(96628) not completed(96630) not completed(96652) not completed(96656) not completed(96659) not haveq(96627) not haveq(96628) not haveq(96630) not haveq(96652) not haveq(96656) not haveq(96659)
  talk Aetheen of the Gales##251366
  accept The Adventurer##96638 |goto Zephras Isle 42.74,23.66
step
  talk Constable Aonda##251523
  turnin The Next Step##92472 |goto Zephras Isle 45.63,45.49
step
  talk Teeri Wellwind##251906
  turnin Hippogryph Harrassment##92516 |goto Zephras Isle 44.44,44.96
step
  talk Constable Aonda##251523
  turnin The Criminal Element##92517 |goto Zephras Isle 45.63,45.49
step
  talk Teeri Wellwind##251906
  turnin Pilfered Windstones##93319 |goto Zephras Isle 44.44,44.96
step
  talk Taleen Shimmerthread##251991
  turnin A Little Beauty##93951 |goto Zephras Isle 44.83,44.25
step
  only not completed(96627) not completed(96628) not completed(96630) not completed(96652) not completed(96656) not completed(96659) not haveq(96627) not haveq(96628) not haveq(96630) not haveq(96652) not haveq(96656) not haveq(96659)
  talk Raan Wildwind##263664
  turnin The Adventurer##96638 |goto Zephras Isle 41.7,44.79
step
  only not completed(95998) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not completed(96608) not haveq(95998) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607) not haveq(96608)
  talk Raan Wildwind##263664
  accept The Great Outdoors##96101 |goto Zephras Isle 41.7,44.79
step
  talk Constable Aonda##251523
  accept Infiltrating the Cult##93036 |goto Zephras Isle 45.63,45.49
step
  only not completed(95998) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not completed(96608) not haveq(95998) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607) not haveq(96608)
  note Sit near Raan's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  collect Basic Campfire##450003 |q 96101 |goto Zephras Isle 41.73,44.78
step
  talk Sania Silverstream##251904
  turnin Infiltrating the Cult##93036 |goto Zephras Isle 44.86,45.47
step
  only not completed(95998) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not completed(96608) not haveq(95998) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607) not haveq(96608)
  talk Raan Wildwind##263664
  turnin The Great Outdoors##96101 |goto Zephras Isle 41.7,44.79
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96655) not haveq(96658) not haveq(96661)
  talk Raan Wildwind##263664
  accept Camping 101: Cooking##96646 |goto Zephras Isle 41.7,44.79
step
  talk Sania Silverstream##251904
  accept Falaath Village##92529 |goto Zephras Isle 44.86,45.47
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96655) not haveq(96658) not haveq(96661)
  note Speak with Zerril Softbreeze in Shen'dar Village to learn to become a cook.
  talk Zerril Softbreeze##251905 |q 96646 |goto Zephras Isle 43.85,43.9
step
  only not completed(96626) not completed(96629) not completed(96634) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96634) not haveq(96655) not haveq(96658) not haveq(96661)
  talk Zerril Softbreeze##251905
  turnin Camping 101: Cooking##96646 |goto Zephras Isle 43.85,43.9
step
  talk Missionary Jasaan##257065
  turnin Falaath Village##92529 |goto Zephras Isle 46.85,56.21
step
  talk Missionary Jasaan##257065
  accept Among the Faithful##92528 |goto Zephras Isle 46.85,56.21
step
  note Look around Falaath Village to learn about the cult's intentions in the Shen'dar Highlands.
  talk Wardrobe##254128 |q 92528 |goto Zephras Isle 48.84,53.93
step
  talk Constable Aonda##251523
  turnin Among the Faithful##92528 |goto Zephras Isle 45.63,45.49
step
  talk Constable Aonda##251523
  accept Havoc in the Highlands##92550 |goto Zephras Isle 45.63,45.49
step
  talk Danarii Bellowveil##252172
  accept Stolen Supplies##92551 |goto Zephras Isle 45.2,45.21
step
  talk Constable Aonda##251523
  accept The Western Watch##93926 |goto Zephras Isle 45.63,45.49
step
  note Travel to the ruins of Falaath Village and slay 6 Al'Aketh Stormcallers, 4 Living Lightning and take the head of Commander Cyclas.
  talk Al'Aketh Stormcaller##252068 |q 92550 |goto Zephras Isle 48.26,55.67
step
  note Collect 10 packs of Stolen Shen'dar Supplies from Falaath Village in the Shen'dar Highlands.
  collect 10 Stolen Shen'dar Supplies##252760 |q 92551 |goto Zephras Isle 48.26,55.67 |tip {dropsfrom}Al'Aketh Stormcaller, Al'Aketh Healer, Tel'daeor the Stormspeaker
step
  note Find Peacekeeper Vaaniel at the western watchtower.
  talk Peacekeeper Vaaniel##252155 |q 93926 |goto Zephras Isle 42.34,62.1
step
  talk Peacekeeper Vaaniel##252155
  turnin The Western Watch##93926 |goto Zephras Isle 42.34,62.1
step
  talk Peacekeeper Vaaniel##252155
  accept A Last Request##93927 |goto Zephras Isle 42.34,62.1
step
  note Collect the note you found near the dead peacekeeper and read it to determine your next steps.
  talk Skypriest Aanders##256966 |q 93927 |goto Zephras Isle 41.08,64.29
step
  talk Constable Aonda##251523
  turnin Havoc in the Highlands##92550 |goto Zephras Isle 45.63,45.49
step
  talk Danarii Bellowveil##252172
  turnin Stolen Supplies##92551 |goto Zephras Isle 45.2,45.21
step
  talk Constable Aonda##251523
  turnin A Last Request##93927 |goto Zephras Isle 45.63,45.49
step
  talk Constable Aonda##251523
  accept To Valanaar##92579 |goto Zephras Isle 45.63,45.49
step
  talk Valennia Stormfist##252383
  turnin To Valanaar##92579 |goto Zephras Isle 66.22,76.63
step
  talk Alvarion Windfield##252448
  accept Blood Tithe##92679 |goto Zephras Isle 62.14,73.3
step
  talk Valennia Stormfist##252383
  accept The Grand Skyseer##92700 |goto Zephras Isle 66.22,76.63
step
  talk Nyalah Brightfire##257006
  accept Crab Season##93317 |goto Zephras Isle 60.66,72.72
step
  talk Ayessa Dawnsinger##251968
  turnin The Grand Skyseer##92700 |goto Zephras Isle 59.15,79.73
step
  talk Ayessa Dawnsinger##251968
  accept The Broken Construct##93735 |goto Zephras Isle 59.15,79.73
step
  talk Endaria Mistgaze##254344
  accept Unwelcome Spirits##93736 |goto Zephras Isle 58.17,78.3
step
  talk Riaani Nightwind##256083
  turnin The Broken Construct##93735 |goto Zephras Isle 59.09,73
step
  talk Riaani Nightwind##256083
  accept The Broken Construct##93737 |goto Zephras Isle 59.09,73
step
  note Speak with Rianni Nightwind and list to what he has to say.
  talk Riaani Nightwind##256083 |q 93737 |goto Zephras Isle 59.09,73
step
  talk Riaani Nightwind##256083
  turnin The Broken Construct##93737 |goto Zephras Isle 59.09,73
step
  talk Riaani Nightwind##256083
  accept The Broken Construct##93738 |goto Zephras Isle 59.09,73
step
  talk Ayessa Dawnsinger##251968
  turnin The Broken Construct##93738 |goto Zephras Isle 59.15,79.73
step
  talk Ayessa Dawnsinger##251968
  accept A Firm Response##93746 |goto Zephras Isle 59.15,79.73
step
  click Bounty Available: Vulgara the Insatiable!##610954
  accept WANTED: Vulgara the Insatiable##93318 |goto Zephras Isle 43.37,45.82
step
  talk Constable Aonda##251523
  accept Deliver the Signet##93948 |goto Zephras Isle 45.63,45.49
step
  note Gather 10 Wind Hollow Essences from Wind Hollows in the Shadowgale Forest.
  collect 10 Wind Hollow Essence##262357 |q 93736 |goto Zephras Isle 58.14,31.91 |tip {dropsfrom}Wind Hollow
step
  note Confront Belthaan Brightwish along the road to the Shrine of Akir.
  talk Belathaan Brightwish##256247 |q 93746 |goto Zephras Isle 59.84,57.19
step
  note Collect 6 pieces of Windsong Crawler Meat.
  collect 6 Windsong Crawler Meat##257941 |q 93317 |goto Zephras Isle 50.91,60.4 |tip {dropsfrom}Windsong Crawler
step
  note Kill Vulgara the Insatiable in the Shen'dar Highlands and bring her head to Danarii Bellowveil.
  collect Vulgara's Head##257942 |q 93318 |goto Zephras Isle 42.66,52.8 |tip {dropsfrom}Vulgara the Insatiable
step
  note Listen to what Alvarion Windfield has to say and find Aamelia Windfield at the Windfield Orchard.
  talk Aamelia Windfield##252800 |q 92679 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  turnin Blood Tithe##92679 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  accept Make Yourself Useful##92682 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  accept Flutterfly Dust##92683 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  accept Ornery Ornery Galestriders##92684 |goto Zephras Isle 46.7,81.95
step
  talk Malfunctioning Cyclone Construct##250929
  accept What Is My Purpose?##92698 |goto Zephras Isle 48.82,78.38
step
  note Gather 10 Ripe Stormapples and slay 5 Hungry Bandits at the Windfield Orchard.
  kill Hungry Bandit##252802 |q 92682 |goto Zephras Isle 46.85,80.41
step
  note Gather 5 Flutterfly Dust from the Flutterflies around the Gustberry Lowlands.
  collect 5 Flutterfly Dust##253595 |q 92683 |goto Zephras Isle 50.5,79.6
step
  note Gather 7 Lowlands Galestrider Tenderloins from the Ornery Galestriders found throughout the Gustberry Lowlands.
  collect 7 Lowlands Galestrider Tenderloin##253597 |q 92684 |goto Zephras Isle 50.86,77.44 |tip {dropsfrom}Ornery Galestrider
step
  talk Aamelia Windfield##252800
  turnin Make Yourself Useful##92682 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  turnin Flutterfly Dust##92683 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  turnin Ornery Ornery Galestriders##92684 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  turnin What Is My Purpose?##92698 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  accept The Hills Have Eyes##92685 |goto Zephras Isle 46.7,81.95
step
  note Loot 7 Blood-Stained Bandit Masks from Highwayman Bandits in the Gustberry Lowlands.
  collect Blood-Stained Bandit Mask##253596 |q 92685 |goto Zephras Isle 44.85,74.63 |tip {dropsfrom}Bandit Highwayman
step
  talk Aamelia Windfield##252800
  turnin The Hills Have Eyes##92685 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  accept Standing Our Ground##92693 |goto Zephras Isle 46.7,81.95
step
  note Speak with Aamelia Windfield when you are ready to confront the bandit leader.
  talk Aamelia Windfield##252800 |q 92693 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  turnin Standing Our Ground##92693 |goto Zephras Isle 46.7,81.95
step
  talk Aamelia Windfield##252800
  accept Deliver the News##92703 |goto Zephras Isle 46.7,81.95
step
  talk Alvarion Windfield##252448
  turnin Deliver the News##92703 |goto Zephras Isle 62.14,73.3
step
  talk Nyalah Brightfire##257006
  turnin Crab Season##93317 |goto Zephras Isle 60.66,72.72
step
  talk Endaria Mistgaze##254344
  turnin Unwelcome Spirits##93736 |goto Zephras Isle 58.17,78.3
step
  talk Ayessa Dawnsinger##251968
  turnin A Firm Response##93746 |goto Zephras Isle 59.15,79.73
step
  talk Talaanis Shadowsong##252476
  turnin Deliver the Signet##93948 |goto Zephras Isle 66.17,76.51
step
  talk Valennia Stormfist##252383
  accept Bugged##93949 |goto Zephras Isle 66.22,76.63
step
  note Kill Skyhoppers in Valanaar until you've eliminated 8 Enchanted Skyhoppers.
  talk Skyhopper##251727 |q 93949 |goto Zephras Isle 62.6,75.94
step
  talk Valennia Stormfist##252383
  turnin Bugged##93949 |goto Zephras Isle 66.22,76.63
step
  talk Danarii Bellowveil##252172
  turnin WANTED: Vulgara the Insatiable##93318 |goto Zephras Isle 45.2,45.21
step
  talk Fendaal Windstone##273017
  accept Al'Aketh Assassins##98512 |goto Zephras Isle 56.82,61.05
step
  note Kill 10 Al'Aketh Assassins in the Shen'dar Highlands.
  talk Al'Aketh Assassin##254626 |q 98512 |goto Zephras Isle 55.79,60.46
step
  talk Fendaal Windstone##273017
  turnin Al'Aketh Assassins##98512 |goto Zephras Isle 56.82,61.05
step
  talk Ayessa Dawnsinger##251968
  accept In Service of Zephras##92871 |goto Zephras Isle 59.15,79.73
step
  talk Ayessa Dawnsinger##251968
  accept Blood for Blood##93740 |goto Zephras Isle 59.15,79.73
step
  only not completed(94493) not haveq(94493)
  talk Lotheluum Starbreeze##252359
  accept Unnerving Silence##94484 |goto Zephras Isle 64.02,75.11
step
  talk Valennia Stormfist##252383
  turnin In Service of Zephras##92871 |goto Zephras Isle 66.22,76.63
step
  talk Valennia Stormfist##252383
  accept Tower Defense##93320 |goto Zephras Isle 66.22,76.63
step
  talk Yorana Windyreed##252378
  turnin Tower Defense##93320 |goto Zephras Isle 69.61,67.11
step
  talk Yorana Windyreed##252378
  accept Disrupting Logistics##92642 |goto Zephras Isle 69.61,67.11
step
  talk Yorana Windyreed##252378
  accept Breaking the Breaker##92645 |goto Zephras Isle 69.61,67.11
step
  talk Ealaane Nimbuswalker##259012
  accept Aid For The Refugees##94896 |goto Zephras Isle 65.93,74.37
step
  talk Ealaane Nimbuswalker##259012
  accept The Fate of a Loved One##94897 |goto Zephras Isle 65.93,74.37
step
  note Slay 4 Al'Aketh Healers and 8 Al'Aketh Brawlers in the Gustberry Lowlands.
  talk Al'Aketh Healer##254596 |q 92642 |goto Zephras Isle 65.31,67.41
step
  note Slay Commander Belguilos in the Gustberry Lowlands.
  talk Commander Belguilos##252666 |q 92645 |goto Zephras Isle 65.58,65.62
step
  talk Yorana Windyreed##252378
  turnin Disrupting Logistics##92642 |goto Zephras Isle 69.61,67.11
step
  talk Yorana Windyreed##252378
  turnin Breaking the Breaker##92645 |goto Zephras Isle 69.61,67.11
step
  talk Yorana Windyreed##252378
  accept Return to Valanaar##92880 |goto Zephras Isle 69.61,67.11
step
  only Skyborne Hunter
  talk Elayaa Easewind##254084
  accept Taming the Beast##94007 |goto Zephras Isle 45.14,44.94
step
  note Collect 8 Abandoned Belongings from the ruins of Ban'aethal.
  collect 8 Abandoned Belongings##266433 |q 94896 |goto Zephras Isle 57.6,32.1
step
  note Find Resaan in the Ruins of Ban'aethal.
  collect Resaan's Heirloom##266434 |q 94897 |goto Zephras Isle 57.05,29.35 |tip {dropsfrom}Resaan Nimbuswalker
step
  only not completed(94493) not haveq(94493)
  talk Elegael Thornpaw##257944
  turnin Unnerving Silence##94484 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  accept Feathers for Binding##94486 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  accept Unwanted and Unworthy##94487 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  accept Tears of the Lady##94485 |goto Zephras Isle 61.69,39.25
step
  note Collect 10 Al'Aketh Windstone Charms from the corpses of Al'Aketh cultists in the Gustberry Lowlands.
  collect 10 Al'Aketh Windstone Charm##255658 |q 93740 |goto Zephras Isle 63.68,37.45 |tip {dropsfrom}Al'Aketh Stormchaser, Al'Aketh Footsoldier, Al'Aketh Guardian
step
  note Collect 8 Lady's Tear Moss.
  collect 8 Lady's Tear Moss##265105 |q 94485 |goto Zephras Isle 60.8,38.7
step
  note Collect 20 feathers from the Shadowgale Shrieklings in Shadowgale Forest.
  collect 20 Pristine Shriekling Feather##265140 |q 94486 |goto Zephras Isle 59.21,38.64 |tip {dropsfrom}Shadowgale Shriekling
step
  note Collect 10 Bloodied Heirlooms from Al'Aketh Footsoldiers and Al'Aketh Stormchasers in the Shadowgale Forest.
  collect 10 Bloody Heirloom##265141 |q 94487 |goto Zephras Isle 63.68,37.45 |tip {dropsfrom}Al'Aketh Stormchaser, Al'Aketh Footsoldier
step
  talk Elegael Thornpaw##257944
  turnin Tears of the Lady##94485 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  turnin Feathers for Binding##94486 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  turnin Unwanted and Unworthy##94487 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  accept The Ties That Bind##94488 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  accept The Wounds of Betrayal##94489 |goto Zephras Isle 61.69,39.25
step
  kill Commander Haalien##253622 |goto Zephras Isle 65.53,36.32 |tip Loot the quest item here — it starts the quest.
  accept Ripped Missive##94490 |goto Zephras Isle 65.53,36.32
step
  note Kill Commander Haalien and bring his head to Elegael Thornpaw in the Shadowgale Forest.
  collect Commander Haalien's Severed Head##265475 |q 94488 |goto Zephras Isle 65.53,36.32 |tip {dropsfrom}Commander Haalien
step
  note Enter the Nightfang Den and heal 7 druids and find Jorel Windsinger in Shadowgale Forest.
  talk Jorel Windsinger##258130 |q 94489 |goto Zephras Isle 64.48,34.74
step
  talk Elegael Thornpaw##257944
  turnin The Ties That Bind##94488 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  turnin The Wounds of Betrayal##94489 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  turnin Ripped Missive##94490 |goto Zephras Isle 61.69,39.25
step
  talk Elegael Thornpaw##257944
  accept The Fate of the Den##94491 |goto Zephras Isle 61.69,39.25
step
  talk Valennia Stormfist##252383
  turnin Return to Valanaar##92880 |goto Zephras Isle 66.22,76.63
step
  talk Ayessa Dawnsinger##251968
  turnin Blood for Blood##93740 |goto Zephras Isle 59.15,79.73
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  turnin Taming the Beast##94007 |goto Zephras Isle 59.61,72.65
step
  talk Lotheluum Starbreeze##252359
  turnin The Fate of the Den##94491 |goto Zephras Isle 64.02,75.11
step
  talk Valennia Stormfist##252383
  accept The High Elder's Request##92881 |goto Zephras Isle 66.22,76.63
step
  talk Ayessa Dawnsinger##251968
  accept A Grand Adventure##92708 |goto Zephras Isle 59.15,79.73
step
  only Skyborne Warrior
  talk Seena Skybreaker##252377
  accept The Skybreaker Bulwark##94003 |goto Zephras Isle 59.87,72.82
step
  only Skyborne Druid
  talk Lotheluum Starbreeze##252359
  accept The Great Ursera Spirit##94006 |goto Zephras Isle 64.02,75.11
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  accept Taming the Beast##94978 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Shaman
  talk Sessaria Skystride##252382
  accept Call of Fire##97243 |goto Zephras Isle 58.34,78.52
step
  note Listen to what Ayessa Dawnsinger has to say.
  talk Ayessa Dawnsinger##251968 |q 92708 |goto Zephras Isle 59.15,79.73
step
  talk Ayessa Dawnsinger##251968
  turnin A Grand Adventure##92708 |goto Zephras Isle 59.15,79.73
step
  talk Talaanis Shadowsong##252476
  turnin The High Elder's Request##92881 |goto Zephras Isle 66.17,76.51
step
  talk Talaanis Shadowsong##252476
  accept The Turncoat##92643 |goto Zephras Isle 66.17,76.51
step
  only Skyborne Druid
  talk Urs'endris##255853
  turnin The Great Ursera Spirit##94006 |goto Zephras Isle 69.72,61.68
step
  talk Ealaane Nimbuswalker##259012
  turnin Aid For The Refugees##94896 |goto Zephras Isle 65.93,74.37
step
  talk Ealaane Nimbuswalker##259012
  turnin The Fate of a Loved One##94897 |goto Zephras Isle 65.93,74.37
step
  only Skyborne Druid
  talk Urs'endris##255853
  accept Strength and Mercy##94638 |goto Zephras Isle 69.72,61.68
step
  only Skyborne Warrior
  note Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir.
  collect Skybreaker Bulwark##263993 |q 94003 |goto Zephras Isle 36.05,33.53 |tip {dropsfrom}Zaal Stormshield
step
  talk Strange Hermit##251684
  accept The Strange Hermit##93159 |goto Zephras Isle 53.96,38.9
step
  note Speak with the Strange Hermit in the Shadowgale Forest and learn more about him.
  talk Strange Hermit##251684 |q 93159 |goto Zephras Isle 53.96,38.9
step
  talk Strange Hermit##251684
  turnin The Strange Hermit##93159 |goto Zephras Isle 53.96,38.9
step
  talk Strange Hermit##251684
  accept The Forest's Bounty##93160 |goto Zephras Isle 53.96,38.9
step
  talk Strange Hermit##251684
  accept Free the Hollows##93172 |goto Zephras Isle 53.96,38.9
step
  note Destroy 10 Wind Hollows in Shadowgale Forest.
  kill Wind Hollow##251676 |q 93172 |goto Zephras Isle 58.14,31.91
step
  talk Strange Hermit##251684
  turnin Free the Hollows##93172 |goto Zephras Isle 53.96,38.9
step
  talk Vayn Moongaze##254151
  accept Mercy Falls on Deaf Ears##93165 |goto Zephras Isle 63.77,36.04
step
  note Gather 8 Shadowgale Acorns in Shadowgale Forest.
  collect 8 Zephyrseed##257128 |q 93160 |goto Zephras Isle 58.8,38.7 |tip {dropsfrom}Zephyrseed Cone
step
  note Collect 10 Al'Aketh Cultist's Ears from the Al'Aketh cultists in Shadowgale Forest, the Shine of Akir, or Gustberry Lowlands.
  collect 10 Al'Alketh Cultist's Ear##258771 |q 93165 |goto Zephras Isle 63.68,37.45 |tip {dropsfrom}Al'Aketh Stormchaser, Al'Aketh Footsoldier, Al'Aketh Guardian
step
  talk Vayn Moongaze##254151
  turnin Mercy Falls on Deaf Ears##93165 |goto Zephras Isle 63.77,36.04
step
  note Find the cultist turncoat at the house just inside the highlands northwest of Valanaar.
  talk Dead Cultist##253372 |q 92643 |goto Zephras Isle 56.01,58.81
step
  only Skyborne Druid
  note Find and kill Ur'endra in the Shen'dar Highlands.
  kill Ur'endra##258443 |q 94638 |goto Zephras Isle 53.89,65.34
step
  talk Dead Cultist##253372
  turnin The Turncoat##92643 |goto Zephras Isle 56.01,58.81
step
  talk Dead Cultist##253372
  accept Unfortunate News##92644 |goto Zephras Isle 56.01,58.81
step
  only Skyborne Hunter
  note Use the Taming Rod to tame a Windsong Crawler found near bodies of water. Practice your skills, then return the Taming Rod to Quel'ana Quickgale in Valanaar.
  use Windsong Crawler##254588 |q 94978 |goto Zephras Isle 50.91,60.4 |tip {useit}
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  turnin Call of Fire##97243 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  accept Call of Fire##97244 |goto Zephras Isle 51.22,86.22
step
  talk Talaanis Shadowsong##252476
  turnin Unfortunate News##92644 |goto Zephras Isle 66.17,76.51
step
  only Skyborne Warrior
  talk Seena Skybreaker##252377
  turnin The Skybreaker Bulwark##94003 |goto Zephras Isle 59.87,72.82
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  turnin Taming the Beast##94978 |goto Zephras Isle 59.61,72.65
step
  talk Talaanis Shadowsong##252476
  accept The Cult's True Plans##94568 |goto Zephras Isle 66.17,76.51
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  accept Taming the Beast##94979 |goto Zephras Isle 59.61,72.65
step
  note Speak with Talaanis Shadowsong and observe the conversation.
  talk Talaanis Shadowsong##252476 |q 94568 |goto Zephras Isle 66.17,76.51
step
  only Skyborne Hunter
  note Use the Taming Rod to tame an Ornery Galestrider in the Gustberry Lowlands. Practice your skills, then return the Taming Rod to Quel'ana Quickgale in Valanaar.
  use Vuldren Alpha##250874 |q 94979 |goto Zephras Isle 53.85,73.83 |tip {useit}
step
  talk Talaanis Shadowsong##252476
  turnin The Cult's True Plans##94568 |goto Zephras Isle 66.17,76.51
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  turnin Taming the Beast##94979 |goto Zephras Isle 59.61,72.65
step
  talk Talaanis Shadowsong##252476
  accept Desperate Times##92640 |goto Zephras Isle 66.17,76.51
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  accept Taming the Beast##94013 |goto Zephras Isle 59.61,72.65
step
  note Speak with Valennia Stormfist in Valanaar and follow her instructions.
  talk Valennia Stormfist##252383 |q 92640 |goto Zephras Isle 66.22,76.63
step
  talk Valennia Stormfist##252383
  turnin Desperate Times##92640 |goto Zephras Isle 66.22,76.63
step
  talk Valennia Stormfist##252383
  accept Prepare for Battle##93065 |goto Zephras Isle 66.22,76.63
step
  note Speak with Valennia Stormfist in the Gustberry Lowlands.
  talk Valennia Stormfist##253844 |q 93065 |goto Zephras Isle 61.18,70.95
step
  talk Valennia Stormfist##253844
  turnin Prepare for Battle##93065 |goto Zephras Isle 61.18,70.95
step
  talk Valennia Stormfist##253844
  accept Making Our Move##92947 |goto Zephras Isle 61.18,70.95
step
  only Skyborne Druid
  talk Urs'endris##255853
  turnin Strength and Mercy##94638 |goto Zephras Isle 69.72,61.68
step
  only Skyborne Shaman
  note Slay Skypriest Faladiel in the Gustberry Lowlands and collect Faladiel's Heart.
  collect Faladiel's Heart##277267 |q 97244 |goto Zephras Isle 64.43,63.71 |tip {dropsfrom}Skypriest Faladiel
step
  talk Strange Hermit##251684
  turnin The Forest's Bounty##93160 |goto Zephras Isle 53.96,38.9
step
  note Slay 8 Al'Aketh Guardians, 6 Al'Aketh Spiritcallers, and 6 Al'Aketh Blademasters, then report to Hyusaa Quickbreeze at the Shrine of Akir.
  talk Al'Aketh Guardian##252762 |q 92947 |goto Zephras Isle 61.41,51.18
step
  talk Hyusaa Quickbreeze##253576
  turnin Making Our Move##92947 |goto Zephras Isle 63.77,50.51
step
  talk Hyusaa Quickbreeze##253576
  accept The Inner Sanctum##93958 |goto Zephras Isle 63.77,50.51
step
  talk Valennia Stormfist##253590
  turnin The Inner Sanctum##93958 |goto Zephras Isle 65.22,50.37
step
  talk Valennia Stormfist##253590
  accept Confront Lorthuna##92646 |goto Zephras Isle 65.22,50.37
step
  only Skyborne Hunter
  note Use the Taming Rod to tame a Vuldren Alpha in the Gustberry Lowlands. Practice your skills, then return the Taming Rod to Quel'ana Quickgale in Valanaar.
  use Ornery Galestrider##251707 |q 94013 |goto Zephras Isle 50.86,77.44 |tip {useit}
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  turnin Call of Fire##97244 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  accept Call of Fire##97245 |goto Zephras Isle 51.22,86.22
step
  talk Ayessa Dawnsinger##251968
  turnin Confront Lorthuna##92646 |goto Zephras Isle 59.15,79.73
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  turnin Taming the Beast##94013 |goto Zephras Isle 59.61,72.65
step
  talk Ayessa Dawnsinger##251968
  accept The Fate of Zephras##93836 |goto Zephras Isle 59.15,79.73
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  accept Training the Beast##94050 |goto Zephras Isle 59.61,72.65
step
  note Speak with Talaanis Shadowsong in Valanaar.
  talk Talaanis Shadowsong##252476 |q 93836 |goto Zephras Isle 66.17,76.51
step
  talk Talaanis Shadowsong##252476
  turnin The Fate of Zephras##93836 |goto Zephras Isle 66.17,76.51
step
  only Skyborne Hunter
  talk Quel'dora Quickgale##254411
  turnin Training the Beast##94050 |goto Zephras Isle 59.62,72.6
step
  talk Talaanis Shadowsong##252476
  accept What Comes Next##93090 |goto Zephras Isle 66.17,76.51
step
  talk Ayessa Dawnsinger##251968
  turnin What Comes Next##93090 |goto Zephras Isle 59.15,79.73
step
  talk Ayessa Dawnsinger##251968
  accept The Earthen Ring##95349 |goto Zephras Isle 59.15,79.73
step
  only Skyborne Shaman
  note Find the home of Kuramaa in the Shen'dar Highlands, and defeat the spirit in combat. Bring Kuramaa's Mask to Olariaan Swiftburn in the Gustberry Lowlands when you are victorious.
  collect Kuramaa's Mask##277269 |q 97245 |goto Zephras Isle 42.44,68.75 |tip {dropsfrom}Kuramaa
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  turnin Call of Fire##97245 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  accept Call of Fire##97257 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  note Wait for Olariaan to begin the ritual at the Brazier of Offering and follow his instructions.
  talk Brazier of Offering##268762 |q 97257 |goto Zephras Isle 51.2,85.9
step
  only Skyborne Shaman
  talk Sessaria Skystride##252382
  turnin Call of Fire##97257 |goto Zephras Isle 58.34,78.52
step
  talk Alaana Stormwalker##259119
  turnin The Earthen Ring##95349 |goto Mulgore 33.4,22.5 |tip {turninat}Mulgore
step
  note {travel}Thunder Bluff
  goto Thunder Bluff 78.62,28.56
]])
