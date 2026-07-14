-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Argent Dawn", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Dawnwatcher Shaedlass##4786
  accept In Search of Thaelrid##1198 |goto Darnassus 55.36,25.03
step
  talk Argent Guard Manados##4784
  accept Twilight Falls##1199 |goto Darnassus 55.24,23.99
step
  talk Azore Aldamort##11863
  accept Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk Crier Goodman##2198
  accept A Call to Arms: The Plaguelands!##5066 |goto Stormwind City 47.45,64.17
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Chillwind Camp##8415 |goto Stormwind City 37.16,33.32
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24.0
step
  talk Gregor Greystone##10431
  accept The Everlook Report##6028 |goto Winterspring 61.35,38.97
step
  talk Gregor Greystone##10431
  accept Duke Nicholas Zverenhoff##6030 |goto Winterspring 61.35,38.97
step
  talk Marlene Redpath##10927
  accept Little Pamela##5142 |goto Western Plaguelands 49.17,78.57
step
  talk Argent Officer Pureheart##10840
  accept Corruptor's Scourgestones##5404 |goto Western Plaguelands 42.97,83.55
step
  talk Argent Officer Pureheart##10840
  accept Invader's Scourgestones##5407 |goto Western Plaguelands 42.97,83.55
step
  talk Argent Officer Pureheart##10840
  accept Minion's Scourgestones##5408 |goto Western Plaguelands 42.97,83.55
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
  talk Deliana##16013
  accept An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
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
  note Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus.
  kill Twilight Acolyte##4809 |q 1199 |goto Blackfathom Deeps - Dungeon -1,-1 |elite
step
  note Get the Sceptre of Light and then return it to Azore Aldamort at the tower in Ethel Rethor.
  kill Burning Blade Seer##13019 |q 5741 |goto Desolace 55.17,30.15
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  get Broodling Essence |q 4726 |goto Burning Steppes 65.24,24.0
step
  kill Araj the Summoner##1852 |q 5404 |goto Western Plaguelands 45.27,69.21 |elite
step
  kill Skeletal Warlord##1788 |q 5407 |goto Western Plaguelands 45.12,69.56
step
  kill Skeletal Flayer##1783 |q 5408 |goto Western Plaguelands 38.99,58.49
step
  kill Araj the Summoner##1852 |q 5508 |goto Western Plaguelands 45.27,69.21 |elite
step
  kill Skeletal Warlord##1788 |q 5509 |goto Western Plaguelands 45.12,69.56
step
  kill Skeletal Flayer##1783 |q 5510 |goto Western Plaguelands 38.99,58.49
step
  note Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
  kill Zaeldarr the Outcast##12250 |q 6021 |goto Eastern Plaguelands 27.47,84.86
step
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  note Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
  kill Ravaged Cadaver##10381 |q 5212 |goto Stratholme - Dungeon -1,-1 |elite
step
  note Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
  collect Supply Crate##176224 |q 5243 |goto Stratholme - Dungeon -1,-1
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1 |elite
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Wildheart Bracers to Deliana in Ironforge.
  kill Frostsaber Cub##7430 |q 8905 |goto Winterspring 50.32,11.34
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9121 |goto Burning Steppes 62.76,44.03
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 2 Arcane Crystals, 1 Nexus Crystal and 30 gold pieces. You must also be Revered with the Argent Dawn.
  collect Small Thorium Vein##324 |q 9122 |goto Burning Steppes 62.76,44.03
step
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands wants 30 Crypt Fiend Parts.
  kill Crypt Stalker##8555 |q 9124 |goto Eastern Plaguelands 15.44,33.03
step
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands wants 30 Bone Fragments.
  kill Skeletal Flayer##1783 |q 9126 |goto Western Plaguelands 38.99,58.49
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 30 Core of Elements.
  kill Scorching Elemental##6520 |q 9128 |goto Un'Goro Crater 52.73,48.83
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants 30 Dark Iron Scraps.
  kill Dark Iron Steamsmith##5840 |q 9131 |goto Searing Gorge 40.01,49.65
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands wants 30 Savage Fronds.
  kill Cursed Sycamore##5881 |q 9136 |goto Feralas 55.43,67.61
