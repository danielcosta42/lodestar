-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Lower City", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Rilak the Redeemed##22292
  accept The Eyes of Skettis##10847 |goto Shattrath City 52.54,21.01
step
  talk Rokag##18386
  accept Surrender to the Horde##10862 |goto Terokkar Forest 48.97,44.63
step
  talk Mekeda##22370
  accept Before Darkness Falls##10878 |goto Terokkar Forest 37.84,51.84
step
  talk Akuno##22377
  accept Escaping the Tomb##10887 |goto Terokkar Forest 30.61,49.06
step
  talk Skywing##22424
  accept Skywing##10898 |goto Terokkar Forest 53.85,72.38
step
  talk Commander Ra'vaj##22446
  accept An Improper Burial##10913 |goto Terokkar Forest 31.0,76.11
step
  talk Vekax##22429
  accept The Outcast's Plight##10917 |goto Shattrath City 46.21,22.36
step
  talk Chief Archaeologist Letoll##22458
  accept Digging Through Bones##10922 |goto Terokkar Forest 31.27,76.09
step
  talk Isfar##18933
  accept Brother Against Brother##10097 |goto Terokkar Forest 44.07,64.96
step
  talk Spy To'gun##18891
  accept The Soul Devices##10091 |goto Shadow Labyrinth - Dungeon -1,-1
step
  talk Field Commander Mahfuun##19542
  accept The Codex of Blood##10094 |goto Terokkar Forest 40.04,72.16
step
  talk Spymistress Mehlisah Highcrown##18893
  accept Trouble at Auchindoun##10177 |goto Shattrath City 50.24,45.36
step
  talk Spy Grik'tha##19496
  accept Find Spy To'gun##10178 |goto Terokkar Forest 39.94,72.28
step
  talk Nasmara Moonsong##22208
  accept Becoming a Mooncloth Tailor##10831 |goto Shattrath City 66.55,69.33
step
  talk Gidge Spellweaver##22213
  accept Becoming a Spellfire Tailor##10832 |goto Shattrath City 66.82,68.75
step
  talk Andrion Darkspinner##22212
  accept Becoming a Shadoweave Tailor##10833 |goto Shattrath City 66.81,68.13
step
  talk Apothecary Antonivich##16588
  accept Master of Elixirs##10906 |goto Hellfire Peninsula 52.28,36.46
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Headfeathers of Ikiss##11372 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Exarch's Soul Gem##11374 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  accept Wanted: Murmur's Whisper##11375 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Malicious Instructors##11376 |goto Shattrath City 75.5,37.24
step
  note Bring the Eye of Reskk and the Eye of Shienor to Rilak the Redeemed in the Lower City district of Shattrath.
  collect Eye of Veil Reskk##185200 |q 10847 |goto Terokkar Forest 50.12,19.37
step
  note Mekeda at the Refugee Caravan in Terokkar Forest wants you to kill 8 Cabal Skirmishers, 4 Cabal Spell-Weavers and 2 Cabal Initiates.
  kill Cabal Skirmisher##21661 |q 10878 |goto Terokkar Forest 37.89,56.0
step
  note Commander Ra'vaj at the Sha'tari Outpost in the Bone Wastes of Terokkar Forest wants you to burn 8 Slain Auchenai Warriors and 8 Slain Sha'tar Vindicators.
  kill Slain Sha'tar Vindicator##21859 |q 10913 |goto Terokkar Forest 34.6,76.1
step
  note Bring 30 Arakkoa Feathers to Vekax in Shattrath's Lower City.
  kill Shienor Talonite##18449 |q 10917 |goto Terokkar Forest 50.89,19.63
step
  note Kill Darkweaver Syth in the Sethekk halls, then free Lakka from captivity. Return to Isfar outside the Sethekk Halls when you've completed the rescue.
  kill Darkweaver Syth##18472 |q 10097 |goto Sethekk Halls - Dungeon -1,-1 |elite
step
  note Steal 5 Soul Devices and deliver them to Spymistress Mehlisah Highcrown at the Terrace of the Light in Shattrath City.
  collect Soul Device##182940 |q 10091 |goto Shadow Labyrinth - Dungeon -1,-1
