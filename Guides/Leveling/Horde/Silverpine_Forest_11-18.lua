-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Silverpine Forest (11-18)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Barrens (14-25)",
}, [[
step
  note {fp}Sarah Goode
  goto Silverpine Forest 43.45,41.18 |tip {vendor}
step
  only Shaman
  click Brazier of Everfount##113791
  accept Call of Water##100 |goto Silverpine Forest 38.26,44.56
step
  talk Clarice Foster##5543
  accept Until Death Do Us Part##264 |goto Thunder Bluff 27.2,24.4
step
  talk Dalar Dawnweaver##1938
  accept Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept Lost Deathstalkers##428 |goto Silverpine Forest 43.42,40.86
step
  talk High Executor Hadrec##1952
  accept The Dead Fields##437 |goto Silverpine Forest 43.42,40.86
step
  note Kill rot hide gnolls at the Dead Fields.
  collect Essence of Nightlash##3622 |q 437 |goto Silverpine Forest 45,21 |tip {dropsfrom}Nightlash
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##447 |goto Silverpine Forest 42.8,40.86
step
  note Collect 6 Grizzled Bear Hearts and 6 samples of Skittering Blood and deliver them to Master Apothecary Faranell in the Undercity.
  collect 6 Grizzled Bear Heart##3253 |q 447 |goto Silverpine Forest 49.71,33.46 |tip {dropsfrom}Ferocious Grizzled Bear, Giant Grizzled Bear, Old Vicejaw
step
  talk Shadow Priest Allister##2121
  accept Border Crossings##477 |goto Silverpine Forest 43.98,40.93
step
  talk Apothecary Renferrel##1937
  accept Journey to Hillsbrad Foothills##493 |goto Silverpine Forest 42.8,40.86
step
  talk Shadow Priest Allister##2121
  accept Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  talk Cairne Bloodhoof##3057
  accept Rites of the Earthmother##776 |goto Thunder Bluff 60.3,51.68
step
  note Cairne Bloodhoof in Thunder Bluff wants you to bring him the Horn of Arra'chea.
  collect Horn of Arra'chea##4841 |q 776 |goto Mulgore 51.25,24.82 |tip {dropsfrom}Arra'chea
step
  talk Neeru Fireblade##3216
  accept Ak'Zeloth##809 |goto Orgrimmar 49.47,50.59
step
  talk Dalar Dawnweaver##1938
  accept Arugal Must Die##1014 |goto Silverpine Forest 44.2,39.81
step
  note Kill Arugal and bring his head to Dalar Dawnweaver at the Sepulcher.
  collect Head of Arugal##5442 |q 1014 |goto Shadowfang Keep - Dungeon -1,-1 |elite |tip {dropsfrom}Archmage Arugal, Arugal
step
  talk High Executor Hadrec##1952
  accept Deathstalkers in Shadowfang##1098 |goto Silverpine Forest 43.42,40.86
step
  only Rogue
  talk Therzok##6446
  accept The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  note Kill Tazan and bring his Satchel to Therzok in the Cleft of Shadow in Orgrimmar.
  collect Tazan's Satchel##7209 |q 1963 |goto The Barrens 63.11,44.29 |tip {dropsfrom}Tazan
step
  only Rogue
  talk Shenthul##3401
  accept Zando'zan##2379 |goto Orgrimmar 43.05,53.74
step
  talk Varimathras##2425
  accept The Power to Destroy...##5725 |goto Undercity 56.25,92.2
step
  note Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity.
  collect Spells of Shadow##14395 |q 5725 |goto Ragefire Chasm - Dungeon -1,-1 |elite |tip {dropsfrom}Searing Blade Cultist, Searing Blade Warlock
step
  talk Thrall##4949
  accept Hidden Enemies##5726 |goto Orgrimmar 31.73,37.82
step
  note Bring a Lieutenant's Insignia to Thrall in Orgrimmar.
  collect Lieutenant's Insignia##14544 |q 5726 |goto Durotar 52.5,9.36 |tip {dropsfrom}Burning Blade Fanatic, Burning Blade Apprentice
step
  talk Thrall##4949
  accept Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82
step
  talk Neeru Fireblade##3216
  accept Slaying the Beast##5761 |goto Orgrimmar 49.47,50.59
step
  note Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar.
  collect Taragaman the Hungerer's Heart##14540 |q 5761 |goto Ragefire Chasm - Dungeon -1,-1 |elite |tip {dropsfrom}Taragaman the Hungerer
step
  only Undead
  talk Deathguard Podrig##6389
  accept Supplying the Sepulcher##6321 |goto Silverpine Forest 43.42,41.68
step
  only Undead Paladin
  talk Trevan Rol##248840
  accept A Curious Pair##91859 |goto Silverpine Forest 43.4,41
step
  only Undead Paladin
  talk Deathguard Baldren##259611
  accept A Grim Fate##91860 |goto Silverpine Forest 44.43,40.87
step
  talk Apothecary Renferrel##1937
  accept Return to Quinn (Again)##91921 |goto Silverpine Forest 42.8,40.86
step
  talk Tabitha Heartweaver##250686
  accept A Frightened Request##92401 |goto Silverpine Forest 44.57,42.96
step
  only Skyborne
  talk Thrall##4949
  accept Exploring the Horde##93739 |goto Orgrimmar 31.73,37.82
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept The Debt##95034 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  note Speak with Trevan Rol in the Sepulcher and bring him the materials he requires.
  collect Trevan's Weapon Notes##267454 |q 95036 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Trevan Rol##248840
  accept An Underrated Talent##95111 |goto Silverpine Forest 43.4,41
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept Old Fire-Eye##95140 |goto Silverpine Forest 43.2,40.8
step
  kill Ravenclaw Guardian##1973 |goto Silverpine Forest 58.68,71.11 |tip Loot the quest item here — it starts the quest.
  accept The Offering Stone##95884 |goto Silverpine Forest 58.68,71.11
step
  note Find the Offering Stone in Beren's Peril in Silverpine Forest.
  collect Note Scrap##271343 |q 95884 |goto Silverpine Forest 58.68,71.11 |tip {dropsfrom}Ravenclaw Guardian, Ravenclaw Drudger
step
  talk Shadow Priest Allister##2121
  accept Watching the Roads##95981 |goto Silverpine Forest 43.98,40.93
step
  talk Thatog##268701
  accept Meal Appeal##97246 |goto Orgrimmar 55.68,72.1
step
  talk Borstan##3368
  accept Favorite Food##97249 |goto Orgrimmar 57.2,53.32
step
  talk Thra##268684
  accept Rocks to Rests##97326 |goto Orgrimmar 37.01,28.84
step
  note Return 8 Smooth Boulders to Thra behind Grommash Hold.
  collect Smooth Boulder##277952 |q 97326 |goto Orgrimmar 43.9,32.8
step
  talk Alessandro Luca##7683
  accept Prompt Potion Runner##97891 |goto Undercity 58.61,54.68
step
  only Skyborne
  talk Thrall##4949
  accept Journey to the Crossroads##98024 |goto Orgrimmar 31.73,37.82
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##98298 |goto Silverpine Forest 44.2,39.81
step
  note Bring 6 Worgen Bits to Dalar Dawnweaver in The Sepulcher.
  collect 6 Worgen Bits##280375 |q 98298 |goto Silverpine Forest 51.09,78.2 |tip {dropsfrom}Moonrage Bloodhowler
step
  talk Dalar Dawnweaver##1938
  accept Stop the Spread##98299 |goto Silverpine Forest 44.2,39.81
step
  note Locate Beren's Peril, then kill 6 Ravenclaw Drudgers and 6 Ravenclaw Guardians, then return to Shadow Priest Allister at the Sepulcher.
  kill Ravenclaw Drudger##1974 |q 516 |goto Silverpine Forest 59.14,70.81
step
  only Skyborne
  note Speak with Nazgrel in Grommash Hold to receive further instructions. Use the instructions received to locate and speak with Vol'jin, Cairne Bloodhoof, and Lady Sylvanas Windrunner.
  talk Nazgrel##3230 |q 93739 |goto Orgrimmar 32.3,35.75
step
  note Slay 8 Dalaran Wizards and 8 Dalaran Watchers for Shadow Priest Allister in the Sepulcher.
  kill Dalaran Watcher##1888 |q 95981 |goto Silverpine Forest 62.88,75.43
step
  note Slay 5 Sickly Refugees and 5 Haggard Refugees for Dalar Dawnweaver in The Sepulcher.
  kill Haggard Refugee##2053 |q 98299 |goto Silverpine Forest 46.32,85.7
step
  only Undead Paladin
  talk Ott##3539
  turnin An Underrated Talent##95111 |goto Hillsbrad Foothills 60.43,26.18 |tip {turninat}Hillsbrad Foothills
step
  talk Ak'Zeloth##3521
  turnin Ak'Zeloth##809 |goto The Barrens 62.34,20.07 |tip {turninat}The Barrens
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept A Lesson to Learn##27 |goto Thunder Bluff 76.48,27.22
step
  kill Rot Hide Brute##1939 |goto Silverpine Forest 66.9,31 |tip Loot the quest item here — it starts the quest.
  accept Resting in Pieces##460 |goto Silverpine Forest 66.9,31
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Nara Wildmane##1490 |goto Thunder Bluff 78.62,28.56
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  note Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.
  collect Astor's Letter of Introduction##7231 |q 1886 |goto Silverpine Forest 49.71,32.22 |tip {dropsfrom}Astor Hadren
step
  only Mage
  talk Anastasia Hartwell##4568
  accept Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03
step
  only Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment Coffers from behind Anastasia Hartwell. Bring 3 Filled Containment Coffers, the Chest of Containment Coffers and the Cantation of Manifestation to Anastasia in the Undercity.
  collect 3 Filled Containment Coffer##7292 |q 1960 |goto Undercity 85.14,10.03
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept Fenwick Thatros##1998 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  note Kill Fenwick Thatros and bring his head back to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Fenwick's Head##7306 |q 1998 |goto Silverpine Forest 59.58,33.94 |tip {dropsfrom}Fenwick Thatros
step
  only Rogue
  talk Mennet Carkad##6467
  accept Find the Shattered Hand##2378 |goto Undercity 83.51,69.11
step
  talk Rahauro##11833
  accept Searching for the Lost Satchel##5722 |goto Thunder Bluff 70.14,29.52
step
  talk Rahauro##11833
  accept Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  accept Lumina Windsinger##91862 |goto Silverpine Forest 65.6,28.6
step
  only Undead Paladin
  note Retrieve the Fenris Isle Key from the Rot Hide Gnolls and use it to free Lumina Windsinger.
  collect Fenris Isle Key##267412 |q 91862 |goto Silverpine Forest 65.71,24.35 |tip {dropsfrom}Rot Hide Savage, Raging Rot Hide, Rot Hide Bruiser
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  accept The Windshaper's Wrath##96204 |goto Silverpine Forest 65.6,28.6
step
  talk Kor'geld##3348
  accept Yelmak's Medley##97242 |goto Orgrimmar 56.05,34.12
step
  note Take some cuttings from the Cattails and Speargrass growing around the water flows in the Valley of Honor and return to Kor'geld in Yelmak's Alchemy and Potions
  collect Handful of Cattails##277278 |q 97242 |goto Orgrimmar 70.4,30.9 |tip {dropsfrom}Cattail
step
  talk Yelmak##3347
  accept Whuut's the Rush##97275 |goto Orgrimmar 56.84,33.03
step
  note Dalar Dawnweaver at the Sepulcher wants you to kill 5 Moonrage Whitescalps.
  kill Moonrage Whitescalp##1769 |q 421 |goto Silverpine Forest 52.86,26.71
step
  talk Quinn Yorick##1951
  turnin Return to Quinn (Again)##91921 |goto Silverpine Forest 53.43,12.59
step
  talk Rane Yorick##1950
  turnin Lost Deathstalkers##428 |goto Silverpine Forest 53.46,13.43
step
  talk Deathstalker Vincent##4444
  turnin Deathstalkers in Shadowfang##1098 |goto Shadowfang Keep - Dungeon -1,-1 |tip {turninat}Shadowfang Keep - Dungeon
step
  talk Maur Grimtotem##11834
  turnin Searching for the Lost Satchel##5722 |goto Ragefire Chasm - Dungeon -1,-1 |tip {turninat}Ragefire Chasm - Dungeon
step
  talk Apothecary Lydon##2216
  turnin Journey to Hillsbrad Foothills##493 |goto Hillsbrad Foothills 61.44,19.06 |tip {turninat}Hillsbrad Foothills
step
  talk Rane Yorick##1950
  accept Wild Hearts##429 |goto Silverpine Forest 53.46,13.43
step
  note Gather 6 discolored worg hearts and bring them to Apothecary Renferrel at the Sepulcher.
  collect 6 Discolored Worg Heart##3164 |q 429 |goto Silverpine Forest 65.76,7.8 |tip {dropsfrom}Worg, Mottled Worg, Bloodsnout Worg
step
  talk Deathstalker Erland##1978
  accept Escorting Erland##435 |goto Silverpine Forest 56.18,9.18
step
  talk Quinn Yorick##1951
  accept Wild Eyes##91920 |goto Silverpine Forest 53.43,12.59
step
  note Gather 3 murloc eyes and bring them to Apothecary Renferrel at the Sepulcher.
  collect 3 Murloc Eye##730 |q 91920 |goto Wetlands 18.07,41.45 |tip {dropsfrom}Gobbler, Bluegill Raider, Murloc Tidehunter
step
  note Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff.
  kill Ragefire Trogg##11318 |q 5723 |goto Ragefire Chasm - Dungeon -1,-1 |elite
step
  note Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar.
  kill Bazzalan##11519 |q 5728 |goto Ragefire Chasm - Dungeon -1,-1 |elite
step
  talk Neeru Fireblade##3216
  turnin Slaying the Beast##5761 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  talk Shadow Priest Allister##2121
  turnin Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  turnin Until Death Do Us Part##264 |goto Silverpine Forest 44.19,42.67
step
  talk Cairne Bloodhoof##3057
  turnin Rites of the Earthmother##776 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  talk Apothecary Renferrel##1937
  turnin Wild Eyes##91920 |goto Silverpine Forest 42.8,40.86
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin Old Fire-Eye##95140 |goto Silverpine Forest 43.2,40.8
step
  talk Dalar Dawnweaver##1938
  turnin Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  only Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55 |tip {turninat}Orgrimmar
step
  only Skyborne
  talk Thrall##4949
  turnin Exploring the Horde##93739 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Thra##268684
  turnin Rocks to Rests##97326 |goto Orgrimmar 37.01,28.84 |tip {turninat}Orgrimmar
step
  talk Apothecary Renferrel##1937
  turnin Wild Hearts##429 |goto Silverpine Forest 42.8,40.86
step
  only Undead
  talk Karos Razok##2226
  turnin Supplying the Sepulcher##6321 |goto Silverpine Forest 45.62,42.6
step
  talk High Executor Hadrec##1952
  turnin The Dead Fields##437 |goto Silverpine Forest 43.42,40.86
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin The Debt##95034 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.4,41
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##447 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  only Rogue
  talk Zando'zan##3402
  turnin Zando'zan##2379 |goto Orgrimmar 42.73,52.95 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Shenthul##3401
  turnin Find the Shattered Hand##2378 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin The Windshaper's Wrath##96204 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Deathguard Baldren##259611
  turnin A Curious Pair##91859 |goto Silverpine Forest 44.43,40.87
step
  talk Varimathras##2425
  turnin The Power to Destroy...##5725 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  turnin Border Crossings##477 |goto Silverpine Forest 49.89,60.33
step
  talk Thrall##4949
  turnin Hidden Enemies##5726 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Thrall##4949
  turnin Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Borstan##3368
  turnin Meal Appeal##97246 |goto Orgrimmar 57.2,53.32 |tip {turninat}Orgrimmar
step
  talk Migi##268682
  turnin Favorite Food##97249 |goto Orgrimmar 36.77,29.08 |tip {turninat}Orgrimmar
step
  talk Doctor Martin Felben##11044
  turnin Prompt Potion Runner##97891 |goto Undercity 46.61,74.09 |tip {turninat}Undercity
step
  only Shaman
  talk Minor Manifestation of Water##5895
  turnin Call of Water##100 |goto Silverpine Forest 38.65,44.58
step
  only Skyborne
  talk Thork##3429
  turnin Journey to the Crossroads##98024 |goto The Barrens 51.5,30.87 |tip {turninat}The Barrens
step
  talk Shadow Priest Allister##2121
  turnin Watching the Roads##95981 |goto Silverpine Forest 43.98,40.93
step
  talk Tabitha Heartweaver##250686
  turnin A Frightened Request##92401 |goto Silverpine Forest 44.57,42.96
step
  talk Dalar Dawnweaver##1938
  turnin Arugal Must Die##1014 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##98298 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  turnin Stop the Spread##98299 |goto Silverpine Forest 44.2,39.81
step
  only Shaman
  talk Minor Manifestation of Water##5895
  accept Call of Water##96 |goto Silverpine Forest 38.65,44.58
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  note Retrieve the Remedy of Arugal for Dalar Dawnweaver at the Sepulcher.
  collect Remedy of Arugal##3155 |q 422 |goto Silverpine Forest 52.83,28.58 |tip {dropsfrom}Dusty Spellbooks
step
  talk Apothecary Renferrel##1937
  accept Return to Quinn##430 |goto Silverpine Forest 42.8,40.86
step
  talk High Executor Hadrec##1952
  accept The Decrepit Ferry##438 |goto Silverpine Forest 43.42,40.86
step
  talk Master Apothecary Faranell##2055
  accept A Recipe For Death##450 |goto Undercity 48.82,69.28
step
  note Retrieve Apothecary Berard's journal from Pyrewood Village and take it to Apothecary Renferrel at the Sepulcher.
  collect Berard's Journal##3255 |q 450 |goto Silverpine Forest 42.98,73.18 |tip {dropsfrom}Berard's Bookshelf
step
  click Dalaran Crate##1627
  accept Maps and Runes##478 |goto Silverpine Forest 49.89,60.33
step
  only Rogue
  talk Therzok##6446
  accept The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  note Steal Tazan's key, then use it to open his Satchel and deliver its contents to Therzok in the Cleft of Shadow in Orgrimmar.
  kill Tazan##6494 |goto The Barrens 63.11,44.29
  collect Tazan's Logbook##7295 |q 1858 |goto The Barrens 63.11,44.29
step
  only Rogue
  talk Zando'zan##3402
  accept Wrenix of Ratchet##2382 |goto Orgrimmar 42.73,52.95
step
  talk Thrall##4949
  accept Hidden Enemies##5729 |goto Orgrimmar 31.73,37.82
step
  only Undead
  talk Karos Razok##2226
  accept Ride to the Undercity##6323 |goto Silverpine Forest 45.62,42.6
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##27 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  only Mage
  talk Anastasia Hartwell##4568
  turnin Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  only Undead
  talk Gordon Wendham##4556
  turnin Ride to the Undercity##6323 |goto Undercity 61.49,41.79 |tip {turninat}Undercity
step
  turnin The Decrepit Ferry##438 |goto Silverpine Forest 58.44,34.9
step
  talk Whuut##11046
  turnin Whuut's the Rush##97275 |goto Orgrimmar 55.79,32.9 |tip {turninat}Orgrimmar
step
  turnin Resting in Pieces##460 |goto Silverpine Forest 67.87,24.85
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin Fenwick Thatros##1998 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Wrenix of Ratchet##2382 |goto The Barrens 63.07,36.32 |tip {turninat}The Barrens
step
  talk Nara Wildmane##5770
  turnin Nara Wildmane##1490 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  turnin Lumina Windsinger##91862 |goto Silverpine Forest 65.6,28.6
step
  talk Rahauro##11833
  turnin Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52 |tip {turninat}Thunder Bluff
step
  talk Kor'geld##3348
  turnin Yelmak's Medley##97242 |goto Orgrimmar 56.05,34.12 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Call of Water##96 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1886 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  click Corpse Laden Boat##1593
  accept Rot Hide Clues##439 |goto Silverpine Forest 58.44,34.9
step
  click Shallow Grave##1599
  accept The Hidden Niche##461 |goto Silverpine Forest 67.87,24.85
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1898 |goto Undercity 83.51,69.11
step
  only Mage
  talk Anastasia Hartwell##4568
  accept Gathering Materials##1961 |goto Undercity 85.14,10.03
step
  only Mage
  note Bring 10 Linen Cloth and 6 Dalaran Mana Gems to Josef Gregorian.
  collect 10 Linen Cloth##2589 |q 1961 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  talk Quinn Yorick##1951
  turnin Return to Quinn##430 |goto Silverpine Forest 53.43,12.59
step
  talk Rane Yorick##1950
  turnin Escorting Erland##435 |goto Silverpine Forest 53.46,13.43
step
  talk Rane Yorick##1950
  accept Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  note Kill Ivar the Foul, and bring Ivar's Head to Rane Yorick at the Ivar Patch.
  collect Ivar's Head##3621 |q 425 |goto Silverpine Forest 51.52,13.9 |tip {dropsfrom}Ivar the Foul
step
  talk Rane Yorick##1950
  accept The Deathstalkers' Report##449 |goto Silverpine Forest 53.46,13.43
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  turnin Rot Hide Clues##439 |goto Silverpine Forest 43.42,40.86
step
  talk High Executor Hadrec##1952
  turnin The Deathstalkers' Report##449 |goto Silverpine Forest 43.42,40.86
step
  talk Apothecary Renferrel##1937
  turnin A Recipe For Death##450 |goto Silverpine Forest 42.8,40.86
step
  only Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55 |tip {turninat}Orgrimmar
step
  talk Neeru Fireblade##3216
  turnin Hidden Enemies##5729 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  talk Shadow Priest Allister##2121
  turnin Maps and Runes##478 |goto Silverpine Forest 43.98,40.93
step
  only Undead Rogue
  talk Andron Gant##6522
  turnin The Deathstalkers##1898 |goto Undercity 54.81,76.33 |tip {turninat}Undercity
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  note Bring 6 Glutton Shackles and 3 Darksoul Shackles to Dalar Dawnweaver at the Sepulcher.
  collect 6 Glutton Shackle##3156 |q 423 |goto Silverpine Forest 46.54,28.93 |tip {dropsfrom}Moonrage Glutton
step
  talk High Executor Hadrec##1952
  accept The Engraved Ring##440 |goto Silverpine Forest 43.42,40.86
step
  talk High Executor Hadrec##1952
  accept Rot Hide Ichor##443 |goto Silverpine Forest 43.42,40.86
step
  note Bring 8 bottles of rot hide ichor to Apothecary Renferrel at the Sepulcher.
  collect 8 Rot Hide Ichor##3236 |q 443 |goto Silverpine Forest 66.9,31 |tip {dropsfrom}Rot Hide Brute, Rot Hide Plague Weaver, Rot Hide Savage
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##451 |goto Silverpine Forest 42.8,40.86
step
  note Bring 6 samples of Lake Creeper Moss, 6 samples of Lake Skulker Moss and a Hardened Tumor to Master Apothecary Faranell in the Undercity.
  collect 6 Lake Skulker Moss##3256 |q 451 |goto Silverpine Forest 71.53,36.09 |tip {dropsfrom}Lake Skulker, Elder Lake Skulker
step
  talk Shadow Priest Allister##2121
  accept Dalar's Analysis##481 |goto Silverpine Forest 43.98,40.93
step
  only Undead Rogue
  talk Andron Gant##6522
  accept The Deathstalkers##1899 |goto Undercity 54.81,76.33
step
  only Undead Rogue
  note Bring Andron's Ledger to Mennet Carkad in the Rogues' Quarter of Undercity.
  collect Andron's Ledger##7294 |q 1899 |goto Undercity 55.4,76.96 |tip {dropsfrom}Andron's Bookshelf
step
  talk High Executor Hadrec##1952
  accept Speak with Renferrel##3221 |goto Silverpine Forest 43.42,40.86
step
  talk Neeru Fireblade##3216
  accept Hidden Enemies##5730 |goto Orgrimmar 49.47,50.59
step
  only Mage
  talk Josef Gregorian##4576
  turnin Gathering Materials##1961 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  turnin The Hidden Niche##461 |goto Silverpine Forest 65.36,24.81
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1899 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  click Dusty Shelf##112888
  accept Wand to Bethor##491 |goto Silverpine Forest 65.36,24.81
step
  only Mage
  talk Josef Gregorian##4576
  accept Spellfire Robes##1962 |goto Undercity 70.76,30.69
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1978 |goto Undercity 83.51,69.11
step
  talk Rane Yorick##1950
  turnin Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  talk Apothecary Renferrel##1937
  turnin Speak with Renferrel##3221 |goto Silverpine Forest 42.8,40.86
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  talk Magistrate Sevren##1499
  turnin The Engraved Ring##440 |goto Tirisfal Glades 61.26,50.84 |tip {turninat}Tirisfal Glades
step
  talk Apothecary Renferrel##1937
  turnin Rot Hide Ichor##443 |goto Silverpine Forest 42.8,40.86
step
  only Undead Rogue
  talk Varimathras##2425
  turnin The Deathstalkers##1978 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##451 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Thrall##4949
  turnin Hidden Enemies##5730 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Dalar Dawnweaver##1938
  turnin Dalar's Analysis##481 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  note Kill Grimson the Pale and bring his head to Dalar Dawnweaver at the Sepulcher.
  collect Head of Grimson##3634 |q 424 |goto Silverpine Forest 58.58,44.86 |tip {dropsfrom}Grimson the Pale
step
  talk Apothecary Renferrel##1937
  accept Rot Hide Origins##444 |goto Silverpine Forest 42.8,40.86
step
  talk Dalar Dawnweaver##1938
  accept Dalaran's Intentions##482 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  accept Zinge's Delivery##1359 |goto Silverpine Forest 42.8,40.86
step
  only Mage
  talk Josef Gregorian##4576
  turnin Spellfire Robes##1962 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  turnin Rot Hide Origins##444 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  turnin Wand to Bethor##491 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  accept Thule Ravenclaw##446 |goto Undercity 84.07,17.45
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  turnin Thule Ravenclaw##446 |goto Silverpine Forest 42.8,40.86
step
  talk Apothecary Zinge##5204
  turnin Zinge's Delivery##1359 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  talk Shadow Priest Allister##2121
  turnin Dalaran's Intentions##482 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  note Bring 6 Pyrewood Shackles to Dalar Dawnweaver at the Sepulcher.
  kill Pyrewood Watcher##1891 |goto Silverpine Forest 45.68,73.01 |elite
  collect 6 Pyrewood Shackle##3218 |q 99 |goto Silverpine Forest 45.68,73.01
step
  talk Apothecary Renferrel##1937
  accept Report to Hadrec##448 |goto Silverpine Forest 42.8,40.86
step
  talk Shadow Priest Allister##2121
  accept Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  note Obtain 8 Dalaran Pendants for Shadow Priest Allister at the Sepulcher.
  collect 8 Dalaran Pendant##3354 |q 479 |goto Silverpine Forest 58.65,63.25 |tip {dropsfrom}Dalaran Protector, Dalaran Mage, Dalaran Conjuror
step
  talk Apothecary Zinge##5204
  accept Sample for Helbrim##1358 |goto Undercity 50.14,67.97
step
  talk High Executor Hadrec##1952
  turnin Report to Hadrec##448 |goto Silverpine Forest 43.42,40.86
step
  talk Apothecary Helbrim##3390
  turnin Sample for Helbrim##1358 |goto The Barrens 51.44,30.15 |tip {turninat}The Barrens
step
  talk Shadow Priest Allister##2121
  turnin Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  note Bring Thule's Head to High Executor Hadrec at the Sepulcher.
  kill Thule Ravenclaw##1947 |goto Silverpine Forest 65.71,23.67 |elite
  collect Thule's Head##3623 |q 442 |goto Silverpine Forest 65.71,23.67
step
  talk Shadow Priest Allister##2121
  accept The Weaver##480 |goto Silverpine Forest 43.98,40.93
step
  note Kill the Dalaran archmage, then retrieve his staff for Shadow Priest Allister at the Sepulcher.
  collect Ataeric's Staff##3515 |q 480 |goto Silverpine Forest 63.4,64.27 |tip {dropsfrom}Archmage Ataeric
step
  talk High Executor Hadrec##1952
  turnin Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  talk Shadow Priest Allister##2121
  turnin The Weaver##480 |goto Silverpine Forest 43.98,40.93
step
  note {travel}The Barrens
  goto The Barrens 61.38,21.12
]])
