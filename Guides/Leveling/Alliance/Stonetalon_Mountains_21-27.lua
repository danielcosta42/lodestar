-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Stonetalon Mountains (21-27)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Ashenvale (21-30)",
}, [[
step
  talk Kaela Shadowspear##4080
  accept Enraged Spirits##1083 |goto Stonetalon Mountains 59.9,66.85
step
  note Bring 8 Smoldering Embers from any of the fire elementals in the Charred Vale to Kaela Shadowspear in Stonetalon.
  collect 8 Smoldering Embers##5659 |q 1083 |goto Stonetalon Mountains 37.14,53.06 |tip {dropsfrom}Rogue Flame Spirit, Burning Ravager, Burning Destroyer
step
  talk Kaela Shadowspear##4080
  accept Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  note Bring a piece of Corroded Shrapnel to Kaela Shadowspear in Stonetalon.
  collect Corroded Shrapnel##5664 |q 1084 |goto Stonetalon Mountains 32.8,67.58 |tip {dropsfrom}Charred Ancient, Blackened Ancient, Vengeful Ancient
step
  talk Kaela Shadowspear##4080
  accept On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.9,66.85
step
  talk Ziz Fizziks##4201
  accept Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  note Get the Super Reaper 6000 Blueprints for Ziz Fizziks in the Stonetalon Mountains.
  collect Super Reaper 6000 Blueprints##5734 |q 1093 |goto Stonetalon Mountains 69.99,52.05 |tip {dropsfrom}Venture Co. Operator
step
  talk Ziz Fizziks##4201
  accept Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  note Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
  collect Gerenzo's Mechanical Arm##5736 |q 1096 |goto Stonetalon Mountains 64.49,40.25 |tip {dropsfrom}Gerenzo Wrenchwhistle
step
  only Paladin
  talk Duthorian Rall##6171
  accept The Tome of Valor##1650 |goto Stormwind City 50.48,47.49
step
  talk Gaxim Rustfizzle##4077
  accept Castpipe's Task##2931 |goto Stonetalon Mountains 59.52,67.15
step
  click Mound of Dirt##424012
  accept Wet Job##79974 |goto Stonetalon Mountains 39.64,49.91
step
  click Pocket Litter##424005
  accept Scramble##79980 |goto Stonetalon Mountains 40.79,52.61
step
  talk Orphan Matron Nightingale##14450
  accept Remember That I Love You##95161 |goto Stormwind City 56.31,53.99
step
  talk Master Mechanic Castpipe##7950
  turnin Castpipe's Task##2931 |goto Ironforge 69.83,48.1 |tip {turninat}Ironforge
step
  talk Avette Fellwood##228
  turnin Remember That I Love You##95161 |goto Duskwood 73.03,44.42 |tip {turninat}Duskwood
step
  talk Baros Alexston##1646
  accept Bazil Thredd##389 |goto Stormwind City 57.74,47.86
step
  talk Piznik##4276
  accept Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  note Get the mysterious ore from Piznik after he finishes mining it.
  kill Piznik##4276 |q 1090 |goto Stonetalon Mountains 71.87,60
step
  turnin Wet Job##79974 |goto Loch Modan 49.42,12.78 |tip {turninat}Loch Modan
step
  talk Gerrig Bonegrip##2786
  accept Knowledge in the Deeps##971 |goto Ironforge 50.83,5.62
step
  note Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge.
  collect Lorgalis Manuscript##5359 |q 971 |goto Blackfathom Deeps - Dungeon -1,-1 |tip {dropsfrom}Pitted Iron Chest
step
  talk Keeper Albagorm##3994
  accept Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  talk Ziz Fizziks##4201
  turnin Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  talk Warden Thelwater##1719
  turnin Bazil Thredd##389 |goto Stormwind City 51.49,69.38 |tip {turninat}Stormwind City
step
  talk Ziz Fizziks##4201
  turnin Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  turnin Scramble##79980 |goto Stonetalon Mountains 39.64,49.91
step
  only Paladin
  talk Daphne Stilwell##6182
  turnin The Tome of Valor##1650 |goto Westfall 41.69,89.24 |tip {turninat}Westfall
step
  talk Kaela Shadowspear##4080
  turnin Enraged Spirits##1083 |goto Stonetalon Mountains 59.9,66.85
step
  talk Kaela Shadowspear##4080
  turnin Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  talk Gaxim Rustfizzle##4077
  turnin On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
step
  talk Kaela Shadowspear##4080
  accept Update for Sentinel Thenysil##1082 |goto Stonetalon Mountains 59.9,66.85
step
  talk Ziz Fizziks##4201
  accept Further Instructions##1094 |goto Stonetalon Mountains 58.99,62.6
step
  note Keeper Albagorm on Stonetalon Peak wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
  kill Bloodfury Harpy##4022 |q 1057 |goto Stonetalon Mountains 32.75,60.8
step
  talk Piznik##4276
  turnin Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  talk Sputtervalve##3442
  turnin Further Instructions##1094 |goto The Barrens 62.98,37.22 |tip {turninat}The Barrens
step
  talk Piznik##4276
  accept Gerenzo's Orders##1092 |goto Stonetalon Mountains 71.87,60
step
  note Kill 10 Venture Co. Loggers, and 10 Venture Co. Deforesters and return to Gaxim Rustfizzle in Stonetalon.
  kill Venture Co. Logger##3989 |q 1071 |goto Stonetalon Mountains 66.4,52.26
step
  talk Keeper Albagorm##3994
  turnin Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  talk Gerrig Bonegrip##2786
  turnin Knowledge in the Deeps##971 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  talk Keeper Albagorm##3994
  accept Reclaiming the Charred Vale##1059 |goto Stonetalon Mountains 37.1,8.1
step
  talk Ziz Fizziks##4201
  turnin Gerenzo's Orders##1092 |goto Stonetalon Mountains 58.99,62.6
step
  talk Gaxim Rustfizzle##4077
  turnin A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
step
  talk Sentinel Thenysil##4079
  turnin Update for Sentinel Thenysil##1082 |goto Ashenvale 34.89,49.79 |tip {turninat}Ashenvale
step
  talk Gaxim Rustfizzle##4077
  accept An Old Colleague##1072 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept A Scroll from Mauren##1075 |goto Stonetalon Mountains 59.52,67.15
step
  talk Lomac Gearstrip##4081
  turnin An Old Colleague##1072 |goto Ironforge 72.08,51.88 |tip {turninat}Ironforge
step
  talk Falfindel Waywarder##4048
  turnin Reclaiming the Charred Vale##1059 |goto Feralas 89.64,46.57 |tip {turninat}Feralas
step
  talk Collin Mauren##4078
  turnin A Scroll from Mauren##1075 |goto Stormwind City 53.02,86.64 |tip {turninat}Stormwind City
step
  note {travel}Ashenvale
  goto Ashenvale 35.77,49.1
]])
