-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Argent Dawn", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Argent Guard Thaelrid##4787
  accept Blackfathom Villainy##6561 |goto Blackfathom Deeps - Dungeon -1,-1
step
  talk Azore Aldamort##11863
  accept Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk Warcaller Gorlach##10880
  accept A Call to Arms: The Plaguelands!##5093 |goto Orgrimmar 37.56,75.36
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24.0
step
  talk Gregor Greystone##10431
  accept The Everlook Report##6029 |goto Winterspring 61.35,38.97
step
  talk Gregor Greystone##10431
  accept Duke Nicholas Zverenhoff##6030 |goto Winterspring 61.35,38.97
step
  talk Marlene Redpath##10927
  accept Little Pamela##5142 |goto Western Plaguelands 49.17,78.57
step
  talk Argent Officer Garush##10839
  accept Minion's Scourgestones##5402 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Officer Garush##10839
  accept Invader's Scourgestones##5403 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Officer Garush##10839
  accept Corruptor's Scourgestones##5406 |goto Tirisfal Glades 83.19,68.45
step
  talk Duke Nicholas Zverenhoff##11039
  accept Corruptor's Scourgestones##5508 |goto Eastern Plaguelands 81.44,59.82
step
  talk Duke Nicholas Zverenhoff##11039
  accept Invader's Scourgestones##5509 |goto Eastern Plaguelands 81.44,59.82
step
  talk Duke Nicholas Zverenhoff##11039
  accept Minion's Scourgestones##5510 |goto Eastern Plaguelands 81.44,59.82
step
  talk Caretaker Alen##11038
  accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.55,63.86
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 81.47,59.66
step
  talk Betina Bigglezink##11035
  accept The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 81.47,59.66
step
  talk Leonid Barthalomew the Revered##11036
  accept Houses of the Holy##5243 |goto Eastern Plaguelands 81.73,57.83
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Eva Sarkhoff##11216
  accept Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Colossus Researcher Sophia##15797
  accept Secrets of the Colossus - Zora##8859 |goto Silithus 49.49,37.36
step
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 81.52,58.27
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
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1
step
  talk Bashana Runetotem##9087
  turnin Blackfathom Villainy##6561 |goto Thunder Bluff 71.06,34.19
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk High Executor Derrington##10837
  turnin A Call to Arms: The Plaguelands!##5093 |goto Tirisfal Glades 83.13,68.94
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24.0
step
  talk Argent Officer Garush##10839
  turnin The Everlook Report##6029 |goto Tirisfal Glades 83.19,68.45
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Duke Nicholas Zverenhoff##6030 |goto Eastern Plaguelands 81.44,59.82
step
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 36.45,90.8
step
  talk Argent Officer Garush##10839
  turnin Minion's Scourgestones##5402 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Officer Garush##10839
  turnin Invader's Scourgestones##5403 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Officer Garush##10839
  turnin Corruptor's Scourgestones##5406 |goto Tirisfal Glades 83.19,68.45
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Corruptor's Scourgestones##5508 |goto Eastern Plaguelands 81.44,59.82
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Invader's Scourgestones##5509 |goto Eastern Plaguelands 81.44,59.82
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Minion's Scourgestones##5510 |goto Eastern Plaguelands 81.44,59.82
step
  talk Caretaker Alen##11038
  turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.55,63.86
step
  talk Betina Bigglezink##11035
  turnin Plagued Hatchlings##5529 |goto Eastern Plaguelands 81.47,59.66
step
  talk Betina Bigglezink##11035
  turnin The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 81.47,59.66
step
  talk Leonid Barthalomew the Revered##11036
  turnin Houses of the Holy##5243 |goto Eastern Plaguelands 81.73,57.83
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Lord Maxwell Tyrosus##11034
  turnin Secrets of the Colossus - Zora##8859 |goto Eastern Plaguelands 81.74,57.96
step
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 81.52,58.27
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
  talk Rayne##16135
  turnin Savage Flora##9136 |goto Eastern Plaguelands 81.2,59.0
step
  talk Dispatch Commander Metz##16212
  turnin They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 81.05,57.55
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Dense Weightstone##9178 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Huge Thorium Battleaxe##9182 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Wicked Leather Headband##9184 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Rugged Armor Kit##9185 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Wicked Leather Belt##9186 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Runic Leather Pants##9187 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Brightcloth Pants##9188 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Runecloth Boots##9190 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Runecloth Bag##9191 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Runecloth Robe##9194 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Goblin Sapper Charge##9195 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Thorium Grenade##9196 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Thorium Tube##9198 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Major Mana Potion##9200 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Greater Arcane Protection Potion##9201 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Major Healing Potion##9202 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Flask of Petrification##9203 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Stonescale Eel##9204 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Plated Armorfish##9205 |goto Eastern Plaguelands 80.38,58.02
step
  talk Packmaster Stonebruiser##16283
  turnin Craftsman's Writ - Lightning Eel##9206 |goto Eastern Plaguelands 80.38,58.02
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk High Executor Derrington##10837
  accept Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24.0
