-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Teldrassil (4-11)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Darkshore (13-20)",
}, [[
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  talk Melithar Staghelm##2077
  accept The Woodland Protector##458 |goto Teldrassil 59.92,42.47
step
  talk Tarindrella##1992
  accept Nature's Call##97977 |goto Teldrassil 57.83,45.21
step
  only NightElf
  talk Shanda##3595
  accept The Goddess Provides##97979 |goto Teldrassil 59.17,40.44
step
  talk Dirania Silvershine##8583
  accept A Good Friend##4495 |goto Teldrassil 60.9,41.96
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  talk Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  note Collect 4  Gnarlpine Totems and bring them to Tarindrella.
  collect 4 Gnarlpine Totem##279082 |q 97977 |goto Teldrassil 55.1,39.7
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  talk Tarindrella##1992
  turnin The Woodland Protector##458 |goto Teldrassil 57.83,45.21
step
  talk Tarindrella##1992
  turnin Nature's Call##97977 |goto Teldrassil 57.83,45.21
step
  only NightElf
  talk Shanda##3595
  turnin The Goddess Provides##97979 |goto Teldrassil 59.17,40.44
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##457 |goto Teldrassil 58.69,44.27
step
  talk Tarindrella##1992
  accept The Woodland Protector##459 |goto Teldrassil 57.83,45.21
step
  only NightElf Warrior
  talk Conservator Ilthalaine##2079
  accept Simple Sigil##3116 |goto Teldrassil 58.69,44.27
step
  only NightElf Hunter
  talk Conservator Ilthalaine##2079
  accept Etched Sigil##3117 |goto Teldrassil 58.69,44.27
step
  only NightElf Rogue
  talk Conservator Ilthalaine##2079
  accept Encrypted Sigil##3118 |goto Teldrassil 58.69,44.27
step
  only NightElf Priest
  talk Conservator Ilthalaine##2079
  accept Hallowed Sigil##3119 |goto Teldrassil 58.69,44.27
step
  only NightElf Druid
  talk Conservator Ilthalaine##2079
  accept Verdant Sigil##3120 |goto Teldrassil 58.69,44.27
step
  note Conservator Ilthalaine needs you to kill 7 Mangy Nightsabers and 7 Thistle Boars.
  talk Mangy Nightsaber##2032 |q 457 |goto Teldrassil 62.04,36.87
step
  note Collect 8 Fel Moss and bring them to Tarindrella.
  collect 8 Fel Moss##3297 |q 459 |goto Teldrassil 55.97,45.97 |tip {dropsfrom}Grell, Grellkin, Gremlin
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##457 |goto Teldrassil 58.69,44.27
step
  talk Tarindrella##1992
  turnin The Woodland Protector##459 |goto Teldrassil 57.83,45.21
step
  only NightElf Warrior
  talk Alyissia##3593
  turnin Simple Sigil##3116 |goto Teldrassil 59.64,38.44
step
  only NightElf Hunter
  talk Ayanna Everstride##3596
  turnin Etched Sigil##3117 |goto Teldrassil 58.66,40.45
step
  only NightElf Rogue
  talk Frahun Shadewhisper##3594
  turnin Encrypted Sigil##3118 |goto Teldrassil 59.64,38.66
step
  only NightElf Priest
  talk Shanda##3595
  turnin Hallowed Sigil##3119 |goto Teldrassil 59.17,40.44
step
  only NightElf Druid
  talk Mardant Strongoak##3597
  turnin Verdant Sigil##3120 |goto Teldrassil 58.63,40.29
step
  talk Gilshalan Windwalker##2082
  accept Webwood Venom##916 |goto Teldrassil 57.81,41.65
step
  talk Porthannius##6780
  accept Dolanaar Delivery##2159 |goto Teldrassil 61.16,47.64
step
  talk Iverron##8584
  turnin A Good Friend##4495 |goto Teldrassil 54.59,32.99
step
  talk Iverron##8584
  accept A Friend in Need##3519 |goto Teldrassil 54.59,32.99
step
  kill Githyiss the Vile##1994 |goto Teldrassil 56.65,26.31 |tip Loot the quest item here — it starts the quest.
  accept Fang of Githyiss##97236 |goto Teldrassil 56.65,26.31
step
  note Bring 10 Webwood Venom Sacs to Gilshalan Windwalker at Aldrassil.
  collect 10 Webwood Venom Sac##5166 |q 916 |goto Teldrassil 56.9,28.42 |tip {dropsfrom}Webwood Spider, Webwood Creeper UNUSED
step
  talk Innkeeper Keldamyr##6736
  turnin Dolanaar Delivery##2159 |goto Teldrassil 55.62,59.79
step
  talk Gilshalan Windwalker##2082
  turnin Webwood Venom##916 |goto Teldrassil 57.81,41.65
step
  talk Dirania Silvershine##8583
  turnin A Friend in Need##3519 |goto Teldrassil 60.9,41.96
step
  talk Gilshalan Windwalker##2082
  turnin Fang of Githyiss##97236 |goto Teldrassil 57.81,41.65
step
  talk Dirania Silvershine##8583
  accept Iverron's Antidote##3521 |goto Teldrassil 60.9,41.96
step
  talk Gilshalan Windwalker##2082
  accept Webwood Egg##917 |goto Teldrassil 57.81,41.65
step
  note Collect 7 Hyacinth Mushrooms, 4 Moonpetal Lilies, and 1 Webwood Ichor for Dirania Silveshine in Shadowglen.
  collect 7 Hyacinth Mushroom##10639 |q 3521 |goto Teldrassil 55.97,45.97 |tip {dropsfrom}Grell, Grellkin, Hyacinth Mushroom
step
  talk Dirania Silvershine##8583
  turnin Iverron's Antidote##3521 |goto Teldrassil 60.9,41.96
step
  talk Dirania Silvershine##8583
  accept Iverron's Antidote##3522 |goto Teldrassil 60.9,41.96
step
  talk Iverron##8584
  turnin Iverron's Antidote##3522 |goto Teldrassil 54.59,32.99
step
  note Bring a Webwood Egg to Gilshalan in Aldrassil.
  collect Webwood Egg##5167 |q 917 |goto Teldrassil 56.8,26.46 |tip {dropsfrom}Webwood Eggs
step
  talk Gilshalan Windwalker##2082
  turnin Webwood Egg##917 |goto Teldrassil 57.81,41.65
step
  talk Gilshalan Windwalker##2082
  accept Tenaron's Summons##920 |goto Teldrassil 57.81,41.65
step
  talk Tenaron Stormgrip##3514
  turnin Tenaron's Summons##920 |goto Teldrassil 59.06,39.45
step
  talk Tenaron Stormgrip##3514
  accept Crown of the Earth##921 |goto Teldrassil 59.06,39.45
step
  note Fill the Crystal Phial and bring it back to Tenaron Stormgrip atop Aldrassil.
  collect Filled Crystal Phial##5184 |q 921 |goto Teldrassil 59.95,33.05 |tip {dropsfrom}Shadowglen Moonwell
step
  talk Athridas Bearmantle##2078
  accept A Troubling Breeze##475 |goto Teldrassil 55.96,57.27
step
  talk Zenn Foulhoof##2150
  accept Zenn's Bidding##488 |goto Teldrassil 60.46,56.3
step
  talk Syral Bladeleaf##2083
  accept Denalan's Earth##997 |goto Teldrassil 56.08,57.72
step
  talk Tallonkai Swiftroot##3567
  accept The Emerald Dreamcatcher##2438 |goto Teldrassil 55.57,56.95
step
  talk Gaerolas Talvethren##2107
  turnin A Troubling Breeze##475 |goto Teldrassil 66.26,58.52
step
  talk Gaerolas Talvethren##2107
  accept Gnarlpine Corruption##476 |goto Teldrassil 66.26,58.52
step
  note Bring the Emerald Dreamcatcher to Tallonkai Swiftroot in Dolanaar.
  collect Emerald Dreamcatcher##8048 |q 2438 |goto Teldrassil 68.02,59.65 |tip {dropsfrom}Tallonkai's Dresser
step
  talk Denalan##2080
  turnin Denalan's Earth##997 |goto Teldrassil 60.9,68.49
step
  talk Tenaron Stormgrip##3514
  turnin Crown of the Earth##921 |goto Teldrassil 59.06,39.45
step
  talk Tenaron Stormgrip##3514
  accept Crown of the Earth##928 |goto Teldrassil 59.06,39.45
step
  only not completed(96627) not completed(96628) not completed(96638) not completed(96652) not completed(96656) not completed(96659) not haveq(96627) not haveq(96628) not haveq(96638) not haveq(96652) not haveq(96656) not haveq(96659)
  click Lost Journal##654846
  accept The Adventurer##96630 |goto Teldrassil 59.1,39.49
step
  note Bring Zenn Foulhoof outside of Dolanaar 3 Nightsaber Fangs, 3 Strigid Owl Feathers and 3 swatches of Webwood Spider Silk.
  collect Nightsaber Fang##3409 |q 488 |goto Teldrassil 44.57,37.67 |tip {dropsfrom}Elder Nightsaber, Feral Nightsaber, Nightsaber
step
  talk Athridas Bearmantle##2078
  turnin Gnarlpine Corruption##476 |goto Teldrassil 55.96,57.27
step
  talk Zenn Foulhoof##2150
  turnin Zenn's Bidding##488 |goto Teldrassil 60.46,56.3
step
  talk Corithras Moonrage##3515
  turnin Crown of the Earth##928 |goto Teldrassil 56.14,61.71
step
  talk Tallonkai Swiftroot##3567
  turnin The Emerald Dreamcatcher##2438 |goto Teldrassil 55.57,56.95
step
  only not completed(96627) not completed(96628) not completed(96638) not completed(96652) not completed(96656) not completed(96659) not haveq(96627) not haveq(96628) not haveq(96638) not haveq(96652) not haveq(96656) not haveq(96659)
  talk Lyreena Duskblade##265811
  turnin The Adventurer##96630 |goto Teldrassil 57.57,56.73
step
  talk Corithras Moonrage##3515
  accept Crown of the Earth##929 |goto Teldrassil 56.14,61.71
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96607) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96607) not haveq(96608)
  talk Lyreena Duskblade##265811
  accept The Great Outdoors##96606 |goto Teldrassil 57.57,56.73