step
  note Destroy Murmur and inform Spymistress Mehlisah Highcrown at the Terrace of Light in Shattrath City of the events that have transpired inside the Shadow Labyrinth.
  kill Murmur##18708 |q 10095 |goto Shadow Labyrinth - Dungeon -1,-1 |elite
step
  note Use the Square of Imbued Netherweave while standing in Cenarion Refuge's moonwell to create a Sample of Primal Mooncloth. Bring the completed sample back to Nasmara Moonsong in Shattrath's Lower City.
  get Becoming a Mooncloth Tailor |q 10831 |goto Shattrath City 66.55,69.33
step
  note Bring a sample of Nether-wraith Essence to Gidge Spellweaver in Shattrath's Lower City.
  get Becoming a Spellfire Tailor |q 10832 |goto Shattrath City 66.82,68.75
step
  note Use the Crystal of Deep Shadows near the Altar of Shadows to deepen your attunement to the altar, then return to Andrion Darkspinner in Shattrath's Lower City.
  get Becoming a Shadoweave Tailor |q 10833 |goto Shadowmoon Valley 58.3,70.92
step
  note Wind Trader Zhareem has asked you to acquire The Headfeathers of Ikiss. Deliver them to him in Shattrath's Lower City to collect the reward.
  get Wanted: The Headfeathers of Ikiss |q 11372 |goto Shattrath City 75.13,36.65
step
  note Wind Trader Zhareem has asked you to recover The Exarch's Soul Gem. Deliver it to him in Shattrath's Lower City to collect the reward.
  get Wanted: The Exarch's Soul Gem |q 11374 |goto Shattrath City 75.13,36.65
step
  note Wind Trader Zhareem has asked you to obtain Murmur's Whisper. Deliver it to him in Shattrath's Lower City to collect the reward.
  kill Murmur##18708 |q 11375 |goto Shadow Labyrinth - Dungeon -1,-1 |elite
step
  note Nether-Stalker Mah'duun wants you to kill 3 Malicious Instructors. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Malicious Instructor##18848 |q 11376 |goto Shadow Labyrinth - Dungeon -1,-1 |elite
step
  talk Rilak the Redeemed##22292
  turnin The Eyes of Skettis##10847 |goto Shattrath City 52.54,21.01
step
  talk Rilak the Redeemed##22292
  turnin Surrender to the Horde##10862 |goto Shattrath City 52.54,21.01
step
  talk Mekeda##22370
  turnin Before Darkness Falls##10878 |goto Terokkar Forest 37.84,51.84
step
  talk Mekeda##22370
  turnin Cabal Orders##10880 |goto Terokkar Forest 37.84,51.84
step
  talk Mekeda##22370
  turnin Escaping the Tomb##10887 |goto Terokkar Forest 37.84,51.84
step
  talk Rilak the Redeemed##22292
  turnin Skywing##10898 |goto Shattrath City 52.54,21.01
step
  talk Commander Ra'vaj##22446
  turnin An Improper Burial##10913 |goto Terokkar Forest 31.0,76.11
step
  talk Vekax##22429
  turnin The Outcast's Plight##10917 |goto Shattrath City 46.21,22.36
step
  talk Dwarfowitz##22481
  turnin Digging Through Bones##10922 |goto Terokkar Forest 30.98,76.19
step
  talk Isfar##18933
  turnin Brother Against Brother##10097 |goto Terokkar Forest 44.07,64.96
step
  talk Spymistress Mehlisah Highcrown##18893
  turnin The Soul Devices##10091 |goto Shattrath City 50.24,45.36
step
  turnin The Codex of Blood##10094 |goto Shadow Labyrinth - Dungeon -1,-1
step
  talk Spymistress Mehlisah Highcrown##18893
  turnin Into the Heart of the Labyrinth##10095 |goto Shattrath City 50.24,45.36
step
  talk Field Commander Mahfuun##19542
  turnin Trouble at Auchindoun##10177 |goto Terokkar Forest 40.04,72.16
