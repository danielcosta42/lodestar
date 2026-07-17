-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/The Scryers", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
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
  talk Magistrix Fyalenn##18531
  accept Firewing Signets##10412 |goto Shattrath City 45.2,81.44
step
  talk Arcanist Raestan##23273
  accept Report to Spymaster Thalodien##11039 |goto Shattrath City 60.85,63.53
step
  talk Spymaster Thalodien##19468
  accept Manaforge B'naar##10189 |goto Netherstorm 32.0,64.07
step
  talk Voren'thal the Seer##18530
  accept Synthesis of Power##10416 |goto Shattrath City 42.79,91.71
step
  talk Altruis the Sufferer##18417
  accept Against the Legion##10641 |goto Nagrand 27.34,43.09
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
  note Bring 8 Dampscale Basilisk Eyes to Arcanist Adyria in Shattrath City.
  collect 8 Dampscale Basilisk Eye##25744 |q 10024 |goto Terokkar Forest 38.39,11.68 |tip {dropsfrom}Dampscale Basilisk, Dampscale Devourer, Stonegazer
step
  note Magistrix Fyalenn in Shattrath City wants you to bring her 10 Firewing Signets.
  collect Firewing Signet##29426 |q 10412 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  note Spymaster Thalodien at Area 52 wants you to go to the outskirts of Manaforge B'naar and retrieve the B'naar Personnel Roster from Captain Arathyn.
  collect B'naar Personnel Roster##28376 |q 10189 |goto Netherstorm 27.24,65.44 |tip {dropsfrom}Captain Arathyn
step
  note Voren'thal the Seer in Shattrath City wants you to obtain an Arcane Tome.
  collect Arcane Tome##29739 |q 10416 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  note Altruis the sufferer wants you to obtain Freshly Drawn Blood from a Wrath Priestess at Forge Base: Gehenna in Netherstorm. Spill it on the ground and slay the Avatar of Sathal. Return to Altruis when you've completed this task.
  kill Avatar of Sathal##21925 |q 10641
step
  note Magistrix Fyalenn in Shattrath City wants you to bring her 10 Sunfury Signets.
  collect Sunfury Signet##30810 |q 10656 |goto Shattrath City 45.2,81.44 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  note Altruis the Sufferer wants you to slay Lothros at Illidari Point in Shadowmoon Valley.
  kill Lothros##21928 |q 10668 |goto Shadowmoon Valley 28.29,49.97
step
  note Altruis the Sufferer wants you to take the Imbued Silver Spear and use it at Portal Clearing near Marshlight Lake in Zangarmarsh to awake Xeleth. Return to Altruis after you've slain the demon.
  kill Xeleth##21894 |q 10669
step
  note Arcanist Thelis at the Sanctum of the Stars wants you to collect 12 Baa'ri Tablets from the ground and from Ashtongue Workers at the Ruins of Baa'ri.
  collect 12 Baa'ri Tablet Fragment##30596 |q 10683 |goto Shadowmoon Valley 58.47,37.68 |tip {dropsfrom}Ashtongue Worker, Baa'ri Tablet Fragment
step
  note Larissa Sunstrike at the Sanctum of the Stars wants you to obtain 8 Sunfury Glaives from the Demon Hunter Supplicants and Demon Hunter Initiates at the Ruins of Karabor, northeast of the Sanctum of the Stars.
  collect 8 Sunfury Glaive##30679 |q 10687 |goto Shadowmoon Valley 68.74,53.05 |tip {dropsfrom}Demon Hunter Supplicant, Demon Hunter Initiate
step
  note Varen the Reclaimer wants you to go to the Ruins of Baa'ri and slay 3 Ashtongue Handlers, 4 Ashtongue Warriors and 6 Ashtongue Shaman.
  kill Ashtongue Handler##21803 |q 10807 |goto Shadowmoon Valley 57.71,36.86
step
  note Battlemage Vyara at the Sanctum of the Stars wants you to bring her 10 Sunfury Signets.
  collect Sunfury Signet##30810 |q 10824 |goto Shadowmoon Valley 56.29,58.8 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  talk Arcanist Adyria##18596
  turnin Voren'thal's Visions##10024 |goto Shattrath City 54.98,22.54
step
  turnin Losing Gracefully##10169 |goto Shattrath City 61.47,51.09
step
  talk A'dal##18481
  turnin A'dal##10210 |goto Shattrath City 53.99,44.75
