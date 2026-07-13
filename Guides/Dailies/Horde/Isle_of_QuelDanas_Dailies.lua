-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Horde/Isle of Quel'Danas (Dailies)", {
	faction = "Horde",
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
  note Mar'nah at Sun's Reach Harbor wants you to travel to Razorthorn Rise in Outlands, collect 5 Razorthorn Roots, and return to her.
  get Discovering Your Roots |q 11520 |goto Isle of Quel'Danas 51.49,32.46
step
  note Mar'nah at Sun's Reach Harbor wants you to travel to Razorthorn Rise in Outlands, collect 5 Razorthorn Roots, and return to her.
  get Rediscovering Your Roots |q 11521 |goto Isle of Quel'Danas 51.49,32.46
step
  note Vindicator Xayanna at the Shattered Sun Staging Area wants you to place the Attuned Crystal Cores inside 5 defeated Erratic Sentries to turn them into friendly units.
  get Erratic Behavior |q 11524 |goto Isle of Quel'Danas 47.6,35.25
step
  note Vindicator Xayann at the Shattered Sun Staging Area wants you to place the Attuned Crystal Cores inside 5 defeated Erratic Sentries to turn them into friendly units.
  get Further Conversions |q 11525 |goto Isle of Quel'Danas 47.6,35.25
step
  note Battlemage Arynna wants you to speak to Ayren Cloudbreaker when you're ready to fly over the Dead Scar. Once there, use the Arcane Charges to kill 2 Pit Overlords, 3 Eredar Sorcerers and 12 Wrath Enforcers.
  kill Pit Overlord##25031 |q 11532 |goto Isle of Quel'Danas 53.28,71.0 |elite
step
  note Battlemage Arynna wants you to speak to Ayren Cloudbreaker when you're ready to fly over the Dead Scar. Once there, use the Arcane Charges to kill 2 Pit Overlords, 3 Eredar Sorcerers and 12 Wrath Enforcers.
  kill Pit Overlord##25031 |q 11533 |goto Isle of Quel'Danas 53.28,71.0 |elite
step
  note Smith Hauthaa in Sun's Reach Armory wants you to kill Darkspine Myrmidon to the east and use their keys to steal three pieces of the ore from their chests.
  collect Darkspine Ore Chest##187264 |q 11535 |goto Isle of Quel'Danas 61.56,58.84
step
  note Smith Hauthaa in Sun's Reach Armory wants you to kill Darkspine Myrmidon to the east and use their keys to steal three pieces of the ore from their chests.
  collect Darkspine Ore Chest##187264 |q 11536 |goto Isle of Quel'Danas 61.56,58.84
step
  note Harbinger Inuuro wants you to slay 6 Burning Legion Demons and the Emissary of Hate in Dawning Square. Use the Shattered Sun Banner to impale the Emissary of Hate's corpse.
  get The Battle Must Go On |q 11537 |goto Isle of Quel'Danas 47.65,35.06
step
  note Harbinger Inuuro wants you to slay 6 Burning Legion Demons and the Emissary of Hate in Dawning Square or the Sun's Reach Armory. Use the Shattered Sun Banner to impale the Emissary of Hate's corpse.
  get The Battle for the Sun's Reach Armory |q 11538 |goto Isle of Quel'Danas 47.65,35.06
step
  note Magister Ilastar at Sun's Reach Armory wants you to slay 6 Dawnblade Summoners, 6 Dawnblade Blood Knights and 3 Dawnblade Marksmen.
  kill Dawnblade Summoner##24978 |q 11539 |goto Isle of Quel'Danas 42.85,36.45
step
  note Magister Ilastar at Sun's Reach Armory wants you to slay 6 Dawnblade Summoners, 6 Dawnblade Blood Knights and 3 Dawnblade Marksmen.
  kill Dawnblade Summoner##24978 |q 11540 |goto Isle of Quel'Danas 42.85,36.45
step
  note Captain Valindria wants you to free 10 Greengill Slaves. Return to her onboard the Silvermoon's Pride at Sun's Reach Harbor once you have done so.
  get Disrupt the Greengill Coast |q 11541 |goto Isle of Quel'Danas 53.76,34.26
step
  note Vindicator Kaalan at the Sun's Reach Armory wants you to speak to Ayren Cloudbreaker and fly over the Dawnblade reinforcement fleet. Use the Flaming Oil to set the ship sails on fire as you fly and once you land, slay 6 Dawnblade Reservists.
  get Intercept the Reinforcements |q 11542 |goto Isle of Quel'Danas 52.66,14.79
step
  note Vindicator Kaalan at the Sun's Reach Armory wants you to speak to Ayren Cloudbreaker and fly over the Dawnblade reinforcement fleet. Use the Flaming Oil to set the ship sails on fire as you fly and once you land, slay 6 Dawnblade Reservists.
  get Keeping the Enemy at Bay |q 11543 |goto Isle of Quel'Danas 52.66,14.79
step
  note Smith Hauthaa needs you to produce 5 Cleansed Ata'mal Metal. Do so by breaking down Ata'mal Armaments on her anvil at the Sun's Reach Armory on the Isle of Quel'Danas.
  get Ata'mal Armaments |q 11544 |goto Isle of Quel'Danas 50.58,40.77
step
  note Mar'nah at the Sun's Reach Harbor wants you to gather 5 Bloodberries from the bushes found on Quel'Danas.
  collect Bloodberry Bush##187333 |q 11546 |goto Isle of Quel'Danas 42.2,38.9
step
  note Astromancer Darnarian in the Sun's Reach Sanctum wants you to use the Astromancer's Crystal at the Bloodcrystal, the Dawning Square portal, and the naga shrine at Greengill Coast.
  get Know Your Ley Lines |q 11547 |goto Isle of Quel'Danas 48.51,44.42
step
  note Bring to me the essence of immortals, found only on the most powerful beings of this world! With the essence in hand, my mages will be able to dismantle Agamath, ultimately collapsing the gateway and unlocking the way further into the sunwell.
  kill Lady Vashj##21212 |q 11551 |goto Serpentshrine Cavern - Raid -1,-1 |raid
step
  note Bring to me the essence of immortals, found only on the most powerful beings of this world! Rohendor cannot withstand the combined force of our mages!
  kill Lady Vashj##21212 |q 11552 |goto Serpentshrine Cavern - Raid -1,-1 |raid
step
  note Bring to me the essence of immortals ÔÇö found only on the most powerful beings of this world ÔÇö and Archonisus is sure to crumble!
  kill Lady Vashj##21212 |q 11553 |goto Serpentshrine Cavern - Raid -1,-1 |raid
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
