-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dun Morogh (13-26)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Loch Modan (11-18)",
	rev = "f79699ed",
}, [[
step
  ding 12
step
  only Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  talk Muren Stormpike##6114
  accept Vejrek##1678 |goto Ironforge 70.77,90.27
step
  only Human Paladin completed(1643) level>=12
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21
step
  only Human Paladin completed(1643) haveq(1644)
  note Bring 10 Linen Cloth to Stephanie Turner in Stormwind.
  collect 10 Linen Cloth##2589 |q 1644 |goto Stormwind City 63.84,72.21 |tip {dropsfrom}humanoids
step
  only Dwarf Paladin completed(1647) level>=12
  talk John Turner##6175
  accept The Tome of Divinity##1648 |goto Ironforge 23.34,61.86
step
  only Dwarf Paladin completed(1647) haveq(1648)
  note Bring 10 Linen Cloth to John Turner in Ironforge.
  collect 10 Linen Cloth##2589 |q 1648 |goto Ironforge 23.34,61.86 |tip {dropsfrom}humanoids
step
  only level>=12
  talk Rudra Amberstill##1265
  accept Protecting the Herd##314 |goto Dun Morogh 63.08,49.85
step
  only haveq(314)
  note Rudra Amberstill wants you to slay Vagash and bring his fang to her at the Ram ranch.
  kill Vagash##1388 |q 314 |goto Dun Morogh 62.62,46.05 |elite
  collect Fang of Vagash##3627 |q 314 |goto Dun Morogh 62.62,46.05
step
  only haveq(314)
  talk Rudra Amberstill##1265
  turnin Protecting the Herd##314 |goto Dun Morogh 63.08,49.85
step
  talk Beldin Steelgrill##1376
  accept A Visitor to Dun Morogh##96408 |goto Dun Morogh 50.44,49.09
step
  only not Dwarf not NightElf not Skyborne Mage level>=15
  talk Magis Sparkmantle##1228
  accept Report to Jennea##1919 |goto Dun Morogh 47.5,52.08
step
  note Investigate the campsite overlooking the Gol'Bolar Quarry.
  talk Earthseer Farsen##264936
  turnin A Visitor to Dun Morogh##96408 |goto Dun Morogh 64.87,58.47
step
  talk Earthseer Farsen##264936
  accept Farsen's Watch##96392 |goto Dun Morogh 64.87,58.47
step
  note Speak with Earthseer Farsen's and ask him to lend you his farsight to observe the Dark Iron threat.
  talk Earthseer Farsen##264936 |q 96392 |goto Dun Morogh 64.87,58.47
step
  talk Earthseer Farsen##264936
  turnin Farsen's Watch##96392 |goto Dun Morogh 64.87,58.47
step
  talk Earthseer Farsen##264936
  accept Nip 'Em in the Bud##96390 |goto Dun Morogh 64.87,58.47
step
  kill Dark Iron Spy##6123 |goto Dun Morogh 77.36,61.31 |tip Loot the quest item here — it starts the quest.
  accept Underground Map##96391 |goto Dun Morogh 77.36,61.31
step
  note Slay 10 Dark Iron Spies in Dun Morogh.
  kill Dark Iron Spy##6123 |q 96390/1 |goto Dun Morogh 77.36,61.31
  kill Rockjaw Bonesnapper##1117 |q 96390 |goto Dun Morogh 72.41,52.9
step
  talk Earthseer Farsen##264936
  turnin Nip 'Em in the Bud##96390 |goto Dun Morogh 64.87,58.47
step
  note Deliver the Dark Iron Map to Earthseer Farsen in Dun Morogh.
  talk Earthseer Farsen##264936
  turnin Underground Map##96391 |goto Dun Morogh 64.87,58.47
step
  only Rogue level>=16
  talk Hogral Bakkan##1234
  accept To Hulfdan!##2299 |goto Dun Morogh 47.56,52.61
step
  only Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  note Bring Vejrek's Head to Muren Stormpike in Ironforge.
  collect Vejrek's Head##6799 |q 1678 |goto Dun Morogh 27.83,57.96 |tip {dropsfrom}Vejrek
step
  only Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  talk Muren Stormpike##6114
  turnin Vejrek##1678 |goto Ironforge 70.77,90.27 |tip {turninat}Ironforge
step
  only Warrior
  talk Muren Stormpike##6114
  accept Tormus Deepforge##1680 |goto Ironforge 70.77,90.27
step
  only level>=15
  talk Gnoarn##6569
  accept Speak with Shoni##2041 |goto Ironforge 69.18,50.55
step
  only level>=20
  talk Gnoarn##6569
  accept The Day After##2927 |goto Ironforge 69.18,50.55
step
  only level>=26
  talk Tinkmaster Overspark##7944
  accept Save Techbot's Brain!##2922 |goto Ironforge 69.55,50.33
step
  only Warrior
  note Speak with Tormus Deepforge.
  talk Tormus Deepforge##6031
  turnin Tormus Deepforge##1680 |goto Ironforge 48.64,42.48 |tip {turninat}Ironforge
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Ironband's Compound##1681 |goto Ironforge 48.64,42.48
step
  only Rogue haveq(2299)
  note Travel to Ironforge and speak with Hulfdan Blackbeard.
  talk Hulfdan Blackbeard##5165
  turnin To Hulfdan!##2299 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  only Rogue level>=16
  talk Hulfdan Blackbeard##5165
  accept Kingly Shakedown##2298 |goto Ironforge 51.96,14.84
step
  only Warlock not completed(1716) not haveq(1716) level>=20
  talk Lago Blackwrench##6120
  accept Gakin's Summons##1717 |goto Ironforge 47.63,9.26
step
  only Dwarf Priest not completed(5645) not completed(5647) not haveq(5645) not haveq(5647) level>=20
  talk High Priest Rohan##11406
  accept A Lack of Fear##5641 |goto Ironforge 24.73,8.16
step
  only Dwarf Priest not completed(5645) not completed(5647) not haveq(5645) not haveq(5647) haveq(5641)
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5641 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
step
  only Human Priest not completed(5676) not completed(5678) not haveq(5676) not haveq(5678) level>=20
  talk High Priest Rohan##11406
  accept Arcane Feedback##5677 |goto Ironforge 24.73,8.16
step
  only Dwarf Paladin completed(1647) haveq(1648)
  talk John Turner##6175
  turnin The Tome of Divinity##1648 |goto Ironforge 23.34,61.86 |tip {turninat}Ironforge
step
  only Dwarf Paladin completed(1647) completed(1648)
  talk John Turner##6175
  accept The Tome of Divinity##1778 |goto Ironforge 23.34,61.86
step
  only Dwarf Paladin completed(1647) haveq(1778)
  note Speak to Tiza Battleforge in Ironforge.
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1778 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Dwarf Paladin completed(1647) completed(1778)
  talk Tiza Battleforge##6179
  accept The Tome of Divinity##1779 |goto Ironforge 27.63,12.18
step
  only Dwarf Paladin completed(1647) haveq(1779)
  note Take the Symbol of Life and speak to Muiredon Battleforge in Ironforge.
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1779 |goto Ironforge 23.54,8.3 |tip {turninat}Ironforge
step
  only Dwarf Paladin completed(1647) completed(1779)
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1783 |goto Ironforge 23.54,8.3
step
  only Human Paladin completed(1643) haveq(1644)
  talk Stephanie Turner##6174
  turnin The Tome of Divinity##1644 |goto Stormwind City 63.84,72.21 |tip {turninat}Stormwind City
step
  only Human Paladin completed(1643) completed(1644)
  talk Stephanie Turner##6174
  accept The Tome of Divinity##1780 |goto Stormwind City 63.84,72.21
step
  only Rogue haveq(2298)
  note Travel to Stormwind and seek out Renzik "The Shiv."
  talk Renzik "The Shiv"##6946
  turnin Kingly Shakedown##2298 |goto Stormwind City 78.29,71.14 |tip {turninat}Stormwind City
step
  only Rogue level>=20
  talk Master Mathias Shaw##332
  accept Mathias and the Defias##2360 |goto Stormwind City 78.31,70.74
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1919)
  note Speak with Jennea Cannon in Stormwind.
  talk Jennea Cannon##5497
  turnin Report to Jennea##1919 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  only Warlock not completed(1716) not haveq(1716) haveq(1717)
  note Report to Gakin the Darkbinder in the Mage Quarter of Stormwind.
  talk Gakin the Darkbinder##6122
  turnin Gakin's Summons##1717 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only Human Paladin completed(1643) haveq(1780)
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1780 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) level>=20
  talk Duthorian Rall##6171
  accept The Tome of Valor##1650 |goto Stormwind City 50.48,47.49
