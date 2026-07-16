-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Alliance/Shattrath City (Dailies)", {
	faction = "Alliance",
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
  note Bring 8 Dampscale Basilisk Eyes to Arcanist Adyria in Shattrath City.
  collect 8 Dampscale Basilisk Eye##25744 |q 10024 |goto Terokkar Forest 38.39,11.68 |tip {dropsfrom}Dampscale Basilisk, Dampscale Devourer, Stonegazer
step
  note Bring 10 Marks of Kil'jaeden to Adyen the Lightwarden in Shattrath City.
  collect 10 Mark of Kil'jaeden##29425 |q 10325 |goto Nagrand 20.0,49.34 |tip {dropsfrom}Mo'arg Engineer, Kil'sorrow Spellbinder, Kil'sorrow Cultist
step
  note Magistrix Fyalenn in Shattrath City wants you to bring her 10 Firewing Signets.
  collect Firewing Signet##29426 |q 10412 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  note Bring 30 Arakkoa Feathers to Vekax in Shattrath's Lower City.
  collect 30 Arakkoa Feather##25719 |q 10917 |goto Terokkar Forest 50.89,19.63 |tip {dropsfrom}Shienor Talonite, Shienor Sorcerer, Shienor Wing Guard
step
  note Voren'thal the Seer in Shattrath City wants you to obtain an Arcane Tome.
  collect Arcane Tome##29739 |q 10416 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  note Bring a Fel Armament to Ishanah in Shattrath City.
  collect Fel Armament##29740 |q 10420 |goto Netherstorm 40.3,21.07 |tip {dropsfrom}Cyber-Rage Forgelord, Mo'arg Doomsmith, Mo'arg Engineer
step
  note Bring 10 Marks of Sargeras to Adyen the Lightwarden in Shattrath City.
  collect 10 Mark of Sargeras##30809 |q 10653 |goto Netherstorm 40.3,21.07 |tip {dropsfrom}Cyber-Rage Forgelord, Mo'arg Doomsmith, Gan'arg Mekgineer
step
  note Magistrix Fyalenn in Shattrath City wants you to bring her 10 Sunfury Signets.
  collect Sunfury Signet##30810 |q 10656 |goto Shattrath City 45.2,81.44 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  note Wind Trader Zhareem has asked you to obtain Nazan's Riding Crop. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Nazan's Riding Crop##33833 |q 11354 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Nazan (1)
step
  note Wind Trader Zhareem has asked you to obtain Keli'dan's Feathered Stave. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Keli'dan's Feathered Stave##33814 |q 11362 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Keli'dan the Breaker (1)
step
  note Wind Trader Zhareem has asked you to obtain Bladefist's Seal. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Bladefist's Seal##33815 |q 11363 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Warchief Kargath Bladefist (1)
step
  note Nether-Stalker Mah'duun has tasked you with the deaths of 4 Shattered Hand Centurions. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Shattered Hand Centurion##17465 |q 11364 |goto The Shattered Halls - Dungeon -1,-1 |elite
step
  note Wind Trader Zhareem has asked you to obtain The Heart of Quagmirran. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect The Heart of Quagmirran##33821 |q 11368 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Quagmirran (1)
step
  note Wind Trader Zhareem wants you to obtain a Black Stalker Egg. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Black Stalker Egg##33826 |q 11369 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}The Black Stalker (1)
step
  note Wind Trader Zhareem has asked you to acquire The Warlord's Treatise. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect The Warlord's Treatise##33827 |q 11370 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Warlord Kalithresh (1)
step
  note Nether-Stalker Mah'duun has asked you to slay 14 Coilfang Myrmidons. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Coilfang Myrmidon##17800 |q 11371 |goto The Steamvault - Dungeon -1,-1 |elite
step
  note Wind Trader Zhareem has asked you to acquire The Headfeathers of Ikiss. Deliver them to him in Shattrath's Lower City to collect the reward.
  collect The Headfeathers of Ikiss##33834 |q 11372 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Talon King Ikiss (1)