step
  talk Sentinel Kyra Starsong##2081
  accept Seek Redemption!##489 |goto Teldrassil 56,59.52
step
  talk Aldia##3608
  accept Soft Saber Pelts##87288 |goto Teldrassil 55.51,57.15
step
  note Collect 3 Fel Cones and give them to Zenn Foulhoof outside of Dolanaar.
  collect 3 Fel Cone##3418 |q 489 |goto Teldrassil 54.28,61.9
step
  note Bring 6 Soft Nightsaber Pelts to Aldria.
  collect 6 Soft Nightsaber Pelt##280087 |q 87288 |goto Teldrassil 52.86,58.53 |tip {dropsfrom}Nightsaber
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96607) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96607) not haveq(96608)
  note Sit near Lyreena's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  collect Basic Campfire##450007 |q 96606 |goto Teldrassil 57.66,56.74
step
  talk Zenn Foulhoof##2150
  turnin Seek Redemption!##489 |goto Teldrassil 60.46,56.3
step
  talk Aldia##3608
  turnin Soft Saber Pelts##87288 |goto Teldrassil 55.51,57.15
step
  only not completed(95998) not completed(96101) not completed(96604) not completed(96605) not completed(96607) not completed(96608) not haveq(95998) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96607) not haveq(96608)
  talk Lyreena Duskblade##265811
  turnin The Great Outdoors##96606 |goto Teldrassil 57.57,56.73
