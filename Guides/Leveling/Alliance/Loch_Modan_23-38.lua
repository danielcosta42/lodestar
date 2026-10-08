-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Loch Modan (23-38)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stranglethorn Vale (32-40)",
	rev = "f3a8e4fa",
}, [[
step
  note {fp}Thorgrum Borrelson
  goto Loch Modan 33.94,50.95 |tip {vendor}
step
  click WANTED##256
  accept WANTED: Chok'sul##256 |goto Loch Modan 37.3,46.52
step
  talk Mountaineer Kadrell##1340
  accept Stonegear's Search##467 |goto Loch Modan 32.63,49.74
step
  only Shaman
  talk Norric Lochthane##258043
  accept Call of Water##94495 |goto Loch Modan 41.89,19.03
step
  note Kill Chok'sul and bring his head to Magistrate Bluntnose of Thelsamar.
  kill Chok'sul##1210 |goto Loch Modan 79.59,14.7 |elite
  collect Chok'sul's Head##2561 |q 256 |goto Loch Modan 79.59,14.7
step
  talk Magistrate Bluntnose##1139
  turnin WANTED: Chok'sul##256 |goto Loch Modan 34.6,44.47
step
  talk Morhan Coppertongue##167
  accept Ingredients for the Forge##86776 |goto Loch Modan 34.02,46.54
step
  note Bring 10 Bronze Bars to Morhan Coppertongue.
  collect 10 Bronze Bar##2841 |q 86776 |goto Loch Modan 34.02,46.54
step
  talk Morhan Coppertongue##167
  turnin Ingredients for the Forge##86776 |goto Loch Modan 34.02,46.54
step
  click Carved Figurine##424007
  accept Eagle's Fist##79975 |goto Loch Modan 49.42,12.78
step
  talk Ghak Healtouch##1470
  accept Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94495 |goto Wetlands 65.73,76.43 |tip {turninat}Wetlands
step
  talk Pilot Stonegear##1377
  turnin Stonegear's Search##467 |goto Dun Morogh 49.62,48.61 |tip {turninat}Dun Morogh
step
  turnin Eagle's Fist##79975 |goto Arathi Highlands 22.48,24.23 |tip {turninat}Arathi Highlands
step
  talk Prospector Stormpike##1356
  accept Ironband Wants You!##707 |goto Ironforge 74.64,11.74
step
  note Acquire the reagents Ghak Healtouch needs from the Badlands, then return to him in Thelsamar.
  collect Buzzard Gizzard##7847 |q 2500 |goto Badlands 57.46,28.59 |tip {dropsfrom}Starving Buzzard, Buzzard, Giant Buzzard
step
  talk Prospector Ironband##1344
  turnin Ironband Wants You!##707 |goto Loch Modan 65.93,65.62
step
  talk Ghak Healtouch##1470
  turnin Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
  talk Prospector Ironband##1344
  accept Find Agmond##738 |goto Loch Modan 65.93,65.62
step
  talk Ghak Healtouch##1470
  accept Uldaman Reagent Run##17 |goto Loch Modan 37.07,49.38
step
  note Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar.
  collect 12 Magenta Fungus Cap##8047 |q 17 |goto Loch Modan 36.98,89.97 |tip {dropsfrom}Magenta Cap Clusters
step
  turnin Find Agmond##738 |goto Badlands 50.89,62.4 |tip {turninat}Badlands
step
  talk Ghak Healtouch##1470
  turnin Uldaman Reagent Run##17 |goto Loch Modan 37.07,49.38
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 35.66,10.53
]])
