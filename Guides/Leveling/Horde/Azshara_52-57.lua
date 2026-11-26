-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Azshara (52-57)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Felwood (52-56)",
	rev = "b9d4f75c",
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
  only not completed(91734) not completed(91737) not haveq(91734) not haveq(91737)
  talk Jes'rimon##8659
  accept Remote Contact##91735 |goto Orgrimmar 55.52,34.08
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
  only not completed(91734) not completed(91737) not haveq(91734) not haveq(91737)
  note Speak to Jediga in Azshara.
  talk Jediga##8587
  turnin Remote Contact##91735 |goto Azshara 22.56,51.42
step
  only not completed(89001) not haveq(89001)
  talk Kurll##3621
  accept Home on the Range##91488 |goto Azshara 21.82,52.1
step
  talk Izvi Gildfizz##247473
  accept Long Walks on the Beach##91568 |goto Azshara 22.46,51.89
step
  talk Jediga##8587
  accept Stealing Knowledge##3517 |goto Azshara 22.56,51.42
step
  talk Ag'tor Bloodfist##8576
  accept Betrayed##3505 |goto Azshara 22.26,51.48
step
  talk Izvi Gildfizz##247473
  accept Blue Gold##91569 |goto Azshara 22.46,51.89
step
  only not completed(89001) not haveq(89001)
  note Bring 5 Mosshoof Hides to Kurll at Valormok in Azshara.
  collect 5 Mosshoof Hide##238463 |q 91488 |goto Azshara 21.48,57.57 |tip {dropsfrom}Mosshoof Runner, Mosshoof Stag, Mosshoof Courser
step
  note Find the Tablet of Beth'Amara, the Tablet of Jin'yael, the Tablet of Markri, and the Tablet of Sael'hai before returning to Jediga in Azshara.
  collect Tablet of Markri##10540 |q 3517/3 |goto Azshara 35.7,56.51
  collect Tablet of Beth'Amara##10538 |q 3517/1 |goto Azshara 36,57.6
  collect Tablet of Sael'hai##10541 |q 3517/4 |goto Azshara 37,54.5
  collect Tablet of Jin'yael##10539 |q 3517 |goto Azshara 39.8,59.7
step
  note Dig up 10 Highborne Treasure Fragments with the Treasure Trowel 3000 for Izvi Glidfizz in Valormok.
  collect 10 Highborne Treasure Fragment##246684 |q 91568 |goto Azshara 47.24,52.69 |tip {dropsfrom}Makrinni Burrower, Loose Sand
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
  talk Ekkal##235903
  accept The Legashi Threat##86746 |goto Azshara 42,38.88
step
  talk Ekkal##235903
  accept Report to Rageroar##86752 |goto Azshara 42,38.88
step
  note Kill 10 Blood Elf Reclaimers, and 10 Blood Elf Surveyors before seeking out Magus Rimtori's camp. Once you've found it, look for something that might be important to her that can be used to draw her into a fight.
  kill Blood Elf Reclaimer##6199 |q 3505/1 |goto Azshara 56.39,28.85
  kill Blood Elf Surveyor##6198 |q 3505 |goto Azshara 58.02,28.18
step
  turnin Betrayed##3505 |goto Azshara 59.51,31.3
step
  talk Sin'dorei Tome of Summoning##247449
  accept Seals of the Sin'dorei##91497 |goto Azshara 59.52,31.31
step
  note Bring the Seal of the Warden, Seal of the Warrior, and Seal of the Ranger to the Sin'dorei Tome of Summoning.
  collect Seal of the Warrior##246721 |q 91497/2 |goto Azshara 56.41,27.64 |tip {dropsfrom}Magister Hawkhelm
  collect Seal of the Warden##246725 |q 91497/1 |goto Azshara 66.85,28.12 |tip {dropsfrom}Lieutenant Suncrest
  collect Seal of the Ranger##246722 |q 91497 |goto Azshara 70.08,29.45 |tip {dropsfrom}Ranger Lydrea
