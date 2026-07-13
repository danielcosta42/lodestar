-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Horde/Shattrath City (Dailies)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Arcanist Adyria##18596
  accept Voren'thal's Visions##10024 |goto Shattrath City 54.98,22.54
step
  talk Adyen the Lightwarden##18537
  accept Marks of Kil'jaeden##10325 |goto Shattrath City 30.73,34.62
step
  talk Magistrix Fyalenn##18531
  accept Firewing Signets##10412 |goto Shattrath City 45.2,81.44
step
  talk Vekax##22429
  accept The Outcast's Plight##10917 |goto Shattrath City 46.21,22.36
step
  talk Voren'thal the Seer##18530
  accept Synthesis of Power##10416 |goto Shattrath City 42.79,91.71
step
  talk Ishanah##18538
  accept A Cleansing Light##10420 |goto Shattrath City 23.97,29.73
step
  talk Adyen the Lightwarden##18537
  accept Marks of Sargeras##10653 |goto Shattrath City 30.73,34.62
step
  talk Magistrix Fyalenn##18531
  accept Sunfury Signets##10656 |goto Shattrath City 45.2,81.44
step
  talk Wind Trader Zhareem##24369
  accept Wanted: Nazan's Riding Crop##11354 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  accept Wanted: Keli'dan's Feathered Stave##11362 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  accept Wanted: Bladefist's Seal##11363 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Shattered Hand Centurions##11364 |goto Shattrath City 75.5,37.24
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
  talk Wind Trader Zhareem##24369
  accept Wanted: The Headfeathers of Ikiss##11372 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  accept Wanted: Shaffar's Wondrous Pendant##11373 |goto Shattrath City 75.13,36.65
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
  talk The Rokk##24393
  accept Revenge is Tasty##11377 |goto Shattrath City 61.75,15.55
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Epoch Hunter's Head##11378 |goto Shattrath City 75.13,36.65
step
  talk The Rokk##24393
  accept Super Hot Stew##11379 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  accept Manalicious##11380 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  accept Soup for the Soul##11381 |goto Shattrath City 61.75,15.55
step
  talk Wind Trader Zhareem##24369
  accept Wanted: Aeonus's Hourglass##11382 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Rift Lords##11383 |goto Shattrath City 75.5,37.24
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
  talk Exarch Larethor##24813
  accept Magisters' Terrace##11488 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Sisters of Torment##11500 |goto Shattrath City 75.5,37.24
step
  talk Tradesman Portanuus##25034
  accept Report to Nasuun##11517 |goto Isle of Quel'Danas 47.27,35.04
step
  talk Tradesman Portanuus##25034
  accept Report to Nasuun##11534 |goto Isle of Quel'Danas 47.27,35.04
step
  talk General Tiras'alan##25167
  accept Enter, the Deceiver...##11550 |goto Shattrath City 53.6,43.64
step
  note Nether-Stalker Mah'duun has tasked you with the deaths of 4 Shattered Hand Centurions. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Shattered Hand Centurion##17465 |q 11364 |goto The Shattered Halls - Dungeon -1,-1
step
  note Nether-Stalker Mah'duun has asked you to slay 14 Coilfang Myrmidons. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Coilfang Myrmidon##17800 |q 11371 |goto The Steamvault - Dungeon -1,-1
step
  note Nether-Stalker Mah'duun wants you to kill 3 Malicious Instructors. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Malicious Instructor##18848 |q 11376 |goto Shadow Labyrinth - Dungeon -1,-1
step
  note Nether-Stalker Mah'duun wants you to slay 4 Sisters of Torment. Return to him in Shattrath's Lower City once you have done so in order to collect the bounty.
  kill Sister of Torment##24697 |q 11500 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Arcanist Adyria##18596
  turnin Voren'thal's Visions##10024 |goto Shattrath City 54.98,22.54
step
  talk Adyen the Lightwarden##18537
  turnin Marks of Kil'jaeden##10325 |goto Shattrath City 30.73,34.62
step
  talk Magistrix Fyalenn##18531
  turnin Firewing Signets##10412 |goto Shattrath City 45.2,81.44
step
  talk Vekax##22429
  turnin The Outcast's Plight##10917 |goto Shattrath City 46.21,22.36
step
  talk Voren'thal the Seer##18530
  turnin Synthesis of Power##10416 |goto Shattrath City 42.79,91.71
step
  talk Ishanah##18538
  turnin A Cleansing Light##10420 |goto Shattrath City 23.97,29.73
step
  talk Adyen the Lightwarden##18537
  turnin Marks of Sargeras##10653 |goto Shattrath City 30.73,34.62
