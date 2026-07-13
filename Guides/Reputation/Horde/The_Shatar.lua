-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/The Sha'tar", {
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
  talk Arcanist Adyria##18596
  accept Voren'thal's Visions##10024 |goto Shattrath City 54.98,22.54
step
  talk Magister Falris##19485
  accept Losing Gracefully##10169 |goto Shattrath City 47.01,83.53
step
  talk Haggard War Veteran##19684
  accept A'dal##10210 |goto Shattrath City 72.71,41.43
step
  talk Adyen the Lightwarden##18537
  accept Marks of Kil'jaeden##10325 |goto Shattrath City 30.73,34.62
step
  talk Magistrix Fyalenn##18531
  accept Firewing Signets##10412 |goto Shattrath City 45.2,81.44
step
  talk Scout Navrin##22364
  accept Taken in the Night##10873 |goto Terokkar Forest 31.44,75.66
step
  talk Vindicator Haylen##22462
  accept For the Fallen##10920 |goto Terokkar Forest 49.71,76.19
step
  talk Lantresor of the Blade##18261
  accept Message to Garadar##9934 |goto Nagrand 73.81,62.6
step
  talk Oakun##22456
  accept The Dread Relic##10877 |goto Terokkar Forest 31.06,76.53
step
  talk Mag'har Captive##18210
  accept The Totem of Kar'dash##9868 |goto Nagrand 31.33,44.13
step
  talk Ha'lei##19697
  accept I See Dead Draenei##10227 |goto Terokkar Forest 35.09,65.09
step
  talk Vindicator Aeus##23270
  accept Assist Exarch Orelis##11038 |goto Shattrath City 47.24,26.26
step
  talk Matron Celestine##18301
  accept He Called Himself Altruis...##9983 |goto Nagrand 55.2,36.1
step
  talk Spymaster Thalodien##19468
  accept Manaforge B'naar##10189 |goto Netherstorm 32.0,64.07
step
  talk Anchorite Karja##19467
  accept Naaru Technology##10243 |goto Netherstorm 32.04,64.18
step
  talk Anchorite Karja##19467
  accept Assisting the Consortium##10263 |goto Netherstorm 32.04,64.18
step
  talk Voren'thal the Seer##18530
  accept Synthesis of Power##10416 |goto Shattrath City 42.79,91.71
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
  talk Magistrix Fyalenn##18531
  accept Sunfury Signets##10656 |goto Shattrath City 45.2,81.44
step
  talk Altruis the Sufferer##18417
  accept Against the Illidari##10668 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Against All Odds##10669 |goto Nagrand 27.34,43.09
step
  talk Earthmender Splinthoof##21938
  accept The Hand of Gul'dan##10681 |goto Shadowmoon Valley 28.49,26.57
step
  talk Arcanist Thelis##21955
  accept Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.25,59.6
step
  talk Larissa Sunstrike##21954
  accept Karabor Training Grounds##10687 |goto Shadowmoon Valley 55.73,58.17
step
  talk Varen the Reclaimer##21953
  accept The Ashtongue Broken##10807 |goto Shadowmoon Valley 54.73,58.19
step
  talk Battlemage Vyara##22211
  accept Sunfury Signets##10824 |goto Shadowmoon Valley 56.29,58.8
step
  talk Harbinger Saronen##22214
  accept Marks of Sargeras##10826 |goto Shadowmoon Valley 62.27,29.78
step
  talk Wind Trader Zhareem##24369
  accept Wanted: A Warp Splinter Clipping##11384 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Sunseeker Channelers##11385 |goto Shattrath City 75.5,37.24
step
  talk Wind Trader Zhareem##24369
  accept Wanted: Pathaleon's Projector##11386 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Tempest-Forge Destroyers##11387 |goto Shattrath City 75.5,37.24
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Scroll of Skyriss##11388 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Arcatraz Sentinels##11389 |goto Shattrath City 75.5,37.24
step
  note Bring 8 Dreadfang Venom Sacs to Sha'nir in Shattrath City.
  kill Dreadfang Lurker##18466 |q 10017 |goto Terokkar Forest 46.75,30.29
step
  note Bring Stonegazer's Blood to Sha'nir in Shattrath City.
  kill Stonegazer##18648 |q 10020 |goto Terokkar Forest 62.81,27.69
step
  note Ishanah wants you to go to the Arakkoa outpost east of Shattrath City and use the Blessed Vial to cleanse the Eastern Altar, the Western Altar and the Northern Altar.
  collect Northern Altar##182563 |q 10021 |goto Terokkar Forest 50.66,16.56
step
  note Bring 8 Dampscale Basilisk Eyes to Arcanist Adyria in Shattrath City.
  kill Dampscale Basilisk##18461 |q 10024 |goto Terokkar Forest 38.39,11.68
step
  note Bring 10 Marks of Kil'jaeden to Adyen the Lightwarden in Shattrath City.
  kill Mo'arg Engineer##16945 |q 10325 |goto Nagrand 20.0,49.34
step
  note Magistrix Fyalenn in Shattrath City wants you to bring her 10 Firewing Signets.
  kill Firewing Bloodwarder##1410 |q 10412 |goto Terokkar Forest 71.58,36.73
step
  note Scout Navrin wants you to travel to the Netherweb Ridge and free 6 Webbed Sha'tar Warriors and then return to him at Sha'tar Outpost.
  kill Freed Sha'tar Warrior##22459 |q 10873
step
  note Vindicator Haylen wants you to slay 20 Dreadfang Widows and then return to him just west of Netherweb Ridge.
  kill Dreadfang Widow##18467 |q 10920 |goto Terokkar Forest 31.75,67.01
step
  note Oakun wants you to travel east to the Derelict Caravan to recover the Dread Relic. Return to Oakun when the task is complete.
  collect Massive Treasure Chest##185220 |q 10877 |goto Terokkar Forest 43.92,76.4
step
  note Spymaster Thalodien at Area 52 wants you to go to the outskirts of Manaforge B'naar and retrieve the B'naar Personnel Roster from Captain Arathyn.
  kill Captain Arathyn##19635 |q 10189 |goto Netherstorm 27.24,65.44
step
  note Voren'thal the Seer in Shattrath City wants you to obtain an Arcane Tome.
  kill Firewing Bloodwarder##1410 |q 10416 |goto Terokkar Forest 71.58,36.73
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
  note Magistrix Fyalenn in Shattrath City wants you to bring her 10 Sunfury Signets.
  get Sunfury Signets |q 10656 |goto Shattrath City 45.2,81.44
step
  note Altruis the Sufferer wants you to slay Lothros at Illidari Point in Shadowmoon Valley.
  kill Lothros##21928 |q 10668 |goto Shadowmoon Valley 28.29,49.97
step
  note Altruis the Sufferer wants you to take the Imbued Silver Spear and use it at Portal Clearing near Marshlight Lake in Zangarmarsh to awake Xeleth. Return to Altruis after you've slain the demon.
  kill Xeleth##21894 |q 10669
step
  note Arcanist Thelis at the Sanctum of the Stars wants you to collect 12 Baa'ri Tablets from the ground and from Ashtongue Workers at the Ruins of Baa'ri.
  kill Ashtongue Worker##21455 |q 10683 |goto Shadowmoon Valley 58.47,37.68
step
  note Larissa Sunstrike at the Sanctum of the Stars wants you to obtain 8 Sunfury Glaives from the Demon Hunter Supplicants and Demon Hunter Initiates at the Ruins of Karabor, northeast of the Sanctum of the Stars.
  kill Demon Hunter Supplicant##21179 |q 10687 |goto Shadowmoon Valley 68.74,53.05