step
  talk Magistrix Fyalenn##18531
  turnin Firewing Signets##10412 |goto Shattrath City 45.2,81.44
step
  talk Spymaster Thalodien##19468
  turnin Report to Spymaster Thalodien##11039 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  turnin Manaforge B'naar##10189 |goto Netherstorm 32.0,64.07
step
  talk Voren'thal the Seer##18530
  turnin Synthesis of Power##10416 |goto Shattrath City 42.79,91.71
step
  talk Altruis the Sufferer##18417
  turnin Against the Legion##10641 |goto Nagrand 27.34,43.09
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
  talk Arcanist Thelis##21955
  turnin Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.25,59.6
step
  talk Larissa Sunstrike##21954
  turnin Karabor Training Grounds##10687 |goto Shadowmoon Valley 55.73,58.17
step
  talk Varen the Reclaimer##21953
  turnin The Ashtongue Broken##10807 |goto Shadowmoon Valley 54.73,58.19
step
  talk Battlemage Vyara##22211
  turnin Sunfury Signets##10824 |goto Shadowmoon Valley 56.29,58.8
step
  talk Arcanist Adyria##18596
  accept More Basilisk Eyes##10025 |goto Shattrath City 54.98,22.54
step
  talk Khadgar##18166
  accept City of Light##10211 |goto Shattrath City 54.75,44.32
step
  talk Spymaster Thalodien##19468
  accept High Value Targets##10193 |goto Netherstorm 32.0,64.07
step
  talk Magistrix Larynna##19469
  accept Bloodgem Crystals##10204 |goto Netherstorm 32.05,64.0
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
  talk Altruis the Sufferer##18417
  accept Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
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
  talk Varen the Reclaimer##21953
  accept The Great Retribution##10817 |goto Shadowmoon Valley 54.73,58.19
step
  talk Battlemage Vyara##22211
  accept Single Sunfury Signet##10822 |goto Shadowmoon Valley 56.29,58.8
step
  talk Battlemage Vyara##22211
  accept More Sunfury Signets##10823 |goto Shadowmoon Valley 56.29,58.8
step
  collect Dampscale Basilisk Eye##25744 |q 10025 |goto Terokkar Forest 38.39,11.68 |tip {dropsfrom}Dampscale Basilisk, Dampscale Devourer, Stonegazer
step
  note Spymaster Thalodien at Area 52 wants you to go to Manaforge B'naar and slay 2 Sunfury Warp-Masters, 6 Sunfury Warp-Engineers and 8 Sunfury Geologists.
  kill Sunfury Warp-Master##18857 |q 10193 |goto Netherstorm 23.85,70.92
step
  collect Firewing Signet##29426 |q 10414 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  collect Firewing Signet##29426 |q 10415 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  collect Arcane Tome##29739 |q 10419 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  collect Sunfury Signet##30810 |q 10658 |goto Shattrath City 45.2,81.44 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  collect Sunfury Signet##30810 |q 10659 |goto Shattrath City 45.2,81.44 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  note Arcanist Thelis at the Sanctum of the Stars wants you to obtain the Orders from Akama from Oronu the Elder at the Ruins of Baa'ri.
  collect Orders From Akama##30649 |q 10684 |goto Shadowmoon Valley 57.19,32.87 |tip {dropsfrom}Oronu the Elder
step
  note Larissa Sunstrike wants you to return to the Ruins of Karabor and find a way to unleash Azaloth on his captors.
  get A Necessary Distraction |q 10688 |goto Shadowmoon Valley 69.84,51.42
step
  note Varen the Reclaimer wants you to slay 8 Shadowmoon Slayers, 8 Shadowmoon Chosen and 4 Shadowmoon Darkweavers.
  kill Shadowmoon Slayer##22082 |q 10817 |goto Shadowmoon Valley 69.23,38.7
step
  collect Sunfury Signet##30810 |q 10822 |goto Shadowmoon Valley 56.29,58.8 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  collect Sunfury Signet##30810 |q 10823 |goto Shadowmoon Valley 56.29,58.8 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  talk Arcanist Adyria##18596
  turnin More Basilisk Eyes##10025 |goto Shattrath City 54.98,22.54
step
  talk Khadgar##18166
  turnin City of Light##10211 |goto Shattrath City 54.75,44.32
step
  talk Spymaster Thalodien##19468
  turnin High Value Targets##10193 |goto Netherstorm 32.0,64.07
