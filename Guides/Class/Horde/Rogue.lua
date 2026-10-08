-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Rogue", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Gornek##3143
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  talk Mottled Boar##3098 |q 788 |goto Durotar 44.49,65.1
step
  talk Gornek##3143
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Troll Rogue
  talk Gornek##3143
  accept Encrypted Tablet##3083 |goto Durotar 42.06,68.33
step
  only Troll Rogue
  talk Rwag##3155
  turnin Encrypted Tablet##3083 |goto Durotar 41.28,68
step
  only Orc Rogue
  talk Gornek##3143
  accept Encrypted Parchment##3088 |goto Durotar 42.06,68.33
step
  only Orc Rogue
  talk Rwag##3155
  turnin Encrypted Parchment##3088 |goto Durotar 41.28,68
step
  talk Shadow Priest Sarvis##1569
  accept The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  note Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
  talk Mindless Zombie##1501 |q 364 |goto Tirisfal Glades 32.28,63.63
step
  talk Shadow Priest Sarvis##1569
  turnin The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Rogue
  talk Shadow Priest Sarvis##1569
  accept Encrypted Scroll##3096 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Rogue
  talk David Trias##2122
  turnin Encrypted Scroll##3096 |goto Tirisfal Glades 32.53,65.65
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
  only Skyborne Rogue
  talk Rorian the Dayseeker##251361
  accept At Home in the Shadows##92483 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Rogue
  talk Akeri Duskblade##251389
  turnin At Home in the Shadows##92483 |goto Zephras Isle 43.71,24.3
step
  only Orc Rogue not completed(1885) not haveq(1885)
  talk Kaplak##3170
  accept Therzok##1859 |goto Durotar 51.98,43.69
step
  only Orc Rogue not completed(1885) not haveq(1885)
  talk Therzok##6446
  turnin Therzok##1859 |goto Orgrimmar 42.73,53.55
step
  only not Undead not Tauren not Skyborne Rogue
  talk Therzok##6446
  accept The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55
step
  only not Undead not Tauren not Skyborne Rogue
  note Kill Tazan and bring his Satchel to Therzok in the Cleft of Shadow in Orgrimmar.
  collect Tazan's Satchel##7209 |q 1963 |goto The Barrens 63.11,44.29 |tip {dropsfrom}Tazan
step
  only not Undead not Tauren not Skyborne Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55
step
  only not Undead not Tauren not Skyborne Rogue
  talk Therzok##6446
  accept The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55
step
  only not Undead not Tauren not Skyborne Rogue
  note Steal Tazan's key, then use it to open his Satchel and deliver its contents to Therzok in the Cleft of Shadow in Orgrimmar.
  kill Tazan##6494 |goto The Barrens 63.11,44.29
  collect Tazan's Logbook##7295 |q 1858 |goto The Barrens 63.11,44.29
step
  only not Undead not Tauren not Skyborne Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55
step
  only Undead Rogue not completed(1859) not haveq(1859)
  talk Marion Call##2130
  accept Mennet Carkad##1885 |goto Tirisfal Glades 61.75,52
step
  only Undead Rogue not completed(1859) not haveq(1859)
  talk Mennet Carkad##6467
  turnin Mennet Carkad##1885 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  note Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.
  collect Astor's Letter of Introduction##7231 |q 1886 |goto Silverpine Forest 49.71,32.22 |tip {dropsfrom}Astor Hadren
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1898 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  talk Andron Gant##6522
  turnin The Deathstalkers##1898 |goto Undercity 54.81,76.33
step
  only Undead Rogue
  talk Andron Gant##6522
  accept The Deathstalkers##1899 |goto Undercity 54.81,76.33
step
  only Undead Rogue
  note Bring Andron's Ledger to Mennet Carkad in the Rogues' Quarter of Undercity.
  collect Andron's Ledger##7294 |q 1899 |goto Undercity 55.4,76.96 |tip {dropsfrom}Andron's Bookshelf
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1899 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1978 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  talk Varimathras##2425
  turnin The Deathstalkers##1978 |goto Undercity 56.25,92.2
