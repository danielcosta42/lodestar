-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Silverpine Forest (11-20)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Barrens (12-20)",
	rev = "63938a68",
}, [[
step
  ding 10
step
  note {fp}Karos Razok
  goto Silverpine Forest 45.62,42.6 |tip {vendor}
step
  only level>=10
  talk High Executor Hadrec##1952
  accept Lost Deathstalkers##428 |goto Silverpine Forest 43.42,40.86
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##447 |goto Silverpine Forest 42.8,40.86
step
  only Undead level>=10
  talk Deathguard Podrig##6389
  accept Supplying the Sepulcher##6321 |goto Silverpine Forest 43.42,41.68
step
  only level>=10
  talk Apothecary Renferrel##1937
  accept Return to Quinn (Again)##91921 |goto Silverpine Forest 42.8,40.86
step
  only Undead haveq(6321)
  note Bring Podrig's Order to Karos Razok.
  talk Karos Razok##2226
  turnin Supplying the Sepulcher##6321 |goto Silverpine Forest 45.62,42.6
step
  only Undead completed(6321) level>=10
  talk Karos Razok##2226
  accept Ride to the Undercity##6323 |goto Silverpine Forest 45.62,42.6
step
  note Collect 6 Grizzled Bear Hearts and 6 samples of Skittering Blood and deliver them to Master Apothecary Faranell in the Undercity.
  collect 6 Grizzled Bear Heart##3253 |q 447/1 |goto Silverpine Forest 48.75,32.91 |tip {dropsfrom}Ferocious Grizzled Bear, Giant Grizzled Bear, Old Vicejaw
  collect Skittering Blood##3254 |q 447 |goto Silverpine Forest 35.63,14.14 |tip {dropsfrom}Moss Stalker, Mist Creeper, Krethis Shadowspinner
step
  only haveq(428)
  note Find the Deathstalkers Quinn and Rane Yorick.
  talk Rane Yorick##1950
  turnin Lost Deathstalkers##428 |goto Silverpine Forest 53.46,13.43
step
  only haveq(91921)
  note Bring Quinn's potion to Quinn Yorick at the Ivar Patch, north of the Sepulcher.
  talk Quinn Yorick##1951
  turnin Return to Quinn (Again)##91921 |goto Silverpine Forest 53.43,12.59
step
  only level>=10
  talk Rane Yorick##1950
  accept Wild Hearts##429 |goto Silverpine Forest 53.46,13.43
step
  only level>=10
  talk Quinn Yorick##1951
  accept Wild Eyes##91920 |goto Silverpine Forest 53.43,12.59
step
  only level>=10
  talk Deathstalker Erland##1978
  accept Escorting Erland##435 |goto Silverpine Forest 56.18,9.18
step
  only haveq(435)
  note Escort Erland through the wolves, to Rane Yorick.
  goto Silverpine Forest 54.37,13.38 |tip Erland must reach Rane Yorick
step
  only haveq(435)
  talk Rane Yorick##1950
  turnin Escorting Erland##435 |goto Silverpine Forest 53.46,13.43
step
  only completed(435) level>=10
  talk Rane Yorick##1950
  accept The Deathstalkers' Report##449 |goto Silverpine Forest 53.46,13.43
step
  only haveq(429)
  note Gather 6 discolored worg hearts and bring them to Apothecary Renferrel at the Sepulcher.
  collect 6 Discolored Worg Heart##3164 |q 429 |goto Silverpine Forest 66.06,8.77 |tip {dropsfrom}Worg, Mottled Worg, Bloodsnout Worg
step
  only haveq(91920)
  note Gather 3 murloc eyes and bring them to Apothecary Renferrel at the Sepulcher.
  collect 3 Murloc Eye##730 |q 91920 |goto Silverpine Forest 60.46,15.55 |tip {dropsfrom}Vile Fin Shredder, Vile Fin Tidecaller
step
  only haveq(429)
  talk Apothecary Renferrel##1937
  turnin Wild Hearts##429 |goto Silverpine Forest 42.8,40.86
step
  only haveq(449)
  note Bring the Deathstalker Report to High Executor Hadrec at the Sepulcher.
  talk High Executor Hadrec##1952
  turnin The Deathstalkers' Report##449 |goto Silverpine Forest 43.42,40.86
step
  only haveq(91920)
  talk Apothecary Renferrel##1937
  turnin Wild Eyes##91920 |goto Silverpine Forest 42.8,40.86
step
  only completed(429)
  talk Apothecary Renferrel##1937
  accept Return to Quinn##430 |goto Silverpine Forest 42.8,40.86
step
  only completed(449)
  talk High Executor Hadrec##1952
  accept Speak with Renferrel##3221 |goto Silverpine Forest 43.42,40.86
step
  only level>=12
  talk Dalar Dawnweaver##1938
  accept Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept The Dead Fields##437 |goto Silverpine Forest 43.42,40.86
step
  talk Shadow Priest Allister##2121
  accept Border Crossings##477 |goto Silverpine Forest 43.98,40.93
step
  only haveq(3221)
  note Speak with Apothecary Renferrel at the Sepulcher.
  talk Apothecary Renferrel##1937
  turnin Speak with Renferrel##3221 |goto Silverpine Forest 42.8,40.86
step
  only haveq(421)
  note Dalar Dawnweaver at the Sepulcher wants you to kill 5 Moonrage Whitescalps.
  kill Moonrage Whitescalp##1769 |q 421 |goto Silverpine Forest 53,26.69
step
  note Kill rot hide gnolls at the Dead Fields.
  collect Essence of Nightlash##3622 |q 437 |goto Silverpine Forest 45,21 |tip {dropsfrom}Nightlash
step
  only haveq(430)
  note Bring Quinn's potion to Quinn Yorick at the Ivar Patch, north of the Sepulcher.
  talk Quinn Yorick##1951
  turnin Return to Quinn##430 |goto Silverpine Forest 53.43,12.59
step
  only completed(430)
  talk Rane Yorick##1950
  accept Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  only haveq(425)
  note Kill Ivar the Foul, and bring Ivar's Head to Rane Yorick at the Ivar Patch.
  collect Ivar's Head##3621 |q 425 |goto Silverpine Forest 51.52,13.9 |tip {dropsfrom}Ivar the Foul
step
  only haveq(425)
  talk Rane Yorick##1950
  turnin Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  note Retrieve the contents of one of the Dalaran wizards' crates. You will find Pyrewood Village to the south.
  turnin Border Crossings##477 |goto Silverpine Forest 49.89,60.33
step
  click Dalaran Crate##1627
  accept Maps and Runes##478 |goto Silverpine Forest 49.89,60.33
step
  only haveq(421)
  talk Dalar Dawnweaver##1938
  turnin Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  turnin The Dead Fields##437 |goto Silverpine Forest 43.42,40.86
step
  note Bring the strange pendant to Shadow Priest Allister at the Sepulcher.
  talk Shadow Priest Allister##2121
  turnin Maps and Runes##478 |goto Silverpine Forest 43.98,40.93
step
  only completed(421)
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  talk Shadow Priest Allister##2121
  accept Dalar's Analysis##481 |goto Silverpine Forest 43.98,40.93
step
  only completed(3221)
  talk Apothecary Renferrel##1937
  accept Zinge's Delivery##1359 |goto Silverpine Forest 42.8,40.86
step
  note Take the rune-inscribed pendant to Dalar Dawnweaver at the Sepulcher.
  talk Dalar Dawnweaver##1938
  turnin Dalar's Analysis##481 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  accept Dalaran's Intentions##482 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept The Decrepit Ferry##438 |goto Silverpine Forest 43.42,40.86
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##98298 |goto Silverpine Forest 44.2,39.81
step
  note Speak with Shadow Priest Allister at the Sepulcher.
  talk Shadow Priest Allister##2121
  turnin Dalaran's Intentions##482 |goto Silverpine Forest 43.98,40.93
step
  talk Shadow Priest Allister##2121
  accept Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  only haveq(422)
  note Retrieve the Remedy of Arugal for Dalar Dawnweaver at the Sepulcher.
  collect Remedy of Arugal##3155 |q 422 |goto Silverpine Forest 52.83,28.58 |tip {dropsfrom}Dusty Spellbooks
step
  only haveq(422)
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  only completed(422)
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  only haveq(423)
  note Bring 6 Glutton Shackles and 3 Darksoul Shackles to Dalar Dawnweaver at the Sepulcher.
  collect 3 Darksoul Shackle##3157 |q 423/2 |goto Silverpine Forest 43.53,32.14 |tip {dropsfrom}Moonrage Darksoul
  collect 6 Glutton Shackle##3156 |q 423 |goto Silverpine Forest 46.63,28.36 |tip {dropsfrom}Moonrage Glutton
step
  only haveq(423)
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  only completed(423)
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  only haveq(424)
  note Kill Grimson the Pale and bring his head to Dalar Dawnweaver at the Sepulcher.
  collect Head of Grimson##3634 |q 424 |goto Silverpine Forest 58.58,44.86 |tip {dropsfrom}Grimson the Pale
step
  note Go to the Decrepit Ferry.
  turnin The Decrepit Ferry##438 |goto Silverpine Forest 58.44,34.9
step
  click Corpse Laden Boat##1593
  accept Rot Hide Clues##439 |goto Silverpine Forest 58.44,34.9
step
  only haveq(424)
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  note Bring Deliah's Ring to High Executor Hadrec at the Sepulcher.
  talk High Executor Hadrec##1952
  turnin Rot Hide Clues##439 |goto Silverpine Forest 43.42,40.86
step
  only completed(424) level>=15
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept The Engraved Ring##440 |goto Silverpine Forest 43.42,40.86
step
  talk High Executor Hadrec##1952
  accept Rot Hide Ichor##443 |goto Silverpine Forest 43.42,40.86
step
  only level>=12
  kill Rot Hide Brute##1939 |goto Silverpine Forest 67.6,31 |tip Loot the quest item here — it starts the quest.
  accept Resting in Pieces##460 |goto Silverpine Forest 67.6,31
step
  note Bring 8 bottles of rot hide ichor to Apothecary Renferrel at the Sepulcher.
  collect 8 Rot Hide Ichor##3236 |q 443 |goto Silverpine Forest 67.6,31 |tip {dropsfrom}Rot Hide Brute, Rot Hide Plague Weaver, Rot Hide Savage
step
  only haveq(460)
  note Bring Alaric's Head to his grave.
  turnin Resting in Pieces##460 |goto Silverpine Forest 67.87,24.85
step
  note Obtain 8 Dalaran Pendants for Shadow Priest Allister at the Sepulcher.
  collect 8 Dalaran Pendant##3354 |q 479 |goto Silverpine Forest 58.65,63.2 |tip {dropsfrom}Dalaran Protector, Dalaran Mage, Dalaran Conjuror
step
  note Bring 6 Worgen Bits to Dalar Dawnweaver in The Sepulcher.
  collect 6 Worgen Bits##280375 |q 98298 |goto Silverpine Forest 51.74,78.86 |tip {dropsfrom}Moonrage Bloodhowler
step
  only level>=12
  talk Deathstalker Faerleia##2058
  accept Pyrewood Ambush##452 |goto Silverpine Forest 46.5,74.39
step
  only haveq(99)
  note Bring 6 Pyrewood Shackles to Dalar Dawnweaver at the Sepulcher.
  kill Pyrewood Watcher##1891 |q 99 |goto Silverpine Forest 45.35,72.52 |elite
  collect 6 Pyrewood Shackle##3218 |q 99 |goto Silverpine Forest 45.35,72.52
step
  only haveq(452)
  note Help Deathstalker Faerleia kill the Pyrewood Council.
  talk Deathstalker Faerleia##2058
  turnin Pyrewood Ambush##452 |goto Silverpine Forest 46.5,74.39
step
  only haveq(99)
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  turnin Rot Hide Ichor##443 |goto Silverpine Forest 42.8,40.86
step
  talk Shadow Priest Allister##2121
  turnin Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##98298 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  accept Rot Hide Origins##444 |goto Silverpine Forest 42.8,40.86
step
  only completed(460)
  click Shallow Grave##1599
  accept The Hidden Niche##461 |goto Silverpine Forest 67.87,24.85
step
  only haveq(461)
  note Take Alaric to the hidden alcove.
  turnin The Hidden Niche##461 |goto Silverpine Forest 65.36,24.81
step
  only completed(461)
  click Dusty Shelf##112888
  accept Wand to Bethor##491 |goto Silverpine Forest 65.36,24.81
step
  talk Shadow Priest Allister##2121
  accept Watching the Roads##95981 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  accept Stop the Spread##98299 |goto Silverpine Forest 44.2,39.81
step
  note Slay 8 Dalaran Wizards and 8 Dalaran Watchers for Shadow Priest Allister in the Sepulcher.
  kill Dalaran Wizard##1889 |q 95981/2 |goto Silverpine Forest 63.41,65.29
  kill Dalaran Watcher##1888 |q 95981 |goto Silverpine Forest 62.66,75.43
step
  note Slay 5 Sickly Refugees and 5 Haggard Refugees for Dalar Dawnweaver in The Sepulcher.
  kill Haggard Refugee##2053 |q 98299/1 |goto Silverpine Forest 46.08,85.63
  kill Sickly Refugee##2054 |q 98299 |goto Silverpine Forest 45.96,85.77
step
  talk Shadow Priest Allister##2121
  turnin Watching the Roads##95981 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Stop the Spread##98299 |goto Silverpine Forest 44.2,39.81
step
  only level>=16
  talk Shadow Priest Allister##2121
  accept Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  only haveq(516)
  note Locate Beren's Peril, then kill 6 Ravenclaw Drudgers and 6 Ravenclaw Guardians, then return to Shadow Priest Allister at the Sepulcher.
  kill Ravenclaw Drudger##1974 |q 516/1 |goto Silverpine Forest 59.14,70.5
  kill Ravenclaw Guardian##1973 |q 516 |goto Silverpine Forest 58.66,71.29
step
  only haveq(516)
  talk Shadow Priest Allister##2121
  turnin Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  only level>=19
  talk Apothecary Renferrel##1937
  accept Journey to Hillsbrad Foothills##493 |goto Silverpine Forest 42.8,40.86
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
  only Undead Paladin level>=18
  talk Trevan Rol##248840
  accept A Curious Pair##91859 |goto Silverpine Forest 43.34,41.12
step
  only Undead Paladin level>=18
  talk Deathguard Baldren##259611
  accept A Grim Fate##91860 |goto Silverpine Forest 45.77,41.94
step
  only Undead Paladin haveq(91859)
  note Speak with Deathguard Baldren about the mysterious Earthen Ring travelers who recently passed through The Sepulcher.
  talk Deathguard Baldren##259611
  turnin A Curious Pair##91859 |goto Silverpine Forest 45.77,41.94
step
  only Undead Paladin haveq(91860)
  note Investigate Fenris Isle to the east and learn the fate of the Earthen Ring traveling party.
  turnin A Grim Fate##91860 |goto Silverpine Forest 64.93,34.34
step
  only Undead Paladin level>=18
  click Charred Remains##566037
  accept Into Fenris Keep##91861 |goto Silverpine Forest 64.93,34.34
step
  only Undead Paladin haveq(91861)
  note Investigate Fenris Keep to the north and attempt to locate the missing member of the Earthen Ring party.
  talk Lumina Windsinger##248755
  turnin Into Fenris Keep##91861 |goto Silverpine Forest 65.63,23.36
step
  only Undead Paladin level>=18
  talk Lumina Windsinger##248755
  accept Lumina Windsinger##91862 |goto Silverpine Forest 65.63,23.36
step
  only Undead Paladin haveq(91862)
  note Retrieve the Fenris Isle Key from the Rot Hide Gnolls and use it to free Lumina Windsinger.
  collect Fenris Isle Key##267412 |q 91862 |goto Silverpine Forest 65.71,24.03 |tip {dropsfrom}Rot Hide Savage, Raging Rot Hide, Rot Hide Bruiser
step
  only Undead Paladin haveq(91862)
  talk Lumina Windsinger##248755
  turnin Lumina Windsinger##91862 |goto Silverpine Forest 65.63,23.36
step
  only Undead Paladin level>=18
  talk Lumina Windsinger##248755
  accept The Windshaper's Wrath##96204 |goto Silverpine Forest 65.63,23.36
step
  only Undead Paladin haveq(96204)
  note Accompany Lumina Windsinger and help her escape Fenris Keep.
  talk Lumina Windsinger##259620
  turnin The Windshaper's Wrath##96204 |goto Silverpine Forest 43.33,40.97
step
  only Undead Paladin level>=18
  talk Lumina Windsinger##259620
  accept The Debt##95034 |goto Silverpine Forest 43.33,40.97
step
  only Undead Paladin haveq(95034)
  note Speak with Lumina Windsinger in the Sepulcher.
  talk Lumina Windsinger##259620
  turnin The Debt##95034 |goto Silverpine Forest 43.33,40.97
step
  only Undead Paladin level>=20
  talk Lumina Windsinger##259620
  accept Old Fire-Eye##95140 |goto Silverpine Forest 43.33,40.97
step
  only Undead Paladin level>=20
  talk Trevan Rol##248840
  accept An Underrated Talent##95111 |goto Silverpine Forest 43.34,41.12
step
  only Shaman completed(63) level>=20
  click Brazier of Everfount##113791
  accept Call of Water##100 |goto Silverpine Forest 38.26,44.56
step
  only Shaman completed(63) haveq(100)
  note Speak to the Minor Manifestation of Water in Silverpine Forest.
  talk Minor Manifestation of Water##5895
  turnin Call of Water##100 |goto Silverpine Forest 38.65,44.58
step
  only level>=20
  click Offering Stone##645153
  accept The Tortured Soul##95883 |goto Silverpine Forest 58.22,69.88
step
  only level>=20
  click Offering Stone##645153
  accept The Offering of Blood##95885 |goto Silverpine Forest 58.22,69.88
step
  only haveq(95885)
  note Use the Tortured Soul to give an offering of blood at the Offering Stone in Beren's Peril.
  kill Tortured Soul##212753 |q 95885 |goto Silverpine Forest 58.06,70.07
step
  only haveq(95885)
  turnin The Offering of Blood##95885 |goto Silverpine Forest 58.22,69.88
step
  only haveq(95883)
  note Collect a Tortured Soul from the nearby undead in Beren's Peril in Silverpine Forest.
  collect Tortured Soul##271350 |q 95883 |goto Silverpine Forest 58.66,71.29 |tip {dropsfrom}Ravenclaw Guardian, Ravenclaw Drudger
step
  only level>=20
  kill Ravenclaw Guardian##1973 |goto Silverpine Forest 58.66,71.29 |tip Loot the quest item here — it starts the quest.
  accept The Offering Stone##95884 |goto Silverpine Forest 58.66,71.29
step
  only haveq(95884)
  note Find the Offering Stone in Beren's Peril in Silverpine Forest.
  collect Note Scrap##271343 |q 95884 |goto Silverpine Forest 58.66,71.29 |tip {dropsfrom}Ravenclaw Guardian, Ravenclaw Drudger
step
  only haveq(95883)
  turnin The Tortured Soul##95883 |goto Silverpine Forest 58.22,69.88
step
  only haveq(95884)
  turnin The Offering Stone##95884 |goto Silverpine Forest 58.22,69.88
step
  only Undead Paladin haveq(95140)
  note Use the Moonsilver Blade to destroy Old-Fire Eye in Silverpine Forest.
  kill Old Fire-Eye##259897 |q 95140 |goto Silverpine Forest 49.56,85.2
step
  only Undead Paladin haveq(95140)
  talk Lumina Windsinger##259620
  turnin Old Fire-Eye##95140 |goto Silverpine Forest 43.33,40.97
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##447 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  only level>=16
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97291 |goto Undercity 48.82,69.28
step
  talk Master Apothecary Faranell##2055
  accept A Recipe For Death##450 |goto Undercity 48.82,69.28
step
  only haveq(1359)
  note Bring the Wolf Heart Samples to Apothecary Zinge in the Undercity.
  talk Apothecary Zinge##5204
  turnin Zinge's Delivery##1359 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  only level>=16
  talk Unfinished Abomination##271613
  accept Unending Torment##97290 |goto Undercity 46.03,61.97
step
  only haveq(97290)
  note Report your findings to Master Apothecary Faranell in Undercity.
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97290 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Alessandro Luca##7683
  accept Prompt Potion Runner##97891 |goto Undercity 58.61,54.68
step
  note Bring the Unstable Potion to Doctor Martin Felben in the Apothecarium within the time limit.
  talk Doctor Martin Felben##11044
  turnin Prompt Potion Runner##97891 |goto Undercity 46.61,74.09 |tip {turninat}Undercity
step
  only haveq(97291)
  note Collect a Toxic Skullcap from Tawny Grisette in the Trade Quarter, Blisterweed near the Herbalism Trainer, and Essence of Agony from the poison vendor in the Rogues' Quarter for Master Apothecary Faranell in Undercity.
  collect Blisterweed##281300 |q 97291 |goto Undercity 54.1,49.5
step
  only Undead haveq(6323)
  note Buy a bat ride to the Undercity from the bat master Karos Razok, then take Podrig's Order to Gordon Wendham in the Undercity.
  talk Gordon Wendham##4556
  turnin Ride to the Undercity##6323 |goto Undercity 61.49,41.79 |tip {turninat}Undercity
step
  only Undead completed(6323)
  talk Gordon Wendham##4556
  accept Michael Garrett##6322 |goto Undercity 61.49,41.79
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  accept A Lesson in Divinity##94434 |goto Undercity 65.68,37.74
step
  only Undead Paladin
  note Bring 10 Linen Cloth to Tanis Alderwood in the Undercity.
  collect 10 Linen Cloth##2589 |q 94434 |goto Undercity 65.68,37.74 |tip {dropsfrom}humanoids
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  turnin A Lesson in Divinity##94434 |goto Undercity 65.68,37.74 |tip {turninat}Undercity
step
  only Undead haveq(6322)
  note Bring Gordon's Crate to Michael Garrett.
  talk Michael Garrett##4551
  turnin Michael Garrett##6322 |goto Undercity 63.25,48.56 |tip {turninat}Undercity
step
  only Undead completed(6322)
  talk Michael Garrett##4551
  accept Return to Podrig##6324 |goto Undercity 63.25,48.56
step
  only haveq(97291)
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97291 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  only Undead Rogue level>=16
  talk Mennet Carkad##6467
  accept Fenwick Thatros##1998 |goto Undercity 83.51,69.11
step
  only Warlock completed(1476) not completed(1507) not haveq(1507) level>=20
  talk Carendin Halgar##5675
  accept The Binding##1474 |goto Undercity 85.06,25.99
step
  only Warlock completed(1476) not completed(1507) not haveq(1507) haveq(1474)
  note Using the Pure Hearts, summon and subdue a succubus, then return the Pure Hearts to Carendin Halgar in the Magic Quarter of the Undercity.
  use Summoned Succubus##5677 |q 1474 |tip {useit}
step
  only Warlock completed(1476) not completed(1507) not haveq(1507) haveq(1474)
  talk Carendin Halgar##5675
  turnin The Binding##1474 |goto Undercity 85.06,25.99 |tip {turninat}Undercity
step
  only haveq(491)
  note Take the Woven Wand to Bethor Iceshard in the Magic Quarter of the Undercity.
  talk Bethor Iceshard##1498
  turnin Wand to Bethor##491 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  note Bring the Sample Ichor to Bethor Iceshard in the Undercity.
  talk Bethor Iceshard##1498
  turnin Rot Hide Origins##444 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  accept Thule Ravenclaw##446 |goto Undercity 84.07,17.45
step
  only Undead Priest not completed(5644) not completed(5646) not haveq(5644) not haveq(5646) level>=20
  talk Aelthalyste##4606
  accept Devouring Plague##5679 |goto Undercity 49.26,17.12
step
  only Undead Priest not completed(5644) not completed(5646) not haveq(5644) not haveq(5646) haveq(5679)
  talk Aelthalyste##4606
  turnin Devouring Plague##5679 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Undead haveq(6324)
  note Buy a bat ride to the Sepulcher from the bat master Michael Garrett, then bring Gordon's Crate to Deathguard Podrig in the Sepulcher.
  talk Deathguard Podrig##6389
  turnin Return to Podrig##6324 |goto Silverpine Forest 43.42,41.68
step
  note Bring Bethor's Scroll to Apothecary Renferrel at the Silverpine Sepulcher.
  talk Apothecary Renferrel##1937
  turnin Thule Ravenclaw##446 |goto Silverpine Forest 42.8,40.86
step
  talk Apothecary Renferrel##1937
  accept Report to Hadrec##448 |goto Silverpine Forest 42.8,40.86
step
  note Report to High Executor Hadrec at the Sepulcher.
  talk High Executor Hadrec##1952
  turnin Report to Hadrec##448 |goto Silverpine Forest 43.42,40.86
step
  only level>=24
  talk High Executor Hadrec##1952
  accept Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  only Undead Rogue
  note Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.
  collect Astor's Letter of Introduction##7231 |q 1886 |goto Silverpine Forest 49.71,32.22 |tip {dropsfrom}Astor Hadren
step
  only Undead Rogue haveq(1998)
  note Kill Fenwick Thatros and bring his head back to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Fenwick's Head##7306 |q 1998 |goto Silverpine Forest 59.58,33.94 |tip {dropsfrom}Fenwick Thatros
step
  only haveq(442)
  note Bring Thule's Head to High Executor Hadrec at the Sepulcher.
  kill Thule Ravenclaw##1947 |q 442 |goto Silverpine Forest 65.71,23.67 |elite
  collect Thule's Head##3623 |q 442 |goto Silverpine Forest 65.71,23.67
step
  only haveq(442)
  talk High Executor Hadrec##1952
  turnin Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  note Retrieve Apothecary Berard's journal from Pyrewood Village and take it to Apothecary Renferrel at the Sepulcher.
  collect Berard's Journal##3255 |q 450 |goto Silverpine Forest 42.98,73.18 |tip {dropsfrom}Berard's Bookshelf
step
  talk Apothecary Renferrel##1937
  turnin A Recipe For Death##450 |goto Silverpine Forest 42.8,40.86
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##451 |goto Silverpine Forest 42.8,40.86
step
  note Bring 6 samples of Lake Creeper Moss, 6 samples of Lake Skulker Moss and a Hardened Tumor to Master Apothecary Faranell in the Undercity.
  collect Lake Skulker Moss##3256 |q 451/1 |goto Silverpine Forest 71.53,36 |tip {dropsfrom}Lake Skulker, Elder Lake Skulker
  collect Lake Creeper Moss##3257 |q 451/2 |goto Silverpine Forest 77.03,26.58 |tip {dropsfrom}Lake Creeper, Elder Lake Creeper
  collect Hardened Tumor##3258 |q 451 |goto Silverpine Forest 60.46,15.55 |tip {dropsfrom}Vile Fin Shredder, Vile Fin Tidehunter, Vile Fin Lakestalker
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1886 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Undead Rogue haveq(1998)
  talk Mennet Carkad##6467
  turnin Fenwick Thatros##1998 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1898 |goto Undercity 83.51,69.11
step
  only Undead Rogue completed(1998) level>=16
  talk Mennet Carkad##6467
  accept Tools of the Trade##1999 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  note Speak with Andron Gant in the Undercity.
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
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##451 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1899 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1978 |goto Undercity 83.51,69.11
step
  only Undead Rogue
  note Deliver Andron's Ledger to Varimathras in the Hall of the Dark Lady in the Undercity.
  talk Varimathras##2425
  turnin The Deathstalkers##1978 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  note Bring Deliah's Ring to Magistrate Sevren in Brill.
  talk Magistrate Sevren##1499
  turnin The Engraved Ring##440 |goto Tirisfal Glades 61.26,50.84 |tip {turninat}Tirisfal Glades
step
  talk Magistrate Sevren##1499
  accept Raleigh and the Undercity##441 |goto Tirisfal Glades 61.26,50.84
step
  only not Orc not Tauren not Skyborne Mage
  talk Cain Firesong##2128
  accept Report to Anastasia##1959 |goto Tirisfal Glades 61.97,52.47
step
  only not Orc not Tauren not Skyborne Mage
  note Speak with Anastasia Hartwell.
  talk Anastasia Hartwell##4568
  turnin Report to Anastasia##1959 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  only not Orc not Tauren not Skyborne Mage
  talk Anastasia Hartwell##4568
  accept Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03
step
  only not Orc not Tauren not Skyborne Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment Coffers from behind Anastasia Hartwell. Bring 3 Filled Containment Coffers, the Chest of Containment Coffers and the Cantation of Manifestation to Anastasia in the Undercity.
  collect 3 Filled Containment Coffer##7292 |q 1960/1
  collect Chest of Containment Coffers##7247 |q 1960/2 |goto Undercity 85.58,9.95
  collect Cantation of Manifestation##7308 |q 1960 |goto Undercity 85.7,10.11
step
  only not Orc not Tauren not Skyborne Mage
  talk Anastasia Hartwell##4568
  turnin Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  only not Tauren not Skyborne Mage not Orc
  talk Anastasia Hartwell##4568
  accept Gathering Materials##1961 |goto Undercity 85.14,10.03
step
  only not Tauren not Skyborne Mage not Orc
  note Bring 10 Linen Cloth and 6 Dalaran Mana Gems to Josef Gregorian.
  collect 10 Linen Cloth##2589 |q 1961/1 |tip {dropsfrom}humanoids
  collect 6 Dalaran Mana Gem##7293 |q 1961 |goto Silverpine Forest 51.58,64.26 |tip {dropsfrom}Dalaran Apprentice, Dalaran Protector, Dalaran Mage
step
  only not Tauren not Skyborne Mage not Orc
  talk Josef Gregorian##4576
  turnin Gathering Materials##1961 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  only not Orc not Tauren not Skyborne Mage
  talk Josef Gregorian##4576
  accept Spellfire Robes##1962 |goto Undercity 70.76,30.69
step
  only not Orc not Tauren not Skyborne Mage
  talk Josef Gregorian##4576
  turnin Spellfire Robes##1962 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  note Bring Deliah's Ring to Raleigh.
  talk Raleigh Andrean##2050
  turnin Raleigh and the Undercity##441 |goto Undercity 62.01,42.75 |tip {turninat}Undercity
step
  talk Raleigh Andrean##2050
  accept A Husband's Revenge##530 |goto Undercity 62.01,42.75
step
  only Undead Paladin haveq(95111)
  note Speak with Ott and ask him to forge your blade.
  talk Ott##3539
  turnin An Underrated Talent##95111 |goto Hillsbrad Foothills 60.43,26.18 |tip {turninat}Hillsbrad Foothills
step
  only Undead Rogue haveq(1999)
  note Find the Dalaran Status Report and return it to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Dalaran Status Report##7309 |q 1999 |goto Silverpine Forest 63.71,65.24 |tip {dropsfrom}Ambermill Strongbox
step
  note Kill Valdred Moray.
  collect Valdred's Hands##3613 |q 530 |goto Silverpine Forest 44.65,84.7 |tip {dropsfrom}Valdred Moray
step
  only Undead Rogue haveq(1999)
  talk Mennet Carkad##6467
  turnin Tools of the Trade##1999 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  talk Raleigh Andrean##2050
  turnin A Husband's Revenge##530 |goto Undercity 62.01,42.75 |tip {turninat}Undercity
step
  note {travel}The Barrens
  goto The Barrens 51.44,30.15
]])
