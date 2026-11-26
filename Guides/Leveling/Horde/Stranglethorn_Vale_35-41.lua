-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stranglethorn Vale (35-41)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Desolace (33-40)",
	rev = "bda8a7dd",
}, [[
step
  ding 34
step
  talk Barnil Stonepot##716
  accept Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.53
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
  talk Hemet Nesingwary##715
  accept Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
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
  talk Ajeck Rouack##717
  accept Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  click Thoroughly Scavenged Supplies##661516
  accept Anything of Value##97328 |goto Stranglethorn Vale 31.47,12.88
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Elder Stranglethorn Tigers.
  kill Elder Stranglethorn Tiger##1085 |q 187 |goto Stranglethorn Vale 33.53,18.31
step
  talk Zimmix Sputterspark##268992
  accept Where's the Key?##97329 |goto Stranglethorn Vale 23.46,12.79
step
  note Hemet Nesingwary wants you to kill 10 Stranglethorn Raptors.
  kill Stranglethorn Raptor##685 |q 194 |goto Stranglethorn Vale 25.72,15.81
step
  note Recover 8 Stolen Shipments from the Ruins of Zul'Kunda in Stranglethorn Vale and return your haul to someone in Booty Bay.
  collect 8 Stolen Shipment##277953 |q 97328 |goto Stranglethorn Vale 24.24,10.17
step
  note Bring the Primitive Key obtained from the trolls at the Ruins of Zul'kunda in Stranglethorn Vale to Zimmix Sputterspark.
  collect Primitive Key##277957 |q 97329 |goto Stranglethorn Vale 24.8,12.32 |tip {dropsfrom}Bloodscalp Scout, Bloodscalp Hunter, Bloodscalp Beastmaster
step
  talk Zimmix Sputterspark##268992
  turnin Where's the Key?##97329 |goto Stranglethorn Vale 23.46,12.79
step
  talk Zimmix Sputterspark##268992
  accept Zimmix's Great Escape##97331 |goto Stranglethorn Vale 23.46,12.79
step
  note Escort Zimmix Sputterspark away from the Ruins of Zul'Kunda then tell Wharfmaster Lozgil in Booty Bay of your successful rescue.
  goto Stranglethorn Vale 26.85,11.42 |tip Escort Zimmix Sputterspark to safety
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Young Panthers.
  kill Young Panther##683 |q 190 |goto Stranglethorn Vale 41.35,12.82
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary##715
  accept Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Panthers.
  kill Panther##736 |q 191 |goto Stranglethorn Vale 30.4,12.4
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill Sin'Dall and return with her paw.
  collect Paw of Sin'Dall##3879 |q 188 |goto Stranglethorn Vale 32.21,17.39 |tip {dropsfrom}Sin'Dall
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  talk Wharfmaster Lozgil##4631
  turnin Anything of Value##97328 |goto Stranglethorn Vale 26.35,73.56
step
  talk Wharfmaster Lozgil##4631
  turnin Zimmix's Great Escape##97331 |goto Stranglethorn Vale 26.35,73.56
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
  only completed(1180)
  note Speak with Baron Revilgaz in Booty Bay.
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
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##570 |goto Stranglethorn Vale 32.12,29.24
step
  only level>=36
  talk Commander Aggro'gosh##2464
  accept Report to Rog'mar##95141 |goto Stranglethorn Vale 32.17,28.9
step
  talk Gemmil##269166
  accept Weed Whacked##97453 |goto Stranglethorn Vale 32.77,28.45
step
  note Hemet Nesingwary wants you to kill 10 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 195 |goto Stranglethorn Vale 33.4,24.55
step
  note Commander Aggro'gosh of the Grom'gol base camp wants you to kill 15 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 568 |goto Stranglethorn Vale 33.4,24.55
step
  note Slay 6 Carnivorous Weeds south of Grom'gol and then inform Gemmil's mother.
  kill Carnivorous Weed##269175 |q 97453 |goto Stranglethorn Vale 33.99,28.45
step
  talk Commander Aggro'gosh##2464
  turnin The Defense of Grom'gol##568 |goto Stranglethorn Vale 32.17,28.9
step
  talk Nerrist##1148
  turnin Weed Whacked##97453 |goto Stranglethorn Vale 32.7,29.23
step
  talk Commander Aggro'gosh##2464
  accept The Defense of Grom'gol##569 |goto Stranglethorn Vale 32.17,28.9
step
  note Bring a Tablet Shard to Kin'weelay at the Grom'gol Base Camp.
  collect Tablet Shard##4094 |q 629 |goto Stranglethorn Vale 24.82,23.03 |tip {dropsfrom}Gri'lek the Wanderer
step
  note Acquire 15 Bloodscalp Ears and return them to Kebok in Booty Bay.
  collect 15 Bloodscalp Ear##1519 |q 189 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Bring 9 Bloodscalp Tusks to Nimboya at the Grom'gol Base Camp.
  collect 9 Bloodscalp Tusk##3901 |q 581 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  note Bring 25 Bloody Bone Necklaces to Kin'weelay at the Grom'gol Base Camp.
  collect 25 Bloody Bone Necklace##3915 |q 596 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
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
  talk Wendel Mathers##218230
  accept The Cook in the Cage##97047 |goto Stranglethorn Vale 44.27,7.9
step
  note Find a key to Wendel's cage, and a disguise for him to sneak out, within the Kurzen compound.
  collect Compound Cage Key##216616 |q 97047/1 |goto Stranglethorn Vale 47.88,6.86 |tip {dropsfrom}Kurzen Elite, Kurzen Subchief, Colonel Kurzen
  collect Kurzen Fighter's Uniform##216617 |q 97047 |goto Stranglethorn Vale 49.62,7.75 |tip {dropsfrom}Kurzen Supply Crate
step
  talk Wendel Mathers##218230
  turnin The Cook in the Cage##97047 |goto Stranglethorn Vale 44.27,7.9
step
  talk Wendel Mathers##218230
  accept Returning to Port##97048 |goto Stranglethorn Vale 44.27,7.9
step
  note Retrieve 8 Tumbled Crystals and return them to Kebok in Booty Bay.
  collect 8 Tumbled Crystal##4106 |q 213 |goto Stranglethorn Vale 44.23,20.09 |tip {dropsfrom}Venture Co. Geologist
step
  only completed(1180)
  note Bring the Fuel Regulator Blueprints to Baron Revilgaz in Booty Bay.
  collect Fuel Regulator Blueprints##5852 |q 1182 |goto Stranglethorn Vale 43.33,20.33 |tip {dropsfrom}Cozzle's Footlocker
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Shadowmaw Panthers.
  kill Shadowmaw Panther##684 |q 192 |goto Stranglethorn Vale 41.3,34.76
step
  note Commander Aggro'gosh of the Grom'gol base camp wants you to kill 10 Ogre Brutes and 5 Ogre Witch Doctors.
  kill Mosh'Ogg Brute##1142 |q 569/1 |goto Stranglethorn Vale 37.49,30.89
  kill Mosh'Ogg Witch Doctor##1144 |q 569 |goto Stranglethorn Vale 37.07,31.06
step
  note Far Seer Mok'thardin at the Grom'gol base camp wants 8 Shadowmaw Claws and a Pristine Tigress Fang.
  collect 8 Shadowmaw Claw##3838 |q 570 |goto Stranglethorn Vale 41.3,34.76 |tip {dropsfrom}Shadowmaw Panther, Elder Shadowmaw Panther
step
  talk Commander Aggro'gosh##2464
  turnin The Defense of Grom'gol##569 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##570 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  turnin Hunt for Yenniku##581 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  turnin Bloody Bone Necklaces##596 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  turnin The Vile Reef##629 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nimboya##2497
  accept Headhunting##582 |goto Stranglethorn Vale 32.16,27.72
step
  note Bring 20 Shrunken Heads to Nimboya at the Grom'gol Base Camp.
  collect 20 Shrunken Head##1532 |q 582 |goto Stranglethorn Vale 22.94,10.16 |tip {dropsfrom}Bloodscalp Headhunter
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  talk Kebok##737
  turnin Bloodscalp Ears##189 |goto Stranglethorn Vale 27,77.13
step
  talk Krazek##773
  turnin Investigate the Camp##201 |goto Stranglethorn Vale 26.95,77.21
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
  note Speak to Captain Aransas in Booty Bay.
  talk Captain Aransas##218229
  turnin Returning to Port##97048 |goto Stranglethorn Vale 27.69,76.66
step
  talk Drizzlik##2495
  accept Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  only completed(669)
  talk Fleet Master Seahorn##2487
  accept Sunken Treasure##670 |goto Stranglethorn Vale 27.17,77.01
step
  only level>=40
  talk Krazek##773
  accept Shady Saltseers##95789 |goto Stranglethorn Vale 26.95,77.21
step
  only haveq(95789)
  note Collect 10 Voodoo Infused Artifacts from Saltseer pirates in the Drowned City.
  collect 10 Voodoo-Infused Artifact##270333 |q 95789 |goto Stranglethorn Vale 26.95,77.21 |elite |tip {dropsfrom}Saltseer Manhunter, Saltseer Murderer, Saltseer Cultist
step
  only level>=40
  talk Krazek##773
  accept The Saltseer Captain##95791 |goto Stranglethorn Vale 26.95,77.21
step
  only haveq(95791)
  note Slay 3 Saltseer Coroners and Captain Dreadrise in the Drowned City.
  kill Captain Dreadrise##260042 |q 95791 |elite
step
  only haveq(95789)
  talk Krazek##773
  turnin Shady Saltseers##95789 |goto Stranglethorn Vale 26.95,77.21
step
  only haveq(95791)
  talk Krazek##773
  turnin The Saltseer Captain##95791 |goto Stranglethorn Vale 26.95,77.21
step
  talk Nimboya##2497
  turnin Headhunting##582 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  accept The Gurubashi Legends of Old##95748 |goto Stranglethorn Vale 32.27,27.71
step
  note Use the hide and charcoal to create a rubbing of the Third Troll Legend tablet.
  collect The Third Troll Legend##2007 |q 95748 |goto Stranglethorn Vale 22.95,12.02 |tip {dropsfrom}Fall of Gurubashi
step
  only level>=40
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
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
  note Bring 5 Snapjaw Crocolisks Skins to Drizzlik in Booty Bay.
  collect 5 Snapjaw Crocolisk Skin##4104 |q 577 |goto Stranglethorn Vale 40.74,22.18 |tip {dropsfrom}Snapjaw Crocolisk
step
  only haveq(193)
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to bring him the Fang of Bhag'thera.
  kill Bhag'thera##728 |q 193 |goto Stranglethorn Vale 49.4,24 |elite
  collect Fang of Bhag'thera##3876 |q 193 |goto Stranglethorn Vale 49.4,24
step
  talk Kin'weelay##2519
  turnin The Gurubashi Legends of Old##95748 |goto Stranglethorn Vale 32.27,27.71
step
  talk Commander Aggro'gosh##2464
  accept Enemies in the Water##95773 |goto Stranglethorn Vale 32.17,28.9
step
  talk Kin'weelay##2519
  accept Locating the Lost City##95770 |goto Stranglethorn Vale 32.27,27.71
step
  note Explore the Vile Reef and find the cavern entrance.
  goto Stranglethorn Vale 22.41,27.18 |tip Find the Drowned City Entrance
step
  note Gather 10 Brinescale Tridents from Brinescale Skirmishers.
  collect 10 Brinescale Trident##270305 |q 95773 |goto Stranglethorn Vale 23.73,26.94 |tip {dropsfrom}Brinescale Skirmisher
step
  talk Kin'weelay##2519
  turnin Locating the Lost City##95770 |goto Stranglethorn Vale 32.27,27.71
step
  talk Commander Aggro'gosh##2464
  turnin Enemies in the Water##95773 |goto Stranglethorn Vale 32.17,28.9
step
  only level>=38
  talk Commander Aggro'gosh##2464
  accept The Only Good Brinescale...##95776 |goto Stranglethorn Vale 32.17,28.9
step
  only haveq(95776)
  note Slay Var'Taka in the Drowned City.
  kill Var'Taka##258924 |q 95776 |elite
step
  talk Kin'weelay##2519
  accept The Drowned City##95775 |goto Stranglethorn Vale 32.27,27.71
step
  note Use the hide and charcoal to create rubbings of the tablets found in the Drowned City.
  collect The First Tablet of I'lalai##270308 |q 95775/1
  collect The Second Tablet of I'lalai##270309 |q 95775/2
  collect The Third Tablet of I'lalai##270310 |q 95775/3
  collect The Fourth Tablet of I'lalai##270311 |q 95775
step
  talk Kin'weelay##2519
  turnin The Drowned City##95775 |goto Stranglethorn Vale 32.27,27.71
step
  only haveq(95776)
  talk Commander Aggro'gosh##2464
  turnin The Only Good Brinescale...##95776 |goto Stranglethorn Vale 32.17,28.9
step
  only haveq(193)
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
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
  talk Hemet Nesingwary##715
  accept Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##572 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  accept Bloodscalp Clan Heads##584 |goto Stranglethorn Vale 32.16,27.72
step
  note Hemet Nesingwary wants you to kill 10 Jungle Stalkers.
  kill Jungle Stalker##687 |q 196 |goto Stranglethorn Vale 28.91,44.16
step
  note Bring 10 Jungle Stalker Feathers to Far Seer Mok'thardin at the Grom'gol base camp.
  collect 10 Jungle Stalker Feather##3863 |q 572 |goto Stranglethorn Vale 28.91,44.16 |tip {dropsfrom}Jungle Stalker
step
  note Bring Gan'zulah's Head and Nezzliok's Head to the bubbling cauldron at the Grom'gol Base Camp.
  collect Nezzliok's Head##3905 |q 584/2 |goto Stranglethorn Vale 23.52,9.53 |tip {dropsfrom}Nezzliok the Dire
  collect Gan'zulah's Head##3904 |q 584 |goto Stranglethorn Vale 23.44,8.12 |tip {dropsfrom}Gan'zulah
step
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##572 |goto Stranglethorn Vale 32.12,29.24
step
  turnin Bloodscalp Clan Heads##584 |goto Stranglethorn Vale 32.22,27.6
step
  click Bubbling Cauldron##2076
  accept Speaking with Nezzliok##585 |goto Stranglethorn Vale 32.22,27.6
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##571 |goto Stranglethorn Vale 32.12,29.24
step
  note Bring an Aged Gorilla Sinew to Far Seer Mok'thardin in Grom'gol.
  collect Aged Gorilla Sinew##3862 |q 571 |goto Stranglethorn Vale 33.48,65.45 |tip {dropsfrom}Elder Mistvale Gorilla
step
  talk Drizzlik##2495
  turnin Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  only level>=38
  talk Drizzlik##2495
  accept Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
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
  talk Wharfmaster Lozgil##4631
  accept Twice Misplaced Trust##97332 |goto Stranglethorn Vale 26.35,73.56
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
  note Bring a Balia'mah Trophy, a Ziata'jai Trophy and a Zul'Mamwe Trophy to the Bubbling Cauldron at the Grom'gol Base Camp.
  collect Zul'Mamwe Trophy##3908 |q 585/3 |goto Stranglethorn Vale 47.65,39.54 |tip {dropsfrom}Zul'Mamwe Trophy Skulls
  collect Ziata'jai Trophy##3907 |q 585/2 |goto Stranglethorn Vale 42.21,36.11 |tip {dropsfrom}Ziata'jai Trophy Skulls
  collect Balia'mah Trophy##3906 |q 585 |goto Stranglethorn Vale 46.13,32.33 |tip {dropsfrom}Balia'mah Trophy Skulls
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##571 |goto Stranglethorn Vale 32.12,29.24
step
  turnin Speaking with Nezzliok##585 |goto Stranglethorn Vale 32.22,27.6
step
  only haveq(628)
  note Bring an Elder Crocolisk Skin to Drizzlik in Booty Bay.
  kill Elder Saltwater Crocolisk##2635 |q 628 |goto Stranglethorn Vale 29.83,25.48 |elite
  collect Elder Crocolisk Skin##4105 |q 628 |goto Stranglethorn Vale 29.83,25.48
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
  only haveq(628)
  talk Drizzlik##2495
  turnin Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
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
  only hasitem(4614)
  use Pendant of Myzrael##4614 |tip It starts the quest.
  accept Crystal in the Mountains##635
step
  only haveq(587)
  talk Deeg##2488
  turnin Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  only haveq(635)
  note Find the crystal from your vision.
  turnin Crystal in the Mountains##635 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  note Travel to Hammerfall in the Arathi Highlands and speak with Zengu.
  talk Zengu##2703
  turnin Trollbane##638 |goto Arathi Highlands 73.8,33.96 |tip {turninat}Arathi Highlands
step
  only completed(669)
  note Deliver Seahorn's Letter to Shakes O'Breen in Arathi Highlands.
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##670 |goto Arathi Highlands 32.28,81.38 |tip {turninat}Arathi Highlands
step
  only completed(669)
  talk Shakes O'Breen##2610
  accept Death From Below##667 |goto Arathi Highlands 32.28,81.38
step
  only completed(669)
  note Protect Shakes O'Breen during the attack.
  goto Arathi Highlands 31.93,81.82 |tip Defend Shakes O'Breen
step
  only completed(669)
  talk Shakes O'Breen##2610
  turnin Death From Below##667 |goto Arathi Highlands 32.28,81.38 |tip {turninat}Arathi Highlands
step
  only completed(1115)
  note Bring 10 Specks of Dream Dust to Krazek in Booty Bay. Dream Dust is gathered from the dragon whelps of the Swamp of Sorrows.
  collect 10 Speck of Dream Dust##5803 |q 1116 |goto Swamp of Sorrows 14.31,61.27 |tip {dropsfrom}Adolescent Whelp, Dreaming Whelp, Green Wyrmkin
step
  only completed(1115)
  talk Krazek##773
  turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.95,77.21
step
  only Undead Paladin level>=40
  talk Garen Largo##260093
  accept Report to Danitha##97022 |goto Undercity 47.53,14.99
step
  only Undead Paladin haveq(97022)
  note Speak with Danitha Morr at Bandarion Keep.
  talk Danitha Morr##246378
  turnin Report to Danitha##97022 |goto Tirisfal Glades 22.09,44.66 |tip {turninat}Tirisfal Glades
step
  note {travel}Desolace
  goto Desolace 56.29,59.68
]])
