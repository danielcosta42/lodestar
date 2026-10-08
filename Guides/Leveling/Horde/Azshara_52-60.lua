-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Azshara (52-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Un'Goro Crater (52-55)",
}, [[
step
  talk Loh'atu##11548
  accept Spiritual Unrest##5535 |goto Azshara 11.37,78.17
step
  talk Loh'atu##11548
  accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
  note Destroy 6 Highborne Apparitions and 6 Highborne Lichlings before returning to Loh'atu in Azshara.
  kill Highborne Apparition##6116 |q 5535 |goto Azshara 16.55,70.71
step
  talk Jediga##8587
  accept Stealing Knowledge##3517 |goto Azshara 22.56,51.42
step
  note Find the Tablet of Beth'Amara, the Tablet of Jin'yael, the Tablet of Markri, and the Tablet of Sael'hai before returning to Jediga in Azshara.
  collect Tablet of Beth'Amara##10538 |q 3517 |goto Azshara 37.07,57.6
step
  note Kill 6 Haldarr Satyr, 2 Haldarr Tricksters, 2 Haldarr Felsworn and then return to Loh'atu on the border of Ashenvale.
  kill Haldarr Satyr##6125 |q 5536 |goto Azshara 20.4,61.79
step
  only Rogue
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  collect 10 Encoded Fragment##20023 |q 8235 |goto Azshara 70.56,29.47 |tip {dropsfrom}Forest Ooze
step
  only Mage
  talk Archmage Xylem##8379
  accept Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Mage
  note Bring 10 Glittering Dust to Archmage Xylem.
  collect 10 Glittering Dust##20028 |q 8251 |goto Azshara 57.95,28.49 |tip {dropsfrom}Blood Elf Surveyor, Blood Elf Reclaimer, Blood Elf Defender
step
  only Priest
  talk Malakai Cross##3045
  accept Cenarion Aid##8254 |goto Thunder Bluff 24.56,22.57
step
  only Mage
  talk Archmage Xylem##8379
  accept Warlord Krellian##9362 |goto Azshara 29.25,40.21
step
  only Mage
  note Retrieve the Prismatic Shell for Archmage Xylem. The Archmage resides in a tower atop the cliffs of Azshara.
  collect Prismatic Shell##23250 |q 9362 |goto Azshara 41.02,53.05 |tip {dropsfrom}Warlord Krellian, Scalebeard
step
  only Priest
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62
step
  talk Zilzibin Drumlore##7010
  accept March of the Silithid##4494 |goto Orgrimmar 56.26,46.68
step
  only Priest
  talk Ogtinc##8405
  accept Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Priest
  note Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 4 Healthy Courser Gland##20027 |q 8255 |goto Azshara 52.87,68.58 |tip {dropsfrom}Mosshoof Courser
step
  talk Alchemist Pestlezugg##5594
  turnin March of the Silithid##4494 |goto Tanaris 50.89,26.96 |tip {turninat}Tanaris
step
  talk Kim'jael##8420
  accept Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  note Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
  collect Kim'Jael's Compass##10717 |q 3601 |goto Azshara 58.2,28.4 |tip {dropsfrom}Kim'jael's Equipment
step
  talk Jes'rimon##8659
  accept Bone-Bladed Weapons##4300 |goto Orgrimmar 55.52,34.08
step
  note Bring 8 White Ravasaur Claws to Jes'rimon in Orgrimmar.
  collect 8 White Ravasaur Claw##11477 |q 4300 |goto Un'Goro Crater 62.87,74.25 |tip {dropsfrom}Ravasaur, Ravasaur Runner, Ravasaur Hunter
step
  talk Belgrom Rockmaul##4485
  accept Betrayed##3504 |goto Orgrimmar 75.23,34.24
step
  talk Royal Overseer Bauhaus##10781
  accept The Jeremiah Blues##5049 |goto Undercity 69.79,43.16
step
  talk Loramus Thalipedes##7783
  accept Loramus##3141 |goto Azshara 60.82,66.35
step
  note Listen to Loramus Thalipedes tell his story.
  kill Loramus Thalipedes##7783 |q 3141 |goto Azshara 60.82,66.35
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3568 |goto Undercity 48.71,71.39
step
  note Fill all 4 Empty Vials at the tide pools along the coast of the Ruins of Eldarath in Azshara before returning to Chemist Cuely.
  collect Filled Vial Labeled #1##10691 |q 3568 |goto Azshara 47.98,61.03 |tip {dropsfrom}the First Tide Pool
step
  talk Chemist Fuely##10136
  accept A Sample of Slime...##4293 |goto Undercity 47.45,73.35
step
  note Gather Felwood Slime Samples from any of the slimes in Felwood. Then, using the Testing Equipment next to Chemist Fuely in Undercity, see which of your samples are the most corrupt. Bring 5 of the Corrupted Felwood Samples you find to Chemist Fuely.
  collect 5 Corrupted Felwood Sample##12234 |q 4293 |goto Undercity 47.85,73.48 |tip {dropsfrom}Testing Equipment
step
  only Hunter
  talk Holt Thunderhorn##3039
  accept The Hunter's Charm##8151 |goto Thunder Bluff 57.3,89.79
step
  only Mage
  talk Maginor Dumas##331
  accept Magecraft##8250 |goto Stormwind City 49.25,87.77
step
  only Warlock
  talk Demisette Cloyce##461
  accept An Imp's Request##8419 |goto Stormwind City 39.24,84.96
step
  only Warlock
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8419 |goto Blasted Lands 57.91,51.54 |tip {dropsfrom}Felhunter, Felguard Sentry, Legashi Satyr
step
  talk Spirit of Azuregos##15481
  accept Azuregos's Magical Ledger##8575 |goto Azshara 52.98,81.73
step
  talk Duke Hydraxis##13278
  accept Poisoned Water##6804 |goto Azshara 79.28,73.7
step
  note Use the Aspect of Neptulon on poisoned elementals of Eastern Plaguelands. Bring 12 Discordant Bracers and the Aspect of Neptulon to Duke Hydraxis in Azshara.
  collect 12 Discordant Bracers##17309 |q 6804 |goto Eastern Plaguelands 54.55,68.84 |tip {dropsfrom}Blighted Surge, Plague Ravager, Blighted Horror
step
  talk Duke Hydraxis##13278
  accept Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  only Rogue
  talk Osborne the Night Man##918
  accept A Simple Request##8233 |goto Stormwind City 77.43,65.31
step
  talk Loh'atu##11548
  turnin Spiritual Unrest##5535 |goto Azshara 11.37,78.17
step
  talk Loh'atu##11548
  turnin A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
  talk Ag'tor Bloodfist##8576
  turnin Betrayed##3504 |goto Azshara 22.26,51.48
step
  only Mage
  talk Sanath Lim-yo##8395
  turnin Magecraft##8250 |goto Azshara 28.11,50.09
step
  talk Jediga##8587
  turnin Stealing Knowledge##3517 |goto Azshara 22.56,51.42
step
  talk Ag'tor Bloodfist##8576
  accept Betrayed##3505 |goto Azshara 22.26,51.48
step
  talk Jediga##8587
  accept Delivery to Magatha##3518 |goto Azshara 22.56,51.42
step
  talk Jediga##8587
  accept Delivery to Jes'rimon##3541 |goto Azshara 22.56,51.42
step
  talk Jediga##8587
  accept Delivery to Andron Gant##3542 |goto Azshara 22.56,51.42
step
  talk Jediga##8587
  accept Delivery to Archmage Xylem##3561 |goto Azshara 22.56,51.42
step
  only Mage
  talk Archmage Xylem##8379
  turnin Warlord Krellian##9362 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  turnin Magic Dust##8251 |goto Azshara 29.25,40.21
step
  talk Archmage Xylem##8379
  turnin Delivery to Archmage Xylem##3561 |goto Azshara 29.25,40.21
step
  talk Archmage Xylem##8379
  accept Xylem's Payment to Jediga##3565 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Archmage Xylem##8379
  accept The Azure Key##8236 |goto Azshara 29.25,40.21
step
  only Rogue
  note Return the Azure Key to Lord Jorach Ravenholdt.
  collect Azure Key##20022 |q 8236 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Mage
  talk Archmage Xylem##8379
  accept The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only Mage
  note Collect 6 Enchanted Coral and return them to Archmage Xylem.
  collect 6 Enchanted Coral##20029 |q 8252 |goto Azshara 44.56,54.02 |tip {dropsfrom}Spitelash Siren
step
  only Mage
  talk Archmage Xylem##8379
  accept Fragmented Magic##9364 |goto Azshara 29.25,40.21
step
  note Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
  kill Dust Stormer##11744 |q 6805 |goto Silithus 21.6,22
step
  only Priest
  talk Ogtinc##8405
  turnin Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62
step
  only Warlock
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02 |tip {turninat}Felwood
step
  only Hunter
  talk Ogtinc##8405
  accept Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Hunter
  note Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
  collect Perfect Courser Antler##20017 |q 8153 |goto Azshara 52.87,68.58 |tip {dropsfrom}Mosshoof Courser
step
  only Priest
  talk Ogtinc##8405
  accept The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Priest
  note Acquire an Ichor of Undeath for Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Ichor of Undeath##7972 |q 8256 |goto Stranglethorn Vale 38.89,57.62 |tip {dropsfrom}Zanzil Zombie, Zanzil Hunter, Skeletal Flayer
step
  only Mage
  note Polymorph the Spitelash of Azshara and kill the clones that appear several seconds later. When you have slain 50 Polymorph Clones, return to Archmage Xylem in Azshara.
  kill Polymorph Clone##16479 |q 9364 |goto Azshara 36.16,54.59
step
  talk Kim'jael##8420
  turnin Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  talk Jes'rimon##8659
  turnin Bone-Bladed Weapons##4300 |goto Orgrimmar 55.52,34.08 |tip {turninat}Orgrimmar
step
  talk Jes'rimon##8659
  turnin Delivery to Jes'rimon##3541 |goto Orgrimmar 55.52,34.08 |tip {turninat}Orgrimmar
step
  talk Narain Soothfancy##11811
  turnin Azuregos's Magical Ledger##8575 |goto Tanaris 65.24,18.58 |tip {turninat}Tanaris
step
  talk Jes'rimon##8659
  accept Jes'rimon's Payment to Jediga##3563 |goto Orgrimmar 55.52,34.08
step
  talk Kim'jael##8420
  accept Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  note Find Some Rune that the naga have in their possession in the Ruins of Eldarath and return it to Kim'jael in Azshara.
  collect Some Rune##13815 |q 5534 |goto Azshara 44.56,54.02 |tip {dropsfrom}Spitelash Siren, Spitelash Myrmidon, Spitelash Battlemaster
step
  note Kill 10 Blood Elf Reclaimers, and 10 Blood Elf Surveyors before seeking out Magus Rimtori's camp. Once you've found it, look for something that might be important to her that can be used to draw her into a fight.
  kill Blood Elf Reclaimer##6199 |q 3505 |goto Azshara 56.75,28.57
step
  talk Jeremiah Payson##8403
  turnin The Jeremiah Blues##5049 |goto Undercity 67.6,44.16 |tip {turninat}Undercity
step
  talk Magatha Grimtotem##4046
  turnin Delivery to Magatha##3518 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  talk Magatha Grimtotem##4046
  accept Magatha's Payment to Jediga##3562 |goto Thunder Bluff 69.85,30.91
step
  talk Loramus Thalipedes##7783
  turnin Loramus##3141 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept Breaking the Ward##3508 |goto Azshara 60.82,66.35
step
  talk Ol' Emma##3520
  accept Good Luck Charm##5050 |goto Stormwind City 60.2,57.03
step
  talk Chemist Fuely##10136
  turnin A Sample of Slime...##4293 |goto Undercity 47.45,73.35 |tip {turninat}Undercity
step
  talk Andron Gant##6522
  turnin Delivery to Andron Gant##3542 |goto Undercity 54.81,76.33 |tip {turninat}Undercity
step
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3568 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  talk Andron Gant##6522
  accept Andron's Payment to Jediga##3564 |goto Undercity 54.81,76.33
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3569 |goto Undercity 48.71,71.39
step
  talk Duke Hydraxis##13278
  turnin Poisoned Water##6804 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  turnin Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88 |tip {turninat}Alterac Mountains
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin The Azure Key##8236 |goto Alterac Mountains 86.02,78.88 |tip {turninat}Alterac Mountains
step
  talk Duke Hydraxis##13278
  accept Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  note Bring the Eye of the Emberseer to Duke Hydraxis in Azshara.
  collect Eye of the Emberseer##17322 |q 6821 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Pyroguard Emberseer
step
  talk Jediga##8587
  turnin Magatha's Payment to Jediga##3562 |goto Azshara 22.56,51.42
step
  talk Jediga##8587
  turnin Jes'rimon's Payment to Jediga##3563 |goto Azshara 22.56,51.42
step
  talk Jediga##8587
  turnin Andron's Payment to Jediga##3564 |goto Azshara 22.56,51.42
step
  talk Jediga##8587
  turnin Xylem's Payment to Jediga##3565 |goto Azshara 22.56,51.42
step
  only Mage
  talk Archmage Xylem##8379
  turnin Fragmented Magic##9364 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  turnin The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Mage
  note Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem.
  collect Arcane Shard##20085 |q 8253 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  talk Janice Felstone##10778
  turnin Good Luck Charm##5050 |goto Western Plaguelands 38.4,54.05 |tip {turninat}Western Plaguelands
step
  only Priest
  talk Ogtinc##8405
  turnin The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  turnin Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Hunter
  note Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 6 Wavethrasher Scales##20087 |q 8231 |goto Azshara 85.54,12.61 |tip {dropsfrom}Young Wavethrasher, Wavethrasher, Great Wavethrasher
step
  only Priest
  talk Ogtinc##8405
  accept Blood of Morphaz##8257 |goto Azshara 42.4,42.62
step
  only Priest
  note Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows.
  collect Blood of Morphaz##20025 |q 8257 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  talk Kim'jael##8420
  turnin Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  turnin Betrayed##3505 |goto Azshara 59.51,31.3
step
  click Kaldorei Tome of Summoning##151286
  accept Betrayed##3506 |goto Azshara 59.51,31.3
step
  note Destroy the arcane focusing crystal tied to Magus Rimtori and then slay her. Afterwards, take the Head of Magus Rimtori to Ag'tor Bloodfist in Azshara.
  collect Head of Magus Rimtori##10597 |q 3506 |goto Azshara 59.51,31.37 |tip {dropsfrom}Magus Rimtori
step
  talk Loramus Thalipedes##7783
  turnin Breaking the Ward##3508 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept The Name of the Beast##3509 |goto Azshara 60.82,66.35
step
  only Priest
  talk Greta Mosshoof##10922
  turnin Blood of Morphaz##8257 |goto Felwood 51.21,82.11 |tip {turninat}Felwood
step
  talk Thersa Windsong##8393
  turnin Seeping Corruption##3569 |goto Undercity 49.04,70.8 |tip {turninat}Undercity
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3570 |goto Undercity 48.71,71.39
step
  talk Duke Hydraxis##13278
  turnin Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept The Molten Core##6822 |goto Azshara 79.28,73.7
step
  talk Ag'tor Bloodfist##8576
  turnin Betrayed##3506 |goto Azshara 22.26,51.48
step
  talk Ag'tor Bloodfist##8576
  accept Betrayed##3507 |goto Azshara 22.26,51.48
step
  only Mage
  talk Archmage Xylem##8379
  turnin Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  note Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara.
  kill Molten Giant##11658 |q 6822 |goto Molten Core - Dungeon -1,-1 |elite
step
  only Hunter
  talk Ogtinc##8405
  turnin Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Hunter
  note Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Tooth of Morphaz##20019 |q 8232 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  talk Belgrom Rockmaul##4485
  turnin Betrayed##3507 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  talk Lord Arkkoroc##6134
  turnin The Name of the Beast##3509 |goto Azshara 77.13,42.79
step
  talk Lord Arkkoroc##6134
  accept The Name of the Beast##3510 |goto Azshara 77.13,42.79
step
  note Slay Hetaera and bring back Hetaera's Bloodied Head, Hetaera's Beaten Head, and Hetaera's Bruised Head to Lord Arkkoroc.
  kill Hetaera##6140 |goto Azshara 56.73,44.79 |elite
  collect Hetaera's Beaten Head##10599 |q 3510 |goto Azshara 56.73,44.79
step
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3570 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  talk Duke Hydraxis##13278
  turnin The Molten Core##6822 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept Agent of Hydraxis##6823 |goto Azshara 79.28,73.7
step
  only Hunter
  talk Ogtinc##8405
  turnin The Green Drake##8232 |goto Azshara 42.4,42.62
step
  talk Lord Arkkoroc##6134
  turnin The Name of the Beast##3510 |goto Azshara 77.13,42.79
step
  talk Lord Arkkoroc##6134
  accept The Name of the Beast##3511 |goto Azshara 77.13,42.79
step
  talk Loramus Thalipedes##7783
  turnin The Name of the Beast##3511 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept Azsharite##3602 |goto Azshara 60.82,66.35
step
  note Recover twenty Crystallized Azsharite from southern Azshara. You may use the Felhound to assist you in 'sniffing' out the location of cleverly hidden deposits.
  collect Crystallized Azsharite##10714 |q 3602 |goto Azshara 55.46,79.76 |tip {dropsfrom}Azsharite Formation
step
  talk Duke Hydraxis##13278
  turnin Agent of Hydraxis##6823 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept Hands of the Enemy##6824 |goto Azshara 79.28,73.7
step
  note Bring the Hands of Lucifron, Sulfuron, Gehennas and Shazzrah to Duke Hydraxis in Azshara.
  collect Hand of Shazzrah##17332 |q 6824 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Shazzrah
step
  talk Loramus Thalipedes##7783
  turnin Azsharite##3602 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept The Formation of Felbane##3621 |goto Azshara 60.82,66.35
step
  talk Duke Hydraxis##13278
  turnin Hands of the Enemy##6824 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept A Hero's Reward##7486 |goto Azshara 79.28,73.7
step
  talk Galvan the Ancient##7802
  turnin The Formation of Felbane##3621 |goto Stranglethorn Vale 50.62,20.48 |tip {turninat}Stranglethorn Vale
step
  turnin A Hero's Reward##7486 |goto Azshara 79.24,74.87
]])
