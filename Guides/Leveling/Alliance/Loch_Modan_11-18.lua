-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Loch Modan (11-18)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Dun Morogh (13-26)",
}, [[
step
  only Dwarf Paladin not completed(2999) not completed(3000) not haveq(2999) not haveq(3000)
  talk Azar Stronghammer##1232
  accept Tome of Divinity##2997 |goto Dun Morogh 47.6,52.07
step
  only Human Paladin not completed(3681) not haveq(3681)
  talk Brother Wilhelm##927
  accept Tome of Divinity##2998 |goto Elwynn Forest 41.1,66.04
step
  note {fp}Thorgrum Borrelson
  goto Loch Modan 33.94,50.95 |tip {vendor}
step
  talk Vidra Hearthstove##1963
  accept Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
step
  talk Mountaineer Kadrell##1340
  accept Rat Catching##416 |goto Loch Modan 32.63,49.74
step
  only not Human not NightElf not Skyborne
  talk Brock Stoneseeker##1681
  accept Honor Students##6387 |goto Loch Modan 37.02,47.81
step
  talk Grenhild Darktalon##49808
  accept Snowbound##86667 |goto Loch Modan 36.49,48.29
step
  note Deliver a Jar of Snow to Norric Lochthane at his house on the northwest coast of the Loch.
  collect Jar of Snow##279379 |q 86667 |goto Loch Modan 36.49,48.29
step
  only not Human not NightElf not Skyborne
  talk Thorgrum Borrelson##1572
  turnin Honor Students##6387 |goto Loch Modan 33.94,50.95
step
  only not Human not NightElf not Skyborne
  talk Thorgrum Borrelson##1572
  accept Ride to Ironforge##6391 |goto Loch Modan 33.94,50.95
step
  talk Norric Lochthane##258043
  turnin Snowbound##86667 |goto Loch Modan 41.89,19.03
step
  note Bring 12 Tunnel Rat Ears to Mountaineer Kadrell in Thelsamar.
  collect 12 Tunnel Rat Ear##3110 |q 416 |goto Loch Modan 35.84,26.76 |tip {dropsfrom}Tunnel Rat Vermin, Tunnel Rat Scout, Tunnel Rat Geomancer
step
  only Shaman
  talk Braldir Ashmantle##257808
  accept Fire Sapta##94473 |goto Loch Modan 32.05,66.06
step
  only Shaman
  talk Braldir Ashmantle##257808
  turnin Fire Sapta##94473 |goto Loch Modan 32.05,66.06
step
  talk Mountaineer Cobbleflint##1089
  accept In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.13
step
  talk Captain Rugelfuss##1092
  accept The Trogg Threat##267 |goto Loch Modan 23.23,73.68
step
  talk Mountaineer Kadrell##1340
  turnin Rat Catching##416 |goto Loch Modan 32.63,49.74
step
  note Mountaineer Cobbleflint of the southern guard tower wants you to kill 10 Stonesplinter Troggs and 10 Stonesplinter Scouts.
  kill Stonesplinter Trogg##1161 |q 224 |goto Loch Modan 32.37,72.36
step
  note Bring 8 Trogg Stone Teeth to Captain Rugelfuss in the southern guard tower.
  collect 8 Trogg Stone Tooth##2536 |q 267 |goto Loch Modan 32.37,72.36 |tip {dropsfrom}Stonesplinter Trogg, Stonesplinter Scout, Stonesplinter Skullthumper
step
  talk Mountaineer Cobbleflint##1089
  turnin In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.13
step
  talk Captain Rugelfuss##1092
  turnin The Trogg Threat##267 |goto Loch Modan 23.23,73.68
step
  talk Mountaineer Kadrell##1340
  accept Mountaineer Stormpike's Task##1339 |goto Loch Modan 32.63,49.74
step
  talk Mountaineer Stormpike##1343
  turnin Mountaineer Stormpike's Task##1339 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Stormpike##1343
  accept Stormpike's Order##1338 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Stormpike##1343
  accept Filthy Paws##307 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Gravelgaw##1091
  accept In Defense of the King's Lands##237 |goto Loch Modan 23.54,76.4
step
  note Mountaineer Gravelgaw in the southern guard tower wants you to kill 10 Stonesplinter Skullthumpers and 10 Stonesplinter Seers and report back to him.
  kill Stonesplinter Skullthumper##1163 |q 237 |goto Loch Modan 35.91,84.2
step
  talk Prospector Ironband##1344
  accept Excavation Progress Report##298 |goto Loch Modan 65.93,65.62
step
  talk Marek Ironheart##1154
  accept Crocolisk Hunting##385 |goto Loch Modan 81.76,61.66
step
  talk Daryl the Youngling##1187
  accept A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
step
  talk Marek Ironheart##1154
  accept Twisting the Knife##86758 |goto Loch Modan 81.76,61.66
step
  note Kill 6 Mountain Buzzards and return to Daryl the Youngling in the Farstrider Lodge within 15 minutes.
  kill Mountain Buzzard##1194 |q 257 |goto Loch Modan 75.79,70.46
step
  talk Daryl the Youngling##1187
  turnin A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
step
  note Find and defeat the crocolisk Daggerfang and bring back Marek's knife.
  collect Marek's Croc-Hunting Knife##279591 |q 86758 |goto Loch Modan 63,46.65 |tip {dropsfrom}Daggerfang
step
  talk Jern Hornhelm##1105
  turnin Excavation Progress Report##298 |goto Loch Modan 37.24,47.38
step
  talk Jern Hornhelm##1105
  accept Report to Ironforge##301 |goto Loch Modan 37.24,47.38
step
  note Go to the Silver Stream Mine and collect 4 loads of Miners' Gear.
  collect 4 Miners' Gear##2640 |q 307 |goto Loch Modan 35.3,24.38 |tip {dropsfrom}Miners' League Crates
step
  talk Mountaineer Stormpike##1343
  turnin Filthy Paws##307 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Gravelgaw##1091
  turnin In Defense of the King's Lands##237 |goto Loch Modan 23.54,76.4
step
  talk Mountaineer Wallbang##1090
  accept In Defense of the King's Lands##263 |goto Loch Modan 23.47,74.51
step
  note Mountaineer Wallbang in the southern guard tower wants you to kill 10 Stonesplinter Shaman and 10 Stonesplinter Bonesnappers.
  kill Stonesplinter Shaman##1197 |q 263 |goto Loch Modan 37.52,90.07
step
  talk Marek Ironheart##1154
  turnin Twisting the Knife##86758 |goto Loch Modan 81.76,61.66
step
  talk Mountaineer Wallbang##1090
  turnin In Defense of the King's Lands##263 |goto Loch Modan 23.47,74.51
step
  talk Captain Rugelfuss##1092
  accept In Defense of the King's Lands##217 |goto Loch Modan 23.23,73.68
step
  talk Mountaineer Ylva##269153
  accept Banner of the Fallen##86585 |goto Loch Modan 31.76,86.21
step
  note Kill the Trogg leader, Grawmug, and his two guards, Gnasher and Brawler then report back to Captain Rugelfuss in the southern guard tower.
  kill Grawmug##1205 |q 217 |goto Loch Modan 34.77,90.45
step
  note Raise the standard of Ironforge, call out the trogg Headsplitter and kill it, then report to Captain Rugelfuss.
  kill Headsplitter##269185 |q 86585 |goto Loch Modan 31.7,86.14
step
  talk Daryl the Youngling##1187
  accept A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
  note Kill 5 Elder Mountain Boars and return to Daryl the Youngling in the Farstrider Lodge within 12 minutes.
  talk Elder Mountain Boar##1192 |q 258 |goto Loch Modan 64.94,38.83
step
  talk Captain Rugelfuss##1092
  turnin In Defense of the King's Lands##217 |goto Loch Modan 23.23,73.68
step
  talk Captain Rugelfuss##1092
  turnin Banner of the Fallen##86585 |goto Loch Modan 23.23,73.68
step
  talk Daryl the Youngling##1187
  turnin A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
  talk Jern Hornhelm##1105
  accept Ironband's Excavation##436 |goto Loch Modan 37.24,47.38
step
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##250 |goto Loch Modan 46.05,13.61
step
  turnin A Dark Threat Looms##250 |goto Loch Modan 56.05,13.24
step
  click Suspicious Barrel##257
  accept A Dark Threat Looms##199 |goto Loch Modan 56.05,13.24
step
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##199 |goto Loch Modan 46.05,13.61
step
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##161 |goto Loch Modan 46.05,13.61
step
  talk Magmar Fellhew##1345
  turnin Ironband's Excavation##436 |goto Loch Modan 64.9,66.66
step
  talk Magmar Fellhew##1345
  accept Gathering Idols##297 |goto Loch Modan 64.9,66.66
step
  note Bring Magmar Fellhew 8 Carved Stone Idols.
  collect Carved Stone Idol##2636 |q 297 |goto Loch Modan 70.03,62.68 |tip {dropsfrom}Stonesplinter Geomancer, Stonesplinter Digger, Berserk Trogg
step
  talk Magmar Fellhew##1345
  turnin Gathering Idols##297 |goto Loch Modan 64.9,66.66
step
  talk Magistrate Bluntnose##1139
  accept Mercenaries##255 |goto Loch Modan 34.6,44.47
step
  note Magistrate Bluntnose of Thelsamar has hired you to kill 4 Mo'grosh Ogres, 4 Mo'grosh Brutes and 4 Mo'grosh Enforcers.
  kill Mo'grosh Ogre##1178 |q 255 |goto Loch Modan 69.67,25.54 |elite
step
  talk Magistrate Bluntnose##1139
  turnin Mercenaries##255 |goto Loch Modan 34.6,44.47
step
  talk Vyrin Swiftwind##1156
  accept Vyrin's Revenge##271 |goto Loch Modan 81.73,64.14
step
  click Discarded Fishing Toolbox##665289
  accept Silver of the Waves##86614 |goto Loch Modan 50.58,53.29
step
  talk Khara Deepwater##1684
  turnin Silver of the Waves##86614 |goto Loch Modan 40.28,39.28
step
  note Kill Ol' Sooty then show your handiwork to Daryl the Youngling at the Farstrider Lodge.
  kill Ol' Sooty##1225 |goto Loch Modan 37.92,63.38 |elite
  collect Ol' Sooty's Head##2713 |q 271 |goto Loch Modan 37.92,63.38
step
  talk Daryl the Youngling##1187
  turnin Vyrin's Revenge##271 |goto Loch Modan 83.47,65.46
step
  talk Daryl the Youngling##1187
  accept Vyrin's Revenge##531 |goto Loch Modan 83.47,65.46
step
  talk Vyrin Swiftwind##1156
  turnin Vyrin's Revenge##531 |goto Loch Modan 81.73,64.14
step
  talk Mountaineer Kadrell##1340
  accept Report to Mountaineer Rockgar##468 |goto Loch Modan 32.63,49.74
step
  talk Mountaineer Rockgar##1342
  turnin Report to Mountaineer Rockgar##468 |goto Loch Modan 25.44,10.38
step
  talk Mountaineer Rockgar##1342
  accept The Algaz Gauntlet##455 |goto Loch Modan 25.44,10.38
step
  only Dwarf Paladin not completed(2999) not completed(3000) not haveq(2999) not haveq(3000)
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##2997 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Human Paladin not completed(3681) not haveq(3681)
  talk Duthorian Rall##6171
  turnin Tome of Divinity##2998 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  talk Grimand Elmore##1416
  accept Stormpike's Delivery##353 |goto Stormwind City 59.73,33.78
step
  talk Gnoarn##6569
  accept Find Bingles##2039 |goto Ironforge 69.18,50.55
step
  note Bring 3 pieces of Bear Meat, 3 Boar Intestines, and 3 Spider Ichor to Vidra Hearthstove in Thelsamar.
  collect 3 Boar Intestines##3172 |q 418 |goto Westfall 44.71,56.93 |tip {dropsfrom}Goretusk, Bellygrub, Young Goretusk
step
  note Get 5 pieces of Crocolisk Meat and 6 Crocolisk Skins for Marek Ironheart at the Farstrider Lodge.
  collect Crocolisk Meat##2924 |q 385 |goto Stranglethorn Vale 22.02,18.46 |tip {dropsfrom}Saltwater Crocolisk, Wetlands Crocolisk, Young Wetlands Crocolisk
step
  talk Vidra Hearthstove##1963
  turnin Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
step
  talk Mountaineer Stormpike##1343
  turnin Stormpike's Delivery##353 |goto Loch Modan 24.76,18.4
step
  talk Marek Ironheart##1154
  turnin Crocolisk Hunting##385 |goto Loch Modan 81.76,61.66
step
  talk Bingles Blastenheimer##6577
  turnin Find Bingles##2039 |goto Loch Modan 63.56,47.92
step
  only not Human not NightElf not Skyborne
  talk Golnir Bouldertoe##4256
  turnin Ride to Ironforge##6391 |goto Ironforge 51.52,26.31 |tip {turninat}Ironforge
step
  talk Furen Longbeard##5413
  turnin Stormpike's Order##1338 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  talk Prospector Stormpike##1356
  turnin Report to Ironforge##301 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Bingles Blastenheimer##6577
  accept Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.92
step
  note Find and return Bingles' supplies:
  collect Bingles' Wrench##7343 |q 2038 |goto Loch Modan 48.73,30.09 |tip {dropsfrom}Bingles's Toolbucket
step
  note Traverse Dun Algaz.
  kill Dragonmaw Scout##2103 |q 455 |goto Wetlands 47.89,77.19
step
  talk Bingles Blastenheimer##6577
  turnin Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.92
step
  talk Valstag Ironjaw##2086
  turnin The Algaz Gauntlet##455 |goto Wetlands 10.1,56.9 |tip {turninat}Wetlands
step
  talk Ashlan Stonesmirk##1073
  turnin A Dark Threat Looms##161 |goto Wetlands 50.05,18.17 |tip {turninat}Wetlands
step
  only not Human not NightElf not Skyborne
  talk Golnir Bouldertoe##4256
  accept Gryth Thurden##6388 |goto Ironforge 51.52,26.31
step
  talk Prospector Stormpike##1356
  accept Powder to Ironband##302 |goto Ironforge 74.64,11.74
step
  only not Human not NightElf not Skyborne
  talk Gryth Thurden##1573
  turnin Gryth Thurden##6388 |goto Ironforge 55.5,47.74 |tip {turninat}Ironforge
step
  talk Jern Hornhelm##1105
  turnin Powder to Ironband##302 |goto Loch Modan 37.24,47.38
step
  only not Human not NightElf not Skyborne
  talk Gryth Thurden##1573
  accept Return to Brock##6392 |goto Ironforge 55.5,47.74
step
  talk Jern Hornhelm##1105
  accept Resupplying the Excavation##273 |goto Loch Modan 37.24,47.38
step
  only not Human not NightElf not Skyborne
  talk Brock Stoneseeker##1681
  turnin Return to Brock##6392 |goto Loch Modan 37.02,47.81
step
  talk Huldar##2057
  turnin Resupplying the Excavation##273 |goto Loch Modan 52.19,69.32
step
  talk Huldar##2057
  accept After the Ambush##454 |goto Loch Modan 52.19,69.32
step
  talk Miran##1379
  turnin After the Ambush##454 |goto Loch Modan 52.21,69.43
step
  talk Miran##1379
  accept Protecting the Shipment##309 |goto Loch Modan 52.21,69.43
step
  talk Prospector Ironband##1344
  turnin Protecting the Shipment##309 |goto Loch Modan 65.93,65.62
step
  note {travel}Ironforge
  goto Ironforge 33.34,47.82
]])
