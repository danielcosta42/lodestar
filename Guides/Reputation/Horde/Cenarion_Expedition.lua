-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Cenarion Expedition", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Loganaar##12042
  accept Morthis Whisperwing##10955 |goto Moonglade 52.53,40.57
step
  talk Falconer Drenna Riverwind##16790
  accept Helping the Cenarion Post##10442 |goto Hellfire Peninsula 27.71,60.33
step
  talk Ikeyen##17956
  accept The Umbrafen Tribe##9747 |goto Zangarmarsh 80.4,64.16
step
  talk Lethyn Moonfire##17834
  accept The Dying Balance##9895 |goto Zangarmarsh 78.53,63.15
step
  talk Thiah Redmane##16991
  accept Demonic Contamination##9372 |goto Hellfire Peninsula 15.7,52.09
step
  talk Lethyn Moonfire##17834
  accept Watcher Leesa'oh##9697 |goto Zangarmarsh 78.53,63.15
step
  talk Ysiel Windsinger##17841
  accept Disturbance at Umbrafen Lake##9716 |goto Zangarmarsh 78.4,62.02
step
  talk Kayra Longmane##17969
  accept Escape from Umbrafen##9752 |goto Zangarmarsh 83.38,85.54
step
  talk Lauranna Thar'well##17909
  accept Plants of Zangarmarsh##9802 |goto Zangarmarsh 80.32,64.17
step
  talk Lethyn Moonfire##17834
  accept What's Wrong at Cenarion Thicket?##9957 |goto Zangarmarsh 78.53,63.15
step
  talk Tooki##18447
  accept What's Wrong at Cenarion Thicket?##9960 |goto Terokkar Forest 50.04,45.93
step
  talk Earthbinder Tavgren##18446
  accept Strange Energy##9968 |goto Terokkar Forest 44.33,26.31
step
  talk Earthbinder Tavgren##18446
  accept Clues in the Thicket##9971 |goto Terokkar Forest 44.33,26.31
step
  talk Tola'thion##19293
  accept Colossal Menace##10132 |goto Hellfire Peninsula 15.62,52.04
step
  talk Mahuram Stouthoof##16888
  accept Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula 15.94,52.17
step
  talk Ysiel Windsinger##17841
  accept Warden Hamoot##9778 |goto Zangarmarsh 78.4,62.02
step
  talk Windcaller Blackhoof##18070
  accept Blessings of the Ancients##9785 |goto Zangarmarsh 80.37,64.73
step
  talk Warden Treelos##18424
  accept It's Watching You!##9951 |goto Terokkar Forest 43.44,22.36
step
  talk Lakotae##22420
  accept The Infested Protectors##10896 |goto Terokkar Forest 37.86,51.68
step
  talk Timeon##21782
  accept Creating the Pendant##10567 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Tree Warden Chawn##22007
  accept A Time for Negotiation...##10682 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Faradrella##22133
  accept Culling the Wild##10753 |goto Blade's Edge Mountains 62.56,38.26
step
  talk Mosswood the Ancient##22053
  accept Little Embers##10770 |goto Blade's Edge Mountains 61.25,38.45
step
  talk Mosswood the Ancient##22053
  accept From the Ashes##10771 |goto Blade's Edge Mountains 61.25,38.45
step
  talk Aurine Moonblaze##20871
  accept Flora of the Eco-Domes##10426 |goto Netherstorm 42.32,32.56
step
  talk Watcher Jhang##17884
  accept The Warlord's Hideout##9763 |goto Zangarmarsh 52.29,35.98
step
  talk Apothecary Antonivich##16588
  accept Master of Potions##10905 |goto Hellfire Peninsula 52.28,36.46
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Heart of Quagmirran##11368 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  accept Wanted: A Black Stalker Egg##11369 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Warlord's Treatise##11370 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Coilfang Myrmidons##11371 |goto Shattrath City 75.5,37.24
step
  note Ikeyen at the Cenarion Refuge wants you to travel to Umbrafen Village and slay Kataru, 8 Umbrafen Seers, 6 Umbrafen Witchdoctors and 6 Umbrafen Oracles.
  kill Kataru##18080 |q 9747 |goto Zangarmarsh 85.29,90.93
step
  note Locate and deal with Boglash, then return to Lethyn Moonfire at Cenarion Refuge.
  kill Boglash##18281 |q 9895 |goto Zangarmarsh 82.07,71.39
step
  note Thiah Redmane, at the Cenarion Post in Hellfire Peninsula, has asked you to gather 6 Helboar Blood Samples from Hulking Helboars.
  kill Hulking Helboar##16880 |q 9372 |goto Hellfire Peninsula 24.6,54.71
step
  note Bring 10 Unidentified Plant Parts to Lauranna Thar'well at the Cenarion Refuge in Zangarmarsh.
  kill Darkcrest Taskmaster##18086 |q 9802 |goto Zangarmarsh 62.13,67.45
