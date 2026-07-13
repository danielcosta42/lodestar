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
  note Ishanah wants you to go to the Arakkoa outpost east of Shattrath City and use the Blessed Vial to cleanse the Eastern Altar, the Western Altar and the Northern Altar.
  collect Northern Altar##182563 |q 10021 |goto Terokkar Forest 50.66,16.56
step
  note Vindicator Aluumen wants you to go to the Ruins of Baa'ri and slay 3 Ashtongue Handlers, 4 Ashtongue Warriors and 6 Ashtongue Shaman.
  kill Ashtongue Handler##21803 |q 10619 |goto Shadowmoon Valley 57.71,36.86
step
  note Altruis the Sufferer wants you to slay Lothros at Illidari Point in Shadowmoon Valley.
  kill Lothros##21928 |q 10668 |goto Shadowmoon Valley 28.29,49.97
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
  note Slay 8 Sunfury Magisters and 8 Sunfury Bloodwarders and return to Exarch Orelis at Area 52.
  kill Sunfury Magister##18855 |q 10241 |goto Netherstorm 25.07,68.25
step
  note Exarch Onaala wants you to return to the Ruins of Karabor and find a way to unleash Azaloth on his captors.
  kill Azaloth Credit Marker##21892 |q 10637 |goto Shadowmoon Valley 69.84,51.42
step
  note Vindicator Aluumen wants you to slay 8 Shadowmoon Slayers, 8 Shadowmoon Chosen and 4 Shadowmoon Darkweavers.
  kill Shadowmoon Slayer##22082 |q 10816 |goto Shadowmoon Valley 69.23,38.7
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
  note Exarch Orelis in Area 52 wants you to take the Warp-Attuned Orb to Manaforge B'naar and use it at the end of its four pipelines.
  kill Northern Pipe Credit Marker##20333 |q 10313 |goto Netherstorm 25.68,60.26
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
  note Exarch Onaala wants you to go to the ruins of Karabor and slay Alandien, Theras, Netharel and Varedis. Use the Book of Fel Names when Varedis uses Metamorphosis to weaken him. Return to Exarch Onaala with the Book of Fel Names after you've completed this task.
  kill Varedis##21178 |q 10651 |goto Shadowmoon Valley 72.16,53.67
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