step
  only not completed(96626) not completed(96629) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  talk Lyreena Duskblade##265811
  accept Camping 101: Cooking##96634 |goto Teldrassil 57.57,56.73
step
  only not completed(96626) not completed(96629) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  note Speak with Zarrin in Dolanaar to learn to become a cook.
  talk Zarrin##6286 |q 96634 |goto Teldrassil 57.12,61.3
step
  only not completed(96626) not completed(96629) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96626) not haveq(96629) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  talk Zarrin##6286
  turnin Camping 101: Cooking##96634 |goto Teldrassil 57.12,61.3
step
  note Fill the Jade Phial and bring it back to Corithras Moonrage in Dolanaar.
  collect Filled Jade Phial##5639 |q 929 |goto Teldrassil 63.38,58.09 |tip {dropsfrom}Starbreeze Village Moonwell
step
  talk Denalan##2080
  accept Timberling Seeds##918 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  accept Timberling Sprouts##919 |goto Teldrassil 60.9,68.49
step
  note Bring 8 Timberling Seeds to Denelan at Lake Al'Ameth.
  collect 8 Timberling Seed##5168 |q 918 |goto Teldrassil 60.27,66.39 |tip {dropsfrom}Timberling, Timberling Bark Ripper, Timberling Trampler
step
  note Bring 12 Timberling Sprouts to Denalan at Lake Al'Ameth.
  collect 12 Timberling Sprout##5169 |q 919 |goto Teldrassil 55.08,69.93
step
  talk Denalan##2080
  turnin Timberling Seeds##918 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  turnin Timberling Sprouts##919 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  accept Rellian Greenspyre##922 |goto Teldrassil 60.9,68.49
step
  only NightElf Priest
  talk Shanda##3595
  accept In Favor of Elune##5622 |goto Teldrassil 59.17,40.44
