-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackrock Depths", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Human Commoner##18927
  accept Brewfest!##11441 |goto Stormwind City 61.45,64.25
step
  talk Private Rocknot##9503
  accept Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Jalinda Sprig##9561
  accept Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  click Dark Iron Sabotage Plans##186881
  accept Seek the Saboteurs##11454 |goto Dun Morogh 48.06,39.1
step
  talk Royal Historian Archesonus##8879
  accept The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Mistress Nagmara##9500
  accept The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Elder Morndeep##15549
  accept Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  collect Dark Iron Ale Mug##11325 |q 4295 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite |tip {dropsfrom}Anvilrage Officer, Grim Patron, Guzzling Patron
step
  note Slay Overmaster Pyron and return to Jalinda Sprig.
  kill Overmaster Pyron##9026 |q 4262 |elite
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 89.47,35.54
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  collect 4 Gromsblood##8846 |q 4201 |goto Swamp of Sorrows 12.71,59.3 |tip {dropsfrom}Dreaming Whelp, Mosshide Brute, Leper Gnome
step
  collect Dark Iron Ore##11370 |q 6642 |goto Searing Gorge 63.9,59.56 |tip {dropsfrom}Dark Iron Geologist, Firegut Ogre Mage, Azzere the Skyblade
step
  collect Fiery Core##17010 |q 6643 |goto Molten Core - Raid -1,-1 |elite |tip {dropsfrom}Molten Destroyer, Firewalker, Flameguard
step
  collect Lava Core##17011 |q 6644 |goto Molten Core - Raid -1,-1 |elite |tip {dropsfrom}Molten Destroyer, Lava Annihilator, Golemagg the Incinerator
step
  collect Core Leather##17012 |q 6645 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  collect Blood of the Mountain##11382 |q 6646 |goto Burning Steppes 81.46,43.38 |tip {dropsfrom}Firegut Brute, War Reaver, Scalding Broodling
step
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  collect Sulfuron Ingot##17203 |q 7604 |goto Molten Core - Raid -1,-1 |raid |tip {dropsfrom}Golemagg the Incinerator
step
  talk Ipfelkofer Ironkeg##24710
  turnin Brewfest!##11441 |goto Dun Morogh 48.01,39.83
step
  talk Private Rocknot##9503
  turnin Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Jalinda Sprig##9561
  turnin Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  talk Coren Direbrew##23872
  turnin Seek the Saboteurs##11454 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Royal Historian Archesonus##8879
  turnin The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Mistress Nagmara##9500
  turnin The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin A Binding Contract##7604 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Elder Morndeep##15549
  turnin Morndeep the Elder##8619 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Darna Honeybock##27584
  accept Save Brewfest!##12318 |goto Dun Morogh 45.86,52.69
step
  talk Royal Historian Archesonus##8879
  accept The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  talk Jalinda Sprig##9561
  accept Incendius!##4263 |goto Burning Steppes 85.41,70.06
step
  talk Coren Direbrew##23872
  accept The Best of Brews##11486 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Venture to the Ruins of Thaurissan in the Burning Steppes and recover information from the Thaurissan Relics. Return to Royal Historian Archesonus when you have recovered the information.
  collect Thaurissan Relic##153556 |q 3701 |goto Burning Steppes 61.85,39.05
step
  note Find Lord Incendius in Blackrock Depths and destroy him!
  kill Lord Incendius##9017 |q 4263 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  talk Brewfest Spy##26719
  turnin Save Brewfest!##12318 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Royal Historian Archesonus##8879
  turnin The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 29.99,44.45
step
  talk Jalinda Sprig##9561
  turnin Incendius!##4263 |goto Burning Steppes 85.41,70.06
step
  talk Ipfelkofer Ironkeg##24710
  turnin The Best of Brews##11486 |goto Dun Morogh 48.01,39.83
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 29.99,44.45
step
  talk King Magni Bronzebeard##2784
  accept Kharan Mighthammer##4341 |goto Ironforge 39.09,56.2
step
  talk Brewfest Spy##26719
  accept Insult Coren Direbrew##12062 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 78.22,17.98
step
  talk Kharan Mighthammer##9021
  turnin Kharan Mighthammer##4341 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Coren Direbrew##23872
  turnin Insult Coren Direbrew##12062 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 78.22,17.98
step
  talk Kharan Mighthammer##9021
  accept Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 78.22,17.98
step
  talk Kharan Mighthammer##9021
  turnin Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 78.22,17.98
step
  talk Kharan Mighthammer##9021
  accept The Bearer of Bad News##4361 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Magistrate Solomon##344
  turnin The True Masters##4186 |goto Redridge Mountains 29.99,44.45
step
  talk King Magni Bronzebeard##2784
  turnin The Bearer of Bad News##4361 |goto Ironforge 39.09,56.2
step
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 29.99,44.45
step
  talk King Magni Bronzebeard##2784
  accept The Fate of the Kingdom##4362 |goto Ironforge 39.09,56.2
step
  note Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan.
  kill Emperor Dagran Thaurissan##9019 |q 4362 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02
step
  talk Princess Moira Bronzebeard##8929
  turnin The Fate of the Kingdom##4362 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess's Surprise##4363 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk King Magni Bronzebeard##2784
  turnin The Princess's Surprise##4363 |goto Ironforge 39.09,56.2
step
  talk Marshal Maxwell##9560
  accept Marshal Windsor##4241 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Windsor##9023
  turnin Marshal Windsor##4241 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  accept Abandoned Hope##4242 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Maxwell##9560
  turnin Abandoned Hope##4242 |goto Burning Steppes 84.74,69.02
step
  kill Anvilrage Overseer##8889 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |tip Loot the quest item here — it starts the quest.
  accept A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  turnin A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  accept A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Return Marshal Windsor's Lost Information.
  collect Marshal Windsor's Lost Information##11464 |q 4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite |tip {dropsfrom}General Angerforge
step
  talk Marshal Windsor##9023
  turnin A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  accept Jail Break!##4322 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Maxwell##9560
  turnin Jail Break!##4322 |goto Burning Steppes 84.74,69.02
]])