step
  note Varen the Reclaimer wants you to go to the Ruins of Baa'ri and slay 3 Ashtongue Handlers, 4 Ashtongue Warriors and 6 Ashtongue Shaman.
  kill Ashtongue Handler##21803 |q 10807 |goto Shadowmoon Valley 57.71,36.86
step
  note Battlemage Vyara at the Sanctum of the Stars wants you to bring her 10 Sunfury Signets.
  get Sunfury Signets |q 10824 |goto Shadowmoon Valley 56.29,58.8
step
  note Bring 10 Marks of Sargeras to Harbinger Saronen in Shadowmoon Valley.
  kill Cyber-Rage Forgelord##16943 |q 10826 |goto Netherstorm 40.3,21.07
step
  note Wind Trader Zhareem has asked you to obtain a Warp Splinter Clipping. Deliver it to him in Shattrath's Lower City to collect the reward.
  get Wanted: A Warp Splinter Clipping |q 11384 |goto Shattrath City 75.13,36.65
step
  note Nether-Stalker Mah'duun wants you to kill 6 Sunseeker Channelers. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Sunseeker Channeler##19505 |q 11385
step
  note Wind Trader Zhareem has asked you to acquire Pathaleon's Projector. Deliver it to him in Shattrath's Lower City to collect the reward.
  get Wanted: Pathaleon's Projector |q 11386 |goto Shattrath City 75.13,36.65
step
  note Nether-Stalker Mah'duun wants you to destroy 5 Tempest-Forge Destroyers. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Tempest-Forge Destroyer##19735 |q 11387
step
  note Wind Trader Zhareem has asked you to obtain The Scroll of Skyriss. Deliver it to him in Shattrath's Lower City to collect the reward.
  get Wanted: The Scroll of Skyriss |q 11388 |goto Shattrath City 75.13,36.65
step
  note Nether-Stalker Mah'duun wants you to dismantle 5 Arcatraz Sentinels. Return to him in Shattrath's Lower City once that has been accomplished in order to collect the bounty.
  kill Arcatraz Sentinel##20869 |q 11389
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
  talk Arcanist Adyria##18596
  turnin Voren'thal's Visions##10024 |goto Shattrath City 54.98,22.54
step
  turnin Losing Gracefully##10169 |goto Shattrath City 61.47,51.09
step
  talk A'dal##18481
  turnin A'dal##10210 |goto Shattrath City 53.99,44.75
step
  talk Adyen the Lightwarden##18537
  turnin Marks of Kil'jaeden##10325 |goto Shattrath City 30.73,34.62
step
  talk Magistrix Fyalenn##18531
  turnin Firewing Signets##10412 |goto Shattrath City 45.2,81.44
step
  talk Scout Navrin##22364
  turnin Taken in the Night##10873 |goto Terokkar Forest 31.44,75.66
step
  talk Vindicator Haylen##22462
  turnin For the Fallen##10920 |goto Terokkar Forest 49.71,76.19
step
  talk Garrosh##18063
  turnin Message to Garadar##9934 |goto Nagrand 55.44,37.64
step
  talk Oakun##22456
  turnin The Dread Relic##10877 |goto Terokkar Forest 31.06,76.53
step
  talk Garrosh##18063
  turnin The Totem of Kar'dash##9868 |goto Nagrand 55.44,37.64
step
  talk Ramdor the Mad##19417
  turnin I See Dead Draenei##10227 |goto Terokkar Forest 35.15,66.24
step
  talk Exarch Orelis##19466
  turnin Assist Exarch Orelis##11038 |goto Netherstorm 32.07,64.18
step
  talk Altruis the Sufferer##18417
  turnin He Called Himself Altruis...##9983 |goto Nagrand 27.34,43.09
step
  talk Spymaster Thalodien##19468
  turnin Manaforge B'naar##10189 |goto Netherstorm 32.0,64.07
step
  turnin Naaru Technology##10243 |goto Netherstorm 23.21,68.25
step
  talk Nether-Stalker Khay'ji##19880
  turnin Assisting the Consortium##10263 |goto Netherstorm 32.44,64.21
step
  talk Voren'thal the Seer##18530
  turnin Synthesis of Power##10416 |goto Shattrath City 42.79,91.71
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
  talk Magistrix Fyalenn##18531
  turnin Sunfury Signets##10656 |goto Shattrath City 45.2,81.44
step
  talk Altruis the Sufferer##18417
  turnin Against the Illidari##10668 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Against All Odds##10669 |goto Nagrand 27.34,43.09
step
  talk Earthmender Torlok##21024
  turnin The Hand of Gul'dan##10681 |goto Shadowmoon Valley 42.19,45.06
step
  talk Arcanist Thelis##21955
  turnin Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.25,59.6
step
  talk Larissa Sunstrike##21954
  turnin Karabor Training Grounds##10687 |goto Shadowmoon Valley 55.73,58.17
step
  turnin The Journal of Val'zareq: Portends of War##10793 |goto Shadowmoon Valley 51.38,72.79
step
  talk Varen the Reclaimer##21953
  turnin The Ashtongue Broken##10807 |goto Shadowmoon Valley 54.73,58.19
step
  talk Battlemage Vyara##22211
  turnin Sunfury Signets##10824 |goto Shadowmoon Valley 56.29,58.8
step
  talk Harbinger Saronen##22214
  turnin Marks of Sargeras##10826 |goto Shadowmoon Valley 62.27,29.78
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: A Warp Splinter Clipping##11384 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Sunseeker Channelers##11385 |goto Shattrath City 75.5,37.24
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: Pathaleon's Projector##11386 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Tempest-Forge Destroyers##11387 |goto Shattrath City 75.5,37.24
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Scroll of Skyriss##11388 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Arcatraz Sentinels##11389 |goto Shattrath City 75.5,37.24
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
  talk Vindicator Haylen##22462
  accept Terokkarantula##10921 |goto Terokkar Forest 49.71,76.19
step
  talk Oakun##22456
  accept Evil Draws Near##10923 |goto Terokkar Forest 31.06,76.53
step
  talk Ramdor the Mad##19417
  accept Ezekiel##10228 |goto Terokkar Forest 35.15,66.24
step
  talk Altruis the Sufferer##18417
  accept Survey the Land##9991 |goto Nagrand 27.34,43.09
step
  talk Spymaster Thalodien##19468
  accept High Value Targets##10193 |goto Netherstorm 32.0,64.07
step
  talk Magistrix Larynna##19469
  accept Bloodgem Crystals##10204 |goto Netherstorm 32.05,64.0
step
  talk Exarch Orelis##19466
  accept Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.07,64.18
step
  talk Nether-Stalker Khay'ji##19880
  accept Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Magistrix Fyalenn##18531
  accept Single Firewing Signet##10414 |goto Shattrath City 45.2,81.44
step
  talk Magistrix Fyalenn##18531
  accept More Firewing Signets##10415 |goto Shattrath City 45.2,81.44
step
  talk Voren'thal the Seer##18530
  accept Arcane Tomes##10419 |goto Shattrath City 42.79,91.71
step
  talk Ishanah##18538
  accept Fel Armaments##10421 |goto Shattrath City 23.97,29.73
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley 42.19,45.06
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
  talk Magistrix Fyalenn##18531
  accept More Sunfury Signets##10658 |goto Shattrath City 45.2,81.44
step
  talk Magistrix Fyalenn##18531
  accept Single Sunfury Signet##10659 |goto Shattrath City 45.2,81.44
step
  talk Arcanist Thelis##21955
  accept Oronu the Elder##10684 |goto Shadowmoon Valley 56.25,59.6
step
  talk Larissa Sunstrike##21954
  accept A Necessary Distraction##10688 |goto Shadowmoon Valley 55.73,58.17
