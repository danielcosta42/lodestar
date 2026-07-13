-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Loch Modan (14-38)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Redridge Mountains (15-25)",
}, [[
step
  note {fp}Thorgrum Borrelson
  goto Loch Modan 33.94,50.95 |tip {vendor}
step
  talk Magistrate Bluntnose##1139
  accept Mercenaries##255 |goto Loch Modan 34.6,44.47
step
  talk Jern Hornhelm##1105
  accept Resupplying the Excavation##273 |goto Loch Modan 37.24,47.38
step
  talk Mountaineer Kadrell##1340
  accept Rat Catching##416 |goto Loch Modan 34.17,47.84
step
  note Bring 12 Tunnel Rat Ears to Mountaineer Kadrell in Thelsamar.
  get Rat Catching |q 416 |goto Loch Modan 34.17,47.84
step
  talk Vidra Hearthstove##1963
  accept Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
step
  note Bring 3 pieces of Bear Meat, 3 Boar Intestines, and 3 Spider Ichor to Vidra Hearthstove in Thelsamar.
  get Thelsamar Blood Sausages |q 418 |goto Loch Modan 34.83,49.28
step
  talk Jern Hornhelm##1105
  accept Ironband's Excavation##436 |goto Loch Modan 37.24,47.38
step
  talk Mountaineer Kadrell##1340
  accept Stonegear's Search##467 |goto Loch Modan 34.17,47.84
step
  talk Mountaineer Kadrell##1340
  accept Report to Mountaineer Rockgar##468 |goto Loch Modan 34.17,47.84
step
  talk Mountaineer Kadrell##1340
  accept Mountaineer Stormpike's Task##1339 |goto Loch Modan 34.17,47.84
step
  only Paladin
  talk Bailor Stonehand##6241
  accept Bailor's Ore Shipment##1655 |goto Loch Modan 35.95,44.91
step
  only Paladin
  note Bring Jordan's Ore Shipment to Bailor Stonehand in Loch Modan.
  get Bailor's Ore Shipment |q 1655 |goto Loch Modan 35.95,44.91
step
  talk Ghak Healtouch##1470
  accept Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
  note Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
  get Badlands Reagent Run |q 2500 |goto Loch Modan 37.07,49.38
step
  talk Brock Stoneseeker##1681
  accept Honor Students##6387 |goto Loch Modan 37.02,47.81
step
  talk Huldar##2057
  turnin Resupplying the Excavation##273 |goto Loch Modan 52.19,69.32
step
  talk Huldar##2057
  accept After the Ambush##454 |goto Loch Modan 52.19,69.32
step
  talk Magmar Fellhew##1345
  turnin Ironband's Excavation##436 |goto Loch Modan 64.9,66.66
step
  talk Magmar Fellhew##1345
  accept Gathering Idols##297 |goto Loch Modan 64.9,66.66
step
  note Bring Magmar Fellhew 8 Carved Stone Idols.
  get Gathering Idols |q 297 |goto Loch Modan 64.9,66.66
step
  talk Prospector Ironband##1344
  accept Excavation Progress Report##298 |goto Loch Modan 65.93,65.62
step
  talk Prospector Ironband##1344
  accept Agmond's Fate##704 |goto Loch Modan 65.93,65.62
step
  note Bring 4 Carved Stone Urns to Prospector Ironband in Loch Modan.
  get Agmond's Fate |q 704 |goto Loch Modan 65.93,65.62
step
  talk Prospector Ironband##1344
  accept Find Agmond##738 |goto Loch Modan 65.93,65.62
step
  talk Daryl the Youngling##1187
  accept A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
step
  talk Marek Ironheart##1154
  accept Crocolisk Hunting##385 |goto Loch Modan 81.76,61.66
step
  note Get 5 pieces of Crocolisk Meat and 6 Crocolisk Skins for Marek Ironheart at the Farstrider Lodge.
  get Crocolisk Hunting |q 385 |goto Loch Modan 81.76,61.66
step
  note Kill 6 Mountain Buzzards and return to Daryl the Youngling in the Farstrider Lodge within 15 minutes.
  kill Mountain Buzzard##1194 |q 257 |goto Loch Modan 76.77,70.46
step
  talk Bingles Blastenheimer##6577
  accept Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.92
step
  note Find and return Bingles' supplies:
  get Bingles' Missing Supplies |q 2038 |goto Loch Modan 63.56,47.92
step
  note Magistrate Bluntnose of Thelsamar has hired you to kill 4 Mo'grosh Ogres, 4 Mo'grosh Brutes and 4 Mo'grosh Enforcers.
  kill Mo'grosh Ogre##1178 |q 255 |goto Loch Modan 69.33,25.54
step
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##161 |goto Loch Modan 46.05,13.61
step
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##250 |goto Loch Modan 46.05,13.61
step
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##278 |goto Loch Modan 46.05,13.61
step
  note Chief Engineer Hinderweir wants you to gather Lurker Venom, a Mo'grosh Crystal, and a Crocolisk Tear.
  get A Dark Threat Looms |q 278 |goto Loch Modan 46.05,13.61
step
  talk Mountaineer Rockgar##1342
  turnin Report to Mountaineer Rockgar##468 |goto Loch Modan 25.44,10.38
step
  talk Mountaineer Stormpike##1343
  turnin Mountaineer Stormpike's Task##1339 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Stormpike##1343
  accept Filthy Paws##307 |goto Loch Modan 24.76,18.4
step
  note Go to the Silver Stream Mine and collect 4 loads of Miners' Gear.
  get Filthy Paws |q 307 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Stormpike##1343
  accept Stormpike's Order##1338 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Cobbleflint##1089
  accept In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.13
step
  talk Captain Rugelfuss##1092
  accept The Trogg Threat##267 |goto Loch Modan 23.23,73.68
step
  note Bring 8 Trogg Stone Teeth to Captain Rugelfuss in the southern guard tower.
  get The Trogg Threat |q 267 |goto Loch Modan 23.23,73.68
step
  note Mountaineer Cobbleflint of the southern guard tower wants you to kill 10 Stonesplinter Troggs and 10 Stonesplinter Scouts.
  kill Stonesplinter Trogg##1161 |q 224 |goto Loch Modan 31.54,72.36
step
  talk Mountaineer Pebblebitty##3836
  accept Proof of Deed##3182 |goto Loch Modan 18.18,84.01
step
  talk Hammertoe Grez##2909
  accept Amulet of Secrets##722 |goto Loch Modan 37.28,85.78
step
  note Find Hammertoe's Amulet and return it to him in Uldaman.
  get Amulet of Secrets |q 722 |goto Loch Modan 37.28,85.78
step
  talk Mountaineer Kadrell##1340
  turnin Rat Catching##416 |goto Loch Modan 34.17,47.84
step
  talk Vidra Hearthstove##1963
  turnin Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
step
  talk Jern Hornhelm##1105
  turnin Excavation Progress Report##298 |goto Loch Modan 37.24,47.38
step
  talk Ghak Healtouch##1470
  turnin Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
  talk Pilot Stonegear##1377
  turnin Stonegear's Search##467 |goto Dun Morogh 49.62,48.61 |tip {turninat}Dun Morogh
step
  talk Thorgrum Borrelson##1572
  turnin Honor Students##6387 |goto Loch Modan 33.94,50.95
step
  only Paladin
  talk Bailor Stonehand##6241
  turnin Bailor's Ore Shipment##1655 |goto Loch Modan 35.95,44.91
step
  talk Magistrate Bluntnose##1139
  turnin Mercenaries##255 |goto Loch Modan 34.6,44.47
step
  talk Ghak Healtouch##1470
  accept Uldaman Reagent Run##17 |goto Loch Modan 37.07,49.38
step
  note Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar.
  get Uldaman Reagent Run |q 17 |goto Loch Modan 37.07,49.38
step
  talk Jern Hornhelm##1105
  accept Report to Ironforge##301 |goto Loch Modan 37.24,47.38
step
  talk Ghak Healtouch##1470
  accept Badlands Reagent Run II##2501 |goto Loch Modan 37.07,49.38
step
  note Use the empty thaumaturgy vessels on scorched guardian dragons found in the Badlands. Once you have them filled, bring them to Ghak Healtouch in Thelsamar.
  get Badlands Reagent Run II |q 2501 |goto Loch Modan 37.07,49.38
step
  talk Thorgrum Borrelson##1572
  accept Ride to Ironforge##6391 |goto Loch Modan 33.94,50.95
step
  talk Miran##1379
  turnin After the Ambush##454 |goto Loch Modan 52.21,69.43
step
  turnin Find Agmond##738 |goto Badlands 50.89,62.4 |tip {turninat}Badlands
step
  talk Magmar Fellhew##1345
  turnin Gathering Idols##297 |goto Loch Modan 64.9,66.66
step
  talk Prospector Ironband##1344
  turnin Agmond's Fate##704 |goto Loch Modan 65.93,65.62
step
  talk Daryl the Youngling##1187
  turnin A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
step
  talk Marek Ironheart##1154
  turnin Crocolisk Hunting##385 |goto Loch Modan 81.76,61.66
step
  talk Daryl the Youngling##1187
  accept A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
  talk Bingles Blastenheimer##6577
  turnin Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.92
step
  note Kill 5 Elder Mountain Boars and return to Daryl the Youngling in the Farstrider Lodge within 12 minutes.
  kill Elder Mountain Boar##1192 |q 258 |goto Loch Modan 65.37,39.62
step
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##278 |goto Loch Modan 46.05,13.61
step
  talk Ashlan Stonesmirk##1073
  turnin A Dark Threat Looms##161 |goto Wetlands 50.05,18.17 |tip {turninat}Wetlands
step
  talk Prospector Stormpike##1356
  turnin Report to Ironforge##301 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Furen Longbeard##5413
  turnin Stormpike's Order##1338 |goto Stormwind City 58.09,16.54 |tip {turninat}Stormwind City
step
  talk Curator Thorius##8256
  turnin Proof of Deed##3182 |goto Ironforge 71.5,15.74 |tip {turninat}Ironforge
step
  talk Golnir Bouldertoe##4256
  turnin Ride to Ironforge##6391 |goto Ironforge 51.52,26.31 |tip {turninat}Ironforge
step
  turnin A Dark Threat Looms##250 |goto Loch Modan 56.05,13.24
step
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##280 |goto Loch Modan 46.05,13.61
step
  talk Mountaineer Stormpike##1343
  turnin Filthy Paws##307 |goto Loch Modan 24.76,18.4
step
  talk Captain Rugelfuss##1092
  turnin The Trogg Threat##267 |goto Loch Modan 23.23,73.68
step
  talk Mountaineer Cobbleflint##1089
  turnin In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.13
step
  talk Mountaineer Gravelgaw##1091
  accept In Defense of the King's Lands##237 |goto Loch Modan 23.54,76.4
step
  talk Hammertoe Grez##2909
  turnin Amulet of Secrets##722 |goto Loch Modan 37.28,85.78
step
  talk Hammertoe Grez##2909
  accept Prospect of Faith##723 |goto Loch Modan 37.28,85.78
step
  note Mountaineer Gravelgaw in the southern guard tower wants you to kill 10 Stonesplinter Skullthumpers and 10 Stonesplinter Seers and report back to him.
  kill Stonesplinter Skullthumper##1163 |q 237 |goto Loch Modan 35.64,84.2
step
  talk Ghak Healtouch##1470
  turnin Uldaman Reagent Run##17 |goto Loch Modan 37.07,49.38
step
  talk Ghak Healtouch##1470
  turnin Badlands Reagent Run II##2501 |goto Loch Modan 37.07,49.38
step
  talk Daryl the Youngling##1187
  turnin A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
  talk Vyrin Swiftwind##1156
  accept Vyrin's Revenge##271 |goto Loch Modan 81.73,64.14
step
  note Kill Ol' Sooty then show your handiwork to Daryl the Youngling at the Farstrider Lodge.
  get Vyrin's Revenge |q 271 |goto Loch Modan 81.73,64.14
step
  talk Prospector Ryedol##2910
  turnin Prospect of Faith##723 |goto Badlands 53.42,43.39 |tip {turninat}Badlands
step
  turnin A Dark Threat Looms##280 |goto Loch Modan 50.58,14.3
step
  talk Mountaineer Gravelgaw##1091
  turnin In Defense of the King's Lands##237 |goto Loch Modan 23.54,76.4
step
  talk Mountaineer Wallbang##1090
  accept In Defense of the King's Lands##263 |goto Loch Modan 23.47,74.51
step
  note Mountaineer Wallbang in the southern guard tower wants you to kill 10 Stonesplinter Shaman and 10 Stonesplinter Bonesnappers.
  kill Stonesplinter Shaman##1197 |q 263 |goto Loch Modan 37.47,90.07
step
  talk Daryl the Youngling##1187
  turnin Vyrin's Revenge##271 |goto Loch Modan 83.47,65.46
step
  talk Daryl the Youngling##1187
  accept Vyrin's Revenge##531 |goto Loch Modan 83.47,65.46
step
  talk Mountaineer Wallbang##1090
  turnin In Defense of the King's Lands##263 |goto Loch Modan 23.47,74.51
step
  talk Captain Rugelfuss##1092
  accept In Defense of the King's Lands##217 |goto Loch Modan 23.23,73.68
step
  note Kill the Trogg leader, Grawmug, and his two guards, Gnasher and Brawler then report back to Captain Rugelfuss in the southern guard tower.
  kill Grawmug##1205 |q 217 |goto Loch Modan 34.77,90.45
step
  talk Vyrin Swiftwind##1156
  turnin Vyrin's Revenge##531 |goto Loch Modan 81.73,64.14
step
  talk Captain Rugelfuss##1092
  turnin In Defense of the King's Lands##217 |goto Loch Modan 23.23,73.68
step
  note {travel}Redridge Mountains
  goto Redridge Mountains 29.99,44.45
]])