step
  talk Pamela Redpath##10926
  accept Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.8
step
  talk Betina Bigglezink##11035
  accept The Active Agent##5213 |goto Eastern Plaguelands 81.47,59.66
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Huntsman Leopold##16132
  accept Crypt Fiend Parts##9125 |goto Eastern Plaguelands 81.51,58.55
step
  talk Rohan the Assassin##16131
  accept Bone Fragments##9127 |goto Eastern Plaguelands 81.43,58.51
step
  talk Archmage Angela Dosantos##16116
  accept Core of Elements##9129 |goto Eastern Plaguelands 81.52,58.27
step
  talk Korfax, Champion of the Light##16112
  accept Dark Iron Scraps##9132 |goto Eastern Plaguelands 81.8,58.08
step
  talk Rayne##16135
  accept Savage Fronds##9137 |goto Eastern Plaguelands 81.2,59.0
step
  talk Dispatch Commander Metz##16212
  accept Craftsman's Writ##9142 |goto Eastern Plaguelands 81.05,57.55
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk High Executor Derrington##10837
  turnin Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
step
  talk Pamela Redpath##10926
  turnin Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.8
step
  talk Betina Bigglezink##11035
  turnin Healthy Dragon Scale##5582 |goto Eastern Plaguelands 81.47,59.66
step
  talk Betina Bigglezink##11035
  turnin The Active Agent##5213 |goto Eastern Plaguelands 81.47,59.66
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Truth Comes Crashing Down##5262 |goto Eastern Plaguelands 81.44,59.82
step
  talk Eva Sarkhoff##11216
  turnin Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  talk Huntsman Leopold##16132
  turnin Crypt Fiend Parts##9125 |goto Eastern Plaguelands 81.51,58.55
step
  talk Rohan the Assassin##16131
  turnin Bone Fragments##9127 |goto Eastern Plaguelands 81.43,58.51
step
  talk Archmage Angela Dosantos##16116
  turnin Core of Elements##9129 |goto Eastern Plaguelands 81.52,58.27
step
  talk Korfax, Champion of the Light##16112
  turnin Dark Iron Scraps##9132 |goto Eastern Plaguelands 81.8,58.08
step
  talk Rayne##16135
  turnin Savage Fronds##9137 |goto Eastern Plaguelands 81.2,59.0
step
  talk Dispatch Commander Metz##16212
  turnin Craftsman's Writ##9142 |goto Eastern Plaguelands 81.05,57.55
step
  talk High Executor Derrington##10837
  accept The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.13,68.94
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk High Executor Derrington##10837
  accept All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk Pamela Redpath##10926
  accept Auntie Marlene##5152 |goto Eastern Plaguelands 36.45,90.8
step
  talk Pamela Redpath##10926
  accept Uncle Carlin##5241 |goto Eastern Plaguelands 36.45,90.8
step
  talk Duke Nicholas Zverenhoff##11039
  accept Above and Beyond##5263 |goto Eastern Plaguelands 81.44,59.82
step
  talk Eva Sarkhoff##11216
  accept Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Legplates##9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 81.8,58.08
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
  accept Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
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
  accept Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
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
  accept Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
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
  accept Plagueheart Leggings##9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Sandals##9107 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Belt##9109 |goto Eastern Plaguelands 81.39,58.23
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
  accept Bindings of Faith##9118 |goto Eastern Plaguelands 81.47,58.15
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  kill Andorhal Tower One##10902 |q 5098 |goto Western Plaguelands 40.05,71.6
step
  talk Shadow Priestess Vandis##11055
  turnin The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.04,71.91
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk High Executor Derrington##10837
  turnin All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk Marlene Redpath##10927
  turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.57
step
  talk Carlin Redpath##11063
  turnin Uncle Carlin##5241 |goto Eastern Plaguelands 81.52,59.77
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Above and Beyond##5263 |goto Eastern Plaguelands 81.44,59.82
step
  talk Eva Sarkhoff##11216
  turnin Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Legplates##9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 81.8,58.08
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
  turnin Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
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
  turnin Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
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
  turnin Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
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
  turnin Plagueheart Leggings##9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Sandals##9107 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Belt##9109 |goto Eastern Plaguelands 81.39,58.23
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
  turnin Bindings of Faith##9118 |goto Eastern Plaguelands 81.47,58.15
step
  talk Shadow Priestess Vandis##11055
  accept Target: Felstone Field##5229 |goto Tirisfal Glades 83.04,71.91
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Carlin Redpath##11063
  accept Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.77
step
  talk Marlene Redpath##10927
  accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.57
step
  talk High Executor Derrington##10837
  accept Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  talk Duke Nicholas Zverenhoff##11039
  accept Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 81.44,59.82
step
  talk Magistrate Marduke##11286
  accept The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  turnin Target: Felstone Field##5229 |goto Western Plaguelands 37.25,56.78
step
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24.0
step
  talk Carlin Redpath##11063
  turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.77
