-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/The Aldor", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Sha'nir##18597
  accept Strained Supplies##10017 |goto Shattrath City 64.48,15.1
step
  talk Sha'nir##18597
  accept A Cure for Zahlia##10020 |goto Shattrath City 64.48,15.1
step
  talk Ishanah##18538
  accept Restoring the Light##10021 |goto Shattrath City 23.97,29.73
step
  talk Haggard War Veteran##19684
  accept A'dal##10210 |goto Shattrath City 72.71,41.43
step
  talk Adyen the Lightwarden##18537
  accept Marks of Kil'jaeden##10325 |goto Shattrath City 30.73,34.62
step
  talk Vindicator Aeus##23270
  accept Assist Exarch Orelis##11038 |goto Shattrath City 47.24,26.26
step
  talk Anchorite Karja##19467
  accept Naaru Technology##10243 |goto Netherstorm 32.04,64.18
step
  talk Ishanah##18538
  accept A Cleansing Light##10420 |goto Shattrath City 23.97,29.73
step
  talk Anchorite Ceyla##21402
  accept Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.58,28.38
step
  talk Exarch Onaala##21860
  accept Karabor Training Grounds##10587 |goto Shadowmoon Valley 61.2,29.23
step
  talk Vindicator Aluumen##21822
  accept The Ashtongue Tribe##10619 |goto Shadowmoon Valley 61.17,29.14
step
  talk Altruis the Sufferer##18417
  accept Against the Legion##10641 |goto Nagrand 27.34,43.09
step
  talk Adyen the Lightwarden##18537
  accept Marks of Sargeras##10653 |goto Shattrath City 30.73,34.62
step
  talk Altruis the Sufferer##18417
  accept Against the Illidari##10668 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Against All Odds##10669 |goto Nagrand 27.34,43.09
step
  talk Harbinger Saronen##22214
  accept Marks of Sargeras##10826 |goto Shadowmoon Valley 62.27,29.78
step
  note Bring 8 Dreadfang Venom Sacs to Sha'nir in Shattrath City.
  kill Dreadfang Lurker##18466 |q 10017 |goto Terokkar Forest 46.75,30.29
step
  note Bring Stonegazer's Blood to Sha'nir in Shattrath City.
  kill Stonegazer##18648 |q 10020 |goto Terokkar Forest 62.81,27.69 |elite
step
  note Ishanah wants you to go to the Arakkoa outpost east of Shattrath City and use the Blessed Vial to cleanse the Eastern Altar, the Western Altar and the Northern Altar.
  collect Northern Altar##182563 |q 10021 |goto Terokkar Forest 50.66,16.56
step
  note Bring 10 Marks of Kil'jaeden to Adyen the Lightwarden in Shattrath City.
  kill Mo'arg Engineer##16945 |q 10325 |goto Nagrand 20.0,49.34 |elite
step
  note Bring a Fel Armament to Ishanah in Shattrath City.
  kill Cyber-Rage Forgelord##16943 |q 10420 |goto Netherstorm 40.3,21.07
step
  note Anchorite Ceyla at the Altar of Sha'tar wants you to collect 12 Baa'ri Tablets from the ground and from Ashtongue Workers at the Ruins of Baa'ri.
  kill Ashtongue Worker##21455 |q 10568 |goto Shadowmoon Valley 58.47,37.68
step
  note Exarch Onaala at the Altar of Sha'tar wants you to obtain 8 Sunfury Glaives from Demon Hunter Supplicants and Demon Hunter Initiates at the Ruins of Karabor, southeast of the Altar of Sha'tar.
  kill Demon Hunter Supplicant##21179 |q 10587 |goto Shadowmoon Valley 68.74,53.05
step
  note Vindicator Aluumen wants you to go to the Ruins of Baa'ri and slay 3 Ashtongue Handlers, 4 Ashtongue Warriors and 6 Ashtongue Shaman.
  kill Ashtongue Handler##21803 |q 10619 |goto Shadowmoon Valley 57.71,36.86