step
  talk Corithras Moonrage##3515
  turnin Crown of the Earth##929 |goto Teldrassil 56.14,61.71
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  turnin In Favor of Elune##5622 |goto Teldrassil 55.56,56.75
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  accept Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
step
  only NightElf Priest
  note Find Sentinel Shaya and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude and then return to Laurna Morninglight in Dolanaar.
  talk Sentinel Shaya##12429 |q 5621 |goto Teldrassil 57.24,63.51
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  turnin Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
step
  talk Moon Priestess Amara##2151
  accept The Road to Darnassus##487 |goto Teldrassil 52.91,57.2
step
  talk Tallonkai Swiftroot##3567
  accept Twisted Hatred##932 |goto Teldrassil 55.57,56.95
step
  talk Tallonkai Swiftroot##3567
  accept Ferocitas the Dream Eater##2459 |goto Teldrassil 55.57,56.95
step
  note Kill Lord Melenas and bring his head to Tallonkai Swiftroot in Dolanaar.
  collect Melenas' Head##5221 |q 932 |goto Teldrassil 51.31,50.19 |tip {dropsfrom}Lord Melenas
step
  talk Tallonkai Swiftroot##3567
  turnin Twisted Hatred##932 |goto Teldrassil 55.57,56.95
step
  note Tallonkai Swiftroot in Dolanaar wants you to kill 7 Gnarlpine Mystics and find the Missing Jewel.
  kill Gnarlpine Mystic##7235 |q 2459 |goto Teldrassil 68.64,52.3
step
  note Slay 6 Gnarlpine Ambushers and return to Sentinel Amara Nightwalker outside of Dolanaar.
  kill Gnarlpine Ambusher##2152 |q 487 |goto Teldrassil 46.47,53.42
step
  talk Oben Rageclaw##7317
  accept The Sleeping Druid##2541 |goto Teldrassil 44.94,61.59
step
  note Bring a Shaman Voodoo Charm to Oben Rageclaw in the Ban'ethil Barrow Den.
  collect Shaman Voodoo Charm##8363 |q 2541 |goto Teldrassil 44.41,61.24 |tip {dropsfrom}Gnarlpine Shaman
step
  talk Oben Rageclaw##7317
  turnin The Sleeping Druid##2541 |goto Teldrassil 44.94,61.59
step
  talk Moon Priestess Amara##2151
  turnin The Road to Darnassus##487 |goto Teldrassil 52.91,57.2
step
  talk Tallonkai Swiftroot##3567
  turnin Ferocitas the Dream Eater##2459 |goto Teldrassil 55.57,56.95
step
  talk Sentinel Eralya Leafshadow##275683
  accept Not Dead Yet##99047 |goto Teldrassil 37.56,36.93
step
  talk Sentinel Lynessa Duskblossom##275744
  accept Escaping Ban'ethil##99053 |goto Teldrassil 44.64,58.98
step
  talk Byancie##6094
  turnin Not Dead Yet##99047 |goto Teldrassil 55.29,56.82
step
  talk Sentinel Kyra Starsong##2081
  turnin Escaping Ban'ethil##99053 |goto Teldrassil 56,59.52
step
  talk Athridas Bearmantle##2078
  accept The Relics of Wakening##483 |goto Teldrassil 55.96,57.27
step
  talk Corithras Moonrage##3515
  accept Crown of the Earth##933 |goto Teldrassil 56.14,61.71
step
  talk Sentinel Kyra Starsong##2081
  accept The Lost Runner##99046 |goto Teldrassil 56,59.52
step
  talk Sentinel Eralya Leafshadow##275683
  turnin The Lost Runner##99046 |goto Teldrassil 37.56,36.93
step
  note Retrieve the Relics of Wakening and bring them to Athridas Bearmantle in Dolanaar.
  collect Raven Claw Talisman##3405 |q 483 |goto Teldrassil 45.65,57.44 |tip {dropsfrom}Chest of the Raven Claw
step
  note Fill the Tourmaline Phial and bring it back to Corithras Moonrage in Dolanaar.
  collect Filled Tourmaline Phial##5645 |q 933 |goto Teldrassil 42.41,67.07 |tip {dropsfrom}Pools of Arlithrien Moonwell
step
  talk Athridas Bearmantle##2078
  turnin The Relics of Wakening##483 |goto Teldrassil 55.96,57.27
step
  talk Corithras Moonrage##3515
  turnin Crown of the Earth##933 |goto Teldrassil 56.14,61.71