step
  talk Chromie##10667
  turnin A Strange Historian##5153 |goto Western Plaguelands 39.46,66.76
step
  talk High Executor Derrington##10837
  turnin Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  talk Lord Maxwell Tyrosus##11034
  turnin Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 81.74,57.96
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Chromie##10667
  accept The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  talk Carlin Redpath##11063
  accept Heroes of Darrowshire##5168 |goto Eastern Plaguelands 81.52,59.77
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24.0
step
  talk Lord Maxwell Tyrosus##11034
  accept The Argent Hold##5265 |goto Eastern Plaguelands 81.74,57.96
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  turnin Felstone Field Cauldron##5218 |goto Western Plaguelands 37.25,56.78
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5230 |goto Tirisfal Glades 83.04,71.91
step
  talk Chromie##10667
  turnin The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  talk Carlin Redpath##11063
  turnin Heroes of Darrowshire##5168 |goto Eastern Plaguelands 81.52,59.77
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24.0
step
  turnin The Argent Hold##5265 |goto Eastern Plaguelands 81.81,57.96
step
  talk Leonid Barthalomew the Revered##11036
  turnin The Dying, Ras Frostwhisper##5462 |goto Eastern Plaguelands 81.73,57.83
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Shadow Priestess Vandis##11055
  accept Target: Dalson's Tears##5231 |goto Tirisfal Glades 83.04,71.91
step
  talk Chromie##10667
  accept Brother Carlin##5210 |goto Western Plaguelands 39.46,66.76
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24.0
step
  talk Carlin Redpath##11063
  accept Marauders of Darrowshire##5206 |goto Eastern Plaguelands 81.52,59.77
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 81.73,57.83
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  turnin Target: Dalson's Tears##5231 |goto Western Plaguelands 46.18,51.9
step
  talk Carlin Redpath##11063
  turnin Brother Carlin##5210 |goto Eastern Plaguelands 81.52,59.77
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24.0
step
  talk Carlin Redpath##11063
  turnin Marauders of Darrowshire##5206 |goto Eastern Plaguelands 81.52,59.77
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Carlin Redpath##11063
  accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.52,59.77
step
  talk Tinkee Steamboil##10267
  accept Leonid Barthalomew##5522 |goto Burning Steppes 65.24,24.0
step
  talk Carlin Redpath##11063
  accept Return to Chromie##5941 |goto Eastern Plaguelands 81.52,59.77
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  turnin Dalson's Tears Cauldron##5221 |goto Western Plaguelands 46.18,51.9
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5232 |goto Tirisfal Glades 83.04,71.91
step
  talk Carlin Redpath##11063
  turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.52,59.77
step
  talk Leonid Barthalomew the Revered##11036
  turnin Menethil's Gift##5464 |goto Eastern Plaguelands 81.73,57.83
step
  talk Leonid Barthalomew the Revered##11036
  turnin Leonid Barthalomew##5522 |goto Eastern Plaguelands 81.73,57.83
step
  talk Chromie##10667
  turnin Return to Chromie##5941 |goto Western Plaguelands 39.46,66.76
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  talk Shadow Priestess Vandis##11055
  accept Target: Writhing Haunt##5233 |goto Tirisfal Glades 83.04,71.91
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 81.73,57.83
step
  talk Chromie##10667
  accept The Battle of Darrowshire##5721 |goto Western Plaguelands 39.46,66.76
step
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  turnin Target: Writhing Haunt##5233 |goto Western Plaguelands 53.02,65.61
step
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 81.47,59.66
step
  talk Pamela Redpath##10926
  turnin The Battle of Darrowshire##5721 |goto Eastern Plaguelands 36.45,90.8
step
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  talk Betina Bigglezink##11035
  accept Dawn's Gambit##4771 |goto Eastern Plaguelands 81.47,59.66
step
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 36.45,90.8
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  note Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink.
  kill Vectus##10432 |q 4771 |goto Scholomance - Dungeon -1,-1
step
  turnin Writhing Haunt Cauldron##5224 |goto Western Plaguelands 53.02,65.61
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5234 |goto Tirisfal Glades 83.04,71.91
step
  talk Betina Bigglezink##11035
  turnin Dawn's Gambit##4771 |goto Eastern Plaguelands 81.47,59.66
step
  turnin Hidden Treasures##5942 |goto Eastern Plaguelands 36.2,90.58
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 30.85,16.75
step
  talk Shadow Priestess Vandis##11055
  accept Target: Gahrron's Withering##5235 |goto Tirisfal Glades 83.04,71.91
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
step
  turnin Target: Gahrron's Withering##5235 |goto Western Plaguelands 62.54,58.47
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945
step
  turnin Gahrron's Withering Cauldron##5227 |goto Western Plaguelands 62.54,58.47
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5236 |goto Tirisfal Glades 83.04,71.91
step
  talk High Executor Derrington##10837
  accept Mission Accomplished!##5237 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  turnin Mission Accomplished!##5237 |goto Tirisfal Glades 83.13,68.94
]])