step
  note Altruis the sufferer wants you to obtain Freshly Drawn Blood from a Wrath Priestess at Forge Base: Gehenna in Netherstorm. Spill it on the ground and slay the Avatar of Sathal. Return to Altruis when you've completed this task.
  kill Avatar of Sathal##21925 |q 10641
step
  note Bring 10 Marks of Sargeras to Adyen the Lightwarden in Shattrath City.
  kill Cyber-Rage Forgelord##16943 |q 10653 |goto Netherstorm 40.3,21.07
step
  note Altruis the Sufferer wants you to slay Lothros at Illidari Point in Shadowmoon Valley.
  kill Lothros##21928 |q 10668 |goto Shadowmoon Valley 28.29,49.97
step
  note Altruis the Sufferer wants you to take the Imbued Silver Spear and use it at Portal Clearing near Marshlight Lake in Zangarmarsh to awake Xeleth. Return to Altruis after you've slain the demon.
  kill Xeleth##21894 |q 10669
step
  note Bring 10 Marks of Sargeras to Harbinger Saronen in Shadowmoon Valley.
  kill Cyber-Rage Forgelord##16943 |q 10826 |goto Netherstorm 40.3,21.07
step
  talk Sha'nir##18597
  turnin Strained Supplies##10017 |goto Shattrath City 64.48,15.1
step
  talk Sha'nir##18597
  turnin A Cure for Zahlia##10020 |goto Shattrath City 64.48,15.1
step
  talk Ishanah##18538
  turnin Restoring the Light##10021 |goto Shattrath City 23.97,29.73
step
  talk A'dal##18481
  turnin A'dal##10210 |goto Shattrath City 53.99,44.75
step
  talk Adyen the Lightwarden##18537
  turnin Marks of Kil'jaeden##10325 |goto Shattrath City 30.73,34.62
step
  talk Exarch Orelis##19466
  turnin Assist Exarch Orelis##11038 |goto Netherstorm 32.07,64.18
step
  turnin Naaru Technology##10243 |goto Netherstorm 23.21,68.25
step
  talk Ishanah##18538
  turnin A Cleansing Light##10420 |goto Shattrath City 23.97,29.73
step
  talk Anchorite Ceyla##21402
  turnin Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.58,28.38
step
  talk Exarch Onaala##21860
  turnin Karabor Training Grounds##10587 |goto Shadowmoon Valley 61.2,29.23
step
  talk Vindicator Aluumen##21822
  turnin The Ashtongue Tribe##10619 |goto Shadowmoon Valley 61.17,29.14
step
  talk Altruis the Sufferer##18417
  turnin Against the Legion##10641 |goto Nagrand 27.34,43.09
step
  talk Adyen the Lightwarden##18537
  turnin Marks of Sargeras##10653 |goto Shattrath City 30.73,34.62
step
  talk Altruis the Sufferer##18417
  turnin Against the Illidari##10668 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Against All Odds##10669 |goto Nagrand 27.34,43.09
step
  talk Harbinger Saronen##22214
  turnin Marks of Sargeras##10826 |goto Shadowmoon Valley 62.27,29.78
step
  talk Sha'nir##18597
  accept More Venom Sacs##10019 |goto Shattrath City 64.48,15.1
step
  talk Khadgar##18166
  accept City of Light##10211 |goto Shattrath City 54.75,44.32
step
  talk Adyen the Lightwarden##18537
  accept More Marks of Kil'jaeden##10326 |goto Shattrath City 30.73,34.62
step
  talk Adyen the Lightwarden##18537
  accept Single Mark of Kil'jaeden##10327 |goto Shattrath City 30.73,34.62
step
  talk Exarch Orelis##19466
  accept Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.07,64.18
step
  talk Ishanah##18538
  accept Fel Armaments##10421 |goto Shattrath City 23.97,29.73
step
  talk Anchorite Ceyla##21402
  accept Oronu the Elder##10571 |goto Shadowmoon Valley 62.58,28.38
step
  talk Exarch Onaala##21860
  accept A Necessary Distraction##10637 |goto Shadowmoon Valley 61.2,29.23