step
  talk Vindicator Aluumen##21822
  accept Reclaiming Holy Grounds##10816 |goto Shadowmoon Valley 61.17,29.14
step
  talk Varen the Reclaimer##21953
  accept The Great Retribution##10817 |goto Shadowmoon Valley 54.73,58.19
step
  talk Battlemage Vyara##22211
  accept Single Sunfury Signet##10822 |goto Shadowmoon Valley 56.29,58.8
step
  talk Battlemage Vyara##22211
  accept More Sunfury Signets##10823 |goto Shadowmoon Valley 56.29,58.8
step
  talk Harbinger Saronen##22214
  accept More Marks of Sargeras##10827 |goto Shadowmoon Valley 62.27,29.78
step
  talk Harbinger Saronen##22214
  accept Single Mark of Sargeras##10828 |goto Shadowmoon Valley 62.27,29.78
step
  kill Mo'arg Engineer##16945 |q 10326 |goto Nagrand 20.0,49.34
step
  kill Mo'arg Engineer##16945 |q 10327 |goto Nagrand 20.0,49.34
step
  note Vindicator Haylen wants you to kill the Terokkarantula and then return to him west of Netherweb Ridge.
  kill Terokkarantula##20682 |q 10921 |goto Terokkar Forest 54.27,81.82
step
  note Oakun wants you to take the Dread Relic to the Writhing Mound. Once there, kill Auchenai Death-Speakers and Auchenai Doomsayers to collect 20 Doom Skulls. Then find the Writhing Mound Summoning Circle and use the Dread Relic to summon and destroy Teribus the Cursed. Return to Oakun when the deed is done.
  kill Teribus the Cursed##22441 |q 10923 |goto Terokkar Forest 46.86,70.47
step
  note Spymaster Thalodien at Area 52 wants you to go to Manaforge B'naar and slay 2 Sunfury Warp-Masters, 6 Sunfury Warp-Engineers and 8 Sunfury Geologists.
  kill Sunfury Warp-Master##18857 |q 10193 |goto Netherstorm 23.85,70.92
step
  note Slay 8 Sunfury Magisters and 8 Sunfury Bloodwarders and return to Exarch Orelis at Area 52.
  kill Sunfury Magister##18855 |q 10241 |goto Netherstorm 25.07,68.25
step
  note Obtain an Arklon Crystal Artifact and return it to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  kill Pentatharon##20215 |q 10265 |goto Netherstorm 42.46,72.75
step
  kill Firewing Bloodwarder##1410 |q 10414 |goto Terokkar Forest 71.58,36.73
step
  kill Firewing Bloodwarder##1410 |q 10415 |goto Terokkar Forest 71.58,36.73
step
  kill Firewing Bloodwarder##1410 |q 10419 |goto Terokkar Forest 71.58,36.73
step
  kill Cyber-Rage Forgelord##16943 |q 10421 |goto Netherstorm 40.3,21.07
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 8 Earthen Souls and 8 Fiery Souls.
  get Enraged Spirits of Fire and Earth |q 10458 |goto Shadowmoon Valley 42.19,45.06
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
  get More Sunfury Signets |q 10658 |goto Shattrath City 45.2,81.44
step
  get Single Sunfury Signet |q 10659 |goto Shattrath City 45.2,81.44
step
  note Arcanist Thelis at the Sanctum of the Stars wants you to obtain the Orders from Akama from Oronu the Elder at the Ruins of Baa'ri.
  kill Oronu the Elder##21663 |q 10684 |goto Shadowmoon Valley 57.19,32.87
step
  note Larissa Sunstrike wants you to return to the Ruins of Karabor and find a way to unleash Azaloth on his captors.
  get A Necessary Distraction |q 10688 |goto Shadowmoon Valley 69.84,51.42
step
  note Vindicator Aluumen wants you to slay 8 Shadowmoon Slayers, 8 Shadowmoon Chosen and 4 Shadowmoon Darkweavers.
  kill Shadowmoon Slayer##22082 |q 10816 |goto Shadowmoon Valley 69.23,38.7
step
  note Varen the Reclaimer wants you to slay 8 Shadowmoon Slayers, 8 Shadowmoon Chosen and 4 Shadowmoon Darkweavers.
  kill Shadowmoon Slayer##22082 |q 10817 |goto Shadowmoon Valley 69.23,38.7
step
  get Single Sunfury Signet |q 10822 |goto Shadowmoon Valley 56.29,58.8
step
  get More Sunfury Signets |q 10823 |goto Shadowmoon Valley 56.29,58.8
step
  kill Cyber-Rage Forgelord##16943 |q 10827 |goto Netherstorm 40.3,21.07
step
  kill Cyber-Rage Forgelord##16943 |q 10828 |goto Netherstorm 40.3,21.07
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
  talk Vindicator Haylen##22462
  turnin Terokkarantula##10921 |goto Terokkar Forest 49.71,76.19
step
  talk Oakun##22456
  turnin Evil Draws Near##10923 |goto Terokkar Forest 31.06,76.53
step
  talk Ezekiel##19715
  turnin Ezekiel##10228 |goto Shattrath City 49.12,35.9
step
  talk Altruis the Sufferer##18417
  turnin Survey the Land##9991 |goto Nagrand 27.34,43.09
step
  talk Spymaster Thalodien##19468
  turnin High Value Targets##10193 |goto Netherstorm 32.0,64.07
step
  talk Magistrix Larynna##19469
  turnin Bloodgem Crystals##10204 |goto Netherstorm 32.05,64.0
step
  talk Exarch Orelis##19466
  turnin Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Karja##19467
  turnin B'naar Console Transcription##10245 |goto Netherstorm 32.04,64.18
step
  talk Nether-Stalker Khay'ji##19880
  turnin Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Magistrix Fyalenn##18531
  turnin Single Firewing Signet##10414 |goto Shattrath City 45.2,81.44
step
  talk Magistrix Fyalenn##18531
  turnin More Firewing Signets##10415 |goto Shattrath City 45.2,81.44
step
  talk Voren'thal the Seer##18530
  turnin Arcane Tomes##10419 |goto Shattrath City 42.79,91.71
step
  talk Ishanah##18538
  turnin Fel Armaments##10421 |goto Shattrath City 23.97,29.73
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley 42.19,45.06
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
  talk Magistrix Fyalenn##18531
  turnin More Sunfury Signets##10658 |goto Shattrath City 45.2,81.44
step
  talk Magistrix Fyalenn##18531
  turnin Single Sunfury Signet##10659 |goto Shattrath City 45.2,81.44
step
  talk Arcanist Thelis##21955
  turnin Oronu the Elder##10684 |goto Shadowmoon Valley 56.25,59.6
step
  talk Larissa Sunstrike##21954
  turnin A Necessary Distraction##10688 |goto Shadowmoon Valley 55.73,58.17
step
  talk A'dal##18481
  turnin Battle of the Crimson Watch##10781 |goto Shattrath City 53.99,44.75
step
  talk Vindicator Aluumen##21822
  turnin Reclaiming Holy Grounds##10816 |goto Shadowmoon Valley 61.17,29.14
step
  talk Varen the Reclaimer##21953
  turnin The Great Retribution##10817 |goto Shadowmoon Valley 54.73,58.19
step
  talk Battlemage Vyara##22211
  turnin Single Sunfury Signet##10822 |goto Shadowmoon Valley 56.29,58.8
step
  talk Battlemage Vyara##22211
  turnin More Sunfury Signets##10823 |goto Shadowmoon Valley 56.29,58.8
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
  talk Khadgar##18166
  accept Allegiance to the Scryers##10552 |goto Shattrath City 54.75,44.32