step
  talk Laurna Morninglight##3600
  accept The Sisterhood of Elune##98391 |goto Teldrassil 55.56,56.75
step
  talk Byancie##6094
  accept The Great Tree Provides##99050 |goto Teldrassil 55.29,56.82
step
  talk Byancie##6094
  accept Easing Suffering##99073 |goto Teldrassil 55.29,56.82
step
  note Collect 6 Dewy Lasher Fronds, an Empty Vial, and a Refreshing Spring Water for Byancie in Dolanaar.
  collect 6 Dewy Lasher Frond##286017 |q 99050 |goto Teldrassil 57.73,65.76 |tip {dropsfrom}Lasher Sproutling, Blooming Lasher, Wrathvine
step
  talk Sentinel Eralya Leafshadow##275683
  turnin Easing Suffering##99073 |goto Teldrassil 37.56,36.93
step
  click Strange Fronded Plant##6752
  accept The Shimmering Frond##931 |goto Teldrassil 34.61,28.76
step
  click Strange Fruited Plant##6751
  accept The Glowing Fruit##930 |goto Teldrassil 42.61,76.19
step
  talk Oben Rageclaw##7317
  accept Druid of the Claw##2561 |goto Teldrassil 44.94,61.59
step
  note Oben Rageclaw wants you to kill his soulless body, and then use the Voodoo Charm.
  kill Rageclaw##7318 |q 2561 |goto Teldrassil 45.53,58.58
step
  talk Oben Rageclaw##7317
  turnin Druid of the Claw##2561 |goto Teldrassil 44.94,61.59
step
  talk Byancie##6094
  turnin The Great Tree Provides##99050 |goto Teldrassil 55.29,56.82
step
  talk Denalan##2080
  turnin The Glowing Fruit##930 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  turnin The Shimmering Frond##931 |goto Teldrassil 60.9,68.49
step
  click Sprouted Frond##7510
  accept The Sprouted Fronds##2399 |goto Teldrassil 60.78,68.59
step
  turnin The Sprouted Fronds##2399 |goto Teldrassil 60.78,68.59
step
  talk Sentinel Arynia Cloudsbreak##3519
  accept The Enchanted Glade##937 |goto Teldrassil 38.32,34.36
step
  note Acquire 6 Bloodfeather Belts and bring them to Sentinel Arynia Cloudsbreak in the Oracle Glade.
  collect 6 Bloodfeather Belt##5204 |q 937 |goto Teldrassil 37.73,41.07 |tip {dropsfrom}Bloodfeather Harpy, Bloodfeather Rogue, Bloodfeather Sorceress
step
  talk Sentinel Arynia Cloudsbreak##3519
  turnin The Enchanted Glade##937 |goto Teldrassil 38.32,34.36
step
  talk Sentinel Arynia Cloudsbreak##3519
  accept Teldrassil##940 |goto Teldrassil 38.32,34.36
step
  talk Corithras Moonrage##3515
  accept Crown of the Earth##7383 |goto Teldrassil 56.14,61.71
step
  note Fill the Amethyst Phial and bring it back to Corithras Moonrage in Dolanaar.
  collect Filled Amethyst Phial##18151 |q 7383 |goto Teldrassil 38.44,34.06 |tip {dropsfrom}Oracle Glade Moonwell
step
  talk Corithras Moonrage##3515
  turnin Crown of the Earth##7383 |goto Teldrassil 56.14,61.71
step
  talk Corithras Moonrage##3515
  accept Crown of the Earth##935 |goto Teldrassil 56.14,61.71
step
  only NightElf Hunter not completed(6071) not completed(6073) not completed(6721) not completed(6722) not haveq(6071) not haveq(6073) not haveq(6721) not haveq(6722)
  talk Ayanna Everstride##3596
  accept The Hunter's Path##6072 |goto Teldrassil 58.66,40.45
step
  kill Blackmoss the Fetid##3535 |goto Teldrassil 43.96,29.56 |tip Loot the quest item here — it starts the quest.
  accept The Moss-twined Heart##927 |goto Teldrassil 43.96,29.56
step
  talk Sentinel Arynia Cloudsbreak##3519
  accept Darkness in the Glade##98392 |goto Teldrassil 38.32,34.36
step
  talk Sentinel Arynia Cloudsbreak##3519
  accept The Oracle Tree##98398 |goto Teldrassil 38.32,34.36
step
  note Collect Hatescreech's Amulet, Windmistress Gaedress' Amulet, and Witchmother Arysa's Amulet for Sentinel Arynia Cloudsbreak in the Oracle Glade.
  collect Hatescreech's Amulet##280831 |q 98392 |goto Teldrassil 35.12,38.81 |tip {dropsfrom}Hatescreech
