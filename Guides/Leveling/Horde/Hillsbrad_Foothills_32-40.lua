-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Hillsbrad Foothills (32-40)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Arathi Highlands (34-40)",
	rev = "a724cf05",
}, [[
step
  ding 31
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38
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
  talk Tallow##2770
  accept The Hammer May Fall##676 |goto Hillsbrad Foothills 61.87,19.57
step
  talk Magus Wordeen Voidglare##2410
  accept Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
  talk Keeper Bel'varil##2437
  accept Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Magus Wordeen Voidglare##2410
  accept Key to the City##93680 |goto Hillsbrad Foothills 61.6,20.85
step
  only completed(92458,96984)
  talk Magus Wordeen Voidglare##2410
  accept Shrewd Negotiations##97287 |goto Hillsbrad Foothills 61.6,20.85
step
  only Rogue completed(6681)
  note Find Lord Tomas inside Durnholde Keep, in Hillsbrad Foothills, and kill him. Then, return to Myrokos Silentform.
  kill Lord Tomas##266216 |q 96779 |goto Hillsbrad Foothills 80,45.79
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
  note Bring 10 Worn Stone Tokens to Keeper Bel'varil in Tarren Mill.
  collect 10 Worn Stone Token##3714 |q 556 |goto Hillsbrad Foothills 26.98,31.5 |tip {dropsfrom}Dalaran Theurgist
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
  talk Keeper Bel'varil##2437
  turnin Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
step
  only completed(539)
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##550 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##553 |goto Hillsbrad Foothills 63.88,19.66
step
  talk Keeper Bel'varil##2437
  accept Bracers of Binding##557 |goto Hillsbrad Foothills 61.5,20.93
step
  only completed(498)
  talk Krusk##2229
  accept Infiltration##533 |goto Hillsbrad Foothills 63.24,20.66
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
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  turnin Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38 |tip {turninat}Alterac Mountains
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept A Way In##96783 |goto Alterac Mountains 84.93,80.38
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only completed(498)
  note Retrieve information about Gol'dir's whereabouts for Krusk in Tarren Mill.
  collect Syndicate Missive##3601 |q 533 |goto Alterac Mountains 57.71,67.64 |tip {dropsfrom}Syndicate Footpad, Syndicate Thief
step
  talk Henchman Valik##2333
  accept Valik##535 |goto Alterac Mountains 57.17,69.51
step
  note Bring a mug of Southshore Stout to Valik in the Syndicate camp.
  collect Southshore Stout##3703 |q 535 |goto Alterac Mountains 59.3,69.76 |tip {dropsfrom}Drunken Footpad
step
  talk Henchman Valik##2333
  turnin Valik##535 |goto Alterac Mountains 57.17,69.51 |tip {turninat}Alterac Mountains
step
  only Rogue completed(6681)
  note Steal Barton's Scouting Report by pickpocketing it from him. Then, bring the report to Myrokos Silentform at Ravenholdt Manor.
  collect Barton's Scouting Report##275482 |q 96781 |goto Alterac Mountains 61.95,45.44 |tip {dropsfrom}Barton
step
  only hasitem(213421)
  use Singed Note##213421 |tip It starts the quest.
  accept Strahnbrad Mystery##95534
step
  only haveq(95534)
  note Solve the mystery of Strahnbrad and report your findings in town in Hillsbrad.
  kill Ancient Fire Elemental##217305 |q 95534 |goto Alterac Mountains 60.1,45.58
step
  only completed(549) haveq(566)
  note Kill Baron Vardus and deliver his head to High Executor Darthalia in Tarren Mill.
  collect Head of Baron Vardus##3626 |q 566 |goto Alterac Mountains 56.28,26.7 |tip {dropsfrom}Baron Vardus
step
  note Bring 4 Bracers of Earth Binding to Keeper Bel'varil in Tarren Mill.
  collect 4 Bracers of Earth Binding##3715 |q 557 |goto Alterac Mountains 24.62,54.86 |tip {dropsfrom}Elemental Slave
step
  note Acquire the Dalaran Sewer Key for Magus Wordeen Voidglare in Tarren Mill.
  collect Grimy Key##279469 |q 93680 |goto Alterac Mountains 16.3,89.31 |tip {dropsfrom}Warden's Footlocker
step
  note Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
  collect Bloodstone Oval##3688 |q 544/4 |goto Alterac Mountains 16.58,89.03 |tip {dropsfrom}Kegan Darkmar
  collect Bloodstone Marble##3689 |q 544/2 |goto Alterac Mountains 19.31,90.22 |tip {dropsfrom}Ricter
  collect Bloodstone Wedge##3691 |q 544/1 |goto Alterac Mountains 18.76,91.41 |tip {dropsfrom}Dermot
  collect Bloodstone Shard##3690 |q 544 |goto Alterac Mountains 19.31,91.76 |tip {dropsfrom}Alina
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  turnin What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38 |tip {turninat}Alterac Mountains
step
  only haveq(513)
  note Take the Mudsnout Composite to Master Apothecary Faranell in the Undercity.
  talk Master Apothecary Faranell##2055
  turnin Elixir of Agony##513 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
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
  only Rogue completed(6681)
  note Steal a Syndicate uniform from Northfold Manor to infiltrate Stromgarde Keep.
  turnin A Way In##96783 |goto Arathi Highlands 32.29,26.57 |tip {turninat}Arathi Highlands
step
  note Kill 8 Boulderfist Ogres and 10 Boulderfist Enforcers, then find Drum Fel in the Hammerfall outpost in Arathi Highlands.
  kill Boulderfist Ogre##2562 |q 676/1 |goto Arathi Highlands 35.7,45.27
  kill Boulderfist Enforcer##2564 |q 676 |goto Arathi Highlands 32.39,44.74
step
  talk Drum Fel##2771
  turnin The Hammer May Fall##676 |goto Arathi Highlands 74.24,33.92 |tip {turninat}Arathi Highlands
step
  talk Magus Wordeen Voidglare##2410
  turnin Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  turnin Key to the City##93680 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  accept Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Keeper Bel'varil##2437
  turnin Bracers of Binding##557 |goto Hillsbrad Foothills 61.5,20.93
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
  only haveq(95534)
  talk Shara Blazen##2402
  turnin Strahnbrad Mystery##95534 |goto Hillsbrad Foothills 63.66,21.16
step
  only completed(92458,96984)
  note Speak with the Image of Archmage Modera near Dalaran.
  talk Image of Archmage Modera##269127
  turnin Shrewd Negotiations##97287 |goto Silverpine Forest 68.62,45.13 |tip {turninat}Silverpine Forest
step
  only Warrior completed(1791)
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712/1 |goto Hillsbrad Foothills 66.87,35.77
  collect Bloodscalp Tusk##3901 |q 1712/2 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
  collect Essence of the Exile##6851 |q 1712 |tip Crafted or bought.
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  only Warrior completed(1791) level>=40
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) haveq(1713)
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  kill Cyclonian##6239 |q 1713 |goto Alterac Mountains 80.32,62.14 |elite
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.32,62.14
step
  only Warrior completed(1791) haveq(1713)
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  only Warrior completed(1791) completed(1713)
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) haveq(1792)
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  only completed(498)
  note Free Gol'dir then return to Krusk in Tarren Mill.
  talk Gol'dir##2316 |q 503 |goto Alterac Mountains 59.96,43.74