step
  note Dispatch Commander Metz at Light's Hope Chapel in the Eastern Plaguelands wants an Argent Dawn Valor Token.
  get They Call Me "The Rooster" |q 9141 |goto Eastern Plaguelands 81.05,57.55
step
  note Deliver 120 Dense Weightstones and the Craftsman's Writ - Dense Weightstone - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Dense Weightstone##12643 |q 9178 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 3 Huge Thorium Battleaxes and the Craftsman's Writ - Huge Thorium Battleaxe - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Huge Thorium Battleaxe##12775 |q 9182 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 10 Wicked Leather Headbands and the Craftsman's Writ - Wicked Leather Headband - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Wicked Leather Headband##15086 |q 9184 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 25 Rugged Armor Kits and the Craftsman's Writ - Rugged Armor Kit - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Rugged Armor Kit##15564 |q 9185 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 9 Wicked Leather Belts and the Craftsman's Writ - Wicked Leather Belt - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Wicked Leather Belt##15088 |q 9186 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 4 Runic Leather Pants and the Craftsman's Writ - Runic Leather Pants - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Runic Leather Pants##15095 |q 9187 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 6 Brightcloth Pants and the Craftsman's Writ - Brightcloth Pants - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Brightcloth Pants##14104 |q 9188 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 8 Runecloth Boots and the Craftsman's Writ - Runecloth Boots - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Runecloth Boots##13864 |q 9190 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 8 Runecloth Bags and the Craftsman's Writ - Runecloth Bag - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Runecloth Bag##14046 |q 9191 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 8 Runecloth Robes and the Craftsman's Writ - Runecloth Robe - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Runecloth Robe##13858 |q 9194 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 20 Goblin Sapper Charges and the Craftsman's Writ - Goblin Sapper Charge - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Goblin Sapper Charge##10646 |q 9195 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 20 Thorium Grenades and the Craftsman's Writ - Thorium Grenade - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Thorium Grenade##15993 |q 9196 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 14 Thorium Tubes and the Craftsman's Writ - Thorium Tube - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Thorium Tube##16000 |q 9198 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 10 Major Mana Potions and the Craftsman's Writ - Major Mana Potion - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Major Mana Potion##13444 |q 9200 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 15 Greater Arcane Protection Potions and the Craftsman's Writ - Greater Arcane Protection Potion - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Greater Arcane Protection Potion##13461 |q 9201 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 20 Major Healing Potions and the Craftsman's Writ - Major Healing Potion - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Major Healing Potion##13446 |q 9202 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 1 Flask of Petrification and the Craftsman's Writ - Flask of Petrification - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Flask of Petrification##13506 |q 9203 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 40 Stonescale Eel and the Craftsman's Writ - Stonescale Eel - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Stonescale Eel##13422 |q 9204 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 30 Plated Armorfish and the Craftsman's Writ - Plated Armorfish - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Plated Armorfish##13890 |q 9205 |tip Craft this (or buy it), then deliver it.
step
  note Deliver 30 Lightning Eel and the Craftsman's Writ - Lightning Eel - to Packmaster Stonebruiser at Light's Hope Chapel in the Eastern Plaguelands.
  get Lightning Eel##13757 |q 9206 |tip Craft this (or buy it), then deliver it.
step
  talk Argent Guard Thaelrid##4787
  turnin In Search of Thaelrid##1198 |goto Blackfathom Deeps - Dungeon -1,-1