step
  note Wind Trader Zhareem wants you to obtain Shaffar's Wondrous Amulet. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Shaffar's Wondrous Amulet##33835 |q 11373 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Nexus-Prince Shaffar (1)
step
  note Wind Trader Zhareem has asked you to recover The Exarch's Soul Gem. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect The Exarch's Soul Gem##33836 |q 11374 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Exarch Maladaar (1)
step
  note Wind Trader Zhareem has asked you to obtain Murmur's Whisper. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Murmur's Whisper##33840 |q 11375 |goto Shadow Labyrinth - Dungeon -1,-1 |tip {dropsfrom}Murmur (1)
step
  note Nether-Stalker Mah'duun wants you to kill 3 Malicious Instructors. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Malicious Instructor##18848 |q 11376 |goto Shadow Labyrinth - Dungeon -1,-1 |elite
step
  note The Rokk in Lower City has asked you to cook up some Kaliri Stew using his cooking pot. Return to him when it's done.
  collect Kaliri Stew##33839 |q 11377 |goto Shattrath City 61.75,15.55
step
  note Wind Trader Zhareem has asked you to obtain the Epoch Hunter's Head. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Epoch Hunter's Head##33847 |q 11378 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Epoch Hunter (1)
step
  note The Rokk in Lower City has asked you to cook up some Demon Broiled Surprise using his cooking pot, two Mok'Nathal Shortribs and a Crunchy Serpent. Return to him when it's done.
  collect Demon Broiled Surprise##33848 |q 11379 |goto Shattrath City 61.75,15.55
step
  note The Rokk in Lower City has asked you collect 15 Mana Berries from the Eco-Domes in Netherstorm.
  collect 15 Mana Berry##33849 |q 11380 |goto Netherstorm 45.03,48.9 |tip {dropsfrom}Mana Berry Bush
step
  note The Rokk in Lower City has asked you to cook up some Spiritual Soup using his cooking pot. Return to him when it's done.
  collect Spiritual Soup##33850 |q 11381 |goto Shattrath City 61.75,15.55
step
  note Wind Trader Zhareem has asked you to acquire Aeonus's Hourglass. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Aeonus's Hourglass##33858 |q 11382 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Aeonus (1)
step
  note Wind Trader Zhareem has asked you to obtain a Warp Splinter Clipping. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Warp Splinter Clipping##33859 |q 11384 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Warp Splinter (1)
step
  note Nether-Stalker Mah'duun wants you to kill 6 Sunseeker Channelers. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Sunseeker Channeler##19505 |q 11385 |elite
step
  note Wind Trader Zhareem has asked you to acquire Pathaleon's Projector. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect Pathaleon's Projector##33860 |q 11386 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Pathaleon the Calculator (1)
step
  note Nether-Stalker Mah'duun wants you to destroy 5 Tempest-Forge Destroyers. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Tempest-Forge Destroyer##19735 |q 11387 |elite
step
  note Wind Trader Zhareem has asked you to obtain The Scroll of Skyriss. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect The Scroll of Skyriss##33861 |q 11388 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Harbinger Skyriss (1)
step
  note Nether-Stalker Mah'duun wants you to dismantle 5 Arcatraz Sentinels. Return to him in Shattrath's Lower City once that has been accomplished in order to collect the bounty.
  kill Arcatraz Sentinel##20869 |q 11389 |elite
step
  note Nether-Stalker Mah'duun wants you to slay 4 Sisters of Torment. Return to him in Shattrath's Lower City once you have done so in order to collect the bounty.
  kill Sister of Torment##24697 |q 11500 |goto Magisters' Terrace - Dungeon -1,-1 |elite
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
  collect Dampscale Basilisk Eye##25744 |q 10025 |goto Terokkar Forest 38.39,11.68 |tip {dropsfrom}Dampscale Basilisk, Dampscale Devourer, Stonegazer
step
  collect Mark of Kil'jaeden##29425 |q 10326 |goto Nagrand 20.0,49.34 |tip {dropsfrom}Mo'arg Engineer, Kil'sorrow Spellbinder, Kil'sorrow Cultist