step
  note Bring a Mana-Siphoning Wand to Izvi Gildfizz at Valormok.
  collect Mana-Siphoning Wand##246680 |q 91569 |goto Azshara 68,28.61 |tip {dropsfrom}Blood Elf Arcanist
step
  talk Sin'dorei Tome of Summoning##247449
  turnin Seals of the Sin'dorei##91497 |goto Azshara 59.52,31.31
step
  talk Kim'jael##8420
  accept Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  click Legashi Cauldron##506307
  accept Toil and Trouble##86925 |goto Azshara 57.7,21.02
step
  click Legashi Cauldron##506307
  accept Felfire Burn, Cauldron Bubble##86926 |goto Azshara 57.7,21.02
step
  click Legashi Cauldron##506307
  accept Running Firewater##86927 |goto Azshara 57.7,21.02
step
  note Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
  collect Kim'Jael's Compass##10717 |q 3601 |goto Azshara 58.9,28.4 |tip {dropsfrom}Kim'jael's Equipment
step
  talk Korsa##236770
  accept Master Feardred##86777 |goto Azshara 63.01,21.43
step
  talk Korsa##236770
  accept Return to Rageroar##86797 |goto Azshara 63.01,21.43
step
  only Warlock not completed(8420) not haveq(8420)
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8419 |goto Azshara 61.79,23.59 |tip {dropsfrom}Legashi Satyr, Legashi Rogue, Legashi Hellcaller
step
  note Kill 5 Legashi Satyr, 5 Legashi Rogues, and 5 Legashi Hellcallers for Ekkal at the Ruins of Eldarth.
  kill Legashi Satyr##6200 |q 86746/1 |goto Azshara 61.79,23.59
  kill Legashi Rogue##6201 |q 86746/2 |goto Azshara 61.24,23.41
  kill Legashi Hellcaller##6202 |q 86746 |goto Azshara 65.26,16.41
step
  note Kill Master Feardred, and bring his amulet to Korsa.
  collect Feardred's Amulet##235334 |q 86777 |goto Azshara 61.35,25.05 |tip {dropsfrom}Master Feardred
step
  note Find a Legashi Firewater Recipe from satyr in the Legashi Encampment.
  collect Legashi Firewater Recipe##235645 |q 86925 |goto Azshara 61.79,23.59 |tip {dropsfrom}Legashi Satyr, Legashi Rogue, Legashi Hellcaller
step
  note Bring 5 Satyrweed and a Fel Mote to the Legashi Cauldron in the Legashi Encampment.
  collect Fel Mote##235471 |q 86926/2 |goto Azshara 61.46,25.1
  collect 5 Satyrweed##235470 |q 86926 |goto Azshara 59.61,22.79 |tip {dropsfrom}Satyrweed Bramble
step
  talk Korsa##236770
  turnin Master Feardred##86777 |goto Azshara 63.01,21.43
step
  talk Korsa##236770
  accept Thinning Their Forces##86792 |goto Azshara 63.01,21.43
step
  note Kill 6 Legashi Hellraisers, 4 Legashi Soulstealers, and 2 Legashi Blackguards for Korsa outside Legashi Stronghold.
  kill Legashi Hellraiser##236874 |q 86792/1 |goto Azshara 65.66,18.6
  kill Legashi Soulstealer##236867 |q 86792/2 |goto Azshara 65.74,18.58
  kill Legashi Blackguard##236876 |q 86792 |goto Azshara 65.57,18.12
step
  talk Korsa##236770
  turnin Thinning Their Forces##86792 |goto Azshara 63.01,21.43
step
  talk Graal##237007
  accept Later, Satyr##86796 |goto Azshara 66.58,14.57
step
  note Help Graal break out of Legashi Stronghold, then inform Korsa outside Legashi Stronghold.
  talk Korsa##236770
  turnin Later, Satyr##86796 |goto Azshara 63.01,21.43
