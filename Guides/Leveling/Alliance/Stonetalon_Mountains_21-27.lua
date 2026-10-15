-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Stonetalon Mountains (21-27)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Ashenvale (20-28)",
	rev = "17017eaa",
}, [[
step
  ding 20
step
  talk Kaela Shadowspear##4080
  accept On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.9,66.85
step
  talk Ziz Fizziks##4201
  accept Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.6
step
  note Speak to Gaxim.
  talk Gaxim Rustfizzle##4077
  turnin On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
step
  talk Piznik##4276
  accept Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  note Get the mysterious ore from Piznik after he finishes mining it.
  talk Piznik##4276 |q 1090 |goto Stonetalon Mountains 71.87,60
step
  talk Piznik##4276
  turnin Gerenzo's Orders##1090 |goto Stonetalon Mountains 71.87,60
step
  talk Piznik##4276
  accept Gerenzo's Orders##1092 |goto Stonetalon Mountains 71.87,60
step
  note Kill 10 Venture Co. Loggers, and 10 Venture Co. Deforesters and return to Gaxim Rustfizzle in Stonetalon.
  kill Venture Co. Logger##3989 |q 1071/1 |goto Stonetalon Mountains 66.4,52.49
  kill Venture Co. Deforester##3991 |q 1071 |goto Stonetalon Mountains 65.24,53.45
step
  note Get the Super Reaper 6000 Blueprints for Ziz Fizziks in the Stonetalon Mountains.
  collect Super Reaper 6000 Blueprints##5734 |q 1093 |goto Stonetalon Mountains 71.8,50.03 |tip {dropsfrom}Venture Co. Operator
step
  talk Gaxim Rustfizzle##4077
  turnin A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
step
  note Deliver the Unidentified Ore to Ziz Fizziks in the Stonetalon Mountains.
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
  click Pocket Litter##424005
  accept Scramble##79980 |goto Stonetalon Mountains 40.76,52.57
step
  note Find what awaits you.
  turnin Scramble##79980 |goto Stonetalon Mountains 39.62,49.86
step
  only level>=20
  talk Night Elf Courier##268925
  accept Stonetalon Supply Run##86574 |goto Stonetalon Mountains 48.73,39.85
step
  only haveq(86574)
  note Collect 6 Stonetalon Supplies from Pridewing Wyverns and deliver them to Innkeeper Faralia.
  collect 6 Stonetalon Supply Bundle##277917 |q 86574 |goto Stonetalon Mountains 63.51,59.21 |tip {dropsfrom}Young Pridewing, Pridewing Wyvern, Pridewing Skyhunter
step
  note {fp}Teloren
  goto Stonetalon Mountains 36.44,7.18 |tip {vendor}
step
  only haveq(86574)
  talk Innkeeper Faralia##16458
  turnin Stonetalon Supply Run##86574 |goto Stonetalon Mountains 35.79,5.74
step
  only completed(1091)
  talk Kaela Shadowspear##4080
  accept Enraged Spirits##1083 |goto Stonetalon Mountains 59.9,66.85
step
  only completed(1091)
  note Bring 8 Smoldering Embers from any of the fire elementals in the Charred Vale to Kaela Shadowspear in Stonetalon.
  collect 8 Smoldering Embers##5659 |q 1083 |goto Stonetalon Mountains 36.55,51.37 |tip {dropsfrom}Rogue Flame Spirit, Burning Ravager, Burning Destroyer
step
  only completed(1091)
  talk Kaela Shadowspear##4080
  turnin Enraged Spirits##1083 |goto Stonetalon Mountains 59.9,66.85
step
  talk Keeper Albagorm##3994
  accept Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  note Keeper Albagorm on Stonetalon Peak wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
  kill Bloodfury Harpy##4022 |q 1057/1 |goto Stonetalon Mountains 32.57,60.66
  kill Bloodfury Ambusher##4025 |q 1057/2 |goto Stonetalon Mountains 30.8,61.32
  kill Bloodfury Slayer##4024 |q 1057/3 |goto Stonetalon Mountains 30.24,69.58
  kill Bloodfury Roguefeather##4023 |q 1057 |goto Stonetalon Mountains 34.86,69.12
step
  talk Keeper Albagorm##3994
  turnin Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  only completed(1091) level>=22
  talk Kaela Shadowspear##4080
  accept Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  only completed(1091) haveq(1084)
  note Bring a piece of Corroded Shrapnel to Kaela Shadowspear in Stonetalon.
  collect Corroded Shrapnel##5664 |q 1084 |goto Stonetalon Mountains 34.15,67.58 |tip {dropsfrom}Charred Ancient, Blackened Ancient, Vengeful Ancient
step
  only completed(1091) haveq(1084)
  talk Kaela Shadowspear##4080
  turnin Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  only completed(1091) completed(1084)
  talk Kaela Shadowspear##4080
  accept Update for Sentinel Thenysil##1082 |goto Stonetalon Mountains 59.9,66.85
step
  only level>=25
  talk Gaxim Rustfizzle##4077
  accept Castpipe's Task##2931 |goto Stonetalon Mountains 59.52,67.15
step
  note Deliver the Sealed Envelope to Sputtervalve in the Barrens.
  talk Sputtervalve##3442
  turnin Further Instructions##1094 |goto The Barrens 62.98,37.22 |tip {turninat}The Barrens
step
  talk Sputtervalve##3442
  accept Further Instructions##1095 |goto The Barrens 62.98,37.22
step
  note Bring the new orders to Ziz Fizziks in the Stonetalon Mountains.
  talk Ziz Fizziks##4201
  turnin Further Instructions##1095 |goto Stonetalon Mountains 58.99,62.6
step
  talk Ziz Fizziks##4201
  accept Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  note Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
  collect Gerenzo's Mechanical Arm##5736 |q 1096 |goto Stonetalon Mountains 64.49,40.25 |tip {dropsfrom}Gerenzo Wrenchwhistle
step
  talk Ziz Fizziks##4201
  turnin Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  only completed(1091) haveq(1082)
  note Return to Sentinel Thenysil in Ashenvale.
  talk Sentinel Thenysil##4079
  turnin Update for Sentinel Thenysil##1082 |goto Ashenvale 34.89,49.79 |tip {turninat}Ashenvale
step
  note {travel}Ashenvale
  goto Ashenvale 34.67,48.84
]])
