-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Paladin", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "dcdf39d0",
}, [[
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  collect Tough Wolf Meat##750 |q 179 |goto Elwynn Forest 46.66,43.74 |tip {dropsfrom}Young Wolf, Timber Wolf
step
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Paladin
  talk Sten Stoutarm##658
  accept Consecrated Rune##3107 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Paladin
  note Read the Consecrated Rune and speak to Bromos Grummner in Coldridge Valley.
  talk Bromos Grummner##926
  turnin Consecrated Rune##3107 |goto Dun Morogh 28.83,68.33
step
  talk Deputy Willem##823
  accept A Threat Within##783 |goto Elwynn Forest 48.17,42.94
step
  note Speak with Marshal McBride.
  talk Marshal McBride##197
  turnin A Threat Within##783 |goto Elwynn Forest 48.92,41.61
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  note Kill 10 Kobold Vermin, then return to Marshal McBride.
  kill Kobold Vermin##6 |q 7 |goto Elwynn Forest 49.17,36.55
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Human Paladin
  talk Marshal McBride##197
  accept Consecrated Letter##3101 |goto Elwynn Forest 48.92,41.61
step
  only Human Paladin
  note Read the Consecrated Letter and speak to Brother Sammuel in Northshire Abbey.
  talk Brother Sammuel##925
  turnin Consecrated Letter##3101 |goto Elwynn Forest 50.43,42.12
step
  only Dwarf Paladin not completed(2999) not completed(3000) not haveq(2999) not haveq(3000)
  talk Azar Stronghammer##1232
  accept Tome of Divinity##2997 |goto Dun Morogh 47.6,52.07
step
  only Dwarf Paladin not completed(2999) not completed(3000) not haveq(2999) not haveq(3000)
  note Speak to Tiza Battleforge in Ironforge.
  talk Tiza Battleforge##6179
  turnin Tome of Divinity##2997 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  use Tome of Divinity##6916 |tip The previous quest gave you this item — it starts the quest.
  accept The Tome of Divinity##1646 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  note Speak to Tiza Battleforge in Ironforge.
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1646 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1647 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  note Search the outer ring of Ironforge for John Turner.
  talk John Turner##6175
  turnin The Tome of Divinity##1647 |goto Ironforge 23.34,61.86
step
  only Dwarf Paladin
  talk John Turner##6175
  accept The Tome of Divinity##1648 |goto Ironforge 23.34,61.86
step
  only Dwarf Paladin
  note Bring 10 Linen Cloth to John Turner in Ironforge.
  collect 10 Linen Cloth##2589 |q 1648 |goto Ironforge 23.34,61.86 |tip {dropsfrom}humanoids
step
  only Dwarf Paladin
  talk John Turner##6175
  turnin The Tome of Divinity##1648 |goto Ironforge 23.34,61.86
step
  only Dwarf Paladin
  talk John Turner##6175
  accept The Tome of Divinity##1778 |goto Ironforge 23.34,61.86
step
  only Dwarf Paladin
  note Speak to Tiza Battleforge in Ironforge.
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1778 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1779 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  note Take the Symbol of Life and speak to Muiredon Battleforge in Ironforge.
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1779 |goto Ironforge 23.54,8.3
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1783 |goto Ironforge 23.54,8.3
step
  only Dwarf Paladin
  note Take the Symbol of Life and resurrect Narm Faulk in Dun Morogh.
  talk Narm Faulk##6177 |q 1783 |goto Dun Morogh 78.32,58.09
step
  only Dwarf Paladin
  talk Narm Faulk##6177
  turnin The Tome of Divinity##1783 |goto Dun Morogh 78.32,58.09
step
  only Human Paladin not completed(3681) not haveq(3681)
  talk Brother Wilhelm##927
  accept Tome of Divinity##2998 |goto Elwynn Forest 41.1,66.04
step
  only Human Paladin not completed(3681) not haveq(3681)
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin Tome of Divinity##2998 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  use Tome of Divinity##6775 |tip The previous quest gave you this item — it starts the quest.
  accept The Tome of Divinity##1642 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1642 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1643 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  note Search the Trade District of Stormwind for Stephanie Turner.
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1643 |goto Stormwind City 63.84,72.21
step
  only Human Paladin
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21
step
  only Human Paladin
  note Bring 10 Linen Cloth to Stephanie Turner in Stormwind.
  collect 10 Linen Cloth##2589 |q 1644 |goto Stormwind City 63.84,72.21 |tip {dropsfrom}humanoids
step
  only Human Paladin
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21
step
  only Human Paladin
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1780 |goto Stormwind City 63.84,72.21
step
  only Human Paladin
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1780 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1781 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  note Take the Symbol of Life to Gazin Tenorm in Stormwind.
  talk Gazin Tenorm##6173
  turnin The Tome of Divinity##1781 |goto Stormwind City 49.53,44.99
step
  only Human Paladin
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1786 |goto Stormwind City 49.53,44.99
step
  only Human Paladin
  note Take the Symbol of Life and resurrect Henze Faulk in Elwynn.
  talk Henze Faulk##6172 |q 1786 |goto Elwynn Forest 72.6,51.41
step
  only Human Paladin
  talk Henze Faulk##6172
  turnin The Tome of Divinity##1786 |goto Elwynn Forest 72.6,51.41
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1645 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1645 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin not completed(1784) not haveq(1784)
  talk Tiza Battleforge##6179
  accept The Symbol of Life##1789 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin not completed(1784) not haveq(1784)
  talk Tiza Battleforge##6179
  turnin The Symbol of Life##1789 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin
  talk Narm Faulk##6177
  accept The Tome of Divinity##1784 |goto Dun Morogh 78.32,58.09
step
  only Dwarf Paladin
  note Retrieve a Dark Iron Script from the Dark Iron dwarves near Helm's Bed, and return to Muiredon Battleforge in Ironforge.
  collect Dark Iron Script##6847 |q 1784 |goto Dun Morogh 77.36,61.31 |tip {dropsfrom}Dark Iron Spy
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1784 |goto Ironforge 23.54,8.3
step
  only Dwarf Paladin
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1785 |goto Ironforge 23.54,8.3
step
  only Dwarf Paladin
  note Speak to Tiza Battleforge in Ironforge.
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1785 |goto Ironforge 27.63,12.18
step
  only Human Paladin
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1641 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1641 |goto Stormwind City 50.48,47.49
step
  only Human Paladin not completed(1787) not haveq(1787)
  talk Duthorian Rall##6171
  accept The Symbol of Life##1790 |goto Stormwind City 50.48,47.49
step
  only Human Paladin not completed(1787) not haveq(1787)
  talk Duthorian Rall##6171
  turnin The Symbol of Life##1790 |goto Stormwind City 50.48,47.49
step
  only Human Paladin
  talk Henze Faulk##6172
  accept The Tome of Divinity##1787 |goto Elwynn Forest 72.6,51.41
step
  only Human Paladin
  note Retrieve a Defias Script from the Defias Rogue Wizards in Elwynn, and return to Gazin Tenorm in Stormwind.
  collect Defias Script##6846 |q 1787 |goto Elwynn Forest 73.38,52.48 |tip {dropsfrom}Defias Rogue Wizard, Defias Bodyguard
step
  only Human Paladin
  talk Gazin Tenorm##6173
  turnin The Tome of Divinity##1787 |goto Stormwind City 49.53,44.99
step
  only Human Paladin
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1788 |goto Stormwind City 49.53,44.99
step
  only Human Paladin
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1788 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Thundris Windweaver##3649
  accept Seeking the Kor Gem##1442 |goto Darkshore 37.4,40.13
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring a Kor Gem to Thundris Windweaver in Darkshore.
  kill Blackfathom Tide Priestess##4802 |q 1442 |goto Ashenvale 13.55,12.06 |elite
  collect Corrupted Kor Gem##6995 |q 1442 |goto Ashenvale 13.55,12.06
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Thundris Windweaver##3649
  turnin Seeking the Kor Gem##1442 |goto Darkshore 37.4,40.13
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Valor##1794 |goto Ironforge 27.63,12.18
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Tiza Battleforge##6179
  turnin The Tome of Valor##1794 |goto Ironforge 27.63,12.18
step
  only not NightElf not Gnome not Skyborne Paladin
  use Tome of Valor##6776 |tip The previous quest gave you this item — it starts the quest.
  accept The Tome of Valor##1649 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Valor##1649 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Duthorian Rall##6171
  accept The Tome of Valor##1650 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  note Find Daphne Stilwell in Westfall.
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1650 |goto Westfall 41.69,89.24
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  only not NightElf not Gnome not Skyborne Paladin
  note Defend Daphne Stilwell from the Defias attack.
  goto Westfall 42.15,88.44 |tip Protect Daphne Stilwell
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1652 |goto Westfall 41.69,89.24
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Valor##1652 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Duthorian Rall##6171
  accept The Test of Righteousness##1653 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak to Jordan Stilwell in Ironforge
  talk Jordan Stilwell##6181
  turnin The Test of Righteousness##1653 |goto Dun Morogh 52.49,36.92
step
  only Dwarf Paladin
  talk Jordan Stilwell##6181
  accept The Test of Righteousness##1654 |goto Dun Morogh 52.49,36.92
step
  only Dwarf Paladin
  note Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge.
  collect Whitestone Oak Lumber##6994 |q 1654/1 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Goblin Woodcarver
  collect Jordan's Refined Ore Shipment##6993 |q 1654/2 |goto Loch Modan 35.95,44.91 |tip {dropsfrom}Bailor Stonehand
  collect Jordan's Smithing Hammer##6895 |q 1654/3 |goto Shadowfang Keep - Dungeon -1,-1 |tip {dropsfrom}Jordan's Hammer
  collect Purified Kor Gem##7083 |q 1654 |goto Darkshore 37.4,40.13 |tip {dropsfrom}Thundris Windweaver
step
  only Dwarf Paladin
  talk Jordan Stilwell##6181
  turnin The Test of Righteousness##1654 |goto Dun Morogh 52.49,36.92
step
  only Dwarf Paladin
  talk Jordan Stilwell##6181
  accept The Test of Righteousness##1806 |goto Dun Morogh 52.49,36.92
step
  only Dwarf Paladin
  note Wait for Jordan Stilwell to finish forging a weapon for you.
  talk Jordan Stilwell##6181
  turnin The Test of Righteousness##1806 |goto Dun Morogh 52.49,36.92
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Bailor Stonehand##6241
  accept Bailor's Ore Shipment##1655 |goto Loch Modan 35.95,44.91
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring Jordan's Ore Shipment to Bailor Stonehand in Loch Modan.
  collect Jordan's Ore Shipment##6992 |q 1655 |goto Loch Modan 71.6,21.61 |tip {dropsfrom}Bailor's Ore
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Bailor Stonehand##6241
  turnin Bailor's Ore Shipment##1655 |goto Loch Modan 35.95,44.91
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Duthorian Rall##6171
  accept The Tome of Valor##1793 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Valor##1793 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Delgren the Purifier##3663
  accept Advice From Stormwind##78089 |goto Ashenvale 26.2,38.7
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring the Althalaxx Orb to Katherine the Pure in Stormwind.
  talk Katherine the Pure##5492
  turnin Advice From Stormwind##78089 |goto Stormwind City 48.48,49.09
step
  only not NightElf not Gnome not Skyborne Paladin
  click Shattered Orb##409315
  accept Return to Delgren##78093 |goto Ashenvale 89.5,77
step
  only not NightElf not Gnome not Skyborne Paladin
  note Return the Orb Shards to Delgren.
  talk Delgren the Purifier##3663
  turnin Return to Delgren##78093 |goto Ashenvale 26.2,38.7
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Katherine the Pure##5492
  accept A Second Opinion##78090 |goto Stormwind City 48.48,49.09
step
  only not NightElf not Gnome not Skyborne Paladin
  note Find the warlock sanctum within Stormwind and seek advice on the orb.
  talk Ursula Deline##5495
  turnin A Second Opinion##78090 |goto Stormwind City 39.89,84.19
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ursula Deline##5495
  accept Earning Your Salt##78091 |goto Stormwind City 39.89,84.19
step
  only not NightElf not Gnome not Skyborne Paladin
  note Collect 14 Summoner's Salt from Blackrock Summoners in Redridge Mountains, then return to Ursula Deline in Stormwind.
  collect 14 Summoner's Salt##209778 |q 78091 |goto Redridge Mountains 24.25,12.05 |tip {dropsfrom}Blackrock Champion, Gath'Ilzogg, Blackrock Shadowcaster
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ursula Deline##5495
  turnin Earning Your Salt##78091 |goto Stormwind City 39.89,84.19
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ursula Deline##5495
  accept It Must Be Destroyed##78092 |goto Stormwind City 39.89,84.19
step
  only not NightElf not Gnome not Skyborne Paladin
  note Gather 12 Motes of Mannoroth from demons in Ashenvale. Bring them along with the Orb of Althalaxx to the Spear of Mannoroth at Demon Fall Canyon.
  collect 12 Mote of Mannoroth##209779 |q 78092 |goto Ashenvale 78.48,81.61 |tip {dropsfrom}Legion Hound, Searing Infernal, Felguard
step
  only not NightElf not Gnome not Skyborne Paladin
  turnin It Must Be Destroyed##78092 |goto Ashenvale 89.4,77.1
step
  only Dwarf Paladin not completed(1661) not completed(4486) not haveq(1661) not haveq(4486)
  talk Tiza Battleforge##6179
  accept The Tome of Nobility##4485 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin not completed(1661) not completed(4486) not haveq(1661) not haveq(4486)
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Nobility##4485 |goto Stormwind City 50.48,47.49
step
  only Human Paladin not completed(4485) not completed(4486) not haveq(4485) not haveq(4486)
  talk Duthorian Rall##6171
  accept The Tome of Nobility##1661 |goto Stormwind City 50.48,47.49
step
  only Human Paladin not completed(4485) not completed(4486) not haveq(4485) not haveq(4486)
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Nobility##1661 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Chillwind Point##8415 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak to Commander Ashlam Valorfist at Chillwind Camp.
  talk Commander Ashlam Valorfist##10838
  turnin Chillwind Point##8415 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Commander Ashlam Valorfist##10838
  accept Dispelling Evil##8414 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
  note Collect 20 Minion's Scourgestones and bring them to High Priest Thel'danis in the Western Plaguelands.
  collect 20 Minion's Scourgestone##12840 |q 8414 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Slavering Ghoul
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Thel'danis##1854
  turnin Dispelling Evil##8414 |goto Western Plaguelands 52.05,83.27
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Thel'danis##1854
  accept Inert Scourgestones##8416 |goto Western Plaguelands 52.05,83.27
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring the Inert Scourgestone to Commander Ashlan Valorfist in Chillwind Point.
  talk Commander Ashlam Valorfist##10838
  turnin Inert Scourgestones##8416 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Commander Ashlam Valorfist##10838
  accept Forging the Mightstone##8418 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring the voodoo feathers to Ashlam Valorfist.
  collect Amber Voodoo Feather##20606 |q 8418 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Forging the Mightstone##8418 |goto Western Plaguelands 42.7,84.03
step
  only Paladin
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
step
  only Paladin
  note Return the book to its rightful owners.
  talk Lorekeeper Mykos##14382
  turnin The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
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
  collect 1 Delicate Arcanite Converter##16006 |q 8921/1 |tip Crafted or bought.
  collect 4 Greater Eternal Essence##16203 |q 8921/2 |tip Crafted or bought.
  collect 10 Stonescale Oil##13423 |q 8921/3 |tip Crafted or bought.
  collect 25 Volcanic Ash##22338 |q 8921 |goto Burning Steppes 60.12,40.36
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924/1 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
  collect 12 Frozen Ectoplasm##21936 |q 8924/2 |goto Winterspring 53.58,43.48 |tip {dropsfrom}Suffering Highborne, Anguished Highborne
  collect 12 Stable Ectoplasm##21935 |q 8924 |goto Eastern Plaguelands 52.9,55.8 |tip {dropsfrom}Unseen Servant, Eyeless Watcher, Torn Screamer
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
  talk Vi'el##16015
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
  only Paladin
  talk Deliana##16013
  accept Just Compensation##8933 |goto Ironforge 43.53,52.64
step
  only Paladin
  note Bring a Lightforge Belt and a set of Lightforge Gauntlets to Deliana in Ironforge.
  collect Lightforge Belt##16723 |q 8933 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Rockwing Gargoyle, Rockwing Screecher, Crimson Guardsman
step
  only Paladin
  talk Deliana##16013
  turnin Just Compensation##8933 |goto Ironforge 43.53,52.64
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
  collect 3 Dark Iron Bar##11371 |q 8947/1 |tip Crafted or bought.
  talk Lhara##14846
  collect 20 Enchanted Leather##12810 |q 8947/2 |goto Elwynn Forest 41.2,69.9
  collect 3 Mooncloth##14342 |q 8947/3 |tip Crafted or bought.
  collect 4 Cured Rugged Hide##15407 |q 8947 |tip Crafted or bought.
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
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Feralas 59.7,42.73 |tip {dropsfrom}Gordok Enforcer, Gordok Mauler, Gordok Ogre-Mage
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect 1 Jeering Spectre's Essence##22224 |q 8950/1 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
  collect 4 Dark Rune##20520 |q 8950/2 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Scholomance Necromancer, Lady Illucia Barov, Instructor Malicia
  collect 8 Large Brilliant Shard##14344 |q 8950 |tip Crafted or bought.
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
  only Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8954 |goto Eastern Plaguelands 26.11,11.3
step
  only Paladin
  note Return to Deliana in Ironforge with a set of Lightforge Boots, Lightforge Legplates and Lightforge Spaulders.
  collect Lightforge Boots##16725 |q 8954 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Balnazzar
step
  only Paladin
  talk Deliana##16013
  turnin Anthion's Parting Words##8954 |goto Ironforge 43.53,52.64
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
  collect Incendicite of Incendius##21987 |q 8961/1 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Lord Incendius
  collect Ember of Emberseer##21988 |q 8961/2 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Pyroguard Emberseer
  kill The Duke of Cynders##15206 |q 8961/3 |goto Silithus 24.7,32.65 |elite
  collect Cinder of Cynders##21989 |q 8961/3 |goto Silithus 24.7,32.65
  talk Argent Quartermaster Hasana##10856
  buy Hallowed Brazier##22014 |q 8961 |goto Tirisfal Glades 83.26,68.14
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
  kill Hive'Regal Ambusher##11730 |q 8962 |goto Silithus 58.08,86.89 |elite
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
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 76.94,19.81 |tip {dropsfrom}Basket of Bloodkelp, Strashaz Warrior, Strashaz Serpent Guard
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
  kill Frostmaul Giant##7428 |q 8985 |goto Winterspring 62.56,69.55 |elite
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
  collect 40 Blackrock Bracer##22138 |q 8994/1 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Blackhand Incarcerator, Scarshield Acolyte, Scarshield Legionnaire
  collect Flask of Supreme Power##13512 |q 8994 |tip Crafted or bought.
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
  only Paladin
  talk Deliana##16013
  accept Saving the Best for Last##9002 |goto Ironforge 43.53,52.64
step
  only Paladin
  note Give Deliana your Lightforge Helm and Lightforge Breastplate.
  collect Lightforge Helm##16727 |q 9002 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Paladin
  talk Deliana##16013
  turnin Saving the Best for Last##9002 |goto Ironforge 43.53,52.64
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  talk Frankal Stonebridge##15171 |q 8304/1 |goto Silithus 40.81,88.86
  talk Rutgar Glyphshaper##15170 |q 8304 |goto Silithus 41.28,88.45
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Zora Rubbing##20454 |q 8309/2 |goto Silithus 37.27,62.5 |tip {dropsfrom}Hive'Zora Glyphed Crystal
  collect Hive'Ashi Rubbing##20455 |q 8309/1 |goto Silithus 50.87,26.76 |tip {dropsfrom}Hive'Ashi Glyphed Crystal
  collect Hive'Regal Rubbing##20456 |q 8309 |goto Kalimdor - the continent map 44.4,86.1 |tip {dropsfrom}Hive'Regal Glyphed Crystal
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Regal Ambusher##11730 |q 8310/3 |goto Silithus 58.08,86.89 |elite
  collect Hive'Regal Silithid Brain##20459 |q 8310/3 |goto Silithus 58.08,86.89
  collect Hive'Ashi Silithid Brain##20457 |q 8310/1 |goto Silithus 61.73,52.51 |tip {dropsfrom}Hive'Ashi Drone, Hive'Ashi Stinger, Hive'Ashi Worker
  collect Hive'Zora Silithid Brain##20458 |q 8310 |goto Silithus 27.87,61.78 |tip {dropsfrom}Hive'Zora Wasp, Hive'Zora Waywatcher, Hive'Zora Tunneler
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
  kill Emissary Roman'khan##14862 |q 8315 |goto Silithus 48.77,58.14 |raid
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 48.77,58.14
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  only Paladin
  talk Geologist Larksbane##15183
  accept Armaments of War##8376 |goto Silithus 49.67,37.46
step
  only Paladin
  talk Geologist Larksbane##15183
  turnin Armaments of War##8376 |goto Silithus 49.67,37.46
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Merideth Carlson##2357
  accept Manna-Enriched Horse Feed##7645 |goto Hillsbrad Foothills 52.19,55.48
step
  only not NightElf not Gnome not Skyborne Paladin
  note Retrieve 20 Enriched Manna Biscuits - the key ingredient in making Manna-Enriched Horse Feed - for Merideth Carlson at Southshore in the Hillsbrad Foothills. The Argent Dawn is known as the sole purveyor of the biscuits.
  talk Argent Quartermaster Hasana##10856
  buy 20 Enriched Manna Biscuit##13724 |q 7645 |goto Tirisfal Glades 83.26,68.14
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Merideth Carlson##2357
  turnin Manna-Enriched Horse Feed##7645 |goto Hillsbrad Foothills 52.19,55.48
step
  only Paladin not completed(7638) not haveq(7638)
  talk Brandur Ironhammer##5149
  accept Lord Grayson Shadowbreaker##7670 |goto Ironforge 23.13,6.14
step
  only Paladin not completed(7638) not haveq(7638)
  note Speak with Lord Grayson Shadowbreaker in Stormwind's Cathedral District.
  talk Lord Grayson Shadowbreaker##928
  turnin Lord Grayson Shadowbreaker##7670 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Duthorian Rall##6171
  accept Lord Grayson Shadowbreaker##7638 |goto Stormwind City 50.48,47.49
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak with Lord Grayson Shadowbreaker in Stormwind's Cathedral District.
  talk Lord Grayson Shadowbreaker##928
  turnin Lord Grayson Shadowbreaker##7638 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Emphasis on Sacrifice##7637 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Travel to Ironforge and get High Priest Rohan's Exorcism Censer. You will need to make a donation of 150 gold in order to secure it.
  talk High Priest Rohan##11406
  turnin Emphasis on Sacrifice##7637 |goto Ironforge 24.73,8.16
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Rohan##11406
  accept To Show Due Judgment##7639 |goto Ironforge 24.73,8.16
step
  only not NightElf not Gnome not Skyborne Paladin
  note Return the Exorcism Censer to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  talk Lord Grayson Shadowbreaker##928
  turnin To Show Due Judgment##7639 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Use the Exorcism Censer to drive out the spirits that torment Terrordale. When you have slain 25 Terrordale Spirits, return to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  kill Terrordale Spirit##14564 |q 7640 |goto Eastern Plaguelands 11.36,20.78
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept The Work of Grimand Elmore##7641 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak with Grimand Elmore in Stormwind's Dwarven District.
  talk Grimand Elmore##1416
  turnin The Work of Grimand Elmore##7641 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  accept Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
  collect 5 Stratholme Holy Water##13180 |q 7642/1 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
  collect 10 Arthas' Tears##8836 |q 7642/2 |goto Western Plaguelands 47.76,60.95
  collect 40 Runecloth##14047 |q 7642/3 |tip {dropsfrom}humanoids
  collect 6 Arcanite Bar##12360 |q 7642 |tip Crafted or bought.
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  turnin Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  accept Grimand's Finest Work##7648 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  note Take the Arcanite Barding to Lord Grayson Shadowbreaker in Stormwind's Cathedral District for his inspection.
  talk Lord Grayson Shadowbreaker##928
  turnin Grimand's Finest Work##7648 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Ancient Equine Spirit##7643 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Acquire special horse feed used for feeding a spirit horse. Merideth Carlson in Southshore apparently is the source for such food.
  collect Manna-Enriched Horse Feed##18775 |q 7643 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ancient Equine Spirit##14566
  turnin Ancient Equine Spirit##7643 |goto Dire Maul - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ancient Equine Spirit##14566
  accept Blessed Arcanite Barding##7644 |goto Dire Maul - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  note Return with the Blessed Arcanite Barding to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  talk Lord Grayson Shadowbreaker##928
  turnin Blessed Arcanite Barding##7644 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept The Divination Scryer##7646 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring an Azerothian Diamond and a Pristine Black Diamond to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  collect Azerothian Diamond##12800 |q 7646/1 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Small Thorium Vein, Rich Thorium Vein
  collect Pristine Black Diamond##18335 |q 7646 |goto Alterac Valley 52.39,7.78 |tip {dropsfrom}Morloch, Frostwolf Legionnaire, Lieutenant Rugba
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin The Divination Scryer##7646 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Judgment and Redemption##7647 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth the spirits you must judge. Defeating these spirits will summon forth Death Knight Darkreaver. Defeat him and reclaim the lost soul of the fallen charger.
  collect Charger's Redeemed Soul##18799 |q 7647/1
  collect Blessed Arcanite Barding##18792 |q 7647 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Risen Construct
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Darkreaver's Fallen Charger##14568
  turnin Judgment and Redemption##7647 |goto Scholomance - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Again Into the Great Ossuary##7666 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Again Into the Great Ossuary##7666 |goto Stormwind City 48.43,50.22
]])