step
  note Slay Rajis Fyashe at Serpent Lake and return to Warden Hamoot at the Cenarion Refuge in Zangarmarsh for a reward.
  kill Rajis Fyashe##18044 |q 9817 |goto Zangarmarsh 65.15,40.91
step
  note Collect 4 Teromoth Samples and 4 Vicious Teromoth Samples. Then return to Earthbinder Tavgren just outside the Cenarion Thicket in Terokkar Forest.
  kill Teromoth##18468 |q 9968 |goto Terokkar Forest 45.14,29.39
step
  note Investigate the Strange Object next to the Broken Corpse to determine what might have befallen the Cenarion Thicket. Then return to Earthbinder Tavgren just outside the thicket in Terokkar Forest.
  collect Strange Object##183789 |q 9971 |goto Terokkar Forest 45.1,21.77
step
  note Slay 5 Raging Colossi and then return to Tola'thion at the Cenarion Post in Hellfire Peninsula.
  kill Raging Colossus##19188 |q 10132 |goto Hellfire Peninsula 15.38,42.29
step
  note Kill 8 Thornfang Ravagers and 8 Thornfang Venomspitters, and then return to Mahuram Stouthoof at the Cenarion Post in Hellfire Peninsula.
  kill Thornfang Ravager##19349 |q 10159 |goto Hellfire Peninsula 10.25,51.54
step
  note Slay Rajah Haghazed at the Lagoon and return to Warden Hamoot at the Cenarion Expedition in Zangarmarsh for a reward.
  kill Rajah Haghazed##18046 |q 9730 |goto Zangarmarsh 65.1,68.67
step
  note Windcaller Blackhoof wants you to speak to the ancients Ashyen and Keleth at Cenarion Refuge and obtain their blessings.
  kill Ashyen##17900 |q 9785 |goto Zangarmarsh 81.1,63.87
step
  note Kill Naphthal'ar and then return to Warden Treelos at the Cenarion Thicket in Terokkar Forest.
  kill Naphthal'ar##18438 |q 9951 |goto Terokkar Forest 43.54,22.07
step
  note Lakotae wants you to kill 25 wood mites and then return to him at the Refugee Caravan. The mites can be found living inside the bodies of rotting forest-ragers and infested root-walkers.
  kill Wood Mite##22419 |q 10896
step
  note Find 6 Ruuan'ok Claws and use them at the Ruaan'ok Oracle Circle to summon a Harbinger of the Raven. Kill it and return its Harbinger's Pendant to Timeon at Ruuan Weald.
  get Creating the Pendant |q 10567 |goto Blade's Edge Mountains 62.16,39.11
step
  note Kill 4 Felsworn Scalewing, 4 Felsworn Daggermaw, and 2 Fel Corrupters.
  kill Felsworn Scalewing##21123 |q 10753 |goto Blade's Edge Mountains 71.85,32.76
step
  note Mosswood the Ancient wants you to kill 8 Scorch Imps and then return to him in Ruuan Weald.
  kill Scorch Imp##21021 |q 10770 |goto Blade's Edge Mountains 71.77,21.14
step
  note Mosswood the Ancient wants you to journey to Skald and plant Ironroot Seeds in three different mounds of Fertile Volcanic Soil and then return to him in Ruuan Weald.
  collect Fertile Volcanic Soil##185124 |q 10771 |goto Blade's Edge Mountains 71.66,22.35
step
  note Use the Energy Field Modulator on Farahlon Lashers. Observe the results and report back to Aurine Moonblaze at the Stormspire when you have conducted 10 tests.
  kill Mutated Farahlon Lasher##20983 |q 10426 |goto Netherstorm 41.01,32.56
step
  note Watcher Jhang wants you to find and slay Warlord Kalithresh inside Coilfang Reservoir.
  kill Warlord Kalithresh##17798 |q 9763 |goto The Steamvault - Dungeon -1,-1
step
  note Wind Trader Zhareem has asked you to obtain The Heart of Quagmirran. Deliver it to him in Shattrath's Lower City to collect the reward.
  get Wanted: The Heart of Quagmirran |q 11368 |goto Shattrath City 75.13,36.65
step
  note Wind Trader Zhareem wants you to obtain a Black Stalker Egg. Deliver it to him in Shattrath's Lower City to collect the reward.
  get Wanted: A Black Stalker Egg |q 11369 |goto Shattrath City 75.13,36.65
step
  note Wind Trader Zhareem has asked you to acquire The Warlord's Treatise. Deliver it to him in Shattrath's Lower City to collect the reward.
  get Wanted: The Warlord's Treatise |q 11370 |goto Shattrath City 75.13,36.65
step
  note Nether-Stalker Mah'duun has asked you to slay 14 Coilfang Myrmidons. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Coilfang Myrmidon##17800 |q 11371 |goto The Steamvault - Dungeon -1,-1
step
  talk Morthis Whisperwing##22832
  turnin Morthis Whisperwing##10955 |goto Zangarmarsh 80.18,65.15
