-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Hillsbrad Foothills (32-40)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Alterac Mountains (34-40)",
	rev = "24651b4e",
}, [[
step
  ding 31
step
  note {fp}Zarise
  goto Hillsbrad Foothills 60.14,18.62 |tip {vendor}
step
  only completed(539)
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##541 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Deathguard Humbert##2419
  accept Humbert's Sword##547 |goto Hillsbrad Foothills 62.76,20.21
step
  talk Keeper Bel'varil##2437
  accept Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Tallow##2770
  accept The Hammer May Fall##676 |goto Hillsbrad Foothills 61.87,19.57
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
  talk Magus Wordeen Voidglare##2410
  accept Key to the City##93680 |goto Hillsbrad Foothills 61.6,20.85
step
  note Acquire the Dalaran Sewer Key for Magus Wordeen Voidglare in Tarren Mill.
  collect Grimy Key##279469 |q 93680 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  accept Shrewd Negotiations##97287 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  turnin Key to the City##93680 |goto Hillsbrad Foothills 61.6,20.85
step
  only completed(498)
  talk Krusk##2229
  accept Infiltration##533 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Magus Wordeen Voidglare##2410
  accept Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  accept Blood in the Streets##92434 |goto Hillsbrad Foothills 61.6,20.85
step
  only completed(539)
  note Travel to Dun Garok and kill 8 Mountaineers, 4 Riflemen, 2 Priests and Captain Ironhill and report back to Darthalia in Tarren Mill.
  kill Dun Garok Rifleman##2345 |q 541/2 |goto Hillsbrad Foothills 71.49,78.59 |elite
  kill Dun Garok Mountaineer##2344 |q 541/1 |goto Hillsbrad Foothills 71.58,79.57 |elite
  kill Dun Garok Priest##2346 |q 541/3 |goto Hillsbrad Foothills 71.78,80.45 |elite
  kill Captain Ironhill##2304 |q 541 |goto Hillsbrad Foothills 72.53,79.65 |elite
step
  note Retrieve Deathguard Humbert's sword from Dun Garok and return it to him in Tarren Mill.
  kill Dun Garok Mountaineer##2344 |q 547 |goto Hillsbrad Foothills 71.58,79.57 |elite
  collect Humbert's Sword##3693 |q 547 |goto Hillsbrad Foothills 71.58,79.57
step
  note Retrieve Helcular's Rod from the Yeti and bring it back to Novice Thaivand in Tarren Mill.
  collect Helcular's Rod##3708 |q 552 |goto Hillsbrad Foothills 45.28,31.24 |tip {dropsfrom}Cave Yeti, Ferocious Yeti
step
  only completed(539)
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##541 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Deathguard Humbert##2419
  turnin Humbert's Sword##547 |goto Hillsbrad Foothills 62.76,20.21
step
  talk Novice Thaivand##2429
  turnin Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
  only completed(539)
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##550 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##553 |goto Hillsbrad Foothills 63.88,19.66
step
  note Charge the Rod of Helcular with the powers of the Flame of Azel, Flame of Veraz and the Flame of Uzel.
  click Flame of Veraz##1769 |q 553/2 |goto Hillsbrad Foothills 44.05,26.55
  click Flame of Azel##1768 |q 553/1 |goto Hillsbrad Foothills 43.89,28.06
  click Flame of Uzel##1770 |q 553 |goto Alterac Mountains 37.55,66.24
step
  turnin Helcular's Revenge##553 |goto Hillsbrad Foothills 52.75,53.37
step
  only completed(549) level>=35
  click WANTED##1763
  accept WANTED: Baron Vardus##566 |goto Hillsbrad Foothills 62.63,20.75
step
  only haveq(1159)
  note Find Parqual Fintallas in Undercity.
  talk Parqual Fintallas##4488
  turnin Test of Lore##1159 |goto Undercity 57.8,65.42 |tip {turninat}Undercity
step
  only completed(539)
  note Take Darthalia's Sealed Commendation to Varimathras in the Undercity.
  talk Varimathras##2425
  turnin Battle of Hillsbrad##550 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  only level>=34
  talk Sharlindra##2227
  accept The Crown of Will##495 |goto Undercity 57.63,93.8
step
  note Speak with Archmage Celindra in the City of Dalaran.
  talk Archmage Celindra##252085
  turnin Shrewd Negotiations##97287 |goto Alterac Mountains 14.27,60.07 |tip {turninat}Alterac Mountains
step
  note Bring 10 Worn Stone Tokens to Keeper Bel'varil in Tarren Mill.
  collect 10 Worn Stone Token##3714 |q 556 |goto Alterac Mountains 19,84.35 |tip {dropsfrom}Dalaran Shield Guard, Dalaran Theurgist, Dalaran Summoner
step
  note Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
  collect Bloodstone Marble##3689 |q 544/2 |goto Alterac Mountains 20.16,84.28 |tip {dropsfrom}Ricter
  collect Bloodstone Wedge##3691 |q 544/1 |goto Alterac Mountains 19.91,85.97 |tip {dropsfrom}Dermot
  collect Bloodstone Shard##3690 |q 544/3 |goto Alterac Mountains 20.34,86.4 |tip {dropsfrom}Alina
  collect Bloodstone Oval##3688 |q 544 |goto Alterac Mountains 17.8,83.2 |tip {dropsfrom}Kegan Darkmar
step
  only completed(498)
  note Retrieve information about Gol'dir's whereabouts for Krusk in Tarren Mill.
  collect Syndicate Missive##3601 |q 533 |goto Alterac Mountains 57.71,67.64 |tip {dropsfrom}Syndicate Footpad, Syndicate Thief
step
  only completed(549) haveq(566)
  note Kill Baron Vardus and deliver his head to High Executor Darthalia in Tarren Mill.
  collect Head of Baron Vardus##3626 |q 566 |goto Alterac Mountains 56.28,26.7 |tip {dropsfrom}Baron Vardus
step
  talk Keeper Bel'varil##2437
  turnin Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Keeper Bel'varil##2437
  accept Bracers of Binding##557 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Magus Wordeen Voidglare##2410
  turnin Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  accept Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  only completed(549) haveq(566)
  talk High Executor Darthalia##2215
  turnin WANTED: Baron Vardus##566 |goto Hillsbrad Foothills 62.33,20.45
step
  only haveq(495)
  note Report to Melisara at Tarren Mill in the Hillsbrad Foothills.
  talk Melisara##2278
  turnin The Crown of Will##495 |goto Hillsbrad Foothills 62.63,20.65
step
  only level>=39
  talk Melisara##2278
  accept The Crown of Will##518 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(498)
  talk Krusk##2229
  turnin Infiltration##533 |goto Hillsbrad Foothills 63.24,20.66
step
  only completed(498)
  talk Krusk##2229
  accept Gol'dir##503 |goto Hillsbrad Foothills 63.24,20.66
step
  note Kill 8 Boulderfist Ogres and 10 Boulderfist Enforcers, then find Drum Fel in the Hammerfall outpost in Arathi Highlands.
  kill Boulderfist Ogre##2562 |q 676/1 |goto Arathi Highlands 35.7,45.27
  kill Boulderfist Enforcer##2564 |q 676 |goto Arathi Highlands 32.39,44.74
step
  talk Drum Fel##2771
  turnin The Hammer May Fall##676 |goto Arathi Highlands 74.24,33.92 |tip {turninat}Arathi Highlands
step
  note Find a way into Dalaran along the Lordamere Lake.
  talk Image of Archmage Modera##269127
  turnin Blood in the Streets##92434 |goto Silverpine Forest 68.6,45.18 |tip {turninat}Silverpine Forest
step
  note Bring 4 Bracers of Earth Binding to Keeper Bel'varil in Tarren Mill.
  collect 4 Bracers of Earth Binding##3715 |q 557 |goto Alterac Mountains 21.78,64.34 |tip {dropsfrom}Elemental Slave
step
  note Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
  kill Elemental Slave##2359 |q 545/2 |goto Alterac Mountains 21.78,64.34
  kill Dalaran Summoner##2358 |q 545 |goto Alterac Mountains 18.88,74.92
step
  only haveq(518)
  note Kill 10 Crushridge Maulers for Melisara in Tarren Mill.
  kill Crushridge Mauler##2254 |q 518 |goto Alterac Mountains 43.11,46.89 |elite
step
  only completed(498)
  note Free Gol'dir then return to Krusk in Tarren Mill.
  talk Gol'dir##2316 |q 503 |goto Alterac Mountains 59.96,43.74
step
  only completed(498)
  talk Gol'dir##2316
  turnin Gol'dir##503 |goto Alterac Mountains 59.96,43.74 |tip {turninat}Alterac Mountains
step
  talk Keeper Bel'varil##2437
  turnin Bracers of Binding##557 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Magus Wordeen Voidglare##2410
  turnin Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  only haveq(518)
  talk Melisara##2278
  turnin The Crown of Will##518 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(518) level>=41
  talk Melisara##2278
  accept The Crown of Will##519 |goto Hillsbrad Foothills 62.63,20.65
step
  only haveq(519)
  note Kill Targ, Muckrake, and Glommus and bring their heads to Melisara in Tarren Mill.
  kill Targ##2420 |q 519/1 |goto Alterac Mountains 39.57,52.89 |elite
  collect Targ's Head##3550 |q 519/1 |goto Alterac Mountains 39.57,52.89
  kill Muckrake##2421 |q 519/2 |goto Alterac Mountains 38.65,46.75 |elite
  collect Muckrake's Head##3551 |q 519/2 |goto Alterac Mountains 38.65,46.75
  kill Glommus##2422 |q 519 |goto Alterac Mountains 39.5,41.82 |elite
  collect Glommus's Head##3552 |q 519 |goto Alterac Mountains 39.5,41.82
step
  only haveq(519)
  talk Melisara##2278
  turnin The Crown of Will##519 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(519) level>=43
  talk Melisara##2278
  accept The Crown of Will##520 |goto Hillsbrad Foothills 62.63,20.65
step
  only haveq(520)
  note Kill Mug'Thol, and return his head with the Crown of Will to Melisara in Tarren Mill.
  kill Mug'thol##2257 |q 520 |goto Alterac Mountains 35.68,54.25 |elite
  collect Mug'thol's Head##3553 |q 520 |goto Alterac Mountains 35.68,54.25
step
  only haveq(520)
  talk Melisara##2278
  turnin The Crown of Will##520 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(520) level>=34
  talk Melisara##2278
  accept The Crown of Will##521 |goto Hillsbrad Foothills 62.63,20.65
step
  only haveq(521)
  note Deliver the Crown of Will to Sharlindra in the Undercity.
  talk Sharlindra##2227
  turnin The Crown of Will##521 |goto Undercity 57.63,93.8 |tip {turninat}Undercity
step
  note {travel}Alterac Mountains
  goto Alterac Mountains 57.17,69.51
]])