step
  talk Altruis the Sufferer##18417
  accept Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  talk Adyen the Lightwarden##18537
  accept More Marks of Sargeras##10654 |goto Shattrath City 30.73,34.62
step
  talk Adyen the Lightwarden##18537
  accept Single Mark of Sargeras##10655 |goto Shattrath City 30.73,34.62
step
  talk Vindicator Aluumen##21822
  accept Reclaiming Holy Grounds##10816 |goto Shadowmoon Valley 61.17,29.14
step
  talk Harbinger Saronen##22214
  accept More Marks of Sargeras##10827 |goto Shadowmoon Valley 62.27,29.78
step
  talk Harbinger Saronen##22214
  accept Single Mark of Sargeras##10828 |goto Shadowmoon Valley 62.27,29.78
step
  kill Dreadfang Lurker##18466 |q 10019 |goto Terokkar Forest 46.75,30.29
step
  kill Mo'arg Engineer##16945 |q 10326 |goto Nagrand 20.0,49.34 |elite
step
  kill Mo'arg Engineer##16945 |q 10327 |goto Nagrand 20.0,49.34 |elite
step
  note Slay 8 Sunfury Magisters and 8 Sunfury Bloodwarders and return to Exarch Orelis at Area 52.
  kill Sunfury Magister##18855 |q 10241 |goto Netherstorm 25.07,68.25
step
  kill Cyber-Rage Forgelord##16943 |q 10421 |goto Netherstorm 40.3,21.07
step
  note Anchorite Ceyla at the Altar of Sha'tar wants you to obtain the Orders from Akama from Oronu the Elder at the Ruins of Baa'ri.
  kill Oronu the Elder##21663 |q 10571 |goto Shadowmoon Valley 57.19,32.87
step
  note Exarch Onaala wants you to return to the Ruins of Karabor and find a way to unleash Azaloth on his captors.
  get A Necessary Distraction |q 10637 |goto Shadowmoon Valley 69.84,51.42
step
  kill Cyber-Rage Forgelord##16943 |q 10654 |goto Netherstorm 40.3,21.07
step
  kill Cyber-Rage Forgelord##16943 |q 10655 |goto Netherstorm 40.3,21.07
step
  note Vindicator Aluumen wants you to slay 8 Shadowmoon Slayers, 8 Shadowmoon Chosen and 4 Shadowmoon Darkweavers.
  kill Shadowmoon Slayer##22082 |q 10816 |goto Shadowmoon Valley 69.23,38.7
step
  kill Cyber-Rage Forgelord##16943 |q 10827 |goto Netherstorm 40.3,21.07
step
  kill Cyber-Rage Forgelord##16943 |q 10828 |goto Netherstorm 40.3,21.07
step
  talk Sha'nir##18597
  turnin More Venom Sacs##10019 |goto Shattrath City 64.48,15.1
step
  talk Khadgar##18166
  turnin City of Light##10211 |goto Shattrath City 54.75,44.32
step
  talk Adyen the Lightwarden##18537
  turnin More Marks of Kil'jaeden##10326 |goto Shattrath City 30.73,34.62
step
  talk Adyen the Lightwarden##18537
  turnin Single Mark of Kil'jaeden##10327 |goto Shattrath City 30.73,34.62
step
  talk Exarch Orelis##19466
  turnin Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Karja##19467
  turnin B'naar Console Transcription##10245 |goto Netherstorm 32.04,64.18
step
  talk Ishanah##18538
  turnin Fel Armaments##10421 |goto Shattrath City 23.97,29.73
step
  talk Anchorite Ceyla##21402
  turnin Oronu the Elder##10571 |goto Shadowmoon Valley 62.58,28.38
step
  talk Exarch Onaala##21860
  turnin A Necessary Distraction##10637 |goto Shadowmoon Valley 61.2,29.23
step
  talk Altruis the Sufferer##18417
  turnin Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  talk Adyen the Lightwarden##18537
  turnin More Marks of Sargeras##10654 |goto Shattrath City 30.73,34.62