step
  talk Magistrix Larynna##19469
  turnin Bloodgem Crystals##10204 |goto Netherstorm 32.05,64.0
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
  talk Altruis the Sufferer##18417
  turnin Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
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
  talk Varen the Reclaimer##21953
  turnin The Great Retribution##10817 |goto Shadowmoon Valley 54.73,58.19
step
  talk Battlemage Vyara##22211
  turnin Single Sunfury Signet##10822 |goto Shadowmoon Valley 56.29,58.8
step
  talk Battlemage Vyara##22211
  turnin More Sunfury Signets##10823 |goto Shadowmoon Valley 56.29,58.8
step
  talk Khadgar##18166
  accept Allegiance to the Scryers##10552 |goto Shattrath City 54.75,44.32
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32.0,64.07
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
  note Return to Manaforge B'naar and obtain the B'naar Access Crystal from Overseer Theredis. Use it at the B'naar Control Console to shut it down, then report back to Spymaster Thalodien.
  kill B'naar Control Console##20209 |q 10329
step
  note Venture inside the Shadow Labyrinth in Auchindoun and obtain the Book of Fel Names from Blackheart the Inciter. Return to Altruis in Nagrand once you've completed this task.
  collect Book of Fel Names##30808 |q 10649 |goto Shadow Labyrinth - Dungeon -1,-1 |elite |tip {dropsfrom}Blackheart the Inciter, Blackheart the Inciter (1)
step
  note Obtain the four medallion fragments from Haalum, Eykenen, Lakaan and Uylaru and return to Arcanist Thelis at the Sanctum of the Stars in Shadowmoon Valley.
  collect Eykenen's Medallion Fragment##30692 |q 10685 |goto Shadowmoon Valley 51.18,52.82 |tip {dropsfrom}Eykenen
step
  talk Khadgar##18166
  turnin Allegiance to the Scryers##10552 |goto Shattrath City 54.75,44.32
step
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32.0,64.07
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
  talk Spymaster Thalodien##19468
  accept Stealth Flight##10194 |goto Netherstorm 32.0,64.07
step
  talk Arcanist Thelis##21955
  accept The Warden's Cage##10686 |goto Shadowmoon Valley 56.25,59.6
step
  talk Altruis the Sufferer##18417
  accept Return to the Scryers##10691 |goto Nagrand 27.34,43.09
step
  talk Voren'thal the Seer##18530
  turnin Voren'thal the Seer##10553 |goto Shattrath City 42.79,91.71
step
  talk Veronia##20162
  turnin Stealth Flight##10194 |goto Netherstorm 33.81,64.23
step
  talk Sanoru##21826
  turnin The Warden's Cage##10686 |goto Shadowmoon Valley 57.33,49.58
step
  talk Larissa Sunstrike##21954
  turnin Return to the Scryers##10691 |goto Shadowmoon Valley 55.73,58.17
step
  talk Veronia##20162
  accept Behind Enemy Lines##10652 |goto Netherstorm 33.81,64.23
step
  talk Larissa Sunstrike##21954
  accept Varedis Must Be Stopped##10692 |goto Shadowmoon Valley 55.73,58.17
step
  note Larissa Sunstrike wants you to go to the ruins of Karabor and slay Alandien, Theras, Netharel and Varedis. Use the Book of Fel Names when Varedis uses Metamorphosis to weaken him. Return to Larissa Sunstrike with the Book of Fel Names after completing this task.
  kill Varedis##21178 |q 10692 |goto Shadowmoon Valley 72.16,53.67 |elite
step
  talk Caledis Brightdawn##19840
  turnin Behind Enemy Lines##10652 |goto Netherstorm 48.24,86.6
step
  talk Larissa Sunstrike##21954
  turnin Varedis Must Be Stopped##10692 |goto Shadowmoon Valley 55.73,58.17
step
  talk Caledis Brightdawn##19840
  accept A Convincing Disguise##10197 |goto Netherstorm 48.24,86.6
step
  note Obtain a set of Sunfury Arcanist Robes, one pair of Sunfury Researcher Gloves and a Sunfury Guardsman Medallion and bring them to Caledis Brightdawn at Manaforge Coruu in Netherstorm.
  collect Sunfury Researcher Gloves##28636 |q 10197 |goto Netherstorm 53.02,83.05 |tip {dropsfrom}Sunfury Researcher
step
  talk Caledis Brightdawn##19840
  turnin A Convincing Disguise##10197 |goto Netherstorm 48.24,86.6
