-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Hunter", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "9365caad",
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
  only Troll Hunter
  talk Gornek##3143
  accept Etched Tablet##3082 |goto Durotar 42.06,68.33
step
  only Troll Hunter
  note Speak to Jen'shan in the Valley of Trials.
  talk Jen'shan##3154
  turnin Etched Tablet##3082 |goto Durotar 42.84,69.33
step
  only Orc Hunter
  talk Gornek##3143
  accept Etched Parchment##3087 |goto Durotar 42.06,68.33
step
  only Orc Hunter
  note Read the Etched Parchment and speak to Jen'shan in the Valley of Trials.
  talk Jen'shan##3154
  turnin Etched Parchment##3087 |goto Durotar 42.84,69.33
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  collect Plainstrider Meat##4739 |q 747 |goto Mulgore 47.2,81.46 |tip {dropsfrom}Plainstrider
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  only Tauren Hunter
  talk Grull Hawkwind##2980
  accept Etched Note##3092 |goto Mulgore 44.47,77.5
step
  only Tauren Hunter
  note Read the Etched Note and speak to Lanka Farshot in Red Cloud Mesa.
  talk Lanka Farshot##3061
  turnin Etched Note##3092 |goto Mulgore 43.96,76.35
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
  only not Undead not Tauren not Skyborne Hunter not completed(6069) not completed(6070) not haveq(6069) not haveq(6070)
  talk Sian'dur##3407
  accept The Hunter's Path##6068 |goto Orgrimmar 67.96,17.8
step
  only not Undead not Tauren not Skyborne Hunter not completed(6069) not completed(6070) not haveq(6069) not haveq(6070)
  note Speak with Thotar at Razor Hill.
  talk Thotar##3171
  turnin The Hunter's Path##6068 |goto Durotar 51.85,43.49
step
  only not Undead not Tauren not Skyborne Hunter
  talk Thotar##3171
  accept Taming the Beast##6062 |goto Durotar 51.85,43.49
step
  only not Undead not Tauren not Skyborne Hunter
  note Use the Taming Rod to tame a Dire Mottled Boar. Practice your skills, then return the Taming Rod to Thotar in Razor Hill.
  use Dire Mottled Boar##3099 |q 6062 |goto Durotar 51.71,46.04 |tip {useit}
step
  only not Undead not Tauren not Skyborne Hunter
  talk Thotar##3171
  turnin Taming the Beast##6062 |goto Durotar 51.85,43.49
step
  only not Undead not Tauren not Skyborne Hunter
  talk Thotar##3171
  accept Taming the Beast##6083 |goto Durotar 51.85,43.49
step
  only not Undead not Tauren not Skyborne Hunter
  note Use the Taming Rod to tame a Surf Crawler. Practice your skills, then return the Taming Rod to Thotar at Razor Hill.
  use Surf Crawler##3107 |q 6083 |goto Durotar 64.15,78.85 |tip {useit}
step
  only not Undead not Tauren not Skyborne Hunter
  talk Thotar##3171
  turnin Taming the Beast##6083 |goto Durotar 51.85,43.49
step
  only not Undead not Tauren not Skyborne Hunter
  talk Thotar##3171
  accept Taming the Beast##6082 |goto Durotar 51.85,43.49
step
  only not Undead not Tauren not Skyborne Hunter
  note Use the Taming Rod to tame an Armored Scorpid. Practice your skills, then return to Thotar at Razor Hill.
  use Armored Scorpid##3126 |q 6082 |goto Durotar 44.45,33.61 |tip {useit}
step
  only not Undead not Tauren not Skyborne Hunter
  talk Thotar##3171
  turnin Taming the Beast##6082 |goto Durotar 51.85,43.49
step
  only not Undead not Tauren not Skyborne Hunter
  talk Thotar##3171
  accept Training the Beast##6081 |goto Durotar 51.85,43.49
step
  only not Undead not Tauren not Skyborne Hunter
  note Speak with Ormak Grimshot in Orgrimmar.
  talk Ormak Grimshot##3352
  turnin Training the Beast##6081 |goto Orgrimmar 66.05,18.53
step
  only Tauren Hunter not completed(6066) not completed(6067) not haveq(6066) not haveq(6067)
  talk Kary Thunderhorn##3038
  accept The Hunter's Path##6065 |goto Thunder Bluff 58.49,88.33
step
  only Tauren Hunter not completed(6066) not completed(6067) not haveq(6066) not haveq(6067)
  note Speak with Yaw Sharpmane in Bloodhoof Village.
  talk Yaw Sharpmane##3065
  turnin The Hunter's Path##6065 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6061 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  note Use the Taming Rod to tame an Adult Plainstrider. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Adult Plainstrider##2956 |q 6061 |goto Mulgore 40.37,60.65 |tip {useit}
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6061 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6087 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  note Use the Taming Rod to tame a Prairie Stalker. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Prairie Stalker##2959 |q 6087 |goto Mulgore 49.46,50.77 |tip {useit}
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6087 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Taming the Beast##6088 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  note Use the Taming Rod to tame a Swoop. Practice your skills, then return the Taming Rod to Yaw Sharpmane in Bloodhoof Village.
  use Swoop##2970 |q 6088 |goto Mulgore 48.6,50.19 |tip {useit}
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin Taming the Beast##6088 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  accept Training the Beast##6089 |goto Mulgore 46.93,59.65
step
  only Tauren Hunter
  note Speak with Holt Thunderhorn on Hunter Rise in Thunder Bluff.
  talk Holt Thunderhorn##3039
  turnin Training the Beast##6089 |goto Thunder Bluff 57.3,89.79
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
  talk Holt Thunderhorn##3039
  accept The Hunter's Charm##8151 |goto Thunder Bluff 57.3,89.79
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
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note Take the Sealed Venom Container to Mux Manascrambler in Gadgetzan.
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
  note Return to Mokvar in Orgrimmar with the Extra-Dimensional Ghost Revealer.
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  accept Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Mokvar in Orgrimmar.
  collect Beaststalker's Belt##16680 |q 8938 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Hunter
  talk Mokvar##16012
  turnin Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  note Use the Extra-Dimensional Ghost Revealer at the entrance to Stratholme and speak with the ghost of Anthion Harmon.
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
  accept Anthion's Parting Words##9017 |goto Eastern Plaguelands 26.11,11.3
step
  only Hunter
  note Return to Mokvar in Orgimmar with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  collect Beaststalker's Boots##16675 |q 9017 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Nerub'enkan
step
  only Hunter
  talk Mokvar##16012
  turnin Anthion's Parting Words##9017 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  note Travel to Blackrock Mountain and use the Extra-Dimensional Ghost Revealer to find Bodley near Blackrock Spire.
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
  note Speak with Mokvar at Grommash Hold in Orgrimmar's Valley of Wisdom.
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  accept Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Give Mokvar your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9008 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter
  talk Mokvar##16012
  turnin Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
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