step
  only not Undead not Tauren not Skyborne Rogue not completed(2378) not haveq(2378)
  talk Kaplak##3170
  accept To Orgrimmar!##2380 |goto Durotar 51.98,43.69
step
  only not Undead not Tauren not Skyborne Rogue not completed(2378) not haveq(2378)
  talk Shenthul##3401
  turnin To Orgrimmar!##2380 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Shenthul##3401
  accept Zando'zan##2379 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Zando'zan##3402
  turnin Zando'zan##2379 |goto Orgrimmar 42.73,52.95
step
  only Rogue
  talk Zando'zan##3402
  accept Wrenix of Ratchet##2382 |goto Orgrimmar 42.73,52.95
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Wrenix of Ratchet##2382 |goto The Barrens 63.07,36.32
step
  only Rogue
  talk Wrenix the Wretched##7161
  accept Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
  only Rogue
  note Bring the Southsea Treasure back to Wrenix the Wretched in Ratchet. Do not forget to get an E.C.A.C. and Thieves' Tools from Wrenix's Gizmotronic Apparatus. You will need both of these items to complete your mission.
  collect Southsea Treasure##7968 |q 2381 |goto The Barrens 64.78,45.5 |tip {dropsfrom}Polly
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept Fenwick Thatros##1998 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  note Kill Fenwick Thatros and bring his head back to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Fenwick's Head##7306 |q 1998 |goto Silverpine Forest 59.58,33.94 |tip {dropsfrom}Fenwick Thatros
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin Fenwick Thatros##1998 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept Tools of the Trade##1999 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  note Find the Dalaran Status Report and return it to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Dalaran Status Report##7309 |q 1999 |goto Silverpine Forest 63.71,65.24 |tip {dropsfrom}Ambermill Strongbox
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin Tools of the Trade##1999 |goto Undercity 83.51,69.11
step
  only Undead Rogue not completed(2380) not haveq(2380)
  talk Mennet Carkad##6467
  accept Find the Shattered Hand##2378 |goto Undercity 83.51,69.11
step
  only Undead Rogue not completed(2380) not haveq(2380)
  talk Shenthul##3401
  turnin Find the Shattered Hand##2378 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Shenthul##3401
  accept The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  note Perform the Shattered Salute on Shenthul.
  talk Shenthul##3401 |q 2460 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Shenthul##3401
  turnin The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Shenthul##3401
  accept Deep Cover##2458 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Taskmaster Fizzule##7233
  turnin Deep Cover##2458 |goto The Barrens 55.44,5.56
step
  only Rogue
  talk Taskmaster Fizzule##7233
  accept Mission: Possible But Not Probable##2478 |goto The Barrens 55.44,5.56
step
  only Rogue
  note Steal Silixiz's Tower Key from Foreman Silixiz, then kill two Mutated Venture Co. Drones, two Venture Co. Patrollers, and two Venture Co. Lookouts.
  kill Mutated Venture Co. Drone##7310 |q 2478 |goto The Barrens 54.72,5.75
step
  only Rogue
  talk Shenthul##3401
  turnin Mission: Possible But Not Probable##2478 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Shenthul##3401
  accept Hinott's Assistance##2479 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Serge Hinott##2391
  turnin Hinott's Assistance##2479 |goto Hillsbrad Foothills 61.63,19.19
step
  only Rogue
  talk Serge Hinott##2391
  accept Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
step
  only Rogue
  talk Serge Hinott##2391
  turnin Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
step
  only Rogue
  kill Master Mathias Shaw##332 |goto Stormwind City 78.31,70.74 |tip Loot the quest item here — it starts the quest.
  accept The Manor, Ravenholdt##6681 |goto Stormwind City 78.31,70.74
step
  only Rogue
  note Take the Seal of Ravenholdt to Fahrad at Ravenholdt Manor, hidden away in the hills of Hillsbrad.
  talk Ravenholdt##13936 |q 6681 |goto Hillsbrad Foothills 78.64,17.84
