-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Shattered Sun Offensive", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Adyen the Lightwarden##18537
  accept Crisis at the Sunwell##11481 |goto Shattrath City 30.73,34.62
step
  talk Dathris Sunstriker##18594
  accept Duty Calls##11482 |goto Shattrath City 54.61,80.72
step
  talk Exarch Larethor##24813
  accept Magisters' Terrace##11488 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Captain Theris Dawnhearth##24967
  accept The Sanctum Wards##11496 |goto Isle of Quel'Danas 47.47,30.56
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Sisters of Torment##11500 |goto Shattrath City 75.5,37.24
step
  talk Tradesman Portanuus##25034
  accept Report to Nasuun##11517 |goto Isle of Quel'Danas 47.27,35.04
step
  talk Mar'nah##24975
  accept Discovering Your Roots##11520 |goto Isle of Quel'Danas 51.49,32.46
step
  talk Mar'nah##24975
  accept Rediscovering Your Roots##11521 |goto Isle of Quel'Danas 51.49,32.46
step
  talk Captain Theris Dawnhearth##24967
  accept Arm the Wards!##11523 |goto Isle of Quel'Danas 47.47,30.56
step
  talk Vindicator Xayann##24965
  accept Erratic Behavior##11524 |goto Isle of Quel'Danas 47.14,30.74
step
  talk Vindicator Xayann##24965
  accept Further Conversions##11525 |goto Isle of Quel'Danas 47.14,30.74
step
  talk Battlemage Arynna##25057
  accept Distraction at the Dead Scar##11532 |goto Isle of Quel'Danas 47.52,35.07
step
  talk Battlemage Arynna##25057
  accept The Air Strikes Must Continue##11533 |goto Isle of Quel'Danas 47.52,35.07
step
  talk Tradesman Portanuus##25034
  accept Report to Nasuun##11534 |goto Isle of Quel'Danas 47.27,35.04
step
  talk Smith Hauthaa##25046
  accept Making Ready##11535 |goto Isle of Quel'Danas 50.58,40.77
step
  talk Smith Hauthaa##25046
  accept Don't Stop Now....##11536 |goto Isle of Quel'Danas 50.58,40.77
step
  talk Harbinger Inuuro##25061
  accept The Battle Must Go On##11537 |goto Isle of Quel'Danas 47.65,35.06
step
  talk Harbinger Inuuro##25061
  accept The Battle for the Sun's Reach Armory##11538 |goto Isle of Quel'Danas 47.65,35.06
step
  talk Magister Ilastar##25069
  accept Taking the Harbor##11539 |goto Isle of Quel'Danas 49.32,40.38
step
  talk Magister Ilastar##25069
  accept Crush the Dawnblade##11540 |goto Isle of Quel'Danas 49.32,40.38
step
  talk Captain Valindria##25088
  accept Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas 53.76,34.26
step
  talk Vindicator Kaalan##25108
  accept Intercept the Reinforcements##11542 |goto Isle of Quel'Danas 50.58,39.0
step
  talk Vindicator Kaalan##25108
  accept Keeping the Enemy at Bay##11543 |goto Isle of Quel'Danas 50.58,39.0
step
  talk Smith Hauthaa##25046
  accept Ata'mal Armaments##11544 |goto Isle of Quel'Danas 50.58,40.77
step
  talk Anchorite Ayuri##25112
  accept A Charitable Donation##11545 |goto Isle of Quel'Danas 48.58,37.74
step
  talk Mar'nah##24975
  accept Open for Business##11546 |goto Isle of Quel'Danas 51.49,32.46
step
  talk Astromancer Darnarian##25133
  accept Know Your Ley Lines##11547 |goto Isle of Quel'Danas 47.49,35.35
step
  talk Anchorite Ayuri##25112
  accept Your Continued Support##11548 |goto Isle of Quel'Danas 48.58,37.74
step
  talk Anchorite Kairthos##25163
  accept A Magnanimous Benefactor##11549 |goto Isle of Quel'Danas 51.18,33.12
step
  talk General Tiras'alan##25167
  accept Enter, the Deceiver...##11550 |goto Shattrath City 53.6,43.64
step
  talk Archmage Ne'thul##25169
  accept Agamath, the First Gate##11551 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  accept Rohendor, the Second Gate##11552 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  accept Archonisus, the Final Gate##11553 |goto Isle of Quel'Danas 50.14,28.24