step
  only completed(498)
  talk Gol'dir##2316
  turnin Gol'dir##503 |goto Alterac Mountains 59.96,43.74 |tip {turninat}Alterac Mountains
step
  only completed(498)
  talk Gol'dir##2316
  accept Blackmoore's Legacy##506 |goto Alterac Mountains 59.96,43.74
step
  only haveq(518)
  note Kill 10 Crushridge Maulers for Melisara in Tarren Mill.
  kill Crushridge Mauler##2254 |q 518 |goto Alterac Mountains 43.11,46.89 |elite
step
  note Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
  kill Elemental Slave##2359 |q 545/2 |goto Alterac Mountains 24.62,54.86
  kill Dalaran Summoner##2358 |q 545 |goto Alterac Mountains 25.1,57.5
step
  talk Magus Wordeen Voidglare##2410
  turnin Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Magus Wordeen Voidglare##2410
  accept Blood in the Streets##92434 |goto Hillsbrad Foothills 61.6,20.85
step
  only haveq(518)
  talk Melisara##2278
  turnin The Crown of Will##518 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(518) level>=41
  talk Melisara##2278
  accept The Crown of Will##519 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(498)
  note Return the information gathered by Gol'dir to Krusk in Tarren Mill.
  talk Krusk##2229
  turnin Blackmoore's Legacy##506 |goto Hillsbrad Foothills 63.24,20.66
step
  only completed(498)
  talk Krusk##2229
  accept Lord Aliden Perenolde##507 |goto Hillsbrad Foothills 63.24,20.66
step
  note Find a way into Dalaran along the Lordamere Lake.
  talk Image of Archmage Modera##269127 |q 92434 |goto Silverpine Forest 68.62,45.13
step
  talk Image of Archmage Modera##269127
  turnin Blood in the Streets##92434 |goto Silverpine Forest 68.62,45.13 |tip {turninat}Silverpine Forest
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
  only completed(498)
  note Kill Lord Aliden Perenolde and ask his mistress, Elysa, about Taretha's pendant.
  kill Lord Aliden Perenolde##2423 |q 507 |goto Alterac Mountains 39.32,14.58
step
  only completed(498)
  talk Elysa##2317
  turnin Lord Aliden Perenolde##507 |goto Alterac Mountains 39.3,14.31 |tip {turninat}Alterac Mountains
step
  only completed(498)
  talk Elysa##2317
  accept Taretha's Gift##508 |goto Alterac Mountains 39.3,14.31
step
  only haveq(519)
  talk Melisara##2278
  turnin The Crown of Will##519 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(519) level>=43
  talk Melisara##2278
  accept The Crown of Will##520 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(498)
  note Return Taretha's pendant to Krusk in Tarren Mill.
  talk Krusk##2229
  turnin Taretha's Gift##508 |goto Hillsbrad Foothills 63.24,20.66
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
  note {travel}Arathi Highlands
  goto Arathi Highlands 74.24,33.92
]])
