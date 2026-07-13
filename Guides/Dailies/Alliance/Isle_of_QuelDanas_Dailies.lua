-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Alliance/Isle of Quel'Danas (Dailies)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Captain Theris Dawnhearth##24967
  accept The Sanctum Wards##11496 |goto Isle of Quel'Danas 47.47,30.56
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
  talk Archmage Ne'thul##25169
  accept Agamath, the First Gate##11551 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  accept Rohendor, the Second Gate##11552 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  accept Archonisus, the Final Gate##11553 |goto Isle of Quel'Danas 50.14,28.24
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
  talk Captain Theris Dawnhearth##24967
  turnin The Sanctum Wards##11496 |goto Isle of Quel'Danas 47.47,30.56
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
  talk Archmage Ne'thul##25169
  turnin Agamath, the First Gate##11551 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  turnin Rohendor, the Second Gate##11552 |goto Isle of Quel'Danas 50.14,28.24
step
  talk Archmage Ne'thul##25169
  turnin Archonisus, the Final Gate##11553 |goto Isle of Quel'Danas 50.14,28.24
]])