step
  note Nether-Stalker Mah'duun wants you to slay 4 Sisters of Torment. Return to him in Shattrath's Lower City once you have done so in order to collect the bounty.
  kill Sister of Torment##24697 |q 11500 |goto Magisters' Terrace - Dungeon -1,-1
step
  note Vindicator Xayanna at the Shattered Sun Staging Area wants you to place the Attuned Crystal Cores inside 5 defeated Erratic Sentries to turn them into friendly units.
  kill Converted Sentry Credit##24991 |q 11524 |goto Isle of Quel'Danas 47.6,35.25
step
  note Vindicator Xayann at the Shattered Sun Staging Area wants you to place the Attuned Crystal Cores inside 5 defeated Erratic Sentries to turn them into friendly units.
  kill Converted Sentry Credit##24991 |q 11525 |goto Isle of Quel'Danas 47.6,35.25
step
  note Battlemage Arynna wants you to speak to Ayren Cloudbreaker when you're ready to fly over the Dead Scar. Once there, use the Arcane Charges to kill 2 Pit Overlords, 3 Eredar Sorcerers and 12 Wrath Enforcers.
  kill Pit Overlord##25031 |q 11532 |goto Isle of Quel'Danas 53.28,71.0
step
  note Battlemage Arynna wants you to speak to Ayren Cloudbreaker when you're ready to fly over the Dead Scar. Once there, use the Arcane Charges to kill 2 Pit Overlords, 3 Eredar Sorcerers and 12 Wrath Enforcers.
  kill Pit Overlord##25031 |q 11533 |goto Isle of Quel'Danas 53.28,71.0
step
  note Magister Ilastar at Sun's Reach Armory wants you to slay 6 Dawnblade Summoners, 6 Dawnblade Blood Knights and 3 Dawnblade Marksmen.
  kill Dawnblade Summoner##24978 |q 11539 |goto Isle of Quel'Danas 42.85,36.45
step
  note Magister Ilastar at Sun's Reach Armory wants you to slay 6 Dawnblade Summoners, 6 Dawnblade Blood Knights and 3 Dawnblade Marksmen.
  kill Dawnblade Summoner##24978 |q 11540 |goto Isle of Quel'Danas 42.85,36.45
step
  note Vindicator Kaalan at the Sun's Reach Armory wants you to speak to Ayren Cloudbreaker and fly over the Dawnblade reinforcement fleet. Use the Flaming Oil to set the ship sails on fire as you fly and once you land, slay 6 Dawnblade Reservists.
  kill Sin'Loren Credit##25090 |q 11542 |goto Isle of Quel'Danas 52.66,14.79
step
  note Vindicator Kaalan at the Sun's Reach Armory wants you to speak to Ayren Cloudbreaker and fly over the Dawnblade reinforcement fleet. Use the Flaming Oil to set the ship sails on fire as you fly and once you land, slay 6 Dawnblade Reservists.
  kill Sin'Loren Credit##25090 |q 11543 |goto Isle of Quel'Danas 52.66,14.79
step
  note Astromancer Darnarian in the Sun's Reach Sanctum wants you to use the Astromancer's Crystal at the Bloodcrystal, the Dawning Square portal, and the naga shrine at Greengill Coast.
  kill Sunwell - Quest Bunny - Portal##25156 |q 11547 |goto Isle of Quel'Danas 48.51,44.42
step
  talk Exarch Larethor##24813
  turnin Crisis at the Sunwell##11481 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Exarch Larethor##24813
  turnin Duty Calls##11482 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Tyrith##24822
  turnin Magisters' Terrace##11488 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Captain Theris Dawnhearth##24967
  turnin The Sanctum Wards##11496 |goto Isle of Quel'Danas 47.47,30.56
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Sisters of Torment##11500 |goto Shattrath City 75.5,37.24
step
  talk Exarch Nasuun##24932
  turnin Report to Nasuun##11517 |goto Shattrath City 49.08,42.48
step
  talk Mar'nah##24975
  turnin Discovering Your Roots##11520 |goto Isle of Quel'Danas 51.49,32.46
step
  talk Mar'nah##24975
  turnin Rediscovering Your Roots##11521 |goto Isle of Quel'Danas 51.49,32.46
step
  talk Captain Theris Dawnhearth##24967
  turnin Arm the Wards!##11523 |goto Isle of Quel'Danas 47.47,30.56
step
  talk Vindicator Xayann##24965
  turnin Erratic Behavior##11524 |goto Isle of Quel'Danas 47.14,30.74