step
  talk Caledis Brightdawn##19840
  accept Information Gathering##10198 |goto Netherstorm 48.24,86.6
step
  talk Caledis Brightdawn##19840
  turnin Information Gathering##10198 |goto Netherstorm 48.24,86.6
step
  talk Caledis Brightdawn##19840
  accept Shutting Down Manaforge Coruu##10330 |goto Netherstorm 48.24,86.6
step
  note Obtain the Coruu Access Crystal from Overseer Seylanna. Use it at the Coruu Control Console to shut down the manaforge and return to Caledis Brightdawn.
  kill Coruu Control Console##20417 |q 10330
step
  talk Caledis Brightdawn##19840
  turnin Shutting Down Manaforge Coruu##10330 |goto Netherstorm 48.24,86.6
step
  talk Caledis Brightdawn##19840
  accept Return to Thalodien##10200 |goto Netherstorm 48.24,86.6
step
  talk Magistrix Larynna##19469
  accept Kick Them While They're Down##10341 |goto Netherstorm 32.05,64.0
step
  note Slay 8 Sunfury Conjurers, 6 Sunfury Bowmen and 4 Sunfury Centurions. Return to Magistrix Larynna at Area 52 after completing this task.
  kill Sunfury Conjurer##20139 |q 10341 |goto Netherstorm 57.97,63.5
step
  talk Spymaster Thalodien##19468
  turnin Return to Thalodien##10200 |goto Netherstorm 32.0,64.07
step
  talk Magistrix Larynna##19469
  turnin Kick Them While They're Down##10341 |goto Netherstorm 32.05,64.0
step
  talk Magistrix Larynna##19469
  accept A Defector##10202 |goto Netherstorm 32.05,64.0
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge Duro##10338 |goto Netherstorm 32.0,64.07
step
  note Return to Manaforge Duro and obtain the Duro Access Crystal from Overseer Athanel. Use it at the Duro Control Console to shut it down and report back to Spymaster Thalodien.
  kill Duro Control Console##20418 |q 10338
step
  talk Magister Theledorn##20920
  turnin A Defector##10202 |goto Netherstorm 26.19,41.57
step
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge Duro##10338 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge Ara##10365 |goto Netherstorm 32.0,64.07
step
  talk Magister Theledorn##20920
  accept Damning Evidence##10432 |goto Netherstorm 26.19,41.57
step
  note Travel to Manaforge Ara and obtain the Ara Access Crystal from Overseer Azarad. Use it at the Manaforge Ara console to shut it down.
  kill Ara Control Console##20440 |q 10365
step
  note Obtain 8 Orders from Kael'thas from demons at Manaforge Ara and bring them to Spymaster Thalodien in Area 52.
  collect 8 Orders From Kael'thas##29797 |q 10432 |goto Netherstorm 29.39,42.28 |tip {dropsfrom}Daughter of Destiny, Gan'arg Warp-Tinker, Mo'arg Warp-Master
step
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge Ara##10365 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  turnin Damning Evidence##10432 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  accept A Gift for Voren'thal##10508 |goto Netherstorm 32.0,64.07
step
  note Spymaster Thalodien at Area 52 wants you to obtain the First Half of Socrethar's Stone from Forgemaster Morug at Forge Base: Oblivion and the Second Half of Socrethar's Stone from Silroth at Forge Base: Gehenna.
  kill Forgemaster Morug##20800 |goto Netherstorm 36.15,26.43 |elite
  collect First Half of Socrethar's Stone##29624 |q 10508 |goto Netherstorm 36.15,26.43
step
  talk Spymaster Thalodien##19468
  turnin A Gift for Voren'thal##10508 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  accept Bound for Glory##10509 |goto Netherstorm 32.0,64.07
step
  talk Voren'thal the Seer##18530
  turnin Bound for Glory##10509 |goto Shattrath City 42.79,91.71
step
  talk Voren'thal the Seer##18530
  accept Turning Point##10507 |goto Shattrath City 42.79,91.71
step
  note Use Socrethar's Teleportation's Stone at Invasion Point: Overlord, north of Forge Base: Oblivion to transport your party to Socrethar's Landing. Once there, use Voren'thal's Presence to defeat Socrethar.
  kill Socrethar##20132 |q 10507 |goto Netherstorm 29.31,13.7 |elite
step
  talk Voren'thal the Seer##18530
  turnin Turning Point##10507 |goto Shattrath City 42.79,91.71
]])