step
  talk Thiah Redmane##16991
  turnin Missing Missive##9373 |goto Hellfire Peninsula 15.7,52.09
step
  talk Thiah Redmane##16991
  turnin Helping the Cenarion Post##10442 |goto Hellfire Peninsula 15.7,52.09
step
  talk Ikeyen##17956
  turnin The Umbrafen Tribe##9747 |goto Zangarmarsh 80.4,64.16
step
  talk Lethyn Moonfire##17834
  turnin The Dying Balance##9895 |goto Zangarmarsh 78.53,63.15
step
  talk Thiah Redmane##16991
  turnin Demonic Contamination##9372 |goto Hellfire Peninsula 15.7,52.09
step
  talk Watcher Leesa'oh##17831
  turnin Watcher Leesa'oh##9697 |goto Zangarmarsh 23.32,66.21
step
  talk Ysiel Windsinger##17841
  turnin Disturbance at Umbrafen Lake##9716 |goto Zangarmarsh 78.4,62.02
step
  talk Ysiel Windsinger##17841
  turnin Drain Schematics##9731 |goto Zangarmarsh 78.4,62.02
step
  talk Ysiel Windsinger##17841
  turnin Escape from Umbrafen##9752 |goto Zangarmarsh 78.4,62.02
step
  talk Lauranna Thar'well##17909
  turnin Plants of Zangarmarsh##9802 |goto Zangarmarsh 80.32,64.17
step
  talk Warden Hamoot##17858
  turnin Leader of the Bloodscale##9817 |goto Zangarmarsh 79.09,65.27
step
  talk Lauranna Thar'well##17909
  turnin Uncatalogued Species##9875 |goto Zangarmarsh 80.32,64.17
step
  talk Earthbinder Tavgren##18446
  turnin What's Wrong at Cenarion Thicket?##9957 |goto Terokkar Forest 44.33,26.31
step
  talk Earthbinder Tavgren##18446
  turnin What's Wrong at Cenarion Thicket?##9960 |goto Terokkar Forest 44.33,26.31
step
  talk Earthbinder Tavgren##18446
  turnin Strange Energy##9968 |goto Terokkar Forest 44.33,26.31
step
  talk Earthbinder Tavgren##18446
  turnin Clues in the Thicket##9971 |goto Terokkar Forest 44.33,26.31
step
  talk Tola'thion##19293
  turnin Colossal Menace##10132 |goto Hellfire Peninsula 15.62,52.04
step
  talk Tola'thion##19293
  turnin Crimson Crystal Clue##10134 |goto Hellfire Peninsula 15.62,52.04
step
  talk Mahuram Stouthoof##16888
  turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula 15.94,52.17
step
  talk Warden Hamoot##17858
  turnin Leader of the Darkcrest##9730 |goto Zangarmarsh 79.09,65.27
step
  talk Warden Hamoot##17858
  turnin Warden Hamoot##9778 |goto Zangarmarsh 79.09,65.27
step
  talk Windcaller Blackhoof##18070
  turnin Blessings of the Ancients##9785 |goto Zangarmarsh 80.37,64.73
step
  talk Watcher Leesa'oh##17831
  turnin The Count of the Marshes##9911 |goto Zangarmarsh 23.32,66.21
step
  talk Warden Treelos##18424
  turnin It's Watching You!##9951 |goto Terokkar Forest 43.44,22.36
step
  talk Lakotae##22420
  turnin The Infested Protectors##10896 |goto Terokkar Forest 37.86,51.68
step
  talk Timeon##21782
  turnin Creating the Pendant##10567 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Tree Warden Chawn##22007
  turnin A Time for Negotiation...##10682 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Tree Warden Chawn##22007
  turnin Did You Get The Note?##10719 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Faradrella##22133
  turnin Culling the Wild##10753 |goto Blade's Edge Mountains 62.56,38.26
step
  talk Mosswood the Ancient##22053
  turnin Little Embers##10770 |goto Blade's Edge Mountains 61.25,38.45
step
  talk Mosswood the Ancient##22053
  turnin From the Ashes##10771 |goto Blade's Edge Mountains 61.25,38.45
step
  talk O'Mally Zapnabber##22020
  turnin Damaged Mask##10810 |goto Blade's Edge Mountains 62.65,40.38
step
  talk Aurine Moonblaze##20871
  turnin Flora of the Eco-Domes##10426 |goto Netherstorm 42.32,32.56
step
  talk Watcher Jhang##17884
  turnin The Warlord's Hideout##9763 |goto Zangarmarsh 52.29,35.98
step
  talk Ysiel Windsinger##17841
  turnin Orders from Lady Vashj##9764 |goto Zangarmarsh 78.4,62.02
