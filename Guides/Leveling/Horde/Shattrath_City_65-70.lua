-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Shattrath City (65-70)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Shadowmoon Valley (69-70)",
}, [[
step
  note {fp}Nutral
  goto Shattrath City 64.07,41.11 |tip {vendor}
step
  talk Arcanist Adyria##18596
  accept Voren'thal's Visions##10024 |goto Shattrath City 54.98,22.54
step
  note Bring 8 Dampscale Basilisk Eyes to Arcanist Adyria in Shattrath City.
  kill Dampscale Basilisk##18461 |q 10024 |goto Terokkar Forest 38.39,11.68
step
  talk Oloraak##19045
  accept Can't Stay Away##10180 |goto Shattrath City 57.98,15.16
step
  talk Rilak the Redeemed##22292
  accept The Eyes of Skettis##10847 |goto Shattrath City 52.54,21.01
step
  note Bring the Eye of Reskk and the Eye of Shienor to Rilak the Redeemed in the Lower City district of Shattrath.
  collect Eye of Veil Reskk##185200 |q 10847 |goto Terokkar Forest 50.12,19.37
step
  talk Rilak the Redeemed##22292
  accept Countdown to Doom##11028 |goto Shattrath City 52.54,21.01
step
  talk Lorokeem##19052
  accept Master of Elixirs##10902 |goto Shattrath City 45.59,21.49
step
  note Go to the Black Morass in the Caverns of Time and obtain 10 Essences of Infinity from Rift Lords and Rift Keepers. Bring these along with 5 Elixirs of Major Defense, 5 Elixirs of Mastery and 5 Elixirs of Major Agility to Lorokeem in Shattrath's Lower City.
  get Master of Elixirs |q 10902 |goto Shattrath City 45.59,21.49
step
  talk Vekax##22429
  accept The Outcast's Plight##10917 |goto Shattrath City 46.21,22.36
step
  note Bring 30 Arakkoa Feathers to Vekax in Shattrath's Lower City.
  kill Shienor Talonite##18449 |q 10917 |goto Terokkar Forest 50.89,19.63
step
  talk Vindicator Aeus##23270
  accept Assist Exarch Orelis##11038 |goto Shattrath City 47.24,26.26
step
  talk Ezekiel##19715
  accept What Book? I Don't See Any Book.##10231 |goto Shattrath City 49.12,35.9
step
  talk Khadgar##18166
  accept Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  note Khadgar wants you to enter the Shadow Labyrinth at Auchindoun and retrieve the First Key Fragment from an Arcane Container hidden there.
  get Entry Into Karazhan |q 9831 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept The Violet Eye##9838 |goto Shattrath City 54.75,44.32
step
  talk A'dal##18481
  accept Auchindoun...##10167 |goto Shattrath City 53.99,44.75
step
  talk Spymistress Mehlisah Highcrown##18893
  accept Trouble at Auchindoun##10177 |goto Shattrath City 50.24,45.36
step
  talk A'dal##18481
  accept Revered Among the Sha'tar##10560 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept How to Break Into the Arcatraz##10704 |goto Shattrath City 53.99,44.75
step
  note A'dal has tasked you with the recovery of the Top and Bottom Shards of the Arcatraz Key. Return them to him, and he will fashion them into the Key to the Arcatraz for you.
  get How to Break Into the Arcatraz |q 10704 |goto Shattrath City 53.99,44.75
step
  talk Khadgar##18166
  accept The Tempest Key##10883 |goto Shattrath City 54.75,44.32
step
  talk A'dal##18481
  accept Entry Into the Black Temple##10949 |goto Shattrath City 53.99,44.75
step
  talk V'eru##22497
  accept Speak with the Ogre##10984 |goto Shattrath City 56.46,49.08
step
  talk General Tiras'alan##25167
  accept Enter, the Deceiver...##11550 |goto Shattrath City 53.6,43.64
step
  talk Xi'ri##18528
  turnin Entry Into the Black Temple##10949 |goto Shadowmoon Valley 65.22,43.96 |tip {turninat}Shadowmoon Valley
step
  talk Yuula##23449
  accept Threat from Above##11096 |goto Shattrath City 64.33,42.33
step
  talk Nutral##18940
  accept Learning to Fly##11498 |goto Shattrath City 64.07,41.11
step
  talk Haggard War Veteran##19684
  accept A'dal##10210 |goto Shattrath City 72.71,41.43
step
  talk Orphan Matron Mercy##22819
  accept Children's Week##10942 |goto Shattrath City 75.23,48.0
step
  talk Sal'salabim##18584
  accept Crackin' Some Skulls##10009 |goto Shattrath City 77.26,34.85
step
  note Sal'salabim at Shattrath City wants you to recover Raliq's Debt, Coosh'coosh's Debt and Floon's Debt.
  kill Raliq the Drunk##18585 |q 10009 |goto Shattrath City 74.99,31.4
step
  talk Wind Trader Lathrai##18484
  accept A Personal Favor##10112 |goto Shattrath City 72.22,30.75
step
  note Retrieve 5 of Lathrai's Stolen Goods. Return them to Wind Trader Lathrai near the World's End Tavern in the Lower City section of Shattrath City.
  kill Skithian Dreadhawk##18452 |q 10112 |goto Terokkar Forest 31.41,42.35
step
  talk Apprentice Tasserel##23948
  accept Archmage Alturus##11216 |goto Shattrath City 75.28,33.46
step
  talk Sha'nir##18597
  accept Strained Supplies##10017 |goto Shattrath City 64.48,15.1
step
  note Bring 8 Dreadfang Venom Sacs to Sha'nir in Shattrath City.
  kill Dreadfang Lurker##18466 |q 10017 |goto Terokkar Forest 46.75,30.29
step
  talk Sha'nir##18597
  accept A Cure for Zahlia##10020 |goto Shattrath City 64.48,15.1
step
  note Bring Stonegazer's Blood to Sha'nir in Shattrath City.
  kill Stonegazer##18648 |q 10020 |goto Terokkar Forest 62.81,27.69
step
  talk Seth##18653
  accept Rather Be Fishin'##10037 |goto Shattrath City 63.95,15.53
step
  note Bring 8 Pristine Shimmerscale Eels to Seth in Shattrath.
  kill Shimmerscale Eel##18750 |q 10037 |goto Terokkar Forest 39.35,9.55
step
  talk Jorus##23462
  accept Jorus the Cobalt Netherwing Drake##11109 |goto Shattrath City 67.91,17.02
step
  talk Malfas##23464
  accept Malfas the Purple Netherwing Drake##11110 |goto Shattrath City 68.05,18.13
step
  talk Onyxien##23463
  accept Onyxien the Onyx Netherwing Drake##11111 |goto Shattrath City 67.46,18.84
step
  talk Suraku##23461
  accept Suraku the Azure Netherwing Drake##11112 |goto Shattrath City 66.79,18.96
step
  talk Voranaku##23466
  accept Voranaku the Violet Netherwing Drake##11113 |goto Shattrath City 66.05,17.32
step
  talk Zoya##23465
  accept Zoya the Veridian Netherwing Drake##11114 |goto Shattrath City 65.89,19.14
step
  talk Adyen the Lightwarden##18537
  accept Marks of Kil'jaeden##10325 |goto Shattrath City 30.73,34.62
step
  note Bring 10 Marks of Kil'jaeden to Adyen the Lightwarden in Shattrath City.
  kill Mo'arg Engineer##16945 |q 10325 |goto Nagrand 20.0,49.34
step
  talk Adyen the Lightwarden##18537
  accept Marks of Sargeras##10653 |goto Shattrath City 30.73,34.62
step
  note Bring 10 Marks of Sargeras to Adyen the Lightwarden in Shattrath City.
  kill Cyber-Rage Forgelord##16943 |q 10653 |goto Netherstorm 40.3,21.07
step
  talk Adyen the Lightwarden##18537
  accept Crisis at the Sunwell##11481 |goto Shattrath City 30.73,34.62
step
  talk Olrokk##20500
  turnin Learning to Fly##11498 |goto Shadowmoon Valley 29.31,29.27 |tip {turninat}Shadowmoon Valley
step
  talk Ishanah##18538
  accept Restoring the Light##10021 |goto Shattrath City 23.97,29.73
step
  talk Ishanah##18538
  accept A Cleansing Light##10420 |goto Shattrath City 23.97,29.73
step
  note Bring a Fel Armament to Ishanah in Shattrath City.
  kill Cyber-Rage Forgelord##16943 |q 10420 |goto Netherstorm 40.3,21.07
step
  note Travel to the Auchenai Crypts in the Bone Wastes of Terokkar Forest and slay Exarch Maladaar to free the spirit of D'ore.
  kill Exarch Maladaar##18373 |q 10167 |goto Auchenai Crypts - Dungeon -1,-1
step
  talk Arcanist Raestan##23273
  accept Report to Spymaster Thalodien##11039 |goto Shattrath City 60.85,63.53
step
  talk Sky Commander Adaris##23038
  turnin Countdown to Doom##11028 |goto Terokkar Forest 64.09,66.9 |tip {turninat}Terokkar Forest
step
  talk Grok##22940
  turnin Speak with the Ogre##10984 |goto Shattrath City 64.93,68.14
step
  talk Tobias the Filth Gorger##21411
  accept The Bundle of Bloodthistle##10550 |goto Shattrath City 63.95,70.03
step
  talk Nasmara Moonsong##22208
  accept Becoming a Mooncloth Tailor##10831 |goto Shattrath City 66.55,69.33
step
  note Use the Square of Imbued Netherweave while standing in Cenarion Refuge's moonwell to create a Sample of Primal Mooncloth. Bring the completed sample back to Nasmara Moonsong in Shattrath's Lower City.
  get Becoming a Mooncloth Tailor |q 10831 |goto Shattrath City 66.55,69.33
step
  talk Gidge Spellweaver##22213
  accept Becoming a Spellfire Tailor##10832 |goto Shattrath City 66.82,68.75
step
  note Bring a sample of Nether-wraith Essence to Gidge Spellweaver in Shattrath's Lower City.
  get Becoming a Spellfire Tailor |q 10832 |goto Shattrath City 66.82,68.75
step
  talk Andrion Darkspinner##22212
  accept Becoming a Shadoweave Tailor##10833 |goto Shattrath City 66.81,68.13
step
  talk Grok##22940
  accept Mog'dorg the Wizened##10983 |goto Shattrath City 64.93,68.14
step
  talk Fantei##19678
  accept Chief Apothecary Hildagard##11046 |goto Shattrath City 64.68,70.71
step
  talk Griftah##19227
  accept Oooh, Shinies!##11130 |goto Shattrath City 65.64,69.26
step
  talk Dathris Sunstriker##18594
  accept Duty Calls##11482 |goto Shattrath City 54.61,80.72
step
  talk Exarch Orelis##19466
  turnin Assist Exarch Orelis##11038 |goto Netherstorm 32.07,64.18 |tip {turninat}Netherstorm
step
  talk Spymaster Thalodien##19468
  turnin Report to Spymaster Thalodien##11039 |goto Netherstorm 32.0,64.07 |tip {turninat}Netherstorm
step
  talk Field Commander Mahfuun##19542
  turnin Trouble at Auchindoun##10177 |goto Terokkar Forest 40.04,72.16 |tip {turninat}Terokkar Forest
step
  talk Isfar##18933
  turnin Can't Stay Away##10180 |goto Terokkar Forest 44.07,64.96 |tip {turninat}Terokkar Forest
step
  talk Archmage Alturus##17613
  turnin Archmage Alturus##11216 |goto Deadwind Pass 47.28,75.21 |tip {turninat}Deadwind Pass
step
  talk Archmage Alturus##17613
  turnin The Violet Eye##9838 |goto Deadwind Pass 47.28,75.21 |tip {turninat}Deadwind Pass
step
  talk Magister Falris##19485
  accept Losing Gracefully##10169 |goto Shattrath City 47.01,83.53
step
  talk Magistrix Fyalenn##18531
  accept Firewing Signets##10412 |goto Shattrath City 45.2,81.44
step
  note Magistrix Fyalenn in Shattrath City wants you to bring her 10 Firewing Signets.
  kill Firewing Bloodwarder##1410 |q 10412 |goto Terokkar Forest 71.58,36.73
step
  talk Magistrix Fyalenn##18531
  accept Sunfury Signets##10656 |goto Shattrath City 45.2,81.44
step
  note Magistrix Fyalenn in Shattrath City wants you to bring her 10 Sunfury Signets.
  get Sunfury Signets |q 10656 |goto Shattrath City 45.2,81.44
step
  talk Voren'thal the Seer##18530
  accept Synthesis of Power##10416 |goto Shattrath City 42.79,91.71
step
  note Voren'thal the Seer in Shattrath City wants you to obtain an Arcane Tome.
  kill Firewing Bloodwarder##1410 |q 10416 |goto Terokkar Forest 71.58,36.73
step
  talk Voren'thal the Seer##18530
  accept Turning Point##10507 |goto Shattrath City 42.79,91.71
step
  talk Arcanist Adyria##18596
  turnin Voren'thal's Visions##10024 |goto Shattrath City 54.98,22.54
step
  talk Rilak the Redeemed##22292
  turnin The Eyes of Skettis##10847 |goto Shattrath City 52.54,21.01
step
  talk Rilak the Redeemed##22292
  accept Seek Out Kirrik##10849 |goto Shattrath City 52.54,21.01
step
  note Ishanah wants you to go to the Arakkoa outpost east of Shattrath City and use the Blessed Vial to cleanse the Eastern Altar, the Western Altar and the Northern Altar.
  collect Northern Altar##182563 |q 10021 |goto Terokkar Forest 50.66,16.56
step
  talk Lorokeem##19052
  turnin Master of Elixirs##10902 |goto Shattrath City 45.59,21.49
step
  talk Archmage Ne'thul##25169
  turnin Enter, the Deceiver...##11550 |goto Isle of Quel'Danas 50.14,28.24 |tip {turninat}Isle of Quel'Danas
step
  talk Vekax##22429
  turnin The Outcast's Plight##10917 |goto Shattrath City 46.21,22.36
step
  talk "Dirty" Larry##19720
  turnin What Book? I Don't See Any Book.##10231 |goto Shattrath City 43.63,29.76
step
  talk "Dirty" Larry##19720
  accept The Master's Grand Design?##10251 |goto Shattrath City 43.63,29.76
step
  talk Exarch Larethor##24813
  turnin Crisis at the Sunwell##11481 |goto Isle of Quel'Danas 47.42,30.74 |tip {turninat}Isle of Quel'Danas
step
  talk Exarch Larethor##24813
  turnin Duty Calls##11482 |goto Isle of Quel'Danas 47.42,30.74 |tip {turninat}Isle of Quel'Danas
step
  talk A'dal##18481
  turnin The Tempest Key##10883 |goto Shattrath City 53.99,44.75
step
  talk Borak, Son of Oronok##21293
  turnin The Bundle of Bloodthistle##10550 |goto Shadowmoon Valley 47.56,57.18 |tip {turninat}Shadowmoon Valley
step
  talk A'dal##18481
  turnin Revered Among the Sha'tar##10560 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  turnin How to Break Into the Arcatraz##10704 |goto Shattrath City 53.99,44.75
step
  talk Kirrik the Awakened##22272
  turnin Seek Out Kirrik##10849 |goto Terokkar Forest 37.45,51.54 |tip {turninat}Terokkar Forest
step
  talk A'dal##18481
  turnin A'dal##10210 |goto Shattrath City 53.99,44.75
step
  talk Khadgar##18166
  turnin Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  talk Mog'dorg the Wizened##22941
  turnin Mog'dorg the Wizened##10983 |goto Blade's Edge Mountains 55.49,44.86 |tip {turninat}Blade's Edge Mountains
step
  talk Khadgar##18166
  accept The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  note Obtain the Second Key Fragment from an Arcane Container inside Coilfang Reservoir and the Third Key Fragment from an Arcane Container inside Tempest Keep. Return to Khadgar in Shattrath City after you've completed this task.
  get The Second and Third Fragments |q 9832 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept City of Light##10211 |goto Shattrath City 54.75,44.32
step
  talk A'dal##18481
  accept Harbinger of Doom##10882 |goto Shattrath City 53.99,44.75
step
  note You have been tasked to go to Tempest Keep's Arcatraz satellite and slay Harbinger Skyriss. Return to A'dal at the Terrace of Light in Shattrath City after you have done so.
  kill Harbinger Skyriss##20912 |q 10882
step
  talk A'dal##18481
  accept Trial of the Naaru: Mercy##10884 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to recover the Unused Axe of the Executioner from the Shattered Halls of Hellfire Citadel.
  get Trial of the Naaru: Mercy |q 10884 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Strength##10885 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to recover Kalithresh's Trident and Murmur's Essence.
  get Trial of the Naaru: Strength |q 10885 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Tenacity##10886 |goto Shattrath City 53.99,44.75
step
  turnin Losing Gracefully##10169 |goto Shattrath City 61.47,51.09
step
  talk Yuula##23449
  turnin Threat from Above##11096 |goto Shattrath City 64.33,42.33
step
  talk Yuula##23449
  accept To Skettis!##11098 |goto Shattrath City 64.33,42.33
step
  talk Wind Trader Lathrai##18484
  turnin A Personal Favor##10112 |goto Shattrath City 72.22,30.75
step
  talk Sal'salabim##18584
  turnin Crackin' Some Skulls##10009 |goto Shattrath City 77.26,34.85
step
  talk Wind Trader Lathrai##18484
  accept Investigate Tuurem##9990 |goto Shattrath City 72.22,30.75
step
  note Find the Sealed Box and then deliver it to Earthbinder Tavgren just outside of the Cenarion Thicket in Terokkar Forest.
  collect Sealed Box##182542 |q 9990 |goto Terokkar Forest 54.0,30.0
step
  talk Sal'salabim##18584
  accept It's Just That Easy?##10010 |goto Shattrath City 77.26,34.85
step
  talk Sha'nir##18597
  turnin Strained Supplies##10017 |goto Shattrath City 64.48,15.1
step
  talk Sha'nir##18597
  turnin A Cure for Zahlia##10020 |goto Shattrath City 64.48,15.1
step
  talk Seth##18653
  turnin Rather Be Fishin'##10037 |goto Shattrath City 63.95,15.53
step
  talk Jorus##23462
  turnin Jorus the Cobalt Netherwing Drake##11109 |goto Shattrath City 67.91,17.02
step
  talk Malfas##23464
  turnin Malfas the Purple Netherwing Drake##11110 |goto Shattrath City 68.05,18.13
step
  talk Onyxien##23463
  turnin Onyxien the Onyx Netherwing Drake##11111 |goto Shattrath City 67.46,18.84
step
  talk Suraku##23461
  turnin Suraku the Azure Netherwing Drake##11112 |goto Shattrath City 66.79,18.96
step
  talk Voranaku##23466
  turnin Voranaku the Violet Netherwing Drake##11113 |goto Shattrath City 66.05,17.32
step
  talk Zoya##23465
  turnin Zoya the Veridian Netherwing Drake##11114 |goto Shattrath City 65.89,19.14
step
  talk Altruis the Sufferer##18417
  turnin It's Just That Easy?##10010 |goto Nagrand 27.34,43.09 |tip {turninat}Nagrand
step
  talk Adyen the Lightwarden##18537
  turnin Marks of Sargeras##10653 |goto Shattrath City 30.73,34.62
step
  talk Adyen the Lightwarden##18537
  turnin Marks of Kil'jaeden##10325 |goto Shattrath City 30.73,34.62
step
  talk Ishanah##18538
  turnin Restoring the Light##10021 |goto Shattrath City 23.97,29.73
step
  talk Chief Apothecary Hildagard##21772
  turnin Chief Apothecary Hildagard##11046 |goto Shadowmoon Valley 29.96,27.75 |tip {turninat}Shadowmoon Valley
step
  talk Ishanah##18538
  turnin A Cleansing Light##10420 |goto Shattrath City 23.97,29.73
step
  note Use Socrethar's Teleportation's Stone at Invasion Point: Overlord, north of Forge Base: Oblivion to transport your party to Socrethar's Landing. Once there, use Voren'thal's Presence to defeat Socrethar.
  kill Socrethar##20132 |q 10507 |goto Netherstorm 29.31,13.7
step
  talk Nitrin the Learned##19844
  turnin The Master's Grand Design?##10251 |goto Nagrand 51.82,56.84 |tip {turninat}Nagrand
step
  note Use the Crystal of Deep Shadows near the Altar of Shadows to deepen your attunement to the altar, then return to Andrion Darkspinner in Shattrath's Lower City.
  kill [PHAltar of Shadows target##22395 |q 10833 |goto Shadowmoon Valley 58.3,70.92
step
  talk Nasmara Moonsong##22208
  turnin Becoming a Mooncloth Tailor##10831 |goto Shattrath City 66.55,69.33
step
  talk Gidge Spellweaver##22213
  turnin Becoming a Spellfire Tailor##10832 |goto Shattrath City 66.82,68.75
step
  talk Andrion Darkspinner##22212
  turnin Becoming a Shadoweave Tailor##10833 |goto Shattrath City 66.81,68.13
step
  talk Sky Sergeant Doryn##23048
  turnin To Skettis!##11098 |goto Terokkar Forest 64.55,66.7 |tip {turninat}Terokkar Forest
step
  talk Budd Nedreck##23559
  turnin Oooh, Shinies!##11130 |goto Ghostlands 70.34,67.84 |tip {turninat}Ghostlands
step
  talk Magistrix Fyalenn##18531
  turnin Sunfury Signets##10656 |goto Shattrath City 45.2,81.44
step
  talk Magistrix Fyalenn##18531
  turnin Firewing Signets##10412 |goto Shattrath City 45.2,81.44
step
  talk Voren'thal the Seer##18530
  turnin Turning Point##10507 |goto Shattrath City 42.79,91.71
step
  talk Voren'thal the Seer##18530
  turnin Synthesis of Power##10416 |goto Shattrath City 42.79,91.71
step
  talk Earthbinder Tavgren##18446
  turnin Investigate Tuurem##9990 |goto Terokkar Forest 44.33,26.31 |tip {turninat}Terokkar Forest
step
  talk A'dal##18481
  turnin Harbinger of Doom##10882 |goto Shattrath City 53.99,44.75
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
  talk Khadgar##18166
  turnin City of Light##10211 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  turnin The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept Allegiance to the Aldor##10551 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept Allegiance to the Scryers##10552 |goto Shattrath City 54.75,44.32
step
  talk A'dal##18481
  accept Trial of the Naaru: Magtheridon##10888 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to slay Magtheridon.
  kill Magtheridon##17257 |q 10888 |goto Magtheridon's Lair - Raid -1,-1
step
  talk A'dal##18481
  turnin Trial of the Naaru: Magtheridon##10888 |goto Shattrath City 53.99,44.75
step
  talk Khadgar##18166
  turnin Allegiance to the Aldor##10551 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  turnin Allegiance to the Scryers##10552 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept Voren'thal the Seer##10553 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept Ishanah##10554 |goto Shattrath City 54.75,44.32
step
  talk Ishanah##18538
  turnin Ishanah##10554 |goto Shattrath City 23.97,29.73
step
  talk Voren'thal the Seer##18530
  turnin Voren'thal the Seer##10553 |goto Shattrath City 42.79,91.71
step
  talk D'ore##19412
  turnin Auchindoun...##10167
step
  talk Blood Elf Orphan##22817
  turnin Children's Week##10942
step
  note {travel}Shadowmoon Valley
  goto Shadowmoon Valley 30.45,32.4
]])
