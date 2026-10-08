-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Hunter", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "c49ffd6e",
}, [[
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  collect Tough Wolf Meat##750 |q 179 |goto Elwynn Forest 49.41,37.75 |tip {dropsfrom}Timber Wolf, Young Wolf, Ragged Timber Wolf
step
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Hunter
  talk Sten Stoutarm##658
  accept Etched Rune##3108 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Hunter
  note Read the Etched Rune and speak to Thorgas Grimson in Coldridge Valley.
  talk Thorgas Grimson##895
  turnin Etched Rune##3108 |goto Dun Morogh 29.18,67.45
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  talk Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only NightElf Hunter
  talk Conservator Ilthalaine##2079
  accept Etched Sigil##3117 |goto Teldrassil 58.69,44.27
step
  only NightElf Hunter
  note Read the Etched Sigil and speak to Ayanna Everstride at the top of Aldrassil in Shadowglen.
  talk Ayanna Everstride##3596
  turnin Etched Sigil##3117 |goto Teldrassil 58.66,40.45
step
  talk Ailee Farheart##251362
  accept Coming of Age##92460 |goto Zephras Isle 42.82,23.37
step
  note Speak with Rorian the Dayseeker in Thendal Grove.
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
  only Skyborne Hunter
  talk Rorian the Dayseeker##251361
  accept The Way of the Hunter##92482 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Hunter
  note Read the Scribbled Note and then speak with Tai'ree Farsight in Thendal Grove.
  talk Tai'ree Farsight##251376
  turnin The Way of the Hunter##92482 |goto Zephras Isle 42.44,23.68
step
  only NightElf Hunter not completed(6072) not completed(6073) not completed(6721) not completed(6722) not haveq(6072) not haveq(6073) not haveq(6721) not haveq(6722)
  talk Jocaste##4146
  accept The Hunter's Path##6071 |goto Darnassus 40.38,8.55
step
  only NightElf Hunter not completed(6072) not completed(6073) not completed(6721) not completed(6722) not haveq(6072) not haveq(6073) not haveq(6721) not haveq(6722)
  note Speak with Dazalar in Dolanaar.
  talk Dazalar##3601
  turnin The Hunter's Path##6071 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6063 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  note Use the Taming Rod to tame a Webwood Lurker. Practice your skills, then return the Taming Rod to Dazalar in Dolanaar.
  use Webwood Lurker##1998 |q 6063 |goto Teldrassil 60.14,60.26 |tip {useit}
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6063 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6101 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  note Use the Taming Rod to tame a Nightsaber Stalker. Practice your skills, then return the Taming Rod to Dazalar in Dolanaar.
  use Nightsaber Stalker##2043 |q 6101 |goto Teldrassil 46.59,71.34 |tip {useit}
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6101 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Taming the Beast##6102 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  note Use the Taming Rod to tame a Strigid Screecher. Practice your skills, then return the Taming Rod to Dazalar in Dolanaar.
  use Strigid Screecher##1996 |q 6102 |goto Teldrassil 41.05,68.39 |tip {useit}
step
  only NightElf Hunter
  talk Dazalar##3601
  turnin Taming the Beast##6102 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  talk Dazalar##3601
  accept Training the Beast##6103 |goto Teldrassil 56.68,59.49
step
  only NightElf Hunter
  note Speak to Jocaste in the Cenarion Enclave, in Darnassus.
  talk Jocaste##4146
  turnin Training the Beast##6103 |goto Darnassus 40.38,8.55
step
  only Human Hunter
  talk Josephine Carson##251507
  accept Taming the Beast##94792 |goto Elwynn Forest 41.21,66.34
step
  only Human Hunter
  note Use the Taming Rod to tame a Rockhide Boar. Practice your skills, then return the Taming Rod to Josephine Carson.
  talk Josephine Carson##251507
  turnin Taming the Beast##94792 |goto Elwynn Forest 41.21,66.34
step
  only Human Hunter
  talk Josephine Carson##251507
  accept Training the Beast##94793 |goto Elwynn Forest 41.21,66.34
step
  only Human Hunter
  note Speak to Isaac Chan in Goldshire.
  talk Isaac Chan##258930
  turnin Training the Beast##94793 |goto Elwynn Forest 41.72,66.39
step
  only Human Hunter
  talk Josephine Carson##251507
  accept Taming the Beast##94863 |goto Elwynn Forest 41.21,66.34
step
  only Human Hunter
  note Use the Taming Rod to tame a Gray Forest Wolf. Practice your skills, then return the Taming Rod to Josephine Carson.
  talk Josephine Carson##251507
  turnin Taming the Beast##94863 |goto Elwynn Forest 41.21,66.34
step
  only Human Hunter
  talk Josephine Carson##251507
  accept Taming the Beast##94864 |goto Elwynn Forest 41.21,66.34
step
  only Human Hunter
  note Use the Taming Rod to tame a Young Forest Bear. Practice your skills, then return the Taming Rod to Josephine Carson.
  talk Josephine Carson##251507
  turnin Taming the Beast##94864 |goto Elwynn Forest 41.21,66.34
step
  only Dwarf Hunter not completed(6075) not completed(6076) not haveq(6075) not haveq(6076)
  talk Olmin Burningbeard##5116
  accept The Hunter's Path##6074 |goto Ironforge 70.89,83.61
step
  only Dwarf Hunter not completed(6075) not completed(6076) not haveq(6075) not haveq(6076)
  note Speak with Grif Wildheart in Kharanos.
  talk Grif Wildheart##1231
  turnin The Hunter's Path##6074 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  note Use the Taming Rod to tame a Large Crag Boar. Practice your skills, then return the Taming Rod to Grif Wildheart in Kharanos.
  use Large Crag Boar##1126 |q 6064 |goto Dun Morogh 48.1,47.25 |tip {useit}
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  note Use the Taming Rod to tame a Snow Leopard. Practice your skills, then return to Grif Wildheart in Kharanos.
  use Snow Leopard##1201 |q 6084 |goto Dun Morogh 48.29,56.53 |tip {useit}
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  note Use the Taming Rod to tame an Ice Claw Bear. Practice your skills, then return the Taming Rod to Grif Wildheart in Kharanos.
  use Ice Claw Bear##1196 |q 6085 |goto Dun Morogh 35.9,46.93 |tip {useit}
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Training the Beast##6086 |goto Dun Morogh 45.81,53.04
step
  only Dwarf Hunter
  note Speak with Belia Thundergranite in Ironforge.
  talk Belia Thundergranite##10090
  turnin Training the Beast##6086 |goto Ironforge 70.86,85.83
step
  only Skyborne Hunter
  talk Elayaa Easewind##254084
  accept Taming the Beast##94007 |goto Zephras Isle 45.14,44.94
step
  only Skyborne Hunter
  note Report to Quel'ana Quickgale in Valanaar.
  talk Quel'ana Quickgale##252389
  turnin Taming the Beast##94007 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  accept Taming the Beast##94978 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Hunter
  note Use the Taming Rod to tame a Windsong Crawler found near bodies of water. Practice your skills, then return the Taming Rod to Quel'ana Quickgale in Valanaar.
  use Windsong Crawler##254588 |q 94978 |goto Zephras Isle 50.91,60.4 |tip {useit}
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  turnin Taming the Beast##94978 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  accept Taming the Beast##94979 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Hunter
  note Use the Taming Rod to tame an Ornery Galestrider in the Gustberry Lowlands. Practice your skills, then return the Taming Rod to Quel'ana Quickgale in Valanaar.
  use Vuldren Alpha##250874 |q 94979 |goto Zephras Isle 53.85,73.83 |tip {useit}
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  turnin Taming the Beast##94979 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  accept Taming the Beast##94013 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Hunter
  note Use the Taming Rod to tame a Vuldren Alpha in the Gustberry Lowlands. Practice your skills, then return the Taming Rod to Quel'ana Quickgale in Valanaar.
  use Ornery Galestrider##251707 |q 94013 |goto Zephras Isle 50.86,77.44 |tip {useit}
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  turnin Taming the Beast##94013 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Hunter
  talk Quel'ana Quickgale##252389
  accept Training the Beast##94050 |goto Zephras Isle 59.61,72.65
step
  only Skyborne Hunter
  note Speak to Quel'dora Quickgale in Valanaar.
  talk Quel'dora Quickgale##254411
  turnin Training the Beast##94050 |goto Zephras Isle 59.62,72.6
step
  only Hunter
  talk Dorion##4205
  accept The Hunter's Charm##8151 |goto Darnassus 42.21,7.27
step
  only Hunter
  note Speak to Ogtinc in Azshara.
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Hunter
  note Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
  collect Perfect Courser Antler##20017 |q 8153 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Hunter
  talk Ogtinc##8405
  turnin Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Hunter
  note Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 6 Wavethrasher Scales##20087 |q 8231 |goto Azshara 86.31,12.61 |tip {dropsfrom}Young Wavethrasher, Wavethrasher, Great Wavethrasher
step
  only Hunter
  talk Ogtinc##8405
  turnin Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Hunter
  note Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Tooth of Morphaz##20019 |q 8232 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Hunter
  talk Ogtinc##8405
  turnin The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Hunter
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Greatest Race of Hunters##7503 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  note Return the book to its rightful owners.
  talk Lorekeeper Mykos##14382
  turnin The Greatest Race of Hunters##7503 |goto Dire Maul - Dungeon -1,-1
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
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  note Bring the Sealed Blood Container to Mux Manascrambler inside Gadgetzan in Tanaris.
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
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
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  note Bring the Extra-Dimensional Ghost Revealer to Deliana in Ironforge.
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  accept Just Compensation##8931 |goto Ironforge 43.53,52.64
step
  only Hunter
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Deliana in Ironforge.
  collect Beaststalker's Belt##16680 |q 8931 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Hunter
  talk Deliana##16013
  turnin Just Compensation##8931 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  note Use the Extra-Dimensional Ghost Revealer at the entrance to Stratholme and speak with the ghost of Anthion Harmon.
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
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
  note Bring Ysida's Locket to Anthion Harmon in Eastern Plaguelands.
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
  note Take the incomplete Banner of Provocation to Falrin Treeshaper at the library in Dire Maul.
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
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8952 |goto Eastern Plaguelands 26.11,11.3
step
  only Hunter
  note Return to Deliana in Ironforge with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  collect Beaststalker's Boots##16675 |q 8952 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Nerub'enkan
step
  only Hunter
  talk Deliana##16013
  turnin Anthion's Parting Words##8952 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  note Travel to Blackrock Mountain and use the Extra-Dimensional Ghost Revealer to find Bodley near Blackrock Spire.
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960 |goto Eastern Kingdoms - the continent map 48.9,63.93
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
  accept Back to the Beginning##8997 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Speak with Deliana at The High Seat in Ironforge.
  talk Deliana##16013
  turnin Back to the Beginning##8997 |goto Ironforge 43.53,52.64
step
  only Hunter
  talk Deliana##16013
  accept Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
step
  only Hunter
  note Give Deliana your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9000 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter
  talk Deliana##16013
  turnin Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
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
  note Rutgar Glyphshaper at Bronzebeard's Encampment wants you to deliver the Glyphed Crystal Prism to Geologist Larksbane at the Cenarion Hold in Silithus.
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
  only Hunter
  talk Geologist Larksbane##15183
  accept Armaments of War##8377 |goto Silithus 49.67,37.46
step
  only Hunter
  talk Geologist Larksbane##15183
  turnin Armaments of War##8377 |goto Silithus 49.67,37.46
step
  only Hunter
  click Cache of the Firelord##179703
  accept The Ancient Leaf##7632 |goto Molten Core - Dungeon -1,-1
step
  only Hunter
  note Find the owner of the Ancient Petrified Leaf. Good luck, <Name>; It's a big world.
  talk Vartrus the Ancient##14524
  turnin The Ancient Leaf##7632 |goto Felwood 47.78,24.08
step
  only Hunter
  talk Stoma the Ancient##14525
  accept A Proper String##7635 |goto Felwood 48.39,22.29
step
  only Hunter
  note Stoma the Ancient has asked that you bring him a Mature Black Dragon Sinew. Should you find this sinew, return it to Stoma in Felwood.
  collect Mature Black Dragon Sinew##18705 |q 7635 |goto Onyxia's Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Onyxia
step
  only Hunter
  talk Stoma the Ancient##14525
  turnin A Proper String##7635 |goto Felwood 48.39,22.29
step
  only Hunter
  talk Hastat the Ancient##14526
  accept Ancient Sinew Wrapped Lamina##7634 |goto Felwood 46.7,24.06
step
  only Hunter
  note Hastat the Ancient has asked that you bring him a Mature Blue Dragon Sinew. Should you find this sinew, return it to Hastat in Felwood.
  collect Mature Blue Dragon Sinew##18704 |q 7634 |goto Winterspring 56.69,51.72 |tip {dropsfrom}Cobalt Wyrmkin, Cobalt Scalebane, Azuregos
step
  only Hunter
  talk Hastat the Ancient##14526
  turnin Ancient Sinew Wrapped Lamina##7634 |goto Felwood 46.7,24.06
step
  only Hunter
  talk Vartrus the Ancient##14524
  accept An Introduction##7633 |goto Felwood 47.78,24.08
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin An Introduction##7633 |goto Felwood 47.78,24.08
step
  only Hunter
  talk Vartrus the Ancient##14524
  accept Stave of the Ancients##7636 |goto Felwood 47.78,24.08
step
  only Hunter
  note You must find and destroy these four demonic corrupters:
  kill Simone the Inconspicuous##14527 |goto Un'Goro Crater 34.32,40.79 |elite
  collect Simone's Head##18952 |q 7636 |goto Un'Goro Crater 34.32,40.79
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin Stave of the Ancients##7636 |goto Felwood 47.78,24.08
]])