step
  talk Spy To'gun##18891
  turnin Find Spy To'gun##10178 |goto Shadow Labyrinth - Dungeon -1,-1
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
  talk Lorokeem##19052
  turnin Master of Elixirs##10906 |goto Shattrath City 45.59,21.49
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Headfeathers of Ikiss##11372 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Exarch's Soul Gem##11374 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: Murmur's Whisper##11375 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Malicious Instructors##11376 |goto Shattrath City 75.5,37.24
step
  talk Rilak the Redeemed##22292
  accept Seek Out Kirrik##10849 |goto Shattrath City 52.54,21.01
step
  talk Mekeda##22370
  accept The Shadow Tomb##10881 |goto Terokkar Forest 37.84,51.84
step
  talk Commander Ra'vaj##22446
  accept A Hero Is Needed##10914 |goto Terokkar Forest 31.0,76.11
step
  talk Vekax##22429
  accept More Feathers##10918 |goto Shattrath City 46.21,22.36
step
  talk Dwarfowitz##22481
  accept Fumping##10929 |goto Terokkar Forest 30.98,76.19
step
  talk Lorokeem##19052
  accept Master of Elixirs##10902 |goto Shattrath City 45.59,21.49
step
  note Go into the Shadow Tomb, west of the Refugee Caravan and retrieve the Drape of Arunen, the Gavel of K'alen and the Scroll of Atalor. Return to Mekeda at the Refugee Caravan after you've completed this task.
  collect Cabal Chest##185226 |q 10881 |goto Terokkar Forest 32.1,51.2
step
  note Commander Ra'vaj at the Sha'tari Outpost in the Bone Wastes of Terokkar Forest wants you to slay 12 Auchenai Initiates and 5 Auchenai Doomsayers.
  kill Auchenai Initiate##21284 |q 10914 |goto Terokkar Forest 35.03,72.94
step
  kill Shienor Talonite##18449 |q 10918 |goto Terokkar Forest 50.89,19.63
step
  note Dwarfowitz at the Sha'tari Base Camp in the Bone Wastes wants you to bring him 8 Mature Bone Sifter Carcasses.
  get Fumping |q 10929 |goto Terokkar Forest 30.98,76.19
step
  note Go to the Black Morass in the Caverns of Time and obtain 10 Essences of Infinity from Rift Lords and Rift Keepers. Bring these along with 5 Elixirs of Major Defense, 5 Elixirs of Mastery and 5 Elixirs of Major Agility to Lorokeem in Shattrath's Lower City.
  get Master of Elixirs |q 10902 |goto Shattrath City 45.59,21.49
step
  talk Kirrik the Awakened##22272
  turnin Seek Out Kirrik##10849 |goto Terokkar Forest 37.45,51.54
step
  talk Mekeda##22370
  turnin The Shadow Tomb##10881 |goto Terokkar Forest 37.84,51.84
step
  talk Commander Ra'vaj##22446
  turnin A Hero Is Needed##10914 |goto Terokkar Forest 31.0,76.11
step
  talk Vekax##22429
  turnin More Feathers##10918 |goto Shattrath City 46.21,22.36
step
  talk Dwarfowitz##22481
  turnin Fumping##10929 |goto Terokkar Forest 30.98,76.19
step
  talk Lorokeem##19052
  turnin Master of Elixirs##10902 |goto Shattrath City 45.59,21.49
step
  talk Kirrik the Awakened##22272
  accept Veil Skith: Darkstone of Terokk##10839 |goto Terokkar Forest 37.45,51.54
step
  talk Ethan##22365
  accept Missing Friends##10852 |goto Terokkar Forest 37.74,51.34
step
  talk High Priest Orglum##22278
  accept The Tomb of Lights##10840 |goto Terokkar Forest 37.45,50.76
step
  talk High Priest Orglum##22278
  accept The Vengeful Harbinger##10842 |goto Terokkar Forest 37.45,50.76
step
  talk Commander Ra'vaj##22446
  accept The Fallen Exarch##10915 |goto Terokkar Forest 31.0,76.11
step
  talk Dwarfowitz##22481
  accept The Big Bone Worm##10930 |goto Terokkar Forest 30.98,76.19
step
  note Ethan wants you to find 12 of his missing friends in Veil Skith and then return to him at the Refugee Caravan.
  kill Captive Child##22314 |q 10852 |goto Terokkar Forest 31.14,42.41