step
  talk Adyen the Lightwarden##18537
  turnin Single Mark of Sargeras##10655 |goto Shattrath City 30.73,34.62
step
  talk Vindicator Aluumen##21822
  turnin Reclaiming Holy Grounds##10816 |goto Shadowmoon Valley 61.17,29.14
step
  talk Harbinger Saronen##22214
  turnin More Marks of Sargeras##10827 |goto Shadowmoon Valley 62.27,29.78
step
  talk Harbinger Saronen##22214
  turnin Single Mark of Sargeras##10828 |goto Shadowmoon Valley 62.27,29.78
step
  talk Khadgar##18166
  accept Allegiance to the Aldor##10551 |goto Shattrath City 54.75,44.32
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge B'naar##10299 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  accept Measuring Warp Energies##10313 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Ceyla##21402
  accept The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.58,28.38
step
  talk Exarch Onaala##21860
  accept Altruis##10640 |goto Shadowmoon Valley 61.2,29.23
step
  talk Altruis the Sufferer##18417
  accept The Book of Fel Names##10649 |goto Nagrand 27.34,43.09
step
  note Return to Manaforge B'naar and obtain the B'naar Access Crystal from Overseer Theredis. Use it at the Manaforge B'naar console to shut it down and report back to Anchorite Karja.
  kill B'naar Control Console##20209 |q 10299
step
  note Exarch Orelis in Area 52 wants you to take the Warp-Attuned Orb to Manaforge B'naar and use it at the end of its four pipelines.
  get Measuring Warp Energies |q 10313 |goto Netherstorm 25.68,60.26
step
  note Obtain the four medallion fragments from Haalum, Eykenen, Lakaan and Uylaru and return to Anchorite Ceyla at the Altar of Sha'tar in Shadowmoon Valley.
  kill Eykenen##21709 |q 10574 |goto Shadowmoon Valley 51.18,52.82
step
  note Venture inside the Shadow Labyrinth in Auchindoun and obtain the Book of Fel Names from Blackheart the Inciter. Return to Altruis in Nagrand once you've completed this task.
  kill Blackheart the Inciter##18667 |q 10649 |goto Shadow Labyrinth - Dungeon -1,-1 |elite
step
  talk Khadgar##18166
  turnin Allegiance to the Aldor##10551 |goto Shattrath City 54.75,44.32
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge B'naar##10299 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  turnin Measuring Warp Energies##10313 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Ceyla##21402
  turnin The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.58,28.38
step
  talk Altruis the Sufferer##18417
  turnin Altruis##10640 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin The Book of Fel Names##10649 |goto Nagrand 27.34,43.09
step
  talk Khadgar##18166
  accept Ishanah##10554 |goto Shattrath City 54.75,44.32
step
  talk Exarch Orelis##19466
  accept Attack on Manaforge Coruu##10246 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Coruu##10321 |goto Netherstorm 32.04,64.18
step
  talk Anchorite Ceyla##21402
  accept The Warden's Cage##10575 |goto Shadowmoon Valley 62.58,28.38
step
  talk Altruis the Sufferer##18417
  accept Return to the Aldor##10650 |goto Nagrand 27.34,43.09
step
  note Travel to Manaforge Coruu and slay 8 Sunfury Arcanists and 5 Sunfury Researchers. Return to Exarch Orelis when you've completed this task.
  kill Sunfury Researcher##20136 |q 10246 |goto Netherstorm 53.02,83.05
step
  note Travel to Manaforge Coruu, east of Area 52, and obtain the Coruu Access Crystal from Overseer Seylanna. Use it at the Manaforge Coruu Console to shut it down and return to Anchorite Karja.
  kill Coruu Control Console##20417 |q 10321
step
  talk Ishanah##18538
  turnin Ishanah##10554 |goto Shattrath City 23.97,29.73
step
  talk Exarch Orelis##19466
  turnin Attack on Manaforge Coruu##10246 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Coruu##10321 |goto Netherstorm 32.04,64.18