step
  talk Argent Guard Manados##4784
  turnin Twilight Falls##1199 |goto Darnassus 55.24,23.99
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5066 |goto Western Plaguelands 42.7,84.03
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Chillwind Camp##8415 |goto Western Plaguelands 42.7,84.03
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24.0
step
  talk Argent Officer Pureheart##10840
  turnin The Everlook Report##6028 |goto Western Plaguelands 42.97,83.55
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Duke Nicholas Zverenhoff##6030 |goto Eastern Plaguelands 81.44,59.82
step
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 36.45,90.8
step
  talk Argent Officer Pureheart##10840
  turnin Corruptor's Scourgestones##5404 |goto Western Plaguelands 42.97,83.55
step
  talk Argent Officer Pureheart##10840
  turnin Invader's Scourgestones##5407 |goto Western Plaguelands 42.97,83.55
step
  talk Argent Officer Pureheart##10840
  turnin Minion's Scourgestones##5408 |goto Western Plaguelands 42.97,83.55
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
  talk Deliana##16013
  turnin An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
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
  talk Argent Guard Thaelrid##4787
  accept Blackfathom Villainy##1200 |goto Blackfathom Deeps - Dungeon -1,-1
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Commander Ashlam Valorfist##10838
  accept Clear the Way##5092 |goto Western Plaguelands 42.7,84.03
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  accept Dispelling Evil##8414 |goto Western Plaguelands 42.7,84.03
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
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
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
  note Bring the head of Twilight Lord Kelris to Dawnwatcher Selgorm in Darnassus.
  kill Twilight Lord Kelris##4832 |q 1200 |goto Blackfathom Deeps - Dungeon -1,-1 |elite
step
  note Get the Book of the Ancients and return it to Azore Aldamort at the tower in Ethel Rethor.
  get Book of the Ancients |q 6027 |goto Desolace 38.88,27.16
step
  note Kill 10 Skeletal Flayers and 10 Slavering Ghouls in Sorrow Hill.
  kill Skeletal Flayer##1783 |q 5092 |goto Western Plaguelands 38.99,58.49
step
  only Paladin
  note Collect 20 Minion's Scourgestones and bring them to High Priest Thel'danis in the Western Plaguelands.
  kill Skeletal Flayer##1783 |q 8414 |goto Western Plaguelands 38.99,58.49
step
  note Find Pamela's doll.
  get Pamela's Doll |q 5149 |goto Eastern Plaguelands 36.45,90.8
step
  note Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink.
  collect Scourge Data##176249 |q 5213 |goto Stratholme - Dungeon -1,-1
step
  note Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
  kill Jandice Barov##10503 |q 5515 |goto Scholomance - Dungeon -1,-1 |elite
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1 |elite
step
  kill Crypt Stalker##8555 |q 9125 |goto Eastern Plaguelands 15.44,33.03
step
  kill Skeletal Flayer##1783 |q 9127 |goto Western Plaguelands 38.99,58.49
step
  kill Scorching Elemental##6520 |q 9129 |goto Un'Goro Crater 52.73,48.83
step
  kill Dark Iron Steamsmith##5840 |q 9132 |goto Searing Gorge 40.01,49.65
step
  kill Cursed Sycamore##5881 |q 9137 |goto Feralas 55.43,67.61
step
  get Argent Dawn Valor Token##12844 |q 9142 |tip Craft this (or buy it), then deliver it.
step
  talk Dawnwatcher Selgorm##4783
  turnin Blackfathom Villainy##1200 |goto Darnassus 56.16,24.39
step
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Commander Ashlam Valorfist##10838
  turnin Clear the Way##5092 |goto Western Plaguelands 42.7,84.03
step
  only Paladin
  talk High Priest Thel'danis##1854
  turnin Dispelling Evil##8414 |goto Western Plaguelands 52.05,83.27
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
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
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
  only Paladin
  talk High Priest Thel'danis##1854
  accept Inert Scourgestones##8416 |goto Western Plaguelands 52.05,83.27
step
  talk Commander Ashlam Valorfist##10838
  accept The Scourge Cauldrons##5215 |goto Western Plaguelands 42.7,84.03
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Commander Ashlam Valorfist##10838
  accept All Along the Watchtowers##5097 |goto Western Plaguelands 42.7,84.03
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
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  kill Fledgling Chillwind##7447 |q 4809 |goto Winterspring 44.97,42.75
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  kill Andorhal Tower One##10902 |q 5097 |goto Western Plaguelands 40.05,71.6
step
  note Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
  kill Baron Rivendare##10440 |q 5263 |goto Stratholme - Dungeon -1,-1 |elite