step
  note High Priest Orglum wants you to journey to the Tomb of Lights and kill 10 Ethereal Nethermancers and 10 Ethereal Plunderers and then return to him by the Refugee Caravan.
  kill Ethereal Nethermancer##21370 |q 10840 |goto Terokkar Forest 47.79,55.01
step
  note Commander Ra'vaj at the Sha'tari Outpost in the Bone Wastes of Terokkar Forest wants you to destroy the contents of the Auchenai Coffin.
  kill Reanimated Exarch##22452 |q 10915
step
  note Dwarfowitz at the Sha'tari Base Camp in the Bone Wastes wants you to recover Enormous Bone Worm Organs.
  get The Big Bone Worm |q 10930 |goto Terokkar Forest 30.98,76.19
step
  talk Kirrik the Awakened##22272
  turnin Veil Skith: Darkstone of Terokk##10839 |goto Terokkar Forest 37.45,51.54
step
  talk Ethan##22365
  turnin Missing Friends##10852 |goto Terokkar Forest 37.74,51.34
step
  talk High Priest Orglum##22278
  turnin The Tomb of Lights##10840 |goto Terokkar Forest 37.45,50.76
step
  turnin The Vengeful Harbinger##10842 |goto Terokkar Forest 50.88,54.75
step
  talk Commander Ra'vaj##22446
  turnin The Fallen Exarch##10915 |goto Terokkar Forest 31.0,76.11
step
  talk Dwarfowitz##22481
  turnin The Big Bone Worm##10930 |goto Terokkar Forest 30.98,76.19
step
  talk Kirrik the Awakened##22272
  accept Veil Rhaze: Unliving Evil##10848 |goto Terokkar Forest 37.45,51.54
step
  talk Soolaveen##18675
  accept Recover the Bones##10030 |goto Terokkar Forest 37.05,49.53
step
  note Kill 4 Deathtalon Spirits, 4 Screeching Spirits and 2 Spirit Ravens and return to Kirrik at the Refugee Caravan.
  kill Deathtalon Spirit##21198 |q 10848 |goto Terokkar Forest 28.05,54.35
step
  note Collect 10 Restless Bones. Deliver them to Ramdor the Mad, just off the western side of the Ring of Observance in Auchindoun, which is in the middle of the Bone Wastes of Terokkar Forest.
  collect Restless Bones##182584 |q 10030 |goto Terokkar Forest 39.84,61.97
step
  talk Kirrik the Awakened##22272
  turnin Veil Rhaze: Unliving Evil##10848 |goto Terokkar Forest 37.45,51.54
step
  talk Ramdor the Mad##19417
  turnin Recover the Bones##10030 |goto Terokkar Forest 35.15,66.24
step
  talk Kirrik the Awakened##22272
  accept Veil Lithic: Preemptive Strike##10861 |goto Terokkar Forest 37.45,51.54
step
  talk Ramdor the Mad##19417
  accept Helping the Lost Find Their Way##10031 |goto Terokkar Forest 35.15,66.24
step
  note Break the cursed eggs in Veil Lithic. Redeem 3 Hatchlings and slay 3 Malevolent Hatchlings before returning to Kirrik at the Refugee Caravan.
  kill Malevolent Hatchling##22337 |q 10861
step
  note Destroy 10 Lost Spirits and 10 Broken Skeletons, and then speak with Soolaveen at the Refugee Caravan in the Bone Wastes of Terokkar Forest.
  kill Lost Spirit##18460 |q 10031 |goto Terokkar Forest 38.13,74.53
step
  talk Kirrik the Awakened##22272
  turnin Veil Lithic: Preemptive Strike##10861 |goto Terokkar Forest 37.45,51.54
step
  talk Soolaveen##18675
  turnin Helping the Lost Find Their Way##10031 |goto Terokkar Forest 37.05,49.53
step
  talk Kirrik the Awakened##22272
  accept Veil Shalas: Signal Fires##10874 |goto Terokkar Forest 37.45,51.54
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
  turnin Return to Shattrath##10889 |goto Shattrath City 52.54,21.01
step
  talk Defender Grashna##22373
  accept The Skettis Offensive##10879 |goto Shattrath City 51.74,20.83
step
  talk Rilak the Redeemed##22292
  turnin The Skettis Offensive##10879 |goto Shattrath City 52.54,21.01
]])
