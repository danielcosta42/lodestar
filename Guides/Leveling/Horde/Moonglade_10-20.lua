-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Moonglade (10-20)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Silverpine Forest (11-22)",
}, [[
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept A Lesson to Learn##27 |goto Thunder Bluff 76.48,27.22
step
  talk Bethor Iceshard##1498
  accept Thule Ravenclaw##446 |goto Undercity 84.07,17.45
step
  talk Cairne Bloodhoof##3057
  accept Rites of the Earthmother##776 |goto Thunder Bluff 60.3,51.68
step
  note Cairne Bloodhoof in Thunder Bluff wants you to bring him the Horn of Arra'chea.
  collect Horn of Arra'chea##4841 |q 776 |goto Mulgore 51.25,24.82 |tip {dropsfrom}Arra'chea
step
  talk Magatha Grimtotem##4046
  accept Forsaken Aid##1064 |goto Thunder Bluff 69.85,30.91
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Nara Wildmane##1490 |goto Thunder Bluff 78.62,28.56
step
  only Mage
  talk Anastasia Hartwell##4568
  accept Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03
step
  only Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment Coffers from behind Anastasia Hartwell. Bring 3 Filled Containment Coffers, the Chest of Containment Coffers and the Cantation of Manifestation to Anastasia in the Undercity.
  collect 3 Filled Containment Coffer##7292 |q 1960 |goto Undercity 85.14,10.03
step
  talk Rahauro##11833
  accept Searching for the Lost Satchel##5722 |goto Thunder Bluff 70.14,29.52
step
  talk Rahauro##11833
  accept Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6127 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  note Use the Empty Dreadmist Peak Sampler to draw a sample of water from a pool at the top of the peak.
  collect Filled Dreadmist Peak Sampler##15843 |q 6127 |goto The Barrens 48.4,18.89 |tip {dropsfrom}Dreadmist Peak Pool
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6130 |goto Moonglade 56.21,30.64
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
  talk Dendrite Starblaze##11802
  accept The Great Windborne Cat Spirit##98341 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dendrite Starblaze##11802
  accept To Thunder Bluff##98362 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept The Great Cat Spirit##98405 |goto Moonglade 56.21,30.64
step
  talk Apothecary Zamah##3419
  turnin Forsaken Aid##1064 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  talk Maur Grimtotem##11834
  turnin Searching for the Lost Satchel##5722 |goto Ragefire Chasm - Dungeon -1,-1 |tip {turninat}Ragefire Chasm - Dungeon
step
  talk Apothecary Renferrel##1937
  turnin Thule Ravenclaw##446 |goto Silverpine Forest 42.8,40.86 |tip {turninat}Silverpine Forest
step
  talk Clarice Foster##5543
  accept Until Death Do Us Part##264 |goto Thunder Bluff 27.2,24.4
step
  talk Neeru Fireblade##3216
  accept Ak'Zeloth##809 |goto Orgrimmar 49.47,50.59
step
  talk Apothecary Zamah##3419
  accept Serpentbloom##962 |goto Thunder Bluff 22.81,20.89
step
  note Apothecary Zamah in Thunder Bluff wants you to collect 10 Serpentbloom.
  collect 10 Serpentbloom##5339 |q 962 |goto The Barrens 47.62,33.51
step
  talk Zor Lonetree##4047
  accept The Spirits of Stonetalon##1061 |goto Orgrimmar 38.93,38.4
step
  talk Apothecary Zamah##3419
  accept Journey to Tarren Mill##1065 |goto Thunder Bluff 22.81,20.89
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
  talk Thrall##4949
  accept Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82
step
  talk Neeru Fireblade##3216
  accept Slaying the Beast##5761 |goto Orgrimmar 49.47,50.59
step
  note Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar.
  collect Taragaman the Hungerer's Heart##14540 |q 5761 |goto Ragefire Chasm - Dungeon -1,-1 |elite |tip {dropsfrom}Taragaman the Hungerer
step
  only Skyborne
  talk Thrall##4949
  accept Exploring the Horde##93739 |goto Orgrimmar 31.73,37.82
step
  talk Thra##268684
  accept Rocks to Rests##97326 |goto Orgrimmar 37.01,28.84
step
  note Return 8 Smooth Boulders to Thra behind Grommash Hold.
  collect Smooth Boulder##277952 |q 97326 |goto Orgrimmar 43.9,32.8
step
  only Skyborne
  talk Thrall##4949
  accept Journey to the Crossroads##98024 |goto Orgrimmar 31.73,37.82
step
  only Tauren Druid
  note Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear. When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.
  kill Great Bear Spirit##11956 |q 5930 |goto Moonglade 39.11,27.5
step
  only Skyborne
  note Speak with Nazgrel in Grommash Hold to receive further instructions. Use the instructions received to locate and speak with Vol'jin, Cairne Bloodhoof, and Lady Sylvanas Windrunner.
  talk Nazgrel##3230 |q 93739 |goto Orgrimmar 32.3,35.75
step
  note Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff.
  kill Ragefire Trogg##11318 |q 5723 |goto Ragefire Chasm - Dungeon -1,-1 |elite
step
  note Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar.
  kill Bazzalan##11519 |q 5728 |goto Ragefire Chasm - Dungeon -1,-1 |elite
step
  talk Avatar of Saeyleenan##272054
  turnin The Great Windborne Cat Spirit##98341 |goto Moonglade 44,73.6
step
  talk Master Apothecary Faranell##2055
  accept A Recipe For Death##450 |goto Undercity 48.82,69.28
step
  note Retrieve Apothecary Berard's journal from Pyrewood Village and take it to Apothecary Renferrel at the Sepulcher.
  collect Berard's Journal##3255 |q 450 |goto Silverpine Forest 42.98,73.18 |tip {dropsfrom}Berard's Bookshelf
step
  talk Apothecary Zinge##5204
  accept Sample for Helbrim##1358 |goto Undercity 50.14,67.97
step
  talk Avatar of Saeyleenan##272054
  accept The Great Windborne Cat Spirit##98404 |goto Moonglade 44,73.6
step
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Avatar of Saeyleenan.
  collect Relic of the Fang##280502 |q 98404 |goto Moonglade 44,73.6
step
  talk Avatar of Saeyleenan##272054
  accept Blessings of the Great Windborne Cat Spirit##98738 |goto Moonglade 44,73.6
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98405 |goto Moonglade 58.39,73.52
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  note Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.
  collect Astor's Letter of Introduction##7231 |q 1886 |goto Silverpine Forest 49.71,32.22 |tip {dropsfrom}Astor Hadren
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
  talk Varimathras##2425
  accept The Power to Destroy...##5725 |goto Undercity 56.25,92.2
step
  note Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity.
  collect Spells of Shadow##14395 |q 5725 |goto Ragefire Chasm - Dungeon -1,-1 |elite |tip {dropsfrom}Searing Blade Cultist, Searing Blade Warlock
step
  talk Thatog##268701
  accept Meal Appeal##97246 |goto Orgrimmar 55.68,72.1
step
  talk Borstan##3368
  accept Favorite Food##97249 |goto Orgrimmar 57.2,53.32
step
  talk Alessandro Luca##7683
  accept Prompt Potion Runner##97891 |goto Undercity 58.61,54.68
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  accept The Great Cat Spirit##98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit.
  collect Relic of the Fang##280502 |q 98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  accept Blessings of the Great Cat Spirit##98739 |goto Moonglade 58.39,73.52
step
  talk Cairne Bloodhoof##3057
  turnin Rites of the Earthmother##776 |goto Thunder Bluff 60.3,51.68 |tip {turninat}Thunder Bluff
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##27 |goto Moonglade 56.21,30.64
step
  only Mage
  talk Anastasia Hartwell##4568
  turnin Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  talk Ak'Zeloth##3521
  turnin Ak'Zeloth##809 |goto The Barrens 62.34,20.07 |tip {turninat}The Barrens
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  talk Apothecary Lydon##2216
  turnin Journey to Tarren Mill##1065 |goto Hillsbrad Foothills 61.44,19.06 |tip {turninat}Hillsbrad Foothills
step
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Windborne Cat Spirit##98738 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Cat Spirit##98739 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Turak Runetotem##3033
  turnin To Thunder Bluff##98362 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  talk Apothecary Helbrim##3390
  turnin Sample for Helbrim##1358 |goto The Barrens 51.44,30.15 |tip {turninat}The Barrens
step
  talk Nara Wildmane##5770
  turnin Nara Wildmane##1490 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Kor'geld##3348
  turnin Yelmak's Medley##97242 |goto Orgrimmar 56.05,34.12 |tip {turninat}Orgrimmar
step
  talk Rahauro##11833
  turnin Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52 |tip {turninat}Thunder Bluff
step
  only Skyborne
  talk Thork##3429
  turnin Journey to the Crossroads##98024 |goto The Barrens 51.5,30.87 |tip {turninat}The Barrens
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  turnin The Principal Source##6127 |goto The Barrens 52.26,31.93 |tip {turninat}The Barrens
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Power over Poison##6130 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  talk Whuut##11046
  turnin Whuut's the Rush##97275 |goto Orgrimmar 55.79,32.9 |tip {turninat}Orgrimmar
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##28 |goto Moonglade 56.21,30.64
step
  only Mage
  talk Anastasia Hartwell##4568
  accept Gathering Materials##1961 |goto Undercity 85.14,10.03
step
  only Mage
  note Bring 10 Linen Cloth and 6 Dalaran Mana Gems to Josef Gregorian.
  collect 10 Linen Cloth##2589 |q 1961 |goto Alterac Mountains 20.7,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Back to Thunder Bluff##5932 |goto Moonglade 56.21,30.64
step
  talk Neeru Fireblade##3216
  turnin Slaying the Beast##5761 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  turnin Until Death Do Us Part##264 |goto Silverpine Forest 44.19,42.67 |tip {turninat}Silverpine Forest
step
  talk Seereth Stonebreak##4049
  turnin The Spirits of Stonetalon##1061 |goto The Barrens 35.26,27.88 |tip {turninat}The Barrens
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
  talk Apothecary Zamah##3419
  turnin Serpentbloom##962 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  talk Apothecary Renferrel##1937
  turnin A Recipe For Death##450 |goto Silverpine Forest 42.8,40.86 |tip {turninat}Silverpine Forest
step
  only Rogue
  talk Shenthul##3401
  turnin Find the Shattered Hand##2378 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Zando'zan##3402
  turnin Zando'zan##2379 |goto Orgrimmar 42.73,52.95 |tip {turninat}Orgrimmar
step
  talk Thrall##4949
  turnin Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Migi##268682
  turnin Favorite Food##97249 |goto Orgrimmar 36.77,29.08 |tip {turninat}Orgrimmar
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
  only Tauren Druid
  note Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble.
  collect Shrine Of Remulos##15885 |q 28 |goto Moonglade 36,41.42
step
  talk Doctor Martin Felben##11044
  turnin Prompt Potion Runner##97891 |goto Undercity 46.61,74.09 |tip {turninat}Undercity
step
  talk Avatar of Saeyleenan##272054
  turnin The Great Windborne Cat Spirit##98404 |goto Moonglade 44,73.6
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98342 |goto Moonglade 58.39,73.52
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin Fenwick Thatros##1998 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  talk Varimathras##2425
  turnin The Power to Destroy...##5725 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1886 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  talk Borstan##3368
  turnin Meal Appeal##97246 |goto Orgrimmar 57.2,53.32 |tip {turninat}Orgrimmar
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1898 |goto Undercity 83.51,69.11
step
  only Mage
  talk Josef Gregorian##4576
  turnin Gathering Materials##1961 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Back to Thunder Bluff##5932 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Wrenix of Ratchet##2382 |goto The Barrens 63.07,36.32 |tip {turninat}The Barrens
step
  only Mage
  talk Josef Gregorian##4576
  accept Spellfire Robes##1962 |goto Undercity 70.76,30.69
step
  only Tauren Druid
  talk Tajarri##11799
  turnin Trial of the Lake##28 |goto Moonglade 36.52,40.1
step
  only Rogue
  talk Therzok##6446
  turnin The Shattered Hand##1858 |goto Orgrimmar 42.73,53.55 |tip {turninat}Orgrimmar
step
  talk Neeru Fireblade##3216
  turnin Hidden Enemies##5729 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  only Tauren Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##30 |goto Moonglade 36.52,40.1
step
  only Tauren Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 30 |goto Moonglade 36,41.42 |tip {dropsfrom}Shrine Of Remulos
step
  talk Neeru Fireblade##3216
  accept Hidden Enemies##5730 |goto Orgrimmar 49.47,50.59
step
  only Undead Rogue
  talk Andron Gant##6522
  turnin The Deathstalkers##1898 |goto Undercity 54.81,76.33 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Andron Gant##6522
  accept The Deathstalkers##1899 |goto Undercity 54.81,76.33
step
  only Undead Rogue
  note Bring Andron's Ledger to Mennet Carkad in the Rogues' Quarter of Undercity.
  collect Andron's Ledger##7294 |q 1899 |goto Undercity 55.4,76.96 |tip {dropsfrom}Andron's Bookshelf
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##30 |goto Moonglade 56.21,30.64
step
  only Mage
  talk Josef Gregorian##4576
  turnin Spellfire Robes##1962 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##31 |goto Moonglade 56.21,30.64
step
  talk Thrall##4949
  turnin Hidden Enemies##5730 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1899 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1978 |goto Undercity 83.51,69.11
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Aquatic Form##31 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Undead Rogue
  talk Varimathras##2425
  turnin The Deathstalkers##1978 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  note {travel}Silverpine Forest
  goto Silverpine Forest 44.2,39.81
]])