step
  talk Vindicator Haylen##22462
  accept Return to Sha'tari Base Camp##10926 |goto Terokkar Forest 49.71,76.19
step
  talk Ezekiel##19715
  accept What Book? I Don't See Any Book.##10231 |goto Shattrath City 49.12,35.9
step
  talk Altruis the Sufferer##18417
  accept Buying Time##9999 |goto Nagrand 27.34,43.09
step
  talk Nether-Stalker Khay'ji##19880
  accept A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge B'naar##10299 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  accept Measuring Warp Energies##10313 |goto Netherstorm 32.07,64.18
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32.0,64.07
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Water##10480 |goto Shadowmoon Valley 42.19,45.06
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
  talk Arcanist Thelis##21955
  accept The Ashtongue Corruptors##10685 |goto Shadowmoon Valley 56.25,59.6
step
  talk Larissa Sunstrike##21954
  accept Altruis##10689 |goto Shadowmoon Valley 55.73,58.17
step
  note Altruis the Sufferer in western Nagrand has asked that you kill 2 Felguard Legionnaires, 3 Mo'arg Engineers and 8 Gan'arg Tinkerers.
  kill Felguard Legionnaire##17152 |q 9999 |goto Nagrand 21.39,42.9
step
  note Collect 10 Zaxxis Insignias and return them to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  kill Zaxxis Raider##18875 |q 10262 |goto Netherstorm 30.13,76.56
step
  note Return to Manaforge B'naar and obtain the B'naar Access Crystal from Overseer Theredis. Use it at the Manaforge B'naar console to shut it down and report back to Anchorite Karja.
  kill B'naar Control Console##20209 |q 10299
step
  note Exarch Orelis in Area 52 wants you to take the Warp-Attuned Orb to Manaforge B'naar and use it at the end of its four pipelines.
  get Measuring Warp Energies |q 10313 |goto Netherstorm 25.68,60.26
step
  note Return to Manaforge B'naar and obtain the B'naar Access Crystal from Overseer Theredis. Use it at the B'naar Control Console to shut it down, then report back to Spymaster Thalodien.
  kill B'naar Control Console##20209 |q 10329
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 5 Watery Souls.
  get Enraged Spirits of Water |q 10480 |goto Shadowmoon Valley 42.19,45.06
step
  note Obtain the four medallion fragments from Haalum, Eykenen, Lakaan and Uylaru and return to Anchorite Ceyla at the Altar of Sha'tar in Shadowmoon Valley.
  kill Eykenen##21709 |q 10574 |goto Shadowmoon Valley 51.18,52.82
step
  note Venture inside the Shadow Labyrinth in Auchindoun and obtain the Book of Fel Names from Blackheart the Inciter. Return to Altruis in Nagrand once you've completed this task.
  kill Blackheart the Inciter##18667 |q 10649 |goto Shadow Labyrinth - Dungeon -1,-1
step
  note Obtain the four medallion fragments from Haalum, Eykenen, Lakaan and Uylaru and return to Arcanist Thelis at the Sanctum of the Stars in Shadowmoon Valley.
  kill Eykenen##21709 |q 10685 |goto Shadowmoon Valley 51.18,52.82
step
  talk Khadgar##18166
  turnin Allegiance to the Aldor##10551 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  turnin Allegiance to the Scryers##10552 |goto Shattrath City 54.75,44.32
step
  talk Scout Navrin##22364
  turnin Return to Sha'tari Base Camp##10926 |goto Terokkar Forest 31.44,75.66
step
  talk "Dirty" Larry##19720
  turnin What Book? I Don't See Any Book.##10231 |goto Shattrath City 43.63,29.76
step
  talk Altruis the Sufferer##18417
  turnin Buying Time##9999 |goto Nagrand 27.34,43.09
step
  talk Nether-Stalker Khay'ji##19880
  turnin A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge B'naar##10299 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  turnin Measuring Warp Energies##10313 |goto Netherstorm 32.07,64.18
step
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32.0,64.07
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Water##10480 |goto Shadowmoon Valley 42.19,45.06
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
  talk Arcanist Thelis##21955
  turnin The Ashtongue Corruptors##10685 |goto Shadowmoon Valley 56.25,59.6
step
  talk Altruis the Sufferer##18417
  turnin Altruis##10689 |goto Nagrand 27.34,43.09
step
  talk Khadgar##18166
  accept Voren'thal the Seer##10553 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept Ishanah##10554 |goto Shattrath City 54.75,44.32
step
  talk "Dirty" Larry##19720
  accept The Master's Grand Design?##10251 |goto Shattrath City 43.63,29.76
step
  talk Altruis the Sufferer##18417
  accept The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  talk Spymaster Thalodien##19468
  accept Stealth Flight##10194 |goto Netherstorm 32.0,64.07
step
  talk Exarch Orelis##19466
  accept Attack on Manaforge Coruu##10246 |goto Netherstorm 32.07,64.18
step
  talk Nether-Stalker Khay'ji##19880
  accept Warp-Raider Nesaad##10205 |goto Netherstorm 32.44,64.21
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Coruu##10321 |goto Netherstorm 32.04,64.18
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Air##10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Anchorite Ceyla##21402
  accept The Warden's Cage##10575 |goto Shadowmoon Valley 62.58,28.38
step
  talk Altruis the Sufferer##18417
  accept Return to the Aldor##10650 |goto Nagrand 27.34,43.09
step
  talk Arcanist Thelis##21955
  accept The Warden's Cage##10686 |goto Shadowmoon Valley 56.25,59.6
step
  talk Altruis the Sufferer##18417
  accept Return to the Scryers##10691 |goto Nagrand 27.34,43.09
step
  note Altruis the Sufferer in western Nagrand has asked that you recover the Master Planner's Blueprints.
  kill Mo'arg Master Planner##18567 |q 10001 |goto Nagrand 23.61,50.33
step
  note Travel to Manaforge Coruu and slay 8 Sunfury Arcanists and 5 Sunfury Researchers. Return to Exarch Orelis when you've completed this task.
  kill Sunfury Researcher##20136 |q 10246 |goto Netherstorm 53.02,83.05
step
  note Kill Warp-Raider Nesaad and then return to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  kill Warp-Raider Nesaad##19641 |q 10205 |goto Netherstorm 28.36,79.45
step
  note Travel to Manaforge Coruu, east of Area 52, and obtain the Coruu Access Crystal from Overseer Seylanna. Use it at the Manaforge Coruu Console to shut it down and return to Anchorite Karja.
  kill Coruu Control Console##20417 |q 10321
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 10 Airy Souls.
  get Enraged Spirits of Air |q 10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Voren'thal the Seer##18530
  turnin Voren'thal the Seer##10553 |goto Shattrath City 42.79,91.71
step
  talk Ishanah##18538
  turnin Ishanah##10554 |goto Shattrath City 23.97,29.73
step
  talk Nitrin the Learned##19844
  turnin The Master's Grand Design?##10251 |goto Nagrand 51.82,56.84
step
  talk Altruis the Sufferer##18417
  turnin The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  talk Veronia##20162
  turnin Stealth Flight##10194 |goto Netherstorm 33.81,64.23
step
  talk Exarch Orelis##19466
  turnin Attack on Manaforge Coruu##10246 |goto Netherstorm 32.07,64.18
step
  talk Nether-Stalker Khay'ji##19880
  turnin Warp-Raider Nesaad##10205 |goto Netherstorm 32.44,64.21
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Coruu##10321 |goto Netherstorm 32.04,64.18
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Air##10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Sanoru##21826
  turnin The Warden's Cage##10575 |goto Shadowmoon Valley 57.33,49.58