step
  note Speak with Gatekeeper Rageroar at Ursolan.
  talk Gatekeeper Rageroar##236573
  turnin Report to Rageroar##86752 |goto Azshara 42.28,20.13
step
  note Return to Gatekeeper Rageroar at Ursolan.
  talk Gatekeeper Rageroar##236573
  turnin Return to Rageroar##86797 |goto Azshara 42.28,20.13
step
  note Bring the Legashi Firewater to Elder Bramblesnap at Ursolan.
  talk Elder Bramblesnap##235906
  turnin Running Firewater##86927 |goto Azshara 41.67,19.54
step
  talk Gatekeeper Rageroar##236573
  accept Missing Blackmaw Scouts##86791 |goto Azshara 42.28,20.13
step
  talk Furze##235909
  accept Encroaching Corruption##86799 |goto Azshara 45.27,22.34
step
  talk Elder Bramblesnap##235906
  accept An Unlikely Source##86804 |goto Azshara 41.67,19.54
step
  talk Elder Bramblesnap##235906
  accept Transmuted Tincture##86812 |goto Azshara 41.67,19.54
step
  talk Elder Bramblesnap##235906
  accept Potential Panacea##86813 |goto Azshara 41.67,19.54
step
  note Speak to Elder Bramblesnap about Furze's illness.
  talk Elder Bramblesnap##235906
  turnin Encroaching Corruption##86799 |goto Azshara 41.67,19.54
step
  note Administer Bramblesnap's Panacea to Furze.
  talk Elder Bramblesnap##235906
  turnin Potential Panacea##86813 |goto Azshara 41.67,19.54
step
  talk Kim'jael##8420
  turnin Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  note Find a way to get Legashi Firewater in the Legashi Encampment.
  turnin An Unlikely Source##86804 |goto Azshara 57.7,21.02
step
  turnin Toil and Trouble##86925 |goto Azshara 57.7,21.02
step
  turnin Felfire Burn, Cauldron Bubble##86926 |goto Azshara 57.7,21.02
step
  talk Kim'jael##8420
  accept Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  note Find the Blackmaw scouting party near the Legashi camps east of Ursolan.
  talk Korsa##236770
  turnin Missing Blackmaw Scouts##86791 |goto Azshara 63.01,21.43
step
  talk Sin'dorei Tome of Summoning##247449
  accept An Explosive Gambit##91500 |goto Azshara 59.52,31.31
step
  talk Sin'dorei Tome of Summoning##247449
  accept Sin'dorei Tome of Summoning##91538 |goto Azshara 59.52,31.31
step
  note Break the Seals of the Sin'dorei, then bring Magus Rimtori's head to Ag'tor Bloodfist in Valormok.
  collect Head of Magus Rimtori##10597 |q 91500 |goto Azshara 59.51,31.37 |tip {dropsfrom}Magus Rimtori
step
  talk Ekkal##235903
  turnin The Legashi Threat##86746 |goto Azshara 42,38.88
step
  note Find Some Rune that the naga have in their possession in the Ruins of Eldarath and return it to Kim'jael in Azshara.
  collect Some Rune##13815 |q 5534 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren, Spitelash Myrmidon, Spitelash Battlemaster
step
  talk Jediga##8587
  turnin Stealing Knowledge##3517 |goto Azshara 22.56,51.42
step
  only not completed(89001) not haveq(89001)
  talk Kurll##3621
  turnin Home on the Range##91488 |goto Azshara 21.82,52.1
step
  talk Ag'tor Bloodfist##8576
  turnin An Explosive Gambit##91500 |goto Azshara 22.26,51.48
step
  note Bring the Sin'dorei Tome of Summoning back to Jediga in Valormok.
  talk Jediga##8587
  turnin Sin'dorei Tome of Summoning##91538 |goto Azshara 22.56,51.42
step
  talk Izvi Gildfizz##247473
  turnin Long Walks on the Beach##91568 |goto Azshara 22.46,51.89
