-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Azshara (51-58)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Un'Goro Crater (50-55)",
	rev = "33ce7de7",
}, [[
step
  ding 50
step
  only completed(98067)
  talk Sentinel Dalia Sunblade##8396
  accept Sisters In Duty##98096 |goto Darnassus 39.65,89.54
step
  only Hunter level>=50
  talk Dorion##4205
  accept The Hunter's Charm##8151 |goto Darnassus 42.21,7.27
step
  note {fp}Jarrodenus
  goto Azshara 11.9,77.59 |tip {vendor}
step
  only completed(98067)
  note Seek out Commander Truesong at Talrendis Point in Azshara for information about Keldara Sunblade's whereabouts.
  talk Commander Truesong##239822
  turnin Sisters In Duty##98096 |goto Azshara 11.81,78.36
step
  talk Loh'atu##11548
  accept Spiritual Unrest##5535 |goto Azshara 11.37,78.17
step
  talk Loh'atu##11548
  accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
  talk Commander Truesong##239822
  accept Slay the Spitelash##88807 |goto Azshara 11.81,78.36
step
  only not completed(91488) not haveq(91488)
  talk Berdun Cliffbrew##240482
  accept Home on the Range##89001 |goto Azshara 12.6,77.36
step
  talk Sentinel Keldara Sunblade##222478
  accept Saving a Sentinel##88857 |goto Azshara 20.62,61.91
step
  note Kill 6 Haldarr Satyr, 2 Haldarr Tricksters, 2 Haldarr Felsworn and then return to Loh'atu on the border of Ashenvale.
  kill Haldarr Satyr##6125 |q 5536/1 |goto Azshara 20.99,61.79
  kill Haldarr Felsworn##6127 |q 5536/3 |goto Azshara 20.54,61.2
  kill Haldarr Trickster##6126 |q 5536 |goto Azshara 20.27,62.23
step
  only not completed(91488) not haveq(91488)
  note Bring 5 Mosshoof Hides to Berdun Cliffbrew at Talrendis Point in Azshara.
  collect 5 Mosshoof Hide##238463 |q 89001 |goto Azshara 21.48,57.57 |tip {dropsfrom}Mosshoof Runner, Mosshoof Stag, Mosshoof Courser
step
  note Kill 8 Spitelash Warriors and 8 Spitelash Screamers for Commander Truesong in Azshara.
  kill Spitelash Warrior##6190 |q 88807/1 |goto Azshara 30.99,55.09
  kill Spitelash Screamer##6193 |q 88807 |goto Azshara 31.67,53.74
step
  only Rogue completed(8234) level>=50
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Mage level>=50
  talk Archmage Xylem##8379
  accept Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Mage haveq(8251)
  note Bring 10 Glittering Dust to Archmage Xylem.
  collect 10 Glittering Dust##20028 |q 8251 |goto Azshara 58.02,28.18 |tip {dropsfrom}Blood Elf Surveyor, Blood Elf Reclaimer, Blood Elf Arcanist
step
  only Hunter haveq(8151)
  note Speak to Ogtinc in Azshara.
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62
step
  only Hunter completed(8151) level>=50
  talk Ogtinc##8405
  accept Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Priest completed(8254) level>=50
  talk Ogtinc##8405
  accept Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Mage haveq(8251)
  talk Archmage Xylem##8379
  turnin Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Mage completed(8251) level>=50
  talk Archmage Xylem##8379
  accept The Siren's Coral##8252 |goto Azshara 29.25,40.21
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
  talk Commander Truesong##239822
  turnin Slay the Spitelash##88807 |goto Azshara 11.81,78.36
step
  note Help Keldara Sunblade escape the Haldarr Encampment, then speak to Commander Truesong at Talrendis Point.
  talk Commander Truesong##239822
  turnin Saving a Sentinel##88857 |goto Azshara 11.81,78.36
step
  only not completed(91488) not haveq(91488)
  talk Berdun Cliffbrew##240482
  turnin Home on the Range##89001 |goto Azshara 12.6,77.36
step
  only not completed(91608) not haveq(91608)
  talk Berdun Cliffbrew##240482
  accept Gettin' Buzzed##89013 |goto Azshara 12.6,77.36
step
  talk Commander Truesong##239822
  accept Making Contact##88821 |goto Azshara 11.81,78.36
step
  talk Commander Truesong##239822
  accept Preserving Eldarath##88809 |goto Azshara 11.81,78.36
step
  only not completed(91608) not haveq(91608)
  note Gather 5 Wild Honey from Wasp Nests using Berdun's Pellet Gun.
  collect 5 Wild Honey##238503 |q 89013 |goto Azshara 18.94,55.21 |tip {dropsfrom}Honey Wasp
step
  only Mage haveq(8252)
  note Collect 6 Enchanted Coral and return them to Archmage Xylem.
  collect 6 Enchanted Coral##20029 |q 8252 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren
step
  note Collect 12 Eldarath Relics from Spitelash Serpent Guards, Spitelash Sirens, and Spitelash Myrmidons, and Lord Sarthiss' Head for Commander Truesong in Azshara.
  collect Lord Sarthiss' Head##280610 |q 88809/2 |goto Azshara 37.62,56.06 |tip {dropsfrom}Lord Sarthiss
  collect 12 Eldarath Relic##280608 |q 88809 |goto Azshara 39.49,54.89 |tip {dropsfrom}Spitelash Serpent Guard, Spitelash Siren, Spitelash Myrmidon
step
  talk Ekkal##235903
  accept The Legashi Threat##86746 |goto Azshara 42,38.88
step
  talk Ekkal##235903
  accept Report to Rageroar##86752 |goto Azshara 42,38.88
step
  note Find the Kaldorei woman last seen on the Shattered Strand.
  talk Saria Fairmoon##239831
  turnin Making Contact##88821 |goto Azshara 50.56,42.7
step
  talk Saria Fairmoon##239831
  accept Slithering Looters##88917 |goto Azshara 50.56,42.7
step
  note Find the Staff of Archmage Selwyn among the Ruins of Eldarath, and bring it to Saria Fairmoon in Azshara.
  collect Staff of Archmage Selwyn##238347 |q 88917 |goto Azshara 40.99,50.56 |tip {dropsfrom}Sesspira's Hoard
step
  talk Saria Fairmoon##239831
  turnin Slithering Looters##88917 |goto Azshara 50.56,42.7
step
  talk Saria Fairmoon##239831
  accept Highborne Tablets##88884 |goto Azshara 50.56,42.7
step
  note Find the three highborne tablets among the ruins of Southridge Beach, then bring them to Saria Fairmoon in Azshara.
  collect Tablet of Creation##238244 |q 88884/1 |goto Azshara 49.16,49.58 |tip {dropsfrom}Highborne Tablet
  collect Tablet of Manipulation##238245 |q 88884/2 |goto Azshara 48.84,55.21 |tip {dropsfrom}Highborne Tablet
  collect Tablet of Power##238246 |q 88884 |goto Azshara 49.99,63.79 |tip {dropsfrom}Highborne Tablet
step
  talk Saria Fairmoon##239831
  turnin Highborne Tablets##88884 |goto Azshara 50.56,42.7
step
  talk Saria Fairmoon##239831
  accept Murloc Thieves##89037 |goto Azshara 50.56,42.7
step
  only Mage haveq(8252)
  talk Archmage Xylem##8379
  turnin The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  note Speak with Gatekeeper Rageroar at Ursolan.
  talk Gatekeeper Rageroar##236573
  turnin Report to Rageroar##86752 |goto Azshara 42.28,20.13
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
  note Find a way to get Legashi Firewater in the Legashi Encampment.
  turnin An Unlikely Source##86804 |goto Azshara 57.7,21.02
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
  note Find the Blackmaw scouting party near the Legashi camps east of Ursolan.
  talk Korsa##236770
  turnin Missing Blackmaw Scouts##86791 |goto Azshara 63.01,21.43
step
  talk Korsa##236770
  accept Master Feardred##86777 |goto Azshara 63.01,21.43
step
  talk Korsa##236770
  accept Return to Rageroar##86797 |goto Azshara 63.01,21.43
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
  note Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
  collect Kim'Jael's Compass##10717 |q 3601 |goto Azshara 58.9,28.4 |tip {dropsfrom}Kim'jael's Equipment
step
  talk Kim'jael##8420
  turnin Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  turnin Toil and Trouble##86925 |goto Azshara 57.7,21.02
step
  turnin Felfire Burn, Cauldron Bubble##86926 |goto Azshara 57.7,21.02
step
  talk Kim'jael##8420
  accept Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  note Return to Gatekeeper Rageroar at Ursolan.
  talk Gatekeeper Rageroar##236573
  turnin Return to Rageroar##86797 |goto Azshara 42.28,20.13
step
  note Bring the Legashi Firewater to Elder Bramblesnap at Ursolan.
  talk Elder Bramblesnap##235906
  turnin Running Firewater##86927 |goto Azshara 41.67,19.54
step
  talk Ekkal##235903
  turnin The Legashi Threat##86746 |goto Azshara 42,38.88
step
  note Find Some Rune that the naga have in their possession in the Ruins of Eldarath and return it to Kim'jael in Azshara.
  collect Some Rune##13815 |q 5534 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren, Spitelash Myrmidon, Spitelash Battlemaster
step
  only Hunter haveq(8153)
  note Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
  collect Perfect Courser Antler##20017 |q 8153 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Priest completed(8254) haveq(8255)
  note Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 4 Healthy Courser Gland##20027 |q 8255 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  note Use the Satyrweed Tincture on 3 Mosshoof Coursers or Thunderhead Skystormers after weakening them.
  use Mosshoof Courser##8761 |q 86812 |goto Azshara 50.78,75.64 |tip {useit}
step
  only Hunter haveq(8153)
  talk Ogtinc##8405
  turnin Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Priest completed(8254) haveq(8255)
  talk Ogtinc##8405
  turnin Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Hunter completed(8153)
  talk Ogtinc##8405
  accept Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Priest completed(8254) completed(8255)
  talk Ogtinc##8405
  accept The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  talk Elder Bramblesnap##235906
  turnin Transmuted Tincture##86812 |goto Azshara 41.67,19.54
step
  talk Kim'jael##8420
  turnin Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  only Rogue completed(8234) haveq(8235)
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  collect 10 Encoded Fragment##20023 |q 8235 |goto Azshara 71.73,29.47 |tip {dropsfrom}Forest Ooze
step
  note Take the Memory Crystal from Razorgill near the Tower of Eldara, and bring it to Saria Fairmoon in Azshara.
  collect Memory Crystal##238385 |q 89037 |goto Azshara 89.1,31.75 |tip {dropsfrom}Razorgill
step
  only Hunter haveq(8231)
  note Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 6 Wavethrasher Scales##20087 |q 8231 |goto Azshara 86.31,12.61 |tip {dropsfrom}Young Wavethrasher, Wavethrasher, Great Wavethrasher
step
  talk Graal##237007
  accept Later, Satyr##86796 |goto Azshara 66.58,14.57
step
  note Help Graal break out of Legashi Stronghold, then inform Korsa outside Legashi Stronghold.
  talk Korsa##236770
  turnin Later, Satyr##86796 |goto Azshara 63.01,21.43
step
  talk Saria Fairmoon##239831
  turnin Murloc Thieves##89037 |goto Azshara 50.56,42.7
step
  talk Saria Fairmoon##239831
  accept A Monumental Task##89038 |goto Azshara 50.56,42.7
step
  only Hunter haveq(8231)
  talk Ogtinc##8405
  turnin Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only hasitem(249698)
  use Feathered Charm Necklace##249698 |tip It starts the quest.
  accept A Lost Memento##92070
step
  only haveq(92070)
  note Find the owner of the Feathered Charm Necklace.
  collect Feathered Charm Necklace##249698 |q 92070 |goto Azshara 35.13,24.07 |tip {dropsfrom}Swarming Imp, Legashi Satyr, Legashi Slayer
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
  only Rogue completed(8234) haveq(8235)
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  talk Commander Truesong##239822
  turnin Preserving Eldarath##88809 |goto Azshara 11.81,78.36
step
  only not completed(91608) not haveq(91608)
  talk Berdun Cliffbrew##240482
  turnin Gettin' Buzzed##89013 |goto Azshara 12.6,77.36
step
  talk Commander Truesong##239822
  accept Reclaiming Ravencrest##88812 |goto Azshara 11.81,78.36
step
  only not completed(92346) not haveq(92346)
  talk Commander Truesong##239822
  accept Beneath Nordrassil##92345 |goto Azshara 11.81,78.36
step
  note Kill 5 Spitelash Battlemasters, 5 Spitelash Enchantresses, and nullify the 3 Naga Power Stones near Ravencrest Monument for Commander Truesong in Azshara.
  kill Spitelash Battlemaster##7885 |q 88812 |goto Azshara 69.75,90.54
step
  note Search for the Mark of the Queen among the ruins of the Ravencrest Monument, and bring it to Saria Fairmoon in Azshara.
  collect Mark of the Queen##238517 |q 89038 |goto Azshara 71.23,89.5
step
  only completed(3449)
  talk Pilot Xiggs Fuselighter##8392
  accept Return to Tymor##3461 |goto Azshara 77.81,91.4
step
  only Priest completed(8254) haveq(8256)
  note Acquire an Ichor of Undeath for Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Ichor of Undeath##7972 |q 8256 |goto Azshara 17.27,70.71 |tip {dropsfrom}Highborne Apparition, Highborne Lichling, Lingering Highborne
step
  talk Commander Truesong##239822
  turnin Reclaiming Ravencrest##88812 |goto Azshara 11.81,78.36
step
  talk Commander Truesong##239822
  accept The Head of the Serpent##88813 |goto Azshara 11.81,78.36
step
  only Priest completed(8254) haveq(8256)
  talk Ogtinc##8405
  turnin The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  talk Saria Fairmoon##239831
  turnin A Monumental Task##89038 |goto Azshara 50.56,42.7
step
  talk Saria Fairmoon##239831
  accept Your Final Reward##89053 |goto Azshara 50.56,42.7
step
  note See what Saria has to show you.
  turnin Your Final Reward##89053 |goto Azshara 49.42,41.81
step
  click Saria's Knapsack##527828
  accept Ill Tidings##89470 |goto Azshara 49.42,41.81
step
  note Bring Warlord Krellian's head to Commander Truesong in Azshara.
  collect Krellian's Head##238057 |q 88813 |goto Azshara 41.02,53.05 |tip {dropsfrom}Warlord Krellian
step
  talk Commander Truesong##239822
  turnin The Head of the Serpent##88813 |goto Azshara 11.81,78.36
step
  note Bring Saria's Knapsack back to Commander Truesong at Talrendis Point.
  talk Commander Truesong##239822
  turnin Ill Tidings##89470 |goto Azshara 11.81,78.36
step
  only completed(89228,91610) level>=56
  talk Berdun Cliffbrew##240482
  accept Deadliest Catch##89015 |goto Azshara 12.6,77.36
step
  only completed(89228,91610) haveq(89015)
  note Bring a Mammoth Shark Steak to Berdun Cliffbrew at Talrendis Point in Azshara.
  kill Mammoth Shark##12125 |q 89015 |goto Azshara 76.28,74.94 |elite
  collect Mammoth Shark Steak##238507 |q 89015 |goto Azshara 76.28,74.94
step
  only completed(89228,91610) haveq(89015)
  talk Berdun Cliffbrew##240482
  turnin Deadliest Catch##89015 |goto Azshara 12.6,77.36
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
  only not completed(92346) not haveq(92346)
  note Speak to Mathrengyl Bearwalker at the Cenarion Enclave in Darnassus.
  talk Mathrengyl Bearwalker##4217
  turnin Beneath Nordrassil##92345 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Mathrengyl Bearwalker##4217
  accept Get to the Roots of It##92344 |goto Darnassus 35.37,8.4
step
  note Gather 10 Nordrassil Root Caps inside Blackmaw Hold for Mathrengyl Bearwalker in Darnassus.
  collect 10 Nordrassil Root Cap##250773 |q 92344 |goto Darnassus 35.37,8.4
step
  talk Mathrengyl Bearwalker##4217
  turnin Get to the Roots of It##92344 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
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
  note {travel}Darnassus
  goto Darnassus 34.81,9.26
]])