step
  talk Exarch Onaala##21860
  turnin Return to the Aldor##10650 |goto Shadowmoon Valley 61.2,29.23
step
  talk Sanoru##21826
  turnin The Warden's Cage##10686 |goto Shadowmoon Valley 57.33,49.58
step
  talk Larissa Sunstrike##21954
  turnin Return to the Scryers##10691 |goto Shadowmoon Valley 55.73,58.17
step
  talk Nitrin the Learned##19844
  accept Vision of the Dead##10252 |goto Nagrand 51.82,56.84
step
  talk Altruis the Sufferer##18417
  accept Patience and Understanding##10004 |goto Nagrand 27.34,43.09
step
  talk Nether-Stalker Khay'ji##19880
  accept Request for Assistance##10266 |goto Netherstorm 32.44,64.21
step
  talk Veronia##20162
  accept Behind Enemy Lines##10652 |goto Netherstorm 33.81,64.23
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Duro##10322 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  accept Sunfury Briefings##10328 |goto Netherstorm 32.07,64.18
step
  talk Earthmender Torlok##21024
  accept Oronok Torn-heart##10513 |goto Shadowmoon Valley 42.19,45.06
step
  talk Sanoru##21826
  accept Proof of Allegiance##10622 |goto Shadowmoon Valley 57.33,49.58
step
  talk Exarch Onaala##21860
  accept Varedis Must Be Stopped##10651 |goto Shadowmoon Valley 61.2,29.23
step
  talk Larissa Sunstrike##21954
  accept Varedis Must Be Stopped##10692 |goto Shadowmoon Valley 55.73,58.17
step
  note Nitrin at the Abandoned Armory in Nagrand wants you to bring him 1 Mountain Gronn Eyeball, 1 Flawless Greater Windroc Beak, and 1 Aged Clefthoof Blubber.
  kill Mountain Gronn##19201 |q 10252 |goto Nagrand 27.22,42.14
step
  note Anchorite Karja wants you to go Manaforge Duro and obtain the Duro Access Crystal from Overseer Athanel. Use it at the Manaforge Duro Console to shut it down.
  kill Duro Control Console##20418 |q 10322
step
  note Go to Manaforge Duro and retrieve the Sunfury Military Briefing and the Sunfury Arcane Briefing from the Sunfury units stationed there. Return to Exarch Orellis when you've completed this task.
  kill Sunfury Centurion##20140 |q 10328 |goto Netherstorm 59.3,66.49
step
  note Slay Zandras at the Warden's Cage in Shadowmoon Valley and return to Sanoru.
  kill Zandras##21827 |q 10622 |goto Shadowmoon Valley 58.03,49.13
step
  note Exarch Onaala wants you to go to the ruins of Karabor and slay Alandien, Theras, Netharel and Varedis. Use the Book of Fel Names when Varedis uses Metamorphosis to weaken him. Return to Exarch Onaala with the Book of Fel Names after you've completed this task.
  kill Varedis##21178 |q 10651 |goto Shadowmoon Valley 72.16,53.67
step
  note Larissa Sunstrike wants you to go to the ruins of Karabor and slay Alandien, Theras, Netharel and Varedis. Use the Book of Fel Names when Varedis uses Metamorphosis to weaken him. Return to Larissa Sunstrike with the Book of Fel Names after completing this task.
  kill Varedis##21178 |q 10692 |goto Shadowmoon Valley 72.16,53.67
step
  talk Nitrin the Learned##19844
  turnin Vision of the Dead##10252 |goto Nagrand 51.82,56.84
step
  talk Sal'salabim##18584
  turnin Patience and Understanding##10004 |goto Shattrath City 77.26,34.85
step
  talk Gahruj##20066
  turnin Request for Assistance##10266 |goto Netherstorm 46.67,56.95
step
  talk Caledis Brightdawn##19840
  turnin Behind Enemy Lines##10652 |goto Netherstorm 48.24,86.6
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Duro##10322 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  turnin Sunfury Briefings##10328 |goto Netherstorm 32.07,64.18
step
  talk Oronok Torn-heart##21183
  turnin Oronok Torn-heart##10513 |goto Shadowmoon Valley 53.95,23.52
step
  talk Sanoru##21826
  turnin Proof of Allegiance##10622 |goto Shadowmoon Valley 57.33,49.58
step
  talk Exarch Onaala##21860
  turnin Varedis Must Be Stopped##10651 |goto Shadowmoon Valley 61.2,29.23
step
  talk Larissa Sunstrike##21954
  turnin Varedis Must Be Stopped##10692 |goto Shadowmoon Valley 55.73,58.17
step
  talk Nitrin the Learned##19844
  accept Levixus the Soul Caller##10253 |goto Nagrand 51.82,56.84
step
  talk Sal'salabim##18584
  accept Crackin' Some Skulls##10009 |goto Shattrath City 77.26,34.85
step
  talk Caledis Brightdawn##19840
  accept A Convincing Disguise##10197 |goto Netherstorm 48.24,86.6
step
  talk Gahruj##20066
  accept Rightful Repossession##10267 |goto Netherstorm 46.67,56.95
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Ara##10323 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  accept Outside Assistance##10431 |goto Netherstorm 32.07,64.18
step
  talk Oronok Torn-heart##21183
  accept I Was A Lot Of Things...##10514 |goto Shadowmoon Valley 53.95,23.52
step
  talk Sanoru##21826
  accept Akama##10628 |goto Shadowmoon Valley 57.33,49.58
step
  note Destroy Levixus and take the Book of the Dead from his possession.
  kill Levixus##19847 |q 10253 |goto Terokkar Forest 39.63,71.27
step
  note Sal'salabim at Shattrath City wants you to recover Raliq's Debt, Coosh'coosh's Debt and Floon's Debt.
  kill Raliq the Drunk##18585 |q 10009 |goto Shattrath City 74.99,31.4
step
  note Obtain a set of Sunfury Arcanist Robes, one pair of Sunfury Researcher Gloves and a Sunfury Guardsman Medallion and bring them to Caledis Brightdawn at Manaforge Coruu in Netherstorm.
  kill Sunfury Researcher##20136 |q 10197 |goto Netherstorm 53.02,83.05
step
  note Collect 10 Boxes of Surveying Equipment and return them to Gahruj at the Midrealm Post inside Eco-Dome Midrealm in the Netherstorm.
  collect Box of Surveying Equipment##184031 |q 10267 |goto Netherstorm 58.82,65.76
step
  note Travel to Manaforge Ara and obtain the Ara Access Crystal from Overseer Azarad. Use it at the Manaforge Ara console to shut it down.
  kill Ara Control Console##20440 |q 10323
step
  note Oronok Torn-heart at Oronok's Farm in Shadowmoon Valley wants you to recover 10 Shadowmoon Tubers from the Shattered Plains.
  get I Was A Lot Of Things... |q 10514 |goto Shadowmoon Valley 53.95,23.52
step
  talk Ramdor the Mad##19417
  turnin Levixus the Soul Caller##10253 |goto Terokkar Forest 35.15,66.24
step
  talk Sal'salabim##18584
  turnin Crackin' Some Skulls##10009 |goto Shattrath City 77.26,34.85
step
  talk Caledis Brightdawn##19840
  turnin A Convincing Disguise##10197 |goto Netherstorm 48.24,86.6
step
  talk Gahruj##20066
  turnin Rightful Repossession##10267 |goto Netherstorm 46.67,56.95
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Ara##10323 |goto Netherstorm 32.04,64.18
step
  talk Kaylaan##20780
  turnin Outside Assistance##10431 |goto Netherstorm 34.8,38.3
step
  talk Oronok Torn-heart##21183
  turnin I Was A Lot Of Things...##10514 |goto Shadowmoon Valley 53.95,23.52