step
  note Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
  kill Kirtonos the Herald##10506 |q 5384 |elite
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  get The Ectoplasmic Distiller |q 8921 |goto Tanaris 52.47,27.23
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Legplates if you bring him the following items: 1 Desecrated Legplates, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  get Dreadnaught Legplates |q 9036 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Pauldrons if you bring him the following items: 1 Desecrated Pauldrons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9038 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Gauntlets if you bring him the following items: 1 Desecrated Gauntlets, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Dreadnaught Gauntlets |q 9040 |goto Eastern Plaguelands 81.8,58.08
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Waistguard if you bring him the following items: 1 Desecrated Waistguard, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  kill Gluth##15932 |q 9041 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Bracers if you bring him the following items: 1 Desecrated Bracers, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 1 Nexus Crystal.
  kill Gluth##15932 |q 9042 |goto Naxxramas - Raid -1,-1 |raid
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9047 |goto Naxxramas - Raid -1,-1 |raid
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9049 |goto Naxxramas - Raid -1,-1 |raid
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9050 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9058 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Cryptstalker Handguards |q 9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9060 |goto Naxxramas - Raid -1,-1 |raid
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9061 |goto Naxxramas - Raid -1,-1 |raid
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  get Earthshatter Legguards |q 9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 2 Mooncloth.
  kill Grobbulus##15931 |q 9071 |goto Naxxramas - Raid -1,-1 |raid
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9072 |goto Naxxramas - Raid -1,-1 |raid
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  kill Gluth##15932 |q 9074 |goto Naxxramas - Raid -1,-1 |raid
step
  only Mage
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9075 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Pauldrons if you bring him the following: 1 Desecrated Pauldrons, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 50 gold pieces.
  kill Grobbulus##15931 |q 9080 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Sabatons if you bring him the following: 1 Desecrated Sabatons, 12 Wartorn Leather Scraps, 3 Cured Rugged Hides, 2 Nexus Crystals and 25 gold pieces.
  kill Gluth##15932 |q 9081 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Gauntlets if you bring him the following: 1 Desecrated Gauntlets, 8 Wartorn Leather Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  get Bonescythe Gauntlets |q 9082 |goto Eastern Plaguelands 81.43,58.51
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Waistguard if you bring him the following: 1 Desecrated Waistguard, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 15 gold pieces.
  kill Gluth##15932 |q 9083 |goto Naxxramas - Raid -1,-1 |raid
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Bracers if you bring him the following: 1 Desecrated Bracers, 6 Wartorn Leather Scraps, 1 Arcanite Bar, 2 Cured Rugged Hides and 10 gold pieces.
  kill Gluth##15932 |q 9084 |goto Naxxramas - Raid -1,-1 |raid
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Spaulders if you bring her the following: 1 Desecrated Spaulders, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  kill Grobbulus##15931 |q 9089 |goto Naxxramas - Raid -1,-1 |raid
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Boots if you bring her the following: 1 Desecrated Boots, 12 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9090 |goto Naxxramas - Raid -1,-1 |raid
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Handguards if you bring her the following: 1 Desecrated Handguards, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  get Dreamwalker Handguards |q 9091 |goto Eastern Plaguelands 81.2,59.0
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Girdle if you bring her the following: 1 Desecrated Girdle, 8 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9092 |goto Naxxramas - Raid -1,-1 |raid
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Wristguards if you bring her the following: 1 Desecrated Wristguards, 6 Wartorn Leather Scraps, 1 Arcane Crystal and 2 Cured Rugged Hides.
  kill Gluth##15932 |q 9093 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Sandals if you bring her the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9099 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Gloves if you bring her the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  get Frostfire Gloves |q 9100 |goto Eastern Plaguelands 81.52,58.27
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Belt if you bring her the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  kill Gluth##15932 |q 9101 |goto Naxxramas - Raid -1,-1 |raid
step
  only Warlock
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Bindings if you bring her the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  kill Gluth##15932 |q 9102 |goto Naxxramas - Raid -1,-1 |raid
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Leggings if you bring him the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  get Plagueheart Leggings |q 9104 |goto Eastern Plaguelands 81.39,58.23
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Sandals if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9107 |goto Naxxramas - Raid -1,-1 |raid
step
  only Druid
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Belt if you bring him the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  kill Gluth##15932 |q 9109 |goto Naxxramas - Raid -1,-1 |raid
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Shoulderpads of Faith if you bring him the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Grobbulus##15931 |q 9114 |goto Naxxramas - Raid -1,-1 |raid
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Sandals of Faith if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  kill Gluth##15932 |q 9115 |goto Naxxramas - Raid -1,-1 |raid
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Gloves of Faith if you bring him the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  get Gloves of Faith |q 9116 |goto Eastern Plaguelands 81.47,58.15
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Bindings of Faith if you bring him the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  kill Gluth##15932 |q 9118 |goto Naxxramas - Raid -1,-1 |raid
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Inert Scourgestones##8416 |goto Western Plaguelands 42.7,84.03
step
  talk High Priestess MacDonnell##11053
  turnin The Scourge Cauldrons##5215 |goto Western Plaguelands 42.97,84.5
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Commander Ashlam Valorfist##10838
  turnin All Along the Watchtowers##5097 |goto Western Plaguelands 42.7,84.03
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
  only Paladin
  talk Commander Ashlam Valorfist##10838
  accept Forging the Mightstone##8418 |goto Western Plaguelands 42.7,84.03
