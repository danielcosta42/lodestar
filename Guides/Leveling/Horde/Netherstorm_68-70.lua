-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Netherstorm (68-70)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Shattrath City (65-70)",
}, [[
step
  note {fp}Krexcil
  goto Netherstorm 33.77,63.79 |tip {vendor}
step
  talk Kalynna Lathred##17636
  accept Kalynna's Request##9637 |goto Netherstorm 32.22,63.6
step
  talk Ravandwyr##19217
  accept The Archmage's Staff##10173 |goto Netherstorm 31.36,66.15
step
  talk Rocket-Chief Fuselage##19570
  accept You're Hired!##10186 |goto Netherstorm 32.73,64.96
step
  talk Spymaster Thalodien##19468
  accept Manaforge B'naar##10189 |goto Netherstorm 32.0,64.07
step
  talk Exarch Orelis##19466
  accept Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Karja##19467
  accept Naaru Technology##10243 |goto Netherstorm 32.04,64.18
step
  talk Anchorite Karja##19467
  accept Assisting the Consortium##10263 |goto Netherstorm 32.04,64.18
step
  talk Spymaster Thalodien##19468
  accept Assisting the Consortium##10264 |goto Netherstorm 32.0,64.07
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge B'naar##10299 |goto Netherstorm 32.04,64.18
step
  talk Boots##19617
  accept Securing the Shaleskin Shale##10342 |goto Netherstorm 32.27,63.92
step
  note Slay 8 Sunfury Magisters and 8 Sunfury Bloodwarders and return to Exarch Orelis at Area 52.
  kill Sunfury Magister##18855 |q 10241 |goto Netherstorm 25.07,68.25
step
  talk Bot-Specialist Alley##19578
  accept Recharging the Batteries##10190 |goto Netherstorm 31.51,56.59
step
  talk Netherologist Coppernickels##19569
  accept Off To Area 52##10183 |goto Netherstorm 21.3,55.62
step
  talk Nether-Stalker Oazul##20341
  accept Neutralizing the Nethermancers##10315 |goto Netherstorm 34.5,37.8
step
  talk Wind Trader Tuluman##20112
  accept Dealing with the Foreman##10317 |goto Netherstorm 34.62,37.95
step
  talk Zuben Elgenubi##20067
  accept In Search of Farahlite##10290 |goto Netherstorm 44.08,36.05
step
  talk Zephyrion##20470
  accept Surveying the Ruins##10335 |goto Netherstorm 44.72,34.87
step
  talk Nether-Stalker Nauthis##20471
  accept The Minions of Culuthas##10336 |goto Netherstorm 44.7,34.94
step
  talk Aurine Moonblaze##20871
  accept Flora of the Eco-Domes##10426 |goto Netherstorm 42.32,32.56
step
  talk Nether-Stalker Nauthis##20471
  accept Fel Reavers, No Thanks!##10855 |goto Netherstorm 44.7,34.94
step
  talk Zarevhi##22427
  accept Master of Transmutation##10899 |goto Netherstorm 44.12,36.64
step
  talk Protectorate Advisor Rahim##22899
  accept Seek Out Ameer##10969 |goto Netherstorm 45.8,36.29
step
  note Use the Energy Field Modulator on Farahlon Lashers. Observe the results and report back to Aurine Moonblaze at the Stormspire when you have conducted 10 tests.
  kill Mutated Farahlon Lasher##20983 |q 10426 |goto Netherstorm 41.01,32.56
step
  note Obtain 5 Condensed Nether Gas from Gan'arg Mekgineers at Forge Base: Oblivion, northwest of the Stormspire, and load them into a nearby Inactive Fel Reaver. Return to Nether-Stalker Nauthis after you've completed this task.
  kill Inactive Fel Reaver##22293 |q 10855 |goto Netherstorm 36.73,25.69
step
  talk Agent Araxes##20551
  accept The Flesh Lies...##10345 |goto Netherstorm 59.42,45.03
step
  talk Agent Ya-six##20552
  accept Arconus the Insatiable##10353 |goto Netherstorm 60.92,41.51
step
  note Use the Protectorate Igniter on 12 Withered Corpses. Return the Protectorate Igniter to Agent Araxes outside of Access Shaft Zeon when the task is complete.
  kill Withered Corpse##20561 |q 10345 |goto Netherstorm 60.65,42.86
step
  note Agent Ya-six at Access Shaft Zeon in Netherstorm has asked you to slay Arconus the Insatiable and return to Commander Ameer at the Protectorate Watch Post in Netherstorm.
  kill Arconus the Insatiable##20554 |q 10353 |goto Netherstorm 60.16,39.78
step
  talk Commander Ameer##20448
  turnin Seek Out Ameer##10969 |goto Netherstorm 59.5,32.38
step
  talk Commander Ameer##20448
  turnin Arconus the Insatiable##10353 |goto Netherstorm 59.5,32.38
step
  talk Wind Trader Marid##20071
  accept A Not-So-Modest Proposal##10270 |goto Netherstorm 58.32,31.66
step
  talk Commander Ameer##20448
  accept The Ethereum##10339 |goto Netherstorm 59.5,32.38
step
  talk Researcher Navuud##20449
  accept Electro-Shock Goodness!##10411 |goto Netherstorm 59.25,32.58
step
  talk Flesh Handler Viridius##20450
  accept Captain Tyralius##10422 |goto Netherstorm 59.25,32.07
step
  talk Professor Dabiri##20907
  accept Recipe for Destruction##10437 |goto Netherstorm 60.11,31.72
step
  talk Commander Ameer##20448
  accept A Mission of Mercy##10970 |goto Netherstorm 59.5,32.38
step
  note Slay 10 Hounds of Culuthas and 5 Eyes of Culuthas. Then return to Nether-Stalker Nauthis at the Stormspire in the Netherstorm.
  kill Hound of Culuthas##20141 |q 10336 |goto Netherstorm 53.91,21.97
step
  talk Shrouded Figure##20154
  accept Formal Introductions##10281 |goto Netherstorm 70.93,38.81
step
  talk Sab'aoth##22479
  accept Bloody Imp-ossible!##10924 |goto Netherstorm 66.39,67.3
step
  talk Custodian Dieworth##19488
  accept The Sunfury Garrison##10222 |goto Netherstorm 57.5,86.34
step
  talk Lieutenant-Sorcerer Morran##19489
  accept Torching Sunfury Hold##10233 |goto Netherstorm 57.58,86.3
step
  talk Archmage Vargoth##19481
  accept Finding the Keymaster##10256 |goto Netherstorm 58.34,86.4
step
  talk Custodian Dieworth##19488
  accept Capturing the Phylactery##10319 |goto Netherstorm 57.5,86.34
step
  talk Apprentice Andrethan##20463
  accept Indispensable Tools##10331 |goto Netherstorm 57.71,85.19
step
  talk Thadell##20464
  accept Needs More Cowbell##10334 |goto Netherstorm 57.72,84.94
step
  talk Gahruj##20066
  accept Drijya Needs Your Help##10311 |goto Netherstorm 46.67,56.95
step
  talk Mehrdad##20810
  accept New Opportunities##10348 |goto Netherstorm 46.45,56.41
step
  talk Mehrdad##20810
  accept Run a Diagnostic!##10417 |goto Netherstorm 46.45,56.41
step
  talk Shauly Pore##20921
  accept Keeping Up Appearances##10433 |goto Netherstorm 46.48,56.04
step
  turnin Naaru Technology##10243 |goto Netherstorm 23.21,68.25
step
  talk N. D. Meancamp##19690
  accept It's a Fel Reaver, But with Heart##10309 |goto Netherstorm 26.82,76.98
step
  note Place the three Surveying Markers and then return to Zephyrion at the Stormspire in the Netherstorm.
  kill Surveying Marker One##20473 |q 10335 |goto Netherstorm 51.66,20.47
step
  talk Exarch Orelis##19466
  turnin Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.07,64.18
step
  talk Nether-Stalker Khay'ji##19880
  turnin Assisting the Consortium##10263 |goto Netherstorm 32.44,64.21
step
  talk Nether-Stalker Khay'ji##19880
  turnin Assisting the Consortium##10264 |goto Netherstorm 32.44,64.21
step
  talk Kalynna Lathred##17636
  turnin Kalynna's Request##9637 |goto Netherstorm 32.22,63.6
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge B'naar##10299 |goto Netherstorm 32.04,64.18
step
  talk Ravandwyr##19217
  turnin The Archmage's Staff##10173 |goto Netherstorm 31.36,66.15
step
  talk Rocket-Chief Fuselage##19570
  turnin Off To Area 52##10183 |goto Netherstorm 32.73,64.96
step
  talk Rocket-Chief Fuselage##19570
  turnin You're Hired!##10186 |goto Netherstorm 32.73,64.96
step
  talk Spymaster Thalodien##19468
  turnin Manaforge B'naar##10189 |goto Netherstorm 32.0,64.07
step
  talk Boots##19617
  turnin Securing the Shaleskin Shale##10342 |goto Netherstorm 32.27,63.92
step
  talk Kalynna Lathred##17636
  accept Nightbane##9644 |goto Netherstorm 32.22,63.6
step
  talk Spymaster Thalodien##19468
  accept High Value Targets##10193 |goto Netherstorm 32.0,64.07
step
  talk Boots##19617
  accept That Little Extra Kick##10199 |goto Netherstorm 32.27,63.92
step
  talk Rocket-Chief Fuselage##19570
  accept Invaluable Asset Zapping##10203 |goto Netherstorm 32.73,64.96
step
  talk Rocket-Chief Fuselage##19570
  accept Report to Engineering##10225 |goto Netherstorm 32.73,64.96
step
  talk Nether-Stalker Khay'ji##19880
  accept Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Ravandwyr##19217
  accept Rebuilding the Staff##10300 |goto Netherstorm 31.36,66.15
step
  talk Exarch Orelis##19466
  accept Measuring Warp Energies##10313 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Coruu##10321 |goto Netherstorm 32.04,64.18
step
  talk Bot-Specialist Alley##19578
  turnin Recharging the Batteries##10190 |goto Netherstorm 31.51,56.59
step
  note Exarch Orelis in Area 52 wants you to take the Warp-Attuned Orb to Manaforge B'naar and use it at the end of its four pipelines.
  kill Northern Pipe Credit Marker##20333 |q 10313 |goto Netherstorm 25.68,60.26
step
  talk Foreman Sundown##20393
  turnin Dealing with the Foreman##10317 |goto Netherstorm 26.37,42.28
step
  talk Foreman Sundown##20393
  accept Dealing with the Overmaster##10318 |goto Netherstorm 26.37,42.28
step
  note Kill 15 Sunfury Nethermancers and return to Nether-Stalker Oazul at Tuluman's Landing in the Netherstorm.
  kill Sunfury Nethermancer##20248 |q 10315 |goto Netherstorm 28.4,39.55
step
  note Slay Overmaster Grindgarr. Then return to Wind Trader Tuluman at Tuluman's Landing in the Netherstorm.
  kill Overmaster Grindgarr##20803 |q 10318 |goto Netherstorm 26.82,35.84
step
  talk Nether-Stalker Oazul##20341
  turnin Neutralizing the Nethermancers##10315 |goto Netherstorm 34.5,37.8
step
  talk Wind Trader Tuluman##20112
  turnin Dealing with the Overmaster##10318 |goto Netherstorm 34.62,37.95
step
  talk Zarevhi##22427
  turnin Master of Transmutation##10899 |goto Netherstorm 44.12,36.64
step
  talk Zuben Elgenubi##20067
  turnin In Search of Farahlite##10290 |goto Netherstorm 44.08,36.05
step
  talk Aurine Moonblaze##20871
  turnin Flora of the Eco-Domes##10426 |goto Netherstorm 42.32,32.56
step
  talk Zephyrion##20470
  turnin Surveying the Ruins##10335 |goto Netherstorm 44.72,34.87
step
  talk Nether-Stalker Nauthis##20471
  turnin The Minions of Culuthas##10336 |goto Netherstorm 44.7,34.94
step
  talk Nether-Stalker Nauthis##20471
  turnin Fel Reavers, No Thanks!##10855 |goto Netherstorm 44.7,34.94
step
  talk Zuben Elgenubi##20067
  accept Hitting the Motherlode##10293 |goto Netherstorm 44.08,36.05
step
  talk Aurine Moonblaze##20871
  accept Creatures of the Eco-Domes##10427 |goto Netherstorm 42.32,32.56
step
  talk Nether-Stalker Nauthis##20471
  accept The Best Defense##10856 |goto Netherstorm 44.7,34.94
step
  note Tag 12 Talbuks for Aurine Moonblaze at the Stormspire. You may tag either Talbuk Sires or Talbuk Does using the Talbuk Tagger.
  kill Invis Talbuk Credit##20982 |q 10427 |goto Netherstorm 43.82,38.26
step
  talk Agent Araxes##20551
  turnin The Flesh Lies...##10345 |goto Netherstorm 59.42,45.03
step
  note Commander Ameer wants you to kill 5 Ethereum Assassins, 5 Ethereum Shocktroopers, 2 Ethereum Researchers and Captain Zovax then activate Ethereum Transponder Zeta.
  kill Ethereum Assassin##20452 |q 10339 |goto Netherstorm 56.71,38.2
step
  talk Researcher Navuud##20449
  turnin Electro-Shock Goodness!##10411 |goto Netherstorm 59.25,32.58
step
  talk Flesh Handler Viridius##20450
  turnin Captain Tyralius##10422 |goto Netherstorm 59.25,32.07
step
  talk Professor Dabiri##20907
  turnin Recipe for Destruction##10437 |goto Netherstorm 60.11,31.72
step
  talk Commander Ameer##20448
  turnin A Mission of Mercy##10970 |goto Netherstorm 59.5,32.38
step
  talk Professor Dabiri##20907
  accept On Nethery Wings##10438 |goto Netherstorm 60.11,31.72
step
  talk Commander Ameer##20448
  accept Ethereum Secrets##10971 |goto Netherstorm 59.5,32.38
step
  talk Tyri##20110
  turnin Formal Introductions##10281 |goto Netherstorm 71.22,35.12
step
  talk Tyri##20110
  accept A Promising Start##10272 |goto Netherstorm 71.22,35.12
step
  talk Sab'aoth##22479
  turnin Bloody Imp-ossible!##10924 |goto Netherstorm 66.39,67.3
step
  talk Bessy##20415
  turnin Needs More Cowbell##10334 |goto Netherstorm 59.15,78.79
step
  note Custodian Dieworth at Kirin'Var Village wants you to kill 10 Sunfury Archers.
  kill Sunfury Archer##19707 |q 10222 |goto Netherstorm 56.01,78.24
step
  note Using a Flaming Torch, destroy 4 Sunfury Ballistas and 4 Sunfury Tents and return to Lieutenant-Sorcerer Morran at Kirin'Var Village.
  kill Invis BE Ballista##19723 |q 10233 |goto Netherstorm 55.62,79.12
step
  talk Archmage Vargoth##19481
  turnin Finding the Keymaster##10256 |goto Netherstorm 58.34,86.4
step
  talk Custodian Dieworth##19488
  turnin Capturing the Phylactery##10319 |goto Netherstorm 57.5,86.34
step
  talk Apprentice Andrethan##20463
  turnin Indispensable Tools##10331 |goto Netherstorm 57.71,85.19
step
  talk Custodian Dieworth##19488
  turnin The Sunfury Garrison##10222 |goto Netherstorm 57.5,86.34
step
  talk Lieutenant-Sorcerer Morran##19489
  turnin Torching Sunfury Hold##10233 |goto Netherstorm 57.58,86.3
step
  talk Custodian Dieworth##19488
  accept Down With Daellis##10223 |goto Netherstorm 57.5,86.34
step
  talk Archmage Vargoth##19481
  accept Capturing the Keystone##10257 |goto Netherstorm 58.34,86.4
step
  talk Custodian Dieworth##19488
  accept Destroy Naberius!##10320 |goto Netherstorm 57.5,86.34
step
  talk Apprentice Andrethan##20463
  accept Master Smith Rhonsus##10332 |goto Netherstorm 57.71,85.19
step
  note Apprentice Andrethan in Kirin'Var Village wants you to kill the ghost of Rhonsus, the town's master blacksmith.
  kill Rhonsus##20410 |q 10332 |goto Netherstorm 60.69,85.04
step
  talk Archmage Alturus##17613
  turnin Nightbane##9644 |goto Deadwind Pass 47.28,75.21 |tip {turninat}Deadwind Pass
step
  talk Drijya##20281
  turnin Drijya Needs Your Help##10311 |goto Netherstorm 48.11,63.5
step
  note Use the Ultra Deconsolodation Zapper to beam the Hyper Rotational Dig-A-Matic, Servo-Pneumatic Dredging Claw, Multi-Spectrum Terrain Analyzer, and the Big Wagon Full of Explosives back to Area 52. Then report to Lead Sapper Blastfizzle at the eastern end of the fissure that runs through Area 52 in the Netherstorm.
  collect Hyper Rotational Dig-A-Matic##183805 |q 10203 |goto Netherstorm 41.1,73.73
step
  note Custodian Dieworth at Kirin'Var Village wants you to kill Master Daellis Dawnstrike.
  kill Master Daellis Dawnstrike##19705 |q 10223 |goto Netherstorm 56.07,66.4
step
  talk Mehrdad##20810
  turnin Run a Diagnostic!##10417 |goto Netherstorm 46.45,56.41
step
  talk Shauly Pore##20921
  turnin Keeping Up Appearances##10433 |goto Netherstorm 46.48,56.04
step
  talk Mehrdad##20810
  turnin New Opportunities##10348 |goto Netherstorm 46.45,56.41
step
  talk Mehrdad##20810
  accept Deal With the Saboteurs##10418 |goto Netherstorm 46.45,56.41
step
  talk Shauly Pore##20921
  accept The Dynamic Duo##10434 |goto Netherstorm 46.48,56.04
step
  note Mehrdad at Midrealm Post wants you to kill 8 Barbscale Crocolisks.
  kill Barbscale Crocolisk##20773 |q 10418 |goto Netherstorm 46.5,53.0
step
  talk N. D. Meancamp##19690
  turnin It's a Fel Reaver, But with Heart##10309 |goto Netherstorm 26.82,76.98
step
  note Spymaster Thalodien at Area 52 wants you to go to Manaforge B'naar and slay 2 Sunfury Warp-Masters, 6 Sunfury Warp-Engineers and 8 Sunfury Geologists.
  kill Sunfury Warp-Master##18857 |q 10193 |goto Netherstorm 23.85,70.92
step
  note Nether-Stalker Nauthis wants you to slay 12 Wrathbringers at Forge Base: Gehenna, north of the Stormspire.
  kill Wrathbringer##18858 |q 10856 |goto Netherstorm 40.45,20.01
step
  talk Nether-Stalker Khay'ji##19880
  turnin Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Ravandwyr##19217
  turnin Rebuilding the Staff##10300 |goto Netherstorm 31.36,66.15
step
  talk Exarch Orelis##19466
  turnin Measuring Warp Energies##10313 |goto Netherstorm 32.07,64.18
step
  talk Spymaster Thalodien##19468
  turnin High Value Targets##10193 |goto Netherstorm 32.0,64.07
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Coruu##10321 |goto Netherstorm 32.04,64.18
step
  talk Boots##19617
  turnin That Little Extra Kick##10199 |goto Netherstorm 32.27,63.92
step
  talk Lead Sapper Blastfizzle##19634
  turnin Invaluable Asset Zapping##10203 |goto Netherstorm 34.19,68.15
step
  talk Chief Engineer Trep##19709
  turnin Report to Engineering##10225 |goto Netherstorm 32.43,66.78
step
  talk Ravandwyr##19217
  accept Curse of the Violet Tower##10174 |goto Netherstorm 31.36,66.15
step
  talk Papa Wheeler##19645
  accept Pick Your Part##10206 |goto Netherstorm 32.99,64.66
step
  talk Lead Sapper Blastfizzle##19634
  accept Dr. Boom!##10221 |goto Netherstorm 34.19,68.15
step
  talk Chief Engineer Trep##19709
  accept Essence for the Engines##10224 |goto Netherstorm 32.43,66.78
step
  talk Exarch Orelis##19466
  accept Attack on Manaforge Coruu##10246 |goto Netherstorm 32.07,64.18
step
  talk Nether-Stalker Khay'ji##19880
  accept A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Duro##10322 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  accept Sunfury Briefings##10328 |goto Netherstorm 32.07,64.18
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32.0,64.07
step
  note Kill Dr. Boom and return with the good news to Lead Sapper Blastfizzle at Area 52 in the Netherstorm.
  kill Dr. Boom##20284 |q 10221 |goto Netherstorm 35.01,59.56
step
  talk Zuben Elgenubi##20067
  turnin Hitting the Motherlode##10293 |goto Netherstorm 44.08,36.05
step
  talk Aurine Moonblaze##20871
  turnin Creatures of the Eco-Domes##10427 |goto Netherstorm 42.32,32.56
step
  talk Audi the Needle##20205
  turnin The Dynamic Duo##10434 |goto Netherstorm 44.74,36.75
step
  talk Nether-Stalker Nauthis##20471
  turnin The Best Defense##10856 |goto Netherstorm 44.7,34.94
step
  talk Aurine Moonblaze##20871
  accept When Nature Goes Too Far##10429 |goto Netherstorm 42.32,32.56
step
  talk Audi the Needle##20205
  accept Retrieving the Goods##10435 |goto Netherstorm 44.74,36.75
step
  talk Nether-Stalker Nauthis##20471
  accept Teleport This!##10857 |goto Netherstorm 44.7,34.94
step
  talk Image of Commander Ameer##20482
  turnin The Ethereum##10339 |goto Netherstorm 56.82,38.7
step
  talk Image of Commander Ameer##20482
  accept Ethereum Data##10384 |goto Netherstorm 56.82,38.7
step
  note Professor Dabiri at the Protectorate Watch Post in Netherstorm wants you to use your Phase Disruptor when you get in range of the Void Conduit that rests atop Ultris. Drop as many charges of the Phase Disruptor as you can to ensure total annihilation. The Phase Disruptor charges will automatically home in on the Void Conduit so long as you are close enough to use it.
  kill Void Conduit##20899 |q 10438 |goto Netherstorm 62.42,40.89
step
  talk Professor Dabiri##20907
  turnin On Nethery Wings##10438 |goto Netherstorm 60.11,31.72
step
  talk Commander Ameer##20448
  turnin Ethereum Secrets##10971 |goto Netherstorm 59.5,32.38
step
  talk Professor Dabiri##20907
  accept Dimensius the All-Devouring##10439 |goto Netherstorm 60.11,31.72
step
  talk Commander Ameer##20448
  accept A Thousand Worlds##10973 |goto Netherstorm 59.5,32.38
step
  talk Tyri##20110
  turnin A Promising Start##10272 |goto Netherstorm 71.22,35.12
step
  talk Tyri##20110
  accept Troublesome Distractions##10273 |goto Netherstorm 71.22,35.12
step
  note Custodian Dieworth in Kirin'Var Village wants you to confront and defeat Naberius in the village's Chapel Yard.
  kill Naberius##20483 |q 10320 |goto Netherstorm 62.69,78.85
step
  talk Archmage Vargoth##19481
  turnin Capturing the Keystone##10257 |goto Netherstorm 58.34,86.4
step
  talk Custodian Dieworth##19488
  turnin Destroy Naberius!##10320 |goto Netherstorm 57.5,86.34
step
  talk Apprentice Andrethan##20463
  turnin Master Smith Rhonsus##10332 |goto Netherstorm 57.71,85.19
step
  talk Custodian Dieworth##19488
  turnin Down With Daellis##10223 |goto Netherstorm 57.5,86.34
step
  note Travel to Manaforge Coruu and slay 8 Sunfury Arcanists and 5 Sunfury Researchers. Return to Exarch Orelis when you've completed this task.
  kill Sunfury Researcher##20136 |q 10246 |goto Netherstorm 53.02,83.05
step
  talk Mehrdad##20810
  turnin Deal With the Saboteurs##10418 |goto Netherstorm 46.45,56.41
step
  talk Mehrdad##20810
  accept To the Stormspire##10423 |goto Netherstorm 46.45,56.41
step
  note Nether-Stalker Nauthis wants you to use the Mental Interference Rod on the Mo'arg at Forge Base: Gehenna and use their Detonate Teleporter ability on the three teleporters in the forge camp.
  kill Western Gehenna Teleporter Credit##22348 |q 10857 |goto Netherstorm 39.2,20.43
step
  talk Exarch Orelis##19466
  turnin Attack on Manaforge Coruu##10246 |goto Netherstorm 32.07,64.18
step
  talk Nether-Stalker Khay'ji##19880
  turnin A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Duro##10322 |goto Netherstorm 32.04,64.18
step
  talk Exarch Orelis##19466
  turnin Sunfury Briefings##10328 |goto Netherstorm 32.07,64.18
step
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32.0,64.07
step
  talk Papa Wheeler##19645
  turnin Pick Your Part##10206 |goto Netherstorm 32.99,64.66
step
  talk Lead Sapper Blastfizzle##19634
  turnin Dr. Boom!##10221 |goto Netherstorm 34.19,68.15
step
  talk Chief Engineer Trep##19709
  turnin Essence for the Engines##10224 |goto Netherstorm 32.43,66.78
step
  talk Spymaster Thalodien##19468
  accept Stealth Flight##10194 |goto Netherstorm 32.0,64.07
step
  talk Nether-Stalker Khay'ji##19880
  accept Warp-Raider Nesaad##10205 |goto Netherstorm 32.44,64.21
step
  talk Chief Engineer Trep##19709
  accept Elemental Power Extraction##10226 |goto Netherstorm 32.43,66.78
step
  talk Papa Wheeler##19645
  accept In A Scrap With The Legion##10232 |goto Netherstorm 32.99,64.66
step
  talk Anchorite Karja##19467
  accept Shutting Down Manaforge Ara##10323 |goto Netherstorm 32.04,64.18
step
  talk Papa Wheeler##19645
  accept Help Mama Wheeler##10333 |goto Netherstorm 32.99,64.66
step
  talk Exarch Orelis##19466
  accept Outside Assistance##10431 |goto Netherstorm 32.07,64.18
step
  talk Kaylaan##20780
  turnin Outside Assistance##10431 |goto Netherstorm 34.8,38.3
step
  talk Kaylaan##20780
  accept A Dark Pact##10380 |goto Netherstorm 34.8,38.3
step
  talk Ghabar##20811
  turnin To the Stormspire##10423 |goto Netherstorm 43.54,35.15
step
  talk Aurine Moonblaze##20871
  turnin When Nature Goes Too Far##10429 |goto Netherstorm 42.32,32.56
step
  talk Audi the Needle##20205
  turnin Retrieving the Goods##10435 |goto Netherstorm 44.74,36.75
step
  talk Nether-Stalker Nauthis##20471
  turnin Teleport This!##10857 |goto Netherstorm 44.7,34.94
step
  talk Ghabar##20811
  accept Diagnosis: Critical##10424 |goto Netherstorm 43.54,35.15
step
  talk Image of Commander Ameer##20482
  turnin Ethereum Data##10384 |goto Netherstorm 56.82,38.7
step
  talk Image of Commander Ameer##20482
  accept Potential for Brain Damage = High##10385 |goto Netherstorm 56.82,38.7
step
  note Professor Dabiri at the Protectorate Watch Post in Netherstorm wants you to speak with Captain Saeed and then follow his army to Manaforge Ultris and kill Dimensius the All-Devouring!
  kill Dimensius the All-Devouring##19554 |q 10439 |goto Netherstorm 62.41,40.88
step
  talk Professor Dabiri##20907
  turnin Dimensius the All-Devouring##10439 |goto Netherstorm 60.11,31.72
step
  talk Commander Ameer##20448
  turnin A Thousand Worlds##10973 |goto Netherstorm 59.5,32.38
step
  talk Commander Ameer##20448
  accept Stasis Chambers of Bash'ir##10974 |goto Netherstorm 59.5,32.38
step
  note Speak with Wind Trader Marid and lure him away from his trading post. Deal with him and then return to Tyri and Jorad on the Celestial Ridge.
  kill Wind Trader Marid##20071 |q 10273 |goto Netherstorm 58.32,31.66
step
  talk Tyri##20110
  turnin Troublesome Distractions##10273 |goto Netherstorm 71.22,35.12
step
  talk Tyri##20110
  accept Securing the Celestial Ridge##10274 |goto Netherstorm 71.22,35.12
step
  talk Mama Wheeler##19728
  turnin Help Mama Wheeler##10333 |goto Netherstorm 46.63,56.53
step
  talk Mama Wheeler##19728
  accept One Demon's Trash...##10234 |goto Netherstorm 46.63,56.53
step
  note Kill 5 Mo'arg Doomsmiths and 15 Gan'arg Engineers. Then return to Papa Wheeler at Area 52 in the Netherstorm.
  kill Mo'arg Doomsmith##16944 |q 10232 |goto Netherstorm 50.22,59.22
step
  note Kill Warp-Raider Nesaad and then return to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  kill Warp-Raider Nesaad##19641 |q 10205 |goto Netherstorm 28.36,79.45
step
  talk Image of Commander Ameer##22919
  turnin Stasis Chambers of Bash'ir##10974 |goto Blade's Edge Mountains 52.85,14.99 |tip {turninat}Blade's Edge Mountains
step
  talk Veronia##20162
  turnin Stealth Flight##10194 |goto Netherstorm 33.81,64.23
step
  talk Anchorite Karja##19467
  turnin Shutting Down Manaforge Ara##10323 |goto Netherstorm 32.04,64.18
step
  talk Nether-Stalker Khay'ji##19880
  turnin Warp-Raider Nesaad##10205 |goto Netherstorm 32.44,64.21
step
  talk Chief Engineer Trep##19709
  turnin Elemental Power Extraction##10226 |goto Netherstorm 32.43,66.78
step
  talk Papa Wheeler##19645
  turnin In A Scrap With The Legion##10232 |goto Netherstorm 32.99,64.66
step
  talk Nether-Stalker Khay'ji##19880
  accept Request for Assistance##10266 |goto Netherstorm 32.44,64.21
step
  talk Veronia##20162
  accept Behind Enemy Lines##10652 |goto Netherstorm 33.81,64.23
step
  note Kaylaan at Tuluman's Landing in Netherstorm wants you to slay 6 Gan'arg Warp-Tinkers, 3 Daughters of Destiny and 3 Mo'arg Warp-Masters.
  kill Gan'arg Warp-Tinker##20285 |q 10380 |goto Netherstorm 26.67,41.4
step
  talk Kaylaan##20780
  turnin A Dark Pact##10380 |goto Netherstorm 34.8,38.3
step
  talk Kaylaan##20780
  accept Aldor No More##10381 |goto Netherstorm 34.8,38.3
step
  talk Ghabar##20811
  turnin Diagnosis: Critical##10424 |goto Netherstorm 43.54,35.15
step
  talk Ghabar##20811
  accept Testing the Prototype##10430 |goto Netherstorm 43.54,35.15
step
  talk Image of Commander Ameer##20482
  turnin Potential for Brain Damage = High##10385 |goto Netherstorm 56.82,38.7
step
  talk Image of Commander Ameer##20482
  accept S-A-B-O-T-A-G-E##10405 |goto Netherstorm 56.82,38.7
step
  talk Tyri##20110
  turnin Securing the Celestial Ridge##10274 |goto Netherstorm 71.22,35.12
step
  talk Caledis Brightdawn##19840
  turnin Behind Enemy Lines##10652 |goto Netherstorm 48.24,86.6
step
  talk Caledis Brightdawn##19840
  accept A Convincing Disguise##10197 |goto Netherstorm 48.24,86.6
step
  talk Gahruj##20066
  turnin Request for Assistance##10266 |goto Netherstorm 46.67,56.95
step
  talk Mama Wheeler##19728
  turnin One Demon's Trash...##10234 |goto Netherstorm 46.63,56.53
step
  talk Mama Wheeler##19728
  accept Declawing Doomclaw##10235 |goto Netherstorm 46.63,56.53
step
  talk Gahruj##20066
  accept Rightful Repossession##10267 |goto Netherstorm 46.67,56.95
step
  talk Tashar##20913
  turnin Testing the Prototype##10430 |goto Netherstorm 44.69,14.57
step
  talk Tashar##20913
  accept All Clear!##10436 |goto Netherstorm 44.69,14.57
step
  note Tashar, stationed at Eco-Dome Farfield, wants you to kill 12 Scythetooth Raptors.
  kill Scythetooth Raptor##20634 |q 10436 |goto Netherstorm 46.05,12.29
step
  talk Exarch Orelis##19466
  turnin Aldor No More##10381 |goto Netherstorm 32.07,64.18
step
  talk Anchorite Karja##19467
  accept Socrethar's Shadow##10407 |goto Netherstorm 32.04,64.18
step
  talk Image of Commander Ameer##20482
  turnin S-A-B-O-T-A-G-E##10405 |goto Netherstorm 56.82,38.7
step
  talk Image of Commander Ameer##20482
  accept Delivering the Message##10406 |goto Netherstorm 56.82,38.7
step
  talk Caledis Brightdawn##19840
  turnin A Convincing Disguise##10197 |goto Netherstorm 48.24,86.6
step
  talk Caledis Brightdawn##19840
  accept Information Gathering##10198 |goto Netherstorm 48.24,86.6
step
  talk Gahruj##20066
  turnin Rightful Repossession##10267 |goto Netherstorm 46.67,56.95
step
  talk Mama Wheeler##19728
  turnin Declawing Doomclaw##10235 |goto Netherstorm 46.63,56.53
step
  talk Mama Wheeler##19728
  accept Warn Area 52!##10237 |goto Netherstorm 46.63,56.53
step
  talk Gahruj##20066
  accept An Audience with the Prince##10268 |goto Netherstorm 46.67,56.95
step
  talk Tashar##20913
  turnin All Clear!##10436 |goto Netherstorm 44.69,14.57
step
  talk Tashar##20913
  accept Success!##10440 |goto Netherstorm 44.69,14.57
step
  talk Anchorite Karja##19467
  turnin Socrethar's Shadow##10407 |goto Netherstorm 32.04,64.18
step
  talk Rocket-Chief Fuselage##19570
  turnin Warn Area 52!##10237 |goto Netherstorm 32.73,64.96
step
  talk Rocket-Chief Fuselage##19570
  accept Doctor Vomisa, Ph.T.##10247 |goto Netherstorm 32.73,64.96
step
  talk Anchorite Karja##19467
  accept Ishanah's Help##10410 |goto Netherstorm 32.04,64.18
step
  talk Ishanah##18538
  turnin Ishanah's Help##10410 |goto Shattrath City 23.97,29.73 |tip {turninat}Shattrath City
step
  talk Ghabar##20811
  turnin Success!##10440 |goto Netherstorm 43.54,35.15
step
  talk Image of Nexus-Prince Haramad##20084
  turnin An Audience with the Prince##10268 |goto Netherstorm 45.87,35.96
step
  talk Image of Nexus-Prince Haramad##20084
  accept Triangulation Point One##10269 |goto Netherstorm 45.87,35.96
step
  talk Image of Commander Ameer##20482
  turnin Delivering the Message##10406 |goto Netherstorm 56.82,38.7
step
  talk Image of Commander Ameer##20482
  accept Nexus-King Salhadaar##10408 |goto Netherstorm 56.82,38.7
step
  note The Image of Commander Ameer at the Ethereum Staging Grounds - Ethereum Transponder Zeta - wants you to use the Protectorate Disruptor to bring down Salhadaar's force fields and then destroy Nexus-King Salhadaar.
  kill Nexus-King Salhadaar##20454 |q 10408 |goto Netherstorm 53.62,42.36
step
  talk Dealer Hazzin##20092
  turnin Triangulation Point One##10269 |goto Netherstorm 58.35,31.26
step
  talk Dealer Hazzin##20092
  accept Triangulation Point Two##10275 |goto Netherstorm 58.35,31.26
step
  talk Caledis Brightdawn##19840
  turnin Information Gathering##10198 |goto Netherstorm 48.24,86.6
step
  talk Caledis Brightdawn##19840
  accept Shutting Down Manaforge Coruu##10330 |goto Netherstorm 48.24,86.6
step
  talk Doctor Vomisa, Ph.T.##19832
  turnin Doctor Vomisa, Ph.T.##10247 |goto Netherstorm 37.32,63.74
step
  talk Doctor Vomisa, Ph.T.##19832
  accept You, Robot##10248 |goto Netherstorm 37.32,63.74
step
  talk Wind Trader Tuluman##20112
  turnin Triangulation Point Two##10275 |goto Netherstorm 34.62,37.95
step
  talk Wind Trader Tuluman##20112
  accept Full Triangle##10276 |goto Netherstorm 34.62,37.95
step
  talk Image of Nexus-Prince Haramad##20084
  turnin Full Triangle##10276 |goto Netherstorm 45.87,35.96
step
  talk Image of Nexus-Prince Haramad##20084
  accept Special Delivery to Shattrath City##10280 |goto Netherstorm 45.87,35.96
step
  talk Image of Commander Ameer##20482
  turnin Nexus-King Salhadaar##10408 |goto Netherstorm 56.82,38.7
step
  talk A'dal##18481
  turnin Special Delivery to Shattrath City##10280 |goto Shattrath City 53.99,44.75 |tip {turninat}Shattrath City
step
  talk Caledis Brightdawn##19840
  turnin Shutting Down Manaforge Coruu##10330 |goto Netherstorm 48.24,86.6
step
  talk Caledis Brightdawn##19840
  accept Return to Thalodien##10200 |goto Netherstorm 48.24,86.6
step
  talk Image of Wind Trader Marid##20518
  turnin A Not-So-Modest Proposal##10270
step
  talk Image of Archmage Vargoth##19644
  turnin Curse of the Violet Tower##10174
step
  talk Custodian Dieworth##19488
  accept Malevolent Remnants##10184 |goto Netherstorm 57.5,86.34
step
  talk Custodian Dieworth##19488
  accept A Fate Worse Than Death##10185 |goto Netherstorm 57.5,86.34
step
  note Kill 10 Mageslayers and 10 Mana Seekers and return to Custodian Dieworth at Kirin'Var Village.
  kill Mana Seeker##18867 |q 10185 |goto Netherstorm 55.84,87.28
step
  talk Lieutenant-Sorcerer Morran##19489
  accept The Unending Invasion##10343 |goto Netherstorm 57.58,86.3
step
  talk Custodian Dieworth##19488
  turnin Malevolent Remnants##10184 |goto Netherstorm 57.5,86.34
step
  talk Custodian Dieworth##19488
  turnin A Fate Worse Than Death##10185 |goto Netherstorm 57.5,86.34
step
  talk Lieutenant-Sorcerer Morran##19489
  turnin The Unending Invasion##10343 |goto Netherstorm 57.58,86.3
step
  talk Lieutenant-Sorcerer Morran##19489
  accept Potential Energy Source##10239 |goto Netherstorm 57.58,86.3
step
  talk Custodian Dieworth##19488
  accept The Annals of Kirin'Var##10312 |goto Netherstorm 57.5,86.34
step
  talk Lieutenant-Sorcerer Morran##19489
  turnin Potential Energy Source##10239 |goto Netherstorm 57.58,86.3
step
  talk Custodian Dieworth##19488
  turnin The Annals of Kirin'Var##10312 |goto Netherstorm 57.5,86.34
step
  talk Lieutenant-Sorcerer Morran##19489
  accept Building a Perimeter##10240 |goto Netherstorm 57.58,86.3
step
  note Use the Rune Activation Device near the East Rune, Northeast Rune, and West Rune. The runes can be found around the perimeter of Kirin'Var Village's Wizard Row and Town Square districts. Return to Lieutenant-Sorcerer Morran once you've completed the task.
  kill Invis East KV Rune##19866 |q 10240 |goto Netherstorm 59.23,85.36
step
  talk Custodian Dieworth##19488
  accept Searching for Evidence##10316 |goto Netherstorm 57.5,86.34
step
  talk Lieutenant-Sorcerer Morran##19489
  turnin Building a Perimeter##10240 |goto Netherstorm 57.58,86.3
step
  turnin Searching for Evidence##10316 |goto Netherstorm 60.3,77.97
step
  talk Spymaster Thalodien##19468
  turnin Return to Thalodien##10200 |goto Netherstorm 32.0,64.07
step
  talk Doctor Vomisa, Ph.T.##19832
  turnin You, Robot##10248 |goto Netherstorm 37.32,63.74
step
  talk Magistrix Larynna##19469
  accept Kick Them While They're Down##10341 |goto Netherstorm 32.05,64.0
step
  note Slay 8 Sunfury Conjurers, 6 Sunfury Bowmen and 4 Sunfury Centurions. Return to Magistrix Larynna at Area 52 after completing this task.
  kill Sunfury Conjurer##20139 |q 10341 |goto Netherstorm 57.97,63.5
step
  talk Magistrix Larynna##19469
  turnin Kick Them While They're Down##10341 |goto Netherstorm 32.05,64.0
step
  talk Doctor Vomisa, Ph.T.##19832
  accept Back to the Chief!##10249 |goto Netherstorm 37.32,63.74
step
  talk Magistrix Larynna##19469
  accept A Defector##10202 |goto Netherstorm 32.05,64.0
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge Duro##10338 |goto Netherstorm 32.0,64.07
step
  talk Rocket-Chief Fuselage##19570
  turnin Back to the Chief!##10249 |goto Netherstorm 32.73,64.96
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
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge Ara##10365 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  turnin Damning Evidence##10432 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  accept A Gift for Voren'thal##10508 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  turnin A Gift for Voren'thal##10508 |goto Netherstorm 32.0,64.07
step
  talk Spymaster Thalodien##19468
  accept Bound for Glory##10509 |goto Netherstorm 32.0,64.07
step
  talk Voren'thal the Seer##18530
  turnin Bound for Glory##10509 |goto Shattrath City 42.79,91.71 |tip {turninat}Shattrath City
step
  note {travel}Shattrath City
  goto Shattrath City 52.54,21.01
]])