step
  talk Akama##21700
  turnin Akama##10628 |goto Shadowmoon Valley 58.11,48.18
step
  talk Greatfather Aldrimus##19698
  accept Everything Will Be Alright##10164 |goto Terokkar Forest 35.08,65.15
step
  talk Sal'salabim##18584
  accept It's Just That Easy?##10010 |goto Shattrath City 77.26,34.85
step
  talk Caledis Brightdawn##19840
  accept Information Gathering##10198 |goto Netherstorm 48.24,86.6
step
  talk Gahruj##20066
  accept An Audience with the Prince##10268 |goto Netherstorm 46.67,56.95
step
  talk Kaylaan##20780
  accept A Dark Pact##10380 |goto Netherstorm 34.8,38.3
step
  talk Oronok Torn-heart##21183
  accept A Lesson Learned##10515 |goto Shadowmoon Valley 53.95,23.52
step
  talk Akama##21700
  accept Seer Udalo##10705 |goto Shadowmoon Valley 58.11,48.18
step
  note Greatfather Aldrimus standing outside the Auchenai Crypts of Auchindoun has asked that you enter the Auchenai Crypts and destroy Exarch Maladaar.
  kill Exarch Maladaar##18373 |q 10164 |goto Auchenai Crypts - Dungeon -1,-1
step
  note Kaylaan at Tuluman's Landing in Netherstorm wants you to slay 6 Gan'arg Warp-Tinkers, 3 Daughters of Destiny and 3 Mo'arg Warp-Masters.
  kill Gan'arg Warp-Tinker##20285 |q 10380 |goto Netherstorm 26.67,41.4
step
  note Oronok Torn-heart at Oronok's Farm in Shadowmoon Valley wants you to destroy 10 Ravenous Flayer Eggs on the Shattered Plains.
  collect Ravenous Flayer Egg##184684 |q 10515 |goto Shadowmoon Valley 56.78,16.14
step
  talk Greatfather Aldrimus##19698
  turnin Everything Will Be Alright##10164 |goto Terokkar Forest 35.08,65.15
step
  talk Altruis the Sufferer##18417
  turnin It's Just That Easy?##10010 |goto Nagrand 27.34,43.09
step
  talk Caledis Brightdawn##19840
  turnin Information Gathering##10198 |goto Netherstorm 48.24,86.6
step
  talk Image of Nexus-Prince Haramad##20084
  turnin An Audience with the Prince##10268 |goto Netherstorm 45.87,35.96
step
  talk Kaylaan##20780
  turnin A Dark Pact##10380 |goto Netherstorm 34.8,38.3
step
  talk Oronok Torn-heart##21183
  turnin A Lesson Learned##10515 |goto Shadowmoon Valley 53.95,23.52
step
  talk Udalo##21962
  turnin Seer Udalo##10705
step
  talk Altruis the Sufferer##18417
  accept Forge Camp: Annihilated##10011 |goto Nagrand 27.34,43.09
step
  talk Image of Nexus-Prince Haramad##20084
  accept Triangulation Point One##10269 |goto Netherstorm 45.87,35.96
step
  talk Caledis Brightdawn##19840
  accept Shutting Down Manaforge Coruu##10330 |goto Netherstorm 48.24,86.6
step
  talk Kaylaan##20780
  accept Aldor No More##10381 |goto Netherstorm 34.8,38.3
step
  talk Oronok Torn-heart##21183
  accept The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley 53.95,23.52
step
  talk Udalo##21962
  accept A Mysterious Portent##10706
step
  note Altruis the Sufferer in western Nagrand has asked that you Destroy Forge Camp: Hate and Destroy Forge Camp: Fear.
  kill Fel Cannon: Hate##19067 |q 10011 |goto Nagrand 25.1,35.98
step
  note Obtain the Coruu Access Crystal from Overseer Seylanna. Use it at the Coruu Control Console to shut down the manaforge and return to Caledis Brightdawn.
  kill Coruu Control Console##20417 |q 10330
step
  talk Altruis the Sufferer##18417
  turnin Forge Camp: Annihilated##10011 |goto Nagrand 27.34,43.09
step
  talk Dealer Hazzin##20092
  turnin Triangulation Point One##10269 |goto Netherstorm 58.35,31.26
step
  talk Caledis Brightdawn##19840
  turnin Shutting Down Manaforge Coruu##10330 |goto Netherstorm 48.24,86.6
step
  talk Exarch Orelis##19466
  turnin Aldor No More##10381 |goto Netherstorm 32.07,64.18
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley 53.95,23.52
step
  talk Akama##21700
  turnin A Mysterious Portent##10706 |goto Shadowmoon Valley 58.11,48.18
step
  talk Garrosh##18063
  accept A Visit With the Greatmother##10044 |goto Nagrand 55.44,37.64
step
  talk Caledis Brightdawn##19840
  accept Return to Thalodien##10200 |goto Netherstorm 48.24,86.6
step
  talk Dealer Hazzin##20092
  accept Triangulation Point Two##10275 |goto Netherstorm 58.35,31.26
step
  talk Magistrix Larynna##19469
  accept Kick Them While They're Down##10341 |goto Netherstorm 32.05,64.0
step
  talk Anchorite Karja##19467
  accept Socrethar's Shadow##10407 |goto Netherstorm 32.04,64.18
step
  talk Oronok Torn-heart##21183
  accept Grom'tor, Son of Oronok##10521 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept Ar'tor, Son of Oronok##10527 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept Borak, Son of Oronok##10546 |goto Shadowmoon Valley 53.95,23.52
step
  talk Akama##21700
  accept The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.11,48.18
step
  note Slay 8 Sunfury Conjurers, 6 Sunfury Bowmen and 4 Sunfury Centurions. Return to Magistrix Larynna at Area 52 after completing this task.
  kill Sunfury Conjurer##20139 |q 10341 |goto Netherstorm 57.97,63.5
step
  note Anchorite Karja at Area 52 wants you to obtain the First Half of Socrethar's Stone from Forgemaster Morug at Forge Base: Oblivion and the Second Half of Socrethar's Stone from Silroth at Forge Base: Gehenna.
  kill Forgemaster Morug##20800 |q 10407 |goto Netherstorm 36.15,26.43
step
  note Go to the top of the Atam'al Terrace in Shadowmoon Valley and obtain the Heart of Fury. Return to Akama at the Warden's Cage in Shadowmoon Valley when you've completed this task.
  kill Shadowlord Deathwail##22006 |q 10707 |goto Shadowmoon Valley 72.33,34.83
step
  talk Greatmother Geyah##18141
  turnin A Visit With the Greatmother##10044 |goto Nagrand 56.7,34.31
step
  talk Spymaster Thalodien##19468
  turnin Return to Thalodien##10200 |goto Netherstorm 32.0,64.07
step
  talk Wind Trader Tuluman##20112
  turnin Triangulation Point Two##10275 |goto Netherstorm 34.62,37.95
step
  talk Magistrix Larynna##19469
  turnin Kick Them While They're Down##10341 |goto Netherstorm 32.05,64.0
step
  talk Anchorite Karja##19467
  turnin Socrethar's Shadow##10407 |goto Netherstorm 32.04,64.18
step
  talk Grom'tor, Son of Oronok##21291
  turnin Grom'tor, Son of Oronok##10521 |goto Shadowmoon Valley 44.62,23.66
step
  talk Ar'tor, Son of Oronok##21292
  turnin Ar'tor, Son of Oronok##10527 |goto Shadowmoon Valley 29.63,50.4
step
  talk Borak, Son of Oronok##21293
  turnin Borak, Son of Oronok##10546 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  turnin The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.11,48.18
