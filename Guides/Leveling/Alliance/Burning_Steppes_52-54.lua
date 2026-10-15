-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Burning Steppes (52-54)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Western Plaguelands (53-58)",
	rev = "8e38ee6b",
}, [[
step
  ding 51
step
  talk Franclorn Forgewright##8888
  accept Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  note Speak with Franclorn Forgewright if you are interested in obtaining a key to the city major.
  talk Franclorn Forgewright##8888
  turnin Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  talk Maxwort Uberglint##9536
  accept Tablet of the Seven##4296 |goto Burning Steppes 65.15,23.91
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  note Bring the Tablet Transcript to Maxwort Uberglint in the Burning Steppes.
  collect Tablet Transcript##11470 |q 4296 |goto Burning Steppes 54.12,40.76 |tip {dropsfrom}Tablet of the Seven
step
  talk Maxwort Uberglint##9536
  turnin Tablet of the Seven##4296 |goto Burning Steppes 65.15,23.91
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  collect 8 Broodling Essence##12283 |q 4726 |goto Burning Steppes 63.78,57.27
step
  note {fp}Borgus Stoutarm
  goto Burning Steppes 84.33,68.33 |tip {vendor}
step
  talk Oralius##9177
  accept Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
step
  only level>=52
  talk Jalinda Sprig##9561
  accept Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  note Slay 15 Firegut Ogre-Mages, 7 Firegut Ogres, and 7 Firegut Ogre Brutes, and return to Oralius when you are finished.
  kill Firegut Ogre##7033 |q 3823/2 |goto Burning Steppes 77.38,47.17
  kill Firegut Ogre Mage##7034 |q 3823/1 |goto Burning Steppes 80.04,42.62
  kill Firegut Brute##7035 |q 3823 |goto Burning Steppes 80.56,42.82
step
  talk Oralius##9177
  turnin Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
step
  talk Oralius##9177
  accept Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.68
step
  only level>=54
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  note Find Gor'tesh, somewhere to the west of Dreadmaul Rock. Kill Gor'tesh and then take Gor'tesh's Lopped Off Head back to Oralius in Burning Steppes.
  collect Gor'tesh's Lopped Off Head##11080 |q 3824 |goto Burning Steppes 55.6,54 |tip {dropsfrom}Grubbub, Gor'tesh
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  only completed(3481) not completed(4023) not haveq(4023) level>=54
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  only completed(3481) not completed(4023) not haveq(4023) haveq(4022)
  note Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
  kill Frenzied Black Drake##9461 |q 4022 |goto Burning Steppes 94.4,31.8 |elite
  collect Black Dragonflight Molt##10575 |q 4022 |goto Burning Steppes 94.4,31.8
step
  only haveq(4182)
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182/1 |goto Burning Steppes 91.67,35.54
  kill Black Drake##7044 |q 4182/3 |goto Burning Steppes 89.94,43.86 |elite
  kill Black Dragonspawn##7040 |q 4182/2 |goto Burning Steppes 90.47,52.28 |elite
  kill Black Wyrmkin##7041 |q 4182 |goto Burning Steppes 91.38,55.93 |elite
step
  only completed(3481) not completed(4023) not haveq(4023) haveq(4022)
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  talk Oralius##9177
  turnin Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.68
step
  only haveq(4182)
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Oralius##9177
  accept Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.68
step
  only completed(4182)
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  note Take Gor'tesh's Lopped Off Head and place it at the top of Dreadmaul Rock. Look for a soft dirt mound to plant the pike.
  click Soft Dirt Mound##160840 |q 3825 |goto Burning Steppes 81,46.79
step
  talk Oralius##9177
  turnin Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.68
step
  talk Oralius##9177
  accept FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
  note Oralius wants 50 Blackrock Medallions. Chances are high that these medallions can be found on the orcs in the Burning Steppes.
  collect 50 Blackrock Medallion##11467 |q 4283 |goto Burning Steppes 45.02,56.8 |tip {dropsfrom}Blackrock Soldier, Blackrock Sorcerer, Blackrock Slayer
step
  talk Oralius##9177
  turnin FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
  only completed(4322)
  talk Marshal Maxwell##9560
  accept Stormwind Rendezvous##6402 |goto Burning Steppes 84.74,69.02
step
  only haveq(4262)
  note Slay Overmaster Pyron and return to Jalinda Sprig.
  kill Overmaster Pyron##9026 |q 4262 |goto Eastern Kingdoms - the continent map 46.82,67.7 |elite
step
  only haveq(4262)
  talk Jalinda Sprig##9561
  turnin Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  talk Royal Historian Archesonus##8879
  accept The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
  note Listen to Royal Historian Archesonus recant the history of Thaurissan.
  talk Royal Historian Archesonus##8879 |q 3702 |goto Ironforge 38.37,55.31
step
  talk Royal Historian Archesonus##8879
  turnin The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31 |tip {turninat}Ironforge
step
  talk Royal Historian Archesonus##8879
  accept The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
  note Venture to the Ruins of Thaurissan in the Burning Steppes and recover information from the Thaurissan Relics. Return to Royal Historian Archesonus when you have recovered the information.
  click Thaurissan Relic##153556 |q 3701 |goto Burning Steppes 62.71,39.6
step
  talk Royal Historian Archesonus##8879
  turnin The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31 |tip {turninat}Ironforge
step
  note {travel}Western Plaguelands
  goto Western Plaguelands 38.4,54.05
]])
