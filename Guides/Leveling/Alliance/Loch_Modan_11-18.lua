-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Loch Modan (11-18)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Redridge Mountains (15-24)",
	rev = "faee0c18",
}, [[
step
  ding 10
step
  note {fp}Thorgrum Borrelson
  goto Loch Modan 33.94,50.95 |tip {vendor}
step
  only haveq(414)
  note Take the Cask of Shimmer Stout to Mountaineer Kadrell.
  talk Mountaineer Kadrell##1340
  turnin Stout to Kadrell##414 |goto Loch Modan 32.63,49.74
step
  talk Vidra Hearthstove##1963
  accept Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
step
  only level>=10
  talk Mountaineer Kadrell##1340
  accept Rat Catching##416 |goto Loch Modan 32.63,49.74
step
  only not Human not NightElf not Skyborne level>=10
  talk Brock Stoneseeker##1681
  accept Honor Students##6387 |goto Loch Modan 37.02,47.81
step
  only level>=10
  talk Grenhild Darktalon##49808
  accept Snowbound##86667 |goto Loch Modan 36.57,48.41
step
  only haveq(86667)
  note Deliver a Jar of Snow to Norric Lochthane at his house on the northwest coast of the Loch.
  collect Jar of Snow##279379 |q 86667 |goto Loch Modan 36.57,48.41
step
  only not Human not NightElf not Skyborne haveq(6387)
  note Bring Brock's List to Thorgrum Borrelson in Thelsamar.
  talk Thorgrum Borrelson##1572
  turnin Honor Students##6387 |goto Loch Modan 33.94,50.95
step
  only not Human not NightElf not Skyborne completed(6387) level>=10
  talk Thorgrum Borrelson##1572
  accept Ride to Ironforge##6391 |goto Loch Modan 33.94,50.95
step
  note Bring 3 pieces of Bear Meat, 3 Boar Intestines, and 3 Spider Ichor to Vidra Hearthstove in Thelsamar.
  collect 3 Spider Ichor##3174 |q 418/3 |goto Loch Modan 31.08,41.56 |tip {dropsfrom}Forest Lurker, Wood Lurker, Cliff Lurker
  collect 3 Boar Intestines##3172 |q 418/1 |goto Loch Modan 33.34,33.45 |tip {dropsfrom}Mountain Boar, Mangy Mountain Boar, Elder Mountain Boar
  collect Bear Meat##3173 |q 418 |goto Loch Modan 32.46,29.75 |tip {dropsfrom}Elder Black Bear, Grizzled Black Bear, Black Bear Patriarch
step
  only haveq(416)
  note Bring 12 Tunnel Rat Ears to Mountaineer Kadrell in Thelsamar.
  collect 12 Tunnel Rat Ear##3110 |q 416 |goto Loch Modan 35.84,26.76 |tip {dropsfrom}Tunnel Rat Vermin, Tunnel Rat Scout, Tunnel Rat Forager
step
  only haveq(86667)
  talk Norric Lochthane##258043
  turnin Snowbound##86667 |goto Loch Modan 41.86,19.02
step
  only haveq(416)
  talk Mountaineer Kadrell##1340
  turnin Rat Catching##416 |goto Loch Modan 32.63,49.74
step
  talk Vidra Hearthstove##1963
  turnin Thelsamar Blood Sausages##418 |goto Loch Modan 34.83,49.28
step
  talk Mountaineer Cobbleflint##1089
  accept In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.13
step
  talk Captain Rugelfuss##1092
  accept The Trogg Threat##267 |goto Loch Modan 23.23,73.68
step
  note Mountaineer Cobbleflint of the southern guard tower wants you to kill 10 Stonesplinter Troggs and 10 Stonesplinter Scouts.
  kill Stonesplinter Scout##1162 |q 224/2 |goto Loch Modan 31.01,71.74
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
  only Shaman completed(94465)
  talk Braldir Ashmantle##257808
  accept Call of Fire##94466 |goto Loch Modan 32.17,65.97
step
  only Shaman completed(94465)
  note Bring 1 Fire Tar and 1 Reagent Pouch to Braldir Ashmantle in Loch Modan.
  collect 1 Reagent Pouch##6652 |q 94466/1 |goto Loch Modan 35.3,82.56 |tip {dropsfrom}Stonesplinter Seer
  collect 1 Fire Tar##5026 |q 94466 |goto Loch Modan 35.15,23.93 |tip {dropsfrom}Tunnel Rat Geomancer
step
  only Shaman completed(94465)
  talk Braldir Ashmantle##257808
  turnin Call of Fire##94466 |goto Loch Modan 32.17,65.97
step
  only Shaman completed(94465)
  talk Braldir Ashmantle##257808
  accept Call of Fire##94467 |goto Loch Modan 32.17,65.97
step
  only Shaman completed(94465)
  note Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
  collect Glowing Ember##6655 |q 94467 |goto Loch Modan 31.96,64.42 |tip {dropsfrom}Minor Manifestation of Fire
step
  only Shaman completed(94465)
  turnin Call of Fire##94467 |goto Loch Modan 31.79,64.52
step
  only Shaman completed(94465)
  click Brazier of the Dormant Flame##61934
  accept Call of Fire##94468 |goto Loch Modan 31.79,64.52
step
  talk Mountaineer Gravelgaw##1091
  accept In Defense of the King's Lands##237 |goto Loch Modan 23.54,76.4
step
  note Mountaineer Gravelgaw in the southern guard tower wants you to kill 10 Stonesplinter Skullthumpers and 10 Stonesplinter Seers and report back to him.
  kill Stonesplinter Seer##1166 |q 237/2 |goto Loch Modan 35.3,82.56
  kill Stonesplinter Skullthumper##1163 |q 237 |goto Loch Modan 35.91,84.2
step
  talk Mountaineer Gravelgaw##1091
  turnin In Defense of the King's Lands##237 |goto Loch Modan 23.54,76.4
step
  talk Mountaineer Wallbang##1090
  accept In Defense of the King's Lands##263 |goto Loch Modan 23.47,74.51
step
  note Mountaineer Wallbang in the southern guard tower wants you to kill 10 Stonesplinter Shaman and 10 Stonesplinter Bonesnappers.
  kill Stonesplinter Bonesnapper##1164 |q 263/2 |goto Loch Modan 37.88,87.01
  kill Stonesplinter Shaman##1197 |q 263 |goto Loch Modan 37.52,90.07
step
  talk Mountaineer Wallbang##1090
  turnin In Defense of the King's Lands##263 |goto Loch Modan 23.47,74.51
step
  talk Mountaineer Kadrell##1340
  accept Mountaineer Stormpike's Task##1339 |goto Loch Modan 32.63,49.74
step
  note Speak with Mountaineer Stormpike.
  talk Mountaineer Stormpike##1343
  turnin Mountaineer Stormpike's Task##1339 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Stormpike##1343
  accept Stormpike's Order##1338 |goto Loch Modan 24.76,18.4
step
  talk Mountaineer Stormpike##1343
  accept Filthy Paws##307 |goto Loch Modan 24.76,18.4
step
  note Go to the Silver Stream Mine and collect 4 loads of Miners' Gear.
  collect 4 Miners' Gear##2640 |q 307 |goto Loch Modan 35.3,24.38 |tip {dropsfrom}Miners' League Crates
step
  talk Mountaineer Stormpike##1343
  turnin Filthy Paws##307 |goto Loch Modan 24.76,18.4
step
  talk Prospector Ironband##1344
  accept Excavation Progress Report##298 |goto Loch Modan 65.93,65.62
step
  talk Marek Ironheart##1154
  accept Crocolisk Hunting##385 |goto Loch Modan 81.76,61.66
step
  only level>=12
  talk Marek Ironheart##1154
  accept Twisting the Knife##86758 |goto Loch Modan 81.76,61.66
step
  talk Daryl the Youngling##1187
  accept A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
step
  note Kill 6 Mountain Buzzards and return to Daryl the Youngling in the Farstrider Lodge within 15 minutes.
  kill Mountain Buzzard##1194 |q 257 |goto Loch Modan 75.79,70.46
step
  talk Daryl the Youngling##1187
  turnin A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
step
  only haveq(86758)
  note Find and defeat the crocolisk Daggerfang and bring back Marek's knife.
  collect Marek's Croc-Hunting Knife##279591 |q 86758 |goto Loch Modan 62.78,46.8 |tip {dropsfrom}Daggerfang
step
  note Get 5 pieces of Crocolisk Meat and 6 Crocolisk Skins for Marek Ironheart at the Farstrider Lodge.
  collect Crocolisk Meat##2924 |q 385 |goto Loch Modan 56.87,39.12 |tip {dropsfrom}Loch Crocolisk, Daggerfang, Large Loch Crocolisk
step
  note Bring Ironband's Progress Report to Jern Hornhelm in Thelsamar.
  talk Jern Hornhelm##1105
  turnin Excavation Progress Report##298 |goto Loch Modan 37.24,47.38
step
  talk Jern Hornhelm##1105
  accept Report to Ironforge##301 |goto Loch Modan 37.24,47.38
step
  talk Marek Ironheart##1154
  turnin Crocolisk Hunting##385 |goto Loch Modan 81.76,61.66
step
  only haveq(86758)
  talk Marek Ironheart##1154
  turnin Twisting the Knife##86758 |goto Loch Modan 81.76,61.66
step
  talk Daryl the Youngling##1187
  accept A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
  note Kill 5 Elder Mountain Boars and return to Daryl the Youngling in the Farstrider Lodge within 12 minutes.
  kill Elder Mountain Boar##1192 |q 258 |goto Loch Modan 64.94,38.83
step
  talk Daryl the Youngling##1187
  turnin A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
  only level>=13
  talk Jern Hornhelm##1105
  accept Ironband's Excavation##436 |goto Loch Modan 37.24,47.38
step
  talk Captain Rugelfuss##1092
  accept In Defense of the King's Lands##217 |goto Loch Modan 23.23,73.68
step
  talk Mountaineer Ylva##269153
  accept Banner of the Fallen##86585 |goto Loch Modan 31.79,86.45
step
  note Raise the standard of Ironforge, call out the trogg Headsplitter and kill it, then report to Captain Rugelfuss.
  kill Headsplitter##269185 |q 86585 |goto Loch Modan 31.82,86.59
step
  note Kill the Trogg leader, Grawmug, and his two guards, Gnasher and Brawler then report back to Captain Rugelfuss in the southern guard tower.
  kill Grawmug##1205 |q 217/1 |goto Loch Modan 34.77,90.45
  kill Brawler##1207 |q 217/3 |goto Loch Modan 34.64,90.55
  kill Gnasher##1206 |q 217 |goto Loch Modan 34.71,90.82
step
  talk Captain Rugelfuss##1092
  turnin In Defense of the King's Lands##217 |goto Loch Modan 23.23,73.68
step
  talk Captain Rugelfuss##1092
  turnin Banner of the Fallen##86585 |goto Loch Modan 23.23,73.68
step
  only haveq(436)
  note Speak with Explorer Fellhew.
  talk Magmar Fellhew##1345
  turnin Ironband's Excavation##436 |goto Loch Modan 64.9,66.66
step
  talk Magmar Fellhew##1345
  accept Gathering Idols##297 |goto Loch Modan 64.9,66.66
step
  collect Excavation Tools##665282 |goto Loch Modan 69.4,67.5 |tip Loot the quest item here — it starts the quest.
  accept Excavation Tools##86613 |goto Loch Modan 69.4,67.5
step
  note Return 6 Excavation Tools to Magmar Fellhew.
  collect 6 Excavation Tools##278398 |q 86613 |goto Loch Modan 69.4,67.5
step
  talk Prospector Ironband##1344
  turnin Excavation Tools##86613 |goto Loch Modan 65.93,65.62
step
  note Bring Magmar Fellhew 8 Carved Stone Idols.
  collect 8 Carved Stone Idol##2636 |q 297 |goto Loch Modan 70.03,62.68 |tip {dropsfrom}Stonesplinter Geomancer, Stonesplinter Digger, Berserk Trogg
step
  talk Magmar Fellhew##1345
  turnin Gathering Idols##297 |goto Loch Modan 64.9,66.66
step
  only level>=16
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##250 |goto Loch Modan 46.05,13.61
step
  only haveq(250)
  note Investigate the area near the eastern ramp of the Dam and bring Chief Engineer Hinderweir a clue that might reveal what the Dark Iron Dwarves are up to.
  turnin A Dark Threat Looms##250 |goto Loch Modan 56.05,13.24
step
  only completed(250) level>=16
  click Suspicious Barrel##257
  accept A Dark Threat Looms##199 |goto Loch Modan 56.05,13.24
step
  only haveq(199)
  note Return to Chief Engineer Hinderweir and show him the clue that you discovered.
  talk Chief Engineer Hinderweir VII##1093
  turnin A Dark Threat Looms##199 |goto Loch Modan 46.05,13.61
step
  only completed(199) level>=16
  talk Chief Engineer Hinderweir VII##1093
  accept A Dark Threat Looms##161 |goto Loch Modan 46.05,13.61
step
  click Discarded Fishing Toolbox##665289
  accept Silver of the Waves##86614 |goto Loch Modan 45.75,43.39
step
  note Return the Monogrammed Silver Hair clip to its owner.
  talk Khara Deepwater##1684
  turnin Silver of the Waves##86614 |goto Loch Modan 40.28,39.28
step
  note Bring Stormpike's Request to Furen Longbeard in Stormwind.
  talk Furen Longbeard##5413
  turnin Stormpike's Order##1338 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  talk Grimand Elmore##1416
  accept Stormpike's Delivery##353 |goto Stormwind City 59.73,33.78
step
  talk Sprite Jumpsprocket##11026
  accept Detonation at a Distance##92750 |goto Stormwind City 61.88,30.56
step
  talk Donyal Tovald##2504
  accept Shelf Picked##97237 |goto Stormwind City 75.05,30.12
step
  note Find each of the reading materials located somewhere in the library and then return to Roy Lewells in Stormwind's Park.
  collect Field Accounts of Horde Razings##277196 |q 97237/1
  collect Trollbane Conquests##277194 |q 97237/2
  collect The Forsaken Ally##277195 |q 97237/3
  collect Cycles of Morality##277197 |q 97237
step
  note Talk to someone in Stormwind Intelligence about acquiring a remote detonator.
  talk Jasper Fel##1325
  turnin Detonation at a Distance##92750 |goto Stormwind City 80.28,70.07 |tip {turninat}Stormwind City
step
  talk Jasper Fel##1325
  accept Detonation at a Distance##92751 |goto Stormwind City 80.28,70.07
step
  only not Dwarf not NightElf Mage level>=15
  talk Jennea Cannon##5497
  accept Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf Mage haveq(1920)
  note Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
  collect Cantation of Manifestation##7308 |q 1920/3 |goto Stormwind City 49.61,85.42
  collect Chest of Containment Coffers##7247 |q 1920/2 |goto Stormwind City 49.51,85.6
  collect 3 Filled Containment Coffer##7292 |q 1920
step
  only not Dwarf not NightElf Mage haveq(1920)
  talk Jennea Cannon##5497
  turnin Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Mage completed(1920) level>=15
  talk Jennea Cannon##5497
  accept Gathering Materials##1921 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1921)
  note Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
  collect 10 Linen Cloth##2589 |q 1921/1 |tip {dropsfrom}humanoids
  collect 6 Charged Rift Gem##7249 |q 1921 |goto Loch Modan 35.3,24.38 |tip {dropsfrom}Miners' League Crates
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1921)
  talk Wynne Larson##1309
  turnin Gathering Materials##1921 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Mage completed(1921) level>=15
  talk Wynne Larson##1309
  accept Manaweave Robe##1941 |goto Stormwind City 51.84,83.51
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1941)
  talk Wynne Larson##1309
  turnin Manaweave Robe##1941 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  talk Roy Lewells##268568
  turnin Shelf Picked##97237 |goto Stormwind City 38.71,62.29 |tip {turninat}Stormwind City