step
  talk Vindicator Xayann##24965
  turnin Further Conversions##11525 |goto Isle of Quel'Danas 47.14,30.74
step
  talk Battlemage Arynna##25057
  turnin Distraction at the Dead Scar##11532 |goto Isle of Quel'Danas 47.52,35.07
step
  talk Battlemage Arynna##25057
  turnin The Air Strikes Must Continue##11533 |goto Isle of Quel'Danas 47.52,35.07
step
  talk Exarch Nasuun##24932
  turnin Report to Nasuun##11534 |goto Shattrath City 49.08,42.48
step
  talk Smith Hauthaa##25046
  turnin Making Ready##11535 |goto Isle of Quel'Danas 50.58,40.77
step
  talk Smith Hauthaa##25046
  turnin Don't Stop Now....##11536 |goto Isle of Quel'Danas 50.58,40.77
step
  talk Harbinger Inuuro##25061
  turnin The Battle Must Go On##11537 |goto Isle of Quel'Danas 47.65,35.06
step
  talk Harbinger Inuuro##25061
  turnin The Battle for the Sun's Reach Armory##11538 |goto Isle of Quel'Danas 47.65,35.06
step
  talk Magister Ilastar##25069
  turnin Taking the Harbor##11539 |goto Isle of Quel'Danas 49.32,40.38
step
  talk Magister Ilastar##25069
  turnin Crush the Dawnblade##11540 |goto Isle of Quel'Danas 49.32,40.38
step
  talk Captain Valindria##25088
  turnin Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas 53.76,34.26
step
  talk Vindicator Kaalan##25108
  turnin Intercept the Reinforcements##11542 |goto Isle of Quel'Danas 50.58,39.0
step
  talk Vindicator Kaalan##25108
  turnin Keeping the Enemy at Bay##11543 |goto Isle of Quel'Danas 50.58,39.0
step
  talk Smith Hauthaa##25046
  turnin Ata'mal Armaments##11544 |goto Isle of Quel'Danas 50.58,40.77
step
  talk Anchorite Ayuri##25112
  turnin A Charitable Donation##11545 |goto Isle of Quel'Danas 48.58,37.74
step
  talk Mar'nah##24975
  turnin Open for Business##11546 |goto Isle of Quel'Danas 51.49,32.46
step
  talk Astromancer Darnarian##25133
  turnin Know Your Ley Lines##11547 |goto Isle of Quel'Danas 47.49,35.35
step
  talk Anchorite Ayuri##25112
  turnin Your Continued Support##11548 |goto Isle of Quel'Danas 48.58,37.74
step
  talk Anchorite Kairthos##25163
  turnin A Magnanimous Benefactor##11549 |goto Isle of Quel'Danas 51.18,33.12
step
  talk Archmage Ne'thul##25169
  turnin Enter, the Deceiver...##11550 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  turnin Agamath, the First Gate##11551 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  turnin Rohendor, the Second Gate##11552 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  turnin Archonisus, the Final Gate##11553 |goto Isle of Quel'Danas 50.14,28.24
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
  talk Captain Theris Dawnhearth##24967
  accept The Missing Magistrix##11526 |goto Isle of Quel'Danas 47.47,30.56
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
  talk Kalecgos##24848
  turnin The Scryer's Scryer##11490 |goto Magisters' Terrace - Dungeon -1,-1
step
  talk Exarch Nasuun##24932
  turnin Intercepting the Mana Cells##11513 |goto Shattrath City 49.08,42.48
step
  talk Exarch Nasuun##24932
  turnin Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.08,42.48
step
  talk Magistrix Seyla##24937
  turnin The Missing Magistrix##11526 |goto Hellfire Peninsula 58.18,17.58
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
  talk Magistrix Seyla##24937
  accept Blood for Blood##11515 |goto Hellfire Peninsula 58.18,17.58
step
  talk Magistrix Seyla##24937
  accept Blast the Gateway##11516 |goto Hellfire Peninsula 58.18,17.58
step
  talk Exarch Larethor##24813
  turnin Hard to Kill##11492 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Magistrix Seyla##24937
  turnin Blood for Blood##11515 |goto Hellfire Peninsula 58.18,17.58
step
  talk Magistrix Seyla##24937
  turnin Blast the Gateway##11516 |goto Hellfire Peninsula 58.18,17.58
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Signet Ring of Prince Kael'thas##11499 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Signet Ring of Prince Kael'thas##11499 |goto Shattrath City 75.13,36.65
]])
