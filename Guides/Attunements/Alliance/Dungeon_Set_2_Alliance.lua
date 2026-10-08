-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Alliance/Dungeon Set 2 (Alliance)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "4b93fff2",
}, [[
step
  only Druid
  talk Deliana##16013
  accept An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  only Druid
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Wildheart Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8905 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Druid
  talk Deliana##16013
  turnin An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  accept An Earnest Proposition##8906 |goto Ironforge 43.53,52.64
step
  only Hunter
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Beaststalker's Bindings to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8906 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Hunter
  talk Deliana##16013
  turnin An Earnest Proposition##8906 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  accept An Earnest Proposition##8907 |goto Ironforge 43.53,52.64
step
  only Mage
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Magister's Bindings to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8907 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Mage
  talk Deliana##16013
  turnin An Earnest Proposition##8907 |goto Ironforge 43.53,52.64
step
  only Paladin
  talk Deliana##16013
  accept An Earnest Proposition##8908 |goto Ironforge 43.53,52.64
step
  only Paladin
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Lightforge Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8908 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Paladin
  talk Deliana##16013
  turnin An Earnest Proposition##8908 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  accept An Earnest Proposition##8909 |goto Ironforge 43.53,52.64
step
  only Priest
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with 1 set of Devout Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8909 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Priest
  talk Deliana##16013
  turnin An Earnest Proposition##8909 |goto Ironforge 43.53,52.64
step
  only Rogue
  talk Deliana##16013
  accept An Earnest Proposition##8910 |goto Ironforge 43.53,52.64
step
  only Rogue
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Shadowcraft Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8910 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Rogue
  talk Deliana##16013
  turnin An Earnest Proposition##8910 |goto Ironforge 43.53,52.64
step
  only Warlock
  talk Deliana##16013
  accept An Earnest Proposition##8911 |goto Ironforge 43.53,52.64
step
  only Warlock
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Dreadmist Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8911 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Warlock
  talk Deliana##16013
  turnin An Earnest Proposition##8911 |goto Ironforge 43.53,52.64
step
  only Warrior
  talk Deliana##16013
  accept An Earnest Proposition##8912 |goto Ironforge 43.53,52.64
step
  only Warrior
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Bracers of Valor to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8912 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Warrior
  talk Deliana##16013
  turnin An Earnest Proposition##8912 |goto Ironforge 43.53,52.64
step
  only not Shaman
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  only not Shaman
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  only not Shaman
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only not Shaman
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  only not Shaman
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only not Shaman
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only not Shaman
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  only not Shaman
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only not Shaman
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only not Shaman
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  only not Shaman
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only not Shaman
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only not Shaman
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  only not Shaman
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only not Shaman
  talk Mux Manascrambler##16014
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  only not Shaman
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Druid not Shaman
  talk Deliana##16013
  accept Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  only Druid not Shaman
  note Bring a Wildheart Belt and a set of Wildheart Gloves Deliana in Ironforge.
  collect Wildheart Belt##16716 |q 8926 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Druid not Shaman
  talk Deliana##16013
  turnin Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  only Hunter not Shaman
  talk Deliana##16013
  accept Just Compensation##8931 |goto Ironforge 43.53,52.64
step
  only Hunter not Shaman
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Deliana in Ironforge.
  collect Beaststalker's Belt##16680 |q 8931 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Hunter not Shaman
  talk Deliana##16013
  turnin Just Compensation##8931 |goto Ironforge 43.53,52.64
step
  only Mage not Shaman
  talk Deliana##16013
  accept Just Compensation##8932 |goto Ironforge 43.53,52.64
step
  only Mage not Shaman
  note Bring a Magister's Belt and a set of Magister's Gloves to Deliana in Ironforge.
  collect Magister's Belt##16685 |q 8932 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Smolderthorn Mystic, Thuzadin Shadowcaster, Thuzadin Necromancer
step
  only Mage not Shaman
  talk Deliana##16013
  turnin Just Compensation##8932 |goto Ironforge 43.53,52.64
step
  only Paladin not Shaman
  talk Deliana##16013
  accept Just Compensation##8933 |goto Ironforge 43.53,52.64
step
  only Paladin not Shaman
  note Bring a Lightforge Belt and a set of Lightforge Gauntlets to Deliana in Ironforge.
  collect Lightforge Belt##16723 |q 8933 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Rockwing Gargoyle, Rockwing Screecher, Crimson Guardsman
step
  only Paladin not Shaman
  talk Deliana##16013
  turnin Just Compensation##8933 |goto Ironforge 43.53,52.64
step
  only Priest not Shaman
  talk Deliana##16013
  accept Just Compensation##8934 |goto Ironforge 43.53,52.64
step
  only Priest not Shaman
  note Bring a Devout Belt and a set of Devout Gloves to Deliana in Ironforge.
  collect Devout Belt##16696 |q 8934 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Spellbinder, Smolderthorn Shadow Priest, Firebrand Darkweaver
step
  only Priest not Shaman
  talk Deliana##16013
  turnin Just Compensation##8934 |goto Ironforge 43.53,52.64
step
  only Rogue not Shaman
  talk Deliana##16013
  accept Just Compensation##8935 |goto Ironforge 43.53,52.64
step
  only Rogue not Shaman
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Deliana in Ironforge.
  collect Shadowcraft Belt##16713 |q 8935 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip {dropsfrom}Scarshield Legionnaire, Firebrand Grunt, Scarshield Quartermaster
step
  only Rogue not Shaman
  talk Deliana##16013
  turnin Just Compensation##8935 |goto Ironforge 43.53,52.64
step
  only Warlock not Shaman
  talk Deliana##16013
  accept Just Compensation##8936 |goto Ironforge 43.53,52.64
step
  only Warlock not Shaman
  note Bring a Dreadmist Belt and a set of Dreadmist Wraps to Deliana in Ironforge.
  collect Dreadmist Belt##16702 |q 8936 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Thuzadin Shadowcaster, Thuzadin Necromancer, Crimson Conjuror
step
  only Warlock not Shaman
  talk Deliana##16013
  turnin Just Compensation##8936 |goto Ironforge 43.53,52.64
step
  only Warrior not Shaman
  talk Deliana##16013
  accept Just Compensation##8937 |goto Ironforge 43.53,52.64
step
  only Warrior not Shaman
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Deliana in Ironforge.
  collect Belt of Valor##16736 |q 8937 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  only Warrior not Shaman
  talk Deliana##16013
  turnin Just Compensation##8937 |goto Ironforge 43.53,52.64
step
  only not Shaman
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  only not Shaman
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
step
  only not Shaman
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  only not Shaman
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  only not Shaman
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  only not Shaman
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  only not Shaman
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  only not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  only not Shaman
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  only not Shaman
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  only not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  only not Shaman
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  only not Shaman
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  only not Shaman
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  only not Shaman
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  only not Shaman
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  only not Shaman
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  only not Shaman
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  only not Shaman
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  only not Shaman
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  only not Shaman
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8951 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid not Shaman
  note Return to Deliana in Ironforge with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 8951 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Druid not Shaman
  talk Deliana##16013
  turnin Anthion's Parting Words##8951 |goto Ironforge 43.53,52.64
step
  only Hunter not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8952 |goto Eastern Plaguelands 26.11,11.3
step
  only Hunter not Shaman
  note Return to Deliana in Ironforge with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  collect Beaststalker's Boots##16675 |q 8952 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Nerub'enkan
step
  only Hunter not Shaman
  talk Deliana##16013
  turnin Anthion's Parting Words##8952 |goto Ironforge 43.53,52.64
step
  only Mage not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8953 |goto Eastern Plaguelands 26.11,11.3
step
  only Mage not Shaman
  note Return to Deliana in Ironforge with a set of Magister's Boots, Magister's Leggings and Magister's Mantle.
  collect Magister's Boots##16682 |q 8953 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Hearthsinger Forresten
step
  only Mage not Shaman
  talk Deliana##16013
  turnin Anthion's Parting Words##8953 |goto Ironforge 43.53,52.64
step
  only Paladin not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8954 |goto Eastern Plaguelands 26.11,11.3
step
  only Paladin not Shaman
  note Return to Deliana in Ironforge with a set of Lightforge Boots, Lightforge Legplates and Lightforge Spaulders.
  collect Lightforge Boots##16725 |q 8954 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Balnazzar
step
  only Paladin not Shaman
  talk Deliana##16013
  turnin Anthion's Parting Words##8954 |goto Ironforge 43.53,52.64
step
  only Priest not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8955 |goto Eastern Plaguelands 26.11,11.3
step
  only Priest not Shaman
  note Return to Deliana in Ironforge with a set of Devout Sandals, Devout Skirt and Devout Mantle.
  collect Devout Sandals##16691 |q 8955 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Maleki the Pallid
step
  only Priest not Shaman
  talk Deliana##16013
  turnin Anthion's Parting Words##8955 |goto Ironforge 43.53,52.64
step
  only Rogue not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8956 |goto Eastern Plaguelands 26.11,11.3
step
  only Rogue not Shaman
  note Return to Deliana in Ironforge with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  collect Shadowcraft Boots##16711 |q 8956 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Rattlegore
step
  only Rogue not Shaman
  talk Deliana##16013
  turnin Anthion's Parting Words##8956 |goto Ironforge 43.53,52.64
step
  only Warlock not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8958 |goto Eastern Plaguelands 26.11,11.3
step
  only Warlock not Shaman
  note Return to Deliana in Ironforge with a set of Dreadmist Sandals, Dreadmist Leggings and Dreadmist Mantle.
  collect Dreadmist Sandals##16704 |q 8958 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baroness Anastari
step
  only Warlock not Shaman
  talk Deliana##16013
  turnin Anthion's Parting Words##8958 |goto Ironforge 43.53,52.64
step
  only Warrior not Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8959 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior not Shaman
  note Return to Deliana in Ironforge with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  collect Boots of Valor##16734 |q 8959 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Kirtonos the Herald
step
  only Warrior not Shaman
  talk Deliana##16013
  turnin Anthion's Parting Words##8959 |goto Ironforge 43.53,52.64
step
  only not Shaman
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  only not Shaman
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  talk Bodley##16033
  accept Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  note Gather the Incendicite of Incendius, the Ember of Emberseer and the Cinder of Cynders, along with a Hallowed Brazier, and return them to Bodley inside Blackrock Mountain.
  collect Incendicite of Incendius##21987 |q 8961 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Lord Incendius
step
  only not Shaman
  talk Bodley##16033
  turnin Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  accept Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 58.08,86.89 |elite
  collect Druidical Remains##22226 |q 8962 |goto Silithus 58.08,86.89
step
  only not Shaman not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  turnin Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8966 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not Shaman not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  talk Bodley##16033
  accept I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  note Gather 20 Bloodkelp from the Strashaz naga and then return to Bodley inside Blackrock Mountain.
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 76.94,19.81 |tip {dropsfrom}Strashaz Warrior, Strashaz Serpent Guard, Strashaz Myrmidon
step
  only not Shaman
  talk Bodley##16033
  turnin I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  accept More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.55 |elite
  collect Starbreeze Village Relic##22227 |q 8985 |goto Winterspring 62.56,69.55
step
  only not Shaman not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  turnin More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8986) not completed(8988) not completed(8989) not haveq(8986) not haveq(8988) not haveq(8989)
  talk Bodley##16033
  accept More Components of Importance##8987 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8986) not completed(8988) not completed(8989) not haveq(8986) not haveq(8988) not haveq(8989)
  note Retrieve a Brilliant Sword of Zealotry and return it to Bodley inside Blackrock Mountain.
  kill Scarlet Praetorian##9448 |goto Eastern Plaguelands 76.01,72.76 |elite
  collect Brilliant Sword of Zealotry##22228 |q 8987 |goto Eastern Plaguelands 76.01,72.76
step
  only not Shaman not completed(8986) not completed(8988) not completed(8989) not haveq(8986) not haveq(8988) not haveq(8989)
  talk Bodley##16033
  turnin More Components of Importance##8987 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8989 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not Shaman not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  talk Bodley##16033
  accept Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  note Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain.
  collect 40 Blackrock Bracer##22138 |q 8994 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Sentry, Scarshield Acolyte, Scarshield Legionnaire
step
  only not Shaman
  talk Bodley##16033
  turnin Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  note Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
  use Lord Valthalak##16042 |q 8995 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {useit}
step
  only not Shaman
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995 |goto Blackrock Spire - Dungeon -1,-1
step
  only not Shaman
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996 |goto Blackrock Spire - Dungeon -1,-1
step
  only not Shaman
  note Return to Bodley inside Blackrock Mountain and give him the Brazier of Beckoning.
  collect Brazier of Beckoning##22056 |q 8996 |goto Blackrock Spire - Dungeon -1,-1
step
  only not Shaman
  talk Bodley##16033
  turnin Return to Bodley##8996 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  talk Bodley##16033
  accept Back to the Beginning##8997 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not Shaman
  talk Deliana##16013
  turnin Back to the Beginning##8997 |goto Ironforge 43.53,52.64
step
  only Druid not Shaman
  talk Deliana##16013
  accept Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
step
  only Druid not Shaman
  note Give Deliana your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 8999 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Druid not Shaman
  talk Deliana##16013
  turnin Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
step
  only Hunter not Shaman
  talk Deliana##16013
  accept Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
step
  only Hunter not Shaman
  note Give Deliana your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9000 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter not Shaman
  talk Deliana##16013
  turnin Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
step
  only Mage not Shaman
  talk Deliana##16013
  accept Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
step
  only Mage not Shaman
  note Give Deliana your Magister's Crown and Magister's Robes.
  collect Magister's Crown##16686 |q 9001 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Mage not Shaman
  talk Deliana##16013
  turnin Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
step
  only Paladin not Shaman
  talk Deliana##16013
  accept Saving the Best for Last##9002 |goto Ironforge 43.53,52.64
step
  only Paladin not Shaman
  note Give Deliana your Lightforge Helm and Lightforge Breastplate.
  collect Lightforge Helm##16727 |q 9002 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Paladin not Shaman
  talk Deliana##16013
  turnin Saving the Best for Last##9002 |goto Ironforge 43.53,52.64
step
  only Priest not Shaman
  talk Deliana##16013
  accept Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
step
  only Priest not Shaman
  note Give Deliana your Devout Crown and Devout Robe.
  collect Devout Crown##16693 |q 9003 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Priest not Shaman
  talk Deliana##16013
  turnin Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
step
  only Rogue not Shaman
  talk Deliana##16013
  accept Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
step
  only Rogue not Shaman
  note Give Deliana your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9004 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue not Shaman
  talk Deliana##16013
  turnin Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
step
  only Warlock not Shaman
  talk Deliana##16013
  accept Saving the Best for Last##9005 |goto Ironforge 43.53,52.64
step
  only Warlock not Shaman
  note Give Deliana your Dreadmist Mask and Dreadmist Robe.
  collect Dreadmist Mask##16698 |q 9005 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warlock not Shaman
  talk Deliana##16013
  turnin Saving the Best for Last##9005 |goto Ironforge 43.53,52.64
step
  only Warrior not Shaman
  talk Deliana##16013
  accept Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
step
  only Warrior not Shaman
  note Give Deliana your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9006 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior not Shaman
  talk Deliana##16013
  turnin Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
]])