step
  talk Roy Lewells##268568
  accept Reading Room##97234 |goto Stormwind City 38.71,62.29
step
  note Bring the Remote Detonator Kit to Sprite Jumpsprocket in the Dwarven District of Stormwind.
  talk Sprite Jumpsprocket##11026
  turnin Detonation at a Distance##92751 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  note Bring the wrapped reading material to the Stormwind library.
  talk Donyal Tovald##2504
  turnin Reading Room##97234 |goto Stormwind City 75.05,30.12 |tip {turninat}Stormwind City
step
  note Deliver the Package for Stormpike to Mountaineer Stormpike in Loch Modan.
  talk Mountaineer Stormpike##1343
  turnin Stormpike's Delivery##353 |goto Loch Modan 24.76,18.4
step
  only not Human not NightElf not Skyborne haveq(6391)
  note Buy a gryphon to Ironforge from the gryphon master Thorgrum Borrelson, then bring Brock's List to Golnir Bouldertoe in Ironforge.
  talk Golnir Bouldertoe##4256
  turnin Ride to Ironforge##6391 |goto Ironforge 51.52,26.31 |tip {turninat}Ironforge
step
  only not Human not NightElf not Skyborne completed(6391)
  talk Golnir Bouldertoe##4256
  accept Gryth Thurden##6388 |goto Ironforge 51.52,26.31
