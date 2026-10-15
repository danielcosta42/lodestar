-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Stranglethorn Vale (32-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Alterac Mountains (34-40)",
	rev = "79400dbf",
}, [[
step
  ding 31
step
  talk Barnil Stonepot##716
  accept Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.53
step
  talk Sergeant Yohwa##733
  accept The Second Rebellion##203 |goto Stranglethorn Vale 38.02,3.33
step
  note Speak with Hemet Nesingwary
  talk Hemet Nesingwary##715
  turnin Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.81
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##185 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Young Stranglethorn Tigers.
  kill Young Stranglethorn Tiger##681 |q 185 |goto Stranglethorn Vale 35.65,12.14
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##185 |goto Stranglethorn Vale 35.62,10.62
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##186 |goto Stranglethorn Vale 35.62,10.62
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Stranglethorn Tigers.
  kill Stranglethorn Tiger##682 |q 186 |goto Stranglethorn Vale 37.4,12.8
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##186 |goto Stranglethorn Vale 35.62,10.62
step
  talk Hemet Nesingwary##715
  accept Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  talk Sergeant Yohwa##733
  accept Bad Medicine##204 |goto Stranglethorn Vale 38.02,3.33
step
  talk Private Thorsen##738
  accept Jungle Secrets##215 |goto Stranglethorn Vale 40.34,8.44
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Young Panthers.
  kill Young Panther##683 |q 190 |goto Stranglethorn Vale 41.35,12.82
step
  note Kill 15 Kurzen Jungle Fighters.
  kill Kurzen Jungle Fighter##937 |q 203 |goto Stranglethorn Vale 44.64,9.98
step
  note Bring 7 Jungle Remedies and 1 Venom Fern Extract to Sergeant Yohwa at the Rebel Camp.
  collect Jungle Remedy##2633 |q 204/1 |goto Stranglethorn Vale 44.45,9.79 |tip {dropsfrom}Kurzen Medicine Man, Kurzen Headshrinker, Kurzen Witch Doctor
  collect 1 Venom Fern Extract##2634 |q 204 |goto Stranglethorn Vale 44.1,9.54 |tip {dropsfrom}Kurzen Supplies
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  talk Sergeant Yohwa##733
  turnin The Second Rebellion##203 |goto Stranglethorn Vale 38.02,3.33
step
  talk Sergeant Yohwa##733
  turnin Bad Medicine##204 |goto Stranglethorn Vale 38.02,3.33
step
  note Speak with Lieutenant Doren at the Rebel Camp.
  talk Lieutenant Doren##469
  turnin Jungle Secrets##215 |goto Stranglethorn Vale 38.04,3.01
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  talk Lieutenant Doren##469
  accept Bookie Herod##200 |goto Stranglethorn Vale 38.04,3.01
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Panthers.
  kill Panther##736 |q 191 |goto Stranglethorn Vale 30.4,12.4
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  note Find Bookie Herod's Records.
  turnin Bookie Herod##200 |goto Stranglethorn Vale 43.67,9.37
step
  note {fp}Gyll
  goto Stranglethorn Vale 27.53,77.79 |tip {vendor}
step
  only completed(1040)
  talk Caravaneer Ruzzgot##3945
  accept The Caravan Road##1041 |goto Stranglethorn Vale 27.37,74.08
step
  talk Drizzlik##2495
  accept Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
  talk Krazek##773
  accept Supplies to Private Thorsen##198 |goto Stranglethorn Vale 26.95,77.21
step
  talk Krazek##773
  accept Investigate the Camp##201 |goto Stranglethorn Vale 26.95,77.21
step
  talk Kebok##737
  accept Bloodscalp Ears##189 |goto Stranglethorn Vale 27,77.13
step
  talk Crank Fizzlebub##2498
  accept Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
  kill Bloodscalp Warrior##587 |goto Stranglethorn Vale 34.04,16.78 |tip Loot the quest item here — it starts the quest.
  accept Crystal in the Mountains##635 |goto Stranglethorn Vale 34.04,16.78
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Elder Stranglethorn Tigers.
  kill Elder Stranglethorn Tiger##1085 |q 187 |goto Stranglethorn Vale 33.53,18.31
step
  note Acquire 15 Bloodscalp Ears and return them to Kebok in Booty Bay.
  collect 15 Bloodscalp Ear##1519 |q 189 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Hemet Nesingwary wants you to kill 10 Stranglethorn Raptors.
  kill Stranglethorn Raptor##685 |q 194 |goto Stranglethorn Vale 25.72,15.81
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  talk Hemet Nesingwary##715
  accept Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  note Find the hunters' camp and report its location to Krazek in Booty Bay.
  goto Stranglethorn Vale 35.65,10.59 |tip Locate the hunters' camp
step
  note Bring 2 Large River Crocolisk Skins to Drizzlik in Booty Bay.
  collect 2 Large River Crocolisk Skin##4053 |q 575 |goto Stranglethorn Vale 36.85,10.51 |tip {dropsfrom}River Crocolisk
step
  note Bring 10 Singing Crystal Shards to Crank Fizzlebub.
  collect 10 Singing Crystal Shard##3918 |q 605 |goto Stranglethorn Vale 34.68,6.74 |tip {dropsfrom}Stone Maw Basilisk, Crystal Spine Basilisk, Cold Eye Basilisk
step
  note Hemet Nesingwary wants you to kill 10 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 195 |goto Stranglethorn Vale 33.4,24.55
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  talk Kebok##737
  turnin Bloodscalp Ears##189 |goto Stranglethorn Vale 27,77.13
step
  talk Krazek##773
  turnin Investigate the Camp##201 |goto Stranglethorn Vale 26.95,77.21
step
  talk Drizzlik##2495
  turnin Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
  talk Crank Fizzlebub##2498
  turnin Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
  talk Kebok##737
  accept Hostile Takeover##213 |goto Stranglethorn Vale 27,77.13
step
  talk Drizzlik##2495
  accept Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  only completed(1115)
  talk Krazek##773
  accept Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.95,77.21
step
  only level>=32
  talk Krazek##773
  accept The Haunted Isle##616 |goto Stranglethorn Vale 26.95,77.21
step
  only completed(627) level>=32
  talk Krazek##773
  accept Return to Corporal Kaleb##622 |goto Stranglethorn Vale 26.95,77.21
step
  only completed(1180)
  talk Wharfmaster Lozgil##4631
  accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.35,73.56
step
  only haveq(616)
  note Speak with Baron Revilgaz in Booty Bay.
  talk Baron Revilgaz##2496
  turnin The Haunted Isle##616 |goto Stranglethorn Vale 27.23,76.87
step
  only completed(1180)
  note Speak with Baron Revilgaz in Booty Bay.
  talk Baron Revilgaz##2496
  turnin Goblin Sponsorship##1181 |goto Stranglethorn Vale 27.23,76.87
step
  only completed(616) level>=32
  talk Baron Revilgaz##2496
  accept The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
step
  only completed(1180)
  talk Baron Revilgaz##2496
  accept Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
  note Retrieve 8 Tumbled Crystals and return them to Kebok in Booty Bay.
  collect 8 Tumbled Crystal##4106 |q 213 |goto Stranglethorn Vale 44.23,20.09 |tip {dropsfrom}Venture Co. Geologist
step
  note Bring 5 Snapjaw Crocolisks Skins to Drizzlik in Booty Bay.
  collect 5 Snapjaw Crocolisk Skin##4104 |q 577 |goto Stranglethorn Vale 40.74,22.18 |tip {dropsfrom}Snapjaw Crocolisk
step
  only completed(1180)
  note Bring the Fuel Regulator Blueprints to Baron Revilgaz in Booty Bay.
  collect Fuel Regulator Blueprints##5852 |q 1182 |goto Stranglethorn Vale 43.33,20.33 |tip {dropsfrom}Cozzle's Footlocker
step
  note Deliver the Miscellaneous Goblin Supplies to Private Thorsen.
  talk Private Thorsen##738
  turnin Supplies to Private Thorsen##198 |goto Stranglethorn Vale 40.34,8.44
step
  click Bookie Herod's Records##287
  accept The Hidden Key##328 |goto Stranglethorn Vale 43.67,9.37
step
  note Use the Small Brass Key to open Bookie Herod's Strongbox.
  turnin The Hidden Key##328 |goto Stranglethorn Vale 49.62,7.56
step
  click Bookie Herod's Strongbox##288
  accept The Spy Revealed!##329 |goto Stranglethorn Vale 49.62,7.56
step
  note Take the Muddy Note to Lieutenant Doren at the Rebel Camp.
  talk Lieutenant Doren##469
  turnin The Spy Revealed!##329 |goto Stranglethorn Vale 38.04,3.01
step
  only completed(627) haveq(622)
  note Bring Krazek's Fixed Pot to Corporal Kaleb at the Rebel Camp.
  talk Corporal Kaleb##770
  turnin Return to Corporal Kaleb##622 |goto Stranglethorn Vale 37.74,3.3
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  only level>=32
  talk Corporal Kaleb##770
  accept Krazek's Cookery##210 |goto Stranglethorn Vale 37.74,3.3
step
  talk Lieutenant Doren##469
  accept Patrol Schedules##330 |goto Stranglethorn Vale 38.04,3.01
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  talk Brother Nimetz##739
  accept Kurzen's Mystery##207 |goto Stranglethorn Vale 37.83,3.56
step
  talk Sergeant Yohwa##733
  accept Special Forces##574 |goto Stranglethorn Vale 38.02,3.33
step
  note Speak with Corporal Sethman.
  talk Corporal Sethman##1422
  turnin Patrol Schedules##330 |goto Stranglethorn Vale 37.66,3.39
step
  talk Corporal Sethman##1422
  accept Report to Doren##331 |goto Stranglethorn Vale 37.66,3.39
step
  note Speak with Lieutenant Doren.
  talk Lieutenant Doren##469
  turnin Report to Doren##331 |goto Stranglethorn Vale 38.04,3.01
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill Sin'Dall and return with her paw.
  collect Paw of Sin'Dall##3879 |q 188 |goto Stranglethorn Vale 32.21,17.39 |tip {dropsfrom}Sin'Dall
step
  note Find the 4 tablets and bring their legends back to Brother Nimetz.
  collect The First Troll Legend##2005 |q 207/1 |goto Stranglethorn Vale 29.48,19.14 |tip {dropsfrom}Moon Over the Vale
  collect The Second Troll Legend##2006 |q 207/2 |goto Stranglethorn Vale 24.82,23.03 |tip {dropsfrom}Gri'lek the Wanderer
  collect The Third Troll Legend##2007 |q 207/3 |goto Stranglethorn Vale 22.95,12.02 |tip {dropsfrom}Fall of Gurubashi
  collect The Fourth Troll Legend##2008 |q 207 |goto Stranglethorn Vale 24.7,8.93 |tip {dropsfrom}The Emperor's Tomb
step
  note Kill 10 Kurzen Commandoes and 6 Kurzen Headshrinkers.
  kill Kurzen Commando##938 |q 574/1 |goto Stranglethorn Vale 45.93,7.9
  kill Kurzen Headshrinker##941 |q 574 |goto Stranglethorn Vale 48.12,7.21
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  talk Brother Nimetz##739
  turnin Kurzen's Mystery##207 |goto Stranglethorn Vale 37.83,3.56
step
  talk Lieutenant Doren##469
  turnin Special Forces##574 |goto Stranglethorn Vale 38.04,3.01
step
  only haveq(578)
  note Find the haunted island for Baron Revilgaz in Booty Bay.
  goto Stranglethorn Vale 20.79,23.15 |tip Locate the haunted island
step
  only haveq(210)
  note Bring Krazek's Crock Pot to Krazek the goblin.
  talk Krazek##773
  turnin Krazek's Cookery##210 |goto Stranglethorn Vale 26.95,77.21
step
  talk Kebok##737
  turnin Hostile Takeover##213 |goto Stranglethorn Vale 27,77.13
step
  talk Drizzlik##2495
  turnin Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  only haveq(578)
  talk Baron Revilgaz##2496
  turnin The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
step
  only completed(1180)
  talk Baron Revilgaz##2496
  turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
  only completed(578)
  talk Baron Revilgaz##2496
  accept Water Elementals##601 |goto Stranglethorn Vale 27.23,76.87
step
  only level>=38
  talk Drizzlik##2495
  accept Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Shadowmaw Panthers.
  kill Shadowmaw Panther##684 |q 192 |goto Stranglethorn Vale 41.3,34.76
step
  only haveq(628)
  note Bring an Elder Crocolisk Skin to Drizzlik in Booty Bay.
  kill Elder Saltwater Crocolisk##2635 |q 628 |goto Stranglethorn Vale 29.83,25.48 |elite
  collect Elder Crocolisk Skin##4105 |q 628 |goto Stranglethorn Vale 29.83,25.48
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  only haveq(601)
  note Acquire 6 Water Elemental Bracers for Baron Revilgaz in Booty Bay.
  collect 6 Water Elemental Bracers##3923 |q 601 |goto Stranglethorn Vale 21.01,23.12 |tip {dropsfrom}Lesser Water Elemental
step
  only haveq(601)
  talk Baron Revilgaz##2496
  turnin Water Elementals##601 |goto Stranglethorn Vale 27.23,76.87
step
  only haveq(628)
  talk Drizzlik##2495
  turnin Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
  only completed(601)
  talk Baron Revilgaz##2496
  accept Magical Analysis##602 |goto Stranglethorn Vale 27.23,76.87
step
  only level>=40
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
step
  only level>=40
  talk Lieutenant Doren##469
  accept Colonel Kurzen##202 |goto Stranglethorn Vale 38.04,3.01
step
  talk Brother Nimetz##739
  accept Troll Witchery##205 |goto Stranglethorn Vale 37.83,3.56
step
  talk Barnil Stonepot##716
  accept The Green Hills of Stranglethorn##338 |goto Stranglethorn Vale 35.66,10.53
step
  note Collect the missing pages from The Green Hills of Stranglethorn manuscript. Once all four chapters are complete, return them to Barnil.
  collect Green Hills of Stranglethorn - Chapter I##2756 |q 338/1
  collect Green Hills of Stranglethorn - Chapter II##2757 |q 338/2
  collect Green Hills of Stranglethorn - Chapter III##2758 |q 338/3
  collect Green Hills of Stranglethorn - Chapter IV##2759 |q 338
step
  talk Barnil Stonepot##716
  accept Chapter I##339 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  accept Chapter II##340 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  accept Chapter III##341 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  accept Chapter IV##342 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin The Green Hills of Stranglethorn##338 |goto Stranglethorn Vale 35.66,10.53
step
  talk Hemet Nesingwary##715
  accept Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  only haveq(202)
  note Kill 6 Kurzen Elite, 4 Kurzen Subchiefs, and bring Kurzen's Head to Lieutenant Doren at the Rebel Camp.
  kill Kurzen Elite##939 |q 202 |goto Stranglethorn Vale 47.88,6.86
step
  note Bring pages 1, 4, 6, and 8 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter I.
  collect Green Hills of Stranglethorn - Page 1##2725 |q 339 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Bring pages 10, 11, 14 and 16 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter II.
  collect Green Hills of Stranglethorn - Page 10##2734 |q 340 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Bring pages 18, 20, 21and 24 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter III.
  collect Green Hills of Stranglethorn - Page 18##2742 |q 341 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Bring pages 25, 26, and 27 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter IV.
  collect Green Hills of Stranglethorn - Page 25##2749 |q 342 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  only haveq(193)
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to bring him the Fang of Bhag'thera.
  kill Bhag'thera##728 |q 193 |goto Stranglethorn Vale 49.4,24 |elite
  collect Fang of Bhag'thera##3876 |q 193 |goto Stranglethorn Vale 49.4,24
step
  note Bring 4 Skullsplitter Fetishes to Brother Nimetz at the Rebel Camp.
  collect 4 Skullsplitter Fetish##2466 |q 205 |goto Stranglethorn Vale 45.92,38 |tip {dropsfrom}Skullsplitter Mystic, Skullsplitter Witch Doctor
step
  note Hemet Nesingwary wants you to kill 10 Jungle Stalkers.
  kill Jungle Stalker##687 |q 196 |goto Stranglethorn Vale 28.91,44.16
step
  only level>=37
  talk First Mate Crazz##2490
  accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.1,76.22
step
  talk Crank Fizzlebub##2498
  accept Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
  talk "Sea Wolf" MacKinley##2501
  accept Scaring Shaky##606 |goto Stranglethorn Vale 27.78,77.07
step
  only haveq(595)
  note First Mate Crazz wants you to check the cove north of Booty Bay.
  turnin The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 27.28,69.52
step
  only completed(595) level>=37
  click Bloodsail Correspondence##2083
  accept The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 27.28,69.52
step
  note Bring 5 Mistvale Giblets to "Shaky" Phillipe in Booty Bay.
  collect 5 Mistvale Giblets##3919 |q 606 |goto Stranglethorn Vale 33.48,65.45 |tip {dropsfrom}Elder Mistvale Gorilla
step
  note Bring 10 Singing Blue Crystals to Crank Fizzlebub in Booty Bay.
  collect 10 Singing Blue Crystal##3917 |q 600 |goto Stranglethorn Vale 41.55,43.48 |tip {dropsfrom}Venture Co. Strip Miner, Venture Co. Surveyor, Venture Co. Tinkerer
step
  only haveq(193)
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  only haveq(202)
  talk Lieutenant Doren##469
  turnin Colonel Kurzen##202 |goto Stranglethorn Vale 38.04,3.01
step
  talk Brother Nimetz##739
  turnin Troll Witchery##205 |goto Stranglethorn Vale 37.83,3.56
step
  talk Barnil Stonepot##716
  turnin Chapter I##339 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter II##340 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter III##341 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter IV##342 |goto Stranglethorn Vale 35.66,10.53
step
  only haveq(597)
  note Report your findings to First Mate Crazz in Booty Bay.
  talk First Mate Crazz##2490
  turnin The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 28.1,76.22
step
  talk Crank Fizzlebub##2498
  turnin Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
  talk "Shaky" Phillipe##2502
  turnin Scaring Shaky##606 |goto Stranglethorn Vale 26.9,73.59
step
  only completed(597) level>=37
  talk Deeg##2488
  accept Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  only completed(597) level>=37
  talk First Mate Crazz##2490
  accept The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 28.1,76.22
step
  talk "Shaky" Phillipe##2502
  accept Return to MacKinley##607 |goto Stranglethorn Vale 26.9,73.59
step
  only haveq(599)
  note Report the planned Bloodsail attack to Fleet Master Seahorn.
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 27.17,77.01
step
  note Bring Shaky's Payment to "Sea Wolf" MacKinley.
  talk "Sea Wolf" MacKinley##2501
  turnin Return to MacKinley##607 |goto Stranglethorn Vale 27.78,77.07
step
  only haveq(587)
  note Deeg in Booty Bay wants you to bring him 15 shares of Snuff.
  collect Snuff##3910 |q 587 |goto Stranglethorn Vale 32.34,71.67 |tip {dropsfrom}Bloodsail Raider, Bloodsail Mage, "Pretty Boy" Duncan
step
  only haveq(587)
  talk Deeg##2488
  turnin Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  only completed(1040)
  note Speak with Clerk Daltry in Darkshire.
  talk Clerk Daltry##267
  turnin The Caravan Road##1041 |goto Duskwood 72.54,46.87 |tip {turninat}Duskwood
step
  only completed(1040)
  talk Clerk Daltry##267
  accept The Carevin Family##1042 |goto Duskwood 72.54,46.87
step
  only completed(1040)
  note Speak with Jonathan Carevin in Darkshire.
  talk Jonathan Carevin##661
  turnin The Carevin Family##1042 |goto Duskwood 75.32,49.02 |tip {turninat}Duskwood
step
  only completed(1040)
  talk Jonathan Carevin##661
  accept The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
step
  only completed(1040)
  note Look for signs of the Scythe of Elune then return to Jonathan Carevin in Darkshire.
  click Mound of Dirt##19030 |q 1043 |goto Duskwood 73.53,79.14
step
  only completed(1040)
  talk Jonathan Carevin##661
  turnin The Scythe of Elune##1043 |goto Duskwood 75.32,49.02 |tip {turninat}Duskwood
step
  note Find the crystal from your vision.
  turnin Crystal in the Mountains##635 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  only completed(1115)
  note Bring 10 Specks of Dream Dust to Krazek in Booty Bay. Dream Dust is gathered from the dragon whelps of the Swamp of Sorrows.
  collect 10 Speck of Dream Dust##5803 |q 1116 |goto Swamp of Sorrows 14.31,61.27 |tip {dropsfrom}Adolescent Whelp, Dreaming Whelp, Green Wyrmkin
step
  only completed(1115)
  talk Krazek##773
  turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.95,77.21
step
  only level>=35
  talk Angus Stern##1141
  accept A Meal Served Cold##212 |goto Stormwind City 51.79,93.64
step
  only haveq(212)
  note Kill a Cold Eye Basilisk, get a Chilled Basilisk Haunch, and return it to Angus Stern in the Blue Recluse.
  collect Chilled Basilisk Haunch##2476 |q 212 |goto Stranglethorn Vale 28.73,40.88 |tip {dropsfrom}Cold Eye Basilisk
step
  only haveq(212)
  talk Angus Stern##1141
  turnin A Meal Served Cold##212 |goto Stormwind City 51.79,93.64 |tip {turninat}Stormwind City
step
  only haveq(602)
  note Bring the water elemental bracers to Archmage Ansirem Runeweaver in Dalaran.
  talk Archmage Ansirem Runeweaver##2543
  turnin Magical Analysis##602 |goto Alterac Mountains 18.84,78.49 |tip {turninat}Alterac Mountains
step
  note {travel}Alterac Mountains
  goto Alterac Mountains 58.32,67.92
]])
