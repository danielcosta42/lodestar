-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Brewfest", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Human Commoner##18927
  accept Brewfest!##11441 |goto Stormwind City 61.45,64.25
step
  click Dark Iron Sabotage Plans##186881
  accept Seek the Saboteurs##11454 |goto Dun Morogh 48.06,39.1
step
  note Goldark Snipehunter has asked you to capture 5 Stunned Wolpertingers using the Wolpertinger Net. He mentioned that you must be intoxicated to see them.
  collect 5 Catch the Wild Wolpertinger!##32906 |q 11117
step
  note Visit the beer gardens outside of Stormwind, Darnassus, and the Exodar, zap three elekks at each location, and return to Goldark Snipehunter. You must be drunk to see the pink elekks.
  kill Azuremyst Pink Elekk##23528 |q 11118 |goto The Exodar 78.88,57.63
step
  talk Pol Amberstill##24468
  turnin Brewfest Riding Rams##11400 |goto Dun Morogh 46.43,40.32
step
  talk Ipfelkofer Ironkeg##24710
  turnin Brewfest!##11441 |goto Dun Morogh 48.01,39.83
step
  talk Larkin Thunderbrew##27478
  turnin Brew of the Month Club##12278 |goto Ironforge 18.8,53.1
step
  talk Coren Direbrew##23872
  turnin Seek the Saboteurs##11454 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Neill Ramstein##23558
  accept Now This is Ram Racing... Almost.##11318 |goto Dun Morogh 46.57,40.3
step
  talk Boxey Boltspinner##27215
  accept Chug and Chuck!##12022 |goto Dun Morogh 47.56,39.85
step
  talk Darna Honeybock##27584
  accept Save Brewfest!##12318 |goto Dun Morogh 45.86,52.69
step
  talk Coren Direbrew##23872
  accept The Best of Brews##11486 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note You have 4 minutes to ride the ram and maintain 3 different levels of speed for 8 seconds.
  get Now This is Ram Racing... Almost. |q 11318 |goto Dun Morogh 46.57,40.3
step
  note Use the Complimentary Brewfest Sampler to hit S.T.O.U.T. 5 times, then talk to Boxey Boltspinner.
  kill Self-Turning and Oscillating Utility Target##24108 |q 12022 |goto Dun Morogh 47.64,39.3
step
  talk Neill Ramstein##23558
  turnin Now This is Ram Racing... Almost.##11318 |goto Dun Morogh 46.57,40.3
step
  talk Boxey Boltspinner##27215
  turnin Chug and Chuck!##12022 |goto Dun Morogh 47.56,39.85
step
  talk Brewfest Spy##26719
  turnin Save Brewfest!##12318 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Ipfelkofer Ironkeg##24710
  turnin The Best of Brews##11486 |goto Dun Morogh 48.01,39.83
step
  talk Neill Ramstein##23558
  accept There and Back Again##11122 |goto Dun Morogh 46.57,40.3
step
  talk Becan Barleybrew##23627
  accept Bark for the Barleybrews!##11293 |goto Dun Morogh 49.01,39.81
step
  talk Pol Amberstill##24468
  accept Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12193 |goto Dun Morogh 46.43,40.32
step
  kill Coren Direbrew##23872 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Direbrew's Dire Brew##12491 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Daran Thunderbrew##23628
  accept Bark for the Thunderbrews!##11294 |goto Dun Morogh 49.45,38.66
step
  talk Brewfest Spy##26719
  accept Insult Coren Direbrew##12062 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Get a keg from Flynn Firebrew in Kharanos and return it to Pol Amberstill. Do this 3 times before your ram goes away.
  get There and Back Again |q 11122 |goto Dun Morogh 46.57,40.3
step
  note Spread the word about Brewfest at the flags outside the bank, in the Military Ward, in the Hall of Explorers and in the Mystic Ward.
  get Bark for the Barleybrews! |q 11293 |goto Dun Morogh 49.01,39.81
step
  note Spread the word about Brewfest at the flags outside the bank, in the Military Ward, in the Hall of Explorers and in the Mystic Ward.
  get Bark for the Thunderbrews! |q 11294 |goto Dun Morogh 49.45,38.66
step
  talk Neill Ramstein##23558
  turnin There and Back Again##11122 |goto Dun Morogh 46.57,40.3
step
  talk Becan Barleybrew##23627
  turnin Bark for the Barleybrews!##11293 |goto Dun Morogh 49.01,39.81
step
  talk Boxey Boltspinner##27215
  turnin This One Time, When I Was Drunk...##12020 |goto Dun Morogh 47.56,39.85
step
  talk Belbi Quikswitch##23710
  turnin Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12193 |goto Dun Morogh 49.27,39.59
step
  talk Ipfelkofer Ironkeg##24710
  turnin Direbrew's Dire Brew##12491 |goto Dun Morogh 48.01,39.83
step
  talk Daran Thunderbrew##23628
  turnin Bark for the Thunderbrews!##11294 |goto Dun Morogh 49.45,38.66
step
  talk Coren Direbrew##23872
  turnin Insult Coren Direbrew##12062 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
]])