step
  talk Izvi Gildfizz##247473
  turnin Blue Gold##91569 |goto Azshara 22.46,51.89
step
  only not completed(89013) not haveq(89013)
  talk Kurll##3621
  accept Gettin' Buzzed##91608 |goto Azshara 21.82,52.1
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
  only level>=54
  talk Izvi Gildfizz##247473
  accept Ley of the Land##91685 |goto Azshara 22.46,51.89
step
  talk Ag'tor Bloodfist##8576
  accept Revenge Exacted##91531 |goto Azshara 22.26,51.48
step
  talk Jediga##8587
  accept Sin'dorei Tome of Summoning##91547 |goto Azshara 22.56,51.42
step
  only not completed(92345) not haveq(92345)
  talk Jediga##8587
  accept Beneath Nordrassil##92346 |goto Azshara 22.56,51.42
step
  only not completed(89013) not haveq(89013)
  note Gather 5 Wild Honey from Wasp Nests using Kurll's Pellet Gun.
  collect 5 Wild Honey##238503 |q 91608 |goto Azshara 18.94,55.21 |tip {dropsfrom}Honey Wasp
step
  only not completed(89013) not haveq(89013)
  talk Kurll##3621
  turnin Gettin' Buzzed##91608 |goto Azshara 21.82,52.1
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
  note Deliver Xylem's Note to Jediga in Azshara.
  talk Jediga##8587
  turnin Xylem's Payment to Jediga##3565 |goto Azshara 22.56,51.42
step
  only level>=56
  talk Kurll##3621
  accept Deadliest Catch##91611 |goto Azshara 21.82,52.1
step
  only haveq(91685)
  note Use the Mana-Siphoning Wand on the Leyline Rift in Lake Mennar and bring the Tear of Mennar to Izvi Gildfizz.
  kill Celegosa##247972 |q 91685 |goto Azshara 40.49,80.02 |elite
  collect Tear of Mennar##246938 |q 91685 |goto Azshara 40.49,80.02
step
  only Hunter
  note Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
  collect Perfect Courser Antler##20017 |q 8153 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Priest
  note Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 4 Healthy Courser Gland##20027 |q 8255 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  note Use the Satyrweed Tincture on 3 Mosshoof Coursers or Thunderhead Skystormers after weakening them.
  use Mosshoof Courser##8761 |q 86812 |goto Azshara 50.78,75.64 |tip {useit}
step
  only haveq(91611)
  note Bring a Mammoth Shark Steak to Kurll at Valormok.
  kill Mammoth Shark##12125 |q 91611 |goto Azshara 76.28,74.94 |elite
  collect Mammoth Shark Steak##238507 |q 91611 |goto Azshara 76.28,74.94
step
  only Rogue completed(8234)
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  collect 10 Encoded Fragment##20023 |q 8235 |goto Azshara 71.73,29.47 |tip {dropsfrom}Forest Ooze
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
  only Mage
  note Bring 10 Glittering Dust to Archmage Xylem.
  collect 10 Glittering Dust##20028 |q 8251 |goto Azshara 58.02,28.18 |tip {dropsfrom}Blood Elf Surveyor, Blood Elf Reclaimer, Blood Elf Arcanist
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
  talk Ag'tor Bloodfist##8576
  turnin Betrayed##3506 |goto Azshara 22.26,51.48
step
  only haveq(91611)
  talk Kurll##3621
  turnin Deadliest Catch##91611 |goto Azshara 21.82,52.1
step
  only haveq(91685)
  talk Izvi Gildfizz##247473
  turnin Ley of the Land##91685 |goto Azshara 22.46,51.89
step
  talk Ag'tor Bloodfist##8576
  accept Betrayed##3507 |goto Azshara 22.26,51.48
step
  only Priest
  note Acquire an Ichor of Undeath for Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Ichor of Undeath##7972 |q 8256 |goto Azshara 17.27,70.71 |tip {dropsfrom}Highborne Apparition, Highborne Lichling, Lingering Highborne
