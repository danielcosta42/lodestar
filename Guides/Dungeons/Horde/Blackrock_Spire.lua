-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackrock Spire", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Yeh'kinya##8579
  accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Duke Hydraxis##13278
  accept Poisoned Water##6804 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  talk Lexlort##9080
  accept Operative Bijou##4981 |goto Badlands 5.88,47.63
step
  talk Galamav the Marksman##9081
  accept The Pack Mistress##4724 |goto Badlands 5.96,47.73
step
  talk Kibler##10260
  accept Kibler's Exotic Pets##4729 |goto Burning Steppes 65.89,21.92
step
  talk Kibler##10260
  accept En-Ay-Es-Tee-Why##4862 |goto Burning Steppes 65.89,21.92
step
  kill Warlord Goretooth##9077 |goto Badlands 5.81,47.52 |tip Loot the quest item here — it starts the quest.
  accept Warlord's Command##4903 |goto Badlands 5.81,47.52
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
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Apothecary Zinge##5204
  accept Vivian Lagrave and the Darkstone Tablet##4769 |goto Undercity 50.14,67.97
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
  note Use the Aspect of Neptulon on poisoned elementals of Eastern Plaguelands. Bring 12 Discordant Bracers and the Aspect of Neptulon to Duke Hydraxis in Azshara.
  collect 12 Discordant Bracers##17309 |q 6804 |goto Eastern Plaguelands 54.91,68.84 |tip {dropsfrom}Blighted Surge, Plague Ravager, Blighted Horror
step
  note Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
  kill Dust Stormer##11744 |q 6805 |goto Silithus 21.6,22.4
step
  note Slay Halycon, pack mistress of the Bloodaxe worg.
  kill Halycon##10220 |q 4724 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler.
  collect Caged Worg Pup##12263 |q 4729 |goto Burning Steppes 65.89,21.92
step
  note Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler.
  collect 15 Spire Spider Egg##12530 |q 4862 |goto Blackrock Spire - Dungeon -1,-1
step
  note Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
  kill Overlord Wyrmthalak##9568 |q 4903 |goto Blackrock Spire - Dungeon -1,-1 |elite
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
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
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
  talk Duke Hydraxis##13278
  turnin Poisoned Water##6804 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  turnin Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  talk Bijou##10257
  turnin Operative Bijou##4981 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Galamav the Marksman##9081
  turnin The Pack Mistress##4724 |goto Badlands 5.96,47.73
step
  talk Kibler##10260
  turnin Kibler's Exotic Pets##4729 |goto Burning Steppes 65.89,21.92
step
  talk Kibler##10260
  turnin En-Ay-Es-Tee-Why##4862 |goto Burning Steppes 65.89,21.92
step
  talk Warlord Goretooth##9077
  turnin Warlord's Command##4903 |goto Badlands 5.81,47.52
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
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave and the Darkstone Tablet##4769 |goto Badlands 2.9,47.76
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
  talk Bijou##10257
  accept Bijou's Belongings##4982 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Duke Hydraxis##13278
  accept Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Warlord Goretooth##9077
  accept Eitrigg's Wisdom##4941 |goto Badlands 5.81,47.52
step
  talk Shadowmage Vivian Lagrave##9078
  accept The Darkstone Tablet##4768 |goto Badlands 2.9,47.76
step
  talk Scarshield Infiltrator##10299
  accept Seal of Ascension##4743 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  talk Lorax##10918
  accept The Demon Forge##5127 |goto Winterspring 63.79,73.76
step
  note Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
  collect First Mosh'aru Tablet##10660 |q 3527 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Theka the Martyr, Theka the Martyr Shapeshift
step
  note Find Bijou's Belongings and return them to her. You recall her mentioning that she stashed them on the bottom floor of the city.
  collect Bijou's Belongings##12345 |q 4982 |goto Blackrock Spire - Dungeon -1,-1
step
  note Bring the Eye of the Emberseer to Duke Hydraxis in Azshara.
  collect Eye of the Emberseer##17322 |q 6821 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Pyroguard Emberseer
step
  note Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath.
  collect Darkstone Tablet##12358 |q 4768 |goto Blackrock Spire - Dungeon -1,-1
step
  note Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
  collect Forged Seal of Ascension##12324 |q 4743 |goto Dustwallow Marsh 56.37,87.83
