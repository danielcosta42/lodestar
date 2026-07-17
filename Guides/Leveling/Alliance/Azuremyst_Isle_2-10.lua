-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Azuremyst Isle (2-10)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Westfall (12-44)",
}, [[
step
  only Human
  talk Osric Strang##1323
  accept Dungar Longdrink##6261 |goto Stormwind City 74.31,47.24
step
  only Draenei
  talk Megelon##16475
  accept You Survived!##9279 |goto Azuremyst Isle 82.91,43.97
step
  only Draenei Paladin
  talk Aurelon##16501
  accept Paladin Training##9287 |goto Azuremyst Isle 79.69,48.24
step
  only Draenei Hunter
  talk Keilnei##16499
  accept Hunter Training##9288 |goto Azuremyst Isle 79.89,49.71
step
  only Draenei Warrior
  talk Kore##16503
  accept Warrior Training##9289 |goto Azuremyst Isle 79.59,49.45
step
  only Draenei Mage
  talk Valaatu##16500
  accept Mage Training##9290 |goto Azuremyst Isle 79.58,48.76
step
  only Draenei Priest
  talk Zalduun##16502
  accept Priest Training##9291 |goto Azuremyst Isle 80.13,48.89
step
  talk Vindicator Aldar##16535
  accept Inoculation##9303 |goto Azuremyst Isle 79.49,51.62
step
  note Use the Inoculating Crystal on 6 Nestlewood Owlkin. Then return to Vindicator Aldar at the Crash Site in Ammen Vale.
  use Inoculated Nestlewood Owlkin##16534 |q 9303 |tip {useit}
step
  talk Technician Zhanaa##17071
  accept Spare Parts##9305 |goto Azuremyst Isle 79.42,51.23
step
  note Collect 4 Emitter Spare Parts and then return to Technician Zhanaa at the Crash Site in Ammen Vale.
  collect 4 Emitter Spare Part##22978 |q 9305 |goto Azuremyst Isle 85.17,65.14
step
  talk Proenitus##16477
  accept Replenishing the Healing Crystals##9369 |goto Azuremyst Isle 80.42,45.89
step
  note Acquire 8 Vials of Moth Blood from the nearby Vale Moths and bring them to Proenitus at the Crash Site in Ammen Vale.
  collect 8 Vial of Moth Blood##22889 |q 9369 |goto Azuremyst Isle 76.38,45.03 |tip {dropsfrom}Vale Moth
step
  only Shaman
  talk Firmanvaar##17089
  accept Shaman Training##9421 |goto Azuremyst Isle 79.28,49.12
step
  only Human
  talk Dungar Longdrink##352
  turnin Dungar Longdrink##6261 |goto Stormwind City 66.27,62.13 |tip {turninat}Stormwind City
step
  only Human Rogue
  talk Master Mathias Shaw##332
  accept Snatch and Grab##2206 |goto Stormwind City 75.78,59.84
step
  only Human Rogue
  note Find the Defias Dockmaster and recover the Shipping Schedule for Master Mathias Shaw.
  collect Defias Shipping Schedule##7675 |q 2206 |goto Elwynn Forest 48.06,86.96 |tip {dropsfrom}Defias Dockmaster
step
  only Human
  talk Dungar Longdrink##352
  accept Return to Lewis##6285 |goto Stormwind City 66.27,62.13
step
  kill Surveyor Candress##16522 |goto Azuremyst Isle 69.27,65.78 |tip Loot the quest item here — it starts the quest.
  accept Blood Elf Plans##9798 |goto Azuremyst Isle 69.27,65.78
step
  talk Aeun##16554
  accept Word from Azure Watch##9314 |goto Azuremyst Isle 64.49,54.04
step
  talk Diktynna##17101
  accept Red Snapper - Very Tasty!##9452 |goto Azuremyst Isle 61.05,54.25
step
  note Use the Draenei Fishing Net to catch 10 Red Snappers. Return both the fish and the net to Diktynna on Azuremyst Isle when the task is complete.
  collect Red Snapper##23614 |q 9452 |goto Azuremyst Isle 61.05,54.25 |tip {dropsfrom}Angry Murloc
step
  only Draenei
  talk Nurguni##16768
  accept Hippogryph Master Stephanos##9605 |goto The Exodar 57.02,50.08
step
  talk Caregiver Chellan##16553
  turnin Word from Azure Watch##9314 |goto Azuremyst Isle 48.37,49.2
step
  kill Infected Nightstalker Runt##17202 |goto Azuremyst Isle 41.05,47.95 |tip Loot the quest item here — it starts the quest.
  accept Strange Findings##9455 |goto Azuremyst Isle 41.05,47.95
step
  only Draenei
  talk Anchorite Fateema##17214
  accept Medicinal Purpose##9463 |goto Azuremyst Isle 48.39,51.77
step
  only Draenei
  note Anchorite Fateema at Azure Watch wants you to bring her 8 Root Trapper Vines.
  collect Root Trapper Vine##23685 |q 9463 |goto Azuremyst Isle 46.23,59.12 |tip {dropsfrom}Root Trapper
step
  talk Cryptographer Aurren##17232
  accept Learning the Language##9538 |goto Azuremyst Isle 49.38,50.96
step
  only Warrior
  talk Ruada##17480
  accept Strength of One##9582 |goto Azuremyst Isle 50.02,50.52
step
  only Priest
  talk Guvan##17482
  accept Help Tavara##9586 |goto Azuremyst Isle 48.6,49.29
step
  talk Exarch Menelaous##17116
  accept Coming of Age##9623 |goto Azuremyst Isle 47.11,50.6
step
  talk Dulvi##17488
  accept The Missing Fisherman##10428 |goto Azuremyst Isle 48.96,51.06
step
  only Draenei
  talk Draenei Youngling##17587
  accept A Hearty Thanks!##9612 |goto Azuremyst Isle 41.86,57.94
step
  only Human Mage
  talk Jennea Cannon##5497
  accept Mirror Lake##1861 |goto Stormwind City 38.62,79.3
step
  only Human Mage
  note Bring a Mirror Lake sample to Jennea Cannon in Stormwind.
  collect Mirror Lake Water Sample##7206 |q 1861 |goto Stormwind City 38.62,79.3
step
  talk Admiral Odesyus##17240
  accept A Small Start##9506 |goto Azuremyst Isle 47.04,70.21
step
  note Admiral Odesyus at Odesyus' Landing wants you to recover the Nautical Compass and Nautical Map stolen by the Venture Co.
  collect Nautical Compass##23738 |q 9506 |goto Azuremyst Isle 59.58,67.65
step
  talk "Cookie" McWeaksauce##17246
  accept Cookie's Jumbo Gumbo##9512 |goto Azuremyst Isle 46.69,70.62
step
  note "Cookie" McWeaksauce at the Odesyus' Landing wants you to bring him 6 Skittering Crawler Meat.
  collect Skittering Crawler Meat##23757 |q 9512 |goto Azuremyst Isle 54.52,69.82 |tip {dropsfrom}Skittering Crawler, Barbed Crawler
step
  talk Sister Aquinne##7316
  accept The Temple of the Moon##2519 |goto Darnassus 28.94,45.8
step
  only NightElf Priest
  talk Nara Meideros##11397
  accept Returning Home##5632 |goto Stormwind City 20.68,50.07
step
  only Priest
  talk Nara Meideros##11397
  accept Desperate Prayer##5638 |goto Stormwind City 20.68,50.07
step
  kill Wrathscale Naga##17193 |goto Azuremyst Isle 30.52,79.16 |tip Loot the quest item here — it starts the quest.
  accept Rune Covered Tablet##9514 |goto Azuremyst Isle 30.52,79.16
step
  only Human
  talk Quartermaster Lewis##491
  turnin Return to Lewis##6285 |goto Westfall 57.0,47.17 |tip {turninat}Westfall
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Elanaria##4088
  accept The Shade of Elura##1686 |goto Darnassus 57.3,34.61
step
  only Warrior
  note Bring 8 loads of Elunite Ore and the Medallion of Elura to Elanaria in Darnassus.
  collect 8 Elunite Ore##6808 |q 1686 |goto Darkshore 32.47,44.42 |tip {dropsfrom}Crate of Elunite
step
  only Warrior
  talk Harry Burlguard##6089
  accept Marshal Haggard##1666 |goto Stormwind City 74.26,37.25
step
  only NightElf
  talk Mydrannul##4241
  accept Nessa Shadowsong##6344 |goto Darnassus 70.68,45.38
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5638 |goto Stormwind City 38.58,26.06 |tip {turninat}Stormwind City
step
  talk Rellian Greenspyre##3517
  accept Tumors##923 |goto Darnassus 38.18,21.64
step
  note Bring 5 Mossy Tumors to Rellian Greenspyre in Darnassus.
  collect 5 Tumors##5170 |q 923 |goto Darnassus 38.18,21.64
step
  only Mage
  talk Bink##5144
  accept Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3
step
  only Mage
  note Bring Bink her Mage-tastic Gizmonitor.
  collect Mage-tastic Gizmonitor##7226 |q 1880 |goto Dun Morogh 27.72,36.42 |tip {dropsfrom}Bink's Toolbox
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Simple Subterfugin'##2238 |goto Ironforge 51.96,14.84
step
  only Rogue
  talk Syurna##4163
  accept Destiny Calls##2242 |goto Darnassus 36.99,21.91
step
  only Rogue
  note Find Sethir the Ancient and bring back any clues that you may discover to Syurna.
  collect Sethir's Journal##7737 |q 2242 |goto Darnassus 36.99,21.91
step
  only NightElf Priest
  talk Brother Joshua##5489
  accept Returning Home##5631 |goto Stormwind City 38.54,26.85
step
  only NightElf Priest
  talk Braenna Flintcrag##5142
  accept Returning Home##5633 |goto Ironforge 24.42,9.17
step
  only Priest
  talk High Priestess Laurena##376
  accept Desperate Prayer##5634 |goto Stormwind City 38.58,26.06
step
  only Priest
  talk High Priest Rohan##11406
  accept Desperate Prayer##5639 |goto Ironforge 24.73,8.16
step
  talk Golnir Bouldertoe##4256
  accept Gryth Thurden##6388 |goto Ironforge 51.52,26.31
step
  kill Blood Elf Bandit##17591 |goto Azuremyst Isle 43.08,29.18 |tip Loot the quest item here — it starts the quest.
  accept Bandits!##9616 |goto Azuremyst Isle 43.08,29.18
step
  only Priest
  talk Aelthalyste##4606
  accept Touch of Weakness##10379 |goto Undercity 49.26,17.12
step
  only Warrior
  note Unlock the Ravager Cage and kill the Death Ravager, then return to Ruada at Azure Watch in Azuremyst.
  kill Death Ravager##17556 |q 9582 |goto Azuremyst Isle 54.03,9.95
step
  talk Torallius the Pack Handler##17584
  turnin Coming of Age##9623 |goto The Exodar 81.49,51.44 |tip {turninat}The Exodar
step
  talk Proenitus##16477
  turnin Replenishing the Healing Crystals##9369 |goto Azuremyst Isle 80.42,45.89
step
  only Draenei
  talk Proenitus##16477
  turnin You Survived!##9279 |goto Azuremyst Isle 80.42,45.89
step
  talk Vindicator Aldar##16535
  turnin Blood Elf Plans##9798 |goto Azuremyst Isle 79.49,51.62
step
  only Draenei Paladin
  talk Aurelon##16501
  turnin Paladin Training##9287 |goto Azuremyst Isle 79.69,48.24
step
  only Draenei Hunter
  talk Keilnei##16499
  turnin Hunter Training##9288 |goto Azuremyst Isle 79.89,49.71
step
  only Draenei Warrior
  talk Kore##16503
  turnin Warrior Training##9289 |goto Azuremyst Isle 79.59,49.45
step
  only Draenei Mage
  talk Valaatu##16500
  turnin Mage Training##9290 |goto Azuremyst Isle 79.58,48.76
step
  only Draenei Priest
  talk Zalduun##16502
  turnin Priest Training##9291 |goto Azuremyst Isle 80.13,48.89
step
  only Shaman
  talk Firmanvaar##17089
  turnin Shaman Training##9421 |goto Azuremyst Isle 79.28,49.12
step
  talk Vindicator Aldar##16535
  turnin Inoculation##9303 |goto Azuremyst Isle 79.49,51.62
step
  talk Technician Zhanaa##17071
  turnin Spare Parts##9305 |goto Azuremyst Isle 79.42,51.23
step
  only Draenei
  talk Proenitus##16477
  accept Replenishing the Healing Crystals##9280 |goto Azuremyst Isle 80.42,45.89
step
  only Draenei
  note Acquire 8 Vials of Moth Blood from the nearby Vale Moths and give them to Proenitus at the Crash Site in Ammen Vale.
  collect 8 Vial of Moth Blood##22889 |q 9280 |goto Azuremyst Isle 76.38,45.03 |tip {dropsfrom}Vale Moth
step
  talk Vindicator Aldar##16535
  accept The Missing Scout##9309 |goto Azuremyst Isle 79.49,51.62
step
  talk Proenitus##16477
  accept Urgent Delivery!##9409 |goto Azuremyst Isle 80.42,45.89
step
  only Warrior
  talk Marshal Haggard##294
  turnin Marshal Haggard##1666 |goto Elwynn Forest 84.61,69.38 |tip {turninat}Elwynn Forest
step
  only Draenei
  talk Stephanos##17555
  turnin Hippogryph Master Stephanos##9605 |goto The Exodar 68.34,63.5 |tip {turninat}The Exodar
step
  only Human Rogue
  talk Master Mathias Shaw##332
  turnin Snatch and Grab##2206 |goto Stormwind City 75.78,59.84 |tip {turninat}Stormwind City
step
  talk Tolaan##16546
  turnin The Missing Scout##9309 |goto Azuremyst Isle 72.0,60.85
step
  only Draenei
  talk Stephanos##17555
  accept Return to Topher Loaal##9606 |goto The Exodar 68.34,63.5
step
  talk Tolaan##16546
  accept The Blood Elves##10303 |goto Azuremyst Isle 72.0,60.85
step
  note Kill 10 Blood Elf Scouts then return to Tolaan in the Shadow Ridge of Ammen Vale.
  kill Blood Elf Scout##16521 |q 10303 |goto Azuremyst Isle 69.9,63.24
step
  only Draenei
  talk Caregiver Topher Loaal##17553
  turnin Return to Topher Loaal##9606 |goto Bloodmyst Isle 55.85,59.81 |tip {turninat}Bloodmyst Isle
step
  talk Diktynna##17101
  turnin Red Snapper - Very Tasty!##9452 |goto Azuremyst Isle 61.05,54.25
step
  talk Diktynna##17101
  accept Find Acteon!##9453 |goto Azuremyst Isle 61.05,54.25
step
  only Priest
  note Guvan at Azure Watch wants you to find Tavara and heal her wounds.
  kill Tavara##17551 |q 9586 |goto Azuremyst Isle 56.22,48.88
step
  only Draenei
  talk Exarch Menelaous##17116
  turnin A Hearty Thanks!##9612 |goto Azuremyst Isle 47.11,50.6
step
  talk Exarch Menelaous##17116
  turnin Bandits!##9616 |goto Azuremyst Isle 47.11,50.6
step
  talk Totem of Akida##17360
  turnin Learning the Language##9538 |goto Azuremyst Isle 49.44,50.98
step
  talk Acteon##17110
  turnin Find Acteon!##9453 |goto Azuremyst Isle 49.78,51.94
step
  only Warrior
  talk Ruada##17480
  turnin Strength of One##9582 |goto Azuremyst Isle 50.02,50.52
step
  talk Exarch Menelaous##17116
  turnin Strange Findings##9455 |goto Azuremyst Isle 47.11,50.6
step
  only Priest
  talk Guvan##17482
  turnin Help Tavara##9586 |goto Azuremyst Isle 48.6,49.29
step
  only Draenei
  talk Anchorite Fateema##17214
  turnin Medicinal Purpose##9463 |goto Azuremyst Isle 48.39,51.77
step
  talk Acteon##17110
  accept The Great Moongraze Hunt##9454 |goto Azuremyst Isle 49.78,51.94
step
  note Bring 6 Moongraze Stag Tenderloins to Acteon at Azure Watch.
  collect 6 Moongraze Stag Tenderloin##23676 |q 9454 |goto Azuremyst Isle 44.66,59.18 |tip {dropsfrom}Moongraze Stag, Moongraze Buck
step
  talk Exarch Menelaous##17116
  accept Nightstalker Clean Up, Isle 2...##9456 |goto Azuremyst Isle 47.11,50.6
step
  only Draenei
  talk Daedal##17215
  accept An Alternative Alternative##9473 |goto Azuremyst Isle 48.39,51.48
step
  only Draenei
  note Daedal at Azure Watch wants you to bring him 5 Azure Snapdragon Bulbs.
  collect Azure Snapdragon Bulb##23692 |q 9473 |goto Azuremyst Isle 51.77,50.23 |tip {dropsfrom}Azure Snapdragon
step
  talk Totem of Akida##17360
  accept Totem of Coo##9539 |goto Azuremyst Isle 49.44,50.98
step
  only Warrior
  talk Ruada##17480
  accept Behomat##10350 |goto Azuremyst Isle 50.02,50.52
step
  note Exarch Menelaous at Azure Watch has asked that you slay 8 Infected Nightstalker Runts.
  kill Infected Nightstalker Runt##17202 |q 9456 |goto Azuremyst Isle 41.05,47.95
step
  talk Admiral Odesyus##17240
  turnin A Small Start##9506 |goto Azuremyst Isle 47.04,70.21
step
  talk "Cookie" McWeaksauce##17246
  turnin Cookie's Jumbo Gumbo##9512 |goto Azuremyst Isle 46.69,70.62
step
  talk Priestess Kyleen Il'dinare##17241
  turnin Rune Covered Tablet##9514 |goto Azuremyst Isle 47.13,70.28
step
  only Human Mage
  talk Jennea Cannon##5497
  turnin Mirror Lake##1861 |goto Stormwind City 38.62,79.3 |tip {turninat}Stormwind City
step
  only NightElf
  talk Nessa Shadowsong##10118
  turnin Nessa Shadowsong##6344 |goto Teldrassil 56.26,92.44 |tip {turninat}Teldrassil
step
  talk Priestess A'moora##7313
  turnin The Temple of the Moon##2519 |goto Darnassus 36.65,85.93 |tip {turninat}Darnassus
step
  only Warrior
  talk Behomat##17120
  turnin Behomat##10350 |goto The Exodar 55.59,82.27 |tip {turninat}The Exodar
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5631 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  talk Priestess Kyleen Il'dinare##17241
  accept Reclaiming the Ruins##9513 |goto Azuremyst Isle 47.13,70.28
step
  talk Priestess Kyleen Il'dinare##17241
  accept Warlord Sriss'tiz##9515 |goto Azuremyst Isle 47.13,70.28
step
  talk Archaeologist Adamant Ironheart##17242
  accept Precious and Fragile Things Need Special Handling##9523 |goto Azuremyst Isle 47.24,69.99
step
  note Archaeologist Adamant Ironheart at Odesyus' Landing on Azuremyst Isle wants you to bring him 8 Ancient Relics.
  collect Ancient Relic##23779 |q 9523 |goto Azuremyst Isle 30.79,77.98
step
  talk Admiral Odesyus##17240
  accept I've Got a Plant##9530 |goto Azuremyst Isle 47.04,70.21
step
  note Admiral Odesyus at Odesyus' Landing on Azuremyst Isle wants you to bring him a Hollowed Out Tree and 5 Piles of Leaves.
  collect Hollowed Out Tree##23790 |q 9530 |goto Azuremyst Isle 48.01,63.16
step
  only Rogue
  talk Onin MacHammar##6886
  turnin Simple Subterfugin'##2238 |goto Dun Morogh 25.16,44.45 |tip {turninat}Dun Morogh
step
  note Priestess Kyleen Il'dinare at Odesyus' Landing on Azuremyst Isle wants you to kill 5 Wrathscale Myrmidons, 5 Wrathscale Naga and 5 Wrathscale Sirens.
  kill Wrathscale Myrmidon##17194 |q 9513 |goto Azuremyst Isle 32.31,78.46
step
  note Priestess Kyleen Il'dinare at Odesyus' Landing on Azuremyst Isle wants you to kill Warlord Sriss'tiz.
  kill Warlord Sriss'tiz##17298 |q 9515 |goto Azuremyst Isle 24.79,74.04
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48 |tip {turninat}Ironforge
step
  only Warrior
  talk Elanaria##4088
  turnin The Shade of Elura##1686 |goto Darnassus 57.3,34.61 |tip {turninat}Darnassus
step
  talk Totem of Coo##17361
  turnin Totem of Coo##9539 |goto Azuremyst Isle 55.23,41.64
step
  talk Gryth Thurden##1573
  turnin Gryth Thurden##6388 |goto Ironforge 55.5,47.74 |tip {turninat}Ironforge
step
  only Warrior
  talk Elanaria##4088
  accept Smith Mathiel##1692 |goto Darnassus 57.3,34.61
step
  talk Gryth Thurden##1573
  accept Return to Brock##6392 |goto Ironforge 55.5,47.74
step
  talk Totem of Coo##17361
  accept Totem of Tikti##9540 |goto Azuremyst Isle 55.23,41.64
step
  talk Totem of Tikti##17362
  turnin Totem of Tikti##9540 |goto Azuremyst Isle 64.47,39.77
step
  talk Totem of Tikti##17362
  accept Totem of Yor##9541 |goto Azuremyst Isle 64.47,39.77
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5634 |goto Stormwind City 38.58,26.06 |tip {turninat}Stormwind City
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5639 |goto Stormwind City 38.58,26.06 |tip {turninat}Stormwind City
step
  only Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##10379 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  talk Rellian Greenspyre##3517
  turnin Tumors##923 |goto Darnassus 38.18,21.64 |tip {turninat}Darnassus
step
  only Rogue
  talk Syurna##4163
  turnin Destiny Calls##2242 |goto Darnassus 36.99,21.91 |tip {turninat}Darnassus
step
  only Mage
  talk Bink##5144
  turnin Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3 |tip {turninat}Ironforge
step
  talk Rellian Greenspyre##3517
  accept Return to Denalan##2498 |goto Darnassus 38.18,21.64
step
  talk Moordo##17442
  accept Beasts of the Apocalypse!##9560 |goto Azuremyst Isle 44.76,23.91
step
  note Moordo at Stillpine Hold on Azuremyst Isle wants you to bring him 8 Ravager Hides.
  collect Ravager Hide##23845 |q 9560 |goto Azuremyst Isle 54.26,16.7 |tip {dropsfrom}Ravager Specimen
step
  talk Gurf##17441
  accept Murlocs... Why Here? Why Now?##9562 |goto Azuremyst Isle 44.62,23.48
step
  note Gurf at Stillpine Hold on Azuremyst Isle wants you to recover 5 sacks of Stillpine Grain.
  collect Stillpine Grain##23849 |q 9562 |goto Azuremyst Isle 33.28,25.91 |tip {dropsfrom}Siltfin Murloc, Siltfin Oracle, Siltfin Hunter
step
  kill Murgurgula##17475 |goto Azuremyst Isle 35.01,21.98 |tip Loot the quest item here — it starts the quest.
  accept Gurf's Dignity##9564 |goto Azuremyst Isle 35.01,21.98
step
  only Draenei
  talk Proenitus##16477
  turnin Replenishing the Healing Crystals##9280 |goto Azuremyst Isle 80.42,45.89
step
  talk Zalduun##16502
  turnin Urgent Delivery!##9409 |goto Azuremyst Isle 80.13,48.89
step
  only Draenei
  talk Zalduun##16502
  accept Rescue the Survivors!##9283 |goto Azuremyst Isle 80.13,48.89
step
  talk Proenitus##16477
  accept Botanist Taerix##9371 |goto Azuremyst Isle 80.42,45.89
step
  talk Tolaan##16546
  turnin The Blood Elves##10303 |goto Azuremyst Isle 72.0,60.85
step
  talk Tolaan##16546
  accept Blood Elf Spy##9311 |goto Azuremyst Isle 72.0,60.85
step
  note Slay Surveyor Candress and then inform Vindicator Aldar at the Crash Site in Ammen Vale.
  kill Surveyor Candress##16522 |q 9311 |goto Azuremyst Isle 69.27,65.78
step
  only Draenei
  note Use your Gift of the Naaru ability on one of the Draenei Survivors spread throughout Ammen Vale, then return to Zalduun at the Crash Site in Ammen Vale.
  use Draenei Survivor##16483 |q 9283 |goto Azuremyst Isle 75.17,54.91 |tip {useit}
step
  talk Denalan##2080
  turnin Return to Denalan##2498 |goto Teldrassil 60.9,68.49 |tip {turninat}Teldrassil
step
  talk Totem of Yor##17363
  turnin Totem of Yor##9541 |goto Azuremyst Isle 63.12,67.87
step
  talk Totem of Yor##17363
  accept Totem of Vark##9542 |goto Azuremyst Isle 63.12,67.87
step
  only Draenei
  talk Daedal##17215
  turnin An Alternative Alternative##9473 |goto Azuremyst Isle 48.39,51.48
step
  talk Acteon##17110
  turnin The Great Moongraze Hunt##9454 |goto Azuremyst Isle 49.78,51.94
step
  talk Exarch Menelaous##17116
  turnin Nightstalker Clean Up, Isle 2...##9456 |goto Azuremyst Isle 47.11,50.6
step
  only Draenei
  talk Daedal##17215
  accept The Prophecy of Velen##9505 |goto Azuremyst Isle 48.39,51.48
step
  talk Acteon##17110
  accept The Great Moongraze Hunt##10324 |goto Azuremyst Isle 49.78,51.94
step
  note Bring 6 Moongraze Buck Hides to Acteon at Azure Watch.
  collect 6 Moongraze Buck Hide##23677 |q 10324 |goto Azuremyst Isle 43.83,42.87 |tip {dropsfrom}Moongraze Buck
step
  talk Brock Stoneseeker##1681
  turnin Return to Brock##6392 |goto Loch Modan 37.02,47.81 |tip {turninat}Loch Modan
step
  only Draenei
  talk Admiral Odesyus##17240
  turnin The Prophecy of Velen##9505 |goto Azuremyst Isle 47.04,70.21
step
  talk Priestess Kyleen Il'dinare##17241
  turnin Reclaiming the Ruins##9513 |goto Azuremyst Isle 47.13,70.28
step
  talk Priestess Kyleen Il'dinare##17241
  turnin Warlord Sriss'tiz##9515 |goto Azuremyst Isle 47.13,70.28
step
  talk Archaeologist Adamant Ironheart##17242
  turnin Precious and Fragile Things Need Special Handling##9523 |goto Azuremyst Isle 47.24,69.99
step
  talk Admiral Odesyus##17240
  turnin I've Got a Plant##9530 |goto Azuremyst Isle 47.04,70.21
step
  talk Admiral Odesyus##17240
  accept Tree's Company##9531 |goto Azuremyst Isle 47.04,70.21
step
  note Admiral Odesyus at Odesyus' Landing on Azuremyst Isle wants you to observe the meeting that is to take place between Geezle and the traitor.
  kill Engineer "Spark" Overgrind##17243 |q 9531 |goto Azuremyst Isle 49.81,69.9
step
  talk Totem of Vark##17364
  turnin Totem of Vark##9542 |goto Azuremyst Isle 28.11,62.39
step
  talk Totem of Vark##17364
  accept The Prophecy of Akida##9544 |goto Azuremyst Isle 28.11,62.39
step
  note Free 8 Stillpine Captives from cages found in Bristlelimb Village. Return to Arugoo of the Stillpine at Azure Watch when you have completed this task.
  kill Stillpine Captive##17375 |q 9544 |goto Azuremyst Isle 27.25,66.6
step
  only Warrior
  talk Mathiel##6142
  turnin Smith Mathiel##1692 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  only Warrior
  talk Mathiel##6142
  accept Weapons of Elunite##1693 |goto Darnassus 59.51,45.38
step
  talk Moordo##17442
  turnin Beasts of the Apocalypse!##9560 |goto Azuremyst Isle 44.76,23.91
step
  talk Gurf##17441
  turnin Murlocs... Why Here? Why Now?##9562 |goto Azuremyst Isle 44.62,23.48
step
  talk Gurf##17441
  turnin Gurf's Dignity##9564 |goto Azuremyst Isle 44.62,23.48
step
  talk High Chief Stillpine##17440
  accept Search Stillpine Hold##9565 |goto Azuremyst Isle 46.69,20.61
step
  talk Stillpine the Younger##17445
  accept Chieftain Oomooroo##9573 |goto Azuremyst Isle 46.9,21.16
step
  note Stillpine the Younger at Stillpine Hold on Azuremyst Isle wants you to slay Chieftain Oomooroo and 9 Crazed Wildkin.
  kill Chieftain Oomooroo##17448 |q 9573 |goto Azuremyst Isle 47.4,14.12
step
  talk Botanist Taerix##16514
  turnin Botanist Taerix##9371 |goto Azuremyst Isle 79.14,46.54
step
  talk Vindicator Aldar##16535
  turnin Blood Elf Spy##9311 |goto Azuremyst Isle 79.49,51.62
step
  only Draenei
  talk Zalduun##16502
  turnin Rescue the Survivors!##9283 |goto Azuremyst Isle 80.13,48.89
step
  talk Vindicator Aldar##16535
  accept The Emitter##9312 |goto Azuremyst Isle 79.49,51.62
step
  talk Botanist Taerix##16514
  accept Volatile Mutations##10302 |goto Azuremyst Isle 79.14,46.54
step
  note Kill 8 Volatile Mutations, then return to Botanist Taerix at the Crash Site in Ammen Vale.
  kill Volatile Mutation##16516 |q 10302 |goto Azuremyst Isle 76.41,49.67
step
  talk Arugoo of the Stillpine##17114
  turnin The Prophecy of Akida##9544 |goto Azuremyst Isle 49.37,51.09
step
  talk Acteon##17110
  turnin The Great Moongraze Hunt##10324 |goto Azuremyst Isle 49.78,51.94
step
  talk Arugoo of the Stillpine##17114
  accept Stillpine Hold##9559 |goto Azuremyst Isle 49.37,51.09
step
  talk Admiral Odesyus##17240
  turnin Tree's Company##9531 |goto Azuremyst Isle 47.04,70.21
step
  talk Admiral Odesyus##17240
  accept Show Gnomercy##9537 |goto Azuremyst Isle 47.04,70.21
step
  note Admiral Odesyus at Odesyus' Landing wants you to recover the Traitor's Communication from Engineer "Spark" Overgrind.
  collect Traitor's Communication##23899 |q 9537 |goto Azuremyst Isle 49.81,69.9 |tip {dropsfrom}Engineer "Spark" Overgrind
step
  only Warrior
  talk Mathiel##6142
  turnin Weapons of Elunite##1693 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  talk High Chief Stillpine##17440
  turnin Stillpine Hold##9559 |goto Azuremyst Isle 46.69,20.61
step
  turnin Search Stillpine Hold##9565 |goto Azuremyst Isle 50.58,11.57
step
  talk Stillpine the Younger##17445
  turnin Chieftain Oomooroo##9573 |goto Azuremyst Isle 46.9,21.16
step
  click Blood Crystal##181748
  accept Blood Crystals##9566 |goto Azuremyst Isle 50.58,11.57
step
  talk Kurz the Revelator##17443
  accept The Kurken is Lurkin'##9570 |goto Azuremyst Isle 46.97,22.27
step
  note Kurz the Revelator at Stillpine Hold on Azuremyst Isle wants you to kill the Kurken and bring back the Kurken's Hide.
  collect The Kurken's Hide##23860 |q 9570 |goto Azuremyst Isle 49.95,12.81 |tip {dropsfrom}The Kurken
step
  talk Technician Zhanaa##17071
  turnin The Emitter##9312 |goto Azuremyst Isle 79.42,51.23
step
  talk Botanist Taerix##16514
  turnin Volatile Mutations##10302 |goto Azuremyst Isle 79.14,46.54
step
  talk Botanist Taerix##16514
  accept What Must Be Done...##9293 |goto Azuremyst Isle 79.14,46.54
step
  note Gather 10 Lasher Samples and return them to Botanist Taerix at the Crash Site in Ammen Vale.
  collect 10 Lasher Sample##22934 |q 9293 |goto Azuremyst Isle 73.22,50.3 |tip {dropsfrom}Mutated Root Lasher
step
  talk Technician Zhanaa##17071
  accept Travel to Azure Watch##9313 |goto Azuremyst Isle 79.42,51.23
step
  talk Apprentice Vishael##20233
  accept Botanical Legwork##9799 |goto Azuremyst Isle 79.07,46.63
step
  note Gather 3 Corrupted Flowers and return them to Apprentice Vishael at the Crash Site in Ammen Vale.
  collect 3 Corrupted Flower##24416 |q 9799 |goto Azuremyst Isle 73.55,50.55
step
  talk Technician Dyvuun##16551
  turnin Travel to Azure Watch##9313 |goto Azuremyst Isle 48.71,50.27
step
  talk Admiral Odesyus##17240
  turnin Show Gnomercy##9537 |goto Azuremyst Isle 47.04,70.21
step
  talk Admiral Odesyus##17240
  accept Deliver Them From Evil...##9602 |goto Azuremyst Isle 47.04,70.21
step
  talk High Chief Stillpine##17440
  turnin Blood Crystals##9566 |goto Azuremyst Isle 46.69,20.61
step
  talk Kurz the Revelator##17443
  turnin The Kurken is Lurkin'##9570 |goto Azuremyst Isle 46.97,22.27
step
  talk Kurz the Revelator##17443
  accept The Kurken's Hide##9571 |goto Azuremyst Isle 46.97,22.27
step
  talk High Chief Stillpine##17440
  accept Warn Your People##9622 |goto Azuremyst Isle 46.69,20.61
step
  talk Apprentice Vishael##20233
  turnin Botanical Legwork##9799 |goto Azuremyst Isle 79.07,46.63
step
  talk Botanist Taerix##16514
  turnin What Must Be Done...##9293 |goto Azuremyst Isle 79.14,46.54
step
  talk Botanist Taerix##16514
  accept Healing the Lake##9294 |goto Azuremyst Isle 79.14,46.54
step
  note Disperse the Neutralizing Agent at the Irradiated Power Crystal, then return to Botanist Taerix at the Crash Site in Ammen Vale.
  collect Irradiated Power Crystal##181433 |q 9294 |goto Azuremyst Isle 77.22,59.0
step
  talk Exarch Menelaous##17116
  turnin Deliver Them From Evil...##9602 |goto Azuremyst Isle 47.11,50.6
step
  talk Exarch Menelaous##17116
  turnin Warn Your People##9622 |goto Azuremyst Isle 47.11,50.6
step
  talk Moordo##17442
  turnin The Kurken's Hide##9571 |goto Azuremyst Isle 44.76,23.91
step
  talk Botanist Taerix##16514
  turnin Healing the Lake##9294 |goto Azuremyst Isle 79.14,46.54
step
  talk Botanist Taerix##16514
  accept Vindicator Aldar##10304 |goto Azuremyst Isle 79.14,46.54
step
  talk Vindicator Aldar##16535
  turnin Vindicator Aldar##10304 |goto Azuremyst Isle 79.49,51.62
step
  talk Cowlen##17311
  turnin The Missing Fisherman##10428
step
  note {travel}Westfall
  goto Westfall 59.92,19.42
]])