step
  only Mage
  note Collect 6 Enchanted Coral and return them to Archmage Xylem.
  collect 6 Enchanted Coral##20029 |q 8252 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren
step
  only Priest
  talk Ogtinc##8405
  turnin The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Mage
  talk Archmage Xylem##8379
  turnin The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only hasitem(249698)
  use Feathered Charm Necklace##249698 |tip It starts the quest.
  accept A Lost Memento##92070
step
  only haveq(92070)
  note Find the owner of the Feathered Charm Necklace.
  collect Feathered Charm Necklace##249698 |q 92070 |goto Azshara 35.13,24.07 |tip {dropsfrom}Swarming Imp, Legashi Satyr, Legashi Slayer
step
  talk Elder Bramblesnap##235906
  turnin Transmuted Tincture##86812 |goto Azshara 41.67,19.54
step
  only haveq(92070)
  talk Unele##249855
  turnin A Lost Memento##92070 |goto Azshara 43.17,18.09
step
  talk Gatekeeper Rageroar##236573
  accept Timbermaw Reinforcements##86798 |goto Azshara 42.28,20.13
step
  talk Lorekeeper Nok##249853
  accept The Twin Bears##92066 |goto Azshara 41.31,20.1
step
  note Find the Totem of Ursoc and the Totem of Ursol inside Blackmaw Hold. Then, return them to Lorekeeper Nok at Ursolan.
  collect Totem of Ursoc##249694 |q 92066/1
  collect Totem of Ursol##249693 |q 92066
step
  talk Lorekeeper Nok##249853
  turnin The Twin Bears##92066 |goto Azshara 41.31,20.1
step
  only Hunter
  note Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 6 Wavethrasher Scales##20087 |q 8231 |goto Azshara 86.31,12.61 |tip {dropsfrom}Young Wavethrasher, Wavethrasher, Great Wavethrasher
step
  only Hunter
  talk Ogtinc##8405
  turnin Wavethrashing##8231 |goto Azshara 42.4,42.62
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
  talk Loramus Thalipedes##7783
  accept Demon Hunter's Hunter##91877 |goto Azshara 60.82,66.35
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
  only level>=58
  talk Ogtinc##8405
  accept Claws That Rend, Tusks that Gore##92069 |goto Azshara 42.4,42.62
step
  only haveq(92069)
  note Bring the Claws of the Great Bear and the Tusks of the Unbroken to Ogtinc, in Azshara.
  collect Claws of the Great Bear##249697 |q 92069/1 |elite |tip {dropsfrom}Withermaw
  collect Tusks of the Unbroken##249696 |q 92069 |elite |tip {dropsfrom}Bonesnout the Unbroken
step
  only haveq(92069)
  talk Ogtinc##8405
  turnin Claws That Rend, Tusks that Gore##92069 |goto Azshara 42.4,42.62
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
  only level>=55
  talk Ekkal##235903
  accept Blackmaw Pouches##97327 |goto Azshara 42,38.88
step
  only haveq(97327)
  note Enter Blackmaw Hold and recover 5 Blackmaw Pouches for Ekkal at the Ruins of Eldarath in Azshara.
  collect 5 Blackmaw Pouch##273050 |q 97327 |goto Azshara 35.13,24.07 |tip {dropsfrom}Swarming Imp, Blackmaw Berserker, Blackmaw Thrall
step
  only level>=60
  talk Gatekeeper Rageroar##236573
  accept Blackmaw Reclamation##92065 |goto Azshara 42.28,20.13
step
  only haveq(92065)
  note Bring Varrox Bleakhoof's Head to Gatekeeper Rageroar at Ursolan.
  collect Head of Varrox Bleakhoof##249692 |q 92065 |goto Azshara 42.28,20.13 |elite |tip {dropsfrom}Varrox Bleakhoof
