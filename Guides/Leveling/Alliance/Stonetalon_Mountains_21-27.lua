-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Stonetalon Mountains (21-27)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Ashenvale (21-30)",
}, [[
step
  only completed(1073)
  talk Lomac Gearstrip##4081
  accept Ineptitude + Chemicals = Fun##1074 |goto Ironforge 72.08,51.88
step
  only completed(1076)
  talk Collin Mauren##4078
  accept Special Delivery for Gaxim##1077 |goto Stormwind City 53.02,86.64
step
  only completed(1073)
  talk Gaxim Rustfizzle##4077
  turnin Ineptitude + Chemicals = Fun##1074 |goto Stonetalon Mountains 59.52,67.15
step
  only completed(1076)
  talk Gaxim Rustfizzle##4077
  turnin Special Delivery for Gaxim##1077 |goto Stonetalon Mountains 59.52,67.15
step
  talk Kaela Shadowspear##4080
  accept On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.9,66.85
step
  talk Ziz Fizziks##4201
  accept Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  only completed(1073) completed(1076)
  talk Gaxim Rustfizzle##4077
  accept Covert Ops - Alpha##1079 |goto Stonetalon Mountains 59.52,67.15
step
  only completed(1073) completed(1076)
  talk Gaxim Rustfizzle##4077
  accept Covert Ops - Beta##1080 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  turnin On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
step
  talk Piznik##4276
  accept Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  note Kill 10 Venture Co. Loggers, and 10 Venture Co. Deforesters and return to Gaxim Rustfizzle in Stonetalon.
  kill Venture Co. Logger##3989 |q 1071 |goto Stonetalon Mountains 66.4,52.49
step
  only completed(1073) completed(1076)
  note Retrieve the Venture Co.'s Engineering Plans from the lumber mill in Windshear Crag.
  collect Venture Co. Engineering Plans##5718 |q 1079 |goto Stonetalon Mountains 66.09,51.33
step
  only completed(1073) completed(1076)
  note Retrieve the Venture Co. Letters from Windshear Mine at the east end of Windshear Crag.
  collect Venture Co. Letters##5717 |q 1080 |goto Stonetalon Mountains 74.46,59.3 |tip {dropsfrom}Venture Co. Documents
step
  note Get the mysterious ore from Piznik after he finishes mining it.
  talk Piznik##4276 |q 1090 |goto Stonetalon Mountains 71.87,60
step
  note Get the Super Reaper 6000 Blueprints for Ziz Fizziks in the Stonetalon Mountains.
  collect Super Reaper 6000 Blueprints##5734 |q 1093 |goto Stonetalon Mountains 71.8,50.03 |tip {dropsfrom}Venture Co. Operator
step
  talk Piznik##4276
  turnin Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  talk Piznik##4276
  accept Gerenzo's Orders##1092 |goto Stonetalon Mountains 71.87,60
step
  talk Gaxim Rustfizzle##4077
  turnin A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
step
  only completed(1073) completed(1076)
  talk Gaxim Rustfizzle##4077
  turnin Covert Ops - Alpha##1079 |goto Stonetalon Mountains 59.52,67.15
step
  only completed(1073) completed(1076)
  talk Gaxim Rustfizzle##4077
  turnin Covert Ops - Beta##1080 |goto Stonetalon Mountains 59.52,67.15
step
  talk Ziz Fizziks##4201
  turnin Gerenzo's Orders##1092 |goto Stonetalon Mountains 58.99,62.6
step
  talk Ziz Fizziks##4201
  turnin Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  talk Gaxim Rustfizzle##4077
  accept An Old Colleague##1072 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept A Scroll from Mauren##1075 |goto Stonetalon Mountains 59.52,67.15
step
  talk Ziz Fizziks##4201
  accept Further Instructions##1094 |goto Stonetalon Mountains 58.99,62.6
step
  only completed(1073) completed(1076)
  talk Gaxim Rustfizzle##4077
  accept Kaela's Update##1091 |goto Stonetalon Mountains 59.52,67.15
step
  click Pocket Litter##424005
  accept Scramble##79980 |goto Stonetalon Mountains 40.79,52.61
step
  only completed(1073) completed(1076)
  talk Kaela Shadowspear##4080
  turnin Kaela's Update##1091 |goto Stonetalon Mountains 59.9,66.85
step
  turnin Scramble##79980 |goto Stonetalon Mountains 39.6,49.91
step
  only completed(1073) completed(1076)
  talk Kaela Shadowspear##4080
  accept Enraged Spirits##1083 |goto Stonetalon Mountains 59.9,66.85
step
  only completed(1073) completed(1076)
  note Bring 8 Smoldering Embers from any of the fire elementals in the Charred Vale to Kaela Shadowspear in Stonetalon.
  collect 8 Smoldering Embers##5659 |q 1083 |goto Stonetalon Mountains 36.55,51.37 |tip {dropsfrom}Rogue Flame Spirit, Burning Ravager, Burning Destroyer
step
  only completed(1073) completed(1076)
  talk Kaela Shadowspear##4080
  turnin Enraged Spirits##1083 |goto Stonetalon Mountains 59.9,66.85
step
  talk Collin Mauren##4078
  accept Retrieval for Mauren##1078 |goto Stormwind City 53.02,86.64
step
  note {fp}Teloren
  goto Stonetalon Mountains 36.44,7.18 |tip {vendor}
step
  talk Keeper Albagorm##3994
  accept Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  talk Gaxim Rustfizzle##4077
  accept Castpipe's Task##2931 |goto Stonetalon Mountains 59.52,67.15
step
  note Bring 8 Crystalized Scales to Collin Mauren in Stormwind.
  collect 8 Crystalized Scales##5675 |q 1078 |goto Stonetalon Mountains 33.27,72.71 |tip {dropsfrom}Scorched Basilisk, Singed Basilisk, Blackened Basilisk
step
  note Keeper Albagorm on Stonetalon Peak wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
  kill Bloodfury Harpy##4022 |q 1057 |goto Stonetalon Mountains 32.57,60.66
step
  talk Collin Mauren##4078
  turnin Retrieval for Mauren##1078 |goto Stormwind City 53.02,86.64 |tip {turninat}Stormwind City
step
  talk Keeper Albagorm##3994
  turnin Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  talk Master Mechanic Castpipe##7950
  turnin Castpipe's Task##2931 |goto Ironforge 69.83,48.1 |tip {turninat}Ironforge
step
  talk Sputtervalve##3442
  turnin Further Instructions##1094 |goto The Barrens 62.98,37.22 |tip {turninat}The Barrens
step
  talk Keeper Albagorm##3994
  accept Reclaiming the Charred Vale##1059 |goto Stonetalon Mountains 37.1,8.1
step
  talk Falfindel Waywarder##4048
  turnin Reclaiming the Charred Vale##1059 |goto Feralas 89.64,46.57 |tip {turninat}Feralas
step
  talk Lomac Gearstrip##4081
  turnin An Old Colleague##1072 |goto Ironforge 72.08,51.88 |tip {turninat}Ironforge
step
  talk Collin Mauren##4078
  turnin A Scroll from Mauren##1075 |goto Stormwind City 53.02,86.64 |tip {turninat}Stormwind City
step
  talk Sputtervalve##3442
  accept Further Instructions##1095 |goto The Barrens 62.98,37.22
step
  talk Ziz Fizziks##4201
  turnin Further Instructions##1095 |goto Stonetalon Mountains 58.99,62.6
step
  talk Ziz Fizziks##4201
  accept Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  only completed(1073) completed(1076)
  talk Kaela Shadowspear##4080
  accept Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  note Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
  collect Gerenzo's Mechanical Arm##5736 |q 1096 |goto Stonetalon Mountains 64.49,40.25 |tip {dropsfrom}Gerenzo Wrenchwhistle
step
  only completed(1073) completed(1076)
  note Bring a piece of Corroded Shrapnel to Kaela Shadowspear in Stonetalon.
  collect Corroded Shrapnel##5664 |q 1084 |goto Stonetalon Mountains 34.15,67.58 |tip {dropsfrom}Charred Ancient, Blackened Ancient, Vengeful Ancient
step
  talk Ziz Fizziks##4201
  turnin Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  only completed(1073) completed(1076)
  talk Kaela Shadowspear##4080
  turnin Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  only completed(1073) completed(1076)
  talk Kaela Shadowspear##4080
  accept Update for Sentinel Thenysil##1082 |goto Stonetalon Mountains 59.9,66.85
step
  only completed(1073) completed(1076)
  talk Sentinel Thenysil##4079
  turnin Update for Sentinel Thenysil##1082 |goto Ashenvale 34.89,49.79 |tip {turninat}Ashenvale
step
  note {travel}Ashenvale
  goto Ashenvale 34.67,48.84
]])