step
  talk Greatmother Geyah##18141
  accept Material Components##10045 |goto Nagrand 56.7,34.31
step
  talk Magistrix Larynna##19469
  accept A Defector##10202 |goto Netherstorm 32.05,64.0
step
  talk Wind Trader Tuluman##20112
  accept Full Triangle##10276 |goto Netherstorm 34.62,37.95
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge Duro##10338 |goto Netherstorm 32.0,64.07
step
  talk Anchorite Karja##19467
  accept Ishanah's Help##10410 |goto Netherstorm 32.04,64.18
step
  talk Grom'tor, Son of Oronok##21291
  accept The Cipher of Damnation - Grom'tor's Charge##10522 |goto Shadowmoon Valley 44.62,23.66
step
  talk Ar'tor, Son of Oronok##21292
  accept Demonic Crystal Prisons##10528 |goto Shadowmoon Valley 29.63,50.4
step
  talk Borak, Son of Oronok##21293
  accept Of Thistleheads and Eggs...##10547 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  accept Akama's Promise##10708 |goto Shadowmoon Valley 58.11,48.18
step
  note Greatmother Geyah at Garadar in Nagrand has asked that you collect 1 Olemba Root, 1 Marshberry, 1 Telaari Frond and 1 Dragonspine.
  collect Olemba Root##182601 |q 10045 |goto Terokkar Forest 37.69,34.03
step
  note Recover the Ata'mal Crystal and deliver it to the Image of Nexus-Prince Haramad at the Stormspire in the Netherstorm.
  kill Culuthas##20138 |q 10276 |goto Netherstorm 53.51,21.53
step
  note Return to Manaforge Duro and obtain the Duro Access Crystal from Overseer Athanel. Use it at the Duro Control Console to shut it down and report back to Spymaster Thalodien.
  kill Duro Control Console##20418 |q 10338
step
  note Grom'tor, Son of Oronok at Coilskar Point in Shadowmoon Valley wants you to recover the First Fragment of the Cipher of Damnation.
  collect Coilskar Chest##184716 |q 10522 |goto Shadowmoon Valley 47.92,26.7
step
  note Seek out and slay Painmistress Gabrissa at Illidari Point and return to the corpse of Ar'tor, Son of Oronok with the Crystalline Key.
  kill Painmistress Gabrissa##21309 |q 10528 |goto Shadowmoon Valley 28.3,47.61
step
  note Borak, Son of Oronok at the bridge north of Eclipse Point wants you to find a Rotten Arakkoa Egg and deliver it to Tobias the Filth Gorger in Shattrath City, located in northwest Terokkar Forest.
  collect Rotten Arakkoa Egg##184795 |q 10547 |goto Shadowmoon Valley 44.15,57.51
step
  talk Greatmother Geyah##18141
  turnin Material Components##10045 |goto Nagrand 56.7,34.31
step
  talk Magister Theledorn##20920
  turnin A Defector##10202 |goto Netherstorm 26.19,41.57
step
  talk Image of Nexus-Prince Haramad##20084
  turnin Full Triangle##10276 |goto Netherstorm 45.87,35.96
step
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge Duro##10338 |goto Netherstorm 32.0,64.07
step
  talk Ishanah##18538
  turnin Ishanah's Help##10410 |goto Shattrath City 23.97,29.73
step
  talk Grom'tor, Son of Oronok##21291
  turnin The Cipher of Damnation - Grom'tor's Charge##10522 |goto Shadowmoon Valley 44.62,23.66
step
  talk Ar'tor, Son of Oronok##21292
  turnin Demonic Crystal Prisons##10528 |goto Shadowmoon Valley 29.63,50.4
step
  talk Tobias the Filth Gorger##21411
  turnin Of Thistleheads and Eggs...##10547 |goto Shattrath City 63.95,70.03
step
  talk A'dal##18481
  turnin Akama's Promise##10708 |goto Shattrath City 53.99,44.75
step
  talk Greatmother Geyah##18141
  accept To Meet Mother Kashur##10081 |goto Nagrand 56.7,34.31
step
  talk Image of Nexus-Prince Haramad##20084
  accept Special Delivery to Shattrath City##10280 |goto Netherstorm 45.87,35.96
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge Ara##10365 |goto Netherstorm 32.0,64.07
step
  talk Ishanah##18538
  accept Deathblow to the Legion##10409 |goto Shattrath City 23.97,29.73
step
  talk Magister Theledorn##20920
  accept Damning Evidence##10432 |goto Netherstorm 26.19,41.57
step
  talk Grom'tor, Son of Oronok##21291
  accept The Cipher of Damnation - The First Fragment Recovered##10523 |goto Shadowmoon Valley 44.62,23.66
step
  talk Spirit of Ar'tor##21318
  accept Lohn'goron, Bow of the Torn-heart##10537 |goto Shadowmoon Valley 29.53,50.52
step
  talk Tobias the Filth Gorger##21411
  accept The Bundle of Bloodthistle##10550 |goto Shattrath City 63.95,70.03
step
  note Travel to Manaforge Ara and obtain the Ara Access Crystal from Overseer Azarad. Use it at the Manaforge Ara console to shut it down.
  kill Ara Control Console##20440 |q 10365
step
  note Obtain 8 Orders from Kael'thas from demons at Manaforge Ara and bring them to Spymaster Thalodien in Area 52.
  kill Daughter of Destiny##18860 |q 10432 |goto Netherstorm 29.39,42.28
step
  note The Spirit of Ar'tor at Illidari Point in Shadowmoon Valley wants you to recover Lohn'goron, Bow of the Torn-heart from the demons of the area.
  kill Illidari Dreadbringer##19799 |q 10537 |goto Shadowmoon Valley 31.44,55.67
step
  talk Mother Kashur##18687
  turnin To Meet Mother Kashur##10081 |goto Nagrand 26.07,60.6
step
  talk A'dal##18481
  turnin Special Delivery to Shattrath City##10280 |goto Shattrath City 53.99,44.75
step
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge Ara##10365 |goto Netherstorm 32.0,64.07
step
  talk Ishanah##18538
  turnin Deathblow to the Legion##10409 |goto Shattrath City 23.97,29.73
step
  talk Spymaster Thalodien##19468
  turnin Damning Evidence##10432 |goto Netherstorm 32.0,64.07
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The First Fragment Recovered##10523 |goto Shadowmoon Valley 53.95,23.52
step
  talk Spirit of Ar'tor##21318
  turnin Lohn'goron, Bow of the Torn-heart##10537 |goto Shadowmoon Valley 29.53,50.52
step
  talk Borak, Son of Oronok##21293
  turnin The Bundle of Bloodthistle##10550 |goto Shadowmoon Valley 47.56,57.18
step
  talk Mother Kashur##18687
  accept The Agitated Ancestors##10082 |goto Nagrand 26.07,60.6
step
  talk Spymaster Thalodien##19468
  accept A Gift for Voren'thal##10508 |goto Netherstorm 32.0,64.07
step
  talk Spirit of Ar'tor##21318
  accept The Cipher of Damnation - Ar'tor's Charge##10540 |goto Shadowmoon Valley 29.53,50.52
step
  talk Borak, Son of Oronok##21293
  accept To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.56,57.18
step
  talk A'dal##18481
  accept How to Break Into the Arcatraz##10704 |goto Shattrath City 53.99,44.75
step
  note Mother Kashur has asked that you put to rest 15 Agitated Orc Spirits.
  kill Agitated Orc Spirit##18043 |q 10082 |goto Nagrand 26.61,60.82