step
  note Travel to Blackrock Spire and find Goraluk Anvilcrack. Slay him and then use the Blood Stained Pike upon his corpse. After his soul has been siphoned, the pike will be Soul Stained.
  collect Soul Stained Pike##12847 |q 5127 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Goraluk Anvilcrack
step
  talk Yeh'kinya##8579
  turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
step
  talk Bijou##10257
  turnin Bijou's Belongings##4982 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Duke Hydraxis##13278
  turnin Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Thrall##4949
  turnin Eitrigg's Wisdom##4941 |goto Orgrimmar 31.73,37.82
step
  talk Shadowmage Vivian Lagrave##9078
  turnin The Darkstone Tablet##4768 |goto Badlands 2.9,47.76
step
  talk Scarshield Infiltrator##10299
  turnin Seal of Ascension##4743 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Haleh##10929
  turnin Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  talk Lorax##10918
  turnin The Demon Forge##5127 |goto Winterspring 63.79,73.76
step
  talk Yeh'kinya##8579
  accept The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Bijou##10257
  accept Bijou's Reconnaissance Report##4983 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Thrall##4949
  accept For The Horde!##4974 |goto Orgrimmar 31.73,37.82
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
  note Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar.
  collect Head of Rend Blackhand##12630 |q 4974 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Warchief Rend Blackhand
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Yeh'kinya##8579
  turnin The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Lexlort##9080
  turnin Bijou's Reconnaissance Report##4983 |goto Badlands 5.88,47.63
step
  talk Thrall##4949
  turnin For The Horde!##4974 |goto Orgrimmar 31.73,37.82
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
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Thrall##4949
  accept What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
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
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Yeh'kinya##8579
  turnin The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24
step
  talk Thrall##4949
  turnin What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  turnin Catalogue of the Wayward##5164 |goto Western Plaguelands 39.35,66.6
step
  talk Prospector Ironboot##10460
  accept The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Thrall##4949
  accept The Champion of the Horde##6567 |goto Orgrimmar 31.73,37.82
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
  talk Prospector Ironboot##10460
  turnin The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Rexxar##10182
  turnin The Champion of the Horde##6567 |goto Desolace 54,2
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
  talk Prospector Ironboot##10460
  accept The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Rexxar##10182
  accept The Testament of Rexxar##6568 |goto Desolace 54,2
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
  talk Prospector Ironboot##10460
  turnin The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Myranda the Hag##11872
  turnin The Testament of Rexxar##6568 |goto Western Plaguelands 50.79,77.85
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Myranda the Hag##11872
  accept Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  note Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete.
  collect 20 Black Dragonspawn Eye##16786 |q 6569 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Rage Talon Dragonspawn, Overlord Wyrmthalak, Rage Talon Flamescale
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  talk Myranda the Hag##11872
  turnin Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  only Druid
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  accept Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  only Mage
  talk Mokvar##16012
  accept Just Compensation##8939 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  accept Just Compensation##8940 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  accept Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  talk Myranda the Hag##11872
  accept Emberstrife##6570 |goto Western Plaguelands 50.79,77.85
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Hunter
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Mokvar in Orgrimmar.
  collect Beaststalker's Belt##16680 |q 8938 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Mage
  note Bring a Magister's Belt and a set of Magister's Gloves to Mokvar in Orgrimmar.
  collect Magister's Belt##16685 |q 8939 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Smolderthorn Mystic, Thuzadin Shadowcaster, Thuzadin Necromancer
step
  only Priest
  note Bring a Devout Belt and a set of Devout Gloves to Mokvar in Orgrimmar.
  collect Devout Belt##16696 |q 8940 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Spellbinder, Smolderthorn Shadow Priest, Firebrand Darkweaver
step
  only Warrior
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Mokvar in Orgrimmar.
  collect Belt of Valor##16736 |q 8944 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  only Druid
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  turnin Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  only Mage
  talk Mokvar##16012
  turnin Just Compensation##8939 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  turnin Just Compensation##8940 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  turnin Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  talk Emberstrife##10321
  turnin Emberstrife##6570 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Somnus##6583 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  note You must find the blue dragonflight drake champion, Scryer, and slay him. Pry his skull from his corpse and return it to Emberstrife.
  kill Scryer##10664 |goto Winterspring 52.71,55.89 |elite
  collect The Skull of Scryer##16869 |q 6582 |goto Winterspring 52.71,55.89
