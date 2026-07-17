-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Swamp of Sorrows (37-58)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Alterac Mountains (40-60)",
}, [[
step
  talk Magtoor##1776
  accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  note Bring 6 Draenethyst crystals to Magtoor at The Harborage in the Swamp of Sorrows.
  collect 6 Draenethyst Crystal##6071 |q 1389 |goto Swamp of Sorrows 62.08,22.85 |tip {dropsfrom}Draenethyst Crystals
step
  talk Royal Factor Bathrilor##10782
  accept Good Natured Emma##5048 |goto Stormwind City 48.46,30.54
step
  only Mage
  talk Thurston Xane##3049
  accept Magecraft##8250 |goto Thunder Bluff 25.18,20.96
step
  only Priest
  talk High Priestess Laurena##376
  accept Cenarion Aid##8254 |goto Stormwind City 38.58,26.06
step
  talk Anchorite Avuun##17127
  accept Mercy for the Cursed##9448 |goto Swamp of Sorrows 25.75,31.79
step
  talk Anchorite Avuun##17127
  accept Help Watcher Biggs##9609 |goto Swamp of Sorrows 25.75,31.79
step
  talk Holaaru##18221
  accept Pool of Tears##9610 |goto Swamp of Sorrows 25.87,32.42
step
  note Obtain 10 Atal'ai Artifacts and return them to Holaaru at the Harborage in the Swamp of Sorrows.
  collect 10 Atal'ai Artifact##6175 |q 9610 |goto Swamp of Sorrows 70.61,53.62
step
  talk Watcher Biggs##5476
  turnin Help Watcher Biggs##9609 |goto Swamp of Sorrows 26.74,59.83
step
  only Mage
  talk Sanath Lim-yo##8395
  turnin Magecraft##8250 |goto Azshara 28.11,50.09 |tip {turninat}Azshara
step
  click A Soggy Scroll##2553
  accept Cortello's Riddle##625 |goto Swamp of Sorrows 22.87,48.19
step
  talk Watcher Biggs##5476
  accept Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
step
  turnin Cortello's Riddle##625 |goto Dustwallow Marsh 31.1,66.14 |tip {turninat}Dustwallow Marsh
step
  talk Fallen Hero of the Horde##7572
  accept Kirith##2721 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  note Slay Grol the Destroyer, Lady Sevine, and Archmage Allistarj. From their corpses take the Amulet of Grol, the Amulet of Sevine, and the Amulet of Allistarj.
  kill Archmage Allistarj##7666 |goto Blasted Lands 66.69,29.24 |elite
  collect Amulet of Allistarj##10755 |q 3627 |goto Blasted Lands 66.69,29.24
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  talk Ol' Emma##3520
  turnin Good Natured Emma##5048 |goto Stormwind City 52.37,42.13 |tip {turninat}Stormwind City
step
  only Priest
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62 |tip {turninat}Azshara
step
  kill Noboru the Cudgel##5477 |goto Swamp of Sorrows 55.7,34.37 |tip Loot the quest item here — it starts the quest.
  accept Noboru the Cudgel##1392 |goto Swamp of Sorrows 55.7,34.37
step
  talk Historian Karnik##2916
  accept Passing the Burden##3448 |goto Ironforge 77.54,11.82
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3570 |goto Undercity 48.71,71.39
step
  talk Laris Geardawdle##9616
  accept A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.38
step
  note Bring 6 Filled Cursed Ooze Jars and 6 Filled Tainted Ooze Jars to Laris Geardawdle in Ironforge.
  collect 6 Filled Cursed Ooze Jar##11947 |q 4512 |goto Ironforge 75.77,23.38
step
  talk Ol' Emma##3520
  accept Good Luck Charm##5050 |goto Stormwind City 52.37,42.13
step
  only Hunter
  talk Kary Thunderhorn##3038
  accept The Hunter's Charm##8151 |goto Thunder Bluff 58.49,88.33
step
  only Rogue
  talk Ormok##3328
  accept A Simple Request##8233 |goto Orgrimmar 43.9,54.63
step
  only Shaman
  talk Haromm##986
  accept Elemental Mastery##8410 |goto Swamp of Sorrows 48.19,57.94
step
  only Shaman
  note Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
  collect Elemental Air##7069 |q 8410 |goto Westfall 42.75,49.32 |tip {dropsfrom}Dust Devil, Thundering Exile, Cyclonian
step
  only Warlock
  talk Kartosh##988
  accept An Imp's Request##8419 |goto Swamp of Sorrows 48.65,55.64
step
  only Warlock
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8419 |goto Blasted Lands 59.78,54.09 |tip {dropsfrom}Felguard Sentry, Legashi Satyr, Legashi Rogue
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 52.38,53.24
step
  note Slay 3 Cursed Lost Ones and then return to Anchorite Avuun at the Harborage in the Swamp of Sorrows.
  kill Cursed Lost One##17115 |q 9448 |goto Swamp of Sorrows 62.98,24.46
step
  talk Itharius##5353
  accept In Eranikus' Own Words##3512 |goto Swamp of Sorrows 13.67,71.72
step
  talk Holaaru##18221
  turnin Pool of Tears##9610 |goto Swamp of Sorrows 25.87,32.42
step
  talk Anchorite Avuun##17127
  turnin Mercy for the Cursed##9448 |goto Swamp of Sorrows 25.75,31.79
step
  talk Magtoor##1776
  turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Magtoor##1776
  turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.98,31.4
step
  talk Tymor##8507
  turnin Passing the Burden##3448 |goto Ironforge 30.96,4.83 |tip {turninat}Ironforge
step
  talk Tymor##8507
  accept Arcane Runes##3449 |goto Ironforge 30.96,4.83
step
  note Using the Drawing Kit, make rubbings of the Rune of Beth'Amara, the Rune of Jin'yael, the Rune of Markri, and the Rune of Sael'hai before heading to the small island off of the southern peninsula of Azshara and signaling Pilot Xiggs Fuselighter to pick them up.
  collect Rubbing: Rune of Beth'Amara##10563 |q 3449 |goto Azshara 36.91,53.17 |tip {dropsfrom}Rune of Beth'Amara
step
  talk Tymor##8507
  accept An Easy Pickup##3450 |goto Ironforge 30.96,4.83
step
  note Kill 8 Young Sawtooth Crocolisks, 10 Sorrow Spinners and 10 Swamp Jaguars then return to Watcher Biggs in the Swamp of Sorrows.
  kill Young Sawtooth Crocolisk##1084 |q 1396 |goto Swamp of Sorrows 30.44,42.55
step
  talk Watcher Biggs##5476
  turnin Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
  note Find the Caravan Chest in the Fallow Sanctuary, obtain the Wizards' Reagents and bring to Watcher Biggs.
  collect Wizards' Reagents##6170 |q 1421 |goto Swamp of Sorrows 64.46,18.3 |tip {dropsfrom}Caravan Chest
step
  talk Fallen Hero of the Horde##7572
  turnin Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  note Destroy Razelikh the Defiler and return the Severed Horn of the Defiler to the Fallen Hero of the Horde. You will also need to return the Ward of the Defiler so that the Fallen Hero can destroy it, preventing it from ever falling into the wrong hands.
  collect Severed Horn of the Defiler##10759 |q 3628 |goto Swamp of Sorrows 34.29,66.14 |tip {dropsfrom}Razelikh the Defiler
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Laris Geardawdle##9616
  turnin A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.38 |tip {turninat}Ironforge
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88 |tip {turninat}Alterac Mountains
step
  talk Umbranse the Spiritspeaker##8588
  turnin In Eranikus' Own Words##3512 |goto Winterspring 67.81,27.43 |tip {turninat}Winterspring
step
  talk Janice Felstone##10778
  turnin Good Luck Charm##5050 |goto Western Plaguelands 38.4,54.05 |tip {turninat}Western Plaguelands
step
  only Hunter
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62 |tip {turninat}Azshara
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Mastery##8410 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  only Warlock
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02 |tip {turninat}Felwood
step
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3570 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  talk Xiggs Fuselighter##8517
  turnin An Easy Pickup##3450 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
step
  talk Xiggs Fuselighter##8517
  accept Signal for Pickup##3451 |goto Ironforge 70.87,94.56
step
  note Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
  kill Servant of Razelikh##7668 |q 2681 |goto Blasted Lands 55.05,55.73
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.64,35.24
step
  talk Watcher Biggs##5476
  turnin The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
step
  note Bring 8 pieces of Sundried Driftwood to Watcher Biggs in the Swamp of Sorrows.
  collect 8 Sundried Driftwood##6146 |q 1398 |goto Swamp of Sorrows 90.68,57.09
step
  talk Fallen Hero of the Horde##7572
  turnin You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Heroes of Old##2702 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  collect Amber Voodoo Feather##20606 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  talk Xiggs Fuselighter##8517
  turnin Signal for Pickup##3451 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
step
  talk Xiggs Fuselighter##8517
  accept Signal for Pickup##3483 |goto Ironforge 70.87,94.56
step
  talk Watcher Biggs##5476
  turnin Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Deliver the Shipment##1425 |goto Swamp of Sorrows 26.74,59.83
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Quartermaster Lungertz##5393
  turnin Deliver the Shipment##1425 |goto Blasted Lands 66.52,21.39 |tip {turninat}Blasted Lands
step
  talk Xiggs Fuselighter##8517
  turnin Signal for Pickup##3483 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
step
  talk Spirit of Kirith##7729
  turnin Kirith##2721
step
  talk Pilot Xiggs Fuselighter##8392
  turnin Arcane Runes##3449
step
  talk Corporal Thund Splithoof##7750
  turnin Heroes of Old##2702
]])