step
  talk Lauranna Thar'well##17909
  turnin Master of Potions##10905 |goto Zangarmarsh 80.32,64.17
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Heart of Quagmirran##11368 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: A Black Stalker Egg##11369 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Warlord's Treatise##11370 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Coilfang Myrmidons##11371 |goto Shattrath City 75.5,37.24
step
  talk Morthis Whisperwing##22832
  accept The Ward of Wakening##10961 |goto Zangarmarsh 80.18,65.15
step
  talk Ikeyen##17956
  accept A Damp, Dark Place##9788 |goto Zangarmarsh 80.4,64.16
step
  talk Windcaller Blackhoof##18070
  accept Safeguarding the Watchers##9894 |goto Zangarmarsh 80.37,64.73
step
  talk Lauranna Thar'well##17909
  accept Saving the Sporeloks##10096 |goto Zangarmarsh 80.32,64.17
step
  talk Watcher Leesa'oh##17831
  accept Observing the Sporelings##9701 |goto Zangarmarsh 23.32,66.21
step
  talk Ysiel Windsinger##17841
  accept As the Crow Flies##9718 |goto Zangarmarsh 78.4,62.02
step
  talk Earthbinder Tavgren##18446
  accept By Any Means Necessary##9978 |goto Terokkar Forest 44.33,26.31
step
  talk Thiah Redmane##16991
  accept Testing the Antidote##10255 |goto Hellfire Peninsula 15.7,52.09
step
  talk Tola'thion##19293
  accept The Earthbinder##10349 |goto Hellfire Peninsula 15.62,52.04
step
  talk Ysiel Windsinger##17841
  accept Warning the Cenarion Circle##9724 |goto Zangarmarsh 78.4,62.02
step
  talk Warden Hamoot##17858
  accept A Warm Welcome##9728 |goto Zangarmarsh 79.09,65.27
step
  talk Lauranna Thar'well##17909
  accept Identify Plant Parts##9784 |goto Zangarmarsh 80.32,64.17
step
  talk Tree Warden Chawn##22007
  accept ...and a Time for Action##10713 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Tree Warden Chawn##22007
  accept Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Timeon##21782
  accept Whispers of the Raven God##10607 |goto Blade's Edge Mountains 62.16,39.11
step
  talk O'Mally Zapnabber##22020
  accept Mystery Mask##10812 |goto Blade's Edge Mountains 62.65,40.38
step
  talk Aurine Moonblaze##20871
  accept Creatures of the Eco-Domes##10427 |goto Netherstorm 42.32,32.56
step
  talk Ysiel Windsinger##17841
  accept Preparing for War##9765 |goto Zangarmarsh 78.4,62.02
step
  talk Lauranna Thar'well##17909
  accept Master of Potions##10897 |goto Zangarmarsh 80.32,64.17
step
  note Bring 10 Bogblossoms, 10 Ancient Lichen, and 10 Dreaming Glory to Morthis Whisperwing at the Cenarion Refuge.
  get The Ward of Wakening |q 10961 |goto Zangarmarsh 80.18,65.15
step
  note Look for Ikeyen's Belongings inside a cave south of Umbrafen. Return them to Ikeyen at Cenarion Refuge in Zangarmarsh.
  collect Ikeyen's Belongings##182122 |q 9788 |goto Zangarmarsh 70.49,97.94
step
  note Kill Lord Klaq and return to Windcaller Blackhoof at the Cenarion Refuge.
  kill Lord Klaq##18282 |q 9894 |goto Zangarmarsh 72.24,93.89
step
  note Slay 10 Marsh Dredgers and 10 Marsh Lurkers, and then return to Lauranna Thar'well at the Cenarion Refuge in Zangarmarsh.
  kill Marsh Dredger##18137 |q 10096 |goto Zangarmarsh 73.71,94.18
step
  note Use the Cenarion Antidote on a Hulking Helboar and observe the results. Once you have the results of the experiment, return to Thiah Redmane at the Cenarion Post in Hellfire Peninsula.
  kill Dreadtusk##16992 |q 10255
step
  note Warden Hamoot at the Cenarion Refuge wants you to bring him 30 Naga Claws.
  kill Rajis Fyashe##18044 |q 9728 |goto Zangarmarsh 65.15,40.91
step
  kill Darkcrest Taskmaster##18086 |q 9784 |goto Zangarmarsh 62.13,67.45
step
  note Venture out into the Ruuan Weald and slay 10 Wyrmcult Hewers, then return to Tree Warden Chawn at Evergrove in the Blade's Edge Mountains.
  kill Wyrmcult Hewer##21810 |q 10713 |goto Blade's Edge Mountains 60.82,35.23
step
  note Kill Grishna arakkoa to gain Understanding Ravenspeech for 2 minutes. While under the effects of the spell, you can find and receive the prophecy from the four shrines. Return when you have visited all four.
  get Whispers of the Raven God |q 10607 |goto Blade's Edge Mountains 39.01,17.25
step
  note Tag 12 Talbuks for Aurine Moonblaze at the Stormspire. You may tag either Talbuk Sires or Talbuk Does using the Talbuk Tagger.
  get Creatures of the Eco-Domes |q 10427 |goto Netherstorm 43.82,38.26
