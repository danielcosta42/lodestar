-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Redridge Mountains (54-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Eastern Plaguelands (56-60)",
}, [[
step
  note {fp}Penny
  goto Redridge Mountains 21.71,46.56 |tip {vendor}
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 24.9,44.45
step
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 24.9,44.45
step
  talk Count Remington Ridgewell##2285
  accept Mayara Brightwing##4766 |goto Stormwind City 76.94,47.83
step
  talk Highlord Bolvar Fordragon##1748
  accept The First and the Last##6182 |goto Stormwind City 80.21,38.35
step
  talk Highlord Bolvar Fordragon##1748
  accept Order Must Be Restored##6187 |goto Stormwind City 80.21,38.35
step
  talk Highlord Bolvar Fordragon##1748
  accept The Dragon's Eye##6501 |goto Stormwind City 80.21,38.35
step
  talk Highlord Bolvar Fordragon##1748
  accept Celebrating Good Times##7496 |goto Stormwind City 80.21,38.35
step
  only Paladin
  talk Duthorian Rall##6171
  accept Lord Grayson Shadowbreaker##7638 |goto Stormwind City 50.48,47.49
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept The Divination Scryer##7646 |goto Stormwind City 48.43,50.22
step
  only Paladin
  note Bring an Azerothian Diamond and a Pristine Black Diamond to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  collect Azerothian Diamond##12800 |q 7646 |goto Azshara 59.31,79.76 |tip {dropsfrom}Cliff Breaker, Anubisath Guardian, Small Thorium Vein
step
  only Paladin
  talk Brandur Ironhammer##5149
  accept Lord Grayson Shadowbreaker##7670 |goto Ironforge 23.13,6.14
step
  talk Highlord Bolvar Fordragon##1748
  accept The Lord of Blackrock##7782 |goto Stormwind City 80.21,38.35
step
  talk Raedon Duskstriker##14725
  accept A Donation of Wool##7792 |goto Darnassus 64.02,23
step
  collect Wool Cloth##2592 |q 7792 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
step
  talk Raedon Duskstriker##14725
  accept A Donation of Silk##7798 |goto Darnassus 64.02,23
step
  collect Silk Cloth##4306 |q 7798 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Raedon Duskstriker##14725
  accept A Donation of Mageweave##7799 |goto Darnassus 64.02,23
step
  collect Mageweave Cloth##4338 |q 7799 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Solid Chest
step
  talk Mistina Steelshield##14723
  accept A Donation of Wool##7802 |goto Ironforge 43.22,31.57
step
  collect Wool Cloth##2592 |q 7802 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
step
  talk Mistina Steelshield##14723
  accept A Donation of Silk##7803 |goto Ironforge 43.22,31.57
step
  collect Silk Cloth##4306 |q 7803 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Mistina Steelshield##14723
  accept A Donation of Mageweave##7804 |goto Ironforge 43.22,31.57
step
  collect Mageweave Cloth##4338 |q 7804 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Solid Chest
step
  talk Bubulo Acerbus##14724
  accept A Donation of Wool##7807 |goto Ironforge 74.09,48.22
step
  collect Wool Cloth##2592 |q 7807 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
step
  talk Bubulo Acerbus##14724
  accept A Donation of Silk##7808 |goto Ironforge 74.09,48.22
step
  collect Silk Cloth##4306 |q 7808 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Bubulo Acerbus##14724
  accept A Donation of Mageweave##7809 |goto Ironforge 74.09,48.22
step
  collect Mageweave Cloth##4338 |q 7809 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Solid Chest
step
  only Druid
  talk Deliana##16013
  accept An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  only Druid
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Wildheart Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8905 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Hunter
  talk Deliana##16013
  accept An Earnest Proposition##8906 |goto Ironforge 43.53,52.64
step
  only Hunter
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Beaststalker's Bindings to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8906 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Mage
  talk Deliana##16013
  accept An Earnest Proposition##8907 |goto Ironforge 43.53,52.64
step
  only Mage
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Magister's Bindings to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8907 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Paladin
  talk Deliana##16013
  accept An Earnest Proposition##8908 |goto Ironforge 43.53,52.64
step
  only Paladin
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Lightforge Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8908 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Priest
  talk Deliana##16013
  accept An Earnest Proposition##8909 |goto Ironforge 43.53,52.64
step
  only Priest
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with 1 set of Devout Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8909 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Rogue
  talk Deliana##16013
  accept An Earnest Proposition##8910 |goto Ironforge 43.53,52.64
step
  only Rogue
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Shadowcraft Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8910 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Warlock
  talk Deliana##16013
  accept An Earnest Proposition##8911 |goto Ironforge 43.53,52.64
step
  only Warlock
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Dreadmist Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8911 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Warrior
  talk Deliana##16013
  accept An Earnest Proposition##8912 |goto Ironforge 43.53,52.64
step
  only Warrior
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Bracers of Valor to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8912 |goto Winterspring 50.32,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Druid
  talk Deliana##16013
  accept Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves Deliana in Ironforge.
  collect Wildheart Belt##16716 |q 8926 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Hunter
  talk Deliana##16013
  accept Just Compensation##8931 |goto Ironforge 43.53,52.64
step
  only Hunter
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Deliana in Ironforge.
  collect Beaststalker's Belt##16680 |q 8931 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Mage
  talk Deliana##16013
  accept Just Compensation##8932 |goto Ironforge 43.53,52.64
step
  only Mage
  note Bring a Magister's Belt and a set of Magister's Gloves to Deliana in Ironforge.
  collect Magister's Belt##16685 |q 8932 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Smolderthorn Mystic, Thuzadin Shadowcaster, Thuzadin Necromancer
step
  only Paladin
  talk Deliana##16013
  accept Just Compensation##8933 |goto Ironforge 43.53,52.64
step
  only Paladin
  note Bring a Lightforge Belt and a set of Lightforge Gauntlets to Deliana in Ironforge.
  collect Lightforge Belt##16723 |q 8933 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Rockwing Gargoyle, Rockwing Screecher, Crimson Guardsman
step
  only Priest
  talk Deliana##16013
  accept Just Compensation##8934 |goto Ironforge 43.53,52.64
step
  only Priest
  note Bring a Devout Belt and a set of Devout Gloves to Deliana in Ironforge.
  collect Devout Belt##16696 |q 8934 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Spellbinder, Smolderthorn Shadow Priest, Firebrand Darkweaver
step
  only Rogue
  talk Deliana##16013
  accept Just Compensation##8935 |goto Ironforge 43.53,52.64
step
  only Rogue
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Deliana in Ironforge.
  collect Shadowcraft Belt##16713 |q 8935 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Legionnaire, Firebrand Grunt, Scarshield Quartermaster
step
  only Warlock
  talk Deliana##16013
  accept Just Compensation##8936 |goto Ironforge 43.53,52.64
step
  only Warlock
  note Bring a Dreadmist Belt and a set of Dreadmist Wraps to Deliana in Ironforge.
  collect Dreadmist Belt##16702 |q 8936 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Thuzadin Shadowcaster, Thuzadin Necromancer, Crimson Conjuror
step
  only Warrior
  talk Deliana##16013
  accept Just Compensation##8937 |goto Ironforge 43.53,52.64
step
  only Warrior
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Deliana in Ironforge.
  collect Belt of Valor##16736 |q 8937 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  only Druid
  talk Deliana##16013
  accept Saving the Best for Last##8999 |goto Ironforge 43.53,52.64
step
  only Druid
  note Give Deliana your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 8999 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter
  talk Deliana##16013
  accept Saving the Best for Last##9000 |goto Ironforge 43.53,52.64
step
  only Hunter
  note Give Deliana your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9000 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Mage
  talk Deliana##16013
  accept Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
step
  only Mage
  note Give Deliana your Magister's Crown and Magister's Robes.
  collect Magister's Crown##16686 |q 9001 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Paladin
  talk Deliana##16013
  accept Saving the Best for Last##9002 |goto Ironforge 43.53,52.64
step
  only Paladin
  note Give Deliana your Lightforge Helm and Lightforge Breastplate.
  collect Lightforge Helm##16727 |q 9002 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Priest
  talk Deliana##16013
  accept Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
step
  only Priest
  note Give Deliana your Devout Crown and Devout Robe.
  collect Devout Crown##16693 |q 9003 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue
  talk Deliana##16013
  accept Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
step
  only Rogue
  note Give Deliana your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9004 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warlock
  talk Deliana##16013
  accept Saving the Best for Last##9005 |goto Ironforge 43.53,52.64
step
  only Warlock
  note Give Deliana your Dreadmist Mask and Dreadmist Robe.
  collect Dreadmist Mask##16698 |q 9005 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior
  talk Deliana##16013
  accept Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
step
  only Warrior
  note Give Deliana your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9006 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  talk Clavicus Knavingham##14722
  accept A Donation of Wool##7791 |goto Stormwind City 53.93,81.69
step
  collect Wool Cloth##2592 |q 7791 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
step
  talk Clavicus Knavingham##14722
  accept A Donation of Silk##7793 |goto Stormwind City 53.93,81.69
step
  collect Silk Cloth##4306 |q 7793 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Clavicus Knavingham##14722
  accept A Donation of Mageweave##7794 |goto Stormwind City 53.93,81.69
step
  collect Mageweave Cloth##4338 |q 7794 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Solid Chest
step
  talk Melnan Darkstone##14842
  accept The Darkmoon Faire##7905 |goto Ironforge 29.65,75.25
step
  only Mage
  talk Jennea Cannon##5497
  accept Magma or Lava?##84396 |goto Stormwind City 49.56,85.8
step
  talk Marcy Baker##256390
  accept A Sealed Crate##91899 |goto Redridge Mountains 9.75,71.02
step
  collect Sealed Apprentice Crate##248765 |q 91899 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  accept A Sealed Crate##91900 |goto Redridge Mountains 9.75,71.02
step
  collect Sealed Journeyman Crate##248766 |q 91900 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  accept A Sealed Crate##91904 |goto Redridge Mountains 9.75,71.02
step
  collect Sealed Apprentice Crate##248770 |q 91904 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  accept A Sealed Crate##91905 |goto Redridge Mountains 9.75,71.02
step
  collect Sealed Journeyman Crate##248771 |q 91905 |goto Redridge Mountains 9.75,71.02
step
  note Assemble an army and travel to the Eastern Plaguelands. Launch a full assault on Nathanos Blightcaller and any Horde filth that may attempt to protect him.
  kill Nathanos Blightcaller##11878 |q 6187 |goto Eastern Plaguelands 22.23,63.51 |elite
step
  talk Bubulo Acerbus##14724
  turnin A Donation of Silk##7808 |goto Ironforge 74.09,48.22 |tip {turninat}Ironforge
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  talk Bubulo Acerbus##14724
  turnin A Donation of Mageweave##7809 |goto Ironforge 74.09,48.22 |tip {turninat}Ironforge
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960 |goto Eastern Kingdoms - the continent map 48.9,63.93 |tip {turninat}Eastern Kingdoms - the continent map
step
  talk Mayara Brightwing##9565
  turnin Mayara Brightwing##4766 |goto Burning Steppes 84.84,69.12 |tip {turninat}Burning Steppes
step
  talk Master Mathias Shaw##332
  turnin The First and the Last##6182 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only Druid
  talk Deliana##16013
  turnin Saving the Best for Last##8999 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Hunter
  talk Deliana##16013
  turnin Saving the Best for Last##9000 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Mage
  talk Deliana##16013
  turnin Saving the Best for Last##9001 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Paladin
  talk Deliana##16013
  turnin Saving the Best for Last##9002 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  talk Highlord Bolvar Fordragon##1748
  turnin Order Must Be Restored##6187 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  only Priest
  talk Deliana##16013
  turnin Saving the Best for Last##9003 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Rogue
  talk Deliana##16013
  turnin Saving the Best for Last##9004 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Warlock
  talk Deliana##16013
  turnin Saving the Best for Last##9005 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Warrior
  talk Deliana##16013
  turnin Saving the Best for Last##9006 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  talk Major Mattingly##14394
  turnin Celebrating Good Times##7496 |goto Stormwind City 67.16,85.51 |tip {turninat}Stormwind City
step
  only Druid
  talk Deliana##16013
  turnin An Earnest Proposition##8905 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Hunter
  talk Deliana##16013
  turnin An Earnest Proposition##8906 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Mage
  talk Deliana##16013
  turnin An Earnest Proposition##8907 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Paladin
  talk Deliana##16013
  turnin An Earnest Proposition##8908 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Priest
  talk Deliana##16013
  turnin An Earnest Proposition##8909 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Rogue
  talk Deliana##16013
  turnin An Earnest Proposition##8910 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Warlock
  talk Deliana##16013
  turnin An Earnest Proposition##8911 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Warrior
  talk Deliana##16013
  turnin An Earnest Proposition##8912 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Lord Grayson Shadowbreaker##7638 |goto Stormwind City 48.43,50.22 |tip {turninat}Stormwind City
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin The Divination Scryer##7646 |goto Stormwind City 48.43,50.22 |tip {turninat}Stormwind City
step
  only Druid
  talk Deliana##16013
  turnin Just Compensation##8926 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  talk Gelvas Grimegate##14828
  turnin The Darkmoon Faire##7905 |goto Elwynn Forest 41.5,68.87 |tip {turninat}Elwynn Forest
step
  only Hunter
  talk Deliana##16013
  turnin Just Compensation##8931 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Mage
  talk Deliana##16013
  turnin Just Compensation##8932 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  talk Haleh##10929
  turnin The Dragon's Eye##6501 |goto Winterspring 54.55,51.2 |tip {turninat}Winterspring
step
  talk Field Marshal Stonebridge##14721
  turnin The Lord of Blackrock##7782 |goto Stormwind City 71.46,80.45 |tip {turninat}Stormwind City
step
  only Paladin
  talk Deliana##16013
  turnin Just Compensation##8933 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Priest
  talk Deliana##16013
  turnin Just Compensation##8934 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Rogue
  talk Deliana##16013
  turnin Just Compensation##8935 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Warlock
  talk Deliana##16013
  turnin Just Compensation##8936 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Warrior
  talk Deliana##16013
  turnin Just Compensation##8937 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  talk Raedon Duskstriker##14725
  turnin A Donation of Wool##7792 |goto Darnassus 64.02,23 |tip {turninat}Darnassus
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Lord Grayson Shadowbreaker##7670 |goto Stormwind City 48.43,50.22 |tip {turninat}Stormwind City
step
  talk Raedon Duskstriker##14725
  turnin A Donation of Mageweave##7799 |goto Darnassus 64.02,23 |tip {turninat}Darnassus
step
  talk Raedon Duskstriker##14725
  turnin A Donation of Silk##7798 |goto Darnassus 64.02,23 |tip {turninat}Darnassus
step
  talk Mistina Steelshield##14723
  turnin A Donation of Wool##7802 |goto Ironforge 43.22,31.57 |tip {turninat}Ironforge
step
  talk Mistina Steelshield##14723
  turnin A Donation of Silk##7803 |goto Ironforge 43.22,31.57 |tip {turninat}Ironforge
step
  talk Mistina Steelshield##14723
  turnin A Donation of Mageweave##7804 |goto Ironforge 43.22,31.57 |tip {turninat}Ironforge
step
  talk Bubulo Acerbus##14724
  turnin A Donation of Wool##7807 |goto Ironforge 74.09,48.22 |tip {turninat}Ironforge
step
  talk Master Mathias Shaw##332
  accept Honor the Dead##6183 |goto Stormwind City 78.31,70.74
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Emphasis on Sacrifice##7637 |goto Stormwind City 48.43,50.22
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Judgment and Redemption##7647 |goto Stormwind City 48.43,50.22
step
  only Paladin
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth the spirits you must judge. Defeating these spirits will summon forth Death Knight Darkreaver. Defeat him and reclaim the lost soul of the fallen charger.
  collect Charger's Redeemed Soul##18799 |q 7647 |goto Stormwind City 48.43,50.22
step
  talk Raedon Duskstriker##14725
  accept A Donation of Runecloth##7800 |goto Darnassus 64.02,23
step
  collect Runecloth##14047 |q 7800 |goto Darnassus 64.02,23 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Mistina Steelshield##14723
  accept A Donation of Runecloth##7805 |goto Ironforge 43.22,31.57
step
  collect Runecloth##14047 |q 7805 |goto Ironforge 43.22,31.57 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Bubulo Acerbus##14724
  accept A Donation of Runecloth##7811 |goto Ironforge 74.09,48.22
step
  collect Runecloth##14047 |q 7811 |goto Ironforge 74.09,48.22 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  talk Marcy Baker##256390
  turnin A Sealed Crate##91904 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  turnin A Sealed Crate##91905 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  turnin A Sealed Crate##91899 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  turnin A Sealed Crate##91900 |goto Redridge Mountains 9.75,71.02
step
  only Mage
  talk Jennea Cannon##5497
  turnin Magma or Lava?##84396 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  talk Clavicus Knavingham##14722
  turnin A Donation of Wool##7791 |goto Stormwind City 53.93,81.69 |tip {turninat}Stormwind City
step
  talk Clavicus Knavingham##14722
  turnin A Donation of Silk##7793 |goto Stormwind City 53.93,81.69 |tip {turninat}Stormwind City
step
  talk Clavicus Knavingham##14722
  turnin A Donation of Mageweave##7794 |goto Stormwind City 53.93,81.69 |tip {turninat}Stormwind City
step
  talk Clavicus Knavingham##14722
  accept A Donation of Runecloth##7795 |goto Stormwind City 53.93,81.69
step
  collect Runecloth##14047 |q 7795 |goto Stormwind City 53.93,81.69 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Bubulo Acerbus##14724
  turnin A Donation of Runecloth##7811 |goto Ironforge 74.09,48.22 |tip {turninat}Ironforge
step
  talk Master Mathias Shaw##332
  turnin Honor the Dead##6183 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  talk Raedon Duskstriker##14725
  turnin A Donation of Runecloth##7800 |goto Darnassus 64.02,23 |tip {turninat}Darnassus
step
  only Paladin
  talk High Priest Rohan##11406
  turnin Emphasis on Sacrifice##7637 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23 |tip {turninat}Tanaris
step
  only Paladin
  talk Darkreaver's Fallen Charger##14568
  turnin Judgment and Redemption##7647 |goto Scholomance - Dungeon -1,-1 |tip {turninat}Scholomance - Dungeon
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3 |tip {turninat}Eastern Plaguelands
step
  talk Mistina Steelshield##14723
  turnin A Donation of Runecloth##7805 |goto Ironforge 43.22,31.57 |tip {turninat}Ironforge
step
  talk Master Mathias Shaw##332
  accept Flint Shadowmore##6184 |goto Stormwind City 78.31,70.74
step
  only Paladin
  talk High Priest Rohan##11406
  accept To Show Due Judgment##7639 |goto Ironforge 24.73,8.16
step
  talk Flint Shadowmore##12425
  turnin Flint Shadowmore##6184 |goto Western Plaguelands 43.61,84.51 |tip {turninat}Western Plaguelands
step
  talk Clavicus Knavingham##14722
  turnin A Donation of Runecloth##7795 |goto Stormwind City 53.93,81.69 |tip {turninat}Stormwind City
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin To Show Due Judgment##7639 |goto Stormwind City 48.43,50.22 |tip {turninat}Stormwind City
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  only Paladin
  note Use the Exorcism Censer to drive out the spirits that torment Terrordale. When you have slain 25 Terrordale Spirits, return to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  kill Terrordale Spirit##14564 |q 7640 |goto Eastern Plaguelands 11.42,20.92
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22 |tip {turninat}Stormwind City
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept The Work of Grimand Elmore##7641 |goto Stormwind City 48.43,50.22
step
  only Paladin
  talk Grimand Elmore##1416
  turnin The Work of Grimand Elmore##7641 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only Paladin
  talk Grimand Elmore##1416
  accept Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  only Paladin
  note Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
  collect 40 Stratholme Holy Water##13180 |q 7642 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
step
  only Paladin
  talk Grimand Elmore##1416
  turnin Collection of Goods##7642 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Ancient Equine Spirit##7643 |goto Stormwind City 48.43,50.22
step
  only Paladin
  note Acquire special horse feed used for feeding a spirit horse. Merideth Carlson in Southshore apparently is the source for such food.
  collect Manna-Enriched Horse Feed##18775 |q 7643 |goto Stormwind City 48.43,50.22
step
  only Paladin
  talk Grimand Elmore##1416
  accept Grimand's Finest Work##7648 |goto Stormwind City 59.73,33.78
step
  only Paladin
  talk Ancient Equine Spirit##14566
  turnin Ancient Equine Spirit##7643 |goto Dire Maul - Dungeon -1,-1 |tip {turninat}Dire Maul - Dungeon
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Grimand's Finest Work##7648 |goto Stormwind City 48.43,50.22 |tip {turninat}Stormwind City
step
  note {travel}Eastern Plaguelands
  goto Eastern Plaguelands 31.15,77.98
]])
