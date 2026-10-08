-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Shaman", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "c29b6a05",
}, [[
step
  only Dwarf Shaman
  talk Sten Stoutarm##658
  accept Archaic Rune##98581 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Shaman
  talk Teo Hammerstorm##257446
  turnin Archaic Rune##98581 |goto Dun Morogh 28.84,66.23
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
  only not Human not NightElf not Skyborne Shaman
  talk Teo Hammerstorm##257446
  accept Call of Earth##94373 |goto Dun Morogh 28.84,66.23
step
  only not Human not NightElf not Skyborne Shaman
  note Bring 2 Frostmane Bear Pendants to Teo Hammerstorm in Anvilmar.
  collect 2 Iceclaw Bear Pendant##264356 |q 94373 |goto Dun Morogh 26.84,79.92 |tip {dropsfrom}Frostmane Troll Whelp, Frostmane Novice
step
  only not Human not NightElf not Skyborne Shaman
  talk Teo Hammerstorm##257446
  turnin Call of Earth##94373 |goto Dun Morogh 28.84,66.23
step
  only not Human not NightElf not Skyborne Shaman
  talk Teo Hammerstorm##257446
  accept Call of Earth##94374 |goto Dun Morogh 28.84,66.23
step
  only not Human not NightElf not Skyborne Shaman
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##94374 |goto Durotar 44.03,76.2
step
  only not Human not NightElf not Skyborne Shaman
  talk Teo Hammerstorm##257446
  accept Earth Sapta##94472 |goto Dun Morogh 28.84,66.23
step
  only not Human not NightElf not Skyborne Shaman
  talk Teo Hammerstorm##257446
  turnin Earth Sapta##94472 |goto Dun Morogh 28.84,66.23
step
  only Shaman
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##94375 |goto Durotar 44.03,76.2
step
  only Shaman
  talk Teo Hammerstorm##257446
  turnin Call of Earth##94375 |goto Dun Morogh 28.84,66.23
step
  only not Human not NightElf not Skyborne Shaman
  talk Bruegs Kindleborn##257597
  accept Call of Fire##94465 |goto Dun Morogh 87.62,43.77
step
  only not Human not NightElf not Skyborne Shaman
  talk Braldir Ashmantle##257808
  turnin Call of Fire##94465 |goto Loch Modan 32.05,66.06
step
  only Shaman
  talk Eldrun Stormbreaker##258098
  accept Call of Fire##94449 |goto Ironforge 47.43,13.5
step
  only Shaman
  talk Bruegs Kindleborn##257597
  turnin Call of Fire##94449 |goto Dun Morogh 87.62,43.77
step
  only Shaman
  talk Braldir Ashmantle##257808
  accept Fire Sapta##94473 |goto Loch Modan 32.05,66.06
step
  only Shaman
  talk Braldir Ashmantle##257808
  turnin Fire Sapta##94473 |goto Loch Modan 32.05,66.06
step
  only Shaman
  click Brazier of the Dormant Flame##61934
  accept Call of Fire##94468 |goto Durotar 38.96,58.22
step
  only Shaman
  talk Bruegs Kindleborn##257597
  turnin Call of Fire##94468 |goto Dun Morogh 87.62,43.77
step
  only Shaman
  talk Braldir Ashmantle##257808
  accept Call of Fire##94466 |goto Loch Modan 32.05,66.06
step
  only Shaman
  note Bring 1 Fire Tar and 1 Reagent Pouch to Braldir Ashmantle in Loch Modan.
  collect 1 Fire Tar##5026 |q 94466 |goto The Barrens 54.94,26.74 |tip {dropsfrom}Razormane Water Seeker, Razormane Thornweaver, Razormane Geomancer
step
  only Shaman
  talk Braldir Ashmantle##257808
  turnin Call of Fire##94466 |goto Loch Modan 32.05,66.06
step
  only Shaman
  talk Braldir Ashmantle##257808
  accept Call of Fire##94467 |goto Loch Modan 32.05,66.06
step
  only Shaman
  note Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
  collect Glowing Ember##6655 |q 94467 |goto Durotar 38.72,58.29 |tip {dropsfrom}Minor Manifestation of Fire, Manifestation of Flames
step
  only Shaman
  turnin Call of Fire##94467 |goto Durotar 38.96,58.22
step
  only Shaman
  talk Eldrun Stormbreaker##258098
  accept Call of Water##94494 |goto Ironforge 47.43,13.5
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Call of Water##94494 |goto Loch Modan 41.89,19.03
step
  only Shaman
  talk Norric Lochthane##258043
  accept Call of Water##94495 |goto Loch Modan 41.89,19.03
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94495 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Norric Lochthane##258043
  accept Water Sapta##94616 |goto Loch Modan 41.89,19.03
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Water Sapta##94616 |goto Loch Modan 41.89,19.03
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94497 |goto Wetlands 65.73,76.43
step
  only Shaman
  note Fill the Empty Brown Waterskin at the bottom of the waterfalls below Hervdana's cave and return it to her in the Wetlands.
  collect Full Brown Waterskin##265734 |q 94497 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94497 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94499 |goto Wetlands 65.73,76.43
step
  only Shaman
  note Fill the Empty Red Waterskin at Stonewatch Falls near the Nightcrawler Murlocs and return to Hervdana Saegrund in the Wetlands.
  collect Full Red Waterskin##265748 |q 94499 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94499 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Minor Manifestation of Water##5895
  accept Call of Water##94505 |goto Silverpine Forest 38.65,44.58
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Call of Water##94505 |goto Loch Modan 41.89,19.03
step
  only Shaman
  click Forgotten Shrine##619896
  accept Call of Water##94503 |goto Westfall 45.45,59.89
step
  only Shaman
  talk Minor Manifestation of Water##5895
  turnin Call of Water##94503 |goto Silverpine Forest 38.65,44.58
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94500 |goto Wetlands 65.73,76.43
step
  only Shaman
  note Fill the Unfilled Blue Waterskin at the waters of Astranaar in Ashenvale and return to Hervdana Saegrund in the Wetlands.
  collect Full Blue Waterskin##265773 |q 94500 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  turnin Call of Water##94500 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Hervdana Saegrund##258203
  accept Call of Water##94501 |goto Wetlands 65.73,76.43
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Call of Water##94501 |goto Loch Modan 41.89,19.03
step
  only Shaman
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  only Shaman
  talk Lorekeeper Javon##14381
  turnin Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
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
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Tunic##9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Tunic##9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Legguards##9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  collect Desecrated Legguards##22359 |q 9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Legguards##9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Headpiece##9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Headpiece##9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Spaulders##9071 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 2 Mooncloth.
  collect Desecrated Spaulders##22361 |q 9071 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Spaulders##9071 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Boots##9072 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Boots##22365 |q 9072 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Boots##9072 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Handguards##9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Handguards##9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Girdle##9074 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9074 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Girdle##9074 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Wristguards##9075 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9075 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Wristguards##9075 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Armsplint. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Armsplint##19717 |q 8056 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Girdle. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Girdle##19719 |q 8074 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Tabard. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Tabard##19722 |q 8075 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  collect Qiraji Lord's Insignia##21229 |q 8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
]])
