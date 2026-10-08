-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Eastern Plaguelands (57-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Moonglade (57-60)",
}, [[
step
  talk Pamela Redpath##10926
  accept Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  note Find Pamela's doll.
  collect Pamela's Doll##12885 |q 5149 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 31.15,77.98
step
  talk Vehena##14727
  accept A Donation of Wool##7833 |goto Orgrimmar 37.7,87.9
step
  collect Wool Cloth##2592 |q 7833 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
step
  talk Vehena##14727
  accept A Donation of Silk##7834 |goto Orgrimmar 37.7,87.9
step
  collect Silk Cloth##4306 |q 7834 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Vehena##14727
  accept A Donation of Mageweave##7835 |goto Orgrimmar 37.7,87.9
step
  collect Mageweave Cloth##4338 |q 7835 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Solid Chest
step
  talk Nathanos Blightcaller##11878
  accept To Kill With Purpose##6022 |goto Eastern Plaguelands 22.23,63.51
step
  note Travel to Corin's Crossing to the east and slaughter the Scourge that inhabit the town. Collect 7 pieces of Living Rot in under 10 minutes. Use the Mortar and Pestle to grind the Living Rot into Coagulated Rot.
  collect 7 Coagulated Rot##15448 |q 6022 |goto Eastern Plaguelands 22.23,63.51
step
  click Torn Scroll##177667
  accept Hameya's Plea##6024 |goto Eastern Plaguelands 22.9,72.96
step
  note Kill Infiltrator Hameya. Use his key on the Mound of Dirt behind the Undercroft.
  collect Hameya's Key##15767 |q 6024 |goto Eastern Plaguelands 61.96,11.11 |tip {dropsfrom}Infiltrator Hameya
step
  talk Nathanos Blightcaller##11878
  accept Un-Life's Little Annoyances##6042 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  accept The Ranger Lord's Behest##6133 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  accept Nathanos' Ruse##6146 |goto Eastern Plaguelands 22.23,63.51
step
  note Travel to Tyr's Hand, southeast of the Marris Stead. Once there, take a bite of the Rotten Apple. While under the guise of the Scarlet Crusade, deliver the Grand Crusader's Command to Crusader Lord Valdelmar.
  collect The Grand Crusader's Command##13852 |q 6146 |goto Eastern Plaguelands 22.23,63.51
step
  talk Rumstag Proudstrider##14728
  accept A Donation of Wool##7820 |goto Thunder Bluff 43.05,42.72
step
  collect Wool Cloth##2592 |q 7820 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
step
  talk Rumstag Proudstrider##14728
  accept A Donation of Silk##7821 |goto Thunder Bluff 43.05,42.72
step
  collect Silk Cloth##4306 |q 7821 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Rumstag Proudstrider##14728
  accept A Donation of Mageweave##7822 |goto Thunder Bluff 43.05,42.72
step
  collect Mageweave Cloth##4338 |q 7822 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Solid Chest
step
  talk Tirion Fordring##1855
  accept Demon Dogs##5542 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Carrion Grubbage##5544 |goto Eastern Plaguelands 5.16,35.57
step
  note Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
  collect Slab of Carrion Worm Meat##13853 |q 5544 |goto Eastern Plaguelands 43.13,59.21 |tip {dropsfrom}Carrion Grub, Carrion Devourer
step
  talk Tirion Fordring##1855
  accept Find Myranda##5861 |goto Eastern Plaguelands 5.16,35.57
step
  talk Thrall##4949
  accept For The Horde!##4974 |goto Orgrimmar 31.73,37.82
step
  note Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar.
  collect Head of Rend Blackhand##12630 |q 4974 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Warchief Rend Blackhand
step
  talk Augustus the Touched##12384
  accept Augustus' Receipt Book##6164 |goto Eastern Plaguelands 11.36,26.37
step
  note Bring Augustus' Receipt Book to Augustus the Touched in Terrordale.
  collect Augustus' Receipt Book##15884 |q 6164 |goto Eastern Plaguelands 14.04,24.22
step
  talk Thrall##4949
  accept The Champion of the Horde##6567 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  accept For All To See##7491 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  accept The Lord of Blackrock##7784 |goto Orgrimmar 31.73,37.82
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Hunter
  talk Mokvar##16012
  accept An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Beaststalker's Bindings to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8914 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Mage
  talk Mokvar##16012
  accept An Earnest Proposition##8915 |goto Orgrimmar 34.95,38.29
step
  only Mage
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Magister's Bindings to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8915 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Priest
  talk Mokvar##16012
  accept An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29
step
  only Priest
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Devout Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8916 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Rogue
  talk Mokvar##16012
  accept An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Shadowcraft Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8917 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Shaman
  talk Mokvar##16012
  accept An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bindings of Elements to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8918 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warlock
  talk Mokvar##16012
  accept An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Dreadmist Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8919 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warrior
  talk Mokvar##16012
  accept An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bracers of Valor to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8920 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Druid
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Hunter
  talk Mokvar##16012
  accept Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Mokvar in Orgrimmar.
  collect Beaststalker's Belt##16680 |q 8938 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Mage
  talk Mokvar##16012
  accept Just Compensation##8939 |goto Orgrimmar 34.95,38.29
step
  only Mage
  note Bring a Magister's Belt and a set of Magister's Gloves to Mokvar in Orgrimmar.
  collect Magister's Belt##16685 |q 8939 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Smolderthorn Mystic, Thuzadin Shadowcaster, Thuzadin Necromancer
step
  only Priest
  talk Mokvar##16012
  accept Just Compensation##8940 |goto Orgrimmar 34.95,38.29
step
  only Priest
  note Bring a Devout Belt and a set of Devout Gloves to Mokvar in Orgrimmar.
  collect Devout Belt##16696 |q 8940 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Spellbinder, Smolderthorn Shadow Priest, Firebrand Darkweaver
step
  only Rogue
  talk Mokvar##16012
  accept Just Compensation##8941 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Mokvar in Orgrimmar.
  collect Shadowcraft Belt##16713 |q 8941 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Legionnaire, Firebrand Grunt, Scarshield Quartermaster
step
  only Shaman
  talk Mokvar##16012
  accept Just Compensation##8942 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Bring a Cord of Elements and a set of Gauntlets of Elements to Mokvar in Orgrimmar.
  collect Cord of Elements##16673 |q 8942 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Warlock, Firebrand Invoker, Scarshield Quartermaster
step
  only Warlock
  talk Mokvar##16012
  accept Just Compensation##8943 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Bring a Dreadmist Belt and a set of Dreadmist Wraps to Mokvar in Orgrimmar.
  collect Dreadmist Belt##16702 |q 8943 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Thuzadin Shadowcaster, Thuzadin Necromancer, Crimson Conjuror
step
  only Warrior
  talk Mokvar##16012
  accept Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Mokvar in Orgrimmar.
  collect Belt of Valor##16736 |q 8944 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  only Druid
  talk Mokvar##16012
  accept Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Give Mokvar your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 9007 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter
  talk Mokvar##16012
  accept Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Give Mokvar your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9008 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Priest
  talk Mokvar##16012
  accept Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29
step
  only Priest
  note Give Mokvar your Devout Crown and Devout Robe.
  collect Devout Crown##16693 |q 9009 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue
  talk Mokvar##16012
  accept Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Give Mokvar your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9010 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Shaman
  talk Mokvar##16012
  accept Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Give Mokvar your Coif of Elements and Vest of Elements.
  collect Coif of Elements##16667 |q 9011 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warlock
  talk Mokvar##16012
  accept Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Give Mokvar your Dreadmist Mask and Dreadmist Robe.
  collect Dreadmist Mask##16698 |q 9012 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior
  talk Mokvar##16012
  accept Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Give Mokvar your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9013 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Mage
  talk Mokvar##16012
  accept Saving the Best for Last##9014 |goto Orgrimmar 34.95,38.29
step
  only Mage
  note Give Mokvar your Magister's Crown and Magister's Robes.
  collect Magister's Crown##16686 |q 9014 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Priest
  talk Eris Havenfire##14494
  accept A Warning##7621 |goto Eastern Plaguelands 17.21,12.79
step
  talk Rexxar##10182
  turnin The Champion of the Horde##6567 |goto Desolace 54,2 |tip {turninat}Desolace
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept Material Assistance##7667 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  note If you are interested in helping Sagorne Crestrider in Orgrimmar's Valley of Wisdom, bring him an Azerothian Diamond and a Pristine Black Diamond.
  collect Azerothian Diamond##12800 |q 7667 |goto Azshara 59.31,79.76 |tip {dropsfrom}Cliff Breaker, Anubisath Guardian, Small Thorium Vein
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  only Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8957 |goto Eastern Plaguelands 26.11,11.3
step
  only Shaman
  note Return to Mokvar in Orgimmar with a set of Boots of Elements, Kilt of Elements and Pauldrons of Elements.
  collect Boots of Elements##16670 |q 8957 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9016 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  note Return to Mokvar in Orgimmar with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 9016 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9017 |goto Eastern Plaguelands 26.11,11.3
step
  only Hunter
  note Return to Mokvar in Orgimmar with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  collect Beaststalker's Boots##16675 |q 9017 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Nerub'enkan
step
  only Mage
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9018 |goto Eastern Plaguelands 26.11,11.3
step
  only Mage
  note Return to Mokvar in Orgimmar with a set of Magister's Boots, Magister's Leggings and Magister's Mantle.
  collect Magister's Boots##16682 |q 9018 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Hearthsinger Forresten
step
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9019 |goto Eastern Plaguelands 26.11,11.3
step
  only Priest
  note Return to Mokvar in Orgimmar with a set of Devout Sandals, Devout Skirt and Devout Mantle.
  collect Devout Sandals##16691 |q 9019 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Maleki the Pallid
step
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9020 |goto Eastern Plaguelands 26.11,11.3
step
  only Rogue
  note Return to Mokvar in Orgimmar with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  collect Shadowcraft Boots##16711 |q 9020 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Rattlegore
step
  only Warlock
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9021 |goto Eastern Plaguelands 26.11,11.3
step
  only Warlock
  note Return to Mokvar in Orgimmar with a set of Dreadmist Sandals, Dreadmist Leggings and Dreadmist Mantle.
  collect Dreadmist Sandals##16704 |q 9021 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baroness Anastari
step
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9022 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior
  note Return to Mokvar in Orgimmar with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  collect Boots of Valor##16734 |q 9022 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Kirtonos the Herald
step
  note Travel to the northern borders of the Eastern Plaguelands and recover the Quel'Thalas Registry. The item is somewhere in the Quel'Lithien lodge.
  kill Pathstrider##8565 |q 6133 |goto Eastern Plaguelands 46.69,13.01
step
  talk Carlin Redpath##11063
  accept Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
  collect Davil's Libram##12954 |q 5168 |goto Western Plaguelands 42.52,18.99
step
  talk Carlin Redpath##11063
  accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
  collect Skull of Horgus##12956 |q 5181 |goto Eastern Plaguelands 44.34,41.18 |tip {dropsfrom}Horgus' Skull
step
  talk Carlin Redpath##11063
  accept Defenders of Darrowshire##5211 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  accept The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 71.66,49.94
step
  note Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
  collect Plagued Flesh Sample##13174 |q 5212 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ravaged Cadaver, Mangled Cadaver, Plague Ghoul
step
  talk Smokey LaRue##11033
  accept The Great Ezra Grimm##5214 |goto Eastern Plaguelands 70.88,48.43
step
  note Find Ezra Grimm's smoke shop in Stratholme and recover a box of Grimm's Premium Tobacco. Return to Smokey LaRue when the job is done.
  collect Grimm's Premium Tobacco##13172 |q 5214 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ezra Grimm
step
  talk Leonid Barthalomew the Revered##11036
  accept Houses of the Holy##5243 |goto Eastern Plaguelands 71.89,48.29
step
  note Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
  collect Stratholme Holy Water##13180 |q 5243 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 71.63,50.09
step
  talk Duke Nicholas Zverenhoff##11039
  accept Above and Beyond##5263 |goto Eastern Plaguelands 71.63,50.09
step
  note Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
  collect Head of Baron Rivendare##13251 |q 5263 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baron Rivendare
step
  talk Caretaker Alen##11038
  accept The Restless Souls##5281 |goto Eastern Plaguelands 69.93,53.72
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Soulbound Keepsake##5465 |goto Eastern Plaguelands 71.89,48.29
step
  talk Duke Nicholas Zverenhoff##11039
  accept Argent Dawn Commission##5503 |goto Eastern Plaguelands 71.63,50.09
step
  talk Quartermaster Miranda Breechlock##11536
  accept Mantles of the Dawn##5513 |goto Eastern Plaguelands 71.79,50.25
step
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  collect 10 Argent Dawn Valor Token##12844 |q 5513 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 71.79,50.25
step
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  collect 25 Argent Dawn Valor Token##12844 |q 5517 |goto Eastern Plaguelands 71.79,50.25
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 71.89,48.29
step
  talk Caretaker Alen##11038
  accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  note Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
  collect Zaeldarr's Head##15785 |q 6021 |goto Eastern Plaguelands 23.07,72.63 |tip {dropsfrom}Zaeldarr the Outcast
step
  talk Smokey LaRue##11033
  accept That's Asking A Lot##6026 |goto Eastern Plaguelands 70.88,48.43
step
  note Smokey LaRue wants you to get 2 Thorium Bars, 1 Golden Rod, 8 Hi-Explosive Bombs, and 8 Unstable Triggers.
  collect Thorium Bar##12359 |q 6026 |goto Eastern Plaguelands 70.88,48.43
step
  talk Rashona Straglash##14726
  accept A Donation of Wool##7826 |goto Orgrimmar 63.6,51.23
step
  collect Wool Cloth##2592 |q 7826 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
step
  talk Rashona Straglash##14726
  accept A Donation of Silk##7827 |goto Orgrimmar 63.6,51.23
step
  collect Silk Cloth##4306 |q 7827 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Rashona Straglash##14726
  accept A Donation of Mageweave##7831 |goto Orgrimmar 63.6,51.23
step
  collect Mageweave Cloth##4338 |q 7831 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Solid Chest
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 71.7,48.69
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 2 Arcane Crystals, 1 Nexus Crystal and 30 gold pieces. You must also be Revered with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9122 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 71.7,48.69
step
  talk Huntsman Leopold##16132
  accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands wants 30 Crypt Fiend Parts.
  collect Crypt Fiend Parts##22525 |q 9124 |goto Eastern Plaguelands 12.25,25.96 |tip {dropsfrom}Crypt Fiend, Crypt Walker, Crypt Horror
step
  talk Rohan the Assassin##16131
  accept Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands wants 30 Bone Fragments.
  collect Bone Fragments##22526 |q 9126 |goto Western Plaguelands 38.99,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Archmage Angela Dosantos##16116
  accept The Elemental Equation##9128 |goto Eastern Plaguelands 71.7,48.69
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 30 Core of Elements.
  collect Core of Elements##22527 |q 9128 |goto Un'Goro Crater 52.73,48.83 |tip {dropsfrom}Scorching Elemental, Living Blaze, Obsidian Elemental
step
  talk Korfax, Champion of the Light##16112
  accept Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants 30 Dark Iron Scraps.
  collect Dark Iron Scraps##22528 |q 9131 |goto Searing Gorge 40.01,49.65 |tip {dropsfrom}Dark Iron Steamsmith, Dark Iron Slaver, Dark Iron Taskmaster
step
  talk Rayne##16135
  accept Savage Flora##9136 |goto Eastern Plaguelands 71.41,49.35
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands wants 30 Savage Fronds.
  collect Savage Frond##22529 |q 9136 |goto Feralas 56.82,74.86 |tip {dropsfrom}Cursed Sycamore, Bloodpetal Lasher, Bloodpetal Flayer
step
  talk Dispatch Commander Metz##16212
  accept They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 71.28,48.04
step
  note Dispatch Commander Metz at Light's Hope Chapel in the Eastern Plaguelands wants an Argent Dawn Valor Token.
  collect Argent Dawn Valor Token##12844 |q 9141 |goto Eastern Plaguelands 71.28,48.04
step
  talk Craftsman Wilhelm##16376
  accept Icebane Gauntlets##9234 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essences of Water and 200 gold.
  collect Frozen Rune##22682 |q 9234 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icebane Bracers##9235 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essence of Water and 200 gold.
  collect Frozen Rune##22682 |q 9235 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icebane Breastplate##9236 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Thorium Bars, 2 Arcanite Bars, 4 Essence of Water and 300 gold. You will also need to be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9236 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Cloak##9237 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 2 Essences of Water, 4 Ironweb Spider Silks and 200 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9237 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Wrists##9238 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 2 Bolts of Runecloth, 2 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##22682 |q 9238 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Gloves##9239 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 4 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##22682 |q 9239 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Vest##9240 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 8 Bolts of Runecloth, 6 Essences of Water, 4 Ironweb Spider Silks and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9240 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Bracers##9241 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9241 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Gloves##9242 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9242 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Tunic##9243 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Enchanted Leathers, 5 Essences of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9243 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Bracers##9244 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 16 Heavy Scorpid Scales, 5 Essences of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9244 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 16 Heavy Scorpid Scale, 5 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9245 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Breastplate##9246 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 24 Heavy Scorpid Scale, 7 Essence of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9246 |goto Naxxramas - Dungeon -1,-1
step
  talk Emmisary Gormok##17072
  accept Bolstering Our Defenses##9665 |goto Eastern Plaguelands 70.37,47.94
step
  note Slay 20 Noxious Plaguebats and 10 Monstrous Plaguebats. Return to Nathanos Blightcaller when you are finished.
  kill Noxious Plaguebat##8601 |q 6042 |goto Eastern Plaguelands 52.44,51.14
step
  talk Crusader Lord Valdelmar##11898
  turnin Nathanos' Ruse##6146 |goto Eastern Plaguelands 75.21,71.17
step
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11 |tip {turninat}Western Plaguelands
step
  talk Crusader Lord Valdelmar##11898
  accept Return to Nathanos##6147 |goto Eastern Plaguelands 75.21,71.17
step
  talk Kruban Darkblade##14843
  accept The Darkmoon Faire##7926 |goto Orgrimmar 52.9,66.56
step
  talk Pamela Redpath##10926
  turnin Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  talk High Overlord Saurfang##14720
  turnin The Lord of Blackrock##7784 |goto Orgrimmar 50.95,75.7 |tip {turninat}Orgrimmar
step
  talk Vehena##14727
  turnin A Donation of Wool##7833 |goto Orgrimmar 37.7,87.9 |tip {turninat}Orgrimmar
step
  talk Vehena##14727
  turnin A Donation of Silk##7834 |goto Orgrimmar 37.7,87.9 |tip {turninat}Orgrimmar
step
  talk Vehena##14727
  turnin A Donation of Mageweave##7835 |goto Orgrimmar 37.7,87.9 |tip {turninat}Orgrimmar
step
  talk Myranda the Hag##11872
  turnin Find Myranda##5861 |goto Western Plaguelands 50.79,77.85 |tip {turninat}Western Plaguelands
step
  talk Gelvas Grimegate##14828
  turnin The Darkmoon Faire##7926 |goto Elwynn Forest 41.5,68.87 |tip {turninat}Elwynn Forest
step
  turnin Hidden Treasures##5942 |goto Eastern Plaguelands 30.92,77.78
step
  talk Overlord Runthak##14392
  turnin For All To See##7491 |goto Orgrimmar 51.71,75.46 |tip {turninat}Orgrimmar
step
  turnin Hameya's Plea##6024 |goto Eastern Plaguelands 23.58,73.79
step
  talk Pamela Redpath##10926
  accept Auntie Marlene##5152 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Uncle Carlin##5241 |goto Eastern Plaguelands 31.15,77.98
step
  talk Vehena##14727
  accept A Donation of Runecloth##7836 |goto Orgrimmar 37.7,87.9
step
  collect Runecloth##14047 |q 7836 |goto Orgrimmar 37.7,87.9 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Nathanos Blightcaller##11878
  turnin Return to Nathanos##6147 |goto Eastern Plaguelands 22.23,63.51
step
  talk Rumstag Proudstrider##14728
  turnin A Donation of Wool##7820 |goto Thunder Bluff 43.05,42.72 |tip {turninat}Thunder Bluff
step
  talk Rumstag Proudstrider##14728
  turnin A Donation of Silk##7821 |goto Thunder Bluff 43.05,42.72 |tip {turninat}Thunder Bluff
step
  talk Rumstag Proudstrider##14728
  turnin A Donation of Mageweave##7822 |goto Thunder Bluff 43.05,42.72 |tip {turninat}Thunder Bluff
step
  talk Nathanos Blightcaller##11878
  turnin To Kill With Purpose##6022 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  turnin Un-Life's Little Annoyances##6042 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  turnin The Ranger Lord's Behest##6133 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  accept Duskwing, Oh How I Hate Thee...##6135 |goto Eastern Plaguelands 22.23,63.51
step
  note Find Duskwing and slay him. From the corpse, recover a Patch of Duskwing's Fur and return it to Nathanos Blightcaller.
  kill Duskwing##11897 |goto Eastern Plaguelands 26.08,59.03 |elite
  collect Patch of Duskwing's Fur##15850 |q 6135 |goto Eastern Plaguelands 26.08,59.03
step
  talk Nathanos Blightcaller##11878
  accept The Corpulent One##6136 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  accept The Scarlet Oracle, Demetria##6148 |goto Eastern Plaguelands 22.23,63.51
step
  talk Rumstag Proudstrider##14728
  accept A Donation of Runecloth##7823 |goto Thunder Bluff 43.05,42.72
step
  collect Runecloth##14047 |q 7823 |goto Thunder Bluff 43.05,42.72 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  note Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
  kill Plaguehound Runt##8596 |q 5542 |goto Eastern Plaguelands 20.15,63.55
step
  note Slay 30 Plaguebats and return to Tirion Fordring.
  kill Plaguebat##8600 |q 5543 |goto Eastern Plaguelands 28.83,65.7
step
  note Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Gormok at Light's Hope Chapel.
  use <TXT>Crown Guard Capture Quest Doodad##17689 |q 9665 |goto Eastern Plaguelands 34.09,64.1 |tip {useit}
step
  talk Tirion Fordring##1855
  turnin Demon Dogs##5542 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
step
  note Listen to what Tirion Fordring has to say.
  kill Tirion Fordring##1855 |q 5742 |goto Eastern Plaguelands 5.16,35.57 |elite
step
  talk Augustus the Touched##12384
  turnin Augustus' Receipt Book##6164 |goto Eastern Plaguelands 11.36,26.37
step
  talk Egan##11140
  turnin The Restless Souls##5281 |goto Eastern Plaguelands 11.36,26.6
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin An Earnest Proposition##8915 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Priest
  talk Mokvar##16012
  turnin An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Mokvar##16012
  turnin An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Mokvar##16012
  turnin An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Mokvar##16012
  turnin An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Druid
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin Just Compensation##8938 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin Just Compensation##8939 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Priest
  talk Mokvar##16012
  turnin Just Compensation##8940 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Mokvar##16012
  turnin Just Compensation##8941 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Mokvar##16012
  turnin Just Compensation##8942 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Mokvar##16012
  turnin Just Compensation##8943 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin Just Compensation##8944 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Mokvar##16012
  turnin Anthion's Parting Words##8957 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Druid
  talk Mokvar##16012
  turnin Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Priest
  talk Mokvar##16012
  turnin Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Mokvar##16012
  turnin Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Mokvar##16012
  turnin Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Mokvar##16012
  turnin Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin Saving the Best for Last##9014 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Druid
  talk Mokvar##16012
  turnin Anthion's Parting Words##9016 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin Anthion's Parting Words##9017 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin Anthion's Parting Words##9018 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Priest
  talk Mokvar##16012
  turnin Anthion's Parting Words##9019 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Mokvar##16012
  turnin Anthion's Parting Words##9020 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Mokvar##16012
  turnin Anthion's Parting Words##9021 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin Anthion's Parting Words##9022 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  talk Thrall##4949
  turnin For The Horde!##4974 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Egan##11140
  accept The Restless Souls##5282 |goto Eastern Plaguelands 11.36,26.6
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1 |tip {turninat}Stratholme - Dungeon
step
  only Priest
  talk Eris Havenfire##14494
  turnin A Warning##7621 |goto Eastern Plaguelands 17.21,12.79
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1 |elite
step
  note Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!
  use Restless Soul##11122 |q 5282 |goto Stratholme - Dungeon -1,-1 |tip {useit}
step
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin Material Assistance##7667 |goto Orgrimmar 38.66,35.92 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept The Darkreaver Menace##7668 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  note Bring Darkreaver's Head to Sagorne Creststrider in the Valley of Wisdom, Orgrimmar.
  collect Darkreaver's Head##18880 |q 7668 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Death Knight Darkreaver
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept The Darkreaver Menace##8258 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth spirits you must fight. Defeating these spirits will summon forth Death Knight Darkreaver; defeat him.
  collect Darkreaver's Head##18880 |q 8258 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Death Knight Darkreaver
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  note Free 15 Darrowshire Spirits and return to Carlin Redpath.
  kill Darrowshire Spirit##11064 |q 5211 |goto Eastern Plaguelands 33.07,29.19
step
  note Find Borelgore in the northern wastes of Eastern Plaguelands and destroy him. Return to Nathanos Blightcaller when the mission is complete.
  kill Borelgore##11896 |q 6136 |goto Eastern Plaguelands 47.69,24.87 |elite
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Gauntlets##9234 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Bracers##9235 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Breastplate##9236 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Cloak##9237 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Wrists##9238 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Gloves##9239 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Vest##9240 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Polar Bracers##9241 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Polar Gloves##9242 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Polar Tunic##9243 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Bracers##9244 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Breastplate##9246 |goto Eastern Plaguelands 71.24,49.9
step
  talk Carlin Redpath##11063
  turnin Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  turnin The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 71.66,49.94
step
  talk Smokey LaRue##11033
  turnin The Great Ezra Grimm##5214 |goto Eastern Plaguelands 70.88,48.43
step
  talk Carlin Redpath##11063
  turnin Uncle Carlin##5241 |goto Eastern Plaguelands 71.7,50.04
step
  talk Leonid Barthalomew the Revered##11036
  turnin Houses of the Holy##5243 |goto Eastern Plaguelands 71.89,48.29
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Archivist##5251 |goto Eastern Plaguelands 71.63,50.09
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Above and Beyond##5263 |goto Eastern Plaguelands 71.63,50.09
step
  talk Rashona Straglash##14726
  turnin A Donation of Wool##7826 |goto Orgrimmar 63.6,51.23 |tip {turninat}Orgrimmar
step
  talk Rashona Straglash##14726
  turnin A Donation of Silk##7827 |goto Orgrimmar 63.6,51.23 |tip {turninat}Orgrimmar
step
  talk Rashona Straglash##14726
  turnin A Donation of Mageweave##7831 |goto Orgrimmar 63.6,51.23 |tip {turninat}Orgrimmar
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23 |tip {turninat}Tanaris
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Argent Dawn Commission##5503 |goto Eastern Plaguelands 71.63,50.09
step
  talk Caretaker Alen##11038
  turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Mantles of the Dawn##5513 |goto Eastern Plaguelands 71.79,50.25
step
  talk Smokey LaRue##11033
  turnin That's Asking A Lot##6026 |goto Eastern Plaguelands 70.88,48.43
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 71.79,50.25
step
  talk Betina Bigglezink##11035
  turnin Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 71.66,49.94
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 71.7,48.69
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 71.7,48.69
step
  talk Huntsman Leopold##16132
  turnin Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  talk Rohan the Assassin##16131
  turnin Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  talk Archmage Angela Dosantos##16116
  turnin The Elemental Equation##9128 |goto Eastern Plaguelands 71.7,48.69
step
  talk Korfax, Champion of the Light##16112
  turnin Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  talk Rayne##16135
  turnin Savage Flora##9136 |goto Eastern Plaguelands 71.41,49.35
step
  talk Dispatch Commander Metz##16212
  turnin They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 71.28,48.04
step
  talk Emmisary Gormok##17072
  turnin Bolstering Our Defenses##9665 |goto Eastern Plaguelands 70.37,47.94
step
  talk Carlin Redpath##11063
  accept Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring 5 Resonating Skulls and the Mystic Crystal to Carlin Redpath in Eastern Plaguelands.
  collect 5 Resonating Skull##13155 |q 5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  accept The Active Agent##5213 |goto Eastern Plaguelands 71.66,49.94
step
  note Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink.
  collect Scourge Data##13176 |q 5213 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  accept Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 71.63,50.09
step
  talk Smokey LaRue##11033
  accept When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 70.88,48.43
step
  talk Rashona Straglash##14726
  accept A Donation of Runecloth##7824 |goto Orgrimmar 63.6,51.23
step
  collect Runecloth##14047 |q 7824 |goto Orgrimmar 63.6,51.23 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  note The Scarlet Crusade is on the move. Somewhere along the road from Tyr's Hand to Stratholme you will find the Oracle, Demetria, and her entourage. Hunt her down and slay her. Return to Nathanos Blightcaller should you succeed.
  kill Demetria##12339 |q 6148 |goto Eastern Plaguelands 63.3,67.22 |elite
step
  talk Marlene Redpath##10927
  turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.57 |tip {turninat}Western Plaguelands
step
  talk Vehena##14727
  turnin A Donation of Runecloth##7836 |goto Orgrimmar 37.7,87.9 |tip {turninat}Orgrimmar
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032 |goto Eastern Kingdoms - the continent map 48.9,63.93 |tip {turninat}Eastern Kingdoms - the continent map
step
  talk Nathanos Blightcaller##11878
  turnin The Scarlet Oracle, Demetria##6148 |goto Eastern Plaguelands 22.23,63.51
step
  talk Rumstag Proudstrider##14728
  turnin A Donation of Runecloth##7823 |goto Thunder Bluff 43.05,42.72 |tip {turninat}Thunder Bluff
step
  talk Nathanos Blightcaller##11878
  turnin Duskwing, Oh How I Hate Thee...##6135 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  turnin The Corpulent One##6136 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  accept The Call to Command##6144 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  accept Ramstein##6163 |goto Eastern Plaguelands 22.23,63.51
step
  note Travel to Stratholme and slay Ramstein the Gorger. Take his head as a souvenir for Nathanos.
  collect Head of Ramstein the Gorger##15880 |q 6163 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ramstein the Gorger
step
  talk Tirion Fordring##1855
  turnin Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  note Travel to the Undercroft - at the southernmost section of the Eastern Plaguelands - and recover Taelan's Hammer. Return to Tirion Fordring upon completion of your objective.
  collect Taelan's Hammer##14613 |q 5781 |goto Eastern Plaguelands 23.85,74.22 |tip {dropsfrom}Mercutio Filthgorger
step
  talk Egan##11140
  turnin The Restless Souls##5282 |goto Eastern Plaguelands 11.36,26.6
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1 |tip {turninat}Dire Maul - Dungeon
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  kill Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Dungeon -1,-1 |elite
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin The Darkreaver Menace##8258 |goto Orgrimmar 38.66,35.92 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin The Darkreaver Menace##7668 |goto Orgrimmar 38.66,35.92 |tip {turninat}Orgrimmar
step
  note Travel to Plaguewood, northwest of Light's Hope. Destroy 8 Scourge Structures by using Smokey's Special Compound at the Mark of Detonation planted inside each building. Smokey has had the Ziggurats and Slaughterhouses marked.
  kill Scourge Structure##12247 |q 6041 |goto Eastern Plaguelands 28.01,19.79
step
  talk Carlin Redpath##11063
  turnin Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  turnin The Active Agent##5213 |goto Eastern Plaguelands 71.66,49.94
step
  talk Lord Maxwell Tyrosus##11034
  turnin Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 71.9,48.41
step
  talk Rashona Straglash##14726
  turnin A Donation of Runecloth##7824 |goto Orgrimmar 63.6,51.23 |tip {turninat}Orgrimmar
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  talk Smokey LaRue##11033
  turnin When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 70.88,48.43
step
  talk Lord Maxwell Tyrosus##11034
  accept The Argent Hold##5265 |goto Eastern Plaguelands 71.9,48.41
step
  talk Carlin Redpath##11063
  accept Return to Chromie##5941 |goto Eastern Plaguelands 71.7,50.04
step
  talk Korfax, Champion of the Light##16112
  accept The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  note Enter Naxxramas and uncover the Fate of Ramaladni.
  collect Fate of Ramaladni##22708 |q 9229 |goto Naxxramas - Dungeon -1,-1 |elite |tip {dropsfrom}Dread Creeper, Carrion Spinner, Venom Stalker
step
  talk Craftsman Wilhelm##16376
  accept The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 2 Frozen Runes, 2 Essence of Water, 2 Blue Sapphires and 30 gold pieces.
  collect Frozen Rune##22682 |q 9232 |goto Naxxramas - Dungeon -1,-1
step
  talk Varimathras##2425
  turnin The Call to Command##6144 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  talk Chromie##10667
  turnin Return to Chromie##5941 |goto Western Plaguelands 39.46,66.76 |tip {turninat}Western Plaguelands
step
  talk Nathanos Blightcaller##11878
  turnin Ramstein##6163 |goto Eastern Plaguelands 22.23,63.51
step
  talk Tirion Fordring##1855
  turnin Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  note Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
  collect Symbol of Lost Honor##14625 |q 5845 |goto Eastern Plaguelands 62.53,26.81
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1 |tip {turninat}Stratholme - Dungeon
step
  talk Korfax, Champion of the Light##16112
  turnin The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  talk Craftsman Wilhelm##16376
  turnin The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  turnin The Argent Hold##5265 |goto Eastern Plaguelands 71.96,48.41
step
  talk Korfax, Champion of the Light##16112
  accept Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 1 Frozen Rune, 1 Blue Sapphire and 1 Arcanite Bar.
  collect Frozen Rune##22682 |q 9230 |goto Naxxramas - Dungeon -1,-1
step
  talk Tirion Fordring##1855
  turnin Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Of Love and Family##5846 |goto Eastern Plaguelands 5.16,35.57
step
  talk Korfax, Champion of the Light##16112
  turnin Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
step
  talk Artist Renfray##11936
  turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37 |tip {turninat}Western Plaguelands
step
  note {travel}Moonglade
  goto Moonglade 56.21,30.64
]])
