-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackrock Spire", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "bc8db0bd",
}, [[
step
  talk Yeh'kinya##8579
  accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Duke Hydraxis##13278
  accept Poisoned Water##6804 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  talk Bijou##10257
  accept Bijou's Belongings##5001 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Kibler##10260
  accept Kibler's Exotic Pets##4729 |goto Burning Steppes 65.89,21.92
step
  talk Kibler##10260
  accept En-Ay-Es-Tee-Why##4862 |goto Burning Steppes 65.89,21.92
step
  talk Helendis Riverhorn##9562
  accept Put Her Down##4701 |goto Burning Steppes 85.82,68.95
step
  talk Scarshield Infiltrator##10299
  accept Seal of Ascension##4742 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warosh##10799
  accept Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Pip Quickwit##10776
  accept Pip Quickwit, At Your Service!##5047 |goto Blackrock Spire - Dungeon -1,-1
step
  kill Overlord Wyrmthalak##9568 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept General Drakkisath's Command##5089 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Awbee##10740
  accept The Matron Protectorate##5160 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Ragged John##9563
  accept Mother's Milk##4866 |goto Burning Steppes 65.01,23.76
step
  click Broken Trap##179485
  accept A Broken Trap##1193 |goto Dire Maul - Dungeon -1,-1
step
  kill Scarshield Quartermaster##9046 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip Loot the quest item here — it starts the quest.
  accept Blackhand's Command##7761 |goto Eastern Kingdoms - the continent map 49.12,64.1
step
  only Druid
  talk Deliana##16013
  accept An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  talk Count Remington Ridgewell##2285
  accept Mayara Brightwing##4766 |goto Stormwind City 76.94,47.83
step
  talk Kilram##11192
  accept Snakestone of the Shadow Huntress##5306 |goto Winterspring 61.3,37.07
step
  only not Hunter not Rogue not Priest not Mage not Warlock not Druid
  talk Lorax##10918
  accept Lorax's Tale##5126 |goto Winterspring 63.79,73.76
step
  note Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
  use Screecher Spirit##8612 |q 3520 |goto Feralas 46.82,48.47 |tip {useit}
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  collect 8 Broodling Essence##12283 |q 4726 |goto Burning Steppes 63.78,57.27
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 91.67,35.54
step
  note Use the Aspect of Neptulon on poisoned elementals of Eastern Plaguelands. Bring 12 Discordant Bracers and the Aspect of Neptulon to Duke Hydraxis in Azshara.
  collect 12 Discordant Bracers##17309 |q 6804 |goto Eastern Plaguelands 54.91,68.84 |tip {dropsfrom}Blighted Surge, Plague Ravager, Blighted Horror
step
  note Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
  kill Dust Stormer##11744 |q 6805 |goto Silithus 21.6,22.4
step
  note Find Bijou's Belongings and return them to her. Good luck!
  collect Bijou's Belongings##12345 |q 5001 |goto Blackrock Spire - Dungeon -1,-1
step
  note Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
  collect Caged Worg Pup##12263 |q 4729 |goto Burning Steppes 65.89,21.92
step
  note Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
  collect 15 Spire Spider Egg##12530 |q 4862 |goto Blackrock Spire - Dungeon -1,-1
step
  note Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg.
  kill Halycon##10220 |q 4701 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
  collect Gemstone of Spirestone##12336 |q 4742 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  note Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
  collect Warosh's Mojo##12712 |q 4867 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Urok Doomhowl
step
  note In the heart of Blackrock Spire you will find Mother Smolderweb. Engage her and get her to poison you. Chances are good that you will have to kill her as well. Return to Ragged John when you are poisoned so that he can 'milk' you.
  talk Ragged John##9563 |q 4866 |goto Burning Steppes 65.01,23.76
step
  collect Thorium Widget##15994 |q 1193 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Anvilrage Marshal, Rage Talon Dragonspawn, Blackhand Iron Guard
step
  only Druid
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Wildheart Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8905 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  note Travel to Blackrock Spire and slay Shadow Hunter Vosh'gajin. Recover Vosh'gajin's Snakestone and return to Kilram.
  collect Vosh'gajin's Snakestone##13352 |q 5306 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Shadow Hunter Vosh'gajin
step
  only not Hunter not Rogue not Priest not Mage not Warlock not Druid
  note Speak with Lorax. Listen to what he has to say.
  talk Lorax##10918 |q 5126 |goto Winterspring 63.79,73.76
step
  talk Yeh'kinya##8579
  turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Duke Hydraxis##13278
  turnin Poisoned Water##6804 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  turnin Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  talk Bijou##10257
  turnin Bijou's Belongings##5001 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Kibler##10260
  turnin Kibler's Exotic Pets##4729 |goto Burning Steppes 65.89,21.92
step
  talk Kibler##10260
  turnin En-Ay-Es-Tee-Why##4862 |goto Burning Steppes 65.89,21.92
step
  talk Helendis Riverhorn##9562
  turnin Put Her Down##4701 |goto Burning Steppes 85.82,68.95
step
  talk Scarshield Infiltrator##10299
  turnin Seal of Ascension##4742 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warosh##10799
  turnin Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Malyfous Darkhammer##10637
  turnin Pip Quickwit, At Your Service!##5047 |goto Winterspring 60.99,38.78
step
  talk Marshal Maxwell##9560
  turnin General Drakkisath's Command##5089 |goto Burning Steppes 84.74,69.02
step
  talk Haleh##10929
  turnin The Matron Protectorate##5160 |goto Winterspring 54.55,51.2
step
  talk Ragged John##9563
  turnin Mother's Milk##4866 |goto Burning Steppes 65.01,23.76
step
  turnin A Broken Trap##1193 |goto Dire Maul - Dungeon -1,-1
step
  turnin Blackhand's Command##7761 |goto Blackrock Spire - Dungeon -1,-1
step
  only Druid
  talk Deliana##16013
  turnin An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  talk Mayara Brightwing##9565
  turnin Mayara Brightwing##4766 |goto Burning Steppes 84.84,69.12
step
  talk Kilram##11192
  turnin Snakestone of the Shadow Huntress##5306 |goto Winterspring 61.3,37.07
step
  only not Hunter not Rogue not Priest not Mage not Warlock not Druid
  talk Lorax##10918
  turnin Lorax's Tale##5126 |goto Winterspring 63.79,73.76
step
  talk Yeh'kinya##8579
  accept The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24
step
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  talk Bijou##10257
  accept Message to Maxwell##5002 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Duke Hydraxis##13278
  accept Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Scarshield Infiltrator##10299
  accept Seal of Ascension##4743 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Marshal Maxwell##9560
  accept General Drakkisath's Demise##5102 |goto Burning Steppes 84.74,69.02
step
  talk Mayara Brightwing##9565
  accept Doomrigger's Clasp##4764 |goto Burning Steppes 84.84,69.12
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  only not Druid not Hunter not Mage not Priest not Rogue not Warlock
  talk Lorax##10918
  accept The Demon Forge##5127 |goto Winterspring 63.79,73.76
step
  note Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
  collect First Mosh'aru Tablet##10660 |q 3527 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Theka the Martyr, Theka the Martyr Shapeshift
step
  note Bring the Eye of the Emberseer to Duke Hydraxis in Azshara.
  collect Eye of the Emberseer##17322 |q 6821 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Pyroguard Emberseer
step
  note Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
  collect Forged Seal of Ascension##12324 |q 4743 |goto Dustwallow Marsh 56.37,87.83
step
  note Travel to Blackrock Spire and destroy General Drakkisath. Return to Marshal Maxwell when the job is done.
  kill General Drakkisath##10363 |q 5102 |goto Blackrock Spire - Dungeon -1,-1 |raid
step
  note Bring Doomrigger's Clasp to Mayara Brightwing in the Burning Steppes.
  collect Doomrigger's Clasp##12352 |q 4764 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Doomrigger's Coffer
step
  only not Druid not Hunter not Mage not Priest not Rogue not Warlock
  note Travel to Blackrock Spire and find Goraluk Anvilcrack. Slay him and then use the Blood Stained Pike upon his corpse. After his soul has been siphoned, the pike will be Soul Stained.
  collect Soul Stained Pike##12847 |q 5127 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Goraluk Anvilcrack
step
  talk Yeh'kinya##8579
  turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 24.9,44.45
step
  talk Marshal Maxwell##9560
  turnin Message to Maxwell##5002 |goto Burning Steppes 84.74,69.02
step
  talk Duke Hydraxis##13278
  turnin Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Scarshield Infiltrator##10299
  turnin Seal of Ascension##4743 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Marshal Maxwell##9560
  turnin General Drakkisath's Demise##5102 |goto Burning Steppes 84.74,69.02
step
  talk Mayara Brightwing##9565
  turnin Doomrigger's Clasp##4764 |goto Burning Steppes 84.84,69.12
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  talk Haleh##10929
  turnin Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  only not Druid not Hunter not Mage not Priest not Rogue not Warlock
  talk Lorax##10918
  turnin The Demon Forge##5127 |goto Winterspring 63.79,73.76
step
  talk Yeh'kinya##8579
  accept The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 24.9,44.45
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Marshal Maxwell##9560
  accept Maxwell's Mission##5081 |goto Burning Steppes 84.74,69.02
step
  talk Mayara Brightwing##9565
  accept Delivery to Ridgewell##4765 |goto Burning Steppes 84.84,69.12
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5162 |goto Winterspring 54.55,51.2
step
  note Bring the Ancient Egg to Yeh'kinya in Tanaris.
  collect Ancient Egg##12402 |q 4787 |goto The Hinterlands 57.58,86.79
step
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.88,42.22 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  note Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done.
  kill War Master Voone##9237 |q 5081 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Yeh'kinya##8579
  turnin The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 80.21,38.35
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Marshal Maxwell##9560
  turnin Maxwell's Mission##5081 |goto Burning Steppes 84.74,69.02
step
  talk Count Remington Ridgewell##2285
  turnin Delivery to Ridgewell##4765 |goto Stormwind City 76.94,47.83
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Jeziba##10976
  turnin Wrath of the Blue Flight##5162 |goto Western Plaguelands 39.37,66.78
step
  talk Yeh'kinya##8579
  accept The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Jeziba##10976
  accept Catalogue of the Wayward##5164 |goto Western Plaguelands 39.37,66.78
step
  note Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
  collect Filled Egg of Hakkar##10662 |q 3528 |goto Tanaris 66.99,22.36
step
  note Speak with Highlord Bolvar Fordragon after speaking with Lady Katrana Prestor.
  talk Lady Katrana Prestor##1749 |q 4185 |goto Stormwind City 80.1,38.17
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Yeh'kinya##8579
  turnin The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  turnin Catalogue of the Wayward##5164 |goto Western Plaguelands 39.35,66.6
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 80.21,38.35
step
  talk Prospector Ironboot##10460
  accept The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  click Catalogue of the Wayward##176192
  accept Breastplate of the Chromatic Flight##5166 |goto Western Plaguelands 39.35,66.6
step
  click Catalogue of the Wayward##176192
  accept Legplates of the Chromatic Defier##5167 |goto Western Plaguelands 39.35,66.6
step
  talk Felnok Steelspring##10468
  accept Tinkee Steamboil##4907 |goto Winterspring 61.63,38.61
step
  note Bring the Third and Fourth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Third Mosh'aru Tablet##12411 |q 5065 |goto Eastern Plaguelands 63.43,7.84
step
  note Use the Eggscilloscope Prototype on an egg in the Rookery.
  collect Rookery Egg##175124 |q 4734 |goto Blackrock Spire - Dungeon -1,-1
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  note To forge the Breastplate of the Chromatic Flight, you will be required to bring the following items to Jeziba the 'Sculptor':
  collect Chromatic Carapace##12871 |q 5166 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Gyth
step
  note To forge the Legplates of the Chromatic Defier, you will be required to bring the following items to Jeziba the 'Sculptor':
  collect Chromatic Carapace##12871 |q 5167 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Gyth
step
  talk Magistrate Solomon##344
  turnin The True Masters##4186 |goto Redridge Mountains 24.9,44.45
step
  talk Prospector Ironboot##10460
  turnin The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Jeziba##10976
  turnin Breastplate of the Chromatic Flight##5166 |goto Western Plaguelands 39.37,66.78
step
  talk Jeziba##10976
  turnin Legplates of the Chromatic Defier##5167 |goto Western Plaguelands 39.37,66.78
step
  talk Tinkee Steamboil##10267
  turnin Tinkee Steamboil##4907 |goto Burning Steppes 65.24,24
step
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 24.9,44.45
step
  talk Prospector Ironboot##10460
  accept The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Fifth Mosh'aru Tablet##12740 |q 4788 |goto Blackrock Spire - Dungeon -1,-1
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  collect Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02
step
  talk Prospector Ironboot##10460
  turnin The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Mux Manascrambler##16014
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  note Speak with Ragged John to learn of Marshal Windsor's fate and return to Marshal Maxwell when you have completed this task.
  talk Ragged John##9563 |q 4224 |goto Burning Steppes 65.01,23.76
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  talk Marshal Maxwell##9560
  accept Marshal Windsor##4241 |goto Burning Steppes 84.74,69.02
step
  only Druid
  talk Deliana##16013
  accept Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  accept Just Compensation##8931 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  accept Just Compensation##8932 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  accept Just Compensation##8934 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  accept Just Compensation##8937 |goto Ironforge 43.53,52.64
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves Deliana in Ironforge.
  collect Wildheart Belt##16716 |q 8926 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Hunter
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Deliana in Ironforge.
  collect Beaststalker's Belt##16680 |q 8931 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Mage
  note Bring a Magister's Belt and a set of Magister's Gloves to Deliana in Ironforge.
  collect Magister's Belt##16685 |q 8932 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Smolderthorn Mystic, Thuzadin Shadowcaster, Thuzadin Necromancer
step
  only Priest
  note Bring a Devout Belt and a set of Devout Gloves to Deliana in Ironforge.
  collect Devout Belt##16696 |q 8934 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Spellbinder, Smolderthorn Shadow Priest, Firebrand Darkweaver
step
  only Warrior
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Deliana in Ironforge.
  collect Belt of Valor##16736 |q 8937 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  talk Marshal Windsor##9023
  turnin Marshal Windsor##4241 |goto Blackrock Depths - Dungeon -1,-1
step
  only Druid
  talk Deliana##16013
  turnin Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  turnin Just Compensation##8931 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  turnin Just Compensation##8932 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  turnin Just Compensation##8934 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  turnin Just Compensation##8937 |goto Ironforge 43.53,52.64
step
  talk Marshal Windsor##9023
  accept Abandoned Hope##4242 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  talk Marshal Maxwell##9560
  turnin Abandoned Hope##4242 |goto Burning Steppes 84.74,69.02
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
step
  kill Anvilrage Overseer##8889 |goto Blackrock Depths - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  talk Marshal Windsor##9023
  turnin A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Marshal Windsor##9023
  accept A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  note Return Marshal Windsor's Lost Information.
  collect Marshal Windsor's Lost Information##11464 |q 4282 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}General Angerforge
step
  talk Marshal Windsor##9023
  turnin A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Marshal Windsor##9023
  accept Jail Break!##4322 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Marshal Maxwell##9560
  turnin Jail Break!##4322 |goto Burning Steppes 84.74,69.02
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Marshal Maxwell##9560
  accept Stormwind Rendezvous##6402 |goto Burning Steppes 84.74,69.02
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  talk Reginald Windsor##12580
  turnin Stormwind Rendezvous##6402 |goto Stormwind City 73.61,91.05
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Reginald Windsor##12580
  accept The Great Masquerade##6403 |goto Stormwind City 73.61,91.05
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Highlord Bolvar Fordragon##1748
  turnin The Great Masquerade##6403 |goto Stormwind City 80.21,38.35
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Highlord Bolvar Fordragon##1748
  accept The Dragon's Eye##6501 |goto Stormwind City 80.21,38.35
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Haleh##10929
  turnin The Dragon's Eye##6501 |goto Winterspring 54.55,51.2
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  talk Haleh##10929
  accept Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note You must retrieve the Blood of the Black Dragon Champion from General Drakkisath. Drakkisath can be found in his throne room behind the Halls of Ascension in Blackrock Spire.
  collect Blood of the Black Dragon Champion##16663 |q 6502 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}General Drakkisath
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
step
  talk Haleh##10929
  turnin Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8951 |goto Eastern Plaguelands 26.11,11.3
step
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8952 |goto Eastern Plaguelands 26.11,11.3
step
  only Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8954 |goto Eastern Plaguelands 26.11,11.3
step
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8955 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8959 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  note Return to Deliana in Ironforge with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 8951 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Hunter
  note Return to Deliana in Ironforge with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  collect Beaststalker's Boots##16675 |q 8952 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Nerub'enkan
step
  only Paladin
  note Return to Deliana in Ironforge with a set of Lightforge Boots, Lightforge Legplates and Lightforge Spaulders.
  collect Lightforge Boots##16725 |q 8954 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Balnazzar
step
  only Priest
  note Return to Deliana in Ironforge with a set of Devout Sandals, Devout Skirt and Devout Mantle.
  collect Devout Sandals##16691 |q 8955 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Maleki the Pallid
step
  only Warrior
  note Return to Deliana in Ironforge with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  collect Boots of Valor##16734 |q 8959 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Kirtonos the Herald
step
  only Druid
  talk Deliana##16013
  turnin Anthion's Parting Words##8951 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  turnin Anthion's Parting Words##8952 |goto Ironforge 43.53,52.64
step
  only Paladin
  talk Deliana##16013
  turnin Anthion's Parting Words##8954 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  turnin Anthion's Parting Words##8955 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  turnin Anthion's Parting Words##8959 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
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
  talk Deliana##16013
  turnin Back to the Beginning##8997 |goto Ironforge 43.53,52.64
step
  only Druid
  talk Deliana##16013
  accept Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  accept Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  accept Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
step
  only Paladin
  talk Deliana##16013
  accept Saving the Best for Last##9002 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  accept Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
step
  only Rogue
  talk Deliana##16013
  accept Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
step
  only Warlock
  talk Deliana##16013
  accept Saving the Best for Last##9005 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  accept Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
step
  only Druid
  note Give Deliana your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 8999 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter
  note Give Deliana your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9000 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Mage
  note Give Deliana your Magister's Crown and Magister's Robes.
  collect Magister's Crown##16686 |q 9001 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Paladin
  note Give Deliana your Lightforge Helm and Lightforge Breastplate.
  collect Lightforge Helm##16727 |q 9002 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Priest
  note Give Deliana your Devout Crown and Devout Robe.
  collect Devout Crown##16693 |q 9003 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue
  note Give Deliana your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9004 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warlock
  note Give Deliana your Dreadmist Mask and Dreadmist Robe.
  collect Dreadmist Mask##16698 |q 9005 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior
  note Give Deliana your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9006 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Druid
  talk Deliana##16013
  turnin Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  turnin Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  turnin Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
step
  only Paladin
  talk Deliana##16013
  turnin Saving the Best for Last##9002 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  turnin Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
step
  only Rogue
  talk Deliana##16013
  turnin Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
step
  only Warlock
  talk Deliana##16013
  turnin Saving the Best for Last##9005 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  turnin Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
]])