step
  only Human Paladin completed(1643) completed(1780)
  talk Duthorian Rall##6171
  accept The Tome of Divinity##1781 |goto Stormwind City 50.48,47.49
step
  only Human Paladin completed(1643) haveq(1781)
  note Take the Symbol of Life to Gazin Tenorm in Stormwind.
  talk Gazin Tenorm##6173
  turnin The Tome of Divinity##1781 |goto Stormwind City 49.53,44.99 |tip {turninat}Stormwind City
step
  only Human Paladin completed(1643) completed(1781)
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1786 |goto Stormwind City 49.53,44.99
step
  only Human Priest not completed(5676) not completed(5678) not haveq(5676) not haveq(5678) haveq(5677)
  note Speak to High Priestess Laurena in Stormwind.
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5677 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only haveq(2041)
  note Speak with Shoni the Shilent in Stormwind.
  talk Shoni the Shilent##6579
  turnin Speak with Shoni##2041 |goto Stormwind City 62.63,34.11 |tip {turninat}Stormwind City
step
  only Rogue haveq(2360)
  note Travel to Westfall and find Agent Kearnen for your debriefing.
  talk Agent Kearnen##7024
  turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08 |tip {turninat}Westfall
step
  only Rogue completed(2360) level>=20
  talk Agent Kearnen##7024
  accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