step
  note Obtain Coilfang Armaments from naga at Coilfang Reservoir and return them to Ysiel Windsinger at the Cenarion Refuge in Zangarmarsh.
  kill Coilfang Engineer##17721 |q 9765 |goto The Steamvault - Dungeon -1,-1
step
  note Lauranna Thar'well wants you to go to the Botanica in Tempest Keep and retrieve the Botanist's Field Guide from High Botanist Freywinn. In addition she also wants you to bring her 5 Super Healing Potions, 5 Super Mana Potions and 5 Major Dreamless Sleep Potions.
  get Master of Potions |q 10897 |goto Zangarmarsh 80.32,64.17
step
  talk Morthis Whisperwing##22832
  turnin The Ward of Wakening##10961 |goto Zangarmarsh 80.18,65.15
step
  talk Ikeyen##17956
  turnin A Damp, Dark Place##9788 |goto Zangarmarsh 80.4,64.16
step
  talk Windcaller Blackhoof##18070
  turnin Safeguarding the Watchers##9894 |goto Zangarmarsh 80.37,64.73
step
  talk Lauranna Thar'well##17909
  turnin Saving the Sporeloks##10096 |goto Zangarmarsh 80.32,64.17
step
  talk Watcher Leesa'oh##17831
  turnin Observing the Sporelings##9701 |goto Zangarmarsh 23.32,66.21
step
  talk Ysiel Windsinger##17841
  turnin As the Crow Flies##9718 |goto Zangarmarsh 78.4,62.02
step
  talk Empoor##18482
  turnin By Any Means Necessary##9978 |goto Terokkar Forest 43.17,26.53
step
  talk Thiah Redmane##16991
  turnin Testing the Antidote##10255 |goto Hellfire Peninsula 15.7,52.09
step
  talk Earthbinder Galandria Nightbreeze##19294
  turnin The Earthbinder##10349 |goto Hellfire Peninsula 15.96,51.57
step
  talk Amythiel Mistwalker##16885
  turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula 16.04,52.15
step
  talk Warden Hamoot##17858
  turnin A Warm Welcome##9728 |goto Zangarmarsh 79.09,65.27
step
  talk Lauranna Thar'well##17909
  turnin Identify Plant Parts##9784 |goto Zangarmarsh 80.32,64.17
step
  talk Tree Warden Chawn##22007
  turnin ...and a Time for Action##10713 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Watcher Moonshade##22386
  turnin Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Timeon##21782
  turnin Whispers of the Raven God##10607 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Wildlord Antelarion##22127
  turnin Mystery Mask##10812 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Aurine Moonblaze##20871
  turnin Creatures of the Eco-Domes##10427 |goto Netherstorm 42.32,32.56
step
  talk Ysiel Windsinger##17841
  turnin Preparing for War##9765 |goto Zangarmarsh 78.4,62.02
step
  talk Lauranna Thar'well##17909
  turnin Master of Potions##10897 |goto Zangarmarsh 80.32,64.17
step
  talk Morthis Whisperwing##22832
  accept Waking the Sleeper##10964 |goto Zangarmarsh 80.18,65.15
step
  talk Amythiel Mistwalker##16885
  accept Return to the Marsh##9732 |goto Hellfire Peninsula 16.04,52.15
step
  talk Empoor##18482
  accept Wind Trader Lathrai##9979 |goto Terokkar Forest 43.17,26.53
step
  talk Earthbinder Galandria Nightbreeze##19294
  accept Natural Remedies##10351 |goto Hellfire Peninsula 15.96,51.57
step
  talk Watcher Leesa'oh##17831
  accept A Question of Gluttony##9702 |goto Zangarmarsh 23.32,66.21
step
  talk Ysiel Windsinger##17841
  accept Balance Must Be Preserved##9720 |goto Zangarmarsh 78.4,62.02
step
  talk Watcher Moonshade##22386
  accept Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Wildlord Antelarion##22127
  accept Felsworn Gas Mask##10819 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Aurine Moonblaze##20871
  accept When Nature Goes Too Far##10429 |goto Netherstorm 42.32,32.56
step
  talk Ysiel Windsinger##17841
  accept Coilfang Armaments##9766 |goto Zangarmarsh 78.4,62.02
step
  note Use the Seed of Revitalization at the Earthbinder's Circle to heal the land around the crystal. Then, return to Earthbinder Galandria Nightbreeze at the Cenarion Post in Hellfire Peninsula with any information that you gain.
  kill Goliathon##19305 |q 10351
step
  note Collect 10 pieces of Discarded Nutriment and then return to Watcher Leesa'oh at the Cenarion Watchpost in Zangarmarsh.
  collect Discarded Nutriment##182031 |q 9702 |goto Zangarmarsh 30.2,63.94
step
  note Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
  get Balance Must Be Preserved |q 9720 |goto Zangarmarsh 70.6,80.29