step
  only Rogue
  talk Fahrad##6707
  turnin The Manor, Ravenholdt##6681 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  talk Ormok##3328
  accept A Simple Request##8233 |goto Orgrimmar 43.9,54.63
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  note Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
  collect Sealed Azure Bag##19775 |q 8234 |goto Azshara 44.78,22.51 |tip {dropsfrom}Timbermaw Shaman, Blackmaw Shaman
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  collect 10 Encoded Fragment##20023 |q 8235 |goto Azshara 71.73,29.47 |tip {dropsfrom}Forest Ooze
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Archmage Xylem##8379
  accept The Azure Key##8236 |goto Azshara 29.25,40.21
step
  only Rogue
  note Return the Azure Key to Lord Jorach Ravenholdt.
  collect Azure Key##20022 |q 8236 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin The Azure Key##8236 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Ravenholdt Guard##6766
  accept Syndicate Emblems##6701 |goto Alterac Mountains 84.59,78.71
step
  only Rogue
  collect Syndicate Emblem##17124 |q 6701 |goto Alterac Mountains 39.62,15.8 |tip {dropsfrom}Syndicate Assassin, Syndicate Conjuror, Syndicate Footpad
step
  only Rogue
  talk Ravenholdt Guard##6766
  turnin Syndicate Emblems##6701 |goto Alterac Mountains 84.59,78.71
step
  only Rogue
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Garona: A Study on Stealth and Treachery##7498 |goto Dire Maul - Dungeon -1,-1
step
  only Rogue
  talk Lorekeeper Kildrath##14383
  turnin Garona: A Study on Stealth and Treachery##7498 |goto Dire Maul - Dungeon -1,-1
step
  only Rogue
  talk Mokvar##16012
  accept An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Shadowcraft Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8917 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Rogue
  talk Mokvar##16012
  turnin An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29
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
  only Rogue
  talk Mokvar##16012
  accept Just Compensation##8941 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Mokvar in Orgrimmar.
  collect Shadowcraft Belt##16713 |q 8941 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip {dropsfrom}Scarshield Legionnaire, Firebrand Grunt, Scarshield Quartermaster
step
  only Rogue
  talk Mokvar##16012
  turnin Just Compensation##8941 |goto Orgrimmar 34.95,38.29
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
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9020 |goto Eastern Plaguelands 26.11,11.3
step
  only Rogue
  note Return to Mokvar in Orgimmar with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  collect Shadowcraft Boots##16711 |q 9020 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Rattlegore
step
  only Rogue
  talk Mokvar##16012
  turnin Anthion's Parting Words##9020 |goto Orgrimmar 34.95,38.29
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
  only Rogue
  talk Mokvar##16012
  accept Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Give Mokvar your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9010 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue
  talk Mokvar##16012
  turnin Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
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
  only Rogue
  talk Geologist Larksbane##15183
  accept Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Geologist Larksbane##15183
  turnin Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Zanza the Restless##15042
  accept Death's Embrace##8186 |goto Zul'Gurub - Dungeon -1,-1