step
  only Rogue haveq(2359)
  note Steal the Defias Tower Key, break into the Defias Tower and uncover the contents of the Duskwood Chest. Take whatever information you find back to Mathias Shaw in Stormwind. Read Kearnen's Journal to gain insight about the tower.
  collect Klaven Mortwake's Journal##7908 |q 2359/1 |goto Westfall 70.41,73.93 |tip {dropsfrom}Duskwood Chest
  collect Defias Tower Key##7923 |q 2359 |goto Westfall 69.47,73.99 |tip {dropsfrom}Malformed Defias Drone
step
  only Shaman level>=20
  click Forgotten Shrine##619896
  accept Call of Water##94503 |goto Westfall 45.57,59.88
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) haveq(1650)
  note Find Daphne Stilwell in Westfall.
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1650 |goto Westfall 41.69,89.24 |tip {turninat}Westfall
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) completed(1650) level>=20
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1651 |goto Westfall 41.69,89.24
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) haveq(1651)
  note Defend Daphne Stilwell from the Defias attack.
  goto Westfall 42.15,88.44 |tip Protect Daphne Stilwell
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) haveq(1651)
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1651 |goto Westfall 41.69,89.24 |tip {turninat}Westfall
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) completed(1651) level>=20
  talk Daphne Stilwell##6182
  accept The Tome of Valor##1652 |goto Westfall 41.69,89.24
step
  only Shaman haveq(94503)
  note Speak to the Minor Manifestation of Water in Westfall.
  talk Minor Manifestation of Water##5895
  turnin Call of Water##94503 |goto Silverpine Forest 38.65,44.58 |tip {turninat}Silverpine Forest
step
  only haveq(2927)
  note Speak with Ozzie Togglevolt in Kharanos.
  talk Ozzie Togglevolt##1268
  turnin The Day After##2927 |goto Dun Morogh 45.89,49.39
step
  only level>=27
  talk Ozzie Togglevolt##1268
  accept Gnogaine##2926 |goto Dun Morogh 45.89,49.39
step
  only haveq(2926)
  note Use the Empty Leaden Collection Phial on Irradiated Invaders or Irradiated Pillagers to collect radioactive fallout. Once it is full, take it back to Ozzie Togglevolt in Kharanos.
  kill Irradiated Invader##6213 |q 2926 |goto Dun Morogh 20.9,36.02 |elite
  collect Full Leaden Collection Phial##9284 |q 2926 |goto Dun Morogh 20.9,36.02
step
  only haveq(2922)
  note Bring Techbot's Memory Core to Tinkmaster Overspark in Ironforge.
  kill Techbot##6231 |q 2922 |goto Dun Morogh 19.78,31.93 |elite
  collect Techbot's Memory Core##9277 |q 2922 |goto Dun Morogh 19.78,31.93
step
  only haveq(2926)
  talk Ozzie Togglevolt##1268
  turnin Gnogaine##2926 |goto Dun Morogh 45.89,49.39
step
  only Dwarf Paladin completed(1647) haveq(1783)
  note Take the Symbol of Life and resurrect Narm Faulk in Dun Morogh.
  talk Narm Faulk##6177 |q 1783 |goto Dun Morogh 78.32,58.09