step
  note Eliminate Draaca Longtail, the leader of the wyrmcultists in Wyrmskull Tunnel. Report back to Watcher Moonshade at the Wyrmskull Tunnel in the Blade's Edge Mountains once you have done so.
  kill Draaca Longtail##22396 |q 10893 |goto Blade's Edge Mountains 45.19,32.49
step
  note Aurine Moonblaze at the Stormspire wants you to bring her a Hulking Hydra Heart.
  kill Markaru##20775 |q 10429 |goto Netherstorm 44.56,28.42
step
  kill Coilfang Engineer##17721 |q 9766 |goto The Steamvault - Dungeon -1,-1
step
  talk Clintar Dreamwalker##22834
  turnin Waking the Sleeper##10964 |goto Moonglade 75.46,67.04
step
  talk Ysiel Windsinger##17841
  turnin Return to the Marsh##9732 |goto Zangarmarsh 78.4,62.02
step
  talk Wind Trader Lathrai##18484
  turnin Wind Trader Lathrai##9979 |goto Shattrath City 72.22,30.75
step
  talk Earthbinder Galandria Nightbreeze##19294
  turnin Natural Remedies##10351 |goto Hellfire Peninsula 15.96,51.57
step
  talk Watcher Leesa'oh##17831
  turnin A Question of Gluttony##9702 |goto Zangarmarsh 23.32,66.21
step
  talk Ysiel Windsinger##17841
  turnin Balance Must Be Preserved##9720 |goto Zangarmarsh 78.4,62.02
step
  talk Watcher Moonshade##22386
  turnin Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 50.03,35.95
step
  turnin Felsworn Gas Mask##10819 |goto Blade's Edge Mountains 73.27,40.03
step
  talk Aurine Moonblaze##20871
  turnin When Nature Goes Too Far##10429 |goto Netherstorm 42.32,32.56
step
  talk Ysiel Windsinger##17841
  turnin Coilfang Armaments##9766 |goto Zangarmarsh 78.4,62.02
step
  talk Clintar Dreamwalker##22834
  accept No Mere Dream##10965 |goto Moonglade 75.46,67.04
step
  talk Watcher Leesa'oh##17831
  accept Familiar Fungi##9708 |goto Zangarmarsh 23.32,66.21
step
  talk Wind Trader Lathrai##18484
  accept A Personal Favor##10112 |goto Shattrath City 72.22,30.75
step
  talk Ysiel Windsinger##17841
  accept Failed Incursion##9876 |goto Zangarmarsh 78.4,62.02
step
  talk Watcher Moonshade##22386
  accept Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 50.03,35.95
step
  note Protect Clintar Dreamwalker's Spirit while it gathers the relics of Aviana, then speak to Dreamwarden Lurosa.
  kill Clintar Dreamwalker's Spirit##22916 |q 10965 |goto Moonglade 75.41,67.04
step
  note Collect 15 Mushroom Samples and return them to Watcher Leesa'oh at the Cenarion Watchpost in Zangarmarsh.
  kill Ango'rosh Ogre##18117 |q 9708 |goto Zangarmarsh 33.71,31.19
step
  note Retrieve 5 of Lathrai's Stolen Goods. Return them to Wind Trader Lathrai near the World's End Tavern in the Lower City section of Shattrath City.
  kill Skithian Dreadhawk##18452 |q 10112 |goto Terokkar Forest 31.41,42.35
step
  note Kill 4 Doomforge Attendants and 4 Doomforge Engineers.
  kill Doomforge Attendant##19961 |q 10820 |goto Blade's Edge Mountains 74.29,38.51
step
  talk Dreamwarden Lurosa##22837
  turnin No Mere Dream##10965 |goto Moonglade 72.47,63.27
step
  talk Watcher Leesa'oh##17831
  turnin Familiar Fungi##9708 |goto Zangarmarsh 23.32,66.21
step
  talk Wind Trader Lathrai##18484
  turnin A Personal Favor##10112 |goto Shattrath City 72.22,30.75
step
  talk Watcher Jhang##17884
  turnin Failed Incursion##9876 |goto Zangarmarsh 52.29,35.98
step
  talk Tree Warden Chawn##22007
  turnin Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 61.98,39.48
step
  turnin Deceive thy Enemy##10820 |goto Blade's Edge Mountains 73.27,40.03
step
  talk Dreamwarden Lurosa##22837
  accept Return to Morthis Whisperwing##10978 |goto Moonglade 72.47,63.27
step
  talk Watcher Leesa'oh##17831
  accept Stealing Back the Mushrooms##9709 |goto Zangarmarsh 23.32,66.21
step
  talk Wind Trader Lathrai##18484
  accept Investigate Tuurem##9990 |goto Shattrath City 72.22,30.75
step
  talk Watcher Jhang##17884
  accept Lost in Action##9738 |goto Zangarmarsh 52.29,35.98
step
  talk Tree Warden Chawn##22007
  accept Maxnar Must Die!##10748 |goto Blade's Edge Mountains 61.98,39.48