step
  only haveq(92065)
  talk Gatekeeper Rageroar##236573
  turnin Blackmaw Reclamation##92065 |goto Azshara 42.28,20.13
step
  only haveq(97327)
  talk Ekkal##235903
  turnin Blackmaw Pouches##97327 |goto Azshara 42,38.88
step
  only completed(97327) level>=55
  talk Ekkal##235903
  accept Blackmaw Pouches##96246 |goto Azshara 42,38.88
step
  only haveq(96246)
  collect Blackmaw Pouch##273050 |q 96246 |goto Azshara 35.13,24.07 |tip {dropsfrom}Swarming Imp, Blackmaw Berserker, Blackmaw Thrall
step
  only haveq(96246)
  talk Ekkal##235903
  turnin Blackmaw Pouches##96246 |goto Azshara 42,38.88
step
  note Bring the Tablet of Jin'yael to Jes'rimon in Orgrimmar.
  talk Jes'rimon##8659
  turnin Delivery to Jes'rimon##3541 |goto Orgrimmar 55.52,34.08 |tip {turninat}Orgrimmar
step
  talk Jes'rimon##8659
  accept Jes'rimon's Payment to Jediga##3563 |goto Orgrimmar 55.52,34.08
step
  only completed(4509)
  talk Zilzibin Drumlore##7010
  accept Calm Before the Storm##4511 |goto Orgrimmar 56.26,46.68
step
  note Bring the Sin'dorei Tome of Summoning to Zevrost in Orgrimmar.
  talk Zevrost##3326
  turnin Sin'dorei Tome of Summoning##91547 |goto Orgrimmar 48.47,45.43 |tip {turninat}Orgrimmar
step
  only completed(4001)
  talk Thrall##4949
  accept The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82
step
  only completed(4001)
  note Speak with Thrall if you are prepared to take on the mission he has planned.
  talk Thrall##4949
  turnin The Eastern Kingdom##4002 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only completed(4509)
  note Bring the Bank Voucher to Karus in the bank of Orgrimmar.
  talk Karus##3309
  turnin Calm Before the Storm##4511 |goto Orgrimmar 49.58,69.12 |tip {turninat}Orgrimmar
step
  note Speak to Belgrom Rockmaul in Orgrimmar.
  talk Belgrom Rockmaul##4485
  turnin Betrayed##3507 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  note Bring the Head of Magus Rimtori to Belgrom Rockmaul in Orgrimmar.
  talk Belgrom Rockmaul##4485
  turnin Revenge Exacted##91531 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  only not completed(92345) not haveq(92345)
  note Speak to Nara Wildmane at Elder Rise in Thunder Bluff.
  talk Nara Wildmane##5770
  turnin Beneath Nordrassil##92346 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  note Bring the Tablet of Beth'Amara to Magatha in Thunder Bluff.
  talk Magatha Grimtotem##4046
  turnin Delivery to Magatha##3518 |goto Thunder Bluff 69.85,30.91 |tip {turninat}Thunder Bluff
step
  talk Magatha Grimtotem##4046
  accept Magatha's Payment to Jediga##3562 |goto Thunder Bluff 69.85,30.91
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
  note Deliver Magatha's Note to Jediga in Azshara.
  talk Jediga##8587
  turnin Magatha's Payment to Jediga##3562 |goto Azshara 22.56,51.42
step
  note Deliver Jes'rimon's Note to Jediga in Azshara.
  talk Jediga##8587
  turnin Jes'rimon's Payment to Jediga##3563 |goto Azshara 22.56,51.42
step
  only Warlock not completed(8420) not haveq(8420)
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02 |tip {turninat}Felwood
step
  note Speak to Gorn One Eye in Timbermaw Hold and ask him to provide reinforcements.
  talk Gorn One Eye##11555
  turnin Timbermaw Reinforcements##86798 |goto Felwood 65.18,2.68 |tip {turninat}Felwood
step
  note {travel}Felwood
  goto Felwood 50.93,85.01
]])