step
  talk High Priestess MacDonnell##11053
  accept Target: Felstone Field##5216 |goto Western Plaguelands 42.97,84.5
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
  talk Commander Ashlam Valorfist##10838
  accept Alas, Andorhal##211 |goto Western Plaguelands 42.7,84.03
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
  only Paladin
  note Bring the voodoo feathers to Ashlam Valorfist.
  kill Gasher##5713 |q 8418 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite
step
  note Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
  get Target: Felstone Field |q 5216 |goto Western Plaguelands 42.97,84.5
step
  note Free 15 Darrowshire Spirits and return to Carlin Redpath.
  kill Darrowshire Spirit##11064 |q 5211
step
  note Bring Joseph's Wedding Ring to Chromie.
  collect Joseph Redpath's Monument##176145 |q 5153 |goto Western Plaguelands 49.7,76.76
step
  note Bring Araj's Phylactery Shard to Commander Ashlam Valorfist at Chillwind Camp, Western Plaguelands.
  get Alas, Andorhal |q 211 |goto Western Plaguelands 42.7,84.03
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##176630 |q 5461 |goto Arathi Highlands 19.33,66.05
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  kill Tortured Druid##12178 |q 8924 |goto Silithus 62.65,52.76
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Forging the Mightstone##8418 |goto Western Plaguelands 42.7,84.03
step
  turnin Target: Felstone Field##5216 |goto Western Plaguelands 37.25,56.78
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
  talk Commander Ashlam Valorfist##10838
  turnin Alas, Andorhal##211 |goto Western Plaguelands 42.7,84.03
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
  get Felstone Field Cauldron |q 5218
step
  note Bring the Annals of Darrowshire to Chromie in Andorhal.
  get The Annals of Darrowshire |q 5154 |goto Western Plaguelands 39.46,66.76
