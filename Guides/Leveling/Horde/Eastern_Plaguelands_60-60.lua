-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Eastern Plaguelands (60-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Dire Maul - Dungeon (60-60)",
}, [[
step
  note {fp}Georgia
  goto Eastern Plaguelands 80.22,57.01 |tip {vendor}
step
  talk Pamela Redpath##10926
  accept Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.8
step
  note Find Pamela's doll.
  get Pamela's Doll |q 5149 |goto Eastern Plaguelands 36.45,90.8
step
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 36.45,90.8
step
  talk Elder Windrun##15592
  accept Windrun the Elder##8688 |goto Eastern Plaguelands 39.68,75.39
step
  talk Nathanos Blightcaller##11878
  accept To Kill With Purpose##6022 |goto Eastern Plaguelands 26.54,74.73
step
  note Travel to Corin's Crossing to the east and slaughter the Scourge that inhabit the town. Collect 7 pieces of Living Rot in under 10 minutes. Use the Mortar and Pestle to grind the Living Rot into Coagulated Rot.
  get To Kill With Purpose |q 6022 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  accept Un-Life's Little Annoyances##6042 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  accept The Ranger Lord's Behest##6133 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  accept The Corpulent One##6136 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  accept The Call to Command##6144 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  accept Nathanos' Ruse##6146 |goto Eastern Plaguelands 26.54,74.73
step
  note Travel to Tyr's Hand, southeast of the Marris Stead. Once there, take a bite of the Rotten Apple. While under the guise of the Scarlet Crusade, deliver the Grand Crusader's Command to Crusader Lord Valdelmar.
  get Nathanos' Ruse |q 6146 |goto Eastern Plaguelands 26.54,74.73
step
  talk Tirion Fordring##1855
  accept Demon Dogs##5542 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Carrion Grubbage##5544 |goto Eastern Plaguelands 7.62,43.64
step
  note Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
  kill Carrion Grub##8603 |q 5544 |goto Eastern Plaguelands 49.76,69.95
step
  talk Tirion Fordring##1855
  accept Find Myranda##5861 |goto Eastern Plaguelands 7.62,43.64
step
  talk Augustus the Touched##12384
  accept Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
  note Bring Augustus' Receipt Book to Augustus the Touched in Terrordale.
  collect Augustus' Receipt Book##177789 |q 6164 |goto Eastern Plaguelands 17.43,31.09
step
  only Priest
  talk Eris Havenfire##14494
  accept A Warning##7621 |goto Eastern Plaguelands 20.96,18.4
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  kill Ysida Harmon##16031 |q 8945
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  get Anthion's Strange Request |q 8947 |goto Eastern Plaguelands 30.85,16.75
step
  only Mage
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8957 |goto Eastern Plaguelands 30.85,16.75
step
  only Mage
  note Return to Mokvar in Orgimmar with a set of Boots of Elements, Kilt of Elements and Pauldrons of Elements.
  kill Highlord Omokk##9196 |q 8957 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9016 |goto Eastern Plaguelands 30.85,16.75
step
  note Return to Mokvar in Orgimmar with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  kill Mother Smolderweb##10596 |q 9016 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9017 |goto Eastern Plaguelands 30.85,16.75
step
  only Hunter
  note Return to Mokvar in Orgimmar with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  kill Nerub'enkan##10437 |q 9017 |goto Stratholme - Dungeon -1,-1 |elite
step
  only Warlock
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9018 |goto Eastern Plaguelands 30.85,16.75
step
  only Warlock
  note Return to Mokvar in Orgimmar with a set of Magister's Boots, Magister's Leggings and Magister's Mantle.
  kill Hearthsinger Forresten##10558 |q 9018 |goto Stratholme - Dungeon -1,-1 |elite
step
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9019 |goto Eastern Plaguelands 30.85,16.75
step
  only Priest
  note Return to Mokvar in Orgimmar with a set of Devout Sandals, Devout Skirt and Devout Mantle.
  kill Maleki the Pallid##10438 |q 9019 |goto Stratholme - Dungeon -1,-1 |elite
step
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9020 |goto Eastern Plaguelands 30.85,16.75
step
  only Rogue
  note Return to Mokvar in Orgimmar with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  kill Rattlegore##11622 |q 9020 |goto Scholomance - Dungeon -1,-1 |elite
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9021 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  note Return to Mokvar in Orgimmar with a set of Dreadmist Sandals, Dreadmist Leggings and Dreadmist Mantle.
  kill Baroness Anastari##10436 |q 9021 |goto Stratholme - Dungeon -1,-1 |elite
step
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9022 |goto Eastern Plaguelands 30.85,16.75
step
  only Warrior
  note Return to Mokvar in Orgimmar with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  get Anthion's Parting Words |q 9022 |goto Eastern Plaguelands 30.85,16.75
step
  only Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##10497 |goto Eastern Plaguelands 30.85,16.75
step
  only Paladin
  note Return to Mokvar in Orgimmar with a set of Lightforge Boots, Lightforge Legplates and Lightforge Spaulders.
  get Anthion's Parting Words |q 10497 |goto Eastern Plaguelands 30.85,16.75
step
  note Travel to the northern borders of the Eastern Plaguelands and recover the Quel'Thalas Registry. The item is somewhere in the Quel'Lithien lodge.
  kill Pathstrider##8565 |q 6133 |goto Eastern Plaguelands 53.72,18.65
step
  note Find Borelgore in the northern wastes of Eastern Plaguelands and destroy him. Return to Nathanos Blightcaller when the mission is complete.
  kill Borelgore##11896 |q 6136 |goto Eastern Plaguelands 54.83,31.82
step
  talk Carlin Redpath##11063
  accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.52,59.77
step
  note Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
  collect Horgus' Skull##176208 |q 5181 |goto Eastern Plaguelands 51.11,49.93
step
  talk Betina Bigglezink##11035
  accept The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 81.47,59.66
step
  note Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
  kill Ravaged Cadaver##10381 |q 5212 |goto Stratholme - Dungeon -1,-1 |elite
step
  talk Smokey LaRue##11033
  accept The Great Fras Siabi##5214 |goto Eastern Plaguelands 80.61,57.98
step
  note Find Fras Siabi's smoke shop in Stratholme and recover a box of Siabi's Premium Tobacco. Return to Smokey LaRue when the job is done.
  get The Great Fras Siabi |q 5214 |goto Eastern Plaguelands 80.61,57.98
step
  talk Leonid Barthalomew the Revered##11036
  accept Houses of the Holy##5243 |goto Eastern Plaguelands 81.73,57.83
step
  note Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
  collect Supply Crate##176224 |q 5243 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Duke Nicholas Zverenhoff##11039
  accept Above and Beyond##5263 |goto Eastern Plaguelands 81.44,59.82
step
  note Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
  kill Baron Rivendare##10440 |q 5263 |goto Stratholme - Dungeon -1,-1 |elite
step
  talk Caretaker Alen##11038
  accept The Restless Souls##5281 |goto Eastern Plaguelands 79.55,63.86
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 81.73,57.83
step
  talk Leonid Barthalomew the Revered##11036
  accept Soulbound Keepsake##5465 |goto Eastern Plaguelands 81.73,57.83
step
  talk Quartermaster Miranda Breechlock##11536
  accept Mantles of the Dawn##5513 |goto Eastern Plaguelands 81.62,60.0
step
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  get Mantles of the Dawn |q 5513 |goto Eastern Plaguelands 81.62,60.0
step
  talk Quartermaster Miranda Breechlock##11536
  accept Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 81.62,60.0
step
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  get Chromatic Mantle of the Dawn |q 5517 |goto Eastern Plaguelands 81.62,60.0
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 81.47,59.66
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 81.73,57.83
step
  talk Carlin Redpath##11063
  accept Return to Chromie##5941 |goto Eastern Plaguelands 81.52,59.77
step
  talk Caretaker Alen##11038
  accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.55,63.86
step
  note Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
  kill Zaeldarr the Outcast##12250 |q 6021 |goto Eastern Plaguelands 27.47,84.86
step
  talk Smokey LaRue##11033
  accept That's Asking A Lot##6026 |goto Eastern Plaguelands 80.61,57.98
step
  note Smokey LaRue wants you to get 2 Thorium Bars, 1 Golden Rod, 8 Hi-Explosive Bombs, and 8 Unstable Triggers.
  get That's Asking A Lot |q 6026 |goto Eastern Plaguelands 80.61,57.98
step
  talk Elder Snowcrown##15566
  accept Snowcrown the Elder##8650 |goto Eastern Plaguelands 81.51,60.52
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9121 |goto Burning Steppes 62.76,44.03
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 81.52,58.27
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 2 Arcane Crystals, 1 Nexus Crystal and 30 gold pieces. You must also be Revered with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9122 |goto Burning Steppes 62.76,44.03
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 81.52,58.27
step
  talk Huntsman Leopold##16132
  accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 81.51,58.55
step
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands wants 30 Crypt Fiend Parts.
  kill Crypt Stalker##8555 |q 9124 |goto Eastern Plaguelands 15.44,33.03
step
  talk Rohan the Assassin##16131
  accept Bonescythe Digs##9126 |goto Eastern Plaguelands 81.43,58.51
step
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands wants 30 Bone Fragments.
  kill Skeletal Flayer##1783 |q 9126 |goto Western Plaguelands 38.99,58.49
step
  talk Archmage Angela Dosantos##16116
  accept The Elemental Equation##9128 |goto Eastern Plaguelands 81.52,58.27
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 30 Core of Elements.
  kill Scorching Elemental##6520 |q 9128 |goto Un'Goro Crater 52.73,48.83
step
  talk Korfax, Champion of the Light##16112
  accept Binding the Dreadnaught##9131 |goto Eastern Plaguelands 81.8,58.08
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants 30 Dark Iron Scraps.
  kill Dark Iron Steamsmith##5840 |q 9131 |goto Searing Gorge 40.01,49.65
step
  talk Rayne##16135
  accept Savage Flora##9136 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands wants 30 Savage Fronds.
  kill Cursed Sycamore##5881 |q 9136 |goto Feralas 55.43,67.61
step
  talk Dispatch Commander Metz##16212
  accept They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 81.05,57.55
step
  note Dispatch Commander Metz at Light's Hope Chapel in the Eastern Plaguelands wants an Argent Dawn Valor Token.
  get They Call Me "The Rooster" |q 9141 |goto Eastern Plaguelands 81.05,57.55
step
  talk Quartermaster Miranda Breechlock##11536
  accept Superior Armaments of Battle - Honored Amongst the Dawn##9223 |goto Eastern Plaguelands 81.62,60.0
step
  note For 20 Insignias of the Dawn and 20 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  get Superior Armaments of Battle - Honored Amongst the Dawn |q 9223 |goto Eastern Plaguelands 81.62,60.0
step
  talk Korfax, Champion of the Light##16112
  accept The Fate of Ramaladni##9229 |goto Eastern Plaguelands 81.8,58.08
step
  note Enter Naxxramas and uncover the Fate of Ramaladni.
  kill Dread Creeper##15974 |q 9229 |goto Naxxramas - Raid -1,-1 |elite
step
  talk Craftsman Wilhelm##16376
  accept The Only Song I Know...##9232 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 2 Frozen Runes, 2 Essence of Water, 2 Blue Sapphires and 30 gold pieces.
  collect Frozen Rune##181287 |q 9232 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icebane Gauntlets##9234 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essences of Water and 200 gold.
  collect Frozen Rune##181287 |q 9234 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icebane Bracers##9235 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essence of Water and 200 gold.
  collect Frozen Rune##181287 |q 9235 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icebane Breastplate##9236 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Thorium Bars, 2 Arcanite Bars, 4 Essence of Water and 300 gold. You will also need to be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##181287 |q 9236 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Cloak##9237 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 2 Essences of Water, 4 Ironweb Spider Silks and 200 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##181287 |q 9237 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Wrists##9238 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 2 Bolts of Runecloth, 2 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##181287 |q 9238 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Gloves##9239 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 4 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##181287 |q 9239 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Vest##9240 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 8 Bolts of Runecloth, 6 Essences of Water, 4 Ironweb Spider Silks and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##181287 |q 9240 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Bracers##9241 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##181287 |q 9241 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Gloves##9242 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##181287 |q 9242 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Tunic##9243 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Enchanted Leathers, 5 Essences of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##181287 |q 9243 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Bracers##9244 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 16 Heavy Scorpid Scales, 5 Essences of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##181287 |q 9244 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 16 Heavy Scorpid Scale, 5 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##181287 |q 9245 |goto Naxxramas - Raid -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Breastplate##9246 |goto Eastern Plaguelands 81.01,59.62
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 24 Heavy Scorpid Scale, 7 Essence of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##181287 |q 9246 |goto Naxxramas - Raid -1,-1
step
  talk Emissary Gormok##17072
  accept Bolstering Our Defenses##9665 |goto Eastern Plaguelands 80.04,57.44
step
  note Slay 20 Noxious Plaguebats and 10 Monstrous Plaguebats. Return to Nathanos Blightcaller when you are finished.
  kill Noxious Plaguebat##8601 |q 6042 |goto Eastern Plaguelands 60.11,60.99
step
  talk Crusader Lord Valdelmar##11898
  turnin Nathanos' Ruse##6146 |goto Eastern Plaguelands 85.42,83.24
step
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11 |tip {turninat}Western Plaguelands
step
  talk Crusader Lord Valdelmar##11898
  accept Return to Nathanos##6147 |goto Eastern Plaguelands 85.42,83.24
step
  talk Varimathras##2425
  turnin The Call to Command##6144 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  talk Pamela Redpath##10926
  turnin Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.8
step
  turnin Hidden Treasures##5942 |goto Eastern Plaguelands 36.2,90.58
step
  talk Pamela Redpath##10926
  accept Auntie Marlene##5152 |goto Eastern Plaguelands 36.45,90.8
step
  talk Pamela Redpath##10926
  accept Uncle Carlin##5241 |goto Eastern Plaguelands 36.45,90.8
step
  talk Chromie##10667
  turnin Return to Chromie##5941 |goto Western Plaguelands 39.46,66.76 |tip {turninat}Western Plaguelands
step
  talk Marlene Redpath##10927
  turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.57 |tip {turninat}Western Plaguelands
step
  talk Myranda the Hag##11872
  turnin Find Myranda##5861 |goto Western Plaguelands 50.79,77.85 |tip {turninat}Western Plaguelands
step
  talk Elder Windrun##15592
  turnin Windrun the Elder##8688 |goto Eastern Plaguelands 39.68,75.39
step
  note Slay 30 Plaguebats and return to Tirion Fordring.
  kill Plaguebat##8600 |q 5543 |goto Eastern Plaguelands 33.87,77.16
step
  note Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Gormok at Light's Hope Chapel.
  kill <TXT>Crown Guard Capture Quest Doodad##17689 |q 9665 |goto Eastern Plaguelands 39.72,75.39
step
  talk Nathanos Blightcaller##11878
  turnin Return to Nathanos##6147 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  turnin To Kill With Purpose##6022 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  turnin Un-Life's Little Annoyances##6042 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  turnin The Ranger Lord's Behest##6133 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  turnin The Corpulent One##6136 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  accept Duskwing, Oh How I Hate Thee...##6135 |goto Eastern Plaguelands 26.54,74.73
step
  note Find Duskwing and slay him. From the corpse, recover a Patch of Duskwing's Fur and return it to Nathanos Blightcaller.
  kill Duskwing##11897 |q 6135 |goto Eastern Plaguelands 30.82,69.75
step
  talk Nathanos Blightcaller##11878
  accept The Scarlet Oracle, Demetria##6148 |goto Eastern Plaguelands 26.54,74.73
step
  note The Scarlet Crusade is on the move. Somewhere along the road from Tyr's Hand to Stratholme you will find the Oracle, Demetria, and her entourage. Hunt her down and slay her. Return to Nathanos Blightcaller should you succeed.
  kill Demetria##12339 |q 6148 |elite
step
  note Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
  kill Plaguehound Runt##8596 |q 5542 |goto Eastern Plaguelands 24.23,74.77
step
  talk Tirion Fordring##1855
  turnin Demon Dogs##5542 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Redemption##5742 |goto Eastern Plaguelands 7.62,43.64
step
  only Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##10497 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  talk Augustus the Touched##12384
  turnin Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
  talk Egan##11140
  turnin The Restless Souls##5281 |goto Eastern Plaguelands 14.45,33.74
step
  talk Mokvar##16012
  turnin Anthion's Parting Words##9016 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin Anthion's Parting Words##9017 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
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
  only Druid
  talk Mokvar##16012
  turnin Anthion's Parting Words##9021 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin Anthion's Parting Words##9022 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin Anthion's Parting Words##8957 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  talk Egan##11140
  accept The Restless Souls##5282 |goto Eastern Plaguelands 14.45,33.74
step
  note Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!
  kill Restless Soul##11122 |q 5282
step
  only Priest
  talk Eris Havenfire##14494
  turnin A Warning##7621 |goto Eastern Plaguelands 20.96,18.4
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1 |tip {turninat}Stratholme - Dungeon
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1 |elite
step
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 30.85,16.75
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Caretaker Alen##11038
  turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.55,63.86
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Superior Armaments of Battle - Honored Amongst the Dawn##9223 |goto Eastern Plaguelands 81.62,60.0
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Mantles of the Dawn##5513 |goto Eastern Plaguelands 81.62,60.0
step
  talk Smokey LaRue##11033
  turnin That's Asking A Lot##6026 |goto Eastern Plaguelands 80.61,57.98
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 81.62,60.0
step
  talk Korfax, Champion of the Light##16112
  turnin The Fate of Ramaladni##9229 |goto Eastern Plaguelands 81.8,58.08
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Above and Beyond##5263 |goto Eastern Plaguelands 81.44,59.82
step
  talk Craftsman Wilhelm##16376
  turnin The Only Song I Know...##9232 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Gauntlets##9234 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Bracers##9235 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Breastplate##9236 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Cloak##9237 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Wrists##9238 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Gloves##9239 |goto Eastern Plaguelands 81.01,59.62
step
  talk Betina Bigglezink##11035
  turnin Plagued Hatchlings##5529 |goto Eastern Plaguelands 81.47,59.66
step
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 81.47,59.66
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Vest##9240 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Polar Bracers##9241 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Polar Gloves##9242 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  turnin Polar Tunic##9243 |goto Eastern Plaguelands 81.01,59.62
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 81.52,58.27
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 81.52,58.27
step
  talk Huntsman Leopold##16132
  turnin Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 81.51,58.55
step
  talk Rohan the Assassin##16131
  turnin Bonescythe Digs##9126 |goto Eastern Plaguelands 81.43,58.51
step
  talk Archmage Angela Dosantos##16116
  turnin The Elemental Equation##9128 |goto Eastern Plaguelands 81.52,58.27
step
  talk Korfax, Champion of the Light##16112
  turnin Binding the Dreadnaught##9131 |goto Eastern Plaguelands 81.8,58.08
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Bracers##9244 |goto Eastern Plaguelands 81.01,59.62
step
  talk Rayne##16135
  turnin Savage Flora##9136 |goto Eastern Plaguelands 81.2,59.0
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 81.01,59.62
step
  talk Dispatch Commander Metz##16212
  turnin They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 81.05,57.55
step
  talk Carlin Redpath##11063
  turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.52,59.77
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Breastplate##9246 |goto Eastern Plaguelands 81.01,59.62
step
  talk Emissary Gormok##17072
  turnin Bolstering Our Defenses##9665 |goto Eastern Plaguelands 80.04,57.44
step
  talk Elder Snowcrown##15566
  turnin Snowcrown the Elder##8650 |goto Eastern Plaguelands 81.51,60.52
step
  talk Betina Bigglezink##11035
  turnin The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 81.47,59.66
step
  talk Smokey LaRue##11033
  turnin The Great Fras Siabi##5214 |goto Eastern Plaguelands 80.61,57.98
step
  talk Carlin Redpath##11063
  turnin Uncle Carlin##5241 |goto Eastern Plaguelands 81.52,59.77
step
  talk Leonid Barthalomew the Revered##11036
  turnin Houses of the Holy##5243 |goto Eastern Plaguelands 81.73,57.83
step
  talk Carlin Redpath##11063
  accept Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.77
step
  note Free 15 Darrowshire Spirits and return to Carlin Redpath.
  kill Darrowshire Spirit##11064 |q 5211
step
  talk Betina Bigglezink##11035
  accept The Active Agent##5213 |goto Eastern Plaguelands 81.47,59.66
step
  note Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink.
  collect Scourge Data##176249 |q 5213 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  accept Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 81.44,59.82
step
  talk Smokey LaRue##11033
  accept When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 80.61,57.98
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Korfax, Champion of the Light##16112
  accept Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 81.8,58.08
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 1 Frozen Rune, 1 Blue Sapphire and 1 Arcanite Bar.
  collect Frozen Rune##181287 |q 9230 |goto Naxxramas - Raid -1,-1
step
  talk Nathanos Blightcaller##11878
  turnin The Scarlet Oracle, Demetria##6148 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  turnin Duskwing, Oh How I Hate Thee...##6135 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  accept Ramstein##6163 |goto Eastern Plaguelands 26.54,74.73
step
  note Travel to Stratholme and slay Ramstein the Gorger. Take his head as a souvenir for Nathanos.
  get Ramstein |q 6163 |goto Eastern Plaguelands 26.54,74.73
step
  talk Tirion Fordring##1855
  turnin Redemption##5742 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Of Forgotten Memories##5781 |goto Eastern Plaguelands 7.62,43.64
step
  note Travel to the Undercroft - at the southernmost section of the Eastern Plaguelands - and recover Taelan's Hammer. Return to Tirion Fordring upon completion of your objective.
  kill Taelan##20361 |q 5781 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Egan##11140
  turnin The Restless Souls##5282 |goto Eastern Plaguelands 14.45,33.74
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1 |tip {turninat}Dire Maul - Dungeon
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1 |elite
step
  note Travel to Plaguewood, northwest of Light's Hope. Destroy 8 Scourge Structures by using Smokey's Special Compound at the Mark of Detonation planted inside each building. Smokey has had the Ziggurats and Slaughterhouses marked.
  kill Scourge Structure##12247 |q 6041 |goto Eastern Plaguelands 32.96,26.17
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Korfax, Champion of the Light##16112
  turnin Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 81.8,58.08
step
  talk Lord Maxwell Tyrosus##11034
  turnin Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 81.74,57.96
step
  talk Smokey LaRue##11033
  turnin When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 80.61,57.98
step
  talk Carlin Redpath##11063
  turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.77
step
  talk Betina Bigglezink##11035
  turnin The Active Agent##5213 |goto Eastern Plaguelands 81.47,59.66
step
  talk Carlin Redpath##11063
  accept Heroes of Darrowshire##5168 |goto Eastern Plaguelands 81.52,59.77
step
  note Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
  collect Davil's Libram##176206 |q 5168 |goto Western Plaguelands 42.52,18.99
step
  talk Lord Maxwell Tyrosus##11034
  accept The Argent Hold##5265 |goto Eastern Plaguelands 81.74,57.96
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Breastplate if you bring him the following items: 1 Desecrated Breastplate, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  get Dreadnaught Breastplate |q 9034 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Legplates##9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Legplates if you bring him the following items: 1 Desecrated Legplates, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  get Dreadnaught Legplates |q 9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Helmet##9037 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Helmet if you bring him the following items: 1 Desecrated Helmet, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 1 Nexus Crystal.
  get Dreadnaught Helmet |q 9037 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Pauldrons if you bring him the following items: 1 Desecrated Pauldrons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9038 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Sabatons if you bring him the following items: 1 Desecrated Sabatons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9039 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Gauntlets if you bring him the following items: 1 Desecrated Gauntlets, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Dreadnaught Gauntlets |q 9040 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Waistguard if you bring him the following items: 1 Desecrated Waistguard, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  kill Gluth##15932 |q 9041 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Bracers##9042 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Bracers if you bring him the following items: 1 Desecrated Bracers, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 1 Nexus Crystal.
  kill Gluth##15932 |q 9042 |goto Naxxramas - Raid -1,-1 |raid
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Tunic##9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  get Redemption Tunic |q 9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Legguards##9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  get Redemption Legguards |q 9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Headpiece##9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 2 Cured Rugged Hides.
  get Redemption Headpiece |q 9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Spaulders##9046 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 2 Nexus Crystals.
  kill Grobbulus##15931 |q 9046 |goto Naxxramas - Raid -1,-1 |raid
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9047 |goto Naxxramas - Raid -1,-1 |raid
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Handguards##9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Redemption Handguards |q 9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Girdle##9049 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9049 |goto Naxxramas - Raid -1,-1 |raid
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Wristguards##9050 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9050 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Tunic##9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  get Cryptstalker Tunic |q 9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Legguards##9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  get Cryptstalker Legguards |q 9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  get Cryptstalker Headpiece |q 9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9057 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Boots##9058 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9058 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Handguards##9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Cryptstalker Handguards |q 9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Girdle##9060 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9060 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9061 |goto Naxxramas - Raid -1,-1 |raid
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Tunic##9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  get Earthshatter Tunic |q 9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  get Earthshatter Legguards |q 9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Headpiece##9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  get Earthshatter Headpiece |q 9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Spaulders##9071 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 2 Mooncloth.
  kill Grobbulus##15931 |q 9071 |goto Naxxramas - Raid -1,-1 |raid
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Boots##9072 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9072 |goto Naxxramas - Raid -1,-1 |raid
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Handguards##9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Earthshatter Handguards |q 9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9074 |goto Naxxramas - Raid -1,-1 |raid
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9075 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Breastplate##9077 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Breastplate if you bring him the following: 1 Desecrated Breastplate, 25 Wartorn Leather Scraps, 2 Arcanite Bars and 6 Cured Rugged Hides.
  get Bonescythe Breastplate |q 9077 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Legplates##9078 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Legplates if you bring him the following: 1 Desecrated Legplates, 20 Wartorn Leather Scraps, 1 Arcanite Bar, 8 Cured Rugged Hides and 100 gold pieces.
  get Bonescythe Legplates |q 9078 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Helmet##9079 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Helmet if you bring him the following: 1 Desecrated Helmet, 15 Wartorn Leather Scraps, 8 Cured Rugged Hides, 1 Nexus Crystal and 75 gold pieces.
  get Bonescythe Helmet |q 9079 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Pauldrons if you bring him the following: 1 Desecrated Pauldrons, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 50 gold pieces.
  kill Grobbulus##15931 |q 9080 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Sabatons##9081 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Sabatons if you bring him the following: 1 Desecrated Sabatons, 12 Wartorn Leather Scraps, 3 Cured Rugged Hides, 2 Nexus Crystals and 25 gold pieces.
  kill Gluth##15932 |q 9081 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Gauntlets if you bring him the following: 1 Desecrated Gauntlets, 8 Wartorn Leather Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Bonescythe Gauntlets |q 9082 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Waistguard##9083 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Waistguard if you bring him the following: 1 Desecrated Waistguard, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 15 gold pieces.
  kill Gluth##15932 |q 9083 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Bracers##9084 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Bracers if you bring him the following: 1 Desecrated Bracers, 6 Wartorn Leather Scraps, 1 Arcanite Bar, 2 Cured Rugged Hides and 10 gold pieces.
  kill Gluth##15932 |q 9084 |goto Naxxramas - Raid -1,-1 |raid
step
  talk Rayne##16135
  accept Dreamwalker Tunic##9086 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Tunic if you bring her the following: 1 Desecrated Tunic, 25 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  get Dreamwalker Tunic |q 9086 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Legguards##9087 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Legguards if you bring her the following: 1 Desecrated Legguards, 20 Wartorn Leather Scraps, 8 Cured Rugged Hides and 1 Nexus Crystal.
  get Dreamwalker Legguards |q 9087 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Headpiece if you bring her the following: 1 Desecrated Headpiece, 15 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  get Dreamwalker Headpiece |q 9088 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Spaulders if you bring her the following: 1 Desecrated Spaulders, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  kill Grobbulus##15931 |q 9089 |goto Naxxramas - Raid -1,-1 |raid
step
  talk Rayne##16135
  accept Dreamwalker Boots##9090 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Boots if you bring her the following: 1 Desecrated Boots, 12 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9090 |goto Naxxramas - Raid -1,-1 |raid
step
  talk Rayne##16135
  accept Dreamwalker Handguards##9091 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Handguards if you bring her the following: 1 Desecrated Handguards, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  get Dreamwalker Handguards |q 9091 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Girdle##9092 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Girdle if you bring her the following: 1 Desecrated Girdle, 8 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9092 |goto Naxxramas - Raid -1,-1 |raid
step
  talk Rayne##16135
  accept Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Wristguards if you bring her the following: 1 Desecrated Wristguards, 6 Wartorn Leather Scraps, 1 Arcane Crystal and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9093 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Robe##9095 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Robe if you bring her the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Frostfire Robe |q 9095 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Leggings##9096 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Leggings if you bring her the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Frostfire Leggings |q 9096 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Circlet##9097 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Circlet if you bring her the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  get Frostfire Circlet |q 9097 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Shoulderpads if you bring her the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9098 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Sandals##9099 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Sandals if you bring her the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9099 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Gloves##9100 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Gloves if you bring her the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  get Frostfire Gloves |q 9100 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Belt##9101 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Belt if you bring her the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  kill Gluth##15932 |q 9101 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Bindings##9102 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Bindings if you bring her the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  kill Gluth##15932 |q 9102 |goto Naxxramas - Raid -1,-1 |raid
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Robe##9103 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Robe if you bring him the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Plagueheart Robe |q 9103 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Leggings##9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Leggings if you bring him the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Plagueheart Leggings |q 9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Circlet##9105 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Circlet if you bring him the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  get Plagueheart Circlet |q 9105 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Shoulderpads if you bring him the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9106 |goto Naxxramas - Raid -1,-1 |raid
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Sandals##9107 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Sandals if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9107 |goto Naxxramas - Raid -1,-1 |raid
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Gloves##9108 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Gloves if you bring him the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  get Plagueheart Gloves |q 9108 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Belt##9109 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Belt if you bring him the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  kill Gluth##15932 |q 9109 |goto Naxxramas - Raid -1,-1 |raid
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Bindings##9110 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Bindings if you bring him the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  kill Gluth##15932 |q 9110 |goto Naxxramas - Raid -1,-1 |raid
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Robe of Faith##9111 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Robe of Faith if you bring him the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Robe of Faith |q 9111 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Leggings of Faith##9112 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Leggings of Faith if you bring him the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Leggings of Faith |q 9112 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Circlet of Faith##9113 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Circlet of Faith if you bring him the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  get Circlet of Faith |q 9113 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Shoulderpads of Faith##9114 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Shoulderpads of Faith if you bring him the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9114 |goto Naxxramas - Raid -1,-1 |raid
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Sandals of Faith##9115 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Sandals of Faith if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9115 |goto Naxxramas - Raid -1,-1 |raid
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Gloves of Faith##9116 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Gloves of Faith if you bring him the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  get Gloves of Faith |q 9116 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Belt of Faith##9117 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Belt of Faith if you bring him the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  kill Gluth##15932 |q 9117 |goto Naxxramas - Raid -1,-1 |raid
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Bindings of Faith##9118 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Bindings of Faith if you bring him the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  kill Gluth##15932 |q 9118 |goto Naxxramas - Raid -1,-1 |raid
step
  talk Nathanos Blightcaller##11878
  turnin Ramstein##6163 |goto Eastern Plaguelands 26.54,74.73
step
  talk Tirion Fordring##1855
  turnin Of Forgotten Memories##5781 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Of Lost Honor##5845 |goto Eastern Plaguelands 7.62,43.64
step
  note Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
  collect Symbol of Lost Honor##177264 |q 5845 |goto Eastern Plaguelands 71.33,33.97
step
  talk Carlin Redpath##11063
  turnin Heroes of Darrowshire##5168 |goto Eastern Plaguelands 81.52,59.77
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Legplates##9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Helmet##9037 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Bracers##9042 |goto Eastern Plaguelands 81.8,58.08
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Tunic##9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Legguards##9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Headpiece##9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Spaulders##9046 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Handguards##9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Girdle##9049 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Wristguards##9050 |goto Eastern Plaguelands 81.54,58.16
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Tunic##9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Legguards##9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Boots##9058 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Handguards##9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Girdle##9060 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 81.51,58.55
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Tunic##9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Headpiece##9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Spaulders##9071 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Boots##9072 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Handguards##9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Breastplate##9077 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Legplates##9078 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Helmet##9079 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Sabatons##9081 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Waistguard##9083 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Bracers##9084 |goto Eastern Plaguelands 81.43,58.51
step
  talk Rayne##16135
  turnin Dreamwalker Tunic##9086 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  turnin Dreamwalker Legguards##9087 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  turnin Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  turnin Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  turnin Dreamwalker Boots##9090 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  turnin Dreamwalker Handguards##9091 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  turnin Dreamwalker Girdle##9092 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  turnin Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 81.2,59.0
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Robe##9095 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Leggings##9096 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Circlet##9097 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Sandals##9099 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Gloves##9100 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Belt##9101 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Bindings##9102 |goto Eastern Plaguelands 81.52,58.27
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Robe##9103 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Leggings##9104 |goto Eastern Plaguelands 81.39,58.23
step
  turnin The Argent Hold##5265 |goto Eastern Plaguelands 81.81,57.96
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Circlet##9105 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Sandals##9107 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Gloves##9108 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Belt##9109 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Bindings##9110 |goto Eastern Plaguelands 81.39,58.23
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Robe of Faith##9111 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Leggings of Faith##9112 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Circlet of Faith##9113 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Shoulderpads of Faith##9114 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Sandals of Faith##9115 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Gloves of Faith##9116 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Belt of Faith##9117 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Bindings of Faith##9118 |goto Eastern Plaguelands 81.47,58.15
step
  talk Tirion Fordring##1855
  turnin Of Lost Honor##5845 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Of Love and Family##5846 |goto Eastern Plaguelands 7.62,43.64
step
  talk Artist Renfray##11936
  turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37 |tip {turninat}Western Plaguelands
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945
step
  note {travel}Dire Maul - Dungeon
  goto Dire Maul - Dungeon -1,-1
]])
