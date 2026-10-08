-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Warrior", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "a0f73e23",
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
  only Dwarf Warrior
  talk Sten Stoutarm##658
  accept Simple Rune##3106 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Warrior
  note Read the Simple Rune and speak to Thran Khorman in Coldridge Valley.
  talk Thran Khorman##912
  turnin Simple Rune##3106 |goto Dun Morogh 28.83,67.24
step
  only Gnome Warrior
  talk Sten Stoutarm##658
  accept Simple Memorandum##3112 |goto Dun Morogh 29.93,71.2
step
  only Gnome Warrior
  note Read the Simple Memorandum and speak to Thran Khorman in Coldridge Valley.
  talk Thran Khorman##912
  turnin Simple Memorandum##3112 |goto Dun Morogh 28.83,67.24
step
  only Human Warrior
  talk Marshal McBride##197
  accept A Scribbled Letter##92479 |goto Elwynn Forest 48.92,41.61
step
  only Human Warrior
  note Read the Scribbled Letter and speak to Tordrin Stemblade in Northshire Abbey.
  talk Tordrin Sternblade##248415
  turnin A Scribbled Letter##92479 |goto Elwynn Forest 51.19,40.74
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
  only Human Warrior
  talk Marshal McBride##197
  accept Simple Letter##3100 |goto Elwynn Forest 48.92,41.61
step
  only Human Warrior
  note Read the Simple Letter and speak to Llane Beshere in Northshire Abbey.
  talk Llane Beshere##911
  turnin Simple Letter##3100 |goto Elwynn Forest 50.24,42.29
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
  only NightElf Warrior
  talk Conservator Ilthalaine##2079
  accept Simple Sigil##3116 |goto Teldrassil 58.69,44.27
step
  only NightElf Warrior
  note Read the Simple Sigil and speak to Alyissia in Shadowglen.
  talk Alyissia##3593
  turnin Simple Sigil##3116 |goto Teldrassil 59.64,38.44
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
  only Skyborne Warrior
  talk Rorian the Dayseeker##251361
  accept The Warrior's Path##92532 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Warrior
  note Read the Crumpled Note you've been given, then seek out Blademaster Ren inside the Thendal Village watchtower.
  talk Blademaster Ren##251964
  turnin The Warrior's Path##92532 |goto Zephras Isle 43.68,24.17
step
  only not Human not NightElf not Skyborne Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  talk Granis Swiftaxe##1229
  accept Muren Stormpike##1679 |goto Dun Morogh 47.36,52.65
step
  only not Human not NightElf not Skyborne Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  note Speak with Muren Stormpike.
  talk Muren Stormpike##6114
  turnin Muren Stormpike##1679 |goto Ironforge 70.77,90.27
step
  only Warrior not completed(1639) not completed(1678) not completed(1683) not haveq(1639) not haveq(1678) not haveq(1683)
  talk Lyria Du Lac##913
  accept A Warrior's Training##1638 |goto Elwynn Forest 41.09,65.77
step
  only Warrior not completed(1639) not completed(1678) not completed(1683) not haveq(1639) not haveq(1678) not haveq(1683)
  note Speak with Harry Burlguard.
  talk Harry Burlguard##6089
  turnin A Warrior's Training##1638 |goto Stormwind City 77.13,53.26
step
  only Warrior not completed(1639) not completed(1678) not completed(1683) not haveq(1639) not haveq(1678) not haveq(1683)
  talk Moon Priestess Amara##2151
  accept Elanaria##1684 |goto Teldrassil 52.91,57.2
step
  only Warrior not completed(1639) not completed(1678) not completed(1683) not haveq(1639) not haveq(1678) not haveq(1683)
  note Speak with Elanaria.
  talk Elanaria##4088
  turnin Elanaria##1684 |goto Darnassus 57.3,34.61
step
  only NightElf Warrior not completed(1639) not completed(1678) not haveq(1639) not haveq(1678)
  talk Elanaria##4088
  accept Vorlus Vilehoof##1683 |goto Darnassus 57.3,34.61
step
  only NightElf Warrior not completed(1639) not completed(1678) not haveq(1639) not haveq(1678)
  note Bring the Horn of Vorlus to Elanaria in Darnassus.
  collect Horn of Vorlus##6805 |q 1683 |goto Teldrassil 47.25,63.6 |tip {dropsfrom}Vorlus Vilehoof
