-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stranglethorn Vale (34-41)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Arathi Highlands (34-40)",
}, [[
step
  talk Barnil Stonepot##716
  accept Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.53
step
  kill Bloodscalp Warrior##587 |goto Stranglethorn Vale 34.04,16.78 |tip Loot the quest item here — it starts the quest.
  accept Crystal in the Mountains##635 |goto Stranglethorn Vale 34.04,16.78
step
  talk Hemet Nesingwary##715
  turnin Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.81
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##185 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary##715
  accept Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Young Stranglethorn Tigers.
  kill Young Stranglethorn Tiger##681 |q 185 |goto Stranglethorn Vale 35.65,12.14
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Young Panthers.
  kill Young Panther##683 |q 190 |goto Stranglethorn Vale 41.35,12.82
step
  note Hemet Nesingwary wants you to kill 10 Stranglethorn Raptors.
  kill Stranglethorn Raptor##685 |q 194 |goto Stranglethorn Vale 25.72,15.81
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##185 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##186 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary##715
  accept Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Stranglethorn Tigers.
  kill Stranglethorn Tiger##682 |q 186 |goto Stranglethorn Vale 37.4,12.8
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Panthers.
  kill Panther##736 |q 191 |goto Stranglethorn Vale 30.4,12.4
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##186 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Elder Stranglethorn Tigers.
  kill Elder Stranglethorn Tiger##1085 |q 187 |goto Stranglethorn Vale 33.53,18.31
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill Sin'Dall and return with her paw.
  collect Paw of Sin'Dall##3879 |q 188 |goto Stranglethorn Vale 32.21,17.39 |tip {dropsfrom}Sin'Dall
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  note {fp}Thysta
  goto Stranglethorn Vale 32.54,29.35 |tip {vendor}
step
  talk Nimboya##2497
  accept Hunt for Yenniku##581 |goto Stranglethorn Vale 32.16,27.72
step
  talk Commander Aggro'gosh##2464
  accept The Defense of Grom'gol##568 |goto Stranglethorn Vale 32.17,28.9
step
  talk Kin'weelay##2519
  accept Bloody Bone Necklaces##596 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  accept The Vile Reef##629 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nimboya##2497
  accept Trollbane##638 |goto Stranglethorn Vale 32.16,27.72
step
  note Hemet Nesingwary wants you to kill 10 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 195 |goto Stranglethorn Vale 33.4,24.55
step
  note Commander Aggro'gosh of the Grom'gol base camp wants you to kill 15 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 568 |goto Stranglethorn Vale 33.4,24.55
step
  note Bring a Tablet Shard to Kin'weelay at the Grom'gol Base Camp.
  collect Tablet Shard##4094 |q 629 |goto Stranglethorn Vale 24.82,23.03 |tip {dropsfrom}Gri'lek the Wanderer
step
  talk Commander Aggro'gosh##2464
  turnin The Defense of Grom'gol##568 |goto Stranglethorn Vale 32.17,28.9
step
  talk Kin'weelay##2519
  turnin The Vile Reef##629 |goto Stranglethorn Vale 32.27,27.71
step
  talk Commander Aggro'gosh##2464
  accept The Defense of Grom'gol##569 |goto Stranglethorn Vale 32.17,28.9
step
  note Commander Aggro'gosh of the Grom'gol base camp wants you to kill 10 Ogre Brutes and 5 Ogre Witch Doctors.
  kill Mosh'Ogg Brute##1142 |q 569 |goto Stranglethorn Vale 37.49,30.89
step
  talk Commander Aggro'gosh##2464
  turnin The Defense of Grom'gol##569 |goto Stranglethorn Vale 32.17,28.9
step
  talk Drizzlik##2495
  accept Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
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
  only completed(2842)
  talk Scooty##7853
  accept Gnomer-gooooone!##2843 |goto Stranglethorn Vale 27.6,77.48
step
  talk Kebok##737
  accept Hostile Takeover##213 |goto Stranglethorn Vale 27,77.13
step
  only completed(1115)
  talk Krazek##773
  accept Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.95,77.21
step
  only completed(1180)
  talk Wharfmaster Lozgil##4631
  accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.35,73.56
step
  only completed(2842)
  note Wait for Scooty to calibrate the Goblin Transponder.
  talk Scooty##7853 |q 2843 |goto Stranglethorn Vale 27.6,77.48
step
  talk Krazek##773
  turnin Investigate the Camp##201 |goto Stranglethorn Vale 26.95,77.21
step
  only completed(1180)
  talk Baron Revilgaz##2496
  turnin Goblin Sponsorship##1181 |goto Stranglethorn Vale 27.23,76.87
step
  only completed(2842)
  talk Scooty##7853
  turnin Gnomer-gooooone!##2843 |goto Stranglethorn Vale 27.6,77.48
step
  only completed(1180)
  talk Baron Revilgaz##2496
  accept Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  note Acquire 15 Bloodscalp Ears and return them to Kebok in Booty Bay.
  collect 15 Bloodscalp Ear##1519 |q 189 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Retrieve 8 Tumbled Crystals and return them to Kebok in Booty Bay.
  collect 8 Tumbled Crystal##4106 |q 213 |goto Stranglethorn Vale 44.23,20.09 |tip {dropsfrom}Venture Co. Geologist
step
  note Bring 2 Large River Crocolisk Skins to Drizzlik in Booty Bay.
  collect 2 Large River Crocolisk Skin##4053 |q 575 |goto Stranglethorn Vale 36.85,10.51 |tip {dropsfrom}River Crocolisk
step
  note Bring 9 Bloodscalp Tusks to Nimboya at the Grom'gol Base Camp.
  collect 9 Bloodscalp Tusk##3901 |q 581 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Bring 25 Bloody Bone Necklaces to Kin'weelay at the Grom'gol Base Camp.
  collect 25 Bloody Bone Necklace##3915 |q 596 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Bring 10 Singing Crystal Shards to Crank Fizzlebub.
  collect 10 Singing Crystal Shard##3918 |q 605 |goto Stranglethorn Vale 34.68,6.74 |tip {dropsfrom}Stone Maw Basilisk, Crystal Spine Basilisk, Cold Eye Basilisk
step
  only completed(1180)
  note Bring the Fuel Regulator Blueprints to Baron Revilgaz in Booty Bay.
  collect Fuel Regulator Blueprints##5852 |q 1182 |goto Stranglethorn Vale 43.33,20.33 |tip {dropsfrom}Cozzle's Footlocker
step
  talk Nimboya##2497
  turnin Hunt for Yenniku##581 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  turnin Bloody Bone Necklaces##596 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nimboya##2497
  accept Headhunting##582 |goto Stranglethorn Vale 32.16,27.72
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##570 |goto Stranglethorn Vale 32.12,29.24
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Shadowmaw Panthers.
  kill Shadowmaw Panther##684 |q 192 |goto Stranglethorn Vale 41.3,34.76
step
  note Far Seer Mok'thardin at the Grom'gol base camp wants 8 Shadowmaw Claws and a Pristine Tigress Fang.
  collect Shadowmaw Claw##3838 |q 570 |goto Stranglethorn Vale 41.3,34.76 |tip {dropsfrom}Shadowmaw Panther, Elder Shadowmaw Panther
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##570 |goto Stranglethorn Vale 32.12,29.24
step
  talk Kebok##737
  turnin Bloodscalp Ears##189 |goto Stranglethorn Vale 27,77.13
step
  talk Kebok##737
  turnin Hostile Takeover##213 |goto Stranglethorn Vale 27,77.13
step
  talk Drizzlik##2495
  turnin Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
  talk Crank Fizzlebub##2498
  turnin Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
  only completed(1180)
  talk Baron Revilgaz##2496
  turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
  talk Drizzlik##2495
  accept Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
step
  talk Barnil Stonepot##716
  accept The Green Hills of Stranglethorn##338 |goto Stranglethorn Vale 35.66,10.53
step
  note Collect the missing pages from The Green Hills of Stranglethorn manuscript. Once all four chapters are complete, return them to Barnil.
  collect Green Hills of Stranglethorn - Chapter I##2756 |q 338 |goto Stranglethorn Vale 35.66,10.53
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
  note Bring 20 Shrunken Heads to Nimboya at the Grom'gol Base Camp.
  collect 20 Shrunken Head##1532 |q 582 |goto Stranglethorn Vale 22.94,10.16 |tip {dropsfrom}Bloodscalp Headhunter
step
  talk Barnil Stonepot##716
  turnin The Green Hills of Stranglethorn##338 |goto Stranglethorn Vale 35.66,10.53
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
  talk Nimboya##2497
  turnin Headhunting##582 |goto Stranglethorn Vale 32.16,27.72
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##572 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  accept Bloodscalp Clan Heads##584 |goto Stranglethorn Vale 32.16,27.72
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to bring him the Fang of Bhag'thera.
  kill Bhag'thera##728 |goto Stranglethorn Vale 49.4,24 |elite
  collect Fang of Bhag'thera##3876 |q 193 |goto Stranglethorn Vale 49.4,24
step
  note Bring 10 Jungle Stalker Feathers to Far Seer Mok'thardin at the Grom'gol base camp.
  collect 10 Jungle Stalker Feather##3863 |q 572 |goto Stranglethorn Vale 28.91,44.16 |tip {dropsfrom}Jungle Stalker
step
  note Bring 5 Snapjaw Crocolisks Skins to Drizzlik in Booty Bay.
  collect 5 Snapjaw Crocolisk Skin##4104 |q 577 |goto Stranglethorn Vale 40.74,22.18 |tip {dropsfrom}Snapjaw Crocolisk
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##572 |goto Stranglethorn Vale 32.12,29.24
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##571 |goto Stranglethorn Vale 32.12,29.24
step
  talk Drizzlik##2495
  turnin Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  talk Drizzlik##2495
  accept Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
  talk First Mate Crazz##2490
  accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.1,76.22
step
  talk Crank Fizzlebub##2498
  accept Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
  talk "Sea Wolf" MacKinley##2501
  accept Scaring Shaky##606 |goto Stranglethorn Vale 27.78,77.07
step
  note Bring an Aged Gorilla Sinew to Far Seer Mok'thardin in Grom'gol.
  collect Aged Gorilla Sinew##3862 |q 571 |goto Stranglethorn Vale 33.48,65.45 |tip {dropsfrom}Elder Mistvale Gorilla
step
  note Bring 5 Mistvale Giblets to "Shaky" Phillipe in Booty Bay.
  collect 5 Mistvale Giblets##3919 |q 606 |goto Stranglethorn Vale 33.48,65.45 |tip {dropsfrom}Elder Mistvale Gorilla
step
  turnin The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 27.28,69.52
step
  talk "Shaky" Phillipe##2502
  turnin Scaring Shaky##606 |goto Stranglethorn Vale 26.9,73.59
step
  click Bloodsail Correspondence##2083
  accept The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 27.28,69.52
step
  talk "Shaky" Phillipe##2502
  accept Return to MacKinley##607 |goto Stranglethorn Vale 26.9,73.59
step
  talk First Mate Crazz##2490
  turnin The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 28.1,76.22
step
  talk "Sea Wolf" MacKinley##2501
  turnin Return to MacKinley##607 |goto Stranglethorn Vale 27.78,77.07
step
  talk Deeg##2488
  accept Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  talk First Mate Crazz##2490
  accept The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 28.1,76.22
step
  note Deeg in Booty Bay wants you to bring him 15 shares of Snuff.
  collect Snuff##3910 |q 587 |goto Stranglethorn Vale 32.34,71.67 |tip {dropsfrom}Bloodsail Raider, Bloodsail Mage, Bloodsail Swashbuckler
step
  talk Deeg##2488
  turnin Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 27.17,77.01
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary##715
  accept Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  note Bring Gan'zulah's Head and Nezzliok's Head to the bubbling cauldron at the Grom'gol Base Camp.
  collect Gan'zulah's Head##3904 |q 584 |goto Stranglethorn Vale 23.44,8.12 |tip {dropsfrom}Gan'zulah
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##571 |goto Stranglethorn Vale 32.12,29.24
step
  turnin Bloodscalp Clan Heads##584 |goto Stranglethorn Vale 32.22,27.6
step
  click Bubbling Cauldron##2076
  accept Speaking with Nezzliok##585 |goto Stranglethorn Vale 32.22,27.6
step
  note Hemet Nesingwary wants you to kill 10 Jungle Stalkers.
  kill Jungle Stalker##687 |q 196 |goto Stranglethorn Vale 28.91,44.16
step
  note Bring a Balia'mah Trophy, a Ziata'jai Trophy and a Zul'Mamwe Trophy to the Bubbling Cauldron at the Grom'gol Base Camp.
  collect Balia'mah Trophy##3906 |q 585 |goto Stranglethorn Vale 46.13,32.33 |tip {dropsfrom}Balia'mah Trophy Skulls
step
  note Bring 10 Singing Blue Crystals to Crank Fizzlebub in Booty Bay.
  collect 10 Singing Blue Crystal##3917 |q 600 |goto Stranglethorn Vale 41.55,43.48 |tip {dropsfrom}Venture Co. Strip Miner, Venture Co. Foreman, Venture Co. Surveyor
step
  note Bring an Elder Crocolisk Skin to Drizzlik in Booty Bay.
  kill Elder Saltwater Crocolisk##2635 |goto Stranglethorn Vale 29.83,25.48 |elite
  collect Elder Crocolisk Skin##4105 |q 628 |goto Stranglethorn Vale 29.83,25.48
step
  turnin Speaking with Nezzliok##585 |goto Stranglethorn Vale 32.22,27.6
step
  talk Crank Fizzlebub##2498
  turnin Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
  talk Drizzlik##2495
  turnin Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  turnin Crystal in the Mountains##635 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  talk Zengu##2703
  turnin Trollbane##638 |goto Arathi Highlands 73.8,33.96 |tip {turninat}Arathi Highlands
step
  only completed(1115)
  note Bring 10 Specks of Dream Dust to Krazek in Booty Bay. Dream Dust is gathered from the dragon whelps of the Swamp of Sorrows.
  collect 10 Speck of Dream Dust##5803 |q 1116 |goto Swamp of Sorrows 14.31,61.27 |tip {dropsfrom}Adolescent Whelp, Dreaming Whelp, Green Wyrmkin
step
  only completed(1115)
  talk Krazek##773
  turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.95,77.21
step
  note {travel}Undercity
  goto Undercity 63.83,49.45
]])