step
  note Spymaster Thalodien at Area 52 wants you to obtain the First Half of Socrethar's Stone from Forgemaster Morug at Forge Base: Oblivion and the Second Half of Socrethar's Stone from Silroth at Forge Base: Gehenna.
  kill Forgemaster Morug##20800 |q 10508 |goto Netherstorm 36.15,26.43
step
  note The Spirit of Ar'tor at Illidari Point in Shadowmoon Valley wants you to recover the Second Fragment of the Cipher of Damnation from Veneratus the Many.
  get The Cipher of Damnation - Ar'tor's Charge |q 10540 |goto Shadowmoon Valley 29.53,50.52
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover the Stormrage Missive.
  get To Catch A Thistlehead |q 10570 |goto Shadowmoon Valley 47.56,57.18
step
  note A'dal has tasked you with the recovery of the Top and Bottom Shards of the Arcatraz Key. Return them to him, and he will fashion them into the Key to the Arcatraz for you.
  get How to Break Into the Arcatraz |q 10704 |goto Shattrath City 53.99,44.75
step
  talk Mother Kashur##18687
  turnin The Agitated Ancestors##10082 |goto Nagrand 26.07,60.6
step
  talk Spymaster Thalodien##19468
  turnin A Gift for Voren'thal##10508 |goto Netherstorm 32.0,64.07
step
  talk Spirit of Ar'tor##21318
  turnin The Cipher of Damnation - Ar'tor's Charge##10540 |goto Shadowmoon Valley 29.53,50.52
step
  talk Borak, Son of Oronok##21293
  turnin To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.56,57.18
step
  talk A'dal##18481
  turnin How to Break Into the Arcatraz##10704 |goto Shattrath City 53.99,44.75
step
  talk Mother Kashur##18687
  accept A Visit With The Ancestors##10085 |goto Nagrand 26.07,60.6
step
  talk Spymaster Thalodien##19468
  accept Bound for Glory##10509 |goto Netherstorm 32.0,64.07
step
  talk Spirit of Ar'tor##21318
  accept The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley 29.53,50.52
step
  talk Borak, Son of Oronok##21293
  accept The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.56,57.18
step
  talk A'dal##18481
  accept Harbinger of Doom##10882 |goto Shattrath City 53.99,44.75
step
  note Mother Kashur at the Ancestral Grounds in Nagrand has asked that you Visit Sunspring Post, Visit Laughing Skull Ruins, Visit Garadar and Visit Bleeding Hollow Ruins.
  get A Visit With The Ancestors |q 10085 |goto Nagrand 32.2,42.99
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover 6 pieces of Eclipsion Armor.
  kill Eclipsion Centurion##19792 |q 10576 |goto Shadowmoon Valley 47.18,67.6
step
  note You have been tasked to go to Tempest Keep's Arcatraz satellite and slay Harbinger Skyriss. Return to A'dal at the Terrace of Light in Shattrath City after you have done so.
  kill Harbinger Skyriss##20912 |q 10882
step
  talk Mother Kashur##18687
  turnin A Visit With The Ancestors##10085 |goto Nagrand 26.07,60.6
step
  talk Voren'thal the Seer##18530
  turnin Bound for Glory##10509 |goto Shattrath City 42.79,91.71
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley 53.95,23.52
step
  talk Borak, Son of Oronok##21293
  turnin The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.56,57.18
step
  talk A'dal##18481
  turnin Harbinger of Doom##10882 |goto Shattrath City 53.99,44.75
step
  talk Mother Kashur##18687
  accept When Spirits Speak##10101 |goto Nagrand 26.07,60.6
step
  talk Voren'thal the Seer##18530
  accept Turning Point##10507 |goto Shattrath City 42.79,91.71
step
  talk Borak, Son of Oronok##21293
  accept What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.56,57.18
step
  note Use Socrethar's Teleportation's Stone at Invasion Point: Overlord, north of Forge Base: Oblivion to transport your party to Socrethar's Landing. Once there, use Voren'thal's Presence to defeat Socrethar.
  kill Socrethar##20132 |q 10507 |goto Netherstorm 29.31,13.7
step
  talk K'ure##17545
  turnin When Spirits Speak##10101 |goto Nagrand 35.48,77.84
step
  talk Voren'thal the Seer##18530
  turnin Turning Point##10507 |goto Shattrath City 42.79,91.71
step
  talk Borak, Son of Oronok##21293
  turnin What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.56,57.18
step
  talk K'ure##17545
  accept A Secret Revealed##10102 |goto Nagrand 35.48,77.84
step
  talk Borak, Son of Oronok##21293
  accept The Cipher of Damnation - Borak's Charge##10578 |goto Shadowmoon Valley 47.56,57.18
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover the Third Part of the Cipher of Damnation from Ruul the Darkener.
  kill Ruul the Darkener##21315 |q 10578 |goto Shadowmoon Valley 57.28,50.7
step
  talk A'dal##18481
  turnin A Secret Revealed##10102 |goto Shattrath City 53.99,44.75
step
  talk Borak, Son of Oronok##21293
  turnin The Cipher of Damnation - Borak's Charge##10578 |goto Shadowmoon Valley 47.56,57.18
step
  talk A'dal##18481
  accept Auchindoun...##10167 |goto Shattrath City 53.99,44.75
step
  talk Borak, Son of Oronok##21293
  accept The Cipher of Damnation - The Third Fragment Recovered##10579 |goto Shadowmoon Valley 47.56,57.18
step
  note Travel to the Auchenai Crypts in the Bone Wastes of Terokkar Forest and slay Exarch Maladaar to free the spirit of D'ore.
  kill Exarch Maladaar##18373 |q 10167 |goto Auchenai Crypts - Dungeon -1,-1
step
  talk D'ore##19412
  turnin Auchindoun...##10167
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The Third Fragment Recovered##10579 |goto Shadowmoon Valley 53.95,23.52
step
  talk D'ore##19412
  accept What the Soul Sees##10168
step
  talk Oronok Torn-heart##21183
  accept The Cipher of Damnation##10588 |goto Shadowmoon Valley 53.95,23.52
step
  note Locate a Soul Mirror somewhere in the Auchenai Crypts and use it to call forth a Darkened Spirit from Ancient Orc Ancestors in Nagrand. Destroy 15 Darkened Spirits so that the ancestors may rest in peace.
  kill Darkened Spirit##19480 |q 10168
step
  note Use the Cipher of Damnation at the Altar of Damnation to summon Cyrukh the Firelord.
  kill Cyrukh the Firelord##21181 |q 10588
step
  talk Mother Kashur##18687
  turnin What the Soul Sees##10168 |goto Nagrand 26.07,60.6
step
  talk Earthmender Torlok##21024
  turnin The Cipher of Damnation##10588 |goto Shadowmoon Valley 42.19,45.06
step
  talk Khadgar##18166
  accept The Tempest Key##10883 |goto Shattrath City 54.75,44.32
step
  talk A'dal##18481
  turnin The Tempest Key##10883 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Mercy##10884 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Strength##10885 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Tenacity##10886 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to recover the Unused Axe of the Executioner from the Shattered Halls of Hellfire Citadel.
  get Trial of the Naaru: Mercy |q 10884 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to recover Kalithresh's Trident and Murmur's Essence.
  get Trial of the Naaru: Strength |q 10885 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  turnin Trial of the Naaru: Mercy##10884 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  turnin Trial of the Naaru: Strength##10885 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  turnin Trial of the Naaru: Tenacity##10886 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Magtheridon##10888 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to slay Magtheridon.
  kill Magtheridon##17257 |q 10888 |goto Magtheridon's Lair - Raid -1,-1
step
  talk A'dal##18481
  turnin Trial of the Naaru: Magtheridon##10888 |goto Shattrath City 53.99,44.75
]])
