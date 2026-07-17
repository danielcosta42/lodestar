-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Ghostlands (11-20)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Barrens (14-35)",
}, [[
step
  note {fp}Skymaster Sunwing
  goto Ghostlands 45.42,30.52 |tip {vendor}
step
  talk Zor Lonetree##4047
  accept The Spirits of Stonetalon##1061 |goto Orgrimmar 38.93,38.4
step
  talk Ranger Lethvalin##16213
  accept Help Ranger Valanna!##9145 |goto Ghostlands 45.48,32.45
step
  talk Apothecary Renzithen##16198
  accept The Plagued Coast##9149 |goto Ghostlands 47.66,34.86
step
  note Bring 6 Plagued Murloc Spines to Apothecary Renzithen in Tranquillien in the Ghostlands.
  collect 6 Plagued Murloc Spine##22579 |q 9149 |goto Ghostlands 18.26,24.87 |tip {dropsfrom}Zombified Grimscale, Withered Grimscale
step
  talk Magister Darenis##16199
  accept Salvaging the Past##9150 |goto Ghostlands 46.02,31.95
step
  note Magister Darenis wants you to travel to the Sanctum of the Moon to the west of Tranquillien and recover 8 Crystallized Mana Essences from the Arcane Devourers and Mana Shifters that inhabit the structure.
  collect Crystallized Mana Essence##22580 |q 9150 |goto Ghostlands 33.48,32.77 |tip {dropsfrom}Arcane Devourer, Mana Shifter
step
  talk Magister Darenis##16199
  accept The Sanctum of the Sun##9151 |goto Ghostlands 46.02,31.95
step
  talk Rathis Tomber##16224
  accept Tomber's Supplies##9152 |goto Ghostlands 47.24,28.57
step
  note Retrieve Rathis Tomber's Supplies and return it to him at Tranquillien in the Ghostlands.
  collect Rathis Tomber's Supplies##22583 |q 9152 |goto Ghostlands 33.55,26.55
step
  talk Deathstalker Rathiel##16200
  accept Down the Dead Scar##9155 |goto Ghostlands 46.02,33.57
step
  click Wanted Poster##181147
  accept Wanted: Knucklerot and Luzran##9156 |goto Ghostlands 48.35,31.67
step
  note Search the Ghostlands for Knucklerot and Luzran. Bring their heads to Deathstalker Rathiel in Tranquillien for a reward.
  kill Knucklerot##16246 |goto Ghostlands 40.58,48.51 |elite
  collect Knucklerot's Head##22894 |q 9156 |goto Ghostlands 40.58,48.51
step
  talk Dame Auriferous##16231
  accept Investigate An'daroth##9160 |goto Ghostlands 44.88,32.51
step
  talk Master Chef Mouldier##16253
  accept Culinary Crunch##9171 |goto Ghostlands 48.43,30.93
step
  note Collect 5 Crunchy Spider Legs and return them to Master Chef Mouldier at Tranquillien in the Ghostlands.
  collect 5 Crunchy Spider Leg##22644 |q 9171 |goto Duskwood 41.79,25.82 |tip {dropsfrom}Venom Web Spider, Tarantula, Greater Tarantula
step
  talk High Executor Mavren##16252
  accept Retaking Windrunner Spire##9173 |goto Ghostlands 44.77,32.45
step
  talk High Executor Mavren##16252
  accept Journey to Undercity##9177 |goto Ghostlands 44.77,32.45
step
  talk Deathstalker Maltendis##16251
  accept Trouble at the Underlight Mines##9192 |goto Ghostlands 44.75,32.28
step
  talk Deathstalker Maltendis##16251
  accept Troll Juju##9199 |goto Ghostlands 44.75,32.28
step
  note Collect 8 Troll Juju and return them to Deathstalker Maltendis at Tranquillien in the Ghostlands.
  collect 8 Troll Juju##22633 |q 9199 |goto Ghostlands 62.78,29.46 |tip {dropsfrom}Mummified Headhunter, Shadowpine Oracle
step
  talk Magistrix Aminel##16205
  accept Rotting Hearts##9216 |goto Ghostlands 48.92,31.31
step
  note Bring back 10 Rotting Hearts to Magistrix Aminel in Tranquillien.
  collect Rotting Heart##22641 |q 9216 |goto Ghostlands 39.2,35.65 |tip {dropsfrom}Risen Hungerer, Risen Stalker
step
  talk Magistrix Aminel##16205
  accept Spinal Dust##9218 |goto Ghostlands 48.92,31.31
step
  note Bring back 10 Spinal Dusts to Magistrix Aminel in Tranquillien.
  collect Spinal Dust##22642 |q 9218 |goto Ghostlands 41.19,23.14 |tip {dropsfrom}Dreadbone Skeleton, Dreadbone Sentinel, Deathcage Scryer
step
  only BloodElf
  talk Arcanist Vandril##16197
  accept The Forsaken##9327 |goto Ghostlands 46.55,28.38
step
  talk Arcanist Vandril##16197
  accept The Forsaken##9329 |goto Ghostlands 46.55,28.38
step
  only Mage
  talk Arcanist Vandril##16197
  accept Arcane Reavers##9487 |goto Ghostlands 46.55,28.38
step
  only Mage
  note Arcanist Vandril wants you to collect 10 Arcane Fragments for him.
  collect 10 Arcane Fragment##23706 |q 9487 |goto Ghostlands 78.57,19.87 |tip {dropsfrom}Arcane Reaver
step
  note Slay 10 Risen Hungerers and 10 Gangled Cannibals on the Dead Scar. Return to Deathstalker Rathiel in Tranquillien for a reward.
  kill Risen Hungerer##16301 |q 9155 |goto Ghostlands 39.2,35.65
step
  talk Magatha Grimtotem##4046
  accept Forsaken Aid##1064 |goto Thunder Bluff 69.85,30.91
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Nara Wildmane##1490 |goto Thunder Bluff 78.62,28.56
step
  talk Rahauro##11833
  accept Searching for the Lost Satchel##5722 |goto Thunder Bluff 70.14,29.52
step
  talk Farstrider Sedina##16202
  accept Bearers of the Plague##9158 |goto Ghostlands 72.49,32.14
step
  talk Ranger Vynna##16203
  accept The Traitor's Shadow##9161 |goto Ghostlands 71.96,32.64
step
  talk Captain Helios##16220
  accept Shadowpine Weaponry##9214 |goto Ghostlands 72.37,29.64
step
  note Collect 3 Headhunter Axes, 3 Shadowcaster Maces, 3 Catlord Claws and 3 Hexxer Staves. Return them to Captain Helios at Farstrider Enclave in the Ghostlands.
  collect 3 Headhunter Axe##23165 |q 9214 |goto Ghostlands 77.03,39.75 |tip {dropsfrom}Shadowpine Headhunter
step
  click Wanted Poster: Kel'gash the Wicked##181153
  accept Bring Me Kel'gash's Head!##9215 |goto Ghostlands 72.23,31.15
step
  note Return the Head of Kel'gash the Wicked to Captain Helios at the Farstrider Enclave in the Ghostlands.
  kill Kel'gash the Wicked##16358 |goto Ghostlands 65.29,79.46 |elite
  collect Head of Kel'gash the Wicked##22640 |q 9215 |goto Ghostlands 65.29,79.46
step
  talk Ranger Krenn'an##16462
  accept Spirits of the Drowned##9274 |goto Ghostlands 72.21,29.78
step
  talk Apothecary Venustus##16464
  accept A Little Dash of Seasoning##9275 |goto Ghostlands 72.61,31.57
step
  talk Farstrider Solanna##16463
  accept Attack on Zeb'Tela##9276 |goto Ghostlands 72.33,31.25
step
  only Rogue
  talk Zelanis##16684
  accept A Discreet Inquiry##10372 |goto Silvermoon City 79.71,52.16
step
  note Kill 8 Shadowpine Shadowcasters and 8 Shadowpine Headhunters, and return to Farstrider Solanna at Farstrider Enclave in the Ghostlands.
  kill Shadowpine Shadowcaster##16469 |q 9276 |goto Ghostlands 76.98,40.06
step
  talk Ranger Valanna##16219
  turnin Help Ranger Valanna!##9145 |goto Ghostlands 69.4,15.18
step
  turnin The Traitor's Shadow##9161 |goto Ghostlands 79.63,17.56
step
  talk Bethor Iceshard##1498
  accept Thule Ravenclaw##446 |goto Undercity 84.07,17.45
step
  only Mage
  talk Anastasia Hartwell##4568
  accept Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03
step
  only Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment Coffers from behind Anastasia Hartwell. Bring 3 Filled Containment Coffers, the Chest of Containment Coffers and the Cantation of Manifestation to Anastasia in the Undercity.
  collect 3 Filled Containment Coffer##7292 |q 1960 |goto Undercity 85.14,10.03
step
  talk Ranger Valanna##16219
  accept Dealing with Zeb'Sora##9143 |goto Ghostlands 69.4,15.18
step
  note Collect 6 Zeb'Sora Troll Ears and return them to Ranger Valanna in the Ghostlands.
  collect 6 Zeb'Sora Troll Ear##22639 |q 9143 |goto Ghostlands 75.85,10.94 |tip {dropsfrom}Shadowpine Ripper, Shadowpine Witch
step
  talk Geranis Whitemorn##16201
  accept Forgotten Rituals##9157 |goto Ghostlands 72.29,19.1
step
  note Bring 8 Wavefront Medallions to Geranis Whitemorn in the Ghostlands.
  collect 8 Wavefront Medallion##22674 |q 9157 |goto Ghostlands 71.99,22.01 |tip {dropsfrom}Glistening Mud
step
  click Dusty Journal##181150
  accept Hints of the Past##9162 |goto Ghostlands 79.63,17.56
step
  note Ranger Krenn'an, at the Farstrider Enclave in the Ghostlands, wants you to kill 8 Vengeful Apparitions and 8 Ravening Apparitions in the nearby lake.
  kill Ravening Apparition##16327 |q 9274 |goto Ghostlands 71.8,21.26
step
  talk Apothecary Zamah##3419
  turnin Forsaken Aid##1064 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  talk Maur Grimtotem##11834
  turnin Searching for the Lost Satchel##5722 |goto Ragefire Chasm - Dungeon -1,-1 |tip {turninat}Ragefire Chasm - Dungeon
step
  talk Apothecary Zamah##3419
  accept Serpentbloom##962 |goto Thunder Bluff 22.81,20.89
step
  note Apothecary Zamah in Thunder Bluff wants you to collect 10 Serpentbloom.
  collect 10 Serpentbloom##5339 |q 962 |goto Thunder Bluff 22.81,20.89
step
  talk Apothecary Zamah##3419
  accept Journey to Tarren Mill##1065 |goto Thunder Bluff 22.81,20.89
step
  only BloodElf Rogue
  talk Keltus Darkleaf##17224
  accept Combining Forces##9460 |goto Ghostlands 32.98,11.17
step
  only BloodElf Rogue
  note Keltus Darkleaf wants you to pickpocket the Lacy Handkerchief from the Sentinel Leader and bring it to him.
  collect Lacy Handkerchief##23686 |q 9460 |goto Ghostlands 32.98,11.17
step
  note Investigate the area at An'daroth, kill 12 Sentinel Spies and then return to Dame Auriferous at Tranquillien in the Ghostlands.
  kill Sentinel Spy##16330 |q 9160 |goto Ghostlands 37.27,14.56
step
  talk Thrall##4949
  accept Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82
step
  kill Fallen Ranger##16314 |goto Ghostlands 13.68,56.73 |tip Loot the quest item here — it starts the quest.
  accept The Lady's Necklace##9175 |goto Ghostlands 13.68,56.73
step
  talk Apprentice Shatharia##16293
  accept Underlight Ore Samples##9207 |goto Ghostlands 31.43,48.33
step
  note Collect 6 Underlight Ore and deliver them to Magister Quallestis at the Sanctum of the Sun in the Ghostlands.
  collect 6 Underlight Ore##22634 |q 9207 |goto Ghostlands 29.25,49.58 |tip {dropsfrom}Blackpaw Gnoll, Blackpaw Scavenger, Blackpaw Shaman
step
  note Slay 8 Deatholme Acolytes and 10 Fallen Rangers, and return to High Executor Mavren at Tranquillien in the Ghostlands.
  kill Deatholme Acolyte##16315 |q 9173 |goto Ghostlands 12.43,57.09
step
  note Slay 8 Blackpaw Gnolls, 6 Blackpaw Scavengers and 4 Blackpaw Shaman, and return to Deathstalker Maltendis at Tranquillien in the Ghostlands.
  kill Blackpaw Gnoll##16334 |q 9192 |goto Ghostlands 29.25,49.58
step
  talk Lady Sylvanas Windrunner##10181
  turnin Journey to Undercity##9177 |goto Undercity 58.05,91.79 |tip {turninat}Undercity
step
  talk Varimathras##2425
  accept The Power to Destroy...##5725 |goto Undercity 56.25,92.2
step
  note Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity.
  collect The Power to Destroy...##14395 |q 5725 |goto Undercity 56.25,92.2
step
  talk Apprentice Vor'el##16480
  accept Clearing the Way##9281 |goto Ghostlands 46.4,56.42
step
  talk Magister Idonis##16204
  turnin The Sanctum of the Sun##9151 |goto Ghostlands 54.87,48.55
step
  talk Magister Quallestis##16291
  turnin Underlight Ore Samples##9207 |goto Ghostlands 54.95,48.49
step
  only Rogue
  talk Mennet Carkad##6467
  accept Fenwick Thatros##1998 |goto Undercity 83.51,69.11
step
  only Rogue
  note Kill Fenwick Thatros and bring his head back to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Fenwick's Head##7306 |q 1998 |goto Silverpine Forest 59.58,33.94 |tip {dropsfrom}Fenwick Thatros
step
  only Rogue
  talk Mennet Carkad##6467
  accept Find the Shattered Hand##2378 |goto Undercity 83.51,69.11
step
  talk Neeru Fireblade##3216
  accept Hidden Enemies##5730 |goto Orgrimmar 49.47,50.59
step
  talk Neeru Fireblade##3216
  accept Slaying the Beast##5761 |goto Orgrimmar 49.47,50.59
step
  note Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar.
  collect Slaying the Beast##14540 |q 5761 |goto Orgrimmar 49.47,50.59
step
  talk Magister Idonis##16204
  accept War on Deatholme##9220 |goto Ghostlands 54.87,48.55
step
  talk Magister Kaendris##16239
  accept The Farstrider Enclave##9282 |goto Ghostlands 55.07,48.83
step
  note Poison the Troll foodstuff at the camps in Zeb'Nowa and then return to Apothecary Venustus at the Farstrider Enclave in the Ghostlands.
  collect Raw Meat Rack##181250 |q 9275 |goto Ghostlands 65.11,66.74
step
  talk Magistrix Aminel##16205
  turnin Rotting Hearts##9216 |goto Ghostlands 48.92,31.31
step
  talk Magistrix Aminel##16205
  turnin Spinal Dust##9218 |goto Ghostlands 48.92,31.31
step
  only Rogue
  talk Eralan##16268
  turnin A Discreet Inquiry##10372 |goto Ghostlands 47.2,34.31
step
  only Mage
  talk Arcanist Vandril##16197
  turnin Arcane Reavers##9487 |goto Ghostlands 46.55,28.38
step
  talk Seereth Stonebreak##4049
  turnin The Spirits of Stonetalon##1061 |goto The Barrens 35.26,27.88 |tip {turninat}The Barrens
step
  talk Apothecary Renzithen##16198
  turnin The Plagued Coast##9149 |goto Ghostlands 47.66,34.86
step
  talk Magister Darenis##16199
  turnin Salvaging the Past##9150 |goto Ghostlands 46.02,31.95
step
  talk Rathis Tomber##16224
  turnin Tomber's Supplies##9152 |goto Ghostlands 47.24,28.57
step
  talk Apothecary Renferrel##1937
  turnin Thule Ravenclaw##446 |goto Silverpine Forest 42.8,40.86 |tip {turninat}Silverpine Forest
step
  talk Deathstalker Rathiel##16200
  turnin Down the Dead Scar##9155 |goto Ghostlands 46.02,33.57
step
  talk Deathstalker Rathiel##16200
  turnin Wanted: Knucklerot and Luzran##9156 |goto Ghostlands 46.02,33.57
step
  talk Dame Auriferous##16231
  turnin Investigate An'daroth##9160 |goto Ghostlands 44.88,32.51
step
  talk Master Chef Mouldier##16253
  turnin Culinary Crunch##9171 |goto Ghostlands 48.43,30.93
step
  talk High Executor Mavren##16252
  turnin Retaking Windrunner Spire##9173 |goto Ghostlands 44.77,32.45
step
  talk High Executor Mavren##16252
  turnin The Lady's Necklace##9175 |goto Ghostlands 44.77,32.45
step
  talk Deathstalker Maltendis##16251
  turnin Trouble at the Underlight Mines##9192 |goto Ghostlands 44.75,32.28
step
  talk Deathstalker Maltendis##16251
  turnin Troll Juju##9199 |goto Ghostlands 44.75,32.28
step
  only BloodElf
  talk High Executor Mavren##16252
  turnin The Forsaken##9327 |goto Ghostlands 44.77,32.45
step
  talk High Executor Mavren##16252
  turnin The Forsaken##9329 |goto Ghostlands 44.77,32.45
step
  only BloodElf
  talk Quartermaster Lymel##16187
  accept Goods from Silvermoon City##9130 |goto Ghostlands 47.34,29.26
step
  talk Dame Auriferous##16231
  accept Into Occupied Territory##9163 |goto Ghostlands 44.88,32.51
step
  note Steal the Night Elf Plans: An'daroth, Night Elf Plans: An'owyn and Night Elf Plans: Scrying on the Sin'dorei, and return them to Dame Auriferous at Tranquillien in the Ghostlands.
  collect Night Elf Plans: An'daroth##22590 |q 9163 |goto Ghostlands 13.69,26.84
step
  talk High Executor Mavren##16252
  accept Journey to Undercity##9180 |goto Ghostlands 44.77,32.45
step
  only Mage
  talk Arcanist Vandril##16197
  accept A Simple Robe##9488 |goto Ghostlands 46.55,28.38
step
  only Mage
  note Arcanist Vandril wants you to bring him 15 Linen Cloth and a Spindleweb Silk Gland.
  collect Linen Cloth##2589 |q 9488 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Kobold Miner, Mine Spider
step
  only Rogue
  talk Eralan##16268
  accept Greed##9491 |goto Ghostlands 47.2,34.31
step
  only Rogue
  note Eralan in Tranquillien wants you to retrieve the Pitted Gold Band from the Amani Catacombs.
  collect Pitted Gold Band##23717 |q 9491 |goto Ghostlands 63.52,28.92 |tip {dropsfrom}Burial Chest
step
  talk High Executor Mavren##16252
  accept Return to Arcanist Vandril##9758 |goto Ghostlands 44.77,32.45
step
  note Farstrider Sedina at the Farstrider Enclave in the Ghostlands wants you to slay 10 Ghostclaw Lynxes.
  kill Ghostclaw Lynx##16348 |q 9158 |goto Ghostlands 66.7,41.41
step
  talk Ranger Krenn'an##16462
  turnin Spirits of the Drowned##9274 |goto Ghostlands 72.21,29.78
step
  talk Apothecary Venustus##16464
  turnin A Little Dash of Seasoning##9275 |goto Ghostlands 72.61,31.57
step
  talk Farstrider Solanna##16463
  turnin Attack on Zeb'Tela##9276 |goto Ghostlands 72.33,31.25
step
  talk Farstrider Sedina##16202
  turnin Bearers of the Plague##9158 |goto Ghostlands 72.49,32.14
step
  talk Ranger Vynna##16203
  turnin The Farstrider Enclave##9282 |goto Ghostlands 71.96,32.64
step
  talk Ranger Vynna##16203
  turnin Hints of the Past##9162 |goto Ghostlands 71.96,32.64
step
  talk Nara Wildmane##5770
  turnin Nara Wildmane##1490 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Captain Helios##16220
  turnin Shadowpine Weaponry##9214 |goto Ghostlands 72.37,29.64
step
  talk Captain Helios##16220
  turnin Bring Me Kel'gash's Head!##9215 |goto Ghostlands 72.37,29.64
step
  talk Farstrider Sedina##16202
  accept Curbing the Plague##9159 |goto Ghostlands 72.49,32.14
step
  talk Ranger Vynna##16203
  accept Report to Magister Kaendris##9172 |goto Ghostlands 71.96,32.64
step
  talk Farstrider Solanna##16463
  accept Assault on Zeb'Nowa##9277 |goto Ghostlands 72.33,31.25
step
  only Mage
  talk Anastasia Hartwell##4568
  turnin Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  talk Ranger Valanna##16219
  turnin Dealing with Zeb'Sora##9143 |goto Ghostlands 69.4,15.18
step
  talk Geranis Whitemorn##16201
  turnin Forgotten Rituals##9157 |goto Ghostlands 72.29,19.1
step
  talk Ranger Valanna##16219
  accept Report to Captain Helios##9146 |goto Ghostlands 69.4,15.18
step
  talk Geranis Whitemorn##16201
  accept Vanquishing Aquantion##9174 |goto Ghostlands 72.29,19.1
step
  note Geranis Whitemorn wants you to swim to the bottom of the lake east of Suncrown Village and use the Bundle of Medallions on the Altar of Tidal Mastery. Summon and slay the elemental known as Aquantion and return to Geranis.
  kill Aquantion##16292 |q 9174
step
  talk Apothecary Lydon##2216
  turnin Journey to Tarren Mill##1065 |goto Hillsbrad Foothills 61.44,19.06 |tip {turninat}Hillsbrad Foothills
step
  talk Apothecary Zamah##3419
  turnin Serpentbloom##962 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  only BloodElf Rogue
  talk Keltus Darkleaf##17224
  turnin Combining Forces##9460 |goto Ghostlands 32.98,11.17
step
  only BloodElf Rogue
  talk Keltus Darkleaf##17224
  accept Return the Reports##9618 |goto Ghostlands 32.98,11.17
step
  note Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar.
  kill Bazzalan##11519 |q 5728 |goto Ragefire Chasm - Dungeon -1,-1 |elite
step
  talk Thrall##4949
  turnin Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Thrall##4949
  turnin Hidden Enemies##5730 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  note Apprentice Vor'el at Andilien Estate in the Ghostlands wants you to slay 10 Greater Spindlewebs and 10 Ghostclaw Ravagers.
  kill Greater Spindleweb##16352 |q 9281 |goto Ghostlands 26.95,61.38
step
  talk Apprentice Vor'el##16480
  turnin Clearing the Way##9281 |goto Ghostlands 46.4,56.42
step
  only Rogue
  talk Shenthul##3401
  turnin Find the Shattered Hand##2378 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  talk Lady Sylvanas Windrunner##10181
  turnin Journey to Undercity##9180 |goto Undercity 58.05,91.79 |tip {turninat}Undercity
step
  talk Varimathras##2425
  turnin The Power to Destroy...##5725 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  only Rogue
  talk Shenthul##3401
  accept Zando'zan##2379 |goto Orgrimmar 43.05,53.74
step
  note Slay 5 Eyes of Dar'khan, 6 Nerubis Centurions and 6 Wailers in Deatholme and return to Magister Idonis at the Sanctum of the Sun in the Ghostlands.
  kill Eye of Dar'Khan##16320 |q 9220 |goto Ghostlands 33.28,82.35
step
  talk Neeru Fireblade##3216
  turnin Slaying the Beast##5761 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  talk Magister Idonis##16204
  turnin War on Deatholme##9220 |goto Ghostlands 54.87,48.55
step
  only Rogue
  talk Mennet Carkad##6467
  turnin Fenwick Thatros##1998 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  talk Magister Kaendris##16239
  turnin Report to Magister Kaendris##9172 |goto Ghostlands 55.07,48.83
step
  talk Magister Idonis##16204
  accept Dar'Khan's Lieutenants##9170 |goto Ghostlands 54.87,48.55
step
  talk Magister Kaendris##16239
  accept The Twin Ziggurats##9176 |goto Ghostlands 55.07,48.83
step
  note Travel to the Bleeding Ziggurat and the Howling Ziggurat and recover the Stone of Light and the Stone of Flame. Return to Magister Kaendris at the Sanctum of the Sun after recovering the items.
  collect Stone of Flame##22599 |q 9176 |goto Ghostlands 40.37,49.75 |tip {dropsfrom}Worn Chest
step
  talk Arcanist Janeda##16240
  accept A Restorative Draught##9877 |goto Ghostlands 54.83,48.35
step
  note Kill 10 Shadowpine Catlords and 10 Shadowpine Hexxers, and return to Farstrider Solanna at the Farstrider Enclave in the Ghostlands.
  kill Shadowpine Catlord##16345 |q 9277 |goto Ghostlands 65.06,66.84
step
  only Mage
  talk Arcanist Vandril##16197
  turnin A Simple Robe##9488 |goto Ghostlands 46.55,28.38
step
  only Rogue
  talk Eralan##16268
  turnin Greed##9491 |goto Ghostlands 47.2,34.31
step
  talk Apothecary Renzithen##16198
  turnin A Restorative Draught##9877 |goto Ghostlands 47.66,34.86
step
  talk Arcanist Vandril##16197
  turnin Return to Arcanist Vandril##9758 |goto Ghostlands 46.55,28.38
step
  only BloodElf
  talk Skymaster Sunwing##16189
  turnin Goods from Silvermoon City##9130 |goto Ghostlands 45.42,30.52
step
  talk Dame Auriferous##16231
  turnin Into Occupied Territory##9163 |goto Ghostlands 44.88,32.51
step
  only BloodElf
  talk Skymaster Sunwing##16189
  accept Fly to Silvermoon City##9133 |goto Ghostlands 45.42,30.52
step
  talk Arcanist Vandril##16197
  accept Suncrown Village##9138 |goto Ghostlands 46.55,28.38
step
  talk Apothecary Renzithen##16198
  accept Captives at Deatholme##9164 |goto Ghostlands 47.66,34.86
step
  talk Dame Auriferous##16231
  accept Deliver the Plans to An'telas##9166 |goto Ghostlands 44.88,32.51
step
  only Rogue
  talk Eralan##16268
  accept The Sad Truth##10548 |goto Ghostlands 47.2,34.31
step
  only Rogue
  note Eralan in Tranquillien wants you to retrieve the Archeologist's Shrunken Head from one of the chests in Zeb'Tela or Zeb'Nowa.
  collect Archeologist's Shrunken Head##30503 |q 10548 |goto Ghostlands 75.03,46.98 |tip {dropsfrom}Primitive Chest
step
  note Farstrider Sedina at the Farstrider Enclave in the Ghostlands wants you to slay 8 Spindleweb Lurkers and 10 Vampiric Mistbats.
  kill Vampiric Mistbat##16354 |q 9159 |goto Ghostlands 48.43,41.43
step
  talk Magister Sylastor##16237
  turnin Deliver the Plans to An'telas##9166 |goto Ghostlands 60.29,35.63
step
  talk Magister Sylastor##16237
  accept Deactivate An'owyn##9169 |goto Ghostlands 60.29,35.63
step
  only BloodElf Rogue
  talk Zelanis##16684
  turnin Return the Reports##9618 |goto Silvermoon City 79.71,52.16 |tip {turninat}Silvermoon City
step
  talk Captain Helios##16220
  turnin Report to Captain Helios##9146 |goto Ghostlands 72.37,29.64
step
  talk Farstrider Sedina##16202
  turnin Curbing the Plague##9159 |goto Ghostlands 72.49,32.14
step
  talk Farstrider Solanna##16463
  turnin Assault on Zeb'Nowa##9277 |goto Ghostlands 72.33,31.25
step
  talk Geranis Whitemorn##16201
  turnin Vanquishing Aquantion##9174 |goto Ghostlands 72.29,19.1
step
  talk Dying Blood Elf##16601
  accept Anok'suten##9315 |goto Ghostlands 57.55,14.92
step
  note Slay 10 Nerubis Guards and then return to Arcanist Vandril at Tranquillien in the Ghostlands.
  kill Nerubis Guard##16313 |q 9138 |goto Ghostlands 62.27,10.48
step
  note Slay Anok'suten and return to Arcanist Vandril at Tranquillien in the Ghostlands.
  kill Anok'suten##16357 |q 9315 |goto Ghostlands 59.65,13.28 |elite
step
  only BloodElf
  talk Sathren Azuredawn##16191
  turnin Fly to Silvermoon City##9133 |goto Silvermoon City 53.93,71.02 |tip {turninat}Silvermoon City
step
  only Rogue
  talk Zando'zan##3402
  turnin Zando'zan##2379 |goto Orgrimmar 42.73,52.95 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Zando'zan##3402
  accept Wrenix of Ratchet##2382 |goto Orgrimmar 42.73,52.95
step
  note Take Renzithen's Restorative Draught to Deatholme and rescue Apprentice Varnis, Apothecary Enith and Ranger Vedoran. Return to Arcanist Janeda at the Sanctum of the Sun for a reward.
  kill Apothecary Enith##16208 |q 9164 |goto Ghostlands 32.13,73.93
step
  note Retrieve the Crystal Controlling Orb and then use it to deactivate the Night Elf Moon Crystal at An'owyn. Then return to Magister Sylastor at An'telas in the Ghostlands.
  collect Night Elf Moon Crystal##181359 |q 9169 |goto Ghostlands 58.17,65.14
step
  note Magister Idonis wants you to venture into Deatholme to slay Masophet the Black, Jurion the Deceiver, Borgoth the Bloodletter and Mirdoran the Fallen. Report back to him in the Sanctum of the Sun in the Ghostlands after you've completed this task.
  kill Mirdoran the Fallen##16250 |q 9170 |goto Ghostlands 37.36,79.33
step
  talk Arcanist Janeda##16240
  turnin Captives at Deatholme##9164 |goto Ghostlands 54.83,48.35
step
  talk Magister Idonis##16204
  turnin Dar'Khan's Lieutenants##9170 |goto Ghostlands 54.87,48.55
step
  talk Magister Kaendris##16239
  turnin The Twin Ziggurats##9176 |goto Ghostlands 55.07,48.83
step
  talk Magister Kaendris##16239
  accept The Traitor's Destruction##9167 |goto Ghostlands 55.07,48.83
step
  note Slay Dar'Khan Drathir inside Deatholme and bring his head to Magister Kaendris at the Sanctum of the Sun in the Ghostlands.
  kill Dar'Khan Drathir##16329 |goto Ghostlands 33.04,81.26 |elite
  collect Dar'Khan's Head##22653 |q 9167 |goto Ghostlands 33.04,81.26
step
  talk Arcanist Vandril##16197
  turnin Suncrown Village##9138 |goto Ghostlands 46.55,28.38
step
  only Rogue
  talk Eralan##16268
  turnin The Sad Truth##10548 |goto Ghostlands 47.2,34.31
step
  talk Arcanist Vandril##16197
  turnin Anok'suten##9315 |goto Ghostlands 46.55,28.38
step
  talk Arcanist Vandril##16197
  accept Goldenmist Village##9139 |goto Ghostlands 46.55,28.38
step
  only Rogue
  talk Wrenix the Wretched##7161
  turnin Wrenix of Ratchet##2382 |goto The Barrens 63.07,36.32 |tip {turninat}The Barrens
step
  talk Magister Sylastor##16237
  turnin Deactivate An'owyn##9169 |goto Ghostlands 60.29,35.63
step
  note Defeat 6 Quel'dorei Ghosts and 4 Quel'dorei Wraiths at Goldenmist Village, and then return to Arcanist Vandril at Tranquillien in the Ghostlands.
  kill Quel'dorei Ghost##16325 |q 9139 |goto Ghostlands 27.07,15.6
step
  talk Magister Kaendris##16239
  turnin The Traitor's Destruction##9167 |goto Ghostlands 55.07,48.83
step
  only BloodElf
  talk Magister Kaendris##16239
  accept Hero of the Sin'dorei##9328 |goto Ghostlands 55.07,48.83
step
  talk Magister Kaendris##16239
  accept Friend of the Sin'dorei##9811 |goto Ghostlands 55.07,48.83
step
  talk Arcanist Vandril##16197
  turnin Goldenmist Village##9139 |goto Ghostlands 46.55,28.38
step
  talk Arcanist Vandril##16197
  accept Windrunner Village##9140 |goto Ghostlands 46.55,28.38
step
  note Gather 6 Phantasmal Substance and 4 Gargoyle Fragments. Return them to Arcanist Vandril at Tranquillien in the Ghostlands.
  collect 6 Phantasmal Substance##22566 |q 9140 |goto Ghostlands 17.68,44.72 |tip {dropsfrom}Phantasmal Seeker
step
  talk Lor'themar Theron##16802
  turnin Friend of the Sin'dorei##9811 |goto Silvermoon City 53.8,20.23 |tip {turninat}Silvermoon City
step
  only BloodElf
  talk Lor'themar Theron##16802
  turnin Hero of the Sin'dorei##9328 |goto Silvermoon City 53.8,20.23 |tip {turninat}Silvermoon City
step
  talk Arcanist Vandril##16197
  turnin Windrunner Village##9140 |goto Ghostlands 46.55,28.38
step
  note {travel}The Barrens
  goto The Barrens 61.38,21.12
]])