step
  only Rogue
  collect Primal Hakkari Idol##22637 |q 8186 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Rogue
  talk Zanza the Restless##15042
  turnin Death's Embrace##8186 |goto Zul'Gurub - Dungeon -1,-1
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
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Breastplate##9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Breastplate if you bring him the following: 1 Desecrated Breastplate, 25 Wartorn Leather Scraps, 2 Arcanite Bars and 6 Cured Rugged Hides.
  collect Desecrated Breastplate##22349 |q 9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Breastplate##9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Legplates##9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Legplates if you bring him the following: 1 Desecrated Legplates, 20 Wartorn Leather Scraps, 1 Arcanite Bar, 8 Cured Rugged Hides and 100 gold pieces.
  collect Desecrated Legplates##22352 |q 9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Legplates##9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Helmet##9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Helmet if you bring him the following: 1 Desecrated Helmet, 15 Wartorn Leather Scraps, 8 Cured Rugged Hides, 1 Nexus Crystal and 75 gold pieces.
  collect Desecrated Helmet##22353 |q 9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Helmet##9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Pauldrons if you bring him the following: 1 Desecrated Pauldrons, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 50 gold pieces.
  collect Desecrated Pauldrons##22354 |q 9080 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Sabatons##9081 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Sabatons if you bring him the following: 1 Desecrated Sabatons, 12 Wartorn Leather Scraps, 3 Cured Rugged Hides, 2 Nexus Crystals and 25 gold pieces.
  collect Desecrated Sabatons##22358 |q 9081 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Sabatons##9081 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Gauntlets if you bring him the following: 1 Desecrated Gauntlets, 8 Wartorn Leather Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Gauntlets##22357 |q 9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Waistguard##9083 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Waistguard if you bring him the following: 1 Desecrated Waistguard, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 15 gold pieces.
  collect Desecrated Waistguard##22356 |q 9083 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Waistguard##9083 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Bracers##9084 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Bracers if you bring him the following: 1 Desecrated Bracers, 6 Wartorn Leather Scraps, 1 Arcanite Bar, 2 Cured Rugged Hides and 10 gold pieces.
  collect Desecrated Bracers##22355 |q 9084 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Bracers##9084 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Windcaller Yessendra##15498
  accept Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  only Rogue
  note Bring 1 Qiraji Ceremonial Ring, 2 Onyx Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8701 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Rogue
  talk Windcaller Yessendra##15498
  turnin Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  only Rogue
  talk Warden Haro##15499
  accept Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Rogue
  note Bring 1 Qiraji Spiked Hilt, 2 Vermillion Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8709 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Rogue
  talk Warden Haro##15499
  turnin Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Rogue
  talk Keyl Swiftclaw##15500
  accept Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Rogue
  note Bring 1 Qiraji Martial Drape, 2 Azure Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8693 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Rogue
  talk Keyl Swiftclaw##15500
  turnin Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Bracers##8063 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Armsplint. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Armsplint##19717 |q 8063 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Bracers##8063 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Mantle##8072 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Girdle. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Girdle##19719 |q 8072 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Mantle##8072 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Tunic##8073 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Aegis. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Aegis##19724 |q 8073 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Tunic##8073 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  collect Zandalarian Shadow Talisman##19614 |q 8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  collect Zandalarian Shadow Talisman##19615 |q 8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  collect Zandalarian Shadow Talisman##19616 |q 8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  collect Qiraji Lord's Insignia##21229 |q 8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  accept Deathdealer's Boots##8637 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  note Bring the Qiraji Bindings of Command, 2 Idols of Strife, 5 Crystal Scarabs and 5 Bone Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Command##20928 |q 8637 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Rogue
  talk Kandrostrasz##15503
  turnin Deathdealer's Boots##8637 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Vethsera##15504
  accept Deathdealer's Vest##8638 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  note Bring the the Carapace of the Old God, 2 Idols of Strife, 5 Bronze Scarabs and 5 Ivory Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Carapace of the Old God##20929 |q 8638 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Rogue
  talk Vethsera##15504
  turnin Deathdealer's Vest##8638 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Andorgos##15502
  accept Deathdealer's Helm##8639 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  note Bring Vek'lor's Diadem, 2 Idols of the War, 5 Gold Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'lor's Diadem##20930 |q 8639 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'lor
step
  only Rogue
  talk Andorgos##15502
  turnin Deathdealer's Helm##8639 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  accept Deathdealer's Leggings##8640 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  note Bring Ouro's Intact Hide, 2 Idols of Night, 5 Stone Scarabs and 5 Crystal Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Ouro's Intact Hide##20927 |q 8640 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Rogue
  talk Kandrostrasz##15503
  turnin Deathdealer's Leggings##8640 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Andorgos##15502
  accept Deathdealer's Spaulders##8641 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  note Bring the Qiraji Bindings of Command, 2 Idols of the Sun, 5 Silver Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Command##20928 |q 8641 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Rogue
  talk Andorgos##15502
  turnin Deathdealer's Spaulders##8641 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
]])
