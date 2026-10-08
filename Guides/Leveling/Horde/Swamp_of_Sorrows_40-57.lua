-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Swamp of Sorrows (40-57)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Un'Goro Crater (52-55)",
}, [[
step
  note {fp}Hekkru
  goto Swamp of Sorrows 45.56,55.15 |tip {vendor}
step
  click A Soggy Scroll##2553
  accept Cortello's Riddle##625 |goto Swamp of Sorrows 22.87,48.19
step
  talk Magtoor##1776
  accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  note Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
  collect 6 Draenethyst Crystal##6071 |q 1389 |goto Swamp of Sorrows 62.08,22.85 |tip {dropsfrom}Draenethyst Crystals
step
  only Shaman
  talk Beram Skychaser##3032
  accept Elemental Mastery##8410 |goto Thunder Bluff 21.99,18.8
step
  only Shaman
  note Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
  collect Elemental Air##7069 |q 8410 |goto Westfall 42.75,49.32 |tip {dropsfrom}Dust Devil, Thundering Exile, Cyclonian
step
  talk Dar##5591
  accept Lack of Surplus##698 |goto Swamp of Sorrows 44.7,57.21
step
  note Bring 8 Unprepared Sawtooth Flanks to Tok'Kar in Swamp of Sorrows.
  collect 8 Unprepared Sawtooth Flank##6169 |q 698 |goto Swamp of Sorrows 56.53,41.34 |tip {dropsfrom}Sawtooth Crocolisk, Sawtooth Snapper
step
  talk Innkeeper Gryshka##6929
  accept Assisting Arch Druid Runetotem##936 |goto Orgrimmar 54.1,68.41
step
  kill Noboru the Cudgel##5477 |goto Swamp of Sorrows 54.9,34.1 |tip Loot the quest item here — it starts the quest.
  accept Noboru the Cudgel##1392 |goto Swamp of Sorrows 54.9,34.1
step
  talk Helgrum the Swift##1442
  accept Neeka Bloodscar##1418 |goto Swamp of Sorrows 47.74,55.2
step
  talk Fel'zerul##1443
  accept Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  note Fel'zerul in Stonard wants you to gather 10 Atal'ai Artifacts.
  collect 10 Atal'ai Artifact##6175 |q 1424 |goto Swamp of Sorrows 70.64,53.87
step
  talk Dar##5591
  accept Fresh Meat##1430 |goto Swamp of Sorrows 44.7,57.21
step
  note Bring 10 Monstrous Crawler Legs to Dar in the Swamp of Sorrows.
  collect 10 Monstrous Crawler Leg##6184 |q 1430 |goto Swamp of Sorrows 95,58 |tip {dropsfrom}Monstrous Crawler
step
  talk Fel'zerul##1443
  accept The Temple of Atal'Hakkar##1445 |goto Swamp of Sorrows 47.93,54.78
step
  note Collect 20 Fetishes of Hakkar and bring them to Fel'Zerul in Stonard.
  collect 20 Fetish of Hakkar##6181 |q 1445 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Cursed Atal'ai, Atal'ai Warrior, Atal'ai Witch Doctor
step
  talk Sage Truthseeker##3978
  accept Portents of Uldum##2965 |goto Thunder Bluff 34.4,46.87
step
  talk Nara Wildmane##5770
  accept A Future Task##2968 |goto Thunder Bluff 75.65,31.61
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Un'Goro Soil##3761 |goto Thunder Bluff 78.62,28.56
step
  note Bring 20 Un'Goro Soil samples to Ghede on the Elder Rise of Thunder Bluff.
  collect 20 Un'Goro Soil##11018 |q 3761 |goto Un'Goro Crater 48.9,53.16 |tip {dropsfrom}Un'Goro Dirt Pile
step
  talk Innkeeper Pala##6746
  accept Assisting Arch Druid Runetotem##3762 |goto Thunder Bluff 45.81,64.71
step
  talk Innkeeper Norman##6741
  accept Assisting Arch Druid Runetotem##3784 |goto Undercity 67.74,37.89
step
  talk Harbinger Balthazad##10879
  accept A Call to Arms: The Plaguelands!##5094 |goto Undercity 63.9,44.08
step
  talk Bluff Runner Windstrider##10881
  accept A Call to Arms: The Plaguelands!##5095 |goto Thunder Bluff 44.33,58.76
step
  only Warlock
  talk Greshka##12807
  accept Mor'zul Bloodbringer##7562 |goto Swamp of Sorrows 48.58,55.27
step
  turnin Cortello's Riddle##625 |goto Dustwallow Marsh 31.11,66.14 |tip {turninat}Dustwallow Marsh
step
  talk Fallen Hero of the Horde##7572
  accept Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  note Slay Grol the Destroyer, Lady Sevine, and Archmage Allistarj. From their corpses take the Amulet of Grol, the Amulet of Sevine, and the Amulet of Allistarj.
  kill Archmage Allistarj##7666 |goto Blasted Lands 66.69,29.24 |elite
  collect Amulet of Allistarj##10755 |q 3627 |goto Blasted Lands 66.69,29.24
step
  talk Warcaller Gorlach##10880
  accept A Call to Arms: The Plaguelands!##5093 |goto Orgrimmar 37.68,75.16
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  note Listen to the Fallen Hero of the Horde tell his story.
  kill Fallen Hero of the Horde##7572 |q 2784 |goto Swamp of Sorrows 34.29,66.14
step
  kill Itharius##5353 |goto Swamp of Sorrows 13.67,71.72 |tip Loot the quest item here — it starts the quest.
  accept The Essence of Eranikus##3374 |goto Swamp of Sorrows 13.67,71.72
step
  note Bring the Oathstone of Ysera's Dragonflight and the Chained Essence of Eranikus to Itharius in the Swamp of Sorrows. It is there that you will make your choice to aid Ysera's Dragonflight or not.
  collect Chained Essence of Eranikus##10455 |q 3374 |goto Swamp of Sorrows 13.67,71.72
step
  talk Tok'Kar##5592
  turnin Lack of Surplus##698 |goto Swamp of Sorrows 81.32,80.97
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Mastery##8410 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  talk High Executor Derrington##10837
  turnin A Call to Arms: The Plaguelands!##5093 |goto Tirisfal Glades 83.13,68.94 |tip {turninat}Tirisfal Glades
step
  talk High Executor Derrington##10837
  turnin A Call to Arms: The Plaguelands!##5094 |goto Tirisfal Glades 83.13,68.94 |tip {turninat}Tirisfal Glades
step
  talk High Executor Derrington##10837
  turnin A Call to Arms: The Plaguelands!##5095 |goto Tirisfal Glades 83.13,68.94 |tip {turninat}Tirisfal Glades
step
  talk Tok'Kar##5592
  accept Lack of Surplus##699 |goto Swamp of Sorrows 81.32,80.97
step
  note Bring 6 Sawtooth Snapper Claws to Tok'Kar in the Swamp of Sorrows.
  collect 6 Sawtooth Snapper Claw##6168 |q 699 |goto Swamp of Sorrows 80.99,28.41 |tip {dropsfrom}Sawtooth Snapper
step
  only Warrior
  talk Torm Ragetotem##3041
  accept A Troubled Spirit##8417 |goto Thunder Bluff 57.24,87.37
step
  talk Neeka Bloodscar##5394
  turnin Neeka Bloodscar##1418 |goto Badlands 6.49,47.2 |tip {turninat}Badlands
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  turnin Mor'zul Bloodbringer##7562 |goto Burning Steppes 12.69,31.64 |tip {turninat}Burning Steppes
step
  talk Magtoor##1776
  turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Magtoor##1776
  turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.98,31.4
step
  talk Fel'zerul##1443
  turnin Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  talk Nara Wildmane##5770
  turnin Portents of Uldum##2965 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Dar##5591
  turnin Fresh Meat##1430 |goto Swamp of Sorrows 44.7,57.21
step
  talk Sage Truthseeker##3978
  turnin A Future Task##2968 |goto Thunder Bluff 34.4,46.87 |tip {turninat}Thunder Bluff
step
  talk Fel'zerul##1443
  turnin The Temple of Atal'Hakkar##1445 |goto Swamp of Sorrows 47.93,54.78
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin Assisting Arch Druid Runetotem##936 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Ghede##9076
  turnin Un'Goro Soil##3761 |goto Thunder Bluff 77.46,21.97 |tip {turninat}Thunder Bluff
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin Assisting Arch Druid Runetotem##3762 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin Assisting Arch Druid Runetotem##3784 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Fel'zerul##1443
  accept The Atal'ai Exile##1429 |goto Swamp of Sorrows 47.93,54.78
step
  talk Nara Wildmane##5770
  accept Seeing What Happens##2966 |goto Thunder Bluff 75.65,31.61
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Morrowgrain Research##3782 |goto Thunder Bluff 78.62,28.56
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 50.2,38.8
step
  talk Atal'ai Exile##5598
  turnin The Atal'ai Exile##1429 |goto The Hinterlands 33.75,75.21 |tip {turninat}The Hinterlands
step
  turnin Seeing What Happens##2966 |goto Tanaris 37.63,81.4 |tip {turninat}Tanaris
step
  talk Fallen Hero of the Horde##7572
  turnin Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Disgraced One##2621 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  note Destroy Razelikh the Defiler and return the Severed Horn of the Defiler to the Fallen Hero of the Horde. You will also need to return the Ward of the Defiler so that the Fallen Hero can destroy it, preventing it from ever falling into the wrong hands.
  kill Razelikh the Defiler##7664 |goto Blasted Lands 47.64,29.83 |elite
  collect Severed Horn of the Defiler##10759 |q 3628 |goto Blasted Lands 47.64,29.83
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Itharius##5353
  turnin The Essence of Eranikus##3374 |goto Swamp of Sorrows 13.67,71.72
step
  talk Itharius##5353
  accept In Eranikus' Own Words##3512 |goto Swamp of Sorrows 13.67,71.72
step
  talk Tok'Kar##5592
  turnin Lack of Surplus##699 |goto Swamp of Sorrows 81.32,80.97
step
  talk Tok'Kar##5592
  accept Threat From the Sea##1422 |goto Swamp of Sorrows 81.32,80.97
step
  talk Umbranse the Spiritspeaker##8588
  turnin In Eranikus' Own Words##3512 |goto Winterspring 67.81,27.43 |tip {turninat}Winterspring
step
  talk Dispatch Commander Ruag##7623
  turnin The Disgraced One##2621 |goto Swamp of Sorrows 47.79,54.94
step
  talk Bashana Runetotem##9087
  turnin Morrowgrain Research##3782 |goto Thunder Bluff 71.06,34.19 |tip {turninat}Thunder Bluff
step
  talk Dispatch Commander Ruag##7623
  accept The Missing Orders##2622 |goto Swamp of Sorrows 47.79,54.94
step
  talk Bashana Runetotem##9087
  accept Morrowgrain Research##3786 |goto Thunder Bluff 71.06,34.19
step
  note Use an Evergreen Pouch with a Packet of Tharlendis Seeds and two Un'Goro Soil samples to try and cultivate samples of Morrowgrain.
  collect Morrowgrain##11040 |q 3786 |goto Thunder Bluff 71.06,34.19
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.64,35.24
step
  talk Fallen Hero of the Horde##7572
  turnin You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  collect Amber Voodoo Feather##20606 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  talk Katar##5593
  turnin Threat From the Sea##1422 |goto Swamp of Sorrows 83.76,80.41
step
  talk Katar##5593
  accept Threat From the Sea##1426 |goto Swamp of Sorrows 83.76,80.41
step
  note Kill 10 Marsh Murlocs, 10 Marsh Inkspewer, and 10 Marsh Flesheater, then return to Katar in the Swamp of Sorrows.
  kill Marsh Murloc##747 |q 1426 |goto Swamp of Sorrows 85.93,85.38
step
  talk Bengor##7643
  turnin The Missing Orders##2622 |goto Swamp of Sorrows 44.97,57.37
step
  talk Bashana Runetotem##9087
  turnin Morrowgrain Research##3786 |goto Thunder Bluff 71.06,34.19 |tip {turninat}Thunder Bluff
step
  talk Bengor##7643
  accept The Swamp Talker##2623 |goto Swamp of Sorrows 44.97,57.37
step
  note Retrieve the Warchief's Orders and return them to the Fallen Hero of the Horde.
  collect Warchief's Orders##8463 |q 2623 |goto Swamp of Sorrows 63.6,84.6 |tip {dropsfrom}Swamp Talker
step
  talk Fallen Hero of the Horde##7572
  turnin The Swamp Talker##2623 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  note Listen to the Fallen Hero of the Horde tell his story.
  kill Fallen Hero of the Horde##7572 |q 2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Katar##5593
  turnin Threat From the Sea##1426 |goto Swamp of Sorrows 83.76,80.41
step
  talk Katar##5593
  accept Threat From the Sea##1427 |goto Swamp of Sorrows 83.76,80.41
step
  talk Fallen Hero of the Horde##7572
  turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Tok'Kar##5592
  turnin Threat From the Sea##1427 |goto Swamp of Sorrows 81.32,80.97
step
  talk Katar##5593
  accept Continued Threat##1428 |goto Swamp of Sorrows 83.76,80.41
step
  note Kill 10 Marsh Inkspewers, 10 Marsh Flesheaters, and 10 Marsh Oracles, then return to Katar in the Swamp of Sorrows.
  kill Marsh Inkspewer##750 |q 1428 |goto Swamp of Sorrows 88.19,80.32
step
  note Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
  kill Servant of Razelikh##7668 |q 2681 |goto Blasted Lands 55.05,55.73
step
  talk Fallen Hero of the Horde##7572
  turnin The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Heroes of Old##2702 |goto Swamp of Sorrows 34.29,66.14
step
  talk Katar##5593
  turnin Continued Threat##1428 |goto Swamp of Sorrows 83.76,80.41
step
  talk Corporal Thund Splithoof##7750
  turnin Heroes of Old##2702 |goto Swamp of Sorrows 33.49,65.99
step
  talk Corporal Thund Splithoof##7750
  accept Heroes of Old##2701 |goto Swamp of Sorrows 33.49,65.99
step
  turnin Heroes of Old##2701 |goto Swamp of Sorrows 33.26,66.22
step
  talk Fallen Hero of the Horde##7572
  accept Kirith##2721 |goto Swamp of Sorrows 34.29,66.14
step
  talk Spirit of Kirith##7729
  turnin Kirith##2721 |goto Blasted Lands 68.8,31.07 |tip {turninat}Blasted Lands
]])