step
  only not Human not NightElf not Skyborne haveq(6388)
  note Bring the Honorary Picks to Gryth Thurden in Ironforge.
  talk Gryth Thurden##1573
  turnin Gryth Thurden##6388 |goto Ironforge 55.5,47.74 |tip {turninat}Ironforge
step
  only not Human not NightElf not Skyborne completed(6388)
  talk Gryth Thurden##1573
  accept Return to Brock##6392 |goto Ironforge 55.5,47.74
step
  talk Gnoarn##6569
  accept Find Bingles##2039 |goto Ironforge 69.18,50.55
step
  note Take Ironband's Progress Report to Prospector Stormpike.
  talk Prospector Stormpike##1356
  turnin Report to Ironforge##301 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Prospector Stormpike##1356
  accept Powder to Ironband##302 |goto Ironforge 74.64,11.74
step
  note Find Bingles Blastenheimer in Loch Modan.
  talk Bingles Blastenheimer##6577
  turnin Find Bingles##2039 |goto Loch Modan 63.56,47.92
step
  talk Bingles Blastenheimer##6577
  accept Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.92
step
  note Find and return Bingles' supplies:
  collect Bingles' Wrench##7343 |q 2038/1 |goto Loch Modan 48.73,30.09 |tip {dropsfrom}Bingles's Toolbucket
  collect Bingles' Blastencapper##7376 |q 2038/4 |goto Loch Modan 54.21,26.6 |tip {dropsfrom}Bingles's Blastencapper
  collect Bingles' Hammer##7346 |q 2038/3 |goto Loch Modan 51.78,24.09 |tip {dropsfrom}Bingles's Toolbucket
  collect Bingles' Screwdriver##7345 |q 2038 |goto Loch Modan 48.38,20.51 |tip {dropsfrom}Bingles's Toolbucket
