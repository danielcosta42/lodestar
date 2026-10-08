-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackrock Depths", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Private Rocknot##9503
  accept Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Thunderheart##9084
  accept Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  click WANTED##164867
  accept KILL ON SIGHT: Dark Iron Dwarves##4081 |goto Badlands 3.74,47.43
step
  talk Mistress Nagmara##9500
  accept The Love Potion##4201 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -1,-1
step
  kill Lokhtos Darkbargainer##12944 |goto Blackrock Depths - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Elder Morndeep##15549
  accept Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -1,-1
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  collect Dark Iron Ale Mug##11325 |q 4295 |goto Duskwood 78.99,44.35 |tip {dropsfrom}Whit Wantmal, Anvilrage Officer, Grim Patron
step
  note Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment.
  kill Overmaster Pyron##9026 |q 3906 |goto Eastern Kingdoms - the continent map 46.82,67.7 |elite
step
  note Venture to Blackrock Depths and destroy the vile aggressors!
  kill Anvilrage Guardsman##8891 |q 4081 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  collect 4 Gromsblood##8846 |q 4201 |goto Maraudon - Dungeon -1,-1 |tip {dropsfrom}Razorlash, Gromsblood
step
  collect Dark Iron Ore##11370 |q 6642 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Dark Iron Deposit
step
  collect Fiery Core##17010 |q 6643 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Molten Destroyer, Firewalker, Flameguard
step
  collect Lava Core##17011 |q 6644 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Molten Destroyer, Lava Annihilator, Golemagg the Incinerator
step
  collect Core Leather##17012 |q 6645 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Blood of the Mountain##11382 |q 6646 |goto Burning Steppes 81.46,43.38 |tip {dropsfrom}Firegut Brute, War Reaver, Scalding Broodling
step
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  collect Sulfuron Ingot##17203 |q 7604 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Golemagg the Incinerator
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  talk Private Rocknot##9503
  turnin Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Thunderheart##9084
  turnin Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  talk Warlord Goretooth##9077
  turnin KILL ON SIGHT: Dark Iron Dwarves##4081 |goto Badlands 5.81,47.52
step
  talk Mistress Nagmara##9500
  turnin The Love Potion##4201 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Elder Morndeep##15549
  turnin Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -1,-1
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Galamav the Marksman##9081
  accept Commander Gor'shak##3981 |goto Badlands 5.96,47.73
step
  click KILL ON SIGHT##164868
  accept KILL ON SIGHT: High Ranking Dark Iron Officials##4082 |goto Badlands 3.94,46.73
step
  talk Thunderheart##9084
  accept Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note Venture to Blackrock Depths and destroy the vile aggressors!
  kill Anvilrage Medic##8894 |q 4082 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart.
  kill Lord Incendius##9017 |q 3907 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Commander Gor'shak##9020
  turnin Commander Gor'shak##3981 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Warlord Goretooth##9077
  turnin KILL ON SIGHT: High Ranking Dark Iron Officials##4082 |goto Badlands 5.81,47.52
step
  talk Thunderheart##9084
  turnin Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Commander Gor'shak##9020
  accept What Is Going On?##3982 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lexlort##9080
  accept Grark Lorkrub##4122 |goto Badlands 5.88,47.63
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Defend Gor'shak.
  kill Commander Gor'shak##9020 |q 3982 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Commander Gor'shak##9020
  turnin What Is Going On?##3982 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Grark Lorkrub##9520
  turnin Grark Lorkrub##4122 |goto Burning Steppes 40.2,34.24
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Commander Gor'shak##9020
  accept What Is Going On?##4001 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Grark Lorkrub##9520
  accept Precarious Predicament##4121 |goto Burning Steppes 40.2,34.24
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Speak with Kharan Mighthammer and gather information about Princess Moira Bronzebeard's kidnapping. Take that information to Thrall in Orgrimmar.
  talk Kharan Mighthammer##9021 |q 4001 |goto Blackrock Depths - Dungeon -1,-1
step
  note Escort your prisoner, Grark Lorkrub, through Burning Steppes and through Blackrock Mountain to the Searing Gorge.
  collect Thorium Shackles##11286 |q 4121 |goto Burning Steppes 40.2,34.24
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.76 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Thrall##4949
  turnin What Is Going On?##4001 |goto Orgrimmar 31.73,37.82
step
  talk Lexlort##9080
  turnin Precarious Predicament##4121 |goto Badlands 5.88,47.63
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Thrall##4949
  accept The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  talk Warlord Goretooth##9077
  accept Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete.
  kill General Angerforge##9033 |q 4132 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Thrall##4949
  turnin The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  talk Warlord Goretooth##9077
  turnin Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Thrall##4949
  accept The Royal Rescue##4003 |goto Orgrimmar 31.73,37.82
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell.
  kill Emperor Dagran Thaurissan##9019 |q 4003 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  talk Princess Moira Bronzebeard##8929
  turnin The Royal Rescue##4003 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess Saved?##4004 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Thrall##4949
  turnin The Princess Saved?##4004 |goto Orgrimmar 31.73,37.82
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Druid
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Druid
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
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
  kill Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
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
]])
