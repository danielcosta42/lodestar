-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Arathi Highlands (32-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Badlands (37-43)",
	rev = "b6bbed79",
}, [[
step
  ding 31
step
  talk Archmage Malin##2708
  accept Malin's Request##690 |goto Stormwind City 50.5,87.47
step
  collect Waterlogged Letter##2656 |goto Arathi Highlands 44.29,92.88 |tip Loot the quest item here — it starts the quest.
  accept Sully Balloo's Letter##637 |goto Arathi Highlands 44.29,92.88
step
  note {fp}Cedrik Prose
  goto Arathi Highlands 45.73,46.1 |tip {vendor}
step
  note Find Skuerto at Refuge Pointe in the Arathi Highlands.
  talk Skuerto##2789
  turnin Malin's Request##690 |goto Arathi Highlands 46.65,47.01
step
  talk Captain Nials##2700
  accept Northfold Manor##681 |goto Arathi Highlands 45.83,47.56
step
  note Kill 10 Syndicate Highwaymen and 6 Syndicate Mercenaries.
  kill Syndicate Highwayman##2586 |q 681/1 |goto Arathi Highlands 30.97,29.79
  kill Syndicate Mercenary##2589 |q 681 |goto Arathi Highlands 31.02,28.75
step
  talk Captain Nials##2700
  turnin Northfold Manor##681 |goto Arathi Highlands 45.83,47.56
step
  talk Apprentice Kryten##2788
  accept Worth Its Weight in Gold##691 |goto Arathi Highlands 46.2,47.75
step
  note Find 10 Witherbark Tusks, 4 Witherbark Medicine Pouches and a Shadow Hunter Knife for Apprentice Kryten at Refuge Pointe.
  collect 10 Witherbark Tusk##4503 |q 691/1 |goto Arathi Highlands 35.1,46.16 |tip {dropsfrom}Witherbark Troll, Witherbark Shadowcaster, Witherbark Axe Thrower
  collect 4 Witherbark Medicine Pouch##4522 |q 691/2 |goto Arathi Highlands 69.34,68.69 |tip {dropsfrom}Witherbark Witch Doctor
  collect Shadow Hunter Knife##5040 |q 691 |goto Arathi Highlands 67.53,80.51 |tip {dropsfrom}Witherbark Shadow Hunter
step
  only Rogue completed(96783)
  click Syndicate Footlocker##656157
  accept Master of Disguise##96784 |goto Arathi Highlands 32.29,26.57
step
  talk Apprentice Kryten##2788
  turnin Worth Its Weight in Gold##691 |goto Arathi Highlands 46.2,47.75
step
  only completed(659)
  talk Quae##2712
  accept Hints of a New Plague?##658 |goto Arathi Highlands 60.18,53.85
step
  only completed(659)
  note Find the Forsaken Courier and bring back her Sealed Folder to Quae near the Go'Shek Farm.
  collect Sealed Folder##4482 |q 658 |goto Arathi Highlands 52.47,61.53 |tip {dropsfrom}Forsaken Courier
step
  only completed(659)
  talk Quae##2712
  turnin Hints of a New Plague?##658 |goto Arathi Highlands 60.18,53.85
step
  only completed(659)
  talk Quae##2712
  accept Hints of a New Plague?##657 |goto Arathi Highlands 60.18,53.85
step
  only completed(659)
  note Speak to Kinelory.
  talk Kinelory##2713
  turnin Hints of a New Plague?##657 |goto Arathi Highlands 60.24,53.92
step
  only completed(659)
  talk Kinelory##2713
  accept Hints of a New Plague?##660 |goto Arathi Highlands 60.24,53.92
step
  only completed(659)
  note Protect Kinelory until she returns to Quae.
  goto Arathi Highlands 60.1,53.83 |tip Protect Kinelory
step
  only completed(659)
  talk Quae##2712
  turnin Hints of a New Plague?##660 |goto Arathi Highlands 60.18,53.85
step
  only completed(659)
  talk Quae##2712
  accept Hints of a New Plague?##661 |goto Arathi Highlands 60.18,53.85
step
  only level>=37
  talk Captain Nials##2700
  accept Stromgarde Badges##682 |goto Arathi Highlands 45.83,47.56
step
  only Rogue completed(96783)
  note While disguised as a member of the Syndicate, find someone inside Stromgarde Keep who knows about the secret deal.
  talk Anastasia Miller##266847
  turnin Master of Disguise##96784 |goto Arathi Highlands 26.81,64.44
step
  only Rogue completed(96783)
  talk Anastasia Miller##266847
  accept Ain't No Telling##96785 |goto Arathi Highlands 26.81,64.44
step
  only haveq(682)
  note Bring 7 Stromgarde Badges to Captain Nials at Refuge Pointe.
  kill Syndicate Prowler##2588 |q 682 |goto Arathi Highlands 28.33,63.36 |elite
  collect 7 Stromgarde Badge##4506 |q 682 |goto Arathi Highlands 28.33,63.36
step
  only Rogue completed(96783)
  note Find something within Stromgarde Keep to convince Anastasia to give up details of the secret deal.
  collect Stolen Funds##275709 |q 96785 |goto Arathi Highlands 29.47,65.03 |tip {dropsfrom}Anastasia's Stash
step
  only Rogue completed(96783)
  talk Anastasia Miller##266847
  turnin Ain't No Telling##96785 |goto Arathi Highlands 26.81,64.44
step
  only Rogue completed(96783)
  talk Anastasia Miller##266847
  accept The Syndicate Sting##96786 |goto Arathi Highlands 26.81,64.44
step
  only haveq(682)
  talk Captain Nials##2700
  turnin Stromgarde Badges##682 |goto Arathi Highlands 45.83,47.56
step
  click Shards of Myzrael##138492
  accept The Princess Trapped##642 |goto Arathi Highlands 62.5,33.73
step
  note Gather 12 Motes of Myzrael, then bring them to the Iridescent Shards in Drywhisker Gorge.
  collect 12 Mote of Myzrael##4435 |q 642 |goto Arathi Highlands 78.55,37.77 |tip {dropsfrom}Drywhisker Kobold, Drywhisker Surveyor, Drywhisker Digger
step
  turnin The Princess Trapped##642 |goto Arathi Highlands 84.31,30.95
step
  click Iridescent Shards##2701
  accept Stones of Binding##651 |goto Arathi Highlands 84.31,30.95
step
  note Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
  collect Cresting Key##4484 |q 651/2 |goto Arathi Highlands 66.7,29.72 |tip {dropsfrom}Stone of East Binding
  collect Thundering Key##4485 |q 651/3 |goto Arathi Highlands 52.04,50.73 |tip {dropsfrom}Stone of Outer Binding
  collect Burning Key##4483 |q 651 |goto Arathi Highlands 25.46,30.11 |tip {dropsfrom}Stone of West Binding
step
  only Rogue completed(96783)
  note Break up the secret deal, and take the object being traded to the Syndicate. Then, return to Myrokos Silentform at Ravenholdt Manor.
  collect Intercepted Shipment##275882 |q 96786 |goto Arathi Highlands 15.52,42.87 |tip {dropsfrom}Secret Shipment
step
  turnin Stones of Binding##651 |goto Arathi Highlands 36.23,57.38
step
  only level>=32
  talk Caretaker Alaric##2782
  accept Dutiful Steps##92872 |goto Arathi Highlands 28.98,59.68
step
  only haveq(92872)
  note Throw the Pouch of Tomb Dust into The Great Sea and return to Caretaker Alaric in the Stromgarde Keep crypt.
  talk Caretaker Alaric##2782
  turnin Dutiful Steps##92872 |goto Arathi Highlands 28.98,59.68
step
  only level>=35
  talk Lolo the Lookout##2766
  accept Land Ho!##663 |goto Arathi Highlands 31.78,82.68
step
  only haveq(663)
  note Talk to Captain O'Breen in Faldir's Cove.
  talk Shakes O'Breen##2610
  turnin Land Ho!##663 |goto Arathi Highlands 32.28,81.38
step
  only level>=39
  click Wanted Board##2713
  accept WANTED: Marez Cowl##684 |goto Arathi Highlands 46.04,47.76
step
  talk Skuerto##2789
  accept Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
  note Find Trelane's Wand of Invocation and return it to Skuerto at Refuge Pointe.
  collect Trelane's Wand of Invocation##4525 |q 693 |goto Arathi Highlands 54.75,81.87 |tip {dropsfrom}Kor'gresh Coldrage
step
  talk Skuerto##2789
  turnin Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
  only level>=39
  talk Skuerto##2789
  accept Trelane's Defenses##694 |goto Arathi Highlands 46.65,47.01
step
  only level>=39
  talk Groundskeeper Lomar##219
  accept Ground to Keep##92867 |goto Arathi Highlands 27,57.2
step
  only haveq(684)
  note Bring Marez's head to Captain Nials at Refuge Pointe.
  kill Marez Cowl##2783 |q 684 |goto Arathi Highlands 29.47,64.14 |elite
  collect Marez's Head##4515 |q 684 |goto Arathi Highlands 29.47,64.14
step
  only haveq(694)
  note Find an Azure Agate and bring it to Apprentice Kryten at Refuge Pointe.
  kill Boulderfist Shaman##2570 |q 694 |goto Arathi Highlands 19.97,67.51 |elite
  collect Azure Agate##4527 |q 694 |goto Arathi Highlands 19.97,67.51
step
  only haveq(92867)
  note Defeat the Boulderfist, Syndicate, and Witherbark intruders in Stromgarde Keep and return to Groundskeeper Lomar.
  kill Boulderfist Mauler##2569 |q 92867/1 |goto Arathi Highlands 21.59,66.7 |elite
  kill Witherbark Berserker##2558 |q 92867/4 |goto Arathi Highlands 24.04,65.18 |elite
  kill Syndicate Conjuror##2590 |q 92867/2 |goto Arathi Highlands 27.44,65.56 |elite
  kill Syndicate Prowler##2588 |q 92867 |goto Arathi Highlands 28.33,63.36 |elite
step
  only haveq(92867)
  talk Groundskeeper Lomar##219
  turnin Ground to Keep##92867 |goto Arathi Highlands 27,57.2
step
  only haveq(684)
  talk Captain Nials##2700
  turnin WANTED: Marez Cowl##684 |goto Arathi Highlands 45.83,47.56
step
  only haveq(694)
  talk Apprentice Kryten##2788
  turnin Trelane's Defenses##694 |goto Arathi Highlands 46.2,47.75
step
  only completed(694)
  talk Apprentice Kryten##2788
  accept An Apprentice's Enchantment##695 |goto Arathi Highlands 46.2,47.75
step
  only haveq(695)
  note Speak to Skuerto.
  talk Skuerto##2789
  turnin An Apprentice's Enchantment##695 |goto Arathi Highlands 46.65,47.01
step
  only level>=36
  talk Captain Nials##2700
  accept The Riverglades Report##95315 |goto Arathi Highlands 45.83,47.56
step
  only completed(695)
  talk Skuerto##2789
  accept Attack on the Tower##696 |goto Arathi Highlands 46.65,47.01
step
  only level>=40
  click Wanted Board##2713
  accept WANTED: Otto and Falconcrest##685 |goto Arathi Highlands 46.04,47.76
step
  only haveq(685)
  note Bring Otto's Head and Falconcrest's Head to Captain Nials at Refuge Pointe.
  kill Otto##2599 |q 685/1 |goto Arathi Highlands 26.22,65.55 |elite
  collect Otto's Head##4516 |q 685/1 |goto Arathi Highlands 26.22,65.55
  kill Lord Falconcrest##2597 |q 685 |goto Arathi Highlands 26.03,65.68 |elite
  collect Falconcrest's Head##4517 |q 685 |goto Arathi Highlands 26.03,65.68
step
  only haveq(696)
  note Find Trelane's Phylactery, Trelane's Orb, and Trelane's Ember Agate, and return them to Skuerto at Refuge Pointe.
  collect Trelane's Phylactery##4530 |q 696/1 |goto Arathi Highlands 18.18,68.14 |tip {dropsfrom}Trelane's Footlocker
  collect Trelane's Ember Agate##4532 |q 696/3 |goto Arathi Highlands 18.03,67.87 |tip {dropsfrom}Trelane's Lockbox
  collect Trelane's Orb##4531 |q 696 |goto Arathi Highlands 18.17,69.15 |tip {dropsfrom}Trelane's Chest
step
  only completed(663) level>=35
  talk First Mate Nilzlix##2767
  accept Deep Sea Salvage##662 |goto Arathi Highlands 32.8,81.48
step
  only completed(663) level>=35
  talk Captain Steelgut##2769
  accept Drowned Sorrows##664 |goto Arathi Highlands 34,80.8
step
  only completed(663) level>=35
  talk Professor Phizzlethorpe##2768
  accept Sunken Treasure##665 |goto Arathi Highlands 33.87,80.55
step
  only haveq(665)
  note Escort Professor Phizzlethorpe to the cave and back.
  goto Arathi Highlands 33.87,80.6 |tip Defend Professor Phizzlethorpe
step
  only haveq(665)
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##665 |goto Arathi Highlands 33.86,80.45
step
  only completed(665) level>=35
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  only haveq(662)
  note First Mate Nilzlix wants you to retrieve the Charts and Logs from the Maiden's Folly and the Spirit of Silverpine.
  collect Maiden's Folly Log##4489 |q 662/2 |goto Arathi Highlands 23.39,85.09
  collect Maiden's Folly Charts##4487 |q 662/1 |goto Arathi Highlands 23.05,84.51
  collect Spirit of Silverpine Log##4490 |q 662/4 |goto Arathi Highlands 20.65,85.1
  collect Spirit of Silverpine Charts##4488 |q 662 |goto Arathi Highlands 20.46,85.61
step
  only haveq(664)
  note Captain Steelgut in Faldir's Cove wants you to kill 10 Daggerspine Raiders and 3 Daggerspine Sorceresses.
  kill Daggerspine Sorceress##2596 |q 664/2 |goto Arathi Highlands 22.45,84.35
  kill Daggerspine Raider##2595 |q 664 |goto Arathi Highlands 22.57,86.91
step
  only haveq(666)
  note Doctor Draxlegauge in Faldir's Cove wants you to collect 10 Elven Gems and return the Goggles of Gem Hunting once you are done.
  collect 10 Elven Gem##4492 |q 666 |goto Arathi Highlands 23,89 |tip {dropsfrom}Calcified Elven Gem
step
  only haveq(662)
  talk First Mate Nilzlix##2767
  turnin Deep Sea Salvage##662 |goto Arathi Highlands 32.8,81.48
step
  only haveq(664)
  talk Captain Steelgut##2769
  turnin Drowned Sorrows##664 |goto Arathi Highlands 34,80.8
step
  only haveq(666)
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  only completed(666) level>=35
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##668 |goto Arathi Highlands 33.86,80.45
step
  only haveq(668)
  note Take the Elven Gems to Captain O'Breen.
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##668 |goto Arathi Highlands 32.28,81.38
step
  only completed(668) level>=35
  talk Shakes O'Breen##2610
  accept Sunken Treasure##669 |goto Arathi Highlands 32.28,81.38
step
  only haveq(685)
  talk Captain Nials##2700
  turnin WANTED: Otto and Falconcrest##685 |goto Arathi Highlands 45.83,47.56
step
  only haveq(696)
  talk Skuerto##2789
  turnin Attack on the Tower##696 |goto Arathi Highlands 46.65,47.01
step
  only completed(696)
  talk Skuerto##2789
  accept Malin's Request##697 |goto Arathi Highlands 46.65,47.01
step
  only level>=42
  click Stone of Inner Binding##2702
  accept Breaking the Keystone##652 |goto Arathi Highlands 36.23,57.38
step
  only haveq(652)
  note Find and kill Fozruk. Bring the Rod of Order to the Keystone in the Arathi Highlands.
  kill Fozruk##2611 |q 652 |goto Arathi Highlands 63.9,30 |elite
  collect Rod of Order##4469 |q 652 |goto Arathi Highlands 63.9,30
step
  only haveq(652)
  turnin Breaking the Keystone##652 |goto Arathi Highlands 36.08,58.09
step
  only completed(652)
  click Keystone##2688
  accept Myzrael's Allies##653 |goto Arathi Highlands 36.08,58.09
step
  note Deliver Sully Balloo's Letter to Sara Balloo.
  talk Sara Balloo##2695
  turnin Sully Balloo's Letter##637 |goto Ironforge 63.5,67.3 |tip {turninat}Ironforge
step
  talk Sara Balloo##2695
  accept Sara Balloo's Plea##683 |goto Ironforge 63.5,67.3
step
  note Take Sara Balloo's note to King Magni Bronzebeard of Ironforge.
  talk King Magni Bronzebeard##2784
  turnin Sara Balloo's Plea##683 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  talk King Magni Bronzebeard##2784
  accept A King's Tribute##686 |goto Ironforge 39.09,56.2
step
  note King Magni Bronzebeard wants you to speak with Grand Mason Marblesten.
  talk Grand Mason Marblesten##2790
  turnin A King's Tribute##686 |goto Ironforge 39.04,88.05 |tip {turninat}Ironforge
step
  talk Grand Mason Marblesten##2790
  accept A King's Tribute##689 |goto Ironforge 39.04,88.05
step
  only haveq(653)
  note Speak with Gerrig Bonegrip in the Forlorn Cavern of Ironforge.
  talk Gerrig Bonegrip##2786
  turnin Myzrael's Allies##653 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  only Rogue completed(96783)
  talk Myrokos Silentform##13085
  turnin The Syndicate Sting##96786 |goto Alterac Mountains 84.93,80.38 |tip {turninat}Alterac Mountains
step
  only completed(659)
  note Find Phin Odelic in Southshore.
  talk Phin Odelic##2711
  turnin Hints of a New Plague?##661 |goto Hillsbrad Foothills 50.35,59.05 |tip {turninat}Hillsbrad Foothills
step
  note Grand Mason Marblesten of Ironforge wants 5 pieces of Alterac Granite.
  collect Alterac Granite##4521 |q 689 |goto Hillsbrad Foothills 43.54,30.19
step
  talk Grand Mason Marblesten##2790
  turnin A King's Tribute##689 |goto Ironforge 39.04,88.05 |tip {turninat}Ironforge
step
  only haveq(669)
  note Take the Sample Elven Gem to Fleet Master Seahorn in Booty Bay.
  talk Fleet Master Seahorn##2487
  turnin Sunken Treasure##669 |goto Stranglethorn Vale 27.17,77.01 |tip {turninat}Stranglethorn Vale
step
  only completed(669) level>=35
  talk Fleet Master Seahorn##2487
  accept Sunken Treasure##670 |goto Stranglethorn Vale 27.17,77.01
step
  only haveq(670)
  note Deliver Seahorn's Letter to Shakes O'Breen in Arathi Highlands.
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##670 |goto Arathi Highlands 32.28,81.38
step
  only completed(670) level>=35
  talk Shakes O'Breen##2610
  accept Death From Below##667 |goto Arathi Highlands 32.28,81.38
step
  only haveq(667)
  note Protect Shakes O'Breen during the attack.
  goto Arathi Highlands 31.93,81.82 |tip Defend Shakes O'Breen
step
  only haveq(667)
  talk Shakes O'Breen##2610
  turnin Death From Below##667 |goto Arathi Highlands 32.28,81.38
step
  only haveq(697)
  note Take the Sealed Letter to Archmage Malin in the Mage Quarter of Stormwind.
  talk Archmage Malin##2708
  turnin Malin's Request##697 |goto Stormwind City 50.5,87.47 |tip {turninat}Stormwind City
step
  note {travel}Badlands
  goto Badlands 53.42,43.39
]])
