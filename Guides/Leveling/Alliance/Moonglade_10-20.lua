-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Moonglade (10-20)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Westfall (12-24)",
}, [[
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept A Lesson to Learn##26 |goto Darnassus 35.37,8.4
step
  talk General Marcus Jonathan##466
  accept Messenger to Stormwind##121 |goto Stormwind City 69.17,82.72
step
  talk Prospector Stormpike##1356
  accept Powder to Ironband##302 |goto Ironforge 74.64,11.74
step
  talk Grimand Elmore##1416
  accept Stormpike's Delivery##353 |goto Stormwind City 59.73,33.78
step
  talk Baros Alexston##1646
  accept Humble Beginnings##399 |goto Stormwind City 57.74,47.86
step
  note Go to Baros Alexston's house in Westfall and search for his compass, then return it to him in Cathedral Square of Stormwind.
  collect A Simple Compass##2998 |q 399 |goto Westfall 36.24,54.52 |tip {dropsfrom}Alexston's Chest
step
  talk Gnoarn##6569
  accept Find Bingles##2039 |goto Ironforge 69.18,50.55
step
  talk Gnoarn##6569
  accept Speak with Shoni##2041 |goto Ironforge 69.18,50.55
step
  only Rogue
  talk Renzik "The Shiv"##6946
  accept Redridge Rendezvous##2281 |goto Stormwind City 78.29,71.14
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Kingly Shakedown##2298 |goto Ironforge 51.96,14.84
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6122 |goto Moonglade 56.21,30.64
step
  only Druid
  note Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by the falls.
  collect Filled Cliffspring Falls Sampler##15845 |q 6122 |goto Darkshore 54.92,33.31 |tip {dropsfrom}Cliffspring Falls Cave Mouth
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6125 |goto Moonglade 56.21,30.64
step
  talk Sprite Jumpsprocket##11026
  accept A Dynamite Plan##92749 |goto Stormwind City 61.88,30.56
step
  note Obtain 10 Coarse Dynamite from crafting, trading, or the auction house, then return to Sprite Jumpsprocket in the Dwarven District of Stormwind.
  collect 10 Coarse Dynamite##4365 |q 92749 |goto Stormwind City 61.88,30.56
step
  talk Sprite Jumpsprocket##11026
  accept Detonation at a Distance##92750 |goto Stormwind City 61.88,30.56
step
  talk Jasper Fel##1325
  accept Detonation at a Distance##92751 |goto Stormwind City 80.28,70.07
step
  talk Sprite Jumpsprocket##11026
  accept Explosive Consultation##92752 |goto Stormwind City 61.88,30.56
step
  only Skyborne
  talk Highlord Bolvar Fordragon##1748
  accept Exploring the Alliance##93963 |goto Stormwind City 80.21,38.35
step
  talk Elaine Trias##483
  accept Gatehouse Goods##97222 |goto Stormwind City 66.56,73.37
step
  only Skyborne
  talk Highlord Bolvar Fordragon##1748
  accept Journey to Sentinel Hill##98021 |goto Stormwind City 80.21,38.35
step
  only Skyborne
  note Speak with Randal Emerson in Stormwind Keep to receive further instructions. Use the instructions received to locate and speak with King Magni Bronzebeard, High Tinker Mekkatorque, and Tyrande Whisperwind.
  talk Randal Emerson##275491 |q 93963 |goto Stormwind City 79.14,44.78
step
  talk Jern Hornhelm##1105
  turnin Powder to Ironband##302 |goto Loch Modan 37.24,47.38 |tip {turninat}Loch Modan
step
  talk Alba Fairmoon##253092
  turnin Explosive Consultation##92752 |goto Westfall 52.49,53.06 |tip {turninat}Westfall
step
  talk Mountaineer Stormpike##1343
  turnin Stormpike's Delivery##353 |goto Loch Modan 24.76,18.4 |tip {turninat}Loch Modan
step
  only Rogue
  talk Lucius##6966
  turnin Redridge Rendezvous##2281 |goto Redridge Mountains 22.97,52.04 |tip {turninat}Redridge Mountains
step
  only Druid
  talk Alanndarian Nightsong##3702
  turnin The Principal Source##6122 |goto Darkshore 37.69,40.66 |tip {turninat}Darkshore
step
  talk Magistrate Solomon##344
  turnin Messenger to Stormwind##121 |goto Redridge Mountains 24.9,44.45 |tip {turninat}Redridge Mountains
step
  talk Chief Archaeologist Greywhisker##2912
  accept Trouble In Darkshore?##730 |goto Darnassus 31.24,84.51
step
  only Human Paladin
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1643 |goto Stormwind City 50.48,47.49
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1647 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1785 |goto Ironforge 23.54,8.3
step
  only Human Paladin
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1788 |goto Stormwind City 49.53,44.99
step
  only Mage
  talk Jennea Cannon##5497
  accept Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8
step
  only Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
  collect 3 Filled Containment Coffer##7292 |q 1920 |goto Stormwind City 49.56,85.8
step
  only Rogue
  talk Erion Shadewhisper##4214
  accept Erion's Behest##2260 |goto Darnassus 34.52,25.93
step
  talk Priestess A'moora##7313
  accept Tears of the Moon##2518 |goto Darnassus 36.65,85.93
step
  note Priestess A'moora in the Temple of the Moon at Darnassus wants you to bring her Lady Sathrah's Silvery Spinnerets.
  collect Silvery Spinnerets##8344 |q 2518 |goto Teldrassil 42,25.4 |tip {dropsfrom}Lady Sathrah
step
  only Dwarf Paladin
  talk Brandur Ironhammer##5149
  accept Tome of Divinity##2999 |goto Ironforge 23.13,6.14
step
  only Dwarf Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Tome of Divinity##3000 |goto Stormwind City 48.43,50.22
step
  only Human Paladin
  talk Brandur Ironhammer##5149
  accept Tome of Divinity##3681 |goto Ironforge 23.13,6.14
step
  talk Gilbert Gray##267118
  accept Fishin' Time##95065 |goto Stormwind City 26.29,47.15
step
  note Bring 1 Shiny Bauble and 3 Nightcrawlers to Gilbert Gray at the harbor in Stormwind.
  buy 1 Shiny Bauble##6529 |q 95065 |goto Elwynn Forest 41.82,67.16
step
  talk Afadra Dunwall##264943
  accept The Restless Dead##96394 |goto Ironforge 33.2,47.82
step
  note Kill 15 Enraged Apparitions, 10 Tormented Souls and put the spirit of Anvilmar to rest.
  kill Enraged Apparition##263389 |q 96394
step
  talk Thom Filch##265003
  accept Important Heirlooms##96403 |goto Ironforge 32.41,44.81
step
  note Collect 8 Dwarven Heirlooms from the Hall of Thanes.
  collect 8 Dwarven Heirloom##274289 |q 96403 |goto Ironforge 32.41,44.81
step
  talk Manifest Clerk Philmor##268511
  accept Philmor's Favor##97220 |goto Stormwind City 30.68,28.95
step
  only NightElf Druid
  note Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear. When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.
  kill Great Bear Spirit##11956 |q 5929 |goto Moonglade 39.11,27.5
step
  only Skyborne
  talk Highlord Bolvar Fordragon##1748
  turnin Exploring the Alliance##93963 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  talk Baros Alexston##1646
  turnin Humble Beginnings##399 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
step
  talk Shoni the Shilent##6579
  turnin Speak with Shoni##2041 |goto Stormwind City 62.63,34.11 |tip {turninat}Stormwind City
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  talk Elaine Trias##483
  turnin Philmor's Favor##97220 |goto Stormwind City 66.56,73.37 |tip {turninat}Stormwind City
step
  talk Elaine Trias##483
  turnin Gatehouse Goods##97222 |goto Stormwind City 66.56,73.37 |tip {turninat}Stormwind City
step
  talk Sprite Jumpsprocket##11026
  turnin A Dynamite Plan##92749 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  talk Jasper Fel##1325
  turnin Detonation at a Distance##92750 |goto Stormwind City 80.28,70.07 |tip {turninat}Stormwind City
step
  talk Sprite Jumpsprocket##11026
  turnin Detonation at a Distance##92751 |goto Stormwind City 61.88,30.56 |tip {turninat}Stormwind City
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Erion's Behest##2260 |goto Stormwind City 78.29,71.14 |tip {turninat}Stormwind City
step
  only Skyborne
  talk Gryan Stoutmantle##234
  turnin Journey to Sentinel Hill##98021 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Power over Poison##6125 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Bingles Blastenheimer##6577
  turnin Find Bingles##2039 |goto Loch Modan 63.56,47.92 |tip {turninat}Loch Modan
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Kingly Shakedown##2298 |goto Stormwind City 78.29,71.14 |tip {turninat}Stormwind City
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Back to Darnassus##5931 |goto Moonglade 56.21,30.64
step
  only Mage
  talk Jennea Cannon##5497
  turnin Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  talk Afadra Dunwall##264943
  turnin The Restless Dead##96394 |goto Ironforge 33.2,47.82 |tip {turninat}Ironforge
step
  talk Thom Filch##265003
  turnin Important Heirlooms##96403 |goto Ironforge 32.41,44.81 |tip {turninat}Ironforge
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##2999 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##3000 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  talk Priestess A'moora##7313
  turnin Tears of the Moon##2518 |goto Darnassus 36.65,85.93 |tip {turninat}Darnassus
step
  talk Gilbert Gray##267118
  turnin Fishin' Time##95065 |goto Stormwind City 26.29,47.15 |tip {turninat}Stormwind City
step
  talk Archaeologist Hollee##2913
  turnin Trouble In Darkshore?##730 |goto Darkshore 37.44,41.84 |tip {turninat}Darkshore
step
  only Human Paladin
  talk Duthorian Rall##6171
  turnin Tome of Divinity##3681 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only Human Paladin
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1643 |goto Stormwind City 63.84,72.21 |tip {turninat}Stormwind City
step
  only Dwarf Paladin
  talk John Turner##6175
  turnin The Tome of Divinity##1647 |goto Ironforge 23.34,61.86 |tip {turninat}Ironforge
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1785 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Human Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1788 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only Human Paladin
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21
step
  only Human Paladin
  note Bring 10 Linen Cloth to Stephanie Turner in Stormwind.
  collect 10 Linen Cloth##2589 |q 1644 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Dwarf Paladin
  talk John Turner##6175
  accept The Tome of Divinity##1648 |goto Ironforge 23.34,61.86
step
  only Dwarf Paladin
  note Bring 10 Linen Cloth to John Turner in Ironforge.
  collect 10 Linen Cloth##2589 |q 1648 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Mage
  talk Jennea Cannon##5497
  accept Gathering Materials##1921 |goto Stormwind City 49.56,85.8
step
  only Mage
  note Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
  collect 10 Linen Cloth##2589 |q 1921 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only NightElf Druid
  note Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble.
  collect Shrine Of Remulos##15885 |q 29 |goto Moonglade 36,41.42
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Back to Darnassus##5931 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only Mage
  talk Wynne Larson##1309
  turnin Gathering Materials##1921 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  only NightElf Druid
  talk Tajarri##11799
  turnin Trial of the Lake##29 |goto Moonglade 36.52,40.1
step
  only Human Paladin
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21 |tip {turninat}Stormwind City
step
  only Dwarf Paladin
  talk John Turner##6175
  turnin The Tome of Divinity##1648 |goto Ironforge 23.34,61.86 |tip {turninat}Ironforge
step
  only NightElf Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##272 |goto Moonglade 36.52,40.1
step
  only NightElf Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 272 |goto Moonglade 36,41.42 |tip {dropsfrom}Shrine Of Remulos
step
  only Dwarf Paladin
  talk John Turner##6175
  accept The Tome of Divinity##1778 |goto Ironforge 23.34,61.86
step
  only Human Paladin
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1780 |goto Stormwind City 63.84,72.21
step
  only Mage
  talk Wynne Larson##1309
  accept Manaweave Robe##1941 |goto Stormwind City 51.84,83.51
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##272 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##5061 |goto Moonglade 56.21,30.64
step
  only Mage
  talk Wynne Larson##1309
  turnin Manaweave Robe##1941 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1778 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Human Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1780 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1779 |goto Ironforge 27.63,12.18
step
  only Human Paladin
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1781 |goto Stormwind City 50.48,47.49
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Aquatic Form##5061 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1779 |goto Ironforge 23.54,8.3 |tip {turninat}Ironforge
step
  only Human Paladin
  talk Gazin Tenorm##6173
  turnin The Tome of Divinity##1781 |goto Stormwind City 49.53,44.99 |tip {turninat}Stormwind City
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1783 |goto Ironforge 23.54,8.3
step
  only Human Paladin
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1786 |goto Stormwind City 49.53,44.99
step
  only Dwarf Paladin
  note Take the Symbol of Life and resurrect Narm Faulk in Dun Morogh.
  kill Narm Faulk##6177 |q 1783 |goto Dun Morogh 78.32,58.09
step
  only Human Paladin
  note Take the Symbol of Life and resurrect Henze Faulk in Elwynn.
  kill Henze Faulk##6172 |q 1786 |goto Elwynn Forest 72.6,51.41
step
  only Dwarf Paladin
  talk Narm Faulk##6177
  turnin The Tome of Divinity##1783 |goto Dun Morogh 78.32,58.09 |tip {turninat}Dun Morogh
step
  only Human Paladin
  talk Henze Faulk##6172
  turnin The Tome of Divinity##1786 |goto Elwynn Forest 72.6,51.41 |tip {turninat}Elwynn Forest
step
  note {travel}Westfall
  goto Westfall 56.04,31.23
]])