step
  note Collect 10 Boxes of Mushrooms and return them to Watcher Leesa'oh at the Cenarion Watchpost in Zangarmarsh.
  kill Ango'rosh Mauler##18120 |q 9709 |goto Zangarmarsh 18.89,7.03
step
  note Find the Sealed Box and then deliver it to Earthbinder Tavgren just outside of the Cenarion Thicket in Terokkar Forest.
  collect Sealed Box##182542 |q 9990 |goto Terokkar Forest 54.0,30.0
step
  note Discover what happened to Earthbinder Rayge, Naturalist Bite, Weeder Greenthumb, and Windcaller Claw. Then, return to Watcher Jhang at Coilfang Reservoir in Zangarmarsh.
  kill Earthbinder Rayge##17885 |q 9738 |goto The Underbog - Dungeon -1,-1
step
  note On behalf of the Cenarion Expedition druids of Evergrove, and the indigenous life of the Ruuan Weald, Tree Warden Chawn has asked you to slay Maxnar the Ashmaw. Return to him at Evergrove in the Blade's Edge Mountains after you have done so.
  kill Maxnar the Ashmaw##21389 |q 10748 |goto Blade's Edge Mountains 33.9,35.32
step
  note Kill Doomcryer and report back to Wildlord Antelarion in Evergrove.
  kill Doomcryer##19963 |q 10821
step
  talk Morthis Whisperwing##22832
  turnin Return to Morthis Whisperwing##10978 |goto Zangarmarsh 80.18,65.15
step
  talk Watcher Leesa'oh##17831
  turnin Stealing Back the Mushrooms##9709 |goto Zangarmarsh 23.32,66.21
step
  talk Earthbinder Tavgren##18446
  turnin Investigate Tuurem##9990 |goto Terokkar Forest 44.33,26.31
step
  talk Watcher Jhang##17884
  turnin Lost in Action##9738 |goto Zangarmarsh 52.29,35.98
step
  talk Tree Warden Chawn##22007
  turnin Maxnar Must Die!##10748 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Wildlord Antelarion##22127
  turnin You're Fired!##10821 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Morthis Whisperwing##22832
  accept To the Evergrove##10979 |goto Zangarmarsh 80.18,65.15
step
  talk Earthbinder Tavgren##18446
  accept What Are These Things?##9995 |goto Terokkar Forest 44.33,26.31
step
  talk Wildlord Antelarion##22127
  accept Death's Door##10910 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Arthorn Windsong##22924
  turnin To the Evergrove##10979 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Tooki##18447
  turnin What Are These Things?##9995 |goto Terokkar Forest 50.04,45.93
step
  talk Evergrove Druid##22423
  turnin Death's Door##10910 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Arthorn Windsong##22924
  accept The Book of the Raven##10980 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Tooki##18447
  accept Report to Stonebreaker Camp##10448 |goto Terokkar Forest 50.04,45.93
step
  talk Evergrove Druid##22423
  accept Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.52,65.29
step
  note Use an Aether Ray Eye with your Seer's Stone to reveal the raven cult ghosts. Search the Vortex Pinnacle for the spirit of Sai'kkal the Elder and question him about the book of the raven, then return to Arthorn Windsong.
  kill Sai'kkal the Elder##22932 |q 10980 |goto Blade's Edge Mountains 29.54,59.72
step
  note The Evergrove Druid has asked you to collect 5 Fel Cannonballs. Once you have done so, use the Druid Signal to call to the Evergrove Druid inside of Death's Door at the Blade's Edge Mountains.
  kill Deathforge Over-Smith##19978 |q 10904 |goto Blade's Edge Mountains 64.01,71.7
step
  talk Arthorn Windsong##22924
  turnin The Book of the Raven##10980 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Sergeant Chawni##21007
  turnin Report to Stonebreaker Camp##10448 |goto Terokkar Forest 63.29,42.39
step
  talk Evergrove Druid##22423
  turnin Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Arthorn Windsong##22924
  accept Eyes in the Sky##10986 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Sergeant Chawni##21007
  accept Attack on Firewing Point##9997 |goto Terokkar Forest 63.29,42.39
step
  talk Evergrove Druid##22423
  accept Fire At Will!##10911 |goto Blade's Edge Mountains 63.52,65.29
step
  note Kill 10 Firewing Defenders, 10 Firewing Bloodwarders, and 10 Firewing Warlocks. Then report back to Sergeant Chawni at Stonebreaker Camp in Terokkar Forest.
  kill Firewing Defender##5355 |q 9997 |goto Terokkar Forest 71.62,36.54
step
  note Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use them to destroy both the South Warp-Gate and the North Warp-Gate. Then, use the Druid Signal to call out to an Evergrove Druid to report your success.
  get Fire At Will! |q 10911 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Watcher Elaira##22981
  turnin Eyes in the Sky##10986 |goto Nagrand 20.58,35.73