step
  talk Sanoru##21826
  turnin The Warden's Cage##10575 |goto Shadowmoon Valley 57.33,49.58
step
  talk Exarch Onaala##21860
  turnin Return to the Aldor##10650 |goto Shadowmoon Valley 61.2,29.23
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Duro##10322 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  accept Sunfury Briefings##10328 |goto Netherstorm 32.07,64.18
step
  talk Exarch Onaala##21860
  accept Varedis Must Be Stopped##10651 |goto Shadowmoon Valley 61.2,29.23
step
  note Anchorite Karja wants you to go Manaforge Duro and obtain the Duro Access Crystal from Overseer Athanel. Use it at the Manaforge Duro Console to shut it down.
  kill Duro Control Console##20418 |q 10322
step
  note Go to Manaforge Duro and retrieve the Sunfury Military Briefing and the Sunfury Arcane Briefing from the Sunfury units stationed there. Return to Exarch Orellis when you've completed this task.
  kill Sunfury Centurion##20140 |q 10328 |goto Netherstorm 59.3,66.49
step
  note Exarch Onaala wants you to go to the ruins of Karabor and slay Alandien, Theras, Netharel and Varedis. Use the Book of Fel Names when Varedis uses Metamorphosis to weaken him. Return to Exarch Onaala with the Book of Fel Names after you've completed this task.
  kill Varedis##21178 |q 10651 |goto Shadowmoon Valley 72.16,53.67 |elite
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Duro##10322 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  turnin Sunfury Briefings##10328 |goto Netherstorm 32.07,64.18
step
  talk Exarch Onaala##21860
  turnin Varedis Must Be Stopped##10651 |goto Shadowmoon Valley 61.2,29.23
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Ara##10323 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  accept Outside Assistance##10431 |goto Netherstorm 32.07,64.18
step
  note Travel to Manaforge Ara and obtain the Ara Access Crystal from Overseer Azarad. Use it at the Manaforge Ara console to shut it down.
  kill Ara Control Console##20440 |q 10323
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Ara##10323 |goto Netherstorm 32.04,64.18
step
  talk Kaylaan##20780
  turnin Outside Assistance##10431 |goto Netherstorm 34.8,38.3
step
  talk Kaylaan##20780
  accept A Dark Pact##10380 |goto Netherstorm 34.8,38.3
step
  note Kaylaan at Tuluman's Landing in Netherstorm wants you to slay 6 Gan'arg Warp-Tinkers, 3 Daughters of Destiny and 3 Mo'arg Warp-Masters.
  kill Gan'arg Warp-Tinker##20285 |q 10380 |goto Netherstorm 26.67,41.4
step
  talk Kaylaan##20780
  turnin A Dark Pact##10380 |goto Netherstorm 34.8,38.3
step
  talk Kaylaan##20780
  accept Aldor No More##10381 |goto Netherstorm 34.8,38.3
step
  talk Exarch Orelis##19466
  turnin Aldor No More##10381 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Karja##19467
  accept Socrethar's Shadow##10407 |goto Netherstorm 32.04,64.18
step
  note Anchorite Karja at Area 52 wants you to obtain the First Half of Socrethar's Stone from Forgemaster Morug at Forge Base: Oblivion and the Second Half of Socrethar's Stone from Silroth at Forge Base: Gehenna.
  kill Forgemaster Morug##20800 |q 10407 |goto Netherstorm 36.15,26.43 |elite
step
  talk Anchorite Karja##19467
  turnin Socrethar's Shadow##10407 |goto Netherstorm 32.04,64.18
step
  talk Anchorite Karja##19467
  accept Ishanah's Help##10410 |goto Netherstorm 32.04,64.18
step
  talk Ishanah##18538
  turnin Ishanah's Help##10410 |goto Shattrath City 23.97,29.73
step
  talk Ishanah##18538
  accept Deathblow to the Legion##10409 |goto Shattrath City 23.97,29.73
step
  talk Ishanah##18538
  turnin Deathblow to the Legion##10409 |goto Shattrath City 23.97,29.73
]])