step
  talk Sentinel Arynia Cloudsbreak##3519
  turnin Darkness in the Glade##98392 |goto Teldrassil 38.32,34.36
step
  turnin The Oracle Tree##98398 |goto Teldrassil 37.03,34.1
step
  talk Mist##3568
  accept Mist##938 |goto Teldrassil 31.54,31.61
step
  only NightElf Hunter not completed(6071) not completed(6073) not completed(6721) not completed(6722) not haveq(6071) not haveq(6073) not haveq(6721) not haveq(6722)
  talk Dazalar##3601
  turnin The Hunter's Path##6072 |goto Teldrassil 56.68,59.49
step
  talk Athridas Bearmantle##2078
  accept Ursal the Mauler##486 |goto Teldrassil 55.96,57.27
step
  only Warrior not completed(1639) not completed(1678) not completed(1683) not haveq(1639) not haveq(1678) not haveq(1683)
  talk Moon Priestess Amara##2151
  accept Elanaria##1684 |goto Teldrassil 52.91,57.2
step
  only Rogue
  talk Jannok Breezesong##3599
  accept The Apple Falls##2241 |goto Teldrassil 56.38,60.14
step
  only NightElf Priest not completed(5627) not completed(5628) not completed(5630) not completed(5631) not completed(5632) not completed(5633) not haveq(5627) not haveq(5628) not haveq(5630) not haveq(5631) not haveq(5632) not haveq(5633)
  talk Laurna Morninglight##3600
  accept Returning Home##5629 |goto Teldrassil 55.56,56.75
step
  only Dwarf Priest not completed(5634) not completed(5635) not completed(5637) not completed(5638) not completed(5639) not completed(5640) not haveq(5634) not haveq(5635) not haveq(5637) not haveq(5638) not haveq(5639) not haveq(5640)
  talk Laurna Morninglight##3600
  accept Desperate Prayer##5636 |goto Teldrassil 55.56,56.75
step
  only NightElf Druid not completed(5923) not completed(5924) not haveq(5923) not haveq(5924)
  talk Kal##3602
  accept Heeding the Call##5925 |goto Teldrassil 55.95,61.56
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6063 |goto Teldrassil 56.68,59.49
step
  talk Tallonkai Swiftroot##3567
  accept Twisted Hatred##98403 |goto Teldrassil 55.57,56.95
step
  only NightElf Hunter
  note Use the Taming Rod to tame a Webwood Lurker. Practice your skills, then return the Taming Rod to Dazalar in Dolanaar.
  use Webwood Lurker##1998 |q 6063 |goto Teldrassil 60.14,60.26 |tip {useit}
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6063 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6101 |goto Teldrassil 56.68,59.49
step
  talk Denalan##2080
  turnin The Moss-twined Heart##927 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  accept Planting the Heart##941 |goto Teldrassil 60.9,68.49
step
  turnin Planting the Heart##941 |goto Teldrassil 60.77,68.63
step
  note Kill 8 Befouled Webwoods and bring Xethorr the Wicked's Mature Fel Moss to Tallonkai Swiftroot in Dolanaar.
  kill Befouled Webwood##272096 |q 98403 |goto Teldrassil 49.81,44.22
step
  talk Sentinel Arynia Cloudsbreak##3519
  turnin Mist##938 |goto Teldrassil 38.32,34.36
step
  note Kill Ursal the Mauler and return to Athridas Bearmantle in Dolanaar.
  kill Ursal the Mauler##2039 |q 486 |goto Teldrassil 38.83,79.81
step
  only NightElf Hunter
  note Use the Taming Rod to tame a Nightsaber Stalker. Practice your skills, then return the Taming Rod to Dazalar in Dolanaar.
  use Nightsaber Stalker##2043 |q 6101 |goto Teldrassil 46.59,71.34 |tip {useit}
step
  talk Athridas Bearmantle##2078
  turnin Ursal the Mauler##486 |goto Teldrassil 55.96,57.27
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6101 |goto Teldrassil 56.68,59.49
step
  talk Tallonkai Swiftroot##3567
  turnin Twisted Hatred##98403 |goto Teldrassil 55.57,56.95
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6102 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  note Use the Taming Rod to tame a Strigid Screecher. Practice your skills, then return the Taming Rod to Dazalar in Dolanaar.
  use Strigid Screecher##1996 |q 6102 |goto Teldrassil 41.05,68.39 |tip {useit}
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6102 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Training the Beast##6103 |goto Teldrassil 56.68,59.49
step
  talk Sister Aquinne##7316
  turnin The Sisterhood of Elune##98391 |goto Darnassus 28.94,45.8 |tip {turninat}Darnassus