step
  only NightElf Warrior not completed(1639) not completed(1678) not haveq(1639) not haveq(1678)
  talk Elanaria##4088
  turnin Vorlus Vilehoof##1683 |goto Darnassus 57.3,34.61
step
  only not Human not NightElf not Skyborne Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  talk Muren Stormpike##6114
  accept Vejrek##1678 |goto Ironforge 70.77,90.27
step
  only not Human not NightElf not Skyborne Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  note Bring Vejrek's Head to Muren Stormpike in Ironforge.
  collect Vejrek's Head##6799 |q 1678 |goto Dun Morogh 27.83,57.96 |tip {dropsfrom}Vejrek
step
  only not Human not NightElf not Skyborne Warrior not completed(1639) not completed(1683) not haveq(1639) not haveq(1683)
  talk Muren Stormpike##6114
  turnin Vejrek##1678 |goto Ironforge 70.77,90.27
step
  only not Dwarf not NightElf not Gnome Warrior not completed(1678) not completed(1683) not haveq(1678) not haveq(1683)
  talk Harry Burlguard##6089
  accept Bartleby the Drunk##1639 |goto Stormwind City 77.13,53.26
step
  only not Dwarf not NightElf not Gnome Warrior not completed(1678) not completed(1683) not haveq(1678) not haveq(1683)
  note Speak with Bartleby.
  talk Bartleby##6090
  turnin Bartleby the Drunk##1639 |goto Stormwind City 76.76,52.55
step
  only Warrior
  talk Elanaria##4088
  accept The Shade of Elura##1686 |goto Darnassus 57.3,34.61
step
  only Warrior
  note Bring 8 loads of Elunite Ore and the Medallion of Elura to Elanaria in Darnassus.
  collect 8 Elunite Ore##6808 |q 1686 |goto Darkshore 32.21,44.42 |tip {dropsfrom}Crate of Elunite
step
  only Warrior
  talk Elanaria##4088
  turnin The Shade of Elura##1686 |goto Darnassus 57.3,34.61
step
  only Warrior
  talk Elanaria##4088
  accept Smith Mathiel##1692 |goto Darnassus 57.3,34.61
step
  only Warrior
  note Bring the Case of Elunite to Smith Mathiel.
  talk Mathiel##6142
  turnin Smith Mathiel##1692 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Mathiel##6142
  accept Weapons of Elunite##1693 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Mathiel##6142
  turnin Weapons of Elunite##1693 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Ironband's Compound##1681 |goto Ironforge 48.64,42.48
step
  only Warrior
  note Bring a load of Umbral Ore to Tormus Deepforge in Ironforge.
  collect Umbral Ore##6800 |q 1681 |goto Dun Morogh 77.96,62.16 |tip {dropsfrom}Ironband's Strongbox
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Ironband's Compound##1681 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Tormus Deepforge##6031
  accept Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Tormus Deepforge##6031
  turnin Grey Iron Weapons##1682 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Muren Stormpike##6114
  accept Tormus Deepforge##1680 |goto Ironforge 70.77,90.27
step
  only Warrior
  note Speak with Tormus Deepforge.
  talk Tormus Deepforge##6031
  turnin Tormus Deepforge##1680 |goto Ironforge 48.64,42.48
step
  only Warrior
  talk Bartleby##6090
  accept Beat Bartleby##1640 |goto Stormwind City 76.76,52.55
step
  only Warrior
  note Beat Bartleby, then talk to him.
  talk Bartleby##6090 |q 1640 |goto Stormwind City 76.76,52.55
step
  only Warrior
  talk Bartleby##6090
  turnin Beat Bartleby##1640 |goto Stormwind City 76.76,52.55
step
  only Warrior
  talk Bartleby##6090
  accept Bartleby's Mug##1665 |goto Stormwind City 76.76,52.55
step
  only Warrior
  note Bring Bartleby's Mug to Burlguard
  talk Harry Burlguard##6089
  turnin Bartleby's Mug##1665 |goto Stormwind City 77.13,53.26
step
  only Warrior
  talk Harry Burlguard##6089
  accept Marshal Haggard##1666 |goto Stormwind City 77.13,53.26
step
  only Warrior
  note Speak with Marshal Haggard.
  talk Marshal Haggard##294
  turnin Marshal Haggard##1666 |goto Elwynn Forest 84.61,69.38
step
  only Human Warrior
  talk Marshal Haggard##294
  accept Dead-tooth Jack##1667 |goto Elwynn Forest 84.61,69.38