step
  note Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
  collect Davil's Libram##176206 |q 5168 |goto Western Plaguelands 42.52,18.99
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  kill Magma Lord Bokk##16043 |q 8925 |goto Burning Steppes 35.39,57.76
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5217 |goto Western Plaguelands 42.97,84.5
step
  turnin Felstone Field Cauldron##5218 |goto Western Plaguelands 37.25,56.78
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
  talk High Priestess MacDonnell##11053
  accept Target: Dalson's Tears##5219 |goto Western Plaguelands 42.97,84.5
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
  note Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
  get Target: Dalson's Tears |q 5219 |goto Western Plaguelands 42.97,84.5
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  get Egg Collection |q 4735 |goto Burning Steppes 65.24,24.0
step
  note Bring 5 Resonating Skulls and the Mystic Crystal to Carlin Redpath in Eastern Plaguelands.
  get Marauders of Darrowshire |q 5206 |goto Eastern Plaguelands 81.52,59.77
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  get A Shifty Merchant |q 8928 |goto Tanaris 52.47,27.23
step
  turnin Target: Dalson's Tears##5219 |goto Western Plaguelands 46.18,51.9
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
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  get Dalson's Tears Cauldron |q 5221
step
  note Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
  collect Horgus' Skull##176208 |q 5181 |goto Eastern Plaguelands 51.11,49.93
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5220 |goto Western Plaguelands 42.97,84.5
step
  turnin Dalson's Tears Cauldron##5221 |goto Western Plaguelands 46.18,51.9
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
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  talk High Priestess MacDonnell##11053
  accept Target: Writhing Haunt##5222 |goto Western Plaguelands 42.97,84.5
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 81.73,57.83
step
  talk Chromie##10667
  accept The Battle of Darrowshire##5721 |goto Western Plaguelands 39.46,66.76
step
  talk Deliana##16013
  accept Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  note Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
  get Target: Writhing Haunt |q 5222 |goto Western Plaguelands 42.97,84.5
step
  note Place the Relic Bundle at the Darrowshire town square.
  kill Joseph Redpath##10936 |q 5721
step
  note Bring a Wildheart Belt and a set of Wildheart Gloves Deliana in Ironforge.
  kill Scarshield Raider##9258 |q 8926 |goto Blackrock Spire - Dungeon -1,-1
step
  turnin Target: Writhing Haunt##5222 |goto Western Plaguelands 53.02,65.61
step
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 81.47,59.66
step
  talk Pamela Redpath##10926
  turnin The Battle of Darrowshire##5721 |goto Eastern Plaguelands 36.45,90.8
step
  talk Deliana##16013
  turnin Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  talk Betina Bigglezink##11035
  accept Dawn's Gambit##4771 |goto Eastern Plaguelands 81.47,59.66
step
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 36.45,90.8
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  get Writhing Haunt Cauldron |q 5224
step
  note Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink.
  kill Vectus##10432 |q 4771 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5223 |goto Western Plaguelands 42.97,84.5
step
  turnin Writhing Haunt Cauldron##5224 |goto Western Plaguelands 53.02,65.61
step
  talk Betina Bigglezink##11035
  turnin Dawn's Gambit##4771 |goto Eastern Plaguelands 81.47,59.66
step
  turnin Hidden Treasures##5942 |goto Eastern Plaguelands 36.2,90.58
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 30.85,16.75
step
  talk High Priestess MacDonnell##11053
  accept Target: Gahrron's Withering##5225 |goto Western Plaguelands 42.97,84.5
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
step
  note Go to Gahrron's Withering in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Gahrron's Withering Bottle with you to secure a sample of the poisons used inside the cauldron.
  get Target: Gahrron's Withering |q 5225 |goto Western Plaguelands 42.97,84.5
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  kill Ysida Harmon##16031 |q 8945
step
  turnin Target: Gahrron's Withering##5225 |goto Western Plaguelands 62.54,58.47
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945
step
  get Gahrron's Withering Cauldron |q 5227
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5226 |goto Western Plaguelands 42.97,84.5
step
  turnin Gahrron's Withering Cauldron##5227 |goto Western Plaguelands 62.54,58.47
step
  talk Commander Ashlam Valorfist##10838
  accept Mission Accomplished!##5238 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  turnin Mission Accomplished!##5238 |goto Western Plaguelands 42.7,84.03
]])
