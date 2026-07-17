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
  collect Venture Co. Engineering Plans##5718 |q 1079 |goto Stonetalon Mountains 66.09,51.33
step
  talk Gaxim Rustfizzle##4077
  accept Covert Ops - Beta##1080 |goto Stonetalon Mountains 59.52,67.15
step
  note Retrieve the Venture Co. Letters from Windshear Mine at the east end of Windshear Crag.
  collect Venture Co. Letters##5717 |q 1080 |goto Stonetalon Mountains 74.46,59.3 |tip {dropsfrom}Venture Co. Documents
step
  talk Kaela Shadowspear##4080
  accept On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.9,66.85
step
  talk Gaxim Rustfizzle##4077
  accept Castpipe's Task##2931 |goto Stonetalon Mountains 59.52,67.15
step
  talk Argos Nightwhisper##4984
  accept The Corruption Abroad##3765 |goto Stormwind City 21.4,55.8
step
  talk Brother Kristoff##1444
  accept Speaking of Fortitude##343 |goto Stormwind City 45.7,38.42
step
  talk Baros Alexston##1646
  accept Bazil Thredd##389 |goto Stormwind City 49.19,30.28
step
  talk Gerrig Bonegrip##2786
  accept Knowledge in the Deeps##971 |goto Ironforge 50.83,5.62
step
  note Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge.
  collect Knowledge in the Deeps##5359 |q 971 |goto Ironforge 50.83,5.62
step
  talk Keeper Albagorm##3994
  accept Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.1,8.1
step
  talk Dawnwatcher Shaedlass##4786
  accept In Search of Thaelrid##1198 |goto Darnassus 55.36,25.03
step
  talk Warden Thelwater##1719
  turnin Bazil Thredd##389 |goto Stormwind City 41.11,58.09 |tip {turninat}Stormwind City
step
  talk Master Mechanic Castpipe##7950
  turnin Castpipe's Task##2931 |goto Ironforge 69.83,48.1 |tip {turninat}Ironforge
step
  talk Gershala Nightwhisper##8997
  turnin The Corruption Abroad##3765 |goto Darkshore 38.33,43.04 |tip {turninat}Darkshore
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
  talk Gerrig Bonegrip##2786
  turnin Knowledge in the Deeps##971 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  talk Argent Guard Thaelrid##4787
  turnin In Search of Thaelrid##1198 |goto Blackfathom Deeps - Dungeon -1,-1 |tip {turninat}Blackfathom Deeps - Dungeon
step
  talk Milton Sheaf##1440
  turnin Speaking of Fortitude##343 |goto Stormwind City 74.18,7.46 |tip {turninat}Stormwind City
step
  talk Milton Sheaf##1440
  accept Brother Paxton##344 |goto Stormwind City 74.18,7.46
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
  talk Brother Paxton##951
  turnin Brother Paxton##344 |goto Elwynn Forest 49.61,40.41 |tip {turninat}Elwynn Forest
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
  collect 8 Smoldering Embers##5659 |q 1083 |goto Stonetalon Mountains 37.14,53.06 |tip {dropsfrom}Rogue Flame Spirit, Burning Ravager, Burning Destroyer
step
  talk Kaela Shadowspear##4080
  accept Wounded Ancients##1084 |goto Stonetalon Mountains 59.9,66.85
step
  note Bring a piece of Corroded Shrapnel to Kaela Shadowspear in Stonetalon.
  collect Corroded Shrapnel##5664 |q 1084 |goto Stonetalon Mountains 32.8,67.58 |tip {dropsfrom}Charred Ancient, Blackened Ancient, Vengeful Ancient
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
