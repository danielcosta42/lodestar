-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackrock Spire", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Galamav the Marksman##9081
  accept The Pack Mistress##4724 |goto Badlands 5.96,47.73
step
  talk Lexlort##9080
  accept Operative Bijou##4981 |goto Badlands 5.88,47.63
step
  talk Scarshield Infiltrator##10299
  accept Seal of Ascension##4742 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warosh##10799
  accept Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warlord Goretooth##9077
  accept Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  talk Pip Quickwit##10776
  accept Pip Quickwit, At Your Service!##5047 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Awbee##10740
  accept The Matron Protectorate##5160 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Elder Stonefort##15560
  accept Stonefort the Elder##8644 |goto Blackrock Spire - Dungeon -1,-1
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  collect 8 Broodling Essence##12283 |q 4726 |goto Burning Steppes 64.36,46.15
step
  note Slay Halycon, pack mistress of the Bloodaxe worg.
  kill Halycon##10220 |q 4724 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan.
  collect Gemstone of Spirestone##12336 |q 4742 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  note Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
  collect Warosh's Mojo##12712 |q 4867 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Urok Doomhowl
step
  note Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
  kill Overlord Wyrmthalak##9568 |q 4903 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Galamav the Marksman##9081
  turnin The Pack Mistress##4724 |goto Badlands 5.96,47.73
step
  talk Bijou##10257
  turnin Operative Bijou##4981 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Scarshield Infiltrator##10299
  turnin Seal of Ascension##4742 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warosh##10799
  turnin Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warlord Goretooth##9077
  turnin Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  talk Malyfous Darkhammer##10637
  turnin Pip Quickwit, At Your Service!##5047 |goto Winterspring 60.99,38.78
step
  talk Haleh##10929
  turnin The Matron Protectorate##5160 |goto Winterspring 54.55,51.2
step
  talk Elder Stonefort##15560
  turnin Stonefort the Elder##8644 |goto Blackrock Spire - Dungeon -1,-1
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24
step
  talk Bijou##10257
  accept Bijou's Belongings##4982 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Scarshield Infiltrator##10299
  accept Seal of Ascension##4743 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note Find Bijou's Belongings and return them to her. You recall her mentioning that she stashed them on the bottom floor of the city.
  collect Bijou's Belongings##12345 |q 4982 |goto Blackrock Spire - Dungeon -1,-1
step
  note Travel to the Wyrmbog in Dustwallow Marsh. Find the ancient drake, Emberstrife and beat him without mercy until his will is broken.
  collect Forged Seal of Ascension##12324 |q 4743 |goto Dustwallow Marsh 56.37,87.83
step
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
step
  talk Bijou##10257
  turnin Bijou's Belongings##4982 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Scarshield Infiltrator##10299
  turnin Seal of Ascension##4743 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Bijou##10257
  accept Bijou's Reconnaissance Report##4983 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.97,42.75 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Lexlort##9080
  turnin Bijou's Reconnaissance Report##4983 |goto Badlands 5.88,47.63
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.76 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Use the Eggscilloscope Prototype on an egg in the Rookery.
  collect Rookery Egg##175124 |q 4734 |goto Blackrock Spire - Dungeon -1,-1
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  collect Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
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
step
  only Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8957 |goto Eastern Plaguelands 26.11,11.3
step
  only Shaman
  note Return to Mokvar in Orgimmar with a set of Boots of Elements, Kilt of Elements and Pauldrons of Elements.
  collect Boots of Elements##16670 |q 8957 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  only Shaman
  talk Mokvar##16012
  turnin Anthion's Parting Words##8957 |goto Orgrimmar 34.95,38.29
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
  talk Bodley##16033
  accept Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 61.05,86.89 |elite
  collect Druidical Remains##22226 |q 8962 |goto Silithus 61.05,86.89
step
  talk Bodley##16033
  turnin Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8966 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 20 Bloodkelp from the Strashaz naga and then return to Bodley inside Blackrock Mountain.
  kill Strashaz Warrior##4364 |goto Dustwallow Marsh 75.47,18.43 |elite
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 75.47,18.43
step
  talk Bodley##16033
  turnin I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.28 |elite
  collect Starbreeze Village Relic##22227 |q 8985 |goto Winterspring 62.56,69.28
step
  talk Bodley##16033
  turnin More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8989 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
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
]])
