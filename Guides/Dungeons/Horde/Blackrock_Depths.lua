-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackrock Depths", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Blood Elf Commoner##19169
  accept Brewfest!##11446 |goto Silvermoon City 78.03,57.73
step
  talk Private Rocknot##9503
  accept Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Thunderheart##9084
  accept Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  talk Mistress Nagmara##9500
  accept The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lexlort##9080
  accept Grark Lorkrub##4122 |goto Badlands 5.88,47.63
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
  get Rocknot's Ale |q 4295 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment.
  kill Overmaster Pyron##9026 |q 3906
step
  note Venture to Blackrock Depths and destroy the vile aggressors!
  kill Anvilrage Guardsman##8891 |q 4081 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  get The Love Potion |q 4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  get Favor Amongst the Brotherhood, Dark Iron Ore |q 6642 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  get Favor Amongst the Brotherhood, Fiery Core |q 6643 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  get Favor Amongst the Brotherhood, Lava Core |q 6644 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  get Favor Amongst the Brotherhood, Core Leather |q 6645 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  get Favor Amongst the Brotherhood, Blood of the Mountain |q 6646 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  get A Binding Contract |q 7604
step
  talk Tapper Swindlekeg##24711
  turnin Brewfest!##11446 |goto Durotar 45.59,17.23
step
  talk Private Rocknot##9503
  turnin Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Thunderheart##9084
  turnin Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  talk Warlord Goretooth##9077
  turnin KILL ON SIGHT: Dark Iron Dwarves##4081 |goto Badlands 5.81,47.52
step
  talk Coren Direbrew##23872
  turnin Seek the Saboteurs##11454 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Mistress Nagmara##9500
  turnin The Love Potion##4201 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Grark Lorkrub##9520
  turnin Grark Lorkrub##4122 |goto Burning Steppes 40.2,34.24
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
  talk Galamav the Marksman##9081
  accept Commander Gor'shak##3981 |goto Badlands 5.96,47.73
step
  talk Thunderheart##9084
  accept Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Grark Lorkrub##9520
  accept Precarious Predicament##4121 |goto Burning Steppes 40.2,34.24
step
  talk Coren Direbrew##23872
  accept The Best of Brews##11487 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Venture to Blackrock Depths and destroy the vile aggressors!
  kill Anvilrage Medic##8894 |q 4082 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart.
  kill Lord Incendius##9017 |q 3907 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Escort your prisoner, Grark Lorkrub, through Burning Steppes and through Blackrock Mountain to the Searing Gorge.
  get Precarious Predicament |q 4121 |goto Burning Steppes 40.2,34.24
step
  talk Brewfest Spy##26719
  turnin Save Brewfest!##12318 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Commander Gor'shak##9020
  turnin Commander Gor'shak##3981 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Warlord Goretooth##9077
  turnin KILL ON SIGHT: High Ranking Dark Iron Officials##4082 |goto Badlands 5.81,47.52
step
  talk Thunderheart##9084
  turnin Disharmony of Fire##3907 |goto Badlands 3.33,48.26
step
  talk Lexlort##9080
  turnin Precarious Predicament##4121 |goto Badlands 5.88,47.63
step
  talk Tapper Swindlekeg##24711
  turnin The Best of Brews##11487 |goto Durotar 45.59,17.23
step
  talk Commander Gor'shak##9020
  accept What Is Going On?##3982 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Warlord Goretooth##9077
  accept Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Brewfest Spy##26719
  accept Insult Coren Direbrew##12062 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  note Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete.
  kill General Angerforge##9033 |q 4132 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Commander Gor'shak##9020
  turnin What Is Going On?##3982 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Warlord Goretooth##9077
  turnin Operation: Death to Angerforge##4132 |goto Badlands 5.81,47.52
step
  talk Coren Direbrew##23872
  turnin Insult Coren Direbrew##12062 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Commander Gor'shak##9020
  accept What Is Going On?##4001 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Thrall##4949
  turnin What Is Going On?##4001 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  accept The Eastern Kingdoms##4002 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  turnin The Eastern Kingdoms##4002 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  accept The Royal Rescue##4003 |goto Orgrimmar 31.73,37.82
step
  note Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell.
  kill Emperor Dagran Thaurissan##9019 |q 4003 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Princess Moira Bronzebeard##8929
  turnin The Royal Rescue##4003 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess Saved?##4004 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Thrall##4949
  turnin The Princess Saved?##4004 |goto Orgrimmar 31.73,37.82
]])