step
  note Speak with Jern Hornhelm in Thelsamar.
  talk Jern Hornhelm##1105
  turnin Powder to Ironband##302 |goto Loch Modan 37.24,47.38
step
  talk Jern Hornhelm##1105
  accept Resupplying the Excavation##273 |goto Loch Modan 37.24,47.38
step
  only not Human not NightElf not Skyborne haveq(6392)
  note Buy a gryphon to Thelsamar from the gryphon master Gryth Thurden, then bring the Honorary Picks to Brock Stoneseeker in Thelsamar.
  talk Brock Stoneseeker##1681
  turnin Return to Brock##6392 |goto Loch Modan 37.02,47.81
step
  note Speak with Huldar.
  goto Loch Modan 51.16,68.96 |tip Find Huldar, Miran, and Saean
step
  talk Huldar##2057
  turnin Resupplying the Excavation##273 |goto Loch Modan 52.19,69.32
step
  talk Huldar##2057
  accept After the Ambush##454 |goto Loch Modan 52.19,69.32
step
  note Speak with Miran.
  talk Miran##1379
  turnin After the Ambush##454 |goto Loch Modan 52.21,69.43
step
  talk Miran##1379
  accept Protecting the Shipment##309 |goto Loch Modan 52.21,69.43
step
  note Ensure Miran and the shipment arrive at the excavation site, then inform Prospector Ironband.
  goto Loch Modan 65.12,65.77 |tip Escort Miran to the excavation site
step
  talk Prospector Ironband##1344
  turnin Protecting the Shipment##309 |goto Loch Modan 65.93,65.62
step
  talk Bingles Blastenheimer##6577
  turnin Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.92
step
  only Shaman completed(94465)
  note Bring the Torch of Eternal Flame to Bruegs Kindleborn in Dun Morogh.
  talk Bruegs Kindleborn##257597
  turnin Call of Fire##94468 |goto Dun Morogh 87.94,44.8 |tip {turninat}Dun Morogh
step
  note {travel}Redridge Mountains
  goto Redridge Mountains 21.39,43.96
]])