step
  collect Mark of Kil'jaeden##29425 |q 10327 |goto Nagrand 20.0,49.34 |tip {dropsfrom}Mo'arg Engineer, Kil'sorrow Spellbinder, Kil'sorrow Cultist
step
  collect Arakkoa Feather##25719 |q 10918 |goto Terokkar Forest 50.89,19.63 |tip {dropsfrom}Shienor Talonite, Shienor Sorcerer, Shienor Wing Guard
step
  collect Firewing Signet##29426 |q 10414 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  collect Firewing Signet##29426 |q 10415 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  collect Arcane Tome##29739 |q 10419 |goto Terokkar Forest 71.58,36.73 |tip {dropsfrom}Firewing Bloodwarder, Firewing Defender, Firewing Warlock
step
  collect Fel Armament##29740 |q 10421 |goto Netherstorm 40.3,21.07 |tip {dropsfrom}Cyber-Rage Forgelord, Mo'arg Doomsmith, Mo'arg Engineer
step
  collect Mark of Sargeras##30809 |q 10654 |goto Netherstorm 40.3,21.07 |tip {dropsfrom}Cyber-Rage Forgelord, Mo'arg Doomsmith, Gan'arg Mekgineer
step
  collect Mark of Sargeras##30809 |q 10655 |goto Netherstorm 40.3,21.07 |tip {dropsfrom}Cyber-Rage Forgelord, Mo'arg Doomsmith, Gan'arg Mekgineer
step
  collect Sunfury Signet##30810 |q 10658 |goto Shattrath City 45.2,81.44 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  collect Sunfury Signet##30810 |q 10659 |goto Shattrath City 45.2,81.44 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  note Tyrith wants you to use the orb on the balcony in Magisters' Terrace.
  get The Scryer's Scryer |q 11490 |goto Magisters' Terrace - Dungeon -1,-1
step
  note Obtain 10 Smuggled Mana Cells and return them to Exarch Nasuun on the Terrace of Light in Shattrath City.
  collect 10 Smuggled Mana Cell##34246 |q 11513 |goto Blade's Edge Mountains 51.44,17.52 |tip {dropsfrom}Phase Wyrm, Smuggled Mana Cell
step
  note Obtain 10 Smuggled Mana Cells and return them to Exarch Nasuun on the Terrace of Light in Shattrath City.
  collect 10 Smuggled Mana Cell##34246 |q 11514 |goto Blade's Edge Mountains 51.44,17.52 |tip {dropsfrom}Phase Wyrm, Smuggled Mana Cell
step
  note Bring 8 Nether Residue to Emissary Mordin in Shattrath City.
  collect 8 Nether Residue##35229 |q 11875 |goto Hellfire Peninsula 50.59,55.14 |tip {dropsfrom}Felweed, Dreaming Glory, Ragveil
step
  note Lord Torvos in Shattrath wants you to capture the Sunfury Attack Plans.
  collect Sunfury Attack Plans##35231 |q 11877 |goto Netherstorm 50.24,83.67 |tip {dropsfrom}Sunfury Guardsman, Sunfury Warp-Engineer, Sunfury Bloodwarder
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
  note Kalecgos has asked you to defeat Kael'thas in Magisters' Terrace. You are to take Kael's head and report back to Larethor at the Shattered Sun Staging Area.
  collect Head of Kael'thas##34157 |q 11492 |goto Magisters' Terrace - Dungeon -1,-1 |tip {dropsfrom}Kael'thas Sunstrider, Kael'thas Sunstrider (1)
step
  talk Exarch Larethor##24813
  turnin Hard to Kill##11492 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Signet Ring of Prince Kael'thas##11499 |goto Shattrath City 75.13,36.65
step
  note Wind Trader Zhareem has asked you to obtain The Signet Ring of Prince Kael'thas. Deliver it to him in Shattrath's Lower City to collect the reward.
  collect The Signet Ring of Prince Kael'thas##34160 |q 11499 |goto Shattrath City 75.13,36.65 |tip {dropsfrom}Kael'thas Sunstrider (1)
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Signet Ring of Prince Kael'thas##11499 |goto Shattrath City 75.13,36.65
]])
