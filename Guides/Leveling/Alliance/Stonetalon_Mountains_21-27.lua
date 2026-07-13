-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Stonetalon Mountains (21-27)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Wetlands (22-31)",
}, [[
step
  note {fp}Teloren
  goto Stonetalon Mountains 36.44,7.18 |tip {vendor}
step
  talk Gaxim Rustfizzle##4077
  accept Covert Ops - Alpha##1079 |goto Stonetalon Mountains 59.52,67.15
step
  note Retrieve the Venture Co.'s Engineering Plans from the lumber mill in Windshear Crag.
  get Covert Ops - Alpha |q 1079 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept Covert Ops - Beta##1080 |goto Stonetalon Mountains 59.52,67.15
step
  note Retrieve the Venture Co. Letters from Windshear Mine at the east end of Windshear Crag.
  get Covert Ops - Beta |q 1080 |goto Stonetalon Mountains 59.52,67.15
step
  talk Kaela Shadowspear##4080
  accept On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.9,66.85
step
  talk Gaxim Rustfizzle##4077
  accept Castpipe's Task##2931 |goto Stonetalon Mountains 59.52,67.15
step
  talk Keeper Albagorm##3994
  accept Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  talk Master Mechanic Castpipe##7950
  turnin Castpipe's Task##2931 |goto Ironforge 69.83,48.1 |tip {turninat}Ironforge
step
  talk Gaxim Rustfizzle##4077
  turnin Covert Ops - Alpha##1079 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  turnin Covert Ops - Beta##1080 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  turnin On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept Kaela's Update##1091 |goto Stonetalon Mountains 59.52,67.15
step
  note Keeper Albagorm on Stonetalon Peak wants you to slay 7 Bloodfury Harpies, 7 Bloodfury Ambushers, 7 Bloodfury Slayers and 7 Bloodfury Roguefeathers.
  kill Bloodfury Harpy##4022 |q 1057 |goto Stonetalon Mountains 32.75,60.8
step
  note Kill 10 Venture Co. Loggers, and 10 Venture Co. Deforesters and return to Gaxim Rustfizzle in Stonetalon.
  kill Venture Co. Logger##3989 |q 1071 |goto Stonetalon Mountains 66.4,52.26
step
  talk Keeper Albagorm##3994
  turnin Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  talk Keeper Albagorm##3994
  accept Reclaiming the Charred Vale##1059 |goto Stonetalon Mountains 37.1,8.1
step
  talk Kaela Shadowspear##4080
  turnin Kaela's Update##1091 |goto Stonetalon Mountains 59.9,66.85
step
  talk Falfindel Waywarder##4048
  turnin Reclaiming the Charred Vale##1059 |goto Feralas 89.64,46.57 |tip {turninat}Feralas
step
  talk Gaxim Rustfizzle##4077
  turnin A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept An Old Colleague##1072 |goto Stonetalon Mountains 59.52,67.15
step
  talk Gaxim Rustfizzle##4077
  accept A Scroll from Mauren##1075 |goto Stonetalon Mountains 59.52,67.15
step
  talk Kaela Shadowspear##4080
  accept Enraged Spirits##1083 |goto Stonetalon Mountains 59.9,66.85
step
  note Bring 8 Smoldering Embers from any of the fire elementals in the Charred Vale to Kaela Shadowspear in Stonetalon.
  get Enraged Spirits |q 1083 |goto Stonetalon Mountains 59.9,66.85
step
  talk Kaela Shadowspear##4080
  accept Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  note Bring a piece of Corroded Shrapnel to Kaela Shadowspear in Stonetalon.
  get Wounded Ancients |q 1084 |goto Stonetalon Mountains 59.9,66.85
step
  talk Lomac Gearstrip##4081
  turnin An Old Colleague##1072 |goto Ironforge 72.08,51.88 |tip {turninat}Ironforge
step
  talk Collin Mauren##4078
  turnin A Scroll from Mauren##1075 |goto Stormwind City 43.09,80.39 |tip {turninat}Stormwind City
step
  talk Kaela Shadowspear##4080
  turnin Enraged Spirits##1083 |goto Stonetalon Mountains 59.9,66.85
step
  talk Kaela Shadowspear##4080
  turnin Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  talk Kaela Shadowspear##4080
  accept Update for Sentinel Thenysil##1082 |goto Stonetalon Mountains 59.9,66.85
step
  talk Sentinel Thenysil##4079
  turnin Update for Sentinel Thenysil##1082 |goto Ashenvale 34.89,49.79 |tip {turninat}Ashenvale
step
  note {travel}Wetlands
  goto Wetlands 9.22,58.37
]])
