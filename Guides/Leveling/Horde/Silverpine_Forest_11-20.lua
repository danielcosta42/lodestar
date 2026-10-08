-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Silverpine Forest (11-20)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Hillsbrad Foothills (22-30)",
}, [[
step
  only completed(5726)
  talk Thrall##4949
  accept Hidden Enemies##5727 |goto Orgrimmar 31.73,37.82
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1886 |goto Undercity 83.51,69.11
step
  note {fp}Karos Razok
  goto Silverpine Forest 45.62,42.6 |tip {vendor}
step
  talk High Executor Hadrec##1952
  accept Lost Deathstalkers##428 |goto Silverpine Forest 43.42,40.86
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##447 |goto Silverpine Forest 42.8,40.86
step
  only Undead
  talk Deathguard Podrig##6389
  accept Supplying the Sepulcher##6321 |goto Silverpine Forest 43.42,41.68
step
  talk Apothecary Renferrel##1937
  accept Return to Quinn (Again)##91921 |goto Silverpine Forest 42.8,40.86
step
  note Collect 6 Grizzled Bear Hearts and 6 samples of Skittering Blood and deliver them to Master Apothecary Faranell in the Undercity.
  collect 6 Grizzled Bear Heart##3253 |q 447 |goto Silverpine Forest 48.75,32.91 |tip {dropsfrom}Ferocious Grizzled Bear, Giant Grizzled Bear, Old Vicejaw
step
  only Undead Rogue
  note Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.
  collect Astor's Letter of Introduction##7231 |q 1886 |goto Silverpine Forest 49.71,32.22 |tip {dropsfrom}Astor Hadren
step
  only Undead
  talk Karos Razok##2226
  turnin Supplying the Sepulcher##6321 |goto Silverpine Forest 45.62,42.6
step
  only Undead
  talk Karos Razok##2226
  accept Ride to the Undercity##6323 |goto Silverpine Forest 45.62,42.6
step
  talk Rane Yorick##1950
  turnin Lost Deathstalkers##428 |goto Silverpine Forest 53.46,13.43
step
  talk Quinn Yorick##1951
  turnin Return to Quinn (Again)##91921 |goto Silverpine Forest 53.43,12.59
step
  talk Rane Yorick##1950
  accept Wild Hearts##429 |goto Silverpine Forest 53.46,13.43
step
  talk Deathstalker Erland##1978
  accept Escorting Erland##435 |goto Silverpine Forest 56.18,9.18
step
  talk Quinn Yorick##1951
  accept Wild Eyes##91920 |goto Silverpine Forest 53.43,12.59
step
  note Gather 6 discolored worg hearts and bring them to Apothecary Renferrel at the Sepulcher.
  collect 6 Discolored Worg Heart##3164 |q 429 |goto Silverpine Forest 66.06,8.77 |tip {dropsfrom}Worg, Mottled Worg, Bloodsnout Worg
step
  talk Rane Yorick##1950
  turnin Escorting Erland##435 |goto Silverpine Forest 53.46,13.43
step
  talk Rane Yorick##1950
  accept The Deathstalkers' Report##449 |goto Silverpine Forest 53.46,13.43
step
  talk Apothecary Renferrel##1937
  turnin Wild Hearts##429 |goto Silverpine Forest 42.8,40.86
step
  talk High Executor Hadrec##1952
  turnin The Deathstalkers' Report##449 |goto Silverpine Forest 43.42,40.86
step
  talk Apothecary Renferrel##1937
  accept Return to Quinn##430 |goto Silverpine Forest 42.8,40.86
step
  talk High Executor Hadrec##1952
  accept Speak with Renferrel##3221 |goto Silverpine Forest 43.42,40.86
step
  talk Apothecary Renferrel##1937
  turnin Speak with Renferrel##3221 |goto Silverpine Forest 42.8,40.86
step
  talk Dalar Dawnweaver##1938
  accept Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept The Dead Fields##437 |goto Silverpine Forest 43.42,40.86
step
  talk Shadow Priest Allister##2121
  accept Border Crossings##477 |goto Silverpine Forest 43.98,40.93
step
  note Dalar Dawnweaver at the Sepulcher wants you to kill 5 Moonrage Whitescalps.
  kill Moonrage Whitescalp##1769 |q 421 |goto Silverpine Forest 53,26.69
step
  talk Quinn Yorick##1951
  turnin Return to Quinn##430 |goto Silverpine Forest 53.43,12.59
step
  talk Rane Yorick##1950
  accept Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  note Kill Ivar the Foul, and bring Ivar's Head to Rane Yorick at the Ivar Patch.
  collect Ivar's Head##3621 |q 425 |goto Silverpine Forest 51.52,13.9 |tip {dropsfrom}Ivar the Foul
step
  note Kill rot hide gnolls at the Dead Fields.
  collect Essence of Nightlash##3622 |q 437 |goto Silverpine Forest 45,21 |tip {dropsfrom}Nightlash
step
  talk Rane Yorick##1950
  turnin Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  turnin Border Crossings##477 |goto Silverpine Forest 49.89,60.33
step
  click Dalaran Crate##1627
  accept Maps and Runes##478 |goto Silverpine Forest 49.89,60.33
step
  talk Dalar Dawnweaver##1938
  turnin Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  turnin The Dead Fields##437 |goto Silverpine Forest 43.42,40.86
step
  talk Shadow Priest Allister##2121
  turnin Maps and Runes##478 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  talk Shadow Priest Allister##2121
  accept Dalar's Analysis##481 |goto Silverpine Forest 43.98,40.93
step
  talk Apothecary Renferrel##1937
  accept Zinge's Delivery##1359 |goto Silverpine Forest 42.8,40.86
step
  talk Dalar Dawnweaver##1938
  turnin Dalar's Analysis##481 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  accept Dalaran's Intentions##482 |goto Silverpine Forest 44.2,39.81
step
  talk Shadow Priest Allister##2121
  turnin Dalaran's Intentions##482 |goto Silverpine Forest 43.98,40.93
step
  note Retrieve the Remedy of Arugal for Dalar Dawnweaver at the Sepulcher.
  collect Remedy of Arugal##3155 |q 422 |goto Silverpine Forest 52.83,28.58 |tip {dropsfrom}Dusty Spellbooks
step
  talk Deathstalker Faerleia##2058
  accept Pyrewood Ambush##452 |goto Silverpine Forest 46.5,74.39
step
  talk Deathstalker Faerleia##2058
  turnin Pyrewood Ambush##452 |goto Silverpine Forest 46.5,74.39
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  note Bring 6 Glutton Shackles and 3 Darksoul Shackles to Dalar Dawnweaver at the Sepulcher.
  collect 6 Glutton Shackle##3156 |q 423 |goto Silverpine Forest 46.63,28.36 |tip {dropsfrom}Moonrage Glutton
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  note Kill Grimson the Pale and bring his head to Dalar Dawnweaver at the Sepulcher.
  collect Head of Grimson##3634 |q 424 |goto Silverpine Forest 58.58,44.86 |tip {dropsfrom}Grimson the Pale
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept The Decrepit Ferry##438 |goto Silverpine Forest 43.42,40.86
step
  talk Shadow Priest Allister##2121
  accept Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##98298 |goto Silverpine Forest 44.2,39.81
step
  turnin The Decrepit Ferry##438 |goto Silverpine Forest 58.44,34.9
step
  click Corpse Laden Boat##1593
  accept Rot Hide Clues##439 |goto Silverpine Forest 58.44,34.9
step
  note Bring 6 Pyrewood Shackles to Dalar Dawnweaver at the Sepulcher.
  kill Pyrewood Watcher##1891 |goto Silverpine Forest 45.35,72.52 |elite
  collect 6 Pyrewood Shackle##3218 |q 99 |goto Silverpine Forest 45.35,72.52
step
  note Obtain 8 Dalaran Pendants for Shadow Priest Allister at the Sepulcher.
  collect 8 Dalaran Pendant##3354 |q 479 |goto Silverpine Forest 58.65,63.2 |tip {dropsfrom}Dalaran Protector, Dalaran Mage, Dalaran Conjuror
step
  note Bring 6 Worgen Bits to Dalar Dawnweaver in The Sepulcher.
  collect 6 Worgen Bits##280375 |q 98298 |goto Silverpine Forest 51.74,78.86 |tip {dropsfrom}Moonrage Bloodhowler
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  turnin Rot Hide Clues##439 |goto Silverpine Forest 43.42,40.86
step
  talk Shadow Priest Allister##2121
  turnin Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##98298 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept The Engraved Ring##440 |goto Silverpine Forest 43.42,40.86
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##447 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1886 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  accept A Lesson in Divinity##94434 |goto Undercity 65.62,37.94
step
  talk Clarice Foster##5543
  accept Until Death Do Us Part##264 |goto Thunder Bluff 27.2,24.4
step
  talk Alessandro Luca##7683
  accept Prompt Potion Runner##97891 |goto Undercity 58.61,54.68
step
  kill Rot Hide Brute##1939 |goto Silverpine Forest 67.6,31 |tip Loot the quest item here — it starts the quest.
  accept Resting in Pieces##460 |goto Silverpine Forest 67.6,31
step
  only not Orc not Tauren not Skyborne Mage
  talk Anastasia Hartwell##4568
  accept Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03
step
  only not Orc not Tauren not Skyborne Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment Coffers from behind Anastasia Hartwell. Bring 3 Filled Containment Coffers, the Chest of Containment Coffers and the Cantation of Manifestation to Anastasia in the Undercity.
  collect 3 Filled Containment Coffer##7292 |q 1960 |goto Undercity 85.14,10.03
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept Fenwick Thatros##1998 |goto Undercity 83.51,69.11
step
  only Rogue not completed(2380) not haveq(2380)
  talk Mennet Carkad##6467
  accept Find the Shattered Hand##2378 |goto Undercity 83.51,69.11
step
  talk Shadow Priest Allister##2121
  accept Watching the Roads##95981 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  accept Stop the Spread##98299 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  accept Journey to Hillsbrad Foothills##493 |goto Silverpine Forest 42.8,40.86
step
  talk Shadow Priest Allister##2121
  accept Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  only Warlock completed(1476) not completed(1507) not haveq(1507)
  talk Carendin Halgar##5675
  accept The Binding##1474 |goto Undercity 85.06,25.99
step
  only Warlock completed(1476) not completed(1507) not haveq(1507)
  note Using the Pure Hearts, summon and subdue a succubus, then return the Pure Hearts to Carendin Halgar in the Magic Quarter of the Undercity.
  use Summoned Succubus##5677 |q 1474 |tip {useit}
step
  only Troll Priest not completed(5642) not completed(5680) not haveq(5642) not haveq(5680)
  talk Aelthalyste##4606
  accept Shadowguard##5643 |goto Undercity 49.26,17.12
step
  only Undead Priest not completed(5644) not completed(5646) not haveq(5644) not haveq(5646)
  talk Aelthalyste##4606
  accept Devouring Plague##5679 |goto Undercity 49.26,17.12
step
  only Undead Paladin
  talk Trevan Rol##248840
  accept A Curious Pair##91859 |goto Silverpine Forest 43.4,41
step
  only Undead Paladin
  talk Deathguard Baldren##259611
  accept A Grim Fate##91860 |goto Silverpine Forest 44.43,40.87
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  accept Lumina Windsinger##91862 |goto Silverpine Forest 65.8,28.6
step
  talk Tabitha Heartweaver##250686
  accept A Frightened Request##92401 |goto Silverpine Forest 44.57,42.94
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  accept The Windshaper's Wrath##96204 |goto Silverpine Forest 65.8,28.6
step
  only Shaman completed(63)
  click Brazier of Everfount##113791
  accept Call of Water##100 |goto Silverpine Forest 38.26,44.56
step
  kill Ravenclaw Guardian##1973 |goto Silverpine Forest 58.66,71.29 |tip Loot the quest item here — it starts the quest.
  accept The Offering Stone##95884 |goto Silverpine Forest 58.66,71.29
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept The Debt##95034 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Trevan Rol##248840
  accept An Underrated Talent##95111 |goto Silverpine Forest 43.4,41
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept Old Fire-Eye##95140 |goto Silverpine Forest 43.2,40.8
step
  only completed(5726)
  note Take the Lieutenant's Insignia to Neeru Fireblade and speak to him. Gauge if he believes you are a member of the Burning Blade and then return to Thrall in Orgrimmar.
  talk Neeru Fireblade##3216 |q 5727 |goto Orgrimmar 49.47,50.59
step
  note Gather 3 murloc eyes and bring them to Apothecary Renferrel at the Sepulcher.
  collect 3 Murloc Eye##730 |q 91920 |goto Wetlands 18.07,39.84 |tip {dropsfrom}Gobbler, Bluegill Raider, Murloc Tidehunter
step
  only Undead Paladin
  note Bring 10 Linen Cloth to Tanis Alderwood in the Undercity.
  collect 10 Linen Cloth##2589 |q 94434 |goto Alterac Mountains 21.33,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Undead Rogue
  note Kill Fenwick Thatros and bring his head back to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Fenwick's Head##7306 |q 1998 |goto Silverpine Forest 59.58,33.94 |tip {dropsfrom}Fenwick Thatros
step
  note Slay 8 Dalaran Wizards and 8 Dalaran Watchers for Shadow Priest Allister in the Sepulcher.
  talk Dalaran Watcher##1888 |q 95981 |goto Silverpine Forest 62.66,75.43
step
  note Slay 5 Sickly Refugees and 5 Haggard Refugees for Dalar Dawnweaver in The Sepulcher.
  talk Haggard Refugee##2053 |q 98299 |goto Silverpine Forest 46.08,85.63
step
  note Locate Beren's Peril, then kill 6 Ravenclaw Drudgers and 6 Ravenclaw Guardians, then return to Shadow Priest Allister at the Sepulcher.
  kill Ravenclaw Drudger##1974 |q 516 |goto Silverpine Forest 59.14,70.5
step
  only Undead Paladin
  note Retrieve the Fenris Isle Key from the Rot Hide Gnolls and use it to free Lumina Windsinger.
  collect Fenris Isle Key##267412 |q 91862 |goto Silverpine Forest 65.71,24.03 |tip {dropsfrom}Rot Hide Savage, Raging Rot Hide, Rot Hide Bruiser
step
  note Find the Offering Stone in Beren's Peril in Silverpine Forest.
  collect Note Scrap##271343 |q 95884 |goto Silverpine Forest 58.66,71.29 |tip {dropsfrom}Ravenclaw Guardian, Ravenclaw Drudger
step
  only completed(5726)
  talk Thrall##4949
  turnin Hidden Enemies##5727 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Apothecary Renferrel##1937
  turnin Wild Eyes##91920 |goto Silverpine Forest 42.8,40.86
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  turnin A Lesson in Divinity##94434 |goto Undercity 65.62,37.94 |tip {turninat}Undercity
step
  turnin Until Death Do Us Part##264 |goto Silverpine Forest 44.19,42.67
step
  talk Doctor Martin Felben##11044
  turnin Prompt Potion Runner##97891 |goto Undercity 46.61,74.09 |tip {turninat}Undercity
step
  turnin Resting in Pieces##460 |goto Silverpine Forest 67.87,24.85
step
  only not Orc not Tauren not Skyborne Mage
  talk Anastasia Hartwell##4568
  turnin Investigate the Alchemist Shop##1960 |goto Undercity 85.14,10.03 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin Fenwick Thatros##1998 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Rogue not completed(2380) not haveq(2380)
  talk Shenthul##3401
  turnin Find the Shattered Hand##2378 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  talk Shadow Priest Allister##2121
  turnin Watching the Roads##95981 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Stop the Spread##98299 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Lydon##2216
  turnin Journey to Hillsbrad Foothills##493 |goto Hillsbrad Foothills 61.44,19.06 |tip {turninat}Hillsbrad Foothills
step
  talk Shadow Priest Allister##2121
  turnin Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  only Warlock completed(1476) not completed(1507) not haveq(1507)
  talk Carendin Halgar##5675
  turnin The Binding##1474 |goto Undercity 85.06,25.99 |tip {turninat}Undercity
step
  only Troll Priest not completed(5642) not completed(5680) not haveq(5642) not haveq(5680)
  talk Ur'kyo##6018
  turnin Shadowguard##5643 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only Undead Priest not completed(5644) not completed(5646) not haveq(5644) not haveq(5646)
  talk Aelthalyste##4606
  turnin Devouring Plague##5679 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Undead Paladin
  talk Deathguard Baldren##259611
  turnin A Curious Pair##91859 |goto Silverpine Forest 44.43,40.87
step
  only Undead Paladin
  talk Lumina Windsinger##248755
  turnin Lumina Windsinger##91862 |goto Silverpine Forest 65.8,28.6
step
  talk Tabitha Heartweaver##250686
  turnin A Frightened Request##92401 |goto Silverpine Forest 44.57,42.94
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin The Windshaper's Wrath##96204 |goto Silverpine Forest 43.2,40.8
step
  only Shaman completed(63)
  talk Minor Manifestation of Water##5895
  turnin Call of Water##100 |goto Silverpine Forest 38.65,44.58
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin The Debt##95034 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Ott##3539
  turnin An Underrated Talent##95111 |goto Hillsbrad Foothills 60.43,26.18 |tip {turninat}Hillsbrad Foothills
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  turnin Old Fire-Eye##95140 |goto Silverpine Forest 43.2,40.8
step
  only Undead
  talk Gordon Wendham##4556
  turnin Ride to the Undercity##6323 |goto Undercity 61.49,41.79 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1898 |goto Undercity 83.51,69.11
step
  talk Master Apothecary Faranell##2055
  accept A Recipe For Death##450 |goto Undercity 48.82,69.28
step
  only not Tauren not Skyborne Mage
  talk Anastasia Hartwell##4568
  accept Gathering Materials##1961 |goto Undercity 85.14,10.03
step
  click Shallow Grave##1599
  accept The Hidden Niche##461 |goto Silverpine Forest 67.87,24.85
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept Tools of the Trade##1999 |goto Undercity 83.51,69.11
step
  note Retrieve Apothecary Berard's journal from Pyrewood Village and take it to Apothecary Renferrel at the Sepulcher.
  collect Berard's Journal##3255 |q 450 |goto Silverpine Forest 42.98,73.18 |tip {dropsfrom}Berard's Bookshelf
step
  only not Tauren not Skyborne Mage
  note Bring 10 Linen Cloth and 6 Dalaran Mana Gems to Josef Gregorian.
  collect 10 Linen Cloth##2589 |q 1961 |goto Alterac Mountains 21.33,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only Undead Rogue
  note Find the Dalaran Status Report and return it to Mennet Carkad in the Rogues' Quarter of the Undercity.
  collect Dalaran Status Report##7309 |q 1999 |goto Silverpine Forest 63.71,65.24 |tip {dropsfrom}Ambermill Strongbox
step
  only Undead Rogue
  talk Andron Gant##6522
  turnin The Deathstalkers##1898 |goto Undercity 54.81,76.33 |tip {turninat}Undercity
step
  talk Apothecary Renferrel##1937
  turnin A Recipe For Death##450 |goto Silverpine Forest 42.8,40.86
step
  only not Tauren not Skyborne Mage
  talk Josef Gregorian##4576
  turnin Gathering Materials##1961 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  turnin The Hidden Niche##461 |goto Silverpine Forest 65.36,24.81
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin Tools of the Trade##1999 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only Undead
  talk Gordon Wendham##4556
  accept Michael Garrett##6322 |goto Undercity 61.49,41.79
step
  only Undead Rogue
  talk Andron Gant##6522
  accept The Deathstalkers##1899 |goto Undercity 54.81,76.33
step
  only not Orc not Tauren not Skyborne Mage
  talk Josef Gregorian##4576
  accept Spellfire Robes##1962 |goto Undercity 70.76,30.69
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##451 |goto Silverpine Forest 42.8,40.86
step
  click Dusty Shelf##112888
  accept Wand to Bethor##491 |goto Silverpine Forest 65.36,24.81
step
  only Undead Rogue
  note Bring Andron's Ledger to Mennet Carkad in the Rogues' Quarter of Undercity.
  collect Andron's Ledger##7294 |q 1899 |goto Undercity 55.4,76.96 |tip {dropsfrom}Andron's Bookshelf
step
  note Bring 6 samples of Lake Creeper Moss, 6 samples of Lake Skulker Moss and a Hardened Tumor to Master Apothecary Faranell in the Undercity.
  collect 6 Lake Skulker Moss##3256 |q 451 |goto Silverpine Forest 71.53,36 |tip {dropsfrom}Lake Skulker, Elder Lake Skulker
step
  only Undead
  talk Michael Garrett##4551
  turnin Michael Garrett##6322 |goto Undercity 63.25,48.56 |tip {turninat}Undercity
step
  only Undead Rogue
  talk Mennet Carkad##6467
  turnin The Deathstalkers##1899 |goto Undercity 83.51,69.11 |tip {turninat}Undercity
step
  only not Orc not Tauren not Skyborne Mage
  talk Josef Gregorian##4576
  turnin Spellfire Robes##1962 |goto Undercity 70.76,30.69 |tip {turninat}Undercity
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##451 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  turnin Wand to Bethor##491 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Apothecary Zinge##5204
  turnin Zinge's Delivery##1359 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  talk Magistrate Sevren##1499
  turnin The Engraved Ring##440 |goto Tirisfal Glades 61.26,50.84 |tip {turninat}Tirisfal Glades
step
  only Undead
  talk Michael Garrett##4551
  accept Return to Podrig##6324 |goto Undercity 63.25,48.56
step
  only Undead Rogue
  talk Mennet Carkad##6467
  accept The Deathstalkers##1978 |goto Undercity 83.51,69.11
step
  talk High Executor Hadrec##1952
  accept Rot Hide Ichor##443 |goto Silverpine Forest 43.42,40.86
step
  note Bring 8 bottles of rot hide ichor to Apothecary Renferrel at the Sepulcher.
  collect 8 Rot Hide Ichor##3236 |q 443 |goto Silverpine Forest 67.6,31 |tip {dropsfrom}Rot Hide Brute, Rot Hide Plague Weaver, Rot Hide Savage
step
  only Undead
  talk Deathguard Podrig##6389
  turnin Return to Podrig##6324 |goto Silverpine Forest 43.42,41.68
step
  only Undead Rogue
  talk Varimathras##2425
  turnin The Deathstalkers##1978 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  talk Apothecary Renferrel##1937
  turnin Rot Hide Ichor##443 |goto Silverpine Forest 42.8,40.86
step
  talk Magistrate Sevren##1499
  accept Raleigh and the Undercity##441 |goto Tirisfal Glades 61.26,50.84
step
  talk Apothecary Renferrel##1937
  accept Rot Hide Origins##444 |goto Silverpine Forest 42.8,40.86
step
  talk Raleigh Andrean##2050
  turnin Raleigh and the Undercity##441 |goto Undercity 62.01,42.75 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  turnin Rot Hide Origins##444 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Bethor Iceshard##1498
  accept Thule Ravenclaw##446 |goto Undercity 84.07,17.45
step
  talk Raleigh Andrean##2050
  accept A Husband's Revenge##530 |goto Undercity 62.01,42.75
step
  talk Shadow Priest Allister##2121
  accept The Weaver##480 |goto Silverpine Forest 43.98,40.93
step
  note Kill Valdred Moray.
  collect Valdred's Hands##3613 |q 530 |goto Silverpine Forest 44.65,84.7 |tip {dropsfrom}Valdred Moray
step
  note Kill the Dalaran archmage, then retrieve his staff for Shadow Priest Allister at the Sepulcher.
  collect Ataeric's Staff##3515 |q 480 |goto Silverpine Forest 63.4,64.27 |tip {dropsfrom}Archmage Ataeric
step
  talk Apothecary Renferrel##1937
  turnin Thule Ravenclaw##446 |goto Silverpine Forest 42.8,40.86
step
  talk Raleigh Andrean##2050
  turnin A Husband's Revenge##530 |goto Undercity 62.01,42.75 |tip {turninat}Undercity
step
  talk Shadow Priest Allister##2121
  turnin The Weaver##480 |goto Silverpine Forest 43.98,40.93
step
  talk Apothecary Renferrel##1937
  accept Report to Hadrec##448 |goto Silverpine Forest 42.8,40.86
step
  talk High Executor Hadrec##1952
  turnin Report to Hadrec##448 |goto Silverpine Forest 43.42,40.86
step
  talk High Executor Hadrec##1952
  accept Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  note Bring Thule's Head to High Executor Hadrec at the Sepulcher.
  kill Thule Ravenclaw##1947 |goto Silverpine Forest 65.71,23.67 |elite
  collect Thule's Head##3623 |q 442 |goto Silverpine Forest 65.71,23.67
step
  talk High Executor Hadrec##1952
  turnin Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  note {travel}Thunder Bluff
  goto Thunder Bluff 22.81,20.89
]])