step
  talk Magistrix Fyalenn##18531
  turnin Sunfury Signets##10656 |goto Shattrath City 45.2,81.44
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: Nazan's Riding Crop##11354 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: Keli'dan's Feathered Stave##11362 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: Bladefist's Seal##11363 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Shattered Hand Centurions##11364 |goto Shattrath City 75.5,37.24
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
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Headfeathers of Ikiss##11372 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: Shaffar's Wondrous Pendant##11373 |goto Shattrath City 75.13,36.65
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
  talk The Rokk##24393
  turnin Revenge is Tasty##11377 |goto Shattrath City 61.75,15.55
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Epoch Hunter's Head##11378 |goto Shattrath City 75.13,36.65
step
  talk The Rokk##24393
  turnin Super Hot Stew##11379 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  turnin Manalicious##11380 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  turnin Soup for the Soul##11381 |goto Shattrath City 61.75,15.55
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: Aeonus's Hourglass##11382 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Rift Lords##11383 |goto Shattrath City 75.5,37.24
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
  talk Tyrith##24822
  turnin Magisters' Terrace##11488 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Sisters of Torment##11500 |goto Shattrath City 75.5,37.24
step
  talk Exarch Nasuun##24932
  turnin Report to Nasuun##11517 |goto Shattrath City 49.08,42.48
step
  talk Exarch Nasuun##24932
  turnin Report to Nasuun##11534 |goto Shattrath City 49.08,42.48
step
  talk Archmage Ne'thul##25169
  turnin Enter, the Deceiver...##11550 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Arcanist Adyria##18596
  accept More Basilisk Eyes##10025 |goto Shattrath City 54.98,22.54
step
  talk Adyen the Lightwarden##18537
  accept More Marks of Kil'jaeden##10326 |goto Shattrath City 30.73,34.62
step
  talk Adyen the Lightwarden##18537
  accept Single Mark of Kil'jaeden##10327 |goto Shattrath City 30.73,34.62
step
  talk Vekax##22429
  accept More Feathers##10918 |goto Shattrath City 46.21,22.36
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
  talk Tyrith##24822
  accept The Scryer's Scryer##11490 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Exarch Nasuun##24932
  accept Intercepting the Mana Cells##11513 |goto Shattrath City 49.08,42.48
step
  talk Exarch Nasuun##24932
  accept Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.08,42.48
step
  talk Emissary Mordin##19202
  accept Gaining the Advantage##11875 |goto Shattrath City 62.82,35.58
step
  talk Lord Torvos##25140
  accept Sunfury Attack Plans##11877 |goto Shattrath City 62.76,35.98
step
  talk Harbinger Haronem##19475
  accept The Multiphase Survey##11880 |goto Shattrath City 61.65,52.16
step
  note Tyrith wants you to use the orb on the balcony in Magisters' Terrace.
  kill Magisters' Terrace - Scryer Quest Bunny##25042 |q 11490 |goto Magisters' Terrace - Dungeon -1,-1
step
  note Harbinger Haronem in Shattrath City wants you to use the Multiphase Spectrographic Goggles to take 6 Multiphase Readings.
  kill Multiphase Disturbance##25882 |q 11880 |goto Nagrand 36.5,67.99
step
  talk Arcanist Adyria##18596
  turnin More Basilisk Eyes##10025 |goto Shattrath City 54.98,22.54
step
  talk Adyen the Lightwarden##18537
  turnin More Marks of Kil'jaeden##10326 |goto Shattrath City 30.73,34.62
step
  talk Adyen the Lightwarden##18537
  turnin Single Mark of Kil'jaeden##10327 |goto Shattrath City 30.73,34.62
step
  talk Vekax##22429
  turnin More Feathers##10918 |goto Shattrath City 46.21,22.36
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
  talk Kalecgos##24848
  turnin The Scryer's Scryer##11490 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Exarch Nasuun##24932
  turnin Intercepting the Mana Cells##11513 |goto Shattrath City 49.08,42.48
step
  talk Exarch Nasuun##24932
  turnin Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.08,42.48
step
  talk Emissary Mordin##19202
  turnin Gaining the Advantage##11875 |goto Shattrath City 62.82,35.58
step
  talk Lord Torvos##25140
  turnin Sunfury Attack Plans##11877 |goto Shattrath City 62.76,35.98
step
  talk Harbinger Haronem##19475
  turnin The Multiphase Survey##11880 |goto Shattrath City 61.65,52.16
step
  talk Kalecgos##24848
  accept Hard to Kill##11492 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Exarch Larethor##24813
  turnin Hard to Kill##11492 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Signet Ring of Prince Kael'thas##11499 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Signet Ring of Prince Kael'thas##11499 |goto Shattrath City 75.13,36.65
]])
