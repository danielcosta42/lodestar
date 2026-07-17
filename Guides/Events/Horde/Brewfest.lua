-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Brewfest", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Blood Elf Commoner##19169
  accept Brewfest!##11446 |goto Silvermoon City 78.03,57.73
step
  kill Coren Direbrew##23872 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Direbrew's Dire Brew##12492 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  click Dark Iron Sabotage Plans##186881
  accept Seek the Saboteurs##11454 |goto Dun Morogh 48.06,39.1
step
  note The "dwarf," Glodrak Huntsniper, has asked you to capture 5 Stunned Wolpertingers using the Wolpertinger Net. He mentioned that you must be intoxicated to see them.
  collect 5 Catch the Wild Wolpertinger!##32906 |q 11431
step
  note Bring the "Brew of the Month" club membership form to Ray'ma in the Darkbriar Lodge in Orgrimmar's Valley of Spirits.
  collect "Brew of the Month" Club Membership Form##37599 |q 12306
step
  note Visit the beer gardens outside of Silvermoon, Thunder Bluff, and the Undercity, zap three elekks at each location, and return to Glodrak Huntsniper. You must be drunk to see the pink elekks.
  kill Eversong Pink Elekk##23531 |q 11120 |goto Eversong Woods 56.62,52.76
step
  talk Driz Tumblequick##24510
  turnin Brewfest Riding Rams##11419 |goto Durotar 46.29,14.84
step
  talk Tapper Swindlekeg##24711
  turnin Brewfest!##11446 |goto Durotar 45.59,17.23
step
  talk Bizzle Quicklift##27216
  turnin This One Time, When I Was Drunk...##12192 |goto Durotar 45.25,17.33
step
  talk Ray'ma##27489
  turnin Brew of the Month Club##12306 |goto Orgrimmar 37.68,85.66
step
  talk Tapper Swindlekeg##24711
  turnin Direbrew's Dire Brew##12492 |goto Durotar 45.59,17.23
step
  talk Coren Direbrew##23872
  turnin Seek the Saboteurs##11454 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Ram Master Ray##24497
  accept Now This is Ram Racing... Almost.##11409 |goto Durotar 46.31,15.0
step
  talk Bizzle Quicklift##27216
  accept Chug and Chuck!##12191 |goto Durotar 45.25,17.33
step
  talk Darna Honeybock##27584
  accept Save Brewfest!##12318 |goto Dun Morogh 45.86,52.69
step
  talk Coren Direbrew##23872
  accept The Best of Brews##11487 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note You have 4 minutes to ride the ram and maintain 3 different levels of speed for 8 seconds.
  get Now This is Ram Racing... Almost. |q 11409 |goto Durotar 46.31,15.0
step
  note Use the Complimentary Brewfest Sampler to hit S.T.O.U.T. 5 times, then talk to Bizzle Quicklift.
  kill Self-Turning and Oscillating Utility Target##24108 |q 12191 |goto Dun Morogh 47.64,39.3
step
  talk Ram Master Ray##24497
  turnin Now This is Ram Racing... Almost.##11409 |goto Durotar 46.31,15.0
step
  talk Bizzle Quicklift##27216
  turnin Chug and Chuck!##12191 |goto Durotar 45.25,17.33
step
  talk Brewfest Spy##26719
  turnin Save Brewfest!##12318 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Tapper Swindlekeg##24711
  turnin The Best of Brews##11487 |goto Durotar 45.59,17.23
step
  talk Ja'ron##24499
  accept Bark for T'chali's Voodoo Brewery!##11408 |goto Durotar 43.59,17.57
step
  talk Ram Master Ray##24497
  accept There and Back Again##11412 |goto Durotar 46.31,15.0
step
  talk Driz Tumblequick##24510
  accept Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12194 |goto Durotar 46.29,14.84
step
  talk Cort Gorestein##24498
  accept Bark for Drohn's Distillery!##11407 |goto Durotar 44.38,17.91
step
  talk Brewfest Spy##26719
  accept Insult Coren Direbrew##12062 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Spread the word about Brewfest at the flags outside the auction house in the Valley of Strength, in the Valley of Honor, in the Valley of Wisdom and in the Valley of Spirits.
  get Bark for T'chali's Voodoo Brewery! |q 11408 |goto Durotar 43.59,17.57
step
  note Get a keg from the Goblin stranded on the road to Razor Hill and return it to Ram Master Ray's assistant. Do this 3 times before your ram goes away.
  get There and Back Again |q 11412 |goto Durotar 46.31,15.0
step
  note Spread the word about Brewfest at the flags outside the auction house in the Valley of Strength, in the Valley of Honor, in the Valley of Wisdom and in the Valley of Spirits.
  get Bark for Drohn's Distillery! |q 11407 |goto Durotar 44.38,17.91
step
  talk Ja'ron##24499
  turnin Bark for T'chali's Voodoo Brewery!##11408 |goto Durotar 43.59,17.57
step
  talk Ram Master Ray##24497
  turnin There and Back Again##11412 |goto Durotar 46.31,15.0
step
  talk Blix Fixwidget##24495
  turnin Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12194 |goto Durotar 44.07,17.98
step
  talk Cort Gorestein##24498
  turnin Bark for Drohn's Distillery!##11407 |goto Durotar 44.38,17.91
step
  talk Coren Direbrew##23872
  turnin Insult Coren Direbrew##12062 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
]])