step
  only Human Warrior
  note Retrieve Haggard's Badge from Dead-tooth Jack's camp, and return to Marshal Haggard.
  collect Marshal Haggard's Badge##6782 |q 1667 |goto Elwynn Forest 89.33,78.88 |tip {dropsfrom}Dead-tooth's Strongbox
step
  only Human Warrior
  talk Marshal Haggard##294
  turnin Dead-tooth Jack##1667 |goto Elwynn Forest 84.61,69.38
step
  only Skyborne Warrior
  talk Seena Skybreaker##252377
  accept The Skybreaker Bulwark##94003 |goto Zephras Isle 59.87,72.82
step
  only Skyborne Warrior
  note Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir.
  collect Skybreaker Bulwark##263993 |q 94003 |goto Zephras Isle 36.05,33.53 |tip {dropsfrom}Zaal Stormshield
step
  only Skyborne Warrior
  talk Seena Skybreaker##252377
  turnin The Skybreaker Bulwark##94003 |goto Zephras Isle 59.87,72.82
step
  only Warrior
  talk Kelv Sternhammer##5113
  accept Yorus Barleybrew##1698 |goto Ironforge 70.34,90.65
step
  only Warrior
  note Speak with Yorus Barleybrew.
  talk Yorus Barleybrew##6166
  turnin Yorus Barleybrew##1698 |goto Redridge Mountains 21.49,44.72
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  only Warrior
  note Enter the Rethban Caverns, reach the first fork, and return to Yorus Barleybrew within the time allowed.
  talk Yorus Barleybrew##6166
  turnin The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Shieldsmith##1702 |goto Redridge Mountains 21.49,44.72
step
  only Warrior
  note Bring the Cask of Scalder to Furen Longbeard.
  talk Furen Longbeard##5413
  turnin The Shieldsmith##1702 |goto Stormwind City 64.62,37.23
step
  only Warrior
  talk Furen Longbeard##5413
  accept Fire Hardened Mail##1701 |goto Stormwind City 64.62,37.23
step
  only Warrior
  note Gather the materials Furen Longbeard requires, and bring them to him in Stormwind.
  collect Scorched Spider Fang##6838 |q 1701 |goto Wetlands 52.66,63.02 |tip {dropsfrom}Leech Stalker, Cave Stalker
step
  only Warrior
  talk Furen Longbeard##5413
  turnin Fire Hardened Mail##1701 |goto Stormwind City 64.62,37.23
step
  only Warrior
  talk Furen Longbeard##5413
  accept Furen's Armor##1782 |goto Stormwind City 64.62,37.23
step
  only Warrior
  talk Furen Longbeard##5413
  turnin Furen's Armor##1782 |goto Stormwind City 64.62,37.23
step
  only Warrior
  talk Grimand Elmore##1416
  accept Burning Blood##1705 |goto Stormwind City 59.73,33.78
step
  only Warrior
  note Bring 20 vials of Burning Blood and 1 Burning Rock to Grimand Elmore in Stormwind.
  collect 20 Burning Blood##6844 |q 1705 |goto Duskwood 65.13,67.39 |tip {dropsfrom}Nightbane Dark Runner, Nightbane Vile Fang, Nightbane Shadow Weaver
step
  only Warrior
  talk Grimand Elmore##1416
  turnin Burning Blood##1705 |goto Stormwind City 59.73,33.78
step
  only Warrior
  talk Grimand Elmore##1416
  accept Grimand's Armor##1706 |goto Stormwind City 59.73,33.78
step
  only Warrior
  talk Grimand Elmore##1416
  turnin Grimand's Armor##1706 |goto Stormwind City 59.73,33.78
step
  only Human Warrior
  talk Furen Longbeard##5413
  accept Grimand Elmore##1700 |goto Stormwind City 64.62,37.23
step
  only Human Warrior
  note Bring Furen's Notes to Grimand Elmore.
  talk Grimand Elmore##1416
  turnin Grimand Elmore##1700 |goto Stormwind City 59.73,33.78
step
  only NightElf Warrior
  talk Furen Longbeard##5413
  accept Mathiel##1703 |goto Stormwind City 64.62,37.23
step
  only NightElf Warrior
  note Bring Furen's Notes to Mathiel.
  talk Mathiel##6142
  turnin Mathiel##1703 |goto Darnassus 59.51,45.38
step
  only not Human not NightElf not Skyborne Warrior
  talk Furen Longbeard##5413
  accept Klockmort Spannerspan##1704 |goto Stormwind City 64.62,37.23
