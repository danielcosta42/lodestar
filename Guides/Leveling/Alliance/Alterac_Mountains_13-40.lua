-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Alterac Mountains (13-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Badlands (37-42)",
}, [[
step
  talk Angus Stern##1141
  accept A Meal Served Cold##212 |goto Stormwind City 51.79,93.64
step
  note Kill a Cold Eye Basilisk, get a Chilled Basilisk Haunch, and return it to Angus Stern in the Blue Recluse.
  collect Chilled Basilisk Haunch##2476 |q 212 |goto Stranglethorn Vale 31.36,40.88 |tip {dropsfrom}Cold Eye Basilisk
step
  talk Archmage Ansirem Runeweaver##2543
  accept Ansirem's Key##603 |goto Alterac Mountains 18.84,78.49
step
  only Warlock
  talk Demisette Cloyce##461
  accept Summon Felsteed##4488 |goto Stormwind City 39.24,84.96
step
  only Skyborne Druid
  talk Archmage Ansirem Runeweaver##2543
  accept Child of Nature##94912 |goto Alterac Mountains 18.84,78.49
step
  collect Worn Wooden Chest##1765 |goto Alterac Mountains 39.18,14.66 |tip Loot the quest item here — it starts the quest.
  accept The Ensorcelled Parchment##551 |goto Alterac Mountains 39.18,14.66
step
  talk Gerrig Bonegrip##2786
  accept Forbidden Knowledge##737 |goto Ironforge 50.83,5.62
step
  only Mage
  talk Ursyn Ghull##3048
  accept Return to the Marsh##1953 |goto Thunder Bluff 25.7,14.19
step
  only Paladin
  talk Tiza Battleforge##6179
  accept The Tome of Nobility##4485 |goto Ironforge 27.63,12.18
step
  only Paladin
  talk Brandur Ironhammer##5149
  accept The Tome of Nobility##4486 |goto Ironforge 23.13,6.14
step
  only Warlock
  talk Briarthorn##5172
  accept Summon Felsteed##4487 |goto Ironforge 50.35,5.66
step
  only Druid
  talk Alfina Nightgaze##270459
  accept Lessons Anew##6121 |goto Alterac Mountains 11.74,56.62
step
  only Skyborne
  talk Denaaris Stargale##259084
  accept Welcome to Azeroth##94947 |goto Alterac Mountains 12.4,56.32
step
  only Skyborne
  note Take the Skyborne Portal to Stormwind and report to Bolvar Fordragon in Stormwind Keep.
  collect Skyborne Portal to Stormwind##631299 |q 94947 |goto Alterac Mountains 12.04,56.21
step
  talk Theldurin the Lost##2785
  turnin Forbidden Knowledge##737 |goto Badlands 51.39,76.87 |tip {turninat}Badlands
step
  only Skyborne
  talk Highlord Bolvar Fordragon##1748
  turnin Welcome to Azeroth##94947 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  only Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Nobility##4485 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  only Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Nobility##4486 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  talk Loremaster Dibbs##2277
  turnin The Ensorcelled Parchment##551 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Summon Felsteed##4488 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Summon Felsteed##4487 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  only Druid
  talk Dendrite Starblaze##11802
  turnin Lessons Anew##6121 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  click Syndicate Documents##1740
  accept Foreboding Plans##510 |goto Alterac Mountains 58.32,67.92
step
  click Syndicate Documents##1740
  accept Encrypted Letter##511 |goto Alterac Mountains 58.32,67.92
step
  talk Count Remington Ridgewell##2285
  accept The Perenolde Tiara##543 |goto Stormwind City 76.94,47.83
step
  note Bring the Perenolde Tiara to Remington Ridgewell in Stormwind.
  kill Grel'borg the Miser##2417 |goto Alterac Mountains 35.58,54.42 |elite
  collect Perenolde Tiara##3684 |q 543 |goto Alterac Mountains 35.58,54.42
step
  talk Historian Karnik##2916
  accept Passing Word of a Threat##725 |goto Ironforge 77.54,11.82
step
  only Paladin
  talk Duthorian Rall##6171
  accept The Tome of Nobility##1661 |goto Stormwind City 50.48,47.49
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712 |goto Stranglethorn Vale 33.28,26.45
step
  talk Prospector Stormpike##1356
  accept The Lost Dwarves##2398 |goto Ironforge 74.64,11.74
step
  only Skyborne Druid
  talk Sheldras Moontree##5504
  turnin Child of Nature##94912 |goto Stormwind City 35.84,67.38 |tip {turninat}Stormwind City
step
  talk Angus Stern##1141
  turnin A Meal Served Cold##212 |goto Stormwind City 51.79,93.64 |tip {turninat}Stormwind City
step
  talk Catelyn the Blade##2542
  turnin Ansirem's Key##603 |goto Stranglethorn Vale 27.28,77.53 |tip {turninat}Stranglethorn Vale
step
  only Mage
  talk Tabetha##6546
  turnin Return to the Marsh##1953 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Baelog##6906
  turnin The Lost Dwarves##2398 |goto Uldaman - Dungeon -1,-1 |tip {turninat}Uldaman - Dungeon
step
  talk Count Remington Ridgewell##2285
  turnin The Perenolde Tiara##543 |goto Stormwind City 76.94,47.83 |tip {turninat}Stormwind City
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  talk Advisor Belgrum##2918
  turnin Passing Word of a Threat##725 |goto Ironforge 77.34,9.71 |tip {turninat}Ironforge
step
  only Paladin
  talk Duthorian Rall##6171
  turnin The Tome of Nobility##1661 |goto Stormwind City 50.48,47.49 |tip {turninat}Stormwind City
step
  talk Magistrate Henry Maleb##2276
  turnin Foreboding Plans##510 |goto Hillsbrad Foothills 48.14,59.11 |tip {turninat}Hillsbrad Foothills
step
  talk Loremaster Dibbs##2277
  turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  talk Advisor Belgrum##2918
  accept Passing Word of a Threat##726 |goto Ironforge 77.34,9.71
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
  talk Historian Karnik##2916
  turnin Passing Word of a Threat##726 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  note {travel}Badlands
  goto Badlands 53.42,43.39
]])
