-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Swamp of Sorrows (40-57)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Alterac Mountains (36-60)",
}, [[
step
  note {fp}Breyk
  goto Swamp of Sorrows 46.07,54.83 |tip {vendor}
step
  talk Magtoor##1776
  accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  note Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
  get Draenethyst Crystals |q 1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Dar##5591
  accept Lack of Surplus##698 |goto Swamp of Sorrows 44.7,57.21
step
  note Bring 8 Unprepared Sawtooth Flanks to Tok'Kar in Swamp of Sorrows.
  get Lack of Surplus |q 698 |goto Swamp of Sorrows 44.7,57.21
step
  talk Helgrum the Swift##1442
  accept Neeka Bloodscar##1418 |goto Swamp of Sorrows 47.74,55.2
step
  talk Fel'zerul##1443
  accept Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  note Fel'zerul in Stonard wants you to gather 10 Atal'ai Artifacts.
  get Pool of Tears |q 1424 |goto Swamp of Sorrows 47.93,54.78
step
  talk Dar##5591
  accept Fresh Meat##1430 |goto Swamp of Sorrows 44.7,57.21
step
  note Bring 10 Monstrous Crawler Legs to Dar in the Swamp of Sorrows.
  get Fresh Meat |q 1430 |goto Swamp of Sorrows 44.7,57.21
step
  talk Fel'zerul##1443
  accept The Temple of Atal'Hakkar##1445 |goto Swamp of Sorrows 47.93,54.78
step
  note Collect 20 Fetishes of Hakkar and bring them to Fel'Zerul in Stonard.
  get The Temple of Atal'Hakkar |q 1445 |goto Swamp of Sorrows 47.93,54.78
step
  only Mage
  talk Haromm##986
  accept Elemental Mastery##8410 |goto Swamp of Sorrows 48.19,57.94
step
  only Mage
  note Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
  get Elemental Mastery |q 8410 |goto Swamp of Sorrows 48.19,57.94
step
  only Druid
  talk Kartosh##988
  accept An Imp's Request##8419 |goto Swamp of Sorrows 48.65,55.64
step
  only Druid
  note Bring a piece of felcloth to Impsy in Felwood.
  get An Imp's Request |q 8419 |goto Swamp of Sorrows 48.65,55.64
step
  talk Cersei Dusksinger##17109
  accept Little Morsels##9440 |goto Swamp of Sorrows 47.81,54.95
step
  note Feed the Fel-Tainted Morsels to the Lost Ones' captured animals. Then return the leftovers to Cersei Dusksinger at Stonard in the Swamp of Sorrows.
  kill Captured Crocolisk##17113 |q 9440 |goto Swamp of Sorrows 60.49,22.18
step
  talk Fallen Hero of the Horde##7572
  accept Kirith##2721 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  note Slay Grol the Destroyer, Lady Sevine, and Archmage Allistarj. From their corpses take the Amulet of Grol, the Amulet of Sevine, and the Amulet of Allistarj.
  get Uniting the Shattered Amulet |q 3627 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  talk Itharius##5353
  accept In Eranikus' Own Words##3512 |goto Swamp of Sorrows 13.67,71.72
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Mastery##8410 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  talk Tok'Kar##5592
  turnin Lack of Surplus##698 |goto Swamp of Sorrows 81.32,80.97
step
  talk Tok'Kar##5592
  accept Lack of Surplus##699 |goto Swamp of Sorrows 81.32,80.97
step
  note Bring 6 Sawtooth Snapper Claws to Tok'Kar in the Swamp of Sorrows.
  get Lack of Surplus |q 699 |goto Swamp of Sorrows 81.32,80.97
step
  talk Neeka Bloodscar##5394
  turnin Neeka Bloodscar##1418 |goto Badlands 6.49,47.2 |tip {turninat}Badlands
step
  talk Magtoor##1776
  turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Cersei Dusksinger##17109
  turnin Little Morsels##9440 |goto Swamp of Sorrows 47.81,54.95
step
  only Druid
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02 |tip {turninat}Felwood
step
  talk Fel'zerul##1443
  turnin The Temple of Atal'Hakkar##1445 |goto Swamp of Sorrows 47.93,54.78
step
  talk Fel'zerul##1443
  turnin Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  talk Dar##5591
  turnin Fresh Meat##1430 |goto Swamp of Sorrows 44.7,57.21
step
  talk Umbranse the Spiritspeaker##8588
  turnin In Eranikus' Own Words##3512 |goto Winterspring 67.81,27.43 |tip {turninat}Winterspring
step
  talk Fel'zerul##1443
  accept The Atal'ai Exile##1429 |goto Swamp of Sorrows 47.93,54.78
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 52.38,53.24
step
  talk Fallen Hero of the Horde##7572
  turnin Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  talk Atal'ai Exile##5598
  turnin The Atal'ai Exile##1429 |goto The Hinterlands 33.75,75.21 |tip {turninat}The Hinterlands
step
  talk Fallen Hero of the Horde##7572
  accept The Disgraced One##2621 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  note Destroy Razelikh the Defiler and return the Severed Horn of the Defiler to the Fallen Hero of the Horde. You will also need to return the Ward of the Defiler so that the Fallen Hero can destroy it, preventing it from ever falling into the wrong hands.
  get You Are Rakh'likh, Demon |q 3628 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Tok'Kar##5592
  turnin Lack of Surplus##699 |goto Swamp of Sorrows 81.32,80.97
step
  talk Tok'Kar##5592
  accept Threat From the Sea##1422 |goto Swamp of Sorrows 81.32,80.97
step
  talk Dispatch Commander Ruag##7623
  turnin The Disgraced One##2621 |goto Swamp of Sorrows 47.79,54.94
step
  talk Dispatch Commander Ruag##7623
  accept The Missing Orders##2622 |goto Swamp of Sorrows 47.79,54.94
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.64,35.24
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  get Voodoo Feathers |q 8425 |goto Swamp of Sorrows 34.29,66.14
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
  talk Bengor##7643
  accept The Swamp Talker##2623 |goto Swamp of Sorrows 44.97,57.37
step
  note Retrieve the Warchief's Orders and return them to the Fallen Hero of the Horde.
  get The Swamp Talker |q 2623 |goto Swamp of Sorrows 44.97,57.37
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin The Swamp Talker##2623 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
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
  talk Spirit of Kirith##7729
  turnin Kirith##2721
step
  talk Corporal Thund Splithoof##7750
  turnin Heroes of Old##2702
step
  note {travel}Alterac Mountains
  goto Alterac Mountains 57.17,69.51
]])
