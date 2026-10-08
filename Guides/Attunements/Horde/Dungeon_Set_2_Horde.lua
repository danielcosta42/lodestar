-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Horde/Dungeon Set 2 (Horde)", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "94882bfe",
}, [[
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  accept An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Beaststalker's Bindings to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8914 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Hunter
  talk Mokvar##16012
  turnin An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29
step
  only Mage
  talk Mokvar##16012
  accept An Earnest Proposition##8915 |goto Orgrimmar 34.95,38.29
step
  only Mage
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Magister's Bindings to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8915 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Mage
  talk Mokvar##16012
  turnin An Earnest Proposition##8915 |goto Orgrimmar 34.95,38.29
step
  only Priest
  talk Mokvar##16012
  accept An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29
step
  only Priest
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Devout Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8916 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Priest
  talk Mokvar##16012
  turnin An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29
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
  only Shaman
  talk Mokvar##16012
  accept An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bindings of Elements to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8918 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Shaman
  talk Mokvar##16012
  turnin An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  talk Mokvar##16012
  accept An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Dreadmist Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8919 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warlock
  talk Mokvar##16012
  turnin An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  accept An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bracers of Valor to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8920 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warrior
  talk Mokvar##16012
  turnin An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  only not Paladin
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  only not Paladin
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  only not Paladin
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only not Paladin
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  only not Paladin
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only not Paladin
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only not Paladin
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  only not Paladin
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only not Paladin
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only not Paladin
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  only not Paladin
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only not Paladin
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only not Paladin
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  only not Paladin
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only not Paladin
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  only not Paladin
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Druid not Paladin
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Druid not Paladin
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Druid not Paladin
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Hunter not Paladin
  talk Mokvar##16012
  accept Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  only Hunter not Paladin
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Mokvar in Orgrimmar.
  collect Beaststalker's Belt##16680 |q 8938 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Hunter not Paladin
  talk Mokvar##16012
  turnin Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  only Mage not Paladin
  talk Mokvar##16012
  accept Just Compensation##8939 |goto Orgrimmar 34.95,38.29
step
  only Mage not Paladin
  note Bring a Magister's Belt and a set of Magister's Gloves to Mokvar in Orgrimmar.
  collect Magister's Belt##16685 |q 8939 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Smolderthorn Mystic, Thuzadin Shadowcaster, Thuzadin Necromancer
step
  only Mage not Paladin
  talk Mokvar##16012
  turnin Just Compensation##8939 |goto Orgrimmar 34.95,38.29
step
  only Priest not Paladin
  talk Mokvar##16012
  accept Just Compensation##8940 |goto Orgrimmar 34.95,38.29
step
  only Priest not Paladin
  note Bring a Devout Belt and a set of Devout Gloves to Mokvar in Orgrimmar.
  collect Devout Belt##16696 |q 8940 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Spellbinder, Smolderthorn Shadow Priest, Firebrand Darkweaver
step
  only Priest not Paladin
  talk Mokvar##16012
  turnin Just Compensation##8940 |goto Orgrimmar 34.95,38.29
step
  only Rogue not Paladin
  talk Mokvar##16012
  accept Just Compensation##8941 |goto Orgrimmar 34.95,38.29
step
  only Rogue not Paladin
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Mokvar in Orgrimmar.
  collect Shadowcraft Belt##16713 |q 8941 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip {dropsfrom}Scarshield Legionnaire, Firebrand Grunt, Scarshield Quartermaster
step
  only Rogue not Paladin
  talk Mokvar##16012
  turnin Just Compensation##8941 |goto Orgrimmar 34.95,38.29
step
  only Shaman not Paladin
  talk Mokvar##16012
  accept Just Compensation##8942 |goto Orgrimmar 34.95,38.29
step
  only Shaman not Paladin
  note Bring a Cord of Elements and a set of Gauntlets of Elements to Mokvar in Orgrimmar.
  collect Cord of Elements##16673 |q 8942 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip {dropsfrom}Scarshield Warlock, Firebrand Invoker, Scarshield Quartermaster
step
  only Shaman not Paladin
  talk Mokvar##16012
  turnin Just Compensation##8942 |goto Orgrimmar 34.95,38.29
step
  only Warlock not Paladin
  talk Mokvar##16012
  accept Just Compensation##8943 |goto Orgrimmar 34.95,38.29
step
  only Warlock not Paladin
  note Bring a Dreadmist Belt and a set of Dreadmist Wraps to Mokvar in Orgrimmar.
  collect Dreadmist Belt##16702 |q 8943 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Thuzadin Shadowcaster, Thuzadin Necromancer, Crimson Conjuror
step
  only Warlock not Paladin
  talk Mokvar##16012
  turnin Just Compensation##8943 |goto Orgrimmar 34.95,38.29
step
  only Warrior not Paladin
  talk Mokvar##16012
  accept Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  only Warrior not Paladin
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Mokvar in Orgrimmar.
  collect Belt of Valor##16736 |q 8944 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  only Warrior not Paladin
  talk Mokvar##16012
  turnin Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  only not Paladin
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  only not Paladin
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
step
  only not Paladin
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  only not Paladin
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  only not Paladin
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  only not Paladin
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  only not Paladin
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  only not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  only not Paladin
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  only not Paladin
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  only not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  only not Paladin
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  only not Paladin
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  only not Paladin
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  only not Paladin
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  only not Paladin
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  only not Paladin
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  only not Paladin
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  only not Paladin
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  only not Paladin
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  only not Paladin
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
step
  only Shaman not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8957 |goto Eastern Plaguelands 26.11,11.3
step
  only Shaman not Paladin
  note Return to Mokvar in Orgimmar with a set of Boots of Elements, Kilt of Elements and Pauldrons of Elements.
  collect Boots of Elements##16670 |q 8957 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  only Shaman not Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##8957 |goto Orgrimmar 34.95,38.29
step
  only Druid not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9016 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid not Paladin
  note Return to Mokvar in Orgimmar with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 9016 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Druid not Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##9016 |goto Orgrimmar 34.95,38.29
step
  only Hunter not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9017 |goto Eastern Plaguelands 26.11,11.3
step
  only Hunter not Paladin
  note Return to Mokvar in Orgimmar with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  collect Beaststalker's Boots##16675 |q 9017 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Nerub'enkan
step
  only Hunter not Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##9017 |goto Orgrimmar 34.95,38.29
step
  only Mage not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9018 |goto Eastern Plaguelands 26.11,11.3
step
  only Mage not Paladin
  note Return to Mokvar in Orgimmar with a set of Magister's Boots, Magister's Leggings and Magister's Mantle.
  collect Magister's Boots##16682 |q 9018 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Hearthsinger Forresten
step
  only Mage not Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##9018 |goto Orgrimmar 34.95,38.29
step
  only Priest not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9019 |goto Eastern Plaguelands 26.11,11.3
step
  only Priest not Paladin
  note Return to Mokvar in Orgimmar with a set of Devout Sandals, Devout Skirt and Devout Mantle.
  collect Devout Sandals##16691 |q 9019 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Maleki the Pallid
step
  only Priest not Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##9019 |goto Orgrimmar 34.95,38.29
step
  only Rogue not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9020 |goto Eastern Plaguelands 26.11,11.3
step
  only Rogue not Paladin
  note Return to Mokvar in Orgimmar with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  collect Shadowcraft Boots##16711 |q 9020 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Rattlegore
step
  only Rogue not Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##9020 |goto Orgrimmar 34.95,38.29
step
  only Warlock not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9021 |goto Eastern Plaguelands 26.11,11.3
step
  only Warlock not Paladin
  note Return to Mokvar in Orgimmar with a set of Dreadmist Sandals, Dreadmist Leggings and Dreadmist Mantle.
  collect Dreadmist Sandals##16704 |q 9021 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baroness Anastari
step
  only Warlock not Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##9021 |goto Orgrimmar 34.95,38.29
step
  only Warrior not Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9022 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior not Paladin
  note Return to Mokvar in Orgimmar with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  collect Boots of Valor##16734 |q 9022 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Kirtonos the Herald
step
  only Warrior not Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##9022 |goto Orgrimmar 34.95,38.29
step
  only not Paladin
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  only not Paladin
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  talk Bodley##16033
  accept Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  note Gather the Incendicite of Incendius, the Ember of Emberseer and the Cinder of Cynders, along with a Hallowed Brazier, and return them to Bodley inside Blackrock Mountain.
  collect Incendicite of Incendius##21987 |q 8961 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Lord Incendius
step
  only not Paladin
  talk Bodley##16033
  turnin Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  accept Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 58.08,86.89 |elite
  collect Druidical Remains##22226 |q 8962 |goto Silithus 58.08,86.89
step
  only not Paladin not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  turnin Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8966 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not Paladin not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  talk Bodley##16033
  accept I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  note Gather 20 Bloodkelp from the Strashaz naga and then return to Bodley inside Blackrock Mountain.
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 76.94,19.81 |tip {dropsfrom}Strashaz Warrior, Strashaz Serpent Guard, Strashaz Myrmidon
step
  only not Paladin
  talk Bodley##16033
  turnin I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  accept More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.55 |elite
  collect Starbreeze Village Relic##22227 |q 8985 |goto Winterspring 62.56,69.55
step
  only not Paladin not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  turnin More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8986) not completed(8988) not completed(8989) not haveq(8986) not haveq(8988) not haveq(8989)
  talk Bodley##16033
  accept More Components of Importance##8987 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8986) not completed(8988) not completed(8989) not haveq(8986) not haveq(8988) not haveq(8989)
  note Retrieve a Brilliant Sword of Zealotry and return it to Bodley inside Blackrock Mountain.
  kill Scarlet Praetorian##9448 |goto Eastern Plaguelands 76.01,72.76 |elite
  collect Brilliant Sword of Zealotry##22228 |q 8987 |goto Eastern Plaguelands 76.01,72.76
step
  only not Paladin not completed(8986) not completed(8988) not completed(8989) not haveq(8986) not haveq(8988) not haveq(8989)
  talk Bodley##16033
  turnin More Components of Importance##8987 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8989 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not Paladin not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  talk Bodley##16033
  accept Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  note Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain.
  collect 40 Blackrock Bracer##22138 |q 8994 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Sentry, Scarshield Acolyte, Scarshield Legionnaire
step
  only not Paladin
  talk Bodley##16033
  turnin Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  note Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
  use Lord Valthalak##16042 |q 8995 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {useit}
step
  only not Paladin
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995 |goto Blackrock Spire - Dungeon -1,-1
step
  only not Paladin
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996 |goto Blackrock Spire - Dungeon -1,-1
step
  only not Paladin
  note Return to Bodley inside Blackrock Mountain and give him the Brazier of Beckoning.
  collect Brazier of Beckoning##22056 |q 8996 |goto Blackrock Spire - Dungeon -1,-1
step
  only not Paladin
  talk Bodley##16033
  turnin Return to Bodley##8996 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  talk Bodley##16033
  accept Back to the Beginning##8998 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Paladin
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29
step
  only Druid not Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29
step
  only Druid not Paladin
  note Give Mokvar your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 9007 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Druid not Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29
step
  only Hunter not Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
step
  only Hunter not Paladin
  note Give Mokvar your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9008 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter not Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
step
  only Priest not Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29
step
  only Priest not Paladin
  note Give Mokvar your Devout Crown and Devout Robe.
  collect Devout Crown##16693 |q 9009 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Priest not Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29
step
  only Rogue not Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
step
  only Rogue not Paladin
  note Give Mokvar your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9010 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue not Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
step
  only Shaman not Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
step
  only Shaman not Paladin
  note Give Mokvar your Coif of Elements and Vest of Elements.
  collect Coif of Elements##16667 |q 9011 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Shaman not Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
step
  only Warlock not Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29
step
  only Warlock not Paladin
  note Give Mokvar your Dreadmist Mask and Dreadmist Robe.
  collect Dreadmist Mask##16698 |q 9012 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warlock not Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29
step
  only Warrior not Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  only Warrior not Paladin
  note Give Mokvar your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9013 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior not Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  only Mage not Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##9014 |goto Orgrimmar 34.95,38.29
step
  only Mage not Paladin
  note Give Mokvar your Magister's Crown and Magister's Robes.
  collect Magister's Crown##16686 |q 9014 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Mage not Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##9014 |goto Orgrimmar 34.95,38.29
]])
