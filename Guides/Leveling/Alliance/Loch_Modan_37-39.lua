-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Loch Modan (37-39)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Hillsbrad Foothills (33-40)",
	rev = "020769f6",
}, [[
step
  ding 31
step
  talk Prospector Stormpike##1356
  accept Ironband Wants You!##707 |goto Ironforge 74.64,11.74
step
  only completed(1222)
  talk Angus Stern##1141
  accept Feast at the Blue Recluse##1271 |goto Stormwind City 51.79,93.64
step
  only Shaman completed(94494)
  talk Norric Lochthane##258043
  accept Call of Water##94495 |goto Loch Modan 41.77,19.05
step
  note Speak with Prospector Ironband at Ironband's Excavation Site in Loch Modan.
  talk Prospector Ironband##1344
  turnin Ironband Wants You!##707 |goto Loch Modan 65.93,65.62
step
  talk Prospector Ironband##1344
  accept Find Agmond##738 |goto Loch Modan 65.93,65.62
step
  note {fp}Thorgrum Borrelson
  goto Loch Modan 33.94,50.95 |tip {vendor}
step
  only level>=36
  talk Ghak Healtouch##1470
  accept Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
  only Shaman completed(94494)
  note Find Hervdana Saegrund in the Wetlands.
  talk Hervdana Saegrund##258203
  turnin Call of Water##94495 |goto Wetlands 65.76,76.52 |tip {turninat}Wetlands
step
  only Shaman completed(94494)
  talk Hervdana Saegrund##258203
  accept Call of Water##94497 |goto Wetlands 65.76,76.52
step
  only Shaman completed(94494)
  note Fill the Empty Brown Waterskin at the bottom of the waterfalls below Hervdana's cave and return it to her in the Wetlands.
  collect Full Brown Waterskin##265734 |q 94497 |goto Wetlands 65.76,76.52
step
  only Shaman completed(94494)
  talk Hervdana Saegrund##258203
  turnin Call of Water##94497 |goto Wetlands 65.76,76.52 |tip {turninat}Wetlands
step
  only Shaman completed(94494)
  talk Hervdana Saegrund##258203
  accept Call of Water##94499 |goto Wetlands 65.76,76.52
step
  only Shaman completed(94494)
  note Fill the Empty Red Waterskin at Stonewatch Falls near the Nightcrawler Murlocs and return to Hervdana Saegrund in the Wetlands.
  collect Full Red Waterskin##265748 |q 94499 |goto Wetlands 65.76,76.52
step
  only Shaman completed(94494)
  talk Hervdana Saegrund##258203
  turnin Call of Water##94499 |goto Wetlands 65.76,76.52 |tip {turninat}Wetlands
step
  only Shaman completed(94494)
  talk Hervdana Saegrund##258203
  accept Call of Water##94500 |goto Wetlands 65.76,76.52
step
  only Shaman completed(94494)
  note Fill the Unfilled Blue Waterskin at the waters of Astranaar in Ashenvale and return to Hervdana Saegrund in the Wetlands.
  collect Full Blue Waterskin##265773 |q 94500 |goto Wetlands 65.76,76.52
step
  only Shaman completed(94494)
  talk Hervdana Saegrund##258203
  turnin Call of Water##94500 |goto Wetlands 65.76,76.52 |tip {turninat}Wetlands
step
  only Shaman completed(94494)
  talk Hervdana Saegrund##258203
  accept Call of Water##94501 |goto Wetlands 65.76,76.52
step
  only completed(1222)
  talk Angus Stern##1141
  turnin Feast at the Blue Recluse##1271 |goto Stormwind City 51.79,93.64 |tip {turninat}Stormwind City
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
  only Shaman completed(94494)
  note Bring the Vial of Purest Water to Norric Lochthane in Loch Modan.
  talk Norric Lochthane##258043
  turnin Call of Water##94501 |goto Loch Modan 41.77,19.05
step
  only Shaman completed(94494)
  talk Norric Lochthane##258043
  accept Call of Water##94502 |goto Loch Modan 41.77,19.05
step
  only haveq(17)
  note Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar.
  collect 12 Magenta Fungus Cap##8047 |q 17 |goto Loch Modan 36.98,89.97 |tip {dropsfrom}Magenta Cap Clusters
step
  only haveq(17)
  talk Ghak Healtouch##1470
  turnin Uldaman Reagent Run##17 |goto Loch Modan 37.07,49.38
step
  only Shaman completed(94494)
  note Drink the Water Sapta and Cleanse the corruption at Stendel's Pond in Westfall.
  collect Corrupt Manifestation's Bracers##7812 |q 94502 |goto Silverpine Forest 38.78,44.26 |tip {dropsfrom}Corrupt Minor Manifestation of Water
step
  only Shaman completed(94494)
  turnin Call of Water##94502 |goto Westfall 45.59,59.91 |tip {turninat}Westfall
step
  only Dwarf Shaman completed(94494)
  click Forgotten Shrine##619896
  accept Call of Water##94503 |goto Westfall 45.59,59.91
step
  only Dwarf Shaman completed(94494)
  note Speak to the Minor Manifestation of Water in Westfall.
  talk Minor Manifestation of Water##5895
  turnin Call of Water##94503 |goto Silverpine Forest 38.65,44.58 |tip {turninat}Silverpine Forest
step
  only Dwarf Shaman completed(94494)
  talk Minor Manifestation of Water##5895
  accept Call of Water##94505 |goto Silverpine Forest 38.65,44.58
step
  only Dwarf Shaman completed(94494)
  note Bring the Shard of Water to Norric Lochthane in Loch Modan.
  talk Norric Lochthane##258043
  turnin Call of Water##94505 |goto Loch Modan 41.77,19.05
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 48.14,59.11
]])