step
  only Dwarf Paladin completed(1647) haveq(1783)
  talk Narm Faulk##6177
  turnin The Tome of Divinity##1783 |goto Dun Morogh 78.32,58.09
step
  only Dwarf Paladin completed(1647) completed(1783)
  talk Narm Faulk##6177
  accept The Tome of Divinity##1784 |goto Dun Morogh 78.32,58.09
step
  only Dwarf Paladin completed(1647) haveq(1784)
  note Retrieve a Dark Iron Script from the Dark Iron dwarves near Helm's Bed, and return to Muiredon Battleforge in Ironforge.
  collect Dark Iron Script##6847 |q 1784 |goto Dun Morogh 77.36,61.31 |tip {dropsfrom}Dark Iron Spy
step
  only Warrior
  note Bring a load of Umbral Ore to Tormus Deepforge in Ironforge.
  collect Umbral Ore##6800 |q 1681 |goto Dun Morogh 77.96,62.16 |tip {dropsfrom}Ironband's Strongbox
step
  only haveq(2922)
  talk Tinkmaster Overspark##7944
  turnin Save Techbot's Brain!##2922 |goto Ironforge 69.55,50.33 |tip {turninat}Ironforge
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Ironband's Compound##1681 |goto Ironforge 48.64,42.48 |tip {turninat}Ironforge
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48 |tip {turninat}Ironforge
step
  only Dwarf Paladin completed(1647) haveq(1784)
  talk Muiredon Battleforge##6178
  turnin The Tome of Divinity##1784 |goto Ironforge 23.54,8.3 |tip {turninat}Ironforge
step
  only Dwarf Paladin completed(1647) completed(1784)
  talk Muiredon Battleforge##6178
  accept The Tome of Divinity##1785 |goto Ironforge 23.54,8.3
step
  only Dwarf Paladin completed(1647) haveq(1785)
  note Speak to Tiza Battleforge in Ironforge.
  talk Tiza Battleforge##6179
  turnin The Tome of Divinity##1785 |goto Ironforge 27.63,12.18 |tip {turninat}Ironforge
step
  only Rogue haveq(2359)
  talk Master Mathias Shaw##332
  turnin Klaven's Tower##2359 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) haveq(1652)
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Valor##1652 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) completed(1652) level>=20
  talk Duthorian Rall##6171
  accept The Test of Righteousness##1653 |goto Stormwind City 50.48,47.49
step
  only Human Paladin completed(1643) haveq(1786)
  note Take the Symbol of Life and resurrect Henze Faulk in Elwynn.
  talk Henze Faulk##6172 |q 1786 |goto Elwynn Forest 72.6,51.41
step
  only Human Paladin completed(1643) haveq(1786)
  talk Henze Faulk##6172
  turnin The Tome of Divinity##1786 |goto Elwynn Forest 72.6,51.41 |tip {turninat}Elwynn Forest
step
  only Human Paladin completed(1643) completed(1786)
  talk Henze Faulk##6172
  accept The Tome of Divinity##1787 |goto Elwynn Forest 72.6,51.41
step
  only Human Paladin completed(1643) haveq(1787)
  note Retrieve a Defias Script from the Defias Rogue Wizards in Elwynn, and return to Gazin Tenorm in Stormwind.
  collect Defias Script##6846 |q 1787 |goto Elwynn Forest 73.38,52.48 |tip {dropsfrom}Defias Rogue Wizard, Defias Bodyguard
step
  only not NightElf not Gnome not Skyborne Paladin completed(1649) haveq(1653)
  note Speak to Jordan Stilwell in Ironforge
  talk Jordan Stilwell##6181
  turnin The Test of Righteousness##1653 |goto Dun Morogh 52.49,36.92
step
  only Human Paladin completed(1643) haveq(1787)
  talk Gazin Tenorm##6173
  turnin The Tome of Divinity##1787 |goto Stormwind City 49.53,44.99 |tip {turninat}Stormwind City
step
  only Human Paladin completed(1643) completed(1787)
  talk Gazin Tenorm##6173
  accept The Tome of Divinity##1788 |goto Stormwind City 49.53,44.99
step
  only Human Paladin completed(1643) haveq(1788)
  note Speak to Duthorian Rall in Stormwind.
  talk Duthorian Rall##6171
  turnin The Tome of Divinity##1788 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  note {travel}Loch Modan
  goto Loch Modan 34.83,49.28
]])