step
  only not Human not NightElf not Skyborne Warrior
  note Bring Furen's Notes to Klockmort Spannerspan.
  talk Klockmort Spannerspan##6169
  turnin Klockmort Spannerspan##1704 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Klockmort Spannerspan##6169
  accept Iron Coral##1708 |goto Ironforge 67.92,46.1
step
  only Warrior
  note Bring 20 loads of Searing Coral to Klockmort Spannerspan in Ironforge.
  collect 20 Searing Coral##6848 |q 1708 |goto Wetlands 8.92,70.18 |tip {dropsfrom}Iron Coral
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Iron Coral##1708 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Klockmort Spannerspan##6169
  accept Klockmort's Creation##1709 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Creation##1709 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Mathiel##6142
  accept Sunscorched Shells##1710 |goto Darnassus 59.51,45.38
step
  only Warrior
  note Bring 20 Sunscorched Shells to Mathiel in Darnassus.
  collect 20 Sunscorched Shell##6849 |q 1710 |goto Thousand Needles 11.41,36.76
step
  only Warrior
  talk Mathiel##6142
  turnin Sunscorched Shells##1710 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Mathiel##6142
  accept Mathiel's Armor##1711 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Mathiel##6142
  turnin Mathiel's Armor##1711 |goto Darnassus 59.51,45.38
step
  only Warrior
  talk Kelv Sternhammer##5113
  accept The Islander##1718 |goto Ironforge 70.34,90.65
step
  only Warrior
  note Speak with Klannoc Macleod.
  talk Klannoc Macleod##6236
  turnin The Islander##1718 |goto The Barrens 68.62,49.16
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  talk Big Will##6238 |q 1719 |goto The Barrens 68.61,48.72
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Windwatcher##1791 |goto The Barrens 68.62,49.16
step
  only Warrior
  note Speak with Bath'rah the Windwatcher.
  talk Bath'rah the Windwatcher##6176
  turnin The Windwatcher##1791 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  click Bath'rah's Cauldron##89931
  accept Essence of the Exile##1714 |goto Alterac Mountains 79.32,66.8
step
  only Warrior
  collect Thundering Charm##4480 |q 1714 |goto Arathi Highlands 78.55,37.77 |tip {dropsfrom}Drywhisker Kobold, Drywhisker Surveyor, Drywhisker Digger
step
  only Warrior
  turnin Essence of the Exile##1714 |goto Alterac Mountains 79.32,66.8
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712 |goto Stranglethorn Vale 33.84,23.75
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  kill Cyclonian##6239 |goto Alterac Mountains 80.32,62.14 |elite
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.32,62.14
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Kelv Sternhammer##5113
  accept A Troubled Spirit##8417 |goto Ironforge 70.34,90.65
step
  only Warrior
  note Speak with the Fallen Hero of the Horde at the entrance to the Blasted Lands.
  talk Fallen Hero of the Horde##7572
  turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 50.2,38.6
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.08,35.24
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  collect Amber Voodoo Feather##20606 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Codex of Defense##7499 |goto Dire Maul - Dungeon -1,-1
step
  only Warrior
  note Return the book to its rightful owners.
  talk Lorekeeper Kildrath##14383
  turnin Codex of Defense##7499 |goto Dire Maul - Dungeon -1,-1
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
  only Warrior
  talk Deliana##16013
  accept Just Compensation##8937 |goto Ironforge 43.53,52.64
step
  only Warrior
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Deliana in Ironforge.
  collect Belt of Valor##16736 |q 8937 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  only Warrior
  talk Deliana##16013
  turnin Just Compensation##8937 |goto Ironforge 43.53,52.64
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
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8959 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior
  note Return to Deliana in Ironforge with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  collect Boots of Valor##16734 |q 8959 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Kirtonos the Herald
step
  only Warrior
  talk Deliana##16013
  turnin Anthion's Parting Words##8959 |goto Ironforge 43.53,52.64
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
  only Warrior
  talk Deliana##16013
  accept Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
step
  only Warrior
  note Give Deliana your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9006 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior
  talk Deliana##16013
  turnin Saving the Best for Last##9006 |goto Ironforge 43.53,52.64
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
  only Warrior
  talk Geologist Larksbane##15183
  accept Armaments of War##8316 |goto Silithus 49.67,37.46
step
  only Warrior
  talk Geologist Larksbane##15183
  turnin Armaments of War##8316 |goto Silithus 49.67,37.46
]])
