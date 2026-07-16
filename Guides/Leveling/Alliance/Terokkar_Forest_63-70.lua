-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Terokkar Forest (63-70)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Nagrand (65-68)",
}, [[
step
  note {fp}Furnan Skysoar
  goto Terokkar Forest 59.45,55.43 |tip {vendor}
step
  talk Jenai Starwhisper##18459
  accept What's Wrong at Cenarion Thicket?##9961 |goto Terokkar Forest 57.01,53.49
step
  talk Thander##18389
  accept Stymying the Arakkoa##9986 |goto Terokkar Forest 57.82,54.25
step
  talk Ros'eleth##18390
  accept Olemba Seeds##9992 |goto Terokkar Forest 57.4,55.44
step
  note Gather 30 Olemba Seeds and return them to Ros'eleth in the Allerian Stronghold.
  collect 30 Olemba Seed##25745 |q 9992 |goto Terokkar Forest 54.46,35.06 |tip {dropsfrom}Olemba Cone
step
  talk Bertelm##18387
  accept Unruly Neighbors##9998 |goto Terokkar Forest 58.3,54.75
step
  talk Bertelm##18387
  accept Timber Worg Tails##10016 |goto Terokkar Forest 58.3,54.75
step
  note Bertelm at the Allerian Stronghold wants you to bring him 12 Timber Worg Tails. The tails can come from either Timber Worgs or Timber Worg Alphas.
  collect Timber Worg Tail##25807 |q 10016 |goto Terokkar Forest 41.89,32.99 |tip {dropsfrom}Timber Worg, Timber Worg Alpha, Ironjaw
step
  talk Andarl##18252
  accept Magical Disturbances##10026 |goto Terokkar Forest 58.53,53.56
step
  talk Taela Everstride##18704
  accept Torgos!##10035 |goto Terokkar Forest 58.1,53.42
step
  note Call down Torgos with Trachela's Carcass. Acquire a Tail Feather of Torgos and return it to Taela Everstride at the Allerian Stronghold in Terokkar Forest.
  collect Tail Feather of Torgos##25852 |q 10035 |goto Terokkar Forest 58.1,53.42 |tip {dropsfrom}Torgos
step
  talk Lieutenant Gravelhammer##18713
  accept Speak with Private Weeks##10038 |goto Terokkar Forest 57.5,55.78
step
  talk Lady Dena Kennedy##15991
  accept Secrets of the Arakkoa##10863 |goto Terokkar Forest 57.78,56.02
step
  talk Lieutenant Gravelhammer##18713
  accept Thin the Flock##10869 |goto Terokkar Forest 57.5,55.78
step
  talk Severin##23042
  accept World of Shadows##11004 |goto Terokkar Forest 64.05,66.88
step
  note Severin wants you to venture into Skettis and retrieve 6 Shadow Dusts from the arakkoa that dwell there.
  collect 6 Shadow Dust##32388 |q 11004 |goto Terokkar Forest 69.85,79.32 |tip {dropsfrom}Skettis Wing Guard, Skettis Windwalker, Skettis Talonite
step
  talk Sky Commander Adaris##23038
  accept An Ally in Lower City##11024 |goto Terokkar Forest 64.09,66.9
step
  talk Hazzik##23306
  accept Hazzik's Bargain##11056 |goto Terokkar Forest 64.23,66.97
step
  note Obtain Hazzik's Package at his dwelling in eastern Skettis and return to him with it.
  collect Hazzik's Package##32687 |q 11056 |goto Terokkar Forest 74.85,80.08 |tip {dropsfrom}Hazzik's Package
step
  talk Skyguard Handler Deesak##23415
  accept Hungry Nether Rays##11093 |goto Terokkar Forest 63.5,65.81
step
  note Use the Nether Ray Cage in the woods south of Blackwind Landing and slay Blackwind Warp Chasers near the Hungry Nether Ray. Return to Skyguard Handler Deesak when you've completed your task.
  get Hungry Nether Rays |q 11093 |goto Terokkar Forest 63.5,65.81
step
  talk Vindicator Haylen##22462
  accept For the Fallen##10920 |goto Terokkar Forest 49.71,76.19
step
  talk Field Commander Mahfuun##19542
  accept The Codex of Blood##10094 |goto Terokkar Forest 40.04,72.16
step
  talk Spy Grik'tha##19496
  accept Find Spy To'gun##10178 |goto Terokkar Forest 39.94,72.28
step
  talk Greatfather Aldrimus##19698
  accept Everything Will Be Alright##10164 |goto Terokkar Forest 35.08,65.15
step
  talk Ha'lei##19697
  accept I See Dead Draenei##10227 |goto Terokkar Forest 35.09,65.09
step
  note Vindicator Haylen wants you to slay 20 Dreadfang Widows and then return to him just west of Netherweb Ridge.
  kill Dreadfang Widow##18467 |q 10920 |goto Terokkar Forest 31.75,67.01
step
  talk Nexus-Prince Haramad##19674
  accept Undercutting the Competition##10165 |goto Terokkar Forest 39.37,58.48
step
  note Nexus-Prince Haramad located outside of the Mana-Tombs wants you to kill Nexus-Prince Shaffar and bring Shaffar's Wrappings back to him.
  collect Shaffar's Wrappings##28490 |q 10165 |goto Mana-Tombs - Dungeon -1,-1 |tip {dropsfrom}Nexus-Prince Shaffar, Nexus-Prince Shaffar (1)
step
  talk Artificer Morphalius##19670
  accept Safety Is Job One##10216 |goto Terokkar Forest 39.42,58.51
step
  talk Kirrik the Awakened##22272
  accept Veil Skith: Darkstone of Terokk##10839 |goto Terokkar Forest 37.45,51.54
step
  talk High Priest Orglum##22278
  accept The Tomb of Lights##10840 |goto Terokkar Forest 37.45,50.76
step
  talk High Priest Orglum##22278
  accept The Vengeful Harbinger##10842 |goto Terokkar Forest 37.45,50.76
step
  talk Ethan##22365
  accept Missing Friends##10852 |goto Terokkar Forest 37.74,51.34
step
  talk Mekeda##22370
  accept Before Darkness Falls##10878 |goto Terokkar Forest 37.84,51.84
step
  talk Mekeda##22370
  accept The Shadow Tomb##10881 |goto Terokkar Forest 37.84,51.84
step
  note Go into the Shadow Tomb, west of the Refugee Caravan and retrieve the Drape of Arunen, the Gavel of K'alen and the Scroll of Atalor. Return to Mekeda at the Refugee Caravan after you've completed this task.
  collect Drape of Arunen##31709 |q 10881 |goto Terokkar Forest 32.1,51.2 |tip {dropsfrom}Cabal Chest
step
  talk Lakotae##22420
  accept The Infested Protectors##10896 |goto Terokkar Forest 37.86,51.68
step
  note Lakotae wants you to kill 25 wood mites and then return to him at the Refugee Caravan. The mites can be found living inside the bodies of rotting forest-ragers and infested root-walkers.
  kill Wood Mite##22419 |q 10896
step
  talk Kirrik the Awakened##22272
  accept Speak with Rilak the Redeemed##10908 |goto Terokkar Forest 37.45,51.54
step
  note Ethan wants you to find 12 of his missing friends in Veil Skith and then return to him at the Refugee Caravan.
  kill Captive Child##22314 |q 10852 |goto Terokkar Forest 31.14,42.41
step
  talk Isfar##18933
  accept Brother Against Brother##10097 |goto Terokkar Forest 44.07,64.96
step
  talk Isfar##18933
  accept Terokk's Legacy##10098 |goto Terokkar Forest 44.07,64.96
step
  note Bring Terokk's Mask, Terokk's Quill, and the Saga of Terokk to Isfar outside the Sethekk Halls.
  collect The Saga of Terokk##27634 |q 10098 |goto Sethekk Halls - Dungeon -1,-1 |tip {dropsfrom}The Saga of Terokk
step
  talk Scout Navrin##22364
  accept Taken in the Night##10873 |goto Terokkar Forest 31.44,75.66
step
  note Scout Navrin wants you to travel to the Netherweb Ridge and free 6 Webbed Sha'tar Warriors and then return to him at Sha'tar Outpost.
  kill Freed Sha'tar Warrior##22459 |q 10873
step
  talk Oakun##22456
  accept The Dread Relic##10877 |goto Terokkar Forest 31.06,76.53
step
  note Oakun wants you to travel east to the Derelict Caravan to recover the Dread Relic. Return to Oakun when the task is complete.
  collect Dread Relic##31697 |q 10877 |goto Terokkar Forest 43.92,76.4 |tip {dropsfrom}Massive Treasure Chest
step
  talk Commander Ra'vaj##22446
  accept An Improper Burial##10913 |goto Terokkar Forest 31.0,76.11
step
  talk Chief Archaeologist Letoll##22458
  accept Digging Through Bones##10922 |goto Terokkar Forest 31.27,76.09
step
  note Commander Ra'vaj at the Sha'tari Outpost in the Bone Wastes of Terokkar Forest wants you to burn 8 Slain Auchenai Warriors and 8 Slain Sha'tar Vindicators.
  kill Slain Sha'tar Vindicator##21859 |q 10913 |goto Terokkar Forest 34.6,76.1
step
  talk Private Weeks##18715
  turnin Speak with Private Weeks##10038 |goto Terokkar Forest 40.46,36.16
step
  talk Private Weeks##18715
  accept Who Are They?##10040 |goto Terokkar Forest 40.46,36.16
step
  note While in disguise, speak with the Shadowy Initiate, the Shadowy Laborer and the Shadowy Advisor. Then return to Private Weeks at Grangol'var Village in Terokkar Forest.
  get Who Are They? |q 10040 |goto Terokkar Forest 40.46,36.16
step
  talk Rilak the Redeemed##22292
  turnin An Ally in Lower City##11024 |goto Shattrath City 52.54,21.01 |tip {turninat}Shattrath City
step
  talk Rilak the Redeemed##22292
  turnin Speak with Rilak the Redeemed##10908 |goto Shattrath City 52.54,21.01 |tip {turninat}Shattrath City
step
  talk Spy To'gun##18891
  turnin Find Spy To'gun##10178 |goto Shadow Labyrinth - Dungeon -1,-1 |tip {turninat}Shadow Labyrinth - Dungeon
step
  talk Earthbinder Tavgren##18446
  turnin What's Wrong at Cenarion Thicket?##9961 |goto Terokkar Forest 44.33,26.31
step
  turnin The Codex of Blood##10094 |goto Shadow Labyrinth - Dungeon -1,-1 |tip {turninat}Shadow Labyrinth - Dungeon
step
  talk Rilak the Redeemed##22292
  turnin Secrets of the Arakkoa##10863 |goto Shattrath City 52.54,21.01 |tip {turninat}Shattrath City
step
  talk Warden Treelos##18424
  accept It's Watching You!##9951 |goto Terokkar Forest 43.44,22.36
step
  talk Earthbinder Tavgren##18446
  accept Strange Energy##9968 |goto Terokkar Forest 44.33,26.31
step
  note Collect 4 Teromoth Samples and 4 Vicious Teromoth Samples. Then return to Earthbinder Tavgren just outside the Cenarion Thicket in Terokkar Forest.
  collect 4 Teromoth Sample##25672 |q 9968 |goto Terokkar Forest 45.14,29.39 |tip {dropsfrom}Teromoth
step
  talk Earthbinder Tavgren##18446
  accept Clues in the Thicket##9971 |goto Terokkar Forest 44.33,26.31
step
  talk Earthbinder Tavgren##18446
  accept What Are These Things?##9994 |goto Terokkar Forest 44.33,26.31
step
  note Kill Ashkaz in Veil Reskk, Ayit in Veil Shienor, and Urdak in Veil Skith and return to Thander at the Allerian Stronghold.
  kill Ashkaz##18539 |q 9986 |goto Terokkar Forest 49.11,16.89
step
  note Greatfather Aldrimus standing outside the Auchenai Crypts of Auchindoun has asked that you enter the Auchenai Crypts and destroy Exarch Maladaar.
  kill Exarch Maladaar##18373 |q 10164 |goto Auchenai Crypts - Dungeon -1,-1 |elite
step
  note Kill Naphthal'ar and then return to Warden Treelos at the Cenarion Thicket in Terokkar Forest.
  kill Naphthal'ar##18438 |q 9951 |goto Terokkar Forest 43.54,22.07
step
  note Artificer Morphalius wants you to kill 10 Ethereal Crypt Raiders, 5 Ethereal Sorcerers, 5 Nexus Stalkers and 5 Ethereal Spellbinders.
  kill Ethereal Crypt Raider##18311 |q 10216 |goto Mana-Tombs - Dungeon -1,-1 |elite
step
  note Kill Darkweaver Syth in the Sethekk halls, then free Lakka from captivity. Return to Isfar outside the Sethekk Halls when you've completed the rescue.
  kill Darkweaver Syth##18472 |q 10097 |goto Sethekk Halls - Dungeon -1,-1 |elite
step
  note Investigate the Strange Object next to the Broken Corpse to determine what might have befallen the Cenarion Thicket. Then return to Earthbinder Tavgren just outside the thicket in Terokkar Forest.
  collect Strange Object##183789 |q 9971 |goto Terokkar Forest 45.1,21.77
step
  note Lieutenant Gravelhammer asks that you kill 14 Shienor Talonites and 6 Shienor Sorcerers and then return to him in Allerian Stronghold.
  kill Shienor Talonite##18449 |q 10869 |goto Terokkar Forest 50.89,19.63
step
  note Kill 12 Warped Peons and then report to Theloria Shadecloak at Allerian Post.
  kill Warped Peon##18595 |q 9998 |goto Terokkar Forest 66.59,51.93
step
  note Andarl at the Allerian Stronghold wants you to kill 10 Warp Stalkers.
  kill Warp Stalker##18464 |q 10026 |goto Terokkar Forest 59.95,37.07
step
  talk David Wayne##21465
  accept Additional Materials##10664 |goto Terokkar Forest 77.58,38.72
step
  note David Wayne at Wayne's Refuge wants you to bring him an Adamantite Frame, 4 Heavy Knothide Leather, and a Demon Warding Totem.
  collect Adamantite Frame##23784 |q 10664 |goto Terokkar Forest 77.58,38.72
step
  talk Thander##18389
  turnin Stymying the Arakkoa##9986 |goto Terokkar Forest 57.82,54.25
step
  talk Ros'eleth##18390
  turnin Olemba Seeds##9992 |goto Terokkar Forest 57.4,55.44
step
  talk Jenai Starwhisper##18459
  turnin What Are These Things?##9994 |goto Terokkar Forest 57.01,53.49
step
  talk Bertelm##18387
  turnin Timber Worg Tails##10016 |goto Terokkar Forest 58.3,54.75
step
  talk Andarl##18252
  turnin Magical Disturbances##10026 |goto Terokkar Forest 58.53,53.56
step
  talk Taela Everstride##18704
  turnin Torgos!##10035 |goto Terokkar Forest 58.1,53.42
step
  turnin The Vengeful Harbinger##10842 |goto Terokkar Forest 50.88,54.75
step
  talk Lieutenant Gravelhammer##18713
  turnin Thin the Flock##10869 |goto Terokkar Forest 57.5,55.78
step
  talk Bertelm##18387
  accept The Elusive Ironjaw##10022 |goto Terokkar Forest 58.3,54.75
step
  note Bring Ironjaw's Pelt to Bertelm at the Allerian Stronghold.
  collect Ironjaw's Pelt##25837 |q 10022 |goto Terokkar Forest 65.48,34.92 |tip {dropsfrom}Ironjaw
step
  talk Ros'eleth##18390
  accept Vessels of Power##10028 |goto Terokkar Forest 57.4,55.44
step
  note Bring 8 Draenei Vessels to Ros'eleth at the Allerian Stronghold.
  collect 8 Draenei Vessel##25841 |q 10028 |goto Terokkar Forest 53.21,30.45 |tip {dropsfrom}Draenei Vessel
step
  talk Jenai Starwhisper##18459
  accept Report to the Allerian Post##10444 |goto Terokkar Forest 57.01,53.49
step
  talk Hazzik##23306
  turnin Hazzik's Bargain##11056 |goto Terokkar Forest 64.23,66.97
step
  talk Skyguard Handler Deesak##23415
  turnin Hungry Nether Rays##11093 |goto Terokkar Forest 63.5,65.81
step
  talk Severin##23042
  turnin World of Shadows##11004 |goto Terokkar Forest 64.05,66.88
step
  talk Sky Commander Adaris##23038
  accept Secrets of the Talonpriests##11005 |goto Terokkar Forest 64.09,66.9
step
  talk Hazzik##23306
  accept A Shabby Disguise##11029 |goto Terokkar Forest 64.23,66.97
step
  note Use the Shabby Arakkoa Disguise to obtain the Adversarial Bloodlines from Sahaak and return to Hazzik.
  collect Adversarial Bloodlines##32742 |q 11029 |goto Terokkar Forest 64.23,66.97
step
  note Obtain an Elixir of Shadows from Severin and use it to find and slay Talonpriest Ishaal, Talonpriest Skizzik and Talonpriest Zellek in Skettis. Return to Commander Adaris after completing this task.
  kill Talonpriest Ishaal##23066 |q 11005 |goto Terokkar Forest 69.0,78.54
step
  talk Vindicator Haylen##22462
  turnin For the Fallen##10920 |goto Terokkar Forest 49.71,76.19
step
  talk Vindicator Haylen##22462
  accept Terokkarantula##10921 |goto Terokkar Forest 49.71,76.19
step
  note Vindicator Haylen wants you to kill the Terokkarantula and then return to him west of Netherweb Ridge.
  kill Terokkarantula##20682 |q 10921 |goto Terokkar Forest 54.27,81.82 |elite
step
  talk Greatfather Aldrimus##19698
  turnin Everything Will Be Alright##10164 |goto Terokkar Forest 35.08,65.15
step
  talk Ramdor the Mad##19417
  turnin I See Dead Draenei##10227 |goto Terokkar Forest 35.15,66.24
step
  talk Ramdor the Mad##19417
  accept Ezekiel##10228 |goto Terokkar Forest 35.15,66.24
step
  talk Nexus-Prince Haramad##19674
  turnin Undercutting the Competition##10165 |goto Terokkar Forest 39.37,58.48
step
  note High Priest Orglum wants you to journey to the Tomb of Lights and kill 10 Ethereal Nethermancers and 10 Ethereal Plunderers and then return to him by the Refugee Caravan.
  kill Ethereal Nethermancer##21370 |q 10840 |goto Terokkar Forest 47.79,55.01
step
  note Mekeda at the Refugee Caravan in Terokkar Forest wants you to kill 8 Cabal Skirmishers, 4 Cabal Spell-Weavers and 2 Cabal Initiates.
  kill Cabal Skirmisher##21661 |q 10878 |goto Terokkar Forest 37.89,56.0
step
  talk Mekeda##22370
  turnin The Shadow Tomb##10881 |goto Terokkar Forest 37.84,51.84
step
  talk Lakotae##22420
  turnin The Infested Protectors##10896 |goto Terokkar Forest 37.86,51.68
step
  talk Kirrik the Awakened##22272
  turnin Veil Skith: Darkstone of Terokk##10839 |goto Terokkar Forest 37.45,51.54
step
  talk High Priest Orglum##22278
  turnin The Tomb of Lights##10840 |goto Terokkar Forest 37.45,50.76
step
  talk Ethan##22365
  turnin Missing Friends##10852 |goto Terokkar Forest 37.74,51.34
step
  talk Mekeda##22370
  turnin Before Darkness Falls##10878 |goto Terokkar Forest 37.84,51.84
step
  talk Soolaveen##18675
  accept Recover the Bones##10030 |goto Terokkar Forest 37.05,49.53
step
  note Collect 10 Restless Bones. Deliver them to Ramdor the Mad, just off the western side of the Ring of Observance in Auchindoun, which is in the middle of the Bone Wastes of Terokkar Forest.
  collect 10 Restless Bones##25842 |q 10030 |goto Terokkar Forest 39.84,61.97 |tip {dropsfrom}Restless Bones
step
  talk Kirrik the Awakened##22272
  accept Veil Rhaze: Unliving Evil##10848 |goto Terokkar Forest 37.45,51.54
step
  note Kill 4 Deathtalon Spirits, 4 Screeching Spirits and 2 Spirit Ravens and return to Kirrik at the Refugee Caravan.
  kill Deathtalon Spirit##21198 |q 10848 |goto Terokkar Forest 28.05,54.35
step
  talk Isfar##18933
  turnin Brother Against Brother##10097 |goto Terokkar Forest 44.07,64.96
step
  talk Isfar##18933
  turnin Terokk's Legacy##10098 |goto Terokkar Forest 44.07,64.96
step
  talk Commander Ra'vaj##22446
  turnin An Improper Burial##10913 |goto Terokkar Forest 31.0,76.11
step
  talk Dwarfowitz##22481
  turnin Digging Through Bones##10922 |goto Terokkar Forest 30.98,76.19
step
  talk Scout Navrin##22364
  turnin Taken in the Night##10873 |goto Terokkar Forest 31.44,75.66
step
  talk Oakun##22456
  turnin The Dread Relic##10877 |goto Terokkar Forest 31.06,76.53
step
  talk Commander Ra'vaj##22446
  accept A Hero Is Needed##10914 |goto Terokkar Forest 31.0,76.11
step
  talk Oakun##22456
  accept Evil Draws Near##10923 |goto Terokkar Forest 31.06,76.53
step
  talk Dwarfowitz##22481
  accept Fumping##10929 |goto Terokkar Forest 30.98,76.19
step
  note Dwarfowitz at the Sha'tari Base Camp in the Bone Wastes wants you to bring him 8 Mature Bone Sifter Carcasses.
  collect Mature Bone Sifter Carcass##31814 |q 10929 |goto Terokkar Forest 30.98,76.19 |tip {dropsfrom}Mature Bone Sifter
step
  talk Private Weeks##18715
  turnin Who Are They?##10040 |goto Terokkar Forest 40.46,36.16
step
  talk Ezekiel##19715
  turnin Ezekiel##10228 |goto Shattrath City 49.12,35.9 |tip {turninat}Shattrath City
step
  talk Private Weeks##18715
  accept Kill the Shadow Council!##10042 |goto Terokkar Forest 40.46,36.16
step
  note Kill 10 Shadowy Executioners, 10 Shadowy Summoners and Shadowmaster Grieve, and then return to Lieutenant Gravelhammer at the Allerian Stronghold in Terokkar Forest.
  kill Shadowy Executioner##16519 |q 10042 |goto Terokkar Forest 39.01,40.92
step
  talk Warden Treelos##18424
  turnin It's Watching You!##9951 |goto Terokkar Forest 43.44,22.36
step
  turnin Safety Is Job One##10216 |goto Mana-Tombs - Dungeon -1,-1 |tip {turninat}Mana-Tombs - Dungeon
step
  talk Earthbinder Tavgren##18446
  turnin Strange Energy##9968 |goto Terokkar Forest 44.33,26.31
step
  talk Earthbinder Tavgren##18446
  turnin Clues in the Thicket##9971 |goto Terokkar Forest 44.33,26.31
step
  talk Earthbinder Tavgren##18446
  accept By Any Means Necessary##9978 |goto Terokkar Forest 44.33,26.31
step
  talk Theloria Shadecloak##18565
  turnin Unruly Neighbors##9998 |goto Terokkar Forest 69.74,44.23
step
  talk Lieutenant Meridian##21006
  turnin Report to the Allerian Post##10444 |goto Terokkar Forest 69.66,44.18
step
  talk Lieutenant Meridian##21006
  accept Attack on Firewing Point##9996 |goto Terokkar Forest 69.66,44.18
step
  talk Theloria Shadecloak##18565
  accept The Firewing Liaison##10002 |goto Terokkar Forest 69.74,44.23
step
  talk Theloria Shadecloak##18565
  accept Thinning the Ranks##10007 |goto Terokkar Forest 69.74,44.23
step
  note Locate and slay Lisaile Fireweaver, then return to Theloria Shadecloak.
  kill Lisaile Fireweaver##18583 |q 10002 |goto Terokkar Forest 67.85,53.28
step
  talk David Wayne##21465
  turnin Additional Materials##10664 |goto Terokkar Forest 77.58,38.72
step
  talk David Wayne##21465
  accept Fresh From the Mechanar##10665 |goto Terokkar Forest 77.58,38.72
step
  note David Wayne at Wayne's Retreat wants you to bring him an Overcharged Manacell.
  collect Overcharged Manacell##30824 |q 10665 |goto Terokkar Forest 77.58,38.72 |tip {dropsfrom}Overcharged Manacell
step
  talk David Wayne##21465
  accept The Lexicon Demonica##10666 |goto Terokkar Forest 77.58,38.72
step
  note Obtain the Lexicon Demonica from Grandmaster Vorpil and bring it to David Wayne at Wayne's Refuge.
  collect Lexicon Demonica##30827 |q 10666 |goto Shadow Labyrinth - Dungeon -1,-1 |tip {dropsfrom}Grandmaster Vorpil, Grandmaster Vorpil (1)
step
  note Kill 10 Firewing Defenders, 10 Firewing Bloodwarders, and 10 Firewing Warlocks. Then report back to Lieutenant Meridian at the Allerian Post in Terokkar Forest.
  kill Firewing Defender##5355 |q 9996 |goto Terokkar Forest 71.62,36.54
step
  talk Bertelm##18387
  turnin The Elusive Ironjaw##10022 |goto Terokkar Forest 58.3,54.75
step
  talk Ros'eleth##18390
  turnin Vessels of Power##10028 |goto Terokkar Forest 57.4,55.44
step
  talk Lieutenant Gravelhammer##18713
  turnin Kill the Shadow Council!##10042 |goto Terokkar Forest 57.5,55.78
step
  note Kill 10 Bonechewer Devastators and 6 Bonechewer Backbreakers and return to Theloria Shadecloak.
  kill Bonechewer Devastator##16772 |q 10007 |goto Terokkar Forest 66.09,55.0
step
  talk Hazzik##23306
  turnin A Shabby Disguise##11029 |goto Terokkar Forest 64.23,66.97
step
  talk Sky Commander Adaris##23038
  turnin Secrets of the Talonpriests##11005 |goto Terokkar Forest 64.09,66.9
step
  talk Hazzik##23306
  accept Adversarial Blood##11885 |goto Terokkar Forest 64.23,66.97
step
  note Find the Skull Piles in the middle of the summoning circles of Skettis. Summon and defeat each of the descendants by using 10 Time-Lost Scrolls at the Skull Pile. Return to Hazzik at Blackwind Landing.
  kill Darkscreecher Akkarai##23161 |q 11885 |elite
step
  talk Vindicator Haylen##22462
  turnin Terokkarantula##10921 |goto Terokkar Forest 49.71,76.19
step
  talk Vindicator Haylen##22462
  accept Return to Sha'tari Base Camp##10926 |goto Terokkar Forest 49.71,76.19
step
  note Commander Ra'vaj at the Sha'tari Outpost in the Bone Wastes of Terokkar Forest wants you to slay 12 Auchenai Initiates and 5 Auchenai Doomsayers.
  kill Auchenai Initiate##21284 |q 10914 |goto Terokkar Forest 35.03,72.94
step
  talk Ramdor the Mad##19417
  turnin Recover the Bones##10030 |goto Terokkar Forest 35.15,66.24
step
  talk Ramdor the Mad##19417
  accept Helping the Lost Find Their Way##10031 |goto Terokkar Forest 35.15,66.24
step
  talk Kirrik the Awakened##22272
  turnin Veil Rhaze: Unliving Evil##10848 |goto Terokkar Forest 37.45,51.54
step
  talk Kirrik the Awakened##22272
  accept Veil Lithic: Preemptive Strike##10861 |goto Terokkar Forest 37.45,51.54
step
  note Oakun wants you to take the Dread Relic to the Writhing Mound. Once there, kill Auchenai Death-Speakers and Auchenai Doomsayers to collect 20 Doom Skulls. Then find the Writhing Mound Summoning Circle and use the Dread Relic to summon and destroy Teribus the Cursed. Return to Oakun when the deed is done.
  kill Teribus the Cursed##22441 |q 10923 |goto Terokkar Forest 46.86,70.47 |elite
step
  talk Commander Ra'vaj##22446
  turnin A Hero Is Needed##10914 |goto Terokkar Forest 31.0,76.11
step
  talk Oakun##22456
  turnin Evil Draws Near##10923 |goto Terokkar Forest 31.06,76.53
step
  talk Scout Navrin##22364
  turnin Return to Sha'tari Base Camp##10926 |goto Terokkar Forest 31.44,75.66
step
  talk Dwarfowitz##22481
  turnin Fumping##10929 |goto Terokkar Forest 30.98,76.19
step
  talk Commander Ra'vaj##22446
  accept The Fallen Exarch##10915 |goto Terokkar Forest 31.0,76.11
step
  note Commander Ra'vaj at the Sha'tari Outpost in the Bone Wastes of Terokkar Forest wants you to destroy the contents of the Auchenai Coffin.
  kill Reanimated Exarch##22452 |q 10915
step
  talk Dwarfowitz##22481
  accept The Big Bone Worm##10930 |goto Terokkar Forest 30.98,76.19
step
  note Dwarfowitz at the Sha'tari Base Camp in the Bone Wastes wants you to recover Enormous Bone Worm Organs.
  collect Enormous Bone Worm Organs##31826 |q 10930 |goto Terokkar Forest 30.98,76.19 |tip {dropsfrom}Hai'shulud
step
  note Break the cursed eggs in Veil Lithic. Redeem 3 Hatchlings and slay 3 Malevolent Hatchlings before returning to Kirrik at the Refugee Caravan.
  collect Cursed Egg##185211 |q 10861 |goto Terokkar Forest 24.3,73.32
step
  talk Empoor##18482
  turnin By Any Means Necessary##9978 |goto Terokkar Forest 43.17,26.53
step
  talk Empoor##18482
  accept Wind Trader Lathrai##9979 |goto Terokkar Forest 43.17,26.53
step
  talk Lieutenant Meridian##21006
  turnin Attack on Firewing Point##9996 |goto Terokkar Forest 69.66,44.18
step
  talk Theloria Shadecloak##18565
  turnin The Firewing Liaison##10002 |goto Terokkar Forest 69.74,44.23
step
  talk Theloria Shadecloak##18565
  turnin Thinning the Ranks##10007 |goto Terokkar Forest 69.74,44.23
step
  talk Lieutenant Meridian##21006
  accept The Final Code##10446 |goto Terokkar Forest 69.66,44.18
step
  talk David Wayne##21465
  turnin Fresh From the Mechanar##10665 |goto Terokkar Forest 77.58,38.72
step
  talk David Wayne##21465
  turnin The Lexicon Demonica##10666 |goto Terokkar Forest 77.58,38.72
step
  talk Wind Trader Lathrai##18484
  turnin Wind Trader Lathrai##9979 |goto Shattrath City 72.22,30.75 |tip {turninat}Shattrath City
step
  talk David Wayne##21465
  accept Underworld Loam##10667 |goto Terokkar Forest 77.58,38.72
step
  note Get a Vial of Underworld Loam from Hydromancer Thespia and bring it to David Wayne at Wayne's Refuge.
  collect Vial of Underworld Loam##30828 |q 10667 |goto The Steamvault - Dungeon -1,-1 |tip {dropsfrom}Hydromancer Thespia, Hydromancer Thespia (1)
step
  talk David Wayne##21465
  accept Tear of the Earthmother##10670 |goto Terokkar Forest 77.58,38.72
step
  note Recover the Tear of the Earthmother from Warbringer O'mrogg and return it to David Wayne at Wayne's Refuge.
  collect Tear of the Earthmother##30829 |q 10670 |goto The Shattered Halls - Dungeon -1,-1 |tip {dropsfrom}Warbringer O'mrogg, Warbringer O'mrogg (1)
step
  note Lieutenant Meridian wants you to use The Final Code to set off the Mana Bomb. Then report back to Jenai Starwhisper at the Allerian Stronghold in Terokkar Forest.
  kill Mana Bomb Kill Credit Trigger##21039 |q 10446 |goto Terokkar Forest 71.26,37.37
step
  talk Jenai Starwhisper##18459
  turnin The Final Code##10446 |goto Terokkar Forest 57.01,53.49
step
  talk Jenai Starwhisper##18459
  accept Letting Earthbinder Tavgren Know##10005 |goto Terokkar Forest 57.01,53.49
step
  talk Hazzik##23306
  turnin Adversarial Blood##11885 |goto Terokkar Forest 64.23,66.97
step
  talk Sky Commander Adaris##23038
  accept Terokk's Downfall##11073 |goto Terokkar Forest 64.09,66.9
step
  note Take the Time-Lost Offering prepared by Hazzik to the Skull Pile at the center of Skettis and summon and defeat Terokk. Return to Sky Commander Adaris when you've completed this task.
  kill Terokk##21838 |q 11073 |elite
step
  note Destroy 10 Lost Spirits and 10 Broken Skeletons, and then speak with Soolaveen at the Refugee Caravan in the Bone Wastes of Terokkar Forest.
  kill Lost Spirit##18460 |q 10031 |goto Terokkar Forest 38.13,74.53
step
  talk Soolaveen##18675
  turnin Helping the Lost Find Their Way##10031 |goto Terokkar Forest 37.05,49.53
step
  talk Kirrik the Awakened##22272
  turnin Veil Lithic: Preemptive Strike##10861 |goto Terokkar Forest 37.45,51.54
step
  talk Kirrik the Awakened##22272
  accept Veil Shalas: Signal Fires##10874 |goto Terokkar Forest 37.45,51.54
step
  talk Commander Ra'vaj##22446
  turnin The Fallen Exarch##10915 |goto Terokkar Forest 31.0,76.11
step
  talk Dwarfowitz##22481
  turnin The Big Bone Worm##10930 |goto Terokkar Forest 30.98,76.19
step
  talk Earthbinder Tavgren##18446
  turnin Letting Earthbinder Tavgren Know##10005 |goto Terokkar Forest 44.33,26.31
step
  talk David Wayne##21465
  turnin Underworld Loam##10667 |goto Terokkar Forest 77.58,38.72
step
  talk David Wayne##21465
  turnin Tear of the Earthmother##10670 |goto Terokkar Forest 77.58,38.72
step
  talk David Wayne##21465
  accept Bane of the Illidari##10676 |goto Terokkar Forest 77.58,38.72
step
  talk Sky Commander Adaris##23038
  turnin Terokk's Downfall##11073 |goto Terokkar Forest 64.09,66.9
step
  note Kirrik at the Refugee Caravan wants you to extinguish the four signal fires of Veil Shalas.
  collect Sapphire Signal Fire##185216 |q 10874 |goto Terokkar Forest 55.18,67.21
step
  talk Kirrik the Awakened##22272
  turnin Veil Shalas: Signal Fires##10874 |goto Terokkar Forest 37.45,51.54
step
  talk Kirrik the Awakened##22272
  accept Return to Shattrath##10889 |goto Terokkar Forest 37.45,51.54
step
  talk Rilak the Redeemed##22292
  turnin Return to Shattrath##10889 |goto Shattrath City 52.54,21.01 |tip {turninat}Shattrath City
step
  talk David Wayne##21465
  turnin Bane of the Illidari##10676 |goto Terokkar Forest 77.58,38.72
step
  talk David Wayne##21465
  accept Quenching the Blade##10679 |goto Terokkar Forest 77.58,38.72
step
  note Travel to the Scalding Pools located near the top of the Hand of Gul'dan and use the Forged Illidari-Bane Blade to quench it in the lava pools. Once you have the Quenched Illidari-Bane Blade, return to David Wayne at Wayne's Refuge.
  collect Quenched Illidari-Bane Blade##30876 |q 10679 |goto Shadowmoon Valley 51.85,40.17 |tip {dropsfrom}Forged Illidari Bane Blade
step
  talk David Wayne##21465
  turnin Quenching the Blade##10679 |goto Terokkar Forest 77.58,38.72
step
  note {travel}Nagrand
  goto Nagrand 60.8,22.38
]])