step
  note Destroy the drake champion of the Green Flight, Somnus. Take his skull and return it to Emberstrife.
  kill Somnus##12900 |goto Swamp of Sorrows 76,66.6 |elite
  collect The Skull of Somnus##16870 |q 6583 |goto Swamp of Sorrows 76,66.6
step
  note Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.
  kill Chronalis##8197 |goto Tanaris 64.16,48.49 |elite
  collect The Skull of Chronalis##16871 |q 6584 |goto Tanaris 64.16,48.49
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Somnus##6583 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
step
  talk Emberstrife##10321
  accept The Test of Skulls, Axtroz##6585 |goto Dustwallow Marsh 56.66,87.72
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  note Travel to Grim Batol and track down Axtroz, drake champion of the Red Flight. Destroy him and take his skull. Return the skull to Emberstrife.
  kill Axtroz##12899 |goto Wetlands 81.82,48.24 |elite
  collect The Skull of Axtroz##16872 |q 6585 |goto Wetlands 81.82,48.24
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Axtroz##6585 |goto Dustwallow Marsh 56.66,87.72
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Emberstrife##10321
  accept Ascension...##6601 |goto Dustwallow Marsh 56.66,87.72
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  talk Rexxar##10182
  turnin Ascension...##6601 |goto Desolace 54,2
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Rexxar##10182
  accept Blood of the Black Dragon Champion##6602 |goto Desolace 54,2
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rexxar.
  collect Blood of the Black Dragon Champion##16663 |q 6602 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}General Drakkisath
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Rexxar##10182
  turnin Blood of the Black Dragon Champion##6602 |goto Desolace 54,2
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
  only Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8957 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9016 |goto Eastern Plaguelands 26.11,11.3
step
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9017 |goto Eastern Plaguelands 26.11,11.3
step
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9019 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9022 |goto Eastern Plaguelands 26.11,11.3
step
  only Shaman
  note Return to Mokvar in Orgimmar with a set of Boots of Elements, Kilt of Elements and Pauldrons of Elements.
  collect Boots of Elements##16670 |q 8957 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  only Druid
  note Return to Mokvar in Orgimmar with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 9016 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Hunter
  note Return to Mokvar in Orgimmar with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  collect Beaststalker's Boots##16675 |q 9017 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Nerub'enkan
step
  only Priest
  note Return to Mokvar in Orgimmar with a set of Devout Sandals, Devout Skirt and Devout Mantle.
  collect Devout Sandals##16691 |q 9019 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Maleki the Pallid
step
  only Warrior
  note Return to Mokvar in Orgimmar with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  collect Boots of Valor##16734 |q 9022 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Kirtonos the Herald
step
  only Shaman
  talk Mokvar##16012
  turnin Anthion's Parting Words##8957 |goto Orgrimmar 34.95,38.29
step
  only Druid
  talk Mokvar##16012
  turnin Anthion's Parting Words##9016 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  turnin Anthion's Parting Words##9017 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  turnin Anthion's Parting Words##9019 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  turnin Anthion's Parting Words##9022 |goto Orgrimmar 34.95,38.29
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
  only Hunter
  talk Mokvar##16012
  accept Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  accept Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  talk Mokvar##16012
  accept Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  talk Mokvar##16012
  accept Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  talk Mokvar##16012
  accept Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  accept Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  only Mage
  talk Mokvar##16012
  accept Saving the Best for Last##9014 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Give Mokvar your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 9007 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter
  note Give Mokvar your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9008 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Priest
  note Give Mokvar your Devout Crown and Devout Robe.
  collect Devout Crown##16693 |q 9009 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue
  note Give Mokvar your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9010 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Shaman
  note Give Mokvar your Coif of Elements and Vest of Elements.
  collect Coif of Elements##16667 |q 9011 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warlock
  note Give Mokvar your Dreadmist Mask and Dreadmist Robe.
  collect Dreadmist Mask##16698 |q 9012 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior
  note Give Mokvar your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9013 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Mage
  note Give Mokvar your Magister's Crown and Magister's Robes.
  collect Magister's Crown##16686 |q 9014 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Druid
  talk Mokvar##16012
  turnin Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  turnin Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  turnin Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  talk Mokvar##16012
  turnin Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  talk Mokvar##16012
  turnin Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  talk Mokvar##16012
  turnin Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  turnin Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  only Mage
  talk Mokvar##16012
  turnin Saving the Best for Last##9014 |goto Orgrimmar 34.95,38.29
]])
