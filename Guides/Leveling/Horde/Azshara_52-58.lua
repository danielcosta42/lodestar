-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Azshara (52-58)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tanaris (53-54)",
	rev = "c51ce0c8",
}, [[
step
  ding 51
step
  only Hunter
  talk Holt Thunderhorn##3039
  accept The Hunter's Charm##8151 |goto Thunder Bluff 57.3,89.79
step
  only Mage
  talk Archmage Shymm##3047
  accept Magecraft##8250 |goto Thunder Bluff 22.76,14.53
step
  only Priest
  talk Malakai Cross##3045
  accept Cenarion Aid##8254 |goto Thunder Bluff 24.56,22.57
step
  only Warlock not completed(8420) not haveq(8420)
  talk Zevrost##3326
  accept An Imp's Request##8419 |goto Orgrimmar 48.47,45.43
step
  talk Belgrom Rockmaul##4485
  accept Betrayed##3504 |goto Orgrimmar 75.23,34.24
step
  talk Loh'atu##11548
  accept Spiritual Unrest##5535 |goto Azshara 11.37,78.17
step
  talk Loh'atu##11548
  accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
  note Kill 6 Haldarr Satyr, 2 Haldarr Tricksters, 2 Haldarr Felsworn and then return to Loh'atu on the border of Ashenvale.
  kill Haldarr Trickster##6126 |q 5536/2 |goto Azshara 20.27,62.23
  kill Haldarr Satyr##6125 |q 5536/1 |goto Azshara 20.99,61.79
  kill Haldarr Felsworn##6127 |q 5536 |goto Azshara 20.54,61.2
step
  note Destroy 6 Highborne Apparitions and 6 Highborne Lichlings before returning to Loh'atu in Azshara.
  kill Highborne Lichling##6117 |q 5535/2 |goto Azshara 17.85,69.96
  kill Highborne Apparition##6116 |q 5535 |goto Azshara 17.27,70.71
step
  talk Loh'atu##11548
  turnin Spiritual Unrest##5535 |goto Azshara 11.37,78.17
step
  talk Loh'atu##11548
  turnin A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
  only Hunter
  note Speak to Ogtinc in Azshara.
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62
step
  only Priest
  note Seek out Ogtinc in Azshara.
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  accept Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  note {fp}Kroum
  goto Azshara 21.96,49.62 |tip {vendor}
step
  note Deliver the Sealed Letter to Ag'tor Bloodfist in Azshara.
  talk Ag'tor Bloodfist##8576
  turnin Betrayed##3504 |goto Azshara 22.26,51.48
step
  only Mage
  note Seek out Sanath Lim-yo and gain passage to see Archmage Xylem.
  talk Sanath Lim-yo##8395
  turnin Magecraft##8250 |goto Azshara 28.11,50.09
step
  talk Jediga##8587
  accept Stealing Knowledge##3517 |goto Azshara 22.56,51.42
step
  talk Ag'tor Bloodfist##8576
  accept Betrayed##3505 |goto Azshara 22.26,51.48
step
  note Find the Tablet of Beth'Amara, the Tablet of Jin'yael, the Tablet of Markri, and the Tablet of Sael'hai before returning to Jediga in Azshara.
  collect Tablet of Markri##10540 |q 3517/3 |goto Azshara 35.7,56.51
  collect Tablet of Beth'Amara##10538 |q 3517/1 |goto Azshara 36,57.6
  collect Tablet of Sael'hai##10541 |q 3517/4 |goto Azshara 37,54.5
  collect Tablet of Jin'yael##10539 |q 3517 |goto Azshara 39.8,59.7
step
  talk Jediga##8587
  turnin Stealing Knowledge##3517 |goto Azshara 22.56,51.42
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
  only Hunter
  note Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
  collect Perfect Courser Antler##20017 |q 8153 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Priest
  note Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 4 Healthy Courser Gland##20027 |q 8255 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Hunter
  talk Ogtinc##8405
  turnin Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  turnin Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  accept The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  note Bring the Tablet of Sael'hai to Archmage Xylem in Azshara.
  talk Archmage Xylem##8379
  turnin Delivery to Archmage Xylem##3561 |goto Azshara 29.25,40.21
step
  talk Archmage Xylem##8379
  accept Xylem's Payment to Jediga##3565 |goto Azshara 29.25,40.21
step
  only Rogue completed(8234)
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept Magic Dust##8251 |goto Azshara 29.25,40.21
step
  note Kill 10 Blood Elf Reclaimers, and 10 Blood Elf Surveyors before seeking out Magus Rimtori's camp. Once you've found it, look for something that might be important to her that can be used to draw her into a fight.
  kill Blood Elf Reclaimer##6199 |q 3505/1 |goto Azshara 56.39,28.85
  kill Blood Elf Surveyor##6198 |q 3505 |goto Azshara 58.02,28.18
step
  only Mage
  note Bring 10 Glittering Dust to Archmage Xylem.
  collect 10 Glittering Dust##20028 |q 8251 |goto Azshara 58.02,28.18 |tip {dropsfrom}Blood Elf Surveyor, Blood Elf Reclaimer
step
  only Warlock not completed(8420) not haveq(8420)
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8419 |goto Azshara 61.79,23.59 |tip {dropsfrom}Legashi Satyr, Legashi Rogue, Legashi Hellcaller
step
  turnin Betrayed##3505 |goto Azshara 59.51,31.3
step
  only Rogue completed(8234)
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  collect 10 Encoded Fragment##20023 |q 8235 |goto Azshara 71.73,29.47 |tip {dropsfrom}Forest Ooze
step
  only Hunter
  note Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 6 Wavethrasher Scales##20087 |q 8231 |goto Azshara 86.31,12.61 |tip {dropsfrom}Young Wavethrasher, Wavethrasher, Great Wavethrasher
step
  talk Kim'jael##8420
  accept Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  note Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
  collect Kim'Jael's Compass##10717 |q 3601 |goto Azshara 58.9,28.4 |tip {dropsfrom}Kim'jael's Equipment
step
  talk Kim'jael##8420
  turnin Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  talk Kim'jael##8420
  accept Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  only Rogue completed(8234)
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  turnin Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  note Deliver Xylem's Note to Jediga in Azshara.
  talk Jediga##8587
  turnin Xylem's Payment to Jediga##3565 |goto Azshara 22.56,51.42
step
  only Priest
  note Acquire an Ichor of Undeath for Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Ichor of Undeath##7972 |q 8256 |goto Azshara 17.27,70.71 |tip {dropsfrom}Highborne Apparition, Highborne Lichling, Lingering Highborne
step
  note Find Some Rune that the naga have in their possession in the Ruins of Eldarath and return it to Kim'jael in Azshara.
  collect Some Rune##13815 |q 5534 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren, Spitelash Myrmidon, Spitelash Battlemaster
step
  only Mage
  note Collect 6 Enchanted Coral and return them to Archmage Xylem.
  collect 6 Enchanted Coral##20029 |q 8252 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren
step
  only Hunter
  talk Ogtinc##8405
  turnin Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  turnin The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Mage
  talk Archmage Xylem##8379
  turnin The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  talk Kim'jael##8420
  turnin Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  click Kaldorei Tome of Summoning##151286
  accept Betrayed##3506 |goto Azshara 59.51,31.3
step
  note Destroy the arcane focusing crystal tied to Magus Rimtori and then slay her. Afterwards, take the Head of Magus Rimtori to Ag'tor Bloodfist in Azshara.
  collect Head of Magus Rimtori##10597 |q 3506 |goto Azshara 59.51,31.37 |tip {dropsfrom}Magus Rimtori
step
  talk Ag'tor Bloodfist##8576
  turnin Betrayed##3506 |goto Azshara 22.26,51.48
step
  talk Ag'tor Bloodfist##8576
  accept Betrayed##3507 |goto Azshara 22.26,51.48
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  accept Loramus##3141 |goto Azshara 60.82,66.35
step
  only completed(2744)
  note Listen to Loramus Thalipedes tell his story.
  talk Loramus Thalipedes##7783 |q 3141 |goto Azshara 60.82,66.35
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  turnin Loramus##3141 |goto Azshara 60.82,66.35
step
  only level>=55
  talk Duke Hydraxis##13278
  accept Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  accept Breaking the Ward##3508 |goto Azshara 60.82,66.35
step
  only completed(2744)
  note Wait for Loramus to complete the enlightenment spell.
  talk Loramus Thalipedes##7783
  turnin Breaking the Ward##3508 |goto Azshara 60.82,66.35
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  accept The Name of the Beast##3509 |goto Azshara 60.82,66.35
step
  only completed(2744)
  note Speak with Lord Arkkoroc in Azshara. Begin your search at the waters edge to find the Temple of Arkkoran.
  talk Lord Arkkoroc##6134
  turnin The Name of the Beast##3509 |goto Azshara 77.13,42.79
step
  only completed(2744) level>=58
  talk Lord Arkkoroc##6134
  accept The Name of the Beast##3510 |goto Azshara 77.13,42.79
step
  only completed(2744) haveq(3510)
  note Slay Hetaera and bring back Hetaera's Bloodied Head, Hetaera's Beaten Head, and Hetaera's Bruised Head to Lord Arkkoroc.
  kill Hetaera##6140 |q 3510 |goto Azshara 56.73,44.79 |elite
  collect Hetaera's Beaten Head##10599 |q 3510 |goto Azshara 56.73,44.79
step
  only completed(2744) haveq(3510)
  talk Lord Arkkoroc##6134
  turnin The Name of the Beast##3510 |goto Azshara 77.13,42.79
step
  only completed(2744) completed(3510)
  talk Lord Arkkoroc##6134
  accept The Name of the Beast##3511 |goto Azshara 77.13,42.79
step
  only completed(2744) haveq(3511)
  note Take the temper back to Loramus Thalipedes.
  talk Loramus Thalipedes##7783
  turnin The Name of the Beast##3511 |goto Azshara 60.82,66.35
step
  only completed(2744) completed(3511)
  talk Loramus Thalipedes##7783
  accept Azsharite##3602 |goto Azshara 60.82,66.35
step
  only completed(2744) haveq(3602)
  note Recover twenty Crystallized Azsharite from southern Azshara. You may use the Felhound to assist you in 'sniffing' out the location of cleverly hidden deposits.
  collect Crystallized Azsharite##10714 |q 3602 |goto Azshara 55.65,83.31 |tip {dropsfrom}Azsharite Formation
step
  only completed(2744) haveq(3602)
  talk Loramus Thalipedes##7783
  turnin Azsharite##3602 |goto Azshara 60.82,66.35
step
  only Warlock not completed(8420) not haveq(8420)
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02 |tip {turninat}Felwood
step
  only haveq(6805)
  note Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
  kill Dust Stormer##11744 |q 6805/1 |goto Silithus 21.6,22.4
  kill Desert Rumbler##11746 |q 6805 |goto Silithus 22.6,14.2
step
  only haveq(6805)
  talk Duke Hydraxis##13278
  turnin Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  note Bring the Tablet of Beth'Amara to Magatha in Thunder Bluff.
  talk Magatha Grimtotem##4046
  turnin Delivery to Magatha##3518 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  talk Magatha Grimtotem##4046
  accept Magatha's Payment to Jediga##3562 |goto Thunder Bluff 69.85,30.91
step
  note Bring the Tablet of Jin'yael to Jes'rimon in Orgrimmar.
  talk Jes'rimon##8659
  turnin Delivery to Jes'rimon##3541 |goto Orgrimmar 55.52,34.08 |tip {turninat}Orgrimmar
step
  talk Jes'rimon##8659
  accept Jes'rimon's Payment to Jediga##3563 |goto Orgrimmar 55.52,34.08
step
  note Speak to Belgrom Rockmaul in Orgrimmar.
  talk Belgrom Rockmaul##4485
  turnin Betrayed##3507 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  note Deliver Magatha's Note to Jediga in Azshara.
  talk Jediga##8587
  turnin Magatha's Payment to Jediga##3562 |goto Azshara 22.56,51.42
step
  note Deliver Jes'rimon's Note to Jediga in Azshara.
  talk Jediga##8587
  turnin Jes'rimon's Payment to Jediga##3563 |goto Azshara 22.56,51.42
step
  note {travel}Tanaris
  goto Tanaris 51.57,26.76
]])