step
  only Warrior not completed(1639) not completed(1678) not completed(1683) not haveq(1639) not haveq(1678) not haveq(1683)
  talk Elanaria##4088
  turnin Elanaria##1684 |goto Darnassus 57.3,34.61 |tip {turninat}Darnassus
step
  only Rogue
  talk Syurna##4163
  turnin The Apple Falls##2241 |goto Darnassus 36.99,21.91 |tip {turninat}Darnassus
step
  only NightElf Priest not completed(5627) not completed(5628) not completed(5630) not completed(5631) not completed(5632) not completed(5633) not haveq(5627) not haveq(5628) not haveq(5630) not haveq(5631) not haveq(5632) not haveq(5633)
  talk Priestess Alathea##11401
  turnin Returning Home##5629 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only Dwarf Priest not completed(5634) not completed(5635) not completed(5637) not completed(5638) not completed(5639) not completed(5640) not haveq(5634) not haveq(5635) not haveq(5637) not haveq(5638) not haveq(5639) not haveq(5640)
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5636 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only NightElf Druid not completed(5923) not completed(5924) not haveq(5923) not haveq(5924)
  talk Mathrengyl Bearwalker##4217
  turnin Heeding the Call##5925 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Sister Aquinne##7316
  accept The Temple of the Moon##2519 |goto Darnassus 28.94,45.8
step
  talk Arch Druid Fandral Staghelm##3516
  accept Crown of the Earth##98046 |goto Darnassus 34.81,9.26
step
  talk Lariia##4092
  accept Crown of the Earth##98065 |goto Darnassus 40.35,88.68
step
  talk Sentinel Dalia Sunblade##8396
  accept Eyes of the Sentinels##98067 |goto Darnassus 39.65,89.54
step
  only Human Priest not completed(5634) not completed(5635) not completed(5636) not completed(5637) not completed(5638) not completed(5639) not haveq(5634) not haveq(5635) not haveq(5636) not haveq(5637) not haveq(5638) not haveq(5639)
  talk Priestess Alathea##11401
  accept Desperate Prayer##5640 |goto Darnassus 39.52,81.2
step
  only NightElf Druid completed(5931)
  talk Mathrengyl Bearwalker##4217
  accept Body and Heart##6001 |goto Darnassus 35.37,8.4
step
  only NightElf Druid completed(5931)
  note Use the Cenarion Moondust on the Moonkin Stone of Auberdine to bring forth Lunaclaw. From there, you must face Lunaclaw and earn the strength of body and heart it possesses.
  use Lunaclaw Spirit##12144 |q 6001 |tip {useit}
step
  only NightElf
  talk Mydrannul##4241
  accept Nessa Shadowsong##6344 |goto Darnassus 70.68,45.38
step
  talk Priestess A'moora##7313
  turnin The Temple of the Moon##2519 |goto Darnassus 36.65,85.93 |tip {turninat}Darnassus
step
  talk Lariia##4092
  turnin Crown of the Earth##98046 |goto Darnassus 40.35,88.68 |tip {turninat}Darnassus
step
  talk Tyrande Whisperwind##7999
  turnin Crown of the Earth##98065 |goto Darnassus 39.1,81.59 |tip {turninat}Darnassus
step
  talk Sentinel Dalia Sunblade##8396
  turnin Eyes of the Sentinels##98067 |goto Darnassus 39.65,89.54 |tip {turninat}Darnassus
step
  only Human Priest not completed(5634) not completed(5635) not completed(5636) not completed(5637) not completed(5638) not completed(5639) not haveq(5634) not haveq(5635) not haveq(5636) not haveq(5637) not haveq(5638) not haveq(5639)
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5640 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only NightElf Druid completed(5931)
  talk Mathrengyl Bearwalker##4217
  turnin Body and Heart##6001 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only NightElf
  talk Nessa Shadowsong##10118
  turnin Nessa Shadowsong##6344 |goto Teldrassil 56.26,92.44
step
  talk Rellian Greenspyre##3517
  turnin Rellian Greenspyre##922 |goto Darnassus 38.18,21.64 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Teldrassil##940 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  only Warrior not completed(1639) not completed(1678) not haveq(1639) not haveq(1678)
  talk Elanaria##4088
  accept Vorlus Vilehoof##1683 |goto Darnassus 57.3,34.61
