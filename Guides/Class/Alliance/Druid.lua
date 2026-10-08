-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Druid", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "d4498f53",
}, [[
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  talk Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only NightElf Druid
  talk Conservator Ilthalaine##2079
  accept Verdant Sigil##3120 |goto Teldrassil 58.69,44.27
step
  only NightElf Druid
  note Read the Verdant Sigil and speak to Mardant Strongoak, in the tree Aldrassil in Shadowglen.
  talk Mardant Strongoak##3597
  turnin Verdant Sigil##3120 |goto Teldrassil 58.63,40.29
step
  talk Ailee Farheart##251362
  accept Coming of Age##92460 |goto Zephras Isle 42.82,23.37
step
  note Speak with Rorian the Dayseeker in Thendal Grove.
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
  note Read the Folded Parchment then speak with Xyton Silverwind in Thendal Grove.
  talk Xyton Silverwind##251373
  turnin A Student of Nature##92485 |goto Zephras Isle 41.72,23.38
step
  only Skyborne Druid
  talk Archmage Ansirem Runeweaver##2543
  accept Child of Nature##94912 |goto Alterac Mountains 18.84,78.49
step
  only Skyborne Druid
  note Speak with Sheldras Moontree in Stormwind.
  talk Sheldras Moontree##5504
  turnin Child of Nature##94912 |goto Stormwind City 35.84,67.38
step
  only NightElf Druid not completed(5924) not completed(5925) not haveq(5924) not haveq(5925)
  talk Denatharion##4218
  accept Heeding the Call##5923 |goto Darnassus 34.77,7.37
step
  only NightElf Druid not completed(5924) not completed(5925) not haveq(5924) not haveq(5925)
  note Speak with Mathrengyl Bearwalker in the Cenarion Enclave, Darnassus.
  talk Mathrengyl Bearwalker##4217
  turnin Heeding the Call##5923 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept Moonglade##5921 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  note Use the spell "Teleport: Moonglade" to travel to Moonglade. When you arrive, speak with Dendrite Starblaze in the village of Nighthaven.
  talk Dendrite Starblaze##11802
  turnin Moonglade##5921 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  note Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear. When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.
  talk Great Bear Spirit##11956 |q 5929 |goto Moonglade 39.11,27.5
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Back to Darnassus##5931 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  note Return to Darnassus and speak with Mathrengyl Bearwalker in the Cenarion Enclave.
  talk Mathrengyl Bearwalker##4217
  turnin Back to Darnassus##5931 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept Body and Heart##6001 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  note Use the Cenarion Moondust on the Moonkin Stone of Auberdine to bring forth Lunaclaw. From there, you must face Lunaclaw and earn the strength of body and heart it possesses.
  use Lunaclaw Spirit##12144 |q 6001 |tip {useit}
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Body and Heart##6001 |goto Darnassus 35.37,8.4
step
  only Skyborne Druid
  talk Sheldras Moontree##5504
  accept Moonglade##94914 |goto Stormwind City 35.84,67.38
step
  only Skyborne Druid
  note Use the spell "Teleport: Moonglade" to travel to Moonglade.  When you arrive, speak with Dendrite Starblaze in the village of Nighthaven.
  talk Dendrite Starblaze##11802
  turnin Moonglade##94914 |goto Moonglade 56.21,30.64
step
  only Skyborne Druid
  talk Lotheluum Starbreeze##252359
  accept The Great Ursera Spirit##94006 |goto Zephras Isle 64.02,75.11
step
  only Skyborne Druid
  note Speak with Urs'endris near the falls northeast of Valanaar.
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
  only not Human not Dwarf not Gnome Druid
  talk Mathrengyl Bearwalker##4217
  accept Lessons Anew##6121 |goto Darnassus 35.37,8.4
step
  only not Human not Dwarf not Gnome Druid
  note Travel to Moonglade and speak with Dendrite Starblaze in the village of Nighthaven.
  talk Dendrite Starblaze##11802
  turnin Lessons Anew##6121 |goto Moonglade 56.21,30.64
step
  only not Human not Dwarf not Gnome Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6122 |goto Moonglade 56.21,30.64
step
  only not Human not Dwarf not Gnome Druid
  note Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by the falls.
  collect Filled Cliffspring Falls Sampler##15845 |q 6122 |goto Darkshore 54.92,33.31 |tip {dropsfrom}Cliffspring Falls Cave Mouth
step
  only not Human not Dwarf not Gnome Druid
  talk Alanndarian Nightsong##3702
  turnin The Principal Source##6122 |goto Darkshore 37.69,40.66
step
  only NightElf Druid
  talk Alanndarian Nightsong##3702
  accept Gathering the Cure##6123 |goto Darkshore 37.69,40.66
step
  only NightElf Druid
  note Bring 5 Earthroot and 12 Lunar Funguses to Alanndarian Nightsong in Auberdine so she may make a curative salve.
  collect 5 Earthroot##2449 |q 6123 |goto Teldrassil 57.73,65.76 |tip {dropsfrom}Lasher Sproutling, Wrathvine, Earthroot
step
  only NightElf Druid
  talk Alanndarian Nightsong##3702
  turnin Gathering the Cure##6123 |goto Darkshore 37.69,40.66
step
  only NightElf Druid
  talk Alanndarian Nightsong##3702
  accept Curing the Sick##6124 |goto Darkshore 37.69,40.66
step
  only NightElf Druid
  note Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore; doing so should cure them. Sickly Deer have been reported starting south of the Cliffspring River to the north of Auberdine and extending all the way into southern Darkshore where the edge of Ashenvale begins.
  use Sickly Deer##12298 |q 6124 |goto Darkshore 43.81,48.22 |tip {useit}
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Curing the Sick##6124 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6125 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  note Return to Mathrengyl Bearwalker in the Cenarion Enclave, Darnassus.
  talk Mathrengyl Bearwalker##4217
  turnin Power over Poison##6125 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept A Lesson to Learn##26 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  note Speak with Dendrite Starblaze in the village of Nighthaven, Moonglade.
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  note Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble.
  collect Shrine Of Remulos##15885 |q 29 |goto Moonglade 36,41.42
step
  only NightElf Druid
  talk Tajarri##11799
  turnin Trial of the Lake##29 |goto Moonglade 36.52,40.1
step
  only NightElf Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##272 |goto Moonglade 36.52,40.1
step
  only NightElf Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 272 |goto Moonglade 36,41.42 |tip {dropsfrom}Shrine Of Remulos
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##272 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##5061 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  note Return to Darnassus and show Mathrengyl Bearwalker the Pendant of the Sea Lion.
  talk Mathrengyl Bearwalker##4217
  turnin Aquatic Form##5061 |goto Darnassus 35.37,8.4
step
  only not Human not Dwarf not Gnome Druid
  talk Mathrengyl Bearwalker##4217
  accept The Great Cat Spirit##98393 |goto Darnassus 35.37,8.4
step
  only not Human not Dwarf not Gnome Druid
  note Speak with Dendrite Starblaze in the village of Nighthaven, Moonglade.
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98393 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept The Great Cat Spirit##98394 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  note Seek out the Great Cat Spirit in southern part Moonglade and learn what it has to share with you about the nature of the cat.
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98394 |goto Moonglade 58.39,73.52
step
  only not Human not Dwarf not Gnome Druid
  talk Dendrite Starblaze##11802
  accept To Darnassus##98397 |goto Moonglade 56.21,30.64
step
  only not Human not Dwarf not Gnome Druid
  note Return to Darnassus and speak with Mathrengyl Bearwalker in the Cenarion Enclave.
  talk Mathrengyl Bearwalker##4217
  turnin To Darnassus##98397 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Great Cat Spirit##11957
  accept The Great Cat Spirit##98396 |goto Moonglade 58.39,73.52
step
  only NightElf Druid
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit.
  collect Relic of the Fang##280502 |q 98396 |goto Moonglade 58.39,73.52
step
  only NightElf Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98396 |goto Moonglade 58.39,73.52
step
  only NightElf Druid
  talk Great Cat Spirit##11957
  accept Blessings of the Great Cat Spirit##98731 |goto Moonglade 58.39,73.52
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Cat Spirit##98731 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Mathrengyl Bearwalker##4217
  accept Torwa Pathfinder##9063 |goto Darnassus 35.37,8.4
step
  only Druid
  note Speak with Torwa Pathfinder in Un'Goro Crater.
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
  note Stab a Devilsaur with the Devilsaur Barb. Return to Torwa Pathfinder in Un'Goro Crater when you have completed this task.
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
  note Return the book to its rightful owners.
  talk Lorekeeper Javon##14381
  turnin The Emerald Dream...##7506 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Deliana##16013
  accept An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  only Druid
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Wildheart Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8905 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Druid
  talk Deliana##16013
  turnin An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  note Bring the Sealed Blood Container to Mux Manascrambler inside Gadgetzan in Tanaris.
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
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
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  note Bring the Extra-Dimensional Ghost Revealer to Deliana in Ironforge.
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Druid
  talk Deliana##16013
  accept Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves Deliana in Ironforge.
  collect Wildheart Belt##16716 |q 8926 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Druid
  talk Deliana##16013
  turnin Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  note Use the Extra-Dimensional Ghost Revealer at the entrance to Stratholme and speak with the ghost of Anthion Harmon.
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
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
  note Bring Ysida's Locket to Anthion Harmon in Eastern Plaguelands.
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
  note Take the incomplete Banner of Provocation to Falrin Treeshaper at the library in Dire Maul.
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
  accept Anthion's Parting Words##8951 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  note Return to Deliana in Ironforge with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 8951 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Druid
  talk Deliana##16013
  turnin Anthion's Parting Words##8951 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  note Travel to Blackrock Mountain and use the Extra-Dimensional Ghost Revealer to find Bodley near Blackrock Spire.
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960 |goto Eastern Kingdoms - the continent map 48.9,63.93
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
  accept Back to the Beginning##8997 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Speak with Deliana at The High Seat in Ironforge.
  talk Deliana##16013
  turnin Back to the Beginning##8997 |goto Ironforge 43.53,52.64
step
  only Druid
  talk Deliana##16013
  accept Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
step
  only Druid
  note Give Deliana your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 8999 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Druid
  talk Deliana##16013
  turnin Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
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
  note Rutgar Glyphshaper at Bronzebeard's Encampment wants you to deliver the Glyphed Crystal Prism to Geologist Larksbane at the Cenarion Hold in Silithus.
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
]])
