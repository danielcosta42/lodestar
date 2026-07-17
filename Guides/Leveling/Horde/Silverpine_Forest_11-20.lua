-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Silverpine Forest (11-20)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Ghostlands (11-20)",
}, [[
step
  note {fp}Karos Razok
  goto Silverpine Forest 45.62,42.6 |tip {vendor}
step
  talk Clarice Foster##5543
  accept Until Death Do Us Part##264 |goto Thunder Bluff 28.87,26.4
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
  collect Essence of Nightlash##3622 |q 437 |goto Silverpine Forest 43.42,40.86 |tip {dropsfrom}Nightlash
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##447 |goto Silverpine Forest 42.8,40.86
step
  note Collect 6 Grizzled Bear Hearts and 6 samples of Skittering Blood and deliver them to Master Apothecary Faranell in the Undercity.
  collect 6 Grizzled Bear Heart##3253 |q 447 |goto Silverpine Forest 49.71,33.46 |tip {dropsfrom}Ferocious Grizzled Bear, Giant Grizzled Bear, Old Vicejaw
step
  talk Apothecary Renferrel##1937
  accept Report to Hadrec##448 |goto Silverpine Forest 42.8,40.86
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
  collect Rites of the Earthmother##4841 |q 776 |goto Thunder Bluff 60.3,51.68
step
  talk Neeru Fireblade##3216
  accept Ak'Zeloth##809 |goto Orgrimmar 49.47,50.59
step
  talk Dalar Dawnweaver##1938
  accept Arugal Must Die##1014 |goto Silverpine Forest 44.2,39.81
step
  note Kill Arugal and bring his head to Dalar Dawnweaver at the Sepulcher.
  collect Head of Arugal##5442 |q 1014 |goto Shadowfang Keep - Dungeon -1,-1 |tip {dropsfrom}Archmage Arugal
step
  talk High Executor Hadrec##1952
  accept Deathstalkers in Shadowfang##1098 |goto Silverpine Forest 43.42,40.86
step
  only Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  only Rogue
  note Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.
  collect Astor's Letter of Introduction##7231 |q 1886 |goto Silverpine Forest 49.71,32.22 |tip {dropsfrom}Astor Hadren
step
  only Mage
  talk Uthel'nay##7311
  accept Report to Anastasia##1959 |goto Orgrimmar 39.16,86.27
step
  only Rogue
  talk Therzok##6446
  accept The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55
step
  only Rogue
  note Kill Tazan and bring his Satchel to Therzok in the Cleft of Shadow in Orgrimmar.
  collect Tazan's Satchel##7209 |q 1963 |goto The Barrens 63.11,44.29 |tip {dropsfrom}Tazan
step
  talk Thrall##4949
  accept Hidden Enemies##5729 |goto Orgrimmar 31.73,37.82
step
  only Undead
  talk Deathguard Podrig##6389
  accept Supplying the Sepulcher##6321 |goto Silverpine Forest 43.42,41.68
step
  talk Ambassador Sunsorrow##16287
  accept Delivery to the Sepulcher##9189 |goto Undercity 57.77,90.56
step
  note Locate Beren's Peril, then kill 6 Ravenclaw Drudgers and 6 Ravenclaw Guardians, then return to Shadow Priest Allister at the Sepulcher.
  kill Ravenclaw Drudger##1974 |q 516 |goto Silverpine Forest 59.14,70.81
step
  only Mage
  talk Anastasia Hartwell##4568
  turnin Report to Anastasia##1959 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  talk Ak'Zeloth##3521
  turnin Ak'Zeloth##809 |goto The Barrens 62.34,20.07 |tip {turninat}The Barrens
step
  talk Rane Yorick##1950
  turnin Lost Deathstalkers##428 |goto Silverpine Forest 53.46,13.43
step
  talk Deathstalker Vincent##4444
  turnin Deathstalkers in Shadowfang##1098 |goto Shadowfang Keep - Dungeon -1,-1 |tip {turninat}Shadowfang Keep - Dungeon
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
  kill Rot Hide Brute##1939 |goto Silverpine Forest 66.67,29.1 |tip Loot the quest item here — it starts the quest.
  accept Resting in Pieces##460 |goto Silverpine Forest 66.67,29.1
step
  only Mage
  talk Anastasia Hartwell##4568
  accept Gathering Materials##1961 |goto Undercity 85.14,10.03
step
  only Mage
  note Bring 10 Linen Cloth and 6 Dalaran Mana Gems to Josef Gregorian.
  collect 10 Linen Cloth##2589 |q 1961 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Kobold Miner, Mine Spider
step
  talk Rahauro##11833
  accept Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52
step
  only Druid
  talk Turak Runetotem##3033
  accept Lessons Anew##6126 |goto Thunder Bluff 76.48,27.22
step
  note Dalar Dawnweaver at the Sepulcher wants you to kill 5 Moonrage Whitescalps.
  kill Moonrage Whitescalp##1769 |q 421 |goto Silverpine Forest 52.86,26.71
step
  note Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff.
  kill Ragefire Trogg##11318 |q 5723 |goto Ragefire Chasm - Dungeon -1,-1 |elite
step
  talk Shadow Priest Allister##2121
  turnin Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  turnin Until Death Do Us Part##264 |goto Silverpine Forest 44.19,42.67
step
  talk Cairne Bloodhoof##3057
  turnin Rites of the Earthmother##776 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  talk Dalar Dawnweaver##1938
  turnin Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  only Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1963 |goto Orgrimmar 42.73,53.55 |tip {turninat}Orgrimmar
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
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##447 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk High Executor Hadrec##1952
  turnin Report to Hadrec##448 |goto Silverpine Forest 43.42,40.86
step
  turnin Border Crossings##477 |goto Silverpine Forest 49.89,60.33
step
  only Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1886 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  talk Neeru Fireblade##3216
  turnin Hidden Enemies##5729 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  talk Advisor Sorrelon##16288
  turnin Delivery to the Sepulcher##9189 |goto Silverpine Forest 43.4,40.75
step
  only Druid
  talk Dendrite Starblaze##11802
  turnin Lessons Anew##6126 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  talk Dalar Dawnweaver##1938
  turnin Arugal Must Die##1014 |goto Silverpine Forest 44.2,39.81
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
  talk High Executor Hadrec##1952
  accept Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  note Bring Thule's Head to High Executor Hadrec at the Sepulcher.
  collect Thule's Head##3623 |q 442 |goto Silverpine Forest 65.71,23.67 |tip {dropsfrom}Thule Ravenclaw
step
  talk Master Apothecary Faranell##2055
  accept A Recipe For Death##450 |goto Undercity 48.82,69.28
step
  note Retrieve Apothecary Berard's journal from Pyrewood Village and take it to Apothecary Renferrel at the Sepulcher.
  collect A Recipe For Death##3255 |q 450 |goto Undercity 48.82,69.28
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
  talk Mennet Carkad##6467
  accept The Deathstalkers##1898 |goto Undercity 83.51,69.11
step
  only Undead
  talk Karos Razok##2226
  accept Ride to the Undercity##6323 |goto Silverpine Forest 45.62,42.6
step
  only Mage
  talk Josef Gregorian##4576
  turnin Gathering Materials##1961 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  talk Quinn Yorick##1951
  turnin Return to Quinn##430 |goto Silverpine Forest 53.43,12.59
step
  talk Rane Yorick##1950
  turnin Escorting Erland##435 |goto Silverpine Forest 53.46,13.43
step
  turnin Resting in Pieces##460 |goto Silverpine Forest 67.87,24.85
step
  talk Rahauro##11833
  turnin Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52 |tip {turninat}Thunder Bluff
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
  click Shallow Grave##1599
  accept The Hidden Niche##461 |goto Silverpine Forest 67.87,24.85
step
  only Mage
  talk Josef Gregorian##4576
  accept Spellfire Robes##1962 |goto Undercity 70.76,30.69
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  only Undead
  talk Gordon Wendham##4556
  turnin Ride to the Undercity##6323 |goto Undercity 61.49,41.79 |tip {turninat}Undercity
step
  turnin The Decrepit Ferry##438 |goto Silverpine Forest 58.44,34.9
step
  talk High Executor Hadrec##1952
  turnin Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
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
  talk Shadow Priest Allister##2121
  turnin Maps and Runes##478 |goto Silverpine Forest 43.98,40.93
step
  only Rogue
  talk Andron Gant##6522
  turnin The Deathstalkers##1898 |goto Undercity 54.81,76.33 |tip {turninat}Undercity
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  note Bring 6 Glutton Shackles and 3 Darksoul Shackles to Dalar Dawnweaver at the Sepulcher.
  collect 6 Glutton Shackle##3156 |q 423 |goto Silverpine Forest 46.54,28.93 |tip {dropsfrom}Moonrage Glutton
step
  click Corpse Laden Boat##1593
  accept Rot Hide Clues##439 |goto Silverpine Forest 58.44,34.9
step
  talk High Executor Hadrec##1952
  accept Rot Hide Ichor##443 |goto Silverpine Forest 43.42,40.86
step
  note Bring 8 bottles of rot hide ichor to Apothecary Renferrel at the Sepulcher.
  collect 8 Rot Hide Ichor##3236 |q 443 |goto Silverpine Forest 66.67,29.1 |tip {dropsfrom}Rot Hide Brute, Rot Hide Plague Weaver, Rot Hide Savage
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
  only Rogue
  talk Andron Gant##6522
  accept The Deathstalkers##1899 |goto Undercity 54.81,76.33
step
  only Rogue
  note Bring Andron's Ledger to Mennet Carkad in the Rogues' Quarter of Undercity.
  collect Andron's Ledger##7294 |q 1899 |goto Undercity 55.4,76.96 |tip {dropsfrom}Andron's Bookshelf
step
  talk High Executor Hadrec##1952
  accept Speak with Renferrel##3221 |goto Silverpine Forest 43.42,40.86
step
  talk Rane Yorick##1950
  turnin Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  only Mage
  talk Josef Gregorian##4576
  turnin Spellfire Robes##1962 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  turnin The Hidden Niche##461 |goto Silverpine Forest 65.36,24.81
step
  click Dusty Shelf##112888
  accept Wand to Bethor##491 |goto Silverpine Forest 65.36,24.81
step
  talk Apothecary Renferrel##1937
  turnin Speak with Renferrel##3221 |goto Silverpine Forest 42.8,40.86
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  turnin Rot Hide Clues##439 |goto Silverpine Forest 43.42,40.86
step
  talk Apothecary Renferrel##1937
  turnin Rot Hide Ichor##443 |goto Silverpine Forest 42.8,40.86
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##451 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Dalar Dawnweaver##1938
  turnin Dalar's Analysis##481 |goto Silverpine Forest 44.2,39.81
step
  only Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1899 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  note Kill Grimson the Pale and bring his head to Dalar Dawnweaver at the Sepulcher.
  collect Head of Grimson##3634 |q 424 |goto Silverpine Forest 58.58,44.86 |tip {dropsfrom}Grimson the Pale
step
  talk High Executor Hadrec##1952
  accept The Engraved Ring##440 |goto Silverpine Forest 43.42,40.86
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
  only Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1978 |goto Undercity 83.51,69.11
step
  talk Bethor Iceshard##1498
  turnin Rot Hide Origins##444 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  turnin Wand to Bethor##491 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  talk Magistrate Sevren##1499
  turnin The Engraved Ring##440 |goto Tirisfal Glades 61.26,50.84 |tip {turninat}Tirisfal Glades
step
  only Rogue
  talk Varimathras##2425
  turnin The Deathstalkers##1978 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
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
  collect 6 Pyrewood Shackle##3218 |q 99 |goto Silverpine Forest 45.68,73.01 |tip {dropsfrom}Pyrewood Watcher, Moonrage Watcher, Moonrage Sentry
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
  talk Apothecary Helbrim##3390
  turnin Sample for Helbrim##1358 |goto The Barrens 51.44,30.15 |tip {turninat}The Barrens
step
  talk Shadow Priest Allister##2121
  turnin Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  talk Shadow Priest Allister##2121
  accept The Weaver##480 |goto Silverpine Forest 43.98,40.93
step
  note Kill the Dalaran archmage, then retrieve his staff for Shadow Priest Allister at the Sepulcher.
  collect Ataeric's Staff##3515 |q 480 |goto Silverpine Forest 63.4,64.27 |tip {dropsfrom}Archmage Ataeric
step
  talk Shadow Priest Allister##2121
  turnin The Weaver##480 |goto Silverpine Forest 43.98,40.93
step
  note {travel}Ghostlands
  goto Ghostlands 47.34,29.26
]])
