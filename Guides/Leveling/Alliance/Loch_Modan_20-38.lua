-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Loch Modan (20-38)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Arathi Highlands (31-40)",
	rev = "3c8afc0f",
}, [[
step
  ding 16
step
  note {fp}Thorgrum Borrelson
  goto Loch Modan 33.94,50.95 |tip {vendor}
step
  only level>=19
  talk Magistrate Bluntnose##1139
  accept Mercenaries##255 |goto Loch Modan 34.6,44.47
step
  only completed(258) level>=20
  talk Vyrin Swiftwind##1156
  accept Vyrin's Revenge##271 |goto Loch Modan 81.73,64.14
step
  only haveq(255)
  note Magistrate Bluntnose of Thelsamar has hired you to kill 4 Mo'grosh Ogres, 4 Mo'grosh Brutes and 4 Mo'grosh Enforcers.
  kill Mo'grosh Ogre##1178 |q 255/1 |goto Loch Modan 69.67,25.54 |elite
  kill Mo'grosh Enforcer##1179 |q 255/3 |goto Loch Modan 70.83,23.85 |elite
  kill Mo'grosh Brute##1180 |q 255 |goto Loch Modan 75.09,15.98 |elite
step
  only haveq(255)
  talk Magistrate Bluntnose##1139
  turnin Mercenaries##255 |goto Loch Modan 34.6,44.47
step
  only level>=22
  click WANTED##256
  accept WANTED: Chok'sul##256 |goto Loch Modan 37.3,46.52
step
  only level>=20
  talk Mountaineer Kadrell##1340
  accept Stonegear's Search##467 |goto Loch Modan 32.63,49.74
step
  only completed(258) haveq(271)
  note Kill Ol' Sooty then show your handiwork to Daryl the Youngling at the Farstrider Lodge.
  kill Ol' Sooty##1225 |q 271 |goto Loch Modan 37.92,63.38 |elite
  collect Ol' Sooty's Head##2713 |q 271 |goto Loch Modan 37.92,63.38
step
  only completed(258) haveq(271)
  talk Daryl the Youngling##1187
  turnin Vyrin's Revenge##271 |goto Loch Modan 83.47,65.46
step
  only completed(258) completed(271)
  talk Daryl the Youngling##1187
  accept Vyrin's Revenge##531 |goto Loch Modan 83.47,65.46
step
  only completed(258) haveq(531)
  note Bring Ol' Sooty's head to Vyrin Swiftwind at the Farstrider Lodge.
  talk Vyrin Swiftwind##1156
  turnin Vyrin's Revenge##531 |goto Loch Modan 81.73,64.14
step
  only haveq(256)
  note Kill Chok'sul and bring his head to Magistrate Bluntnose of Thelsamar.
  kill Chok'sul##1210 |q 256 |goto Loch Modan 79.59,14.7 |elite
  collect Chok'sul's Head##2561 |q 256 |goto Loch Modan 79.59,14.7
step
  only Shaman level>=20
  talk Norric Lochthane##258043
  accept Call of Water##94495 |goto Loch Modan 41.86,19.02
step
  only Shaman level>=20
  talk Norric Lochthane##258043
  accept Call of Water##94502 |goto Loch Modan 41.86,19.02
step
  only haveq(256)
  talk Magistrate Bluntnose##1139
  turnin WANTED: Chok'sul##256 |goto Loch Modan 34.6,44.47
step
  click Carved Figurine##424007
  accept Eagle's Fist##79975 |goto Loch Modan 49.49,13.05
step
  only level>=36
  talk Ghak Healtouch##1470
  accept Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
  only Shaman haveq(94495)
  note Find Hervdana Saegrund in the Wetlands.
  talk Hervdana Saegrund##258203
  turnin Call of Water##94495 |goto Wetlands 65.75,76.45 |tip {turninat}Wetlands
step
  only haveq(467)
  note Speak with Pilot Stonegear.
  talk Pilot Stonegear##1377
  turnin Stonegear's Search##467 |goto Dun Morogh 49.62,48.61 |tip {turninat}Dun Morogh
step
  only Shaman haveq(94502)
  note Cleanse the corruption at Stendel's Pond in Westfall.
  collect Corrupt Manifestation's Bracers##7812 |q 94502 |goto Silverpine Forest 38.78,44.26 |tip {dropsfrom}Corrupt Minor Manifestation of Water
step
  only Shaman haveq(94502)
  turnin Call of Water##94502 |goto Westfall 45.57,59.88 |tip {turninat}Westfall
step
  only level>=30
  talk Prospector Stormpike##1356
  accept Ironband Wants You!##707 |goto Ironforge 74.64,11.74
step
  only haveq(707)
  note Speak with Prospector Ironband at Ironband's Excavation Site in Loch Modan.
  talk Prospector Ironband##1344
  turnin Ironband Wants You!##707 |goto Loch Modan 65.93,65.62
step
  only level>=30
  talk Prospector Ironband##1344
  accept Find Agmond##738 |goto Loch Modan 65.93,65.62
step
  only haveq(2500)
  note Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
  collect Buzzard Gizzard##7847 |q 2500/1 |goto Badlands 57.46,28.59 |tip {dropsfrom}Starving Buzzard, Buzzard, Giant Buzzard
  collect Crag Coyote Fang##7846 |q 2500/2 |goto Badlands 49.87,41.92 |tip {dropsfrom}Crag Coyote, Feral Crag Coyote, Elder Crag Coyote
  collect Rock Elemental Shard##7848 |q 2500 |goto Badlands 40.51,78.29 |tip {dropsfrom}Rock Elemental, Lesser Rock Elemental, Ambassador Infernus
step
  only haveq(2500)
  talk Ghak Healtouch##1470
  turnin Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
  only completed(2500) level>=38
  talk Ghak Healtouch##1470
  accept Uldaman Reagent Run##17 |goto Loch Modan 37.07,49.38
step
  only haveq(17)
  note Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar.
  collect 12 Magenta Fungus Cap##8047 |q 17 |goto Loch Modan 36.98,89.97 |tip {dropsfrom}Magenta Cap Clusters
step
  only haveq(17)
  talk Ghak Healtouch##1470
  turnin Uldaman Reagent Run##17 |goto Loch Modan 37.07,49.38
step
  note Water spray dampens the air, the view is incredible.
  turnin Eagle's Fist##79975 |goto Arathi Highlands 22.54,24.14 |tip {turninat}Arathi Highlands
step
  note {travel}Arathi Highlands
  goto Arathi Highlands 44.29,92.88
]])
