-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackrock Spire", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "cce2a9dd",
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
  note Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
  collect Warosh's Mojo##12712 |q 4867 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Urok Doomhowl
step
  note In the heart of Blackrock Spire you will find Mother Smolderweb. Engage her and get her to poison you. Chances are good that you will have to kill her as well. Return to Ragged John when you are poisoned so that he can 'milk' you.
  talk Ragged John##9563 |q 4866 |goto Burning Steppes 65.01,23.76
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
  talk Warosh##10799
  turnin Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  note Talk to Malyfous Darkhammer in Everlook.
  talk Malyfous Darkhammer##10637
  turnin Pip Quickwit, At Your Service!##5047 |goto Winterspring 60.99,38.78
step
  note Take General Drakkisath's Command to Marshal Maxwell in Burning Steppes.
  talk Marshal Maxwell##9560
  turnin General Drakkisath's Command##5089 |goto Burning Steppes 84.74,69.02
step
  note Travel to Winterspring and find Haleh. Give her Awbee's scale.
  talk Haleh##10929
  turnin The Matron Protectorate##5160 |goto Winterspring 54.55,51.2
step
  talk Ragged John##9563
  turnin Mother's Milk##4866 |goto Burning Steppes 65.01,23.76
step
  note Speak with Mayara Brightwing in the Burning Steppes.
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
  talk Bijou##10257
  accept Message to Maxwell##5002 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Duke Hydraxis##13278
  accept Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Marshal Maxwell##9560
  accept General Drakkisath's Demise##5102 |goto Burning Steppes 84.74,69.02
step
  talk Mayara Brightwing##9565
  accept Doomrigger's Clasp##4764 |goto Burning Steppes 84.84,69.12
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
  note Give Tinkee's Letter to Felnok Steelspring.
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
step
  note Travel to the Burning Steppes and give Bijou's Information to Marshal Maxwell.
  talk Marshal Maxwell##9560
  turnin Message to Maxwell##5002 |goto Burning Steppes 84.74,69.02
step
  talk Duke Hydraxis##13278
  turnin Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Marshal Maxwell##9560
  turnin General Drakkisath's Demise##5102 |goto Burning Steppes 84.74,69.02
step
  talk Mayara Brightwing##9565
  turnin Doomrigger's Clasp##4764 |goto Burning Steppes 84.84,69.12
step
  note Speak with Haleh if you wish to continue.
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
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Marshal Maxwell##9560
  accept Maxwell's Mission##5081 |goto Burning Steppes 84.74,69.02
step
  talk Mayara Brightwing##9565
  accept Delivery to Ridgewell##4765 |goto Burning Steppes 84.84,69.12
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
  talk Yeh'kinya##8579
  turnin The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Marshal Maxwell##9560
  turnin Maxwell's Mission##5081 |goto Burning Steppes 84.74,69.02
step
  note Bring Ridgewell's Crate to Remington Ridgewell in Stormwind.
  talk Count Remington Ridgewell##2285
  turnin Delivery to Ridgewell##4765 |goto Stormwind City 76.94,47.83
step
  note Speak with Jeziba in the Plaguelands. He resides in Andorhal.
  talk Jeziba##10976
  turnin Wrath of the Blue Flight##5162 |goto Western Plaguelands 39.37,66.78
step
  talk Yeh'kinya##8579
  accept The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Jeziba##10976
  accept Catalogue of the Wayward##5164 |goto Western Plaguelands 39.37,66.78
step
  note Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
  collect Filled Egg of Hakkar##10662 |q 3528 |goto Tanaris 66.99,22.36
step
  talk Yeh'kinya##8579
  turnin The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  note Bring Felnok's Package to Tinkee Steamboil in the Burning Steppes.
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24
step
  note Read from the Catalogue of the Wayward.
  turnin Catalogue of the Wayward##5164 |goto Western Plaguelands 39.35,66.6
step
  talk Prospector Ironboot##10460
  accept The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
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
  talk Jeziba##10976
  turnin Breastplate of the Chromatic Flight##5166 |goto Western Plaguelands 39.37,66.78
step
  talk Jeziba##10976
  turnin Legplates of the Chromatic Defier##5167 |goto Western Plaguelands 39.37,66.78
step
  note Speak with Tinkee Steamboil.
  talk Tinkee Steamboil##10267
  turnin Tinkee Steamboil##4907 |goto Burning Steppes 65.24,24
step
  talk Prospector Ironboot##10460
  accept The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  note Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Fifth Mosh'aru Tablet##12740 |q 4788 |goto Blackrock Spire - Dungeon -1,-1
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  collect Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Prospector Ironboot##10460
  turnin The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
]])
