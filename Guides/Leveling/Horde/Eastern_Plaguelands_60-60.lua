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
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 36.45,90.8
step
  talk Elder Windrun##15592
  accept Windrun the Elder##8688 |goto Eastern Plaguelands 39.68,75.39
step
  talk Nathanos Blightcaller##11878
  accept To Kill With Purpose##6022 |goto Eastern Plaguelands 26.54,74.73
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
  talk Tirion Fordring##1855
  accept Demon Dogs##5542 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Carrion Grubbage##5544 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Find Myranda##5861 |goto Eastern Plaguelands 7.62,43.64
step
  talk Augustus the Touched##12384
  accept Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
  only Priest
  talk Eris Havenfire##14494
  accept A Warning##7621 |goto Eastern Plaguelands 20.96,18.4
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  only Mage
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8957 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9016 |goto Eastern Plaguelands 30.85,16.75
step
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9017 |goto Eastern Plaguelands 30.85,16.75
step
  only Warlock
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9018 |goto Eastern Plaguelands 30.85,16.75
step
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9019 |goto Eastern Plaguelands 30.85,16.75
step
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9020 |goto Eastern Plaguelands 30.85,16.75
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9021 |goto Eastern Plaguelands 30.85,16.75
step
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9022 |goto Eastern Plaguelands 30.85,16.75
step
  only Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##10497 |goto Eastern Plaguelands 30.85,16.75
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
  talk Betina Bigglezink##11035
  accept The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 81.47,59.66
step
  talk Smokey LaRue##11033
  accept The Great Fras Siabi##5214 |goto Eastern Plaguelands 80.61,57.98
step
  talk Leonid Barthalomew the Revered##11036
  accept Houses of the Holy##5243 |goto Eastern Plaguelands 81.73,57.83
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Duke Nicholas Zverenhoff##11039
  accept Above and Beyond##5263 |goto Eastern Plaguelands 81.44,59.82
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
  talk Quartermaster Miranda Breechlock##11536
  accept Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 81.62,60.0
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
  talk Smokey LaRue##11033
  accept That's Asking A Lot##6026 |goto Eastern Plaguelands 80.61,57.98
step
  talk Elder Snowcrown##15566
  accept Snowcrown the Elder##8650 |goto Eastern Plaguelands 81.51,60.52
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 81.52,58.27
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 81.52,58.27
step
  talk Huntsman Leopold##16132
  accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 81.51,58.55
step
  talk Rohan the Assassin##16131
  accept Bonescythe Digs##9126 |goto Eastern Plaguelands 81.43,58.51
step
  talk Archmage Angela Dosantos##16116
  accept The Elemental Equation##9128 |goto Eastern Plaguelands 81.52,58.27
step
  talk Korfax, Champion of the Light##16112
  accept Binding the Dreadnaught##9131 |goto Eastern Plaguelands 81.8,58.08
step
  talk Rayne##16135
  accept Savage Flora##9136 |goto Eastern Plaguelands 81.2,59.0
step
  talk Dispatch Commander Metz##16212
  accept They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 81.05,57.55
step
  talk Quartermaster Miranda Breechlock##11536
  accept Superior Armaments of Battle - Honored Amongst the Dawn##9223 |goto Eastern Plaguelands 81.62,60.0
step
  talk Korfax, Champion of the Light##16112
  accept The Fate of Ramaladni##9229 |goto Eastern Plaguelands 81.8,58.08
step
  talk Craftsman Wilhelm##16376
  accept The Only Song I Know...##9232 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Icebane Gauntlets##9234 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Icebane Bracers##9235 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Icebane Breastplate##9236 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Glacial Cloak##9237 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Glacial Wrists##9238 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Glacial Gloves##9239 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Glacial Vest##9240 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Polar Bracers##9241 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Polar Gloves##9242 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Polar Tunic##9243 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Bracers##9244 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 81.01,59.62
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Breastplate##9246 |goto Eastern Plaguelands 81.01,59.62
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
  talk Nathanos Blightcaller##11878
  accept The Scarlet Oracle, Demetria##6148 |goto Eastern Plaguelands 26.54,74.73
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
  only Priest
  talk Eris Havenfire##14494
  turnin A Warning##7621 |goto Eastern Plaguelands 20.96,18.4
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1 |tip {turninat}Stratholme - Dungeon
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1
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
  talk Betina Bigglezink##11035
  accept The Active Agent##5213 |goto Eastern Plaguelands 81.47,59.66
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
  talk Nathanos Blightcaller##11878
  turnin The Scarlet Oracle, Demetria##6148 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  turnin Duskwing, Oh How I Hate Thee...##6135 |goto Eastern Plaguelands 26.54,74.73
step
  talk Nathanos Blightcaller##11878
  accept Ramstein##6163 |goto Eastern Plaguelands 26.54,74.73
step
  talk Tirion Fordring##1855
  turnin Redemption##5742 |goto Eastern Plaguelands 7.62,43.64
step
  talk Tirion Fordring##1855
  accept Of Forgotten Memories##5781 |goto Eastern Plaguelands 7.62,43.64
step
  talk Egan##11140
  turnin The Restless Souls##5282 |goto Eastern Plaguelands 14.45,33.74
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1 |tip {turninat}Dire Maul - Dungeon
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
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
  talk Lord Maxwell Tyrosus##11034
  accept The Argent Hold##5265 |goto Eastern Plaguelands 81.74,57.96
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Legplates##9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Helmet##9037 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Bracers##9042 |goto Eastern Plaguelands 81.8,58.08
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Tunic##9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Legguards##9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Headpiece##9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Spaulders##9046 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Handguards##9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Girdle##9049 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Wristguards##9050 |goto Eastern Plaguelands 81.54,58.16
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Tunic##9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Legguards##9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Boots##9058 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Handguards##9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Girdle##9060 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 81.51,58.55
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Tunic##9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Headpiece##9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Spaulders##9071 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Boots##9072 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Handguards##9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Breastplate##9077 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Legplates##9078 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Helmet##9079 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Sabatons##9081 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Waistguard##9083 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Bracers##9084 |goto Eastern Plaguelands 81.43,58.51
step
  talk Rayne##16135
  accept Dreamwalker Tunic##9086 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Legguards##9087 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Boots##9090 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Handguards##9091 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Girdle##9092 |goto Eastern Plaguelands 81.2,59.0
step
  talk Rayne##16135
  accept Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 81.2,59.0
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Robe##9095 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Leggings##9096 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Circlet##9097 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Sandals##9099 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Gloves##9100 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Belt##9101 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  talk Archmage Angela Dosantos##16116
  accept Frostfire Bindings##9102 |goto Eastern Plaguelands 81.52,58.27
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Robe##9103 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Leggings##9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Circlet##9105 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Sandals##9107 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Gloves##9108 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Belt##9109 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Bindings##9110 |goto Eastern Plaguelands 81.39,58.23
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Robe of Faith##9111 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Leggings of Faith##9112 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Circlet of Faith##9113 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Shoulderpads of Faith##9114 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Sandals of Faith##9115 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Gloves of Faith##9116 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Belt of Faith##9117 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Bindings of Faith##9118 |goto Eastern Plaguelands 81.47,58.15
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