step
  only Rogue
  talk Syurna##4163
  accept Destiny Calls##2242 |goto Darnassus 36.99,21.91
step
  talk Priestess A'moora##7313
  accept Tears of the Moon##2518 |goto Darnassus 36.65,85.93
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept Moonglade##5921 |goto Darnassus 35.37,8.4
step
  only NightElf
  talk Nessa Shadowsong##10118
  accept The Bounty of Teldrassil##6341 |goto Teldrassil 56.26,92.44
step
  only Warrior not completed(1639) not completed(1678) not haveq(1639) not haveq(1678)
  note Bring the Horn of Vorlus to Elanaria in Darnassus.
  collect Horn of Vorlus##6805 |q 1683 |goto Teldrassil 47.25,63.6 |tip {dropsfrom}Vorlus Vilehoof
step
  only Rogue
  note Find Sethir the Ancient and bring back any clues that you may discover to Syurna.
  collect Sethir's Journal##7737 |q 2242 |goto Teldrassil 37.11,22.83 |tip {dropsfrom}Sethir the Ancient
step
  note Priestess A'moora in the Temple of the Moon at Darnassus wants you to bring her Lady Sathrah's Silvery Spinnerets.
  collect Silvery Spinnerets##8344 |q 2518 |goto Teldrassil 42,25.4 |tip {dropsfrom}Lady Sathrah
step
  only Warrior not completed(1639) not completed(1678) not haveq(1639) not haveq(1678)
  talk Elanaria##4088
  turnin Vorlus Vilehoof##1683 |goto Darnassus 57.3,34.61 |tip {turninat}Darnassus
step
  only Rogue
  talk Syurna##4163
  turnin Destiny Calls##2242 |goto Darnassus 36.99,21.91 |tip {turninat}Darnassus
step
  talk Priestess A'moora##7313
  turnin Tears of the Moon##2518 |goto Darnassus 36.65,85.93 |tip {turninat}Darnassus
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5921 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  only NightElf
  talk Vesprystus##3838
  turnin The Bounty of Teldrassil##6341 |goto Teldrassil 58.4,94.02
step
  talk Rellian Greenspyre##3517
  accept Tumors##923 |goto Darnassus 38.18,21.64
step
  talk Priestess A'moora##7313
  accept Sathrah's Sacrifice##2520 |goto Darnassus 36.65,85.93
step
  only NightElf
  talk Vesprystus##3838
  accept Flight to Auberdine##6342 |goto Teldrassil 58.4,94.02
step
  note Bring 5 Mossy Tumors to Rellian Greenspyre in Darnassus.
  collect 5 Mossy Tumor##5170 |q 923 |goto Teldrassil 43.91,42.69 |tip {dropsfrom}Timberling Trampler, Timberling Mire Beast, Elder Timberling
step
  note Priestess A'moora wants you to place Lady Sathrah's silvery spinnerets at the fountain inside the temple, and then return to her.
  collect Temple of the Moon Fountain##138498 |q 2520 |goto Darnassus 39.18,85.59
step
  talk Rellian Greenspyre##3517
  turnin Tumors##923 |goto Darnassus 38.18,21.64 |tip {turninat}Darnassus
step
  talk Priestess A'moora##7313
  turnin Sathrah's Sacrifice##2520 |goto Darnassus 36.65,85.93 |tip {turninat}Darnassus
step
  only NightElf
  talk Laird##4200
  turnin Flight to Auberdine##6342 |goto Darkshore 36.77,44.28 |tip {turninat}Darkshore
step
  talk Rellian Greenspyre##3517
  accept Return to Denalan##2498 |goto Darnassus 38.18,21.64
step
  talk Denalan##2080
  turnin Return to Denalan##2498 |goto Teldrassil 60.9,68.49
step
  only NightElf Hunter
  talk Jocaste##4146
  turnin Training the Beast##6103 |goto Darnassus 40.38,8.55 |tip {turninat}Darnassus
step
  talk Denalan##2080
  accept Oakenscowl##2499 |goto Teldrassil 60.9,68.49
step
  note Denalan at Lake Al'Ameth wants you to collect the Gargantuan Tumor from Oakenscowl.
  kill Oakenscowl##2166 |goto Teldrassil 53.76,75.12 |elite
  collect Gargantuan Tumor##8136 |q 2499 |goto Teldrassil 53.76,75.12
step
  talk Denalan##2080
  turnin Oakenscowl##2499 |goto Teldrassil 60.9,68.49
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Crown of the Earth##935 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  note {travel}Darkshore
  goto Darkshore 36.97,44.13
]])
