-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Druid", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "063725f6",
}, [[
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  collect Plainstrider Meat##4739 |q 747 |goto Mulgore 47.2,81.46 |tip {dropsfrom}Plainstrider
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  only Tauren Druid
  talk Grull Hawkwind##2980
  accept Verdant Note##3094 |goto Mulgore 44.47,77.5
step
  only Tauren Druid
  talk Gart Mistrunner##3060
  turnin Verdant Note##3094 |goto Mulgore 44.65,76.55
step
  talk Ailee Farheart##251362
  accept Coming of Age##92460 |goto Zephras Isle 42.82,23.37
step
  talk Rorian the Dayseeker##251361
  turnin Coming of Age##92460 |goto Zephras Isle 42.1,23.49
step
  talk Rorian the Dayseeker##251361
  accept Harmony in Balance##92461 |goto Zephras Isle 42.1,23.49
step
  note Slay 8 Vuldren Juveniles in Thendal Grove.
  talk Juvenile Vuldren##250873 |q 92461 |goto Zephras Isle 44.71,26.43
step
  talk Rorian the Dayseeker##251361
  turnin Harmony in Balance##92461 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Druid
  talk Rorian the Dayseeker##251361
  accept A Student of Nature##92485 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Druid
  talk Xyton Silverwind##251373
  turnin A Student of Nature##92485 |goto Zephras Isle 41.72,23.38
step
  only Skyborne Druid
  talk Muln Earthfury##259118
  accept Child of Nature##94911 |goto Mulgore 33.4,22.5
step
  only Skyborne Druid
  talk Turak Runetotem##3033
  turnin Child of Nature##94911 |goto Thunder Bluff 76.48,27.22
step
  only Skyborne Druid
  talk Turak Runetotem##3033
  accept Moonglade##94913 |goto Thunder Bluff 76.48,27.22
step
  only Skyborne Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##94913 |goto Moonglade 56.21,30.64
step
  only Tauren Druid not completed(5927) not completed(5928) not haveq(5927) not haveq(5928)
  talk Innkeeper Pala##6746
  accept Heeding the Call##5926 |goto Thunder Bluff 45.81,64.71
step
  only Tauren Druid not completed(5927) not completed(5928) not haveq(5927) not haveq(5928)
  talk Turak Runetotem##3033
  turnin Heeding the Call##5926 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Moonglade##5922 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5922 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  note Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear. When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.
  talk Great Bear Spirit##11956 |q 5930 |goto Moonglade 39.11,27.5
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Back to Thunder Bluff##5932 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Back to Thunder Bluff##5932 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Body and Heart##6002 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  note Use the Cenarion Lunardust on the Moonkin Stone between Mulgore and the Barrens to bring forth Lunaclaw. From there, you must face Lunaclaw and earn the strength of body and heart it possesses.
  use Lunaclaw Spirit##12144 |q 6002 |tip {useit}
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Body and Heart##6002 |goto Thunder Bluff 76.48,27.22
step
  only Skyborne Druid
  talk Lotheluum Starbreeze##252359
  accept The Great Ursera Spirit##94006 |goto Zephras Isle 64.02,75.11
step
  only Skyborne Druid
  talk Urs'endris##255853
  turnin The Great Ursera Spirit##94006 |goto Zephras Isle 69.72,61.68
step
  only Skyborne Druid
  talk Urs'endris##255853
  accept Strength and Mercy##94638 |goto Zephras Isle 69.72,61.68
step
  only Skyborne Druid
  note Find and kill Ur'endra in the Shen'dar Highlands.
  kill Ur'endra##258443 |q 94638 |goto Zephras Isle 53.89,65.34
step
  only Skyborne Druid
  talk Urs'endris##255853
  turnin Strength and Mercy##94638 |goto Zephras Isle 69.72,61.68
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Lessons Anew##6126 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Lessons Anew##6126 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6127 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  note Use the Empty Dreadmist Peak Sampler to draw a sample of water from a pool at the top of the peak.
  collect Filled Dreadmist Peak Sampler##15843 |q 6127 |goto The Barrens 48.4,18.89 |tip {dropsfrom}Dreadmist Peak Pool
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  turnin The Principal Source##6127 |goto The Barrens 52.26,31.93
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  accept Gathering the Cure##6128 |goto The Barrens 52.26,31.93
step
  only Tauren Druid
  note Bring 5 Earthroot and 5 Kodo Horns to Tonga Runetotem at the Crossroads so he may make a curative salve.
  collect 5 Earthroot##2449 |q 6128 |goto Teldrassil 57.73,65.76 |tip {dropsfrom}Lasher Sproutling, Wrathvine, Earthroot
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  turnin Gathering the Cure##6128 |goto The Barrens 52.26,31.93
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  accept Curing the Sick##6129 |goto The Barrens 52.26,31.93
step
  only Tauren Druid
  note Use the Curative Animal Salve on 10 Sickly Gazelles that are located throughout the northern part of the Barrens; doing so should cure them. Sickly Gazelles have been reported north of the east-west road that runs through the Crossroads.
  use Sickly Gazelle##12296 |q 6129 |goto The Barrens 54.25,24.17 |tip {useit}
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Curing the Sick##6129 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6130 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Power over Poison##6130 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept A Lesson to Learn##27 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##27 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##28 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  note Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble.
  collect Shrine Of Remulos##15885 |q 28 |goto Moonglade 36,41.42
step
  only Tauren Druid
  talk Tajarri##11799
  turnin Trial of the Lake##28 |goto Moonglade 36.52,40.1
step
  only Tauren Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##30 |goto Moonglade 36.52,40.1
step
  only Tauren Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 30 |goto Moonglade 36,41.42 |tip {dropsfrom}Shrine Of Remulos
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##30 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##31 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Aquatic Form##31 |goto Thunder Bluff 76.48,27.22
step
  only not Orc not Undead not Troll Druid
  talk Dendrite Starblaze##11802
  accept To Thunder Bluff##98362 |goto Moonglade 56.21,30.64
step
  only not Orc not Undead not Troll Druid
  talk Turak Runetotem##3033
  turnin To Thunder Bluff##98362 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept The Great Cat Spirit##98405 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98405 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  accept The Great Cat Spirit##98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit.
  collect Relic of the Fang##280502 |q 98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  accept Blessings of the Great Cat Spirit##98739 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Cat Spirit##98739 |goto Moonglade 56.21,30.64
step
  only not Orc not Undead not Troll Druid
  talk Turak Runetotem##3033
  accept The Great Cat Spirit##98340 |goto Thunder Bluff 76.48,27.22
step
  only not Orc not Undead not Troll Druid
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98340 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Turak Runetotem##3033
  accept Torwa Pathfinder##9063 |goto Thunder Bluff 76.48,27.22
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  note Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
  collect 8 Gorishi Sting##22435 |q 9052 |goto Un'Goro Crater 50.14,75.97 |tip {dropsfrom}Gorishi Wasp, Gorishi Stinger
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  talk Torwa Pathfinder##9619
  accept A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  note Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder.
  collect Putrid Vine##22444 |q 9053 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Atal'alarion
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  only Druid
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Emerald Dream...##7506 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Lorekeeper Javon##14381
  turnin The Emerald Dream...##7506 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Druid
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Druid
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9016 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  note Return to Mokvar in Orgimmar with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 9016 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Druid
  talk Mokvar##16012
  turnin Anthion's Parting Words##9016 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather the Incendicite of Incendius, the Ember of Emberseer and the Cinder of Cynders, along with a Hallowed Brazier, and return them to Bodley inside Blackrock Mountain.
  collect Incendicite of Incendius##21987 |q 8961 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Lord Incendius
step
  talk Bodley##16033
  turnin Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  accept Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 58.08,86.89 |elite
  collect Druidical Remains##22226 |q 8962 |goto Silithus 58.08,86.89
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  turnin Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8966 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 20 Bloodkelp from the Strashaz naga and then return to Bodley inside Blackrock Mountain.
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 76.94,19.81 |tip {dropsfrom}Strashaz Warrior, Strashaz Serpent Guard, Strashaz Myrmidon
step
  talk Bodley##16033
  turnin I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  accept More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.55 |elite
  collect Starbreeze Village Relic##22227 |q 8985 |goto Winterspring 62.56,69.55
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  turnin More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8989 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain.
  collect 40 Blackrock Bracer##22138 |q 8994 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Sentry, Scarshield Acolyte, Scarshield Legionnaire
step
  talk Bodley##16033
  turnin Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
  use Lord Valthalak##16042 |q 8995 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {useit}
step
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996 |goto Blackrock Spire - Dungeon -1,-1
step
  note Return to Bodley inside Blackrock Mountain and give him the Brazier of Beckoning.
  collect Brazier of Beckoning##22056 |q 8996 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Bodley##16033
  turnin Return to Bodley##8996 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Back to the Beginning##8998 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29
step
  only Druid
  talk Mokvar##16012
  accept Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Give Mokvar your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 9007 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Druid
  talk Mokvar##16012
  turnin Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  talk Frankal Stonebridge##15171 |q 8304 |goto Silithus 40.81,88.86
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 50.87,26.76 |tip {dropsfrom}Hive'Ashi Glyphed Crystal
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 50.21,40.97
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  kill Emissary Roman'khan##14862 |goto Silithus 48.77,58.14 |raid
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 48.77,58.14
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  accept Armaments of War##8382 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8382 |goto Silithus 49.67,37.46
step
  only Druid
  talk Zanza the Restless##15042
  accept Animist's Caress##8192 |goto Zul'Gurub - Dungeon -1,-1
step
  only Druid
  collect Primal Hakkari Idol##22637 |q 8192 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Druid
  talk Zanza the Restless##15042
  turnin Animist's Caress##8192 |goto Zul'Gurub - Dungeon -1,-1
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Dungeon -1,-1 |elite
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Tunic##9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Tunic if you bring her the following: 1 Desecrated Tunic, 25 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  collect Desecrated Tunic##22350 |q 9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Tunic##9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Legguards##9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Legguards if you bring her the following: 1 Desecrated Legguards, 20 Wartorn Leather Scraps, 8 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Legguards##22359 |q 9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Legguards##9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Headpiece if you bring her the following: 1 Desecrated Headpiece, 15 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Spaulders if you bring her the following: 1 Desecrated Spaulders, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Spaulders##22361 |q 9089 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Boots##9090 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Boots if you bring her the following: 1 Desecrated Boots, 12 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  collect Desecrated Boots##22365 |q 9090 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Boots##9090 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Handguards##9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Handguards if you bring her the following: 1 Desecrated Handguards, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Handguards##22364 |q 9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Handguards##9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Girdle##9092 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Girdle if you bring her the following: 1 Desecrated Girdle, 8 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  collect Desecrated Girdle##22363 |q 9092 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Girdle##9092 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Wristguards if you bring her the following: 1 Desecrated Wristguards, 6 Wartorn Leather Scraps, 1 Arcane Crystal and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9093 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Windcaller Yessendra##15498
  accept Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Druid
  note Bring 1 Qiraji Magisterial Ring, 2 Alabaster Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8700 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Druid
  talk Windcaller Yessendra##15498
  turnin Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Druid
  talk Warden Haro##15499
  accept Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Druid
  note Bring 1 Qiraji Ornate Hilt, 2 Jasper Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8708 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Druid
  talk Warden Haro##15499
  turnin Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Druid
  talk Keyl Swiftclaw##15500
  accept Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Druid
  note Bring 1 Qiraji Regal Drape, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8692 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Druid
  talk Keyl Swiftclaw##15500
  turnin Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Bracers##8057 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Stanchion. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Stanchion##19718 |q 8057 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Bracers##8057 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Belt##8064 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Sash. Maywiki of Zuldazar is located on Yojamba Isle, Stranglethorn Vale. You must also be Honored with Zandalar.
  collect Primal Hakkari Sash##19720 |q 8064 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Belt##8064 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Tunic##8065 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Tabard. Maywiki of Zuldazar is located on Yojamba Isle, Stranglethorn Vale. You must also be Revered with Zandalar.
  collect Primal Hakkari Tabard##19722 |q 8065 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Tunic##8065 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  collect Enchanted South Seas Kelp##19610 |q 8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  collect Enchanted South Seas Kelp##19611 |q 8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  collect Enchanted South Seas Kelp##19612 |q 8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  collect Qiraji Lord's Insignia##21229 |q 8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  accept Genesis Boots##8665 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Rebirth, 5 Stone Scarabs and 5 Silver Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Dominance##20932 |q 8665 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Druid
  talk Kandrostrasz##15503
  turnin Genesis Boots##8665 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Vethsera##15504
  accept Genesis Vest##8666 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  note Bring the the Husk of the Old God, 2 Idols of Rebirth, 5 Bronze Scarabs and 5 Ivory Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Husk of the Old God##20933 |q 8666 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Druid
  talk Vethsera##15504
  turnin Genesis Vest##8666 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Andorgos##15502
  accept Genesis Helm##8667 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  note Bring Vek'lor's Diadem, 2 Idols of Life, 5 Gold Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'lor's Diadem##20930 |q 8667 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'lor
step
  only Druid
  talk Andorgos##15502
  turnin Genesis Helm##8667 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  accept Genesis Trousers##8668 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  note Bring the Skin of the Great Sandworm, 2 Idols of War, 5 Stone Scarabs and 5 Crystal Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Skin of the Great Sandworm##20931 |q 8668 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Druid
  talk Kandrostrasz##15503
  turnin Genesis Trousers##8668 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Andorgos##15502
  accept Genesis Shoulderpads##8669 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Strife, 5 Gold Scarabs and 5 Bone Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Dominance##20932 |q 8669 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Druid
  talk Andorgos##15502
  turnin Genesis Shoulderpads##8669 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
]])
