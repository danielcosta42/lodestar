-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Bloodmyst Isle (13-19)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Loch Modan (14-38)",
}, [[
step
  note {fp}Laando
  goto Bloodmyst Isle 57.68,53.87 |tip {vendor}
step
  talk Anchorite Paetheus##17424
  accept Nolkai's Words##9561 |goto Bloodmyst Isle 54.66,53.94
step
  talk Vindicator Aalesia##17433
  accept Know Thine Enemy##9567 |goto Bloodmyst Isle 55.08,57.99
step
  note Find the Nazzivus Monument in Nazzivian and retrieve a Nazzivus Monument Glyph. Return to Vindicator Aalesia in Blood Watch when you have one of the glyphs.
  collect Nazzivus Monument Glyphs##182532 |q 9567 |goto Bloodmyst Isle 36.5,71.33
step
  talk Morae##17434
  accept Searching for Galaen##9578 |goto Bloodmyst Isle 53.24,57.74
step
  talk Tracker Lyceon##17642
  accept The Bear Necessities##9580 |goto Bloodmyst Isle 55.86,57.0
step
  note Bring 8 Elder Brown Bear Flanks to Tracker Lyceon in Blood Watch.
  kill Elder Brown Bear##17348 |q 9580 |goto Bloodmyst Isle 41.84,42.88
step
  talk Harbinger Mikolaas##17423
  accept Learning from the Crystals##9581 |goto Bloodmyst Isle 52.59,53.21
step
  note Get an Impact Site Crystal Sample using the Crystal Mining Pick on the Impact Site Crystal and bring it to Harbinger Mikolaas in Blood Watch.
  get Learning from the Crystals |q 9581 |goto Bloodmyst Isle 52.59,53.21
step
  only Draenei
  talk Caregiver Topher Loaal##17553
  accept Beds, Bandages, and Beyond##9603 |goto Bloodmyst Isle 55.85,59.81
step
  talk Morae##17434
  accept Catch and Release##9629 |goto Bloodmyst Isle 53.24,57.74
step
  talk Anchorite Paetheus##17424
  accept Newfound Allies##9632 |goto Bloodmyst Isle 54.66,53.94
step
  talk Vindicator Boros##17684
  accept Irradiated Crystal Shards##9641 |goto Bloodmyst Isle 55.42,55.27
step
  note Vindicator Boros at Blood Watch wants you to bring him 10 Irradiated Crystal Shards.
  kill Infected Wildkin##17322 |q 9641 |goto Bloodmyst Isle 56.36,34.11
step
  talk Tracker Lyceon##17642
  accept Constrictor Vines##9643 |goto Bloodmyst Isle 55.86,57.0
step
  note Tracker Lyceon at Blood Watch wants you to bring him 6 Thorny Constrictor Vines.
  kill Mutated Constrictor##17344 |q 9643 |goto Bloodmyst Isle 42.46,42.48
step
  talk Jessera of Mac'Aree##17663
  accept Mac'Aree Mushroom Menagerie##9648 |goto Bloodmyst Isle 56.42,56.82
step
  note Jessera of Mac'Aree at Blood Watch wants 1 Aquatic Stinkhorn, 1 Blood Mushroom, 1 Ruinous Polyspore, and 1 Fel Cone Fungus.
  kill Stinkhorn Striker##17673 |q 9648 |goto Bloodmyst Isle 59.22,71.7
step
  talk Achelus##17676
  accept The Missing Expedition##9669 |goto Bloodmyst Isle 53.24,57.03
step
  talk Messenger Hermesius##17703
  accept Urgent Delivery##9671 |goto Bloodmyst Isle 55.84,54.9
step
  talk Exarch Admetius##17658
  accept What Argus Means to Me##9693 |goto Bloodmyst Isle 52.68,53.21
step
  talk Vindicator Boros##17684
  accept I Shoot Magic Into the Darkness##9700 |goto Bloodmyst Isle 55.42,55.27
step
  talk Prospector Nachlan##18804
  accept Explorers' League, Is That Something for Gnomes?##10063 |goto Bloodmyst Isle 56.32,54.23
step
  talk Harbinger Mikolaas##17423
  accept Talk to the Hand##10064 |goto Bloodmyst Isle 52.59,53.21
step
  turnin Nolkai's Words##9561 |goto Bloodmyst Isle 61.17,49.64
step
  talk Prince Toreth##17674
  accept Restoring Sanctity##9687 |goto Bloodmyst Isle 74.47,33.46
step
  note Prince Toreth on Wyrmscar Island wants you to recover 8 Dragon Bones.
  collect Dragon Bone##181981 |q 9687 |goto Bloodmyst Isle 56.5,35.18
step
  talk Captain Edward Hanes##17712
  accept The Bloodcursed Naga##9674 |goto Bloodmyst Isle 79.15,22.65
step
  talk Clopper Wizbang##17421
  turnin Explorers' League, Is That Something for Gnomes?##10063 |goto Bloodmyst Isle 42.15,21.22
step
  talk Clopper Wizbang##17421
  accept Pilfered Equipment##9548 |goto Bloodmyst Isle 42.15,21.22
step
  note Bring Clopper's Equipment back to Clopper Wizbang, who is hiding in a beached turtle shell.
  collect Clopper's Equipment##181746 |q 9548 |goto Bloodmyst Isle 40.49,20.24
step
  talk Clopper Wizbang##17421
  accept Artifacts of the Blacksilt##9549 |goto Bloodmyst Isle 42.15,21.22
step
  note Bring 3 Crude Murloc Idols and 6 Crude Murloc Knives to Clopper Wizbang, who is hiding in a beached turtle shell.
  kill Blacksilt Seer##17330 |q 9549 |goto Bloodmyst Isle 38.55,20.65
step
  note Vindicator Boros at Blood Watch wants you to locate the Sun Portal Site and slay 5 Void Anomalies.
  kill Void Anomaly##17550 |q 9700 |goto Bloodmyst Isle 52.69,21.3
step
  only Draenei Mage
  talk Aqueous##17275
  accept Call of Water##9503 |goto Bloodmyst Isle 32.3,16.18
step
  only Draenei Mage
  note Collect 6 Foul Essences and return them to Aqueous in the Hidden Reef at Bloodmyst Isle.
  kill Fouled Water Spirit##17358 |q 9503 |goto Bloodmyst Isle 30.02,36.97
step
  talk Researcher Cornelius##17686
  accept They're Alive! Maybe...##9670 |goto Bloodmyst Isle 24.88,34.35
step
  note Researcher Cornelius has asked that you free 5 Expedition Researchers.
  kill Expedition Researcher##17681 |q 9670
step
  note Kill 8 Myst Spinners, 8 Myst Leechers and their leader, Zarakh. Return to Achelus at Blood Watch when the task is complete.
  kill Myst Leecher##17523 |q 9669 |goto Bloodmyst Isle 21.15,39.66
step
  talk Huntress Kella Nightbow##17614
  turnin Newfound Allies##9632 |goto Azuremyst Isle 24.18,54.35 |tip {turninat}Azuremyst Isle
step
  talk Scout Jorli##17927
  turnin Talk to the Hand##10064 |goto Bloodmyst Isle 30.26,45.92
step
  talk Scout Loryi##17926
  accept Critters of the Void##9741 |goto Bloodmyst Isle 30.24,45.87
step
  talk Scout Jorli##17927
  accept Cutting a Path##10065 |goto Bloodmyst Isle 30.26,45.92
step
  talk Vindicator Corin##17986
  accept Oh, the Tangled Webs They Weave##10066 |goto Bloodmyst Isle 30.75,46.85
step
  talk Vindicator Corin##17986
  accept Fouled Water Spirits##10067 |goto Bloodmyst Isle 30.75,46.85
step
  note Kill 10 Enraged Ravagers and return to Scout Jorli at Vindicator's Rest.
  kill Enraged Ravager##17527 |q 10065 |goto Bloodmyst Isle 29.3,55.7
step
  talk Galaen's Corpse##17508
  turnin Searching for Galaen##9578 |goto Bloodmyst Isle 37.5,61.24
step
  talk Galaen's Corpse##17508
  accept Galaen's Fate##9579 |goto Bloodmyst Isle 37.5,61.24
step
  note Bring Galaen's Amulet to Morae at Blood Watch.
  kill Sunhawk Reclaimer##17606 |q 9579 |goto Bloodmyst Isle 38.58,60.93
step
  note Kill 12 Void Critters and report to Vindicator Aesom at Blood Watch.
  kill Void Critter##17887 |q 9741 |goto Bloodmyst Isle 19.26,63.61
step
  note Kill 8 Mutated Tanglers and report to Vindicator Corin at Vindicator's Rest.
  kill Mutated Tangler##17346 |q 10066 |goto Bloodmyst Isle 30.09,58.86
step
  talk Princess Stillpine##17682
  accept Saving Princess Stillpine##9667 |goto Bloodmyst Isle 68.26,80.99
step
  note Release Princess Stillpine from her cage and then speak with Stillpine Ambassador Frasaboo at Blood Watch.
  get Saving Princess Stillpine |q 9667 |goto Bloodmyst Isle 68.26,80.99
step
  talk Aonar##17599
  accept A Favorite Treat##9624 |goto Bloodmyst Isle 63.43,88.79
step
  note Aonar at Kessel's Crossing wants you to bring him 10 Sand Pears.
  collect Sand Pear##181854 |q 9624 |goto Bloodmyst Isle 65.87,83.82
step
  talk Vorkhan the Elekk Herder##17586
  accept Alien Predators##9634 |goto Bloodmyst Isle 63.03,87.9
step
  talk Kessel##17649
  accept The Kessel Run##9663 |goto Bloodmyst Isle 62.99,87.54
step
  note Morae at Blood Watch wants you to 'mark' 6 Blacksilt Scouts using the Murloc Tagger.
  kill Blacksilt Scout##17326 |q 9629 |goto Bloodmyst Isle 42.65,94.48
step
  note Kill 10 Bloodmyst Hatchlings then return to Vorkhan the Elekk Herder at Kessel's Crossing on Bloodmyst Isle.
  kill Bloodmyst Hatchling##17525 |q 9634 |goto Bloodmyst Isle 59.64,86.64
step
  only Draenei
  talk Laando##17554
  turnin Beds, Bandages, and Beyond##9603 |goto Bloodmyst Isle 57.68,53.87
step
  talk Vindicator Aesom##17844
  turnin Critters of the Void##9741 |goto Bloodmyst Isle 55.55,55.41
step
  talk Morae##17434
  turnin Catch and Release##9629 |goto Bloodmyst Isle 53.24,57.74
step
  talk Vindicator Boros##17684
  turnin Irradiated Crystal Shards##9641 |goto Bloodmyst Isle 55.42,55.27
step
  talk Tracker Lyceon##17642
  turnin Constrictor Vines##9643 |goto Bloodmyst Isle 55.86,57.0
step
  talk Jessera of Mac'Aree##17663
  turnin Mac'Aree Mushroom Menagerie##9648 |goto Bloodmyst Isle 56.42,56.82
step
  talk Stillpine Ambassador Frasaboo##18803
  turnin Saving Princess Stillpine##9667 |goto Bloodmyst Isle 55.16,55.95
step
  talk Achelus##17676
  turnin The Missing Expedition##9669 |goto Bloodmyst Isle 53.24,57.03
step
  talk Messenger Hermesius##17703
  turnin Urgent Delivery##9671 |goto Bloodmyst Isle 55.84,54.9
step
  talk Vindicator Boros##17684
  turnin What Argus Means to Me##9693 |goto Bloodmyst Isle 55.42,55.27
step
  talk Vindicator Aalesia##17433
  turnin Know Thine Enemy##9567 |goto Bloodmyst Isle 55.08,57.99
step
  talk Vindicator Boros##17684
  turnin I Shoot Magic Into the Darkness##9700 |goto Bloodmyst Isle 55.42,55.27
step
  talk Morae##17434
  turnin Galaen's Fate##9579 |goto Bloodmyst Isle 53.24,57.74
step
  talk Tracker Lyceon##17642
  turnin The Bear Necessities##9580 |goto Bloodmyst Isle 55.86,57.0
step
  talk Harbinger Mikolaas##17423
  turnin Learning from the Crystals##9581 |goto Bloodmyst Isle 52.59,53.21
step
  talk Vindicator Aalesia##17433
  accept Containing the Threat##9569 |goto Bloodmyst Isle 55.08,57.99
step
  talk Morae##17434
  accept Victims of Corruption##9574 |goto Bloodmyst Isle 53.24,57.74
step
  note Bring 6 pieces of Crystallized Bark to Morae in Blood Watch.
  kill Corrupted Treant##17352 |q 9574 |goto Bloodmyst Isle 49.22,75.13
step
  only Draenei
  talk Laando##17554
  accept On the Wings of a Hippogryph##9604 |goto Bloodmyst Isle 57.68,53.87
step
  talk Harbinger Mikolaas##17423
  accept The Missing Survey Team##9620 |goto Bloodmyst Isle 52.59,53.21
step
  talk Tracker Lyceon##17642
  accept Culling the Flutterers##9647 |goto Bloodmyst Isle 55.86,57.0
step
  talk Jessera of Mac'Aree##17663
  accept Ysera's Tears##9649 |goto Bloodmyst Isle 56.42,56.82
step
  note Jessera of Mac'Aree at Blood Watch wants 2 Ysera's Tears.
  collect Ysera's Tear##181897 |q 9649 |goto Bloodmyst Isle 71.03,20.3
step
  talk Vindicator Boros##17684
  accept Blood Watch##9694 |goto Bloodmyst Isle 55.42,55.27
step
  talk Vindicator Kuros##17843
  accept The Cryo-Core##9703 |goto Bloodmyst Isle 55.64,55.22
step
  note Vindicator Kuros at Blood Watch wants you to recover 12 boxes of Medical Supplies.
  kill Sunhawk Reclaimer##17606 |q 9703 |goto Bloodmyst Isle 38.58,60.93
step
  note Vindicator Boros at Blood Watch wants you to slay 10 Sunhawk Spies.
  kill Sunhawk Spy##17604 |q 9694 |goto Bloodmyst Isle 48.23,46.15
step
  only Draenei
  talk Nurguni##16768
  turnin On the Wings of a Hippogryph##9604 |goto The Exodar 57.02,50.08 |tip {turninat}The Exodar
step
  talk Draenei Cartographer##17600
  turnin The Missing Survey Team##9620 |goto Bloodmyst Isle 61.25,48.41
step
  talk Draenei Cartographer##17600
  accept Salvaging the Data##9628 |goto Bloodmyst Isle 61.25,48.41
step
  note Obtain the Survey Data Crystal from the Wrathscale near the dead cartographers and return it to Harbinger Mikolaas at Blood Watch.
  kill Wrathscale Marauder##17334 |q 9628 |goto Bloodmyst Isle 63.81,47.1
step
  talk Prince Toreth##17674
  turnin Restoring Sanctity##9687 |goto Bloodmyst Isle 74.47,33.46
step
  talk Prince Toreth##17674
  accept Into the Dream##9688 |goto Bloodmyst Isle 74.47,33.46
step
  note Captain Edward Hanes on Wyrmscar Island wants you to kill 10 Bloodcursed Naga.
  kill Bloodcursed Naga##17713 |q 9674 |goto Bloodmyst Isle 82.04,43.49
step
  talk Captain Edward Hanes##17712
  turnin The Bloodcursed Naga##9674 |goto Bloodmyst Isle 79.15,22.65
step
  talk Captain Edward Hanes##17712
  accept The Hopeless Ones...##9682 |goto Bloodmyst Isle 79.15,22.65
step
  note Captain Edward Hanes on Wyrmscar Island wants you to recover 4 Bloodcursed Souls.
  kill Bloodcursed Voyager##17714 |q 9682 |goto Bloodmyst Isle 86.06,16.46
step
  note Prince Toreth at Wyrmscar Island has asked that you slay 5 Viridian Whelps and 5 Viridian Broodlings.
  kill Veridian Whelp##17588 |q 9688 |goto Bloodmyst Isle 73.51,20.78
step
  talk Clopper Wizbang##17421
  turnin Pilfered Equipment##9548 |goto Bloodmyst Isle 42.15,21.22
step
  talk Clopper Wizbang##17421
  turnin Artifacts of the Blacksilt##9549 |goto Bloodmyst Isle 42.15,21.22
step
  note Kessel at Kessel's Crossing wants you to warn High Chief Stillpine at Stillpine Hold, Exarch Menelaous at Azure Watch and Admiral Odesyus at Odesyus' Landing of the imminent blood elf invasion. Return to Kessel when you complete this task. You have 15 minutes. (Be sure to keep it out of water.)
  kill High Chief Stillpine##17440 |q 9663 |goto Azuremyst Isle 46.69,20.61
step
  note Kill 5 Axxarien Shadowstalkers, 5 Axxarien Hellcallers, and Zevrax, then gather 5 Corrupted Crystals and return to Vindicator Aalesia in Blood Watch.
  kill Zevrax##17494 |q 9569 |goto Bloodmyst Isle 41.91,29.53
step
  only Draenei Mage
  talk Aqueous##17275
  turnin Call of Water##9503 |goto Bloodmyst Isle 32.3,16.18
step
  only Draenei Mage
  talk Aqueous##17275
  accept Call of Water##9504 |goto Bloodmyst Isle 32.3,16.18
step
  only Draenei Mage
  note Fill the Empty Bota Bag and then return to Aqueous in the Hidden Reef at Bloodmyst Isle.
  get Call of Water |q 9504 |goto Bloodmyst Isle 32.3,16.18
step
  talk Researcher Cornelius##17686
  turnin They're Alive! Maybe...##9670 |goto Bloodmyst Isle 24.88,34.35
step
  note Kill 6 Fouled Water Spirits and return to Vindicator Corin at Vindicator's Rest.
  kill Fouled Water Spirit##17358 |q 10067 |goto Bloodmyst Isle 30.02,36.97
step
  talk Scout Jorli##17927
  turnin Cutting a Path##10065 |goto Bloodmyst Isle 30.26,45.92
step
  talk Vindicator Corin##17986
  turnin Oh, the Tangled Webs They Weave##10066 |goto Bloodmyst Isle 30.75,46.85
step
  talk Vindicator Corin##17986
  turnin Fouled Water Spirits##10067 |goto Bloodmyst Isle 30.75,46.85
step
  note Tracker Lyceon at Blood Watch wants you to kill 10 Royal Blue Flutterers.
  kill Royal Blue Flutterer##17350 |q 9647 |goto Bloodmyst Isle 40.46,49.07
step
  talk Aonar##17599
  turnin A Favorite Treat##9624 |goto Bloodmyst Isle 63.43,88.79
step
  talk Vorkhan the Elekk Herder##17586
  turnin Alien Predators##9634 |goto Bloodmyst Isle 63.03,87.9
step
  talk Kessel##17649
  turnin The Kessel Run##9663 |goto Bloodmyst Isle 62.99,87.54
step
  talk Kessel##17649
  accept Declaration of Power##9666 |goto Bloodmyst Isle 62.99,87.54
step
  talk Harbinger Mikolaas##17423
  turnin Salvaging the Data##9628 |goto Bloodmyst Isle 52.59,53.21
step
  talk Tracker Lyceon##17642
  turnin Culling the Flutterers##9647 |goto Bloodmyst Isle 55.86,57.0
step
  talk Jessera of Mac'Aree##17663
  turnin Ysera's Tears##9649 |goto Bloodmyst Isle 56.42,56.82
step
  talk Vindicator Boros##17684
  turnin Blood Watch##9694 |goto Bloodmyst Isle 55.42,55.27
step
  talk Vindicator Aalesia##17433
  turnin Containing the Threat##9569 |goto Bloodmyst Isle 55.08,57.99
step
  talk Morae##17434
  turnin Victims of Corruption##9574 |goto Bloodmyst Isle 53.24,57.74
step
  talk Vindicator Kuros##17843
  turnin The Cryo-Core##9703 |goto Bloodmyst Isle 55.64,55.22
step
  talk Harbinger Mikolaas##17423
  accept The Second Sample##9584 |goto Bloodmyst Isle 52.59,53.21
step
  note Get an Altered Crystal Sample using the Crystal Mining Pick on the Altered Bloodmyst Crystal and bring it to Harbinger Mikolaas in Blood Watch.
  get The Second Sample |q 9584 |goto Bloodmyst Isle 52.59,53.21
step
  talk Vindicator Aesom##17844
  accept Don't Drink the Water##9748 |goto Bloodmyst Isle 55.55,55.41
step
  note Vindicator Aesom at Blood Watch wants you to use the Water Sample Flask to get a Bloodmyst Water Sample.
  get Don't Drink the Water |q 9748 |goto Bloodmyst Isle 55.55,55.41
step
  talk Vindicator Boros##17684
  accept Intercepting the Message##9779 |goto Bloodmyst Isle 55.42,55.27
step
  note Kill Sunhawk elves until you find the Sunhawk Missive, then return it to Vindicator Boros at Blood Watch.
  kill Sunhawk Spy##17604 |q 9779 |goto Bloodmyst Isle 48.23,46.15
step
  talk Prince Toreth##17674
  turnin Into the Dream##9688 |goto Bloodmyst Isle 74.47,33.46
step
  talk Prince Toreth##17674
  accept Razormaw##9689 |goto Bloodmyst Isle 74.47,33.46
step
  note Prince Toreth at Wyrmscar Island has asked that you slay Razormaw.
  kill Razormaw##17592 |q 9689 |goto Bloodmyst Isle 73.8,29.6
step
  talk Captain Edward Hanes##17712
  turnin The Hopeless Ones...##9682 |goto Bloodmyst Isle 79.15,22.65
step
  talk Captain Edward Hanes##17712
  accept Ending the Bloodcurse##9683 |goto Bloodmyst Isle 79.15,22.65
step
  note Captain Edward Hanes on Wyrmscar Island wants you to destroy the Statue of Queen Azshara and kill Atoph the Bloodcursed.
  kill Atoph the Bloodcursed##17715 |q 9683
step
  only Draenei Mage
  talk Aqueous##17275
  turnin Call of Water##9504 |goto Bloodmyst Isle 32.3,16.18
step
  only Draenei Mage
  talk Aqueous##17275
  accept Call of Water##9508 |goto Bloodmyst Isle 32.3,16.18
step
  only Draenei Mage
  note Bring the Head of Tel'athion to Aqueous in the Hidden Reef at Bloodmyst Isle.
  get Call of Water |q 9508 |goto Bloodmyst Isle 32.3,16.18
step
  note Kessel at Kessel's Crossing on Bloodmyst Isle wants you to kill Lord Xiz at Wrathscale Lair and drive the Draenei Banner through his dead body.
  kill Lord Xiz##17701 |q 9666 |goto Bloodmyst Isle 68.77,68.16
step
  talk Kessel##17649
  turnin Declaration of Power##9666 |goto Bloodmyst Isle 62.99,87.54
step
  talk Kessel##17649
  accept Report to Exarch Admetius##9668 |goto Bloodmyst Isle 62.99,87.54
step
  talk Vindicator Aesom##17844
  turnin Don't Drink the Water##9748 |goto Bloodmyst Isle 55.55,55.41
step
  talk Vindicator Boros##17684
  turnin Intercepting the Message##9779 |goto Bloodmyst Isle 55.42,55.27
step
  talk Exarch Admetius##17658
  turnin Report to Exarch Admetius##9668 |goto Bloodmyst Isle 52.68,53.21
step
  talk Harbinger Mikolaas##17423
  turnin The Second Sample##9584 |goto Bloodmyst Isle 52.59,53.21
step
  talk Harbinger Mikolaas##17423
  accept The Final Sample##9585 |goto Bloodmyst Isle 52.59,53.21
step
  note Get an Axxarian Crystal Sample using the Crystal Mining Pick on the Axxarien Crystal and bring it to Harbinger Mikolaas in Blood Watch.
  get The Final Sample |q 9585 |goto Bloodmyst Isle 52.59,53.21
step
  talk Vindicator Boros##17684
  accept Translations...##9696 |goto Bloodmyst Isle 55.42,55.27
step
  talk Vindicator Aesom##17844
  accept Limits of Physical Exhaustion##9746 |goto Bloodmyst Isle 55.55,55.41
step
  talk Prince Toreth##17674
  turnin Razormaw##9689 |goto Bloodmyst Isle 74.47,33.46
step
  talk Captain Edward Hanes##17712
  turnin Ending the Bloodcurse##9683 |goto Bloodmyst Isle 79.15,22.65
step
  only Draenei Mage
  talk Aqueous##17275
  turnin Call of Water##9508 |goto Bloodmyst Isle 32.3,16.18
step
  only Draenei Mage
  talk Aqueous##17275
  accept Call of Water##9509 |goto Bloodmyst Isle 32.3,16.18
step
  only Draenei Mage
  talk Farseer Nobundo##17204
  turnin Call of Water##9509 |goto The Exodar 29.72,33.26 |tip {turninat}The Exodar
step
  note Vindicator Aesom at Blood Watch wants you to slay 10 Sunhawk Pyromancers and 10 Sunhawk Defenders.
  kill Sunhawk Pyromancer##17608 |q 9746 |goto Bloodmyst Isle 23.84,56.25
step
  talk Vindicator Aesom##17844
  turnin Limits of Physical Exhaustion##9746 |goto Bloodmyst Isle 55.55,55.41
step
  talk Interrogator Elysia##17825
  turnin Translations...##9696 |goto Bloodmyst Isle 54.44,54.45
step
  talk Harbinger Mikolaas##17423
  turnin The Final Sample##9585 |goto Bloodmyst Isle 52.59,53.21
step
  talk Interrogator Elysia##17825
  accept Audience with the Prophet##9698 |goto Bloodmyst Isle 54.44,54.45
step
  talk Vindicator Aesom##17844
  accept The Sun Gate##9740 |goto Bloodmyst Isle 55.55,55.41
step
  talk Prophet Velen##17468
  turnin Audience with the Prophet##9698 |goto The Exodar 32.87,54.5 |tip {turninat}The Exodar
step
  note Vindicator Aesom at Blood Watch wants you to destroy the Sun Gate.
  collect Sun Gate##182026 |q 9740 |goto Bloodmyst Isle 18.74,63.95
step
  talk Vindicator Aesom##17844
  turnin The Sun Gate##9740 |goto Bloodmyst Isle 55.55,55.41
step
  only Draenei
  talk Vindicator Aesom##17844
  accept What We Know...##9753 |goto Bloodmyst Isle 55.55,55.41
step
  only Draenei
  talk Exarch Admetius##17658
  turnin What We Know...##9753 |goto Bloodmyst Isle 52.68,53.21
step
  only Draenei
  talk Exarch Admetius##17658
  accept What We Don't Know...##9756 |goto Bloodmyst Isle 52.68,53.21
step
  only Draenei
  note Speak to a Captured Sunhawk Agent at Blood Watch and recover Sunhawk Information. Return to Exarch Admetius when the task is complete.
  kill Captured Sunhawk Agent Invisible Trigger##17974 |q 9756 |goto Bloodmyst Isle 54.36,54.07
step
  only Draenei
  talk Exarch Admetius##17658
  turnin What We Don't Know...##9756 |goto Bloodmyst Isle 52.68,53.21
step
  only Draenei
  talk Exarch Admetius##17658
  accept Vindicator's Rest##9760 |goto Bloodmyst Isle 52.68,53.21
step
  only Draenei
  talk Vindicator Corin##17986
  turnin Vindicator's Rest##9760 |goto Bloodmyst Isle 30.75,46.85
step
  only Draenei
  talk Vindicator Corin##17986
  accept Clearing the Way##9761 |goto Bloodmyst Isle 30.75,46.85
step
  only Draenei
  note Vindicator Corin at Vindicator's Rest wants you to slay 8 Sunhawk Saboteurs and 8 Sunhawk Agents.
  kill Sunhawk Agent##17610 |q 9761 |goto Bloodmyst Isle 17.23,54.56
step
  only Draenei
  talk Vindicator Corin##17986
  turnin Clearing the Way##9761 |goto Bloodmyst Isle 30.75,46.85
step
  note {travel}Loch Modan
  goto Loch Modan 37.02,47.81
]])
