-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Teldrassil (4-12)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Azuremyst Isle (2-10)",
}, [[
step
  note {fp}Vesprystus
  goto Teldrassil 58.4,94.02 |tip {vendor}
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  talk Melithar Staghelm##2077
  accept The Woodland Protector##458 |goto Teldrassil 59.92,42.47
step
  talk Gilshalan Windwalker##2082
  accept Webwood Venom##916 |goto Teldrassil 57.81,41.65
step
  note Bring 10 Webwood Venom Sacs to Gilshalan Windwalker at Aldrassil.
  collect 10 Webwood Venom Sac##5166 |q 916 |goto Teldrassil 56.8,28.42 |tip {dropsfrom}Webwood Spider
step
  talk Porthannius##6780
  accept Dolanaar Delivery##2159 |goto Teldrassil 61.16,47.64
step
  talk Dirania Silvershine##8583
  accept A Good Friend##4495 |goto Teldrassil 60.9,41.96
step
  only NightElf Priest
  talk Shanda##3595
  accept In Favor of Elune##5622 |goto Teldrassil 59.17,40.44
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  kill Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  talk Iverron##8584
  turnin A Good Friend##4495 |goto Teldrassil 54.59,32.99
step
  talk Iverron##8584
  accept A Friend in Need##3519 |goto Teldrassil 54.59,32.99
step
  kill Blackmoss the Fetid##3535 |goto Teldrassil 43.97,30.22 |tip Loot the quest item here — it starts the quest.
  accept The Moss-twined Heart##927 |goto Teldrassil 43.97,30.22
step
  click Strange Fronded Plant##6752
  accept The Shimmering Frond##931 |goto Teldrassil 34.61,28.76
step
  talk Sentinel Arynia Cloudsbreak##3519
  accept The Enchanted Glade##937 |goto Teldrassil 38.32,34.36
step
  note Acquire 6 Bloodfeather Belts and bring them to Sentinel Arynia Cloudsbreak in the Oracle Glade.
  collect 6 Bloodfeather Belt##5204 |q 937 |goto Teldrassil 37.21,40.54 |tip {dropsfrom}Bloodfeather Harpy, Bloodfeather Rogue, Bloodfeather Sorceress
step
  click Strange Fruited Plant##6751
  accept The Glowing Fruit##930 |goto Teldrassil 42.61,76.19
step
  talk Oben Rageclaw##7317
  accept The Sleeping Druid##2541 |goto Teldrassil 44.94,61.59
step
  note Bring a Shaman Voodoo Charm to Oben Rageclaw in the Ban'ethil Barrow Den.
  collect Shaman Voodoo Charm##8363 |q 2541 |goto Teldrassil 45.23,61.24 |tip {dropsfrom}Gnarlpine Shaman
step
  talk Innkeeper Keldamyr##6736
  turnin Dolanaar Delivery##2159 |goto Teldrassil 55.62,59.79
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  turnin In Favor of Elune##5622 |goto Teldrassil 55.56,56.75
step
  talk Athridas Bearmantle##2078
  accept A Troubling Breeze##475 |goto Teldrassil 55.96,57.27
step
  talk Moon Priestess Amara##2151
  accept The Road to Darnassus##487 |goto Teldrassil 54.63,58.46
step
  talk Zenn Foulhoof##2150
  accept Zenn's Bidding##488 |goto Teldrassil 60.46,56.3
step
  note Bring Zenn Foulhoof outside of Dolanaar 3 Nightsaber Fangs, 3 Strigid Owl Feathers and 3 swatches of Webwood Spider Silk.
  collect Nightsaber Fang##3409 |q 488 |goto Teldrassil 45.13,37.67 |tip {dropsfrom}Elder Nightsaber, Feral Nightsaber, Nightsaber
step
  talk Tallonkai Swiftroot##3567
  accept Twisted Hatred##932 |goto Teldrassil 55.57,56.95
step
  note Kill Lord Melenas and bring his head to Tallonkai Swiftroot in Dolanaar.
  collect Melenas' Head##5221 |q 932 |goto Teldrassil 51.31,50.21 |tip {dropsfrom}Lord Melenas
step
  talk Syral Bladeleaf##2083
  accept Denalan's Earth##997 |goto Teldrassil 56.08,57.72
step
  talk Syral Bladeleaf##2083
  accept Elixirs for the Bladeleafs##1581 |goto Teldrassil 56.08,57.72
step
  note Bring 6 Elixirs of Lion's Strength and 2 Elixirs of Minor Defense to Syral Bladeleaf in Dolanaar.
  collect 6 Elixir of Lion's Strength##2454 |q 1581 |goto Teldrassil 56.08,57.72
step
  only Rogue
  talk Jannok Breezesong##3599
  accept The Apple Falls##2241 |goto Teldrassil 56.38,60.14
step
  talk Tallonkai Swiftroot##3567
  accept The Emerald Dreamcatcher##2438 |goto Teldrassil 55.57,56.95
step
  note Bring the Emerald Dreamcatcher to Tallonkai Swiftroot in Dolanaar.
  collect Emerald Dreamcatcher##8048 |q 2438 |goto Teldrassil 68.02,59.65 |tip {dropsfrom}Tallonkai's Dresser
step
  talk Zarrin##6286
  accept Recipe of the Kaldorei##4161 |goto Teldrassil 57.12,61.3
step
  note Collect 7 Small Spider Legs for Zarrin in Dolanaar.
  collect 7 Small Spider Leg##5465 |q 4161 |goto Elwynn Forest 38.2,71.23 |tip {dropsfrom}Forest Spider, Mine Spider, Mother Fang
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  accept Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  accept Returning Home##5629 |goto Teldrassil 55.56,56.75
step
  only Priest
  talk Laurna Morninglight##3600
  accept Desperate Prayer##5636 |goto Teldrassil 55.56,56.75
step
  talk Gaerolas Talvethren##2107
  turnin A Troubling Breeze##475 |goto Teldrassil 66.26,58.52
step
  talk Gaerolas Talvethren##2107
  accept Gnarlpine Corruption##476 |goto Teldrassil 66.26,58.52
step
  talk Denalan##2080
  turnin The Moss-twined Heart##927 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  turnin The Glowing Fruit##930 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  turnin The Shimmering Frond##931 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  turnin Denalan's Earth##997 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  accept Timberling Seeds##918 |goto Teldrassil 60.9,68.49
step
  note Bring 8 Timberling Seeds to Denelan at Lake Al'Ameth.
  collect 8 Timberling Seed##5168 |q 918 |goto Teldrassil 59.67,66.39 |tip {dropsfrom}Timberling, Timberling Bark Ripper, Timberling Trampler
step
  talk Denalan##2080
  accept Timberling Sprouts##919 |goto Teldrassil 60.9,68.49
step
  note Bring 12 Timberling Sprouts to Denalan at Lake Al'Ameth.
  collect 12 Timberling Sprout##5169 |q 919 |goto Teldrassil 57.32,69.93
step
  talk Denalan##2080
  accept Planting the Heart##941 |goto Teldrassil 60.9,68.49
step
  click Sprouted Frond##7510
  accept The Sprouted Fronds##2399 |goto Teldrassil 60.78,68.59
step
  talk Denalan##2080
  accept Oakenscowl##2499 |goto Teldrassil 60.9,68.49
step
  note Denalan at Lake Al'Ameth wants you to collect the Gargantuan Tumor from Oakenscowl.
  collect Gargantuan Tumor##8136 |q 2499 |goto Teldrassil 53.76,75.12 |tip {dropsfrom}Oakenscowl
step
  only NightElf Priest
  note Find Sentinel Shaya and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude and then return to Laurna Morninglight in Dolanaar.
  kill Sentinel Shaya##12429 |q 5621 |goto Teldrassil 57.24,63.51
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5629 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  click Feralas: A History##142958
  accept Feralas: A History##2940 |goto Teldrassil 55.22,91.46
step
  talk Daryn Lightwind##7907
  accept Return to Troyas##2943 |goto Teldrassil 55.41,92.23
step
  talk Erelas Ambersky##7916
  accept Favored of Elune?##3661 |goto Teldrassil 55.5,92.05
step
  note Collect 15 Wildkin Feathers from the Hinterlands for Erelas Ambersky in Rut'theran Village.
  collect 15 Wildkin Feather##10819 |q 3661 |goto The Hinterlands 34.07,52.92
step
  only NightElf
  talk Nessa Shadowsong##10118
  accept The Bounty of Teldrassil##6341 |goto Teldrassil 56.26,92.44
step
  talk Gilshalan Windwalker##2082
  turnin Webwood Venom##916 |goto Teldrassil 57.81,41.65
step
  talk Dirania Silvershine##8583
  turnin A Friend in Need##3519 |goto Teldrassil 60.9,41.96
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  talk Tarindrella##1992
  turnin The Woodland Protector##458 |goto Teldrassil 57.83,45.21
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##457 |goto Teldrassil 58.69,44.27
step
  talk Tarindrella##1992
  accept The Woodland Protector##459 |goto Teldrassil 57.83,45.21
step
  note Collect 8 Fel Moss and bring them to Tarindrella.
  collect 8 Fel Moss##3297 |q 459 |goto Teldrassil 55.97,45.81 |tip {dropsfrom}Grell, Grellkin
step
  talk Gilshalan Windwalker##2082
  accept Webwood Egg##917 |goto Teldrassil 57.81,41.65
step
  note Bring a Webwood Egg to Gilshalan in Aldrassil.
  collect Webwood Egg##5167 |q 917 |goto Teldrassil 56.8,26.49 |tip {dropsfrom}Webwood Eggs
step
  only Warrior
  talk Conservator Ilthalaine##2079
  accept Simple Sigil##3116 |goto Teldrassil 58.69,44.27
step
  only Hunter
  talk Conservator Ilthalaine##2079
  accept Etched Sigil##3117 |goto Teldrassil 58.69,44.27
step
  only Rogue
  talk Conservator Ilthalaine##2079
  accept Encrypted Sigil##3118 |goto Teldrassil 58.69,44.27
step
  only Priest
  talk Conservator Ilthalaine##2079
  accept Hallowed Sigil##3119 |goto Teldrassil 58.69,44.27
step
  only Druid
  talk Conservator Ilthalaine##2079
  accept Verdant Sigil##3120 |goto Teldrassil 58.69,44.27
step
  talk Dirania Silvershine##8583
  accept Iverron's Antidote##3521 |goto Teldrassil 60.9,41.96
step
  note Collect 7 Hyacinth Mushrooms, 4 Moonpetal Lilies, and 1 Webwood Ichor for Dirania Silveshine in Shadowglen.
  collect 7 Hyacinth Mushroom##10639 |q 3521 |goto Teldrassil 54.67,39.33 |tip {dropsfrom}Grellkin, Hyacinth Mushroom
step
  note Conservator Ilthalaine needs you to kill 7 Mangy Nightsabers and 7 Thistle Boars.
  kill Mangy Nightsaber##2032 |q 457 |goto Teldrassil 61.73,36.12
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5636 |goto Stormwind City 38.58,26.06 |tip {turninat}Stormwind City
step
  talk Sentinel Arynia Cloudsbreak##3519
  turnin The Enchanted Glade##937 |goto Teldrassil 38.32,34.36
step
  only Rogue
  talk Syurna##4163
  turnin The Apple Falls##2241 |goto Darnassus 36.99,21.91 |tip {turninat}Darnassus
step
  talk Troyas Moonbreeze##7764
  turnin Return to Troyas##2943 |goto Feralas 31.78,45.5 |tip {turninat}Feralas
step
  talk Sentinel Arynia Cloudsbreak##3519
  accept Teldrassil##940 |goto Teldrassil 38.32,34.36
step
  talk Oben Rageclaw##7317
  turnin The Sleeping Druid##2541 |goto Teldrassil 44.94,61.59
step
  note Slay 6 Gnarlpine Ambushers and return to Sentinel Amara Nightwalker outside of Dolanaar.
  kill Gnarlpine Ambusher##2152 |q 487 |goto Teldrassil 46.3,53.42
step
  talk Tallonkai Swiftroot##3567
  turnin The Emerald Dreamcatcher##2438 |goto Teldrassil 55.57,56.95
step
  talk Tallonkai Swiftroot##3567
  turnin Twisted Hatred##932 |goto Teldrassil 55.57,56.95
step
  talk Syral Bladeleaf##2083
  turnin Elixirs for the Bladeleafs##1581 |goto Teldrassil 56.08,57.72
step
  talk Zarrin##6286
  turnin Recipe of the Kaldorei##4161 |goto Teldrassil 57.12,61.3
step
  talk Athridas Bearmantle##2078
  turnin Gnarlpine Corruption##476 |goto Teldrassil 55.96,57.27
step
  talk Moon Priestess Amara##2151
  turnin The Road to Darnassus##487 |goto Teldrassil 54.63,58.46
step
  talk Zenn Foulhoof##2150
  turnin Zenn's Bidding##488 |goto Teldrassil 60.46,56.3
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  turnin Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
step
  talk Athridas Bearmantle##2078
  accept The Relics of Wakening##483 |goto Teldrassil 55.96,57.27
step
  note Retrieve the Relics of Wakening and bring them to Athridas Bearmantle in Dolanaar.
  collect Raven Claw Talisman##3405 |q 483 |goto Teldrassil 45.65,57.44 |tip {dropsfrom}Chest of the Raven Claw
step
  talk Syral Bladeleaf##2083
  accept Seek Redemption!##489 |goto Teldrassil 56.08,57.72
step
  note Collect 3 Fel Cones and give them to Zenn Foulhoof outside of Dolanaar.
  collect 3 Fel Cone##3418 |q 489 |goto Teldrassil 53.68,62.92
step
  only Rogue
  talk Jannok Breezesong##3599
  accept Erion Shadewhisper##2259 |goto Teldrassil 56.38,60.14
step
  talk Tallonkai Swiftroot##3567
  accept Ferocitas the Dream Eater##2459 |goto Teldrassil 55.57,56.95
step
  note Tallonkai Swiftroot in Dolanaar wants you to kill 7 Gnarlpine Mystics and find the Missing Jewel.
  kill Gnarlpine Mystic##7235 |q 2459 |goto Teldrassil 68.64,52.35
step
  talk Denalan##2080
  turnin Timberling Seeds##918 |goto Teldrassil 60.9,68.49
step
  talk Denalan##2080
  turnin Timberling Sprouts##919 |goto Teldrassil 60.9,68.49
step
  turnin Planting the Heart##941 |goto Teldrassil 60.77,68.63
step
  talk Denalan##2080
  turnin Oakenscowl##2499 |goto Teldrassil 60.9,68.49
step
  turnin The Sprouted Fronds##2399 |goto Teldrassil 60.78,68.59
step
  talk Denalan##2080
  accept Rellian Greenspyre##922 |goto Teldrassil 60.9,68.49
step
  only NightElf
  talk Vesprystus##3838
  turnin The Bounty of Teldrassil##6341 |goto Teldrassil 58.4,94.02
step
  talk Erelas Ambersky##7916
  turnin Favored of Elune?##3661 |goto Teldrassil 55.5,92.05
step
  talk Daryn Lightwind##7907
  turnin Feralas: A History##2940 |goto Teldrassil 55.41,92.23
step
  talk Daryn Lightwind##7907
  accept The Borrower##2941 |goto Teldrassil 55.41,92.23
step
  only NightElf
  talk Vesprystus##3838
  accept Flight to Auberdine##6342 |goto Teldrassil 58.4,94.02
step
  talk Gilshalan Windwalker##2082
  turnin Webwood Egg##917 |goto Teldrassil 57.81,41.65
step
  only Warrior
  talk Alyissia##3593
  turnin Simple Sigil##3116 |goto Teldrassil 59.64,38.44
step
  only Hunter
  talk Ayanna Everstride##3596
  turnin Etched Sigil##3117 |goto Teldrassil 58.66,40.45
step
  only Rogue
  talk Frahun Shadewhisper##3594
  turnin Encrypted Sigil##3118 |goto Teldrassil 59.64,38.66
step
  only Priest
  talk Shanda##3595
  turnin Hallowed Sigil##3119 |goto Teldrassil 59.17,40.44
step
  only Druid
  talk Mardant Strongoak##3597
  turnin Verdant Sigil##3120 |goto Teldrassil 58.63,40.29
step
  talk Dirania Silvershine##8583
  turnin Iverron's Antidote##3521 |goto Teldrassil 60.9,41.96
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##457 |goto Teldrassil 58.69,44.27
step
  talk Tarindrella##1992
  turnin The Woodland Protector##459 |goto Teldrassil 57.83,45.21
step
  talk Gilshalan Windwalker##2082
  accept Tenaron's Summons##920 |goto Teldrassil 57.81,41.65
step
  talk Dirania Silvershine##8583
  accept Iverron's Antidote##3522 |goto Teldrassil 60.9,41.96
step
  talk Iverron##8584
  turnin Iverron's Antidote##3522 |goto Teldrassil 54.59,32.99
step
  talk Curgle Cranklehop##7763
  turnin The Borrower##2941 |goto Tanaris 52.36,26.91 |tip {turninat}Tanaris
step
  talk Rellian Greenspyre##3517
  turnin Rellian Greenspyre##922 |goto Darnassus 38.18,21.64 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Teldrassil##940 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  only NightElf
  talk Laird##4200
  turnin Flight to Auberdine##6342 |goto Darkshore 36.77,44.28 |tip {turninat}Darkshore
step
  only Rogue
  talk Erion Shadewhisper##4214
  turnin Erion Shadewhisper##2259 |goto Darnassus 34.52,25.93 |tip {turninat}Darnassus
step
  talk Tallonkai Swiftroot##3567
  turnin Ferocitas the Dream Eater##2459 |goto Teldrassil 55.57,56.95
step
  talk Athridas Bearmantle##2078
  turnin The Relics of Wakening##483 |goto Teldrassil 55.96,57.27
step
  talk Zenn Foulhoof##2150
  turnin Seek Redemption!##489 |goto Teldrassil 60.46,56.3
step
  talk Athridas Bearmantle##2078
  accept Ursal the Mauler##486 |goto Teldrassil 55.96,57.27
step
  talk Tenaron Stormgrip##3514
  turnin Tenaron's Summons##920 |goto Teldrassil 59.06,39.45
step
  talk Tenaron Stormgrip##3514
  accept Crown of the Earth##921 |goto Teldrassil 59.06,39.45
step
  note Fill the Crystal Phial and bring it back to Tenaron Stormgrip atop Aldrassil.
  collect Filled Crystal Phial##5184 |q 921 |goto Teldrassil 59.06,39.45
step
  note Kill Ursal the Mauler and return to Athridas Bearmantle in Dolanaar.
  kill Ursal the Mauler##2039 |q 486 |goto Teldrassil 38.83,79.81
step
  talk Athridas Bearmantle##2078
  turnin Ursal the Mauler##486 |goto Teldrassil 55.96,57.27
step
  talk Tenaron Stormgrip##3514
  turnin Crown of the Earth##921 |goto Teldrassil 59.06,39.45
step
  talk Tenaron Stormgrip##3514
  accept Crown of the Earth##928 |goto Teldrassil 59.06,39.45
step
  talk Corithras Moonrage##3515
  turnin Crown of the Earth##928 |goto Teldrassil 56.14,61.71
step
  talk Corithras Moonrage##3515
  accept Crown of the Earth##929 |goto Teldrassil 56.14,61.71
step
  note Fill the Jade Phial and bring it back to Corithras Moonrage in Dolanaar.
  collect Filled Jade Phial##5639 |q 929 |goto Teldrassil 56.14,61.71
step
  talk Corithras Moonrage##3515
  turnin Crown of the Earth##929 |goto Teldrassil 56.14,61.71
step
  talk Corithras Moonrage##3515
  accept Crown of the Earth##933 |goto Teldrassil 56.14,61.71
step
  note Fill the Tourmaline Phial and bring it back to Corithras Moonrage in Dolanaar.
  collect Filled Tourmaline Phial##5645 |q 933 |goto Teldrassil 56.14,61.71
step
  talk Corithras Moonrage##3515
  turnin Crown of the Earth##933 |goto Teldrassil 56.14,61.71
step
  talk Corithras Moonrage##3515
  accept Crown of the Earth##7383 |goto Teldrassil 56.14,61.71
step
  note Fill the Amethyst Phial and bring it back to Corithras Moonrage in Dolanaar.
  collect Filled Amethyst Phial##18151 |q 7383 |goto Teldrassil 56.14,61.71
step
  talk Corithras Moonrage##3515
  turnin Crown of the Earth##7383 |goto Teldrassil 56.14,61.71
step
  talk Corithras Moonrage##3515
  accept Crown of the Earth##935 |goto Teldrassil 56.14,61.71
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Crown of the Earth##935 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  note {travel}Azuremyst Isle
  goto Azuremyst Isle 82.91,43.97
]])
