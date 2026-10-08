-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Naxxramas", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
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
  kill Kel'Thuzad##15990 |goto Naxxramas - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Fall of Kel'Thuzad##9120 |goto Naxxramas - Dungeon -1,-1
step
  kill Master Craftsman Omarion##16365 |goto Naxxramas - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Omarion's Handbook##9233 |goto Naxxramas - Dungeon -1,-1
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Dungeon -1,-1 |elite
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  talk Father Inigo Montoy##16113
  turnin The Fall of Kel'Thuzad##9120 |goto Eastern Plaguelands 71.66,48.58
step
  talk Craftsman Wilhelm##16376
  turnin Omarion's Handbook##9233 |goto Eastern Plaguelands 71.24,49.9
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Legplates##9036 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Helmet##9037 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Bracers##9042 |goto Eastern Plaguelands 71.95,48.52
step
  talk Korfax, Champion of the Light##16112
  accept The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Robe of Faith##9111 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Leggings of Faith##9112 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Circlet of Faith##9113 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Shoulderpads of Faith##9114 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Sandals of Faith##9115 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Gloves of Faith##9116 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Belt of Faith##9117 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Bindings of Faith##9118 |goto Eastern Plaguelands 71.66,48.58
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Tunic##9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Legguards##9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Headpiece##9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Spaulders##9046 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Boots##9047 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Handguards##9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Girdle##9049 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Wristguards##9050 |goto Eastern Plaguelands 71.72,48.59
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Robe##9103 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Leggings##9104 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Circlet##9105 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Sandals##9107 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Gloves##9108 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Belt##9109 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Bindings##9110 |goto Eastern Plaguelands 71.58,48.65
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Robe##9095 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Leggings##9096 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Circlet##9097 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Sandals##9099 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Gloves##9100 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Belt##9101 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Bindings##9102 |goto Eastern Plaguelands 71.7,48.69
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Breastplate##9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Legplates##9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Helmet##9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Sabatons##9081 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Waistguard##9083 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Bracers##9084 |goto Eastern Plaguelands 71.62,48.91
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Tunic##9054 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Legguards##9055 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Boots##9058 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Handguards##9059 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Girdle##9060 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 71.69,48.94
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Tunic##9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Legguards##9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Boots##9090 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Handguards##9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Girdle##9092 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 71.41,49.35
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Tunic##9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Legguards##9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Headpiece##9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Spaulders##9071 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Boots##9072 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Handguards##9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Girdle##9074 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Wristguards##9075 |goto Eastern Plaguelands 71.34,49.36
step
  talk Craftsman Wilhelm##16376
  accept The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  accept Icebane Gauntlets##9234 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  accept Icebane Bracers##9235 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  accept Icebane Breastplate##9236 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  accept Glacial Cloak##9237 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  talk Craftsman Wilhelm##16376
  accept Glacial Wrists##9238 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  talk Craftsman Wilhelm##16376
  accept Glacial Gloves##9239 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  talk Craftsman Wilhelm##16376
  accept Glacial Vest##9240 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  talk Craftsman Wilhelm##16376
  accept Polar Bracers##9241 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  talk Craftsman Wilhelm##16376
  accept Polar Gloves##9242 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  talk Craftsman Wilhelm##16376
  accept Polar Tunic##9243 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  accept Icy Scale Bracers##9244 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  accept Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  accept Icy Scale Breastplate##9246 |goto Eastern Plaguelands 71.24,49.9
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Breastplate if you bring him the following items: 1 Desecrated Breastplate, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Breastplate##22349 |q 9034 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Legplates if you bring him the following items: 1 Desecrated Legplates, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Legplates##22352 |q 9036 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Helmet if you bring him the following items: 1 Desecrated Helmet, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 1 Nexus Crystal.
  collect Desecrated Helmet##22353 |q 9037 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Pauldrons if you bring him the following items: 1 Desecrated Pauldrons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Pauldrons##22354 |q 9038 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Sabatons if you bring him the following items: 1 Desecrated Sabatons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Sabatons##22358 |q 9039 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Gauntlets if you bring him the following items: 1 Desecrated Gauntlets, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Gauntlets##22357 |q 9040 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Waistguard if you bring him the following items: 1 Desecrated Waistguard, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Waistguard##22356 |q 9041 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Bracers if you bring him the following items: 1 Desecrated Bracers, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 1 Nexus Crystal.
  collect Desecrated Bracers##22355 |q 9042 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  note Enter Naxxramas and uncover the Fate of Ramaladni.
  collect Fate of Ramaladni##22708 |q 9229 |goto Naxxramas - Dungeon -1,-1 |elite |tip {dropsfrom}Dread Creeper, Carrion Spinner, Venom Stalker
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Robe of Faith if you bring him the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Robe##22351 |q 9111 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Leggings of Faith if you bring him the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Leggings##22366 |q 9112 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Circlet of Faith if you bring him the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  collect Desecrated Circlet##22367 |q 9113 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Shoulderpads of Faith if you bring him the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Shoulderpads##22368 |q 9114 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Sandals of Faith if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Sandals##22372 |q 9115 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Gloves of Faith if you bring him the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  collect Desecrated Gloves##22371 |q 9116 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Belt of Faith if you bring him the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  collect Desecrated Belt##22370 |q 9117 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Bindings of Faith if you bring him the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  collect Desecrated Bindings##22369 |q 9118 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Legguards##22359 |q 9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 2 Cured Rugged Hides.
  collect Desecrated Headpiece##22360 |q 9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Spaulders##22361 |q 9046 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Boots##22365 |q 9047 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9049 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9050 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Robe if you bring him the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Robe##22351 |q 9103 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Leggings if you bring him the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Leggings##22366 |q 9104 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Circlet if you bring him the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  collect Desecrated Circlet##22367 |q 9105 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Shoulderpads if you bring him the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Shoulderpads##22368 |q 9106 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Sandals if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Sandals##22372 |q 9107 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Gloves if you bring him the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  collect Desecrated Gloves##22371 |q 9108 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Belt if you bring him the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  collect Desecrated Belt##22370 |q 9109 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Bindings if you bring him the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  collect Desecrated Bindings##22369 |q 9110 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Robe if you bring her the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Robe##22351 |q 9095 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Leggings if you bring her the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Leggings##22366 |q 9096 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Circlet if you bring her the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  collect Desecrated Circlet##22367 |q 9097 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Shoulderpads if you bring her the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Shoulderpads##22368 |q 9098 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Sandals if you bring her the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Sandals##22372 |q 9099 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Gloves if you bring her the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  collect Desecrated Gloves##22371 |q 9100 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Belt if you bring her the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  collect Desecrated Belt##22370 |q 9101 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Bindings if you bring her the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  collect Desecrated Bindings##22369 |q 9102 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Breastplate if you bring him the following: 1 Desecrated Breastplate, 25 Wartorn Leather Scraps, 2 Arcanite Bars and 6 Cured Rugged Hides.
  collect Desecrated Breastplate##22349 |q 9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Legplates if you bring him the following: 1 Desecrated Legplates, 20 Wartorn Leather Scraps, 1 Arcanite Bar, 8 Cured Rugged Hides and 100 gold pieces.
  collect Desecrated Legplates##22352 |q 9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Helmet if you bring him the following: 1 Desecrated Helmet, 15 Wartorn Leather Scraps, 8 Cured Rugged Hides, 1 Nexus Crystal and 75 gold pieces.
  collect Desecrated Helmet##22353 |q 9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Pauldrons if you bring him the following: 1 Desecrated Pauldrons, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 50 gold pieces.
  collect Desecrated Pauldrons##22354 |q 9080 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Sabatons if you bring him the following: 1 Desecrated Sabatons, 12 Wartorn Leather Scraps, 3 Cured Rugged Hides, 2 Nexus Crystals and 25 gold pieces.
  collect Desecrated Sabatons##22358 |q 9081 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Gauntlets if you bring him the following: 1 Desecrated Gauntlets, 8 Wartorn Leather Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Gauntlets##22357 |q 9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Waistguard if you bring him the following: 1 Desecrated Waistguard, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 15 gold pieces.
  collect Desecrated Waistguard##22356 |q 9083 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Bracers if you bring him the following: 1 Desecrated Bracers, 6 Wartorn Leather Scraps, 1 Arcanite Bar, 2 Cured Rugged Hides and 10 gold pieces.
  collect Desecrated Bracers##22355 |q 9084 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9054 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  collect Desecrated Legguards##22359 |q 9055 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9056 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Spaulders##22361 |q 9057 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Boots##22365 |q 9058 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9059 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9060 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9061 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Tunic if you bring her the following: 1 Desecrated Tunic, 25 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  collect Desecrated Tunic##22350 |q 9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Legguards if you bring her the following: 1 Desecrated Legguards, 20 Wartorn Leather Scraps, 8 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Legguards##22359 |q 9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Headpiece if you bring her the following: 1 Desecrated Headpiece, 15 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Spaulders if you bring her the following: 1 Desecrated Spaulders, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Spaulders##22361 |q 9089 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Boots if you bring her the following: 1 Desecrated Boots, 12 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  collect Desecrated Boots##22365 |q 9090 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Handguards if you bring her the following: 1 Desecrated Handguards, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Handguards##22364 |q 9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Girdle if you bring her the following: 1 Desecrated Girdle, 8 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  collect Desecrated Girdle##22363 |q 9092 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Wristguards if you bring her the following: 1 Desecrated Wristguards, 6 Wartorn Leather Scraps, 1 Arcane Crystal and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9093 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  collect Desecrated Legguards##22359 |q 9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 2 Mooncloth.
  collect Desecrated Spaulders##22361 |q 9071 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Boots##22365 |q 9072 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9074 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9075 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 2 Frozen Runes, 2 Essence of Water, 2 Blue Sapphires and 30 gold pieces.
  collect Frozen Rune##22682 |q 9232 |goto Naxxramas - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essences of Water and 200 gold.
  collect Frozen Rune##22682 |q 9234 |goto Naxxramas - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essence of Water and 200 gold.
  collect Frozen Rune##22682 |q 9235 |goto Naxxramas - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Thorium Bars, 2 Arcanite Bars, 4 Essence of Water and 300 gold. You will also need to be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9236 |goto Naxxramas - Dungeon -1,-1
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 2 Essences of Water, 4 Ironweb Spider Silks and 200 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9237 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 2 Bolts of Runecloth, 2 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##22682 |q 9238 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 4 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##22682 |q 9239 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 8 Bolts of Runecloth, 6 Essences of Water, 4 Ironweb Spider Silks and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9240 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9241 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9242 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Enchanted Leathers, 5 Essences of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9243 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 16 Heavy Scorpid Scales, 5 Essences of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9244 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 16 Heavy Scorpid Scale, 5 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9245 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 24 Heavy Scorpid Scale, 7 Essence of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9246 |goto Naxxramas - Dungeon -1,-1
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Legplates##9036 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Helmet##9037 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Bracers##9042 |goto Eastern Plaguelands 71.95,48.52
step
  talk Korfax, Champion of the Light##16112
  turnin The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Robe of Faith##9111 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Leggings of Faith##9112 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Circlet of Faith##9113 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Shoulderpads of Faith##9114 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Sandals of Faith##9115 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Gloves of Faith##9116 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Belt of Faith##9117 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Bindings of Faith##9118 |goto Eastern Plaguelands 71.66,48.58
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Tunic##9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Legguards##9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Headpiece##9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Spaulders##9046 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Boots##9047 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Handguards##9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Girdle##9049 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Wristguards##9050 |goto Eastern Plaguelands 71.72,48.59
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Robe##9103 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Leggings##9104 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Circlet##9105 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Sandals##9107 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Gloves##9108 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Belt##9109 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Bindings##9110 |goto Eastern Plaguelands 71.58,48.65
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Robe##9095 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Leggings##9096 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Circlet##9097 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Sandals##9099 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Gloves##9100 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Belt##9101 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Bindings##9102 |goto Eastern Plaguelands 71.7,48.69
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Breastplate##9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Legplates##9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Helmet##9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Sabatons##9081 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Waistguard##9083 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Bracers##9084 |goto Eastern Plaguelands 71.62,48.91
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Tunic##9054 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Legguards##9055 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Boots##9058 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Handguards##9059 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Girdle##9060 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 71.69,48.94
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Tunic##9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Legguards##9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Boots##9090 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Handguards##9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Girdle##9092 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 71.41,49.35
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Tunic##9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Legguards##9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Headpiece##9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Spaulders##9071 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Boots##9072 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Handguards##9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Girdle##9074 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Wristguards##9075 |goto Eastern Plaguelands 71.34,49.36
step
  talk Craftsman Wilhelm##16376
  turnin The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  turnin Icebane Gauntlets##9234 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  turnin Icebane Bracers##9235 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  turnin Icebane Breastplate##9236 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Cloak##9237 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  talk Craftsman Wilhelm##16376
  turnin Glacial Wrists##9238 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  talk Craftsman Wilhelm##16376
  turnin Glacial Gloves##9239 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid
  talk Craftsman Wilhelm##16376
  turnin Glacial Vest##9240 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  talk Craftsman Wilhelm##16376
  turnin Polar Bracers##9241 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  talk Craftsman Wilhelm##16376
  turnin Polar Gloves##9242 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock
  talk Craftsman Wilhelm##16376
  turnin Polar Tunic##9243 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Bracers##9244 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Breastplate##9246 |goto Eastern Plaguelands 71.24,49.9
step
  talk Korfax, Champion of the Light##16112
  accept Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 1 Frozen Rune, 1 Blue Sapphire and 1 Arcanite Bar.
  collect Frozen Rune##22682 |q 9230 |goto Naxxramas - Dungeon -1,-1
step
  talk Korfax, Champion of the Light##16112
  turnin Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
]])