step
  talk Sergeant Chawni##21007
  turnin Attack on Firewing Point##9997 |goto Terokkar Forest 63.29,42.39
step
  talk Evergrove Druid##22423
  turnin Fire At Will!##10911 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Watcher Elaira##22981
  accept To Catch A Sparrowhawk##10987 |goto Nagrand 20.58,35.73
step
  talk Sergeant Chawni##21007
  accept The Final Code##10447 |goto Terokkar Forest 63.29,42.39
step
  talk Evergrove Druid##22423
  accept The Hound-Master##10912 |goto Blade's Edge Mountains 63.52,65.29
step
  note Use the Sparrowhawk Net to capture a Wild Sparrowhawk and bring it to Watcher Elaira on the Twilight Ridge.
  get To Catch A Sparrowhawk |q 10987 |goto Nagrand 20.58,35.73
step
  note Sergeant Chawni wants you to use the Final Code Sheet to set off the Mana Bomb. Then report back to Tooki at Stonebreaker Hold in Terokkar Forest.
  get The Final Code |q 10447 |goto Terokkar Forest 71.26,37.37
step
  note The Evergrove Druid has told you that the final thing you must do is to slay Baelmon the Hound-Master. Afterward, return to Evergrove in the Blade's Edge Mountains, and inform Wildlord Antelarion of your success.
  kill Baelmon the Hound-Master##19747 |q 10912 |goto Blade's Edge Mountains 63.04,60.41
step
  talk Watcher Elaira##22981
  turnin To Catch A Sparrowhawk##10987 |goto Nagrand 20.58,35.73
step
  talk Tooki##18447
  turnin The Final Code##10447 |goto Terokkar Forest 50.04,45.93
step
  talk Wildlord Antelarion##22127
  turnin The Hound-Master##10912 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Watcher Elaira##22981
  accept The Raven Stones##10988 |goto Nagrand 20.58,35.73
step
  talk Tooki##18447
  accept Letting Earthbinder Tavgren Know##10006 |goto Terokkar Forest 50.04,45.93
step
  note Gather 8 Raven Stones from Skettis and bring them to Arthorn Windsong at Evergrove in Blade's Edge Mountains.
  collect Raven Stone Fragment##185541 |q 10988 |goto Terokkar Forest 69.29,81.1
step
  talk Arthorn Windsong##22924
  turnin The Raven Stones##10988 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Earthbinder Tavgren##18446
  turnin Letting Earthbinder Tavgren Know##10006 |goto Terokkar Forest 44.33,26.31
step
  talk Arthorn Windsong##22924
  accept The Eagle's Essence##10990 |goto Blade's Edge Mountains 61.47,38.27
step
  note Defeat the Guardian of the Eagle and obtain the Essence of the Eagle. Use Arthorn's Sparrowhawk Whistle to call Arthorn's Sparrowhawk to relay news of your success.
  get The Eagle's Essence |q 10990 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Arthorn's Sparrowhawk##23338
  turnin The Eagle's Essence##10990
step
  talk Arthorn's Sparrowhawk##23338
  accept The Falcon's Essence##10991
step
  note Defeat the Guardian of the Falcon, obtain the Essence of the Falcon. Use Arthorn's Sparrowhawk Whistle to call Arthorn's Sparrowhawk to relay news of your success.
  get The Falcon's Essence |q 10991
step
  talk Arthorn's Sparrowhawk##23338
  turnin The Falcon's Essence##10991
step
  talk Arthorn's Sparrowhawk##23338
  accept The Hawk's Essence##10992
step
  note Defeat the Guardian of the Hawk and bring the Essence of the Hawk to Arthorn Windsong at the Evergrove.
  get The Hawk's Essence |q 10992
step
  talk Arthorn Windsong##22924
  turnin The Hawk's Essence##10992 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Arthorn Windsong##22924
  accept Return to Cenarion Refuge##10993 |goto Blade's Edge Mountains 61.47,38.27
step
  talk Morthis Whisperwing##22832
  turnin Return to Cenarion Refuge##10993 |goto Zangarmarsh 80.18,65.15
step
  talk Morthis Whisperwing##22832
  accept Chasing the Moonstone##10994 |goto Zangarmarsh 80.18,65.15
step
  note Bring a Southfury Moonstone to Morthis Whisperwing at the Cenarion Refuge.
  get Chasing the Moonstone |q 10994 |goto Zangarmarsh 80.18,65.15
step
  talk Morthis Whisperwing##22832
  turnin Chasing the Moonstone##10994 |goto Zangarmarsh 80.18,65.15
step
  talk Morthis Whisperwing##22832
  accept Vanquish the Raven God##11001 |goto Zangarmarsh 80.18,65.15
step
  note Slay the Raven God and return to Morthis Whisperwing at Cenarion Refuge.
  kill Anzu##23035 |q 11001
step
  talk Morthis Whisperwing##22832
  turnin Vanquish the Raven God##11001 |goto Zangarmarsh 80.18,65.15
]])
