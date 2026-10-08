-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Azshara (52-58)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Winterspring (54-59)",
}, [[
step
  only Hunter
  talk Dorion##4205
  accept The Hunter's Charm##8151 |goto Darnassus 42.21,7.27
step
  only Druid
  talk Mathrengyl Bearwalker##4217
  accept Torwa Pathfinder##9063 |goto Darnassus 35.37,8.4
step
  note {fp}Jarrodenus
  goto Azshara 11.9,77.59 |tip {vendor}
step
  talk Loh'atu##11548
  accept Spiritual Unrest##5535 |goto Azshara 11.37,78.17
step
  talk Loh'atu##11548
  accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
  note Destroy 6 Highborne Apparitions and 6 Highborne Lichlings before returning to Loh'atu in Azshara.
  kill Highborne Apparition##6116 |q 5535 |goto Azshara 17.27,70.71
step
  note Kill 6 Haldarr Satyr, 2 Haldarr Tricksters, 2 Haldarr Felsworn and then return to Loh'atu on the border of Ashenvale.
  kill Haldarr Satyr##6125 |q 5536 |goto Azshara 20.99,61.79
step
  talk Loh'atu##11548
  turnin Spiritual Unrest##5535 |goto Azshara 11.37,78.17
step
  talk Loh'atu##11548
  turnin A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
  only Rogue completed(8234)
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Hunter
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Priest completed(8254)
  talk Ogtinc##8405
  accept Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  talk Kim'jael##8420
  accept Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  note Search the Thalassian Base Camp for Kim'jael's Compass, Scope, Stuffed Chicken and Wizzlegoober, then return them to him in Azshara.
  collect Kim'Jael's Compass##10717 |q 3601 |goto Azshara 58.9,28.4 |tip {dropsfrom}Kim'jael's Equipment
step
  only Mage
  note Bring 10 Glittering Dust to Archmage Xylem.
  collect 10 Glittering Dust##20028 |q 8251 |goto Azshara 58.02,28.18 |tip {dropsfrom}Blood Elf Surveyor, Blood Elf Reclaimer, Blood Elf Defender
step
  talk Kim'jael##8420
  turnin Kim'jael Indeed!##3601 |goto Azshara 53.45,21.82
step
  talk Kim'jael##8420
  accept Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  only Rogue completed(8234)
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  collect 10 Encoded Fragment##20023 |q 8235 |goto Azshara 71.73,29.47 |tip {dropsfrom}Forest Ooze
step
  only Hunter
  note Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
  collect Perfect Courser Antler##20017 |q 8153 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Priest completed(8254)
  note Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 4 Healthy Courser Gland##20027 |q 8255 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only completed(3449)
  talk Pilot Xiggs Fuselighter##8392
  accept Return to Tymor##3461 |goto Azshara 77.81,91.4
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
  only Hunter
  talk Ogtinc##8405
  turnin Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Priest completed(8254)
  talk Ogtinc##8405
  turnin Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Ogtinc##8405
  accept Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  note Find Some Rune that the naga have in their possession in the Ruins of Eldarath and return it to Kim'jael in Azshara.
  collect Some Rune##13815 |q 5534 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren, Spitelash Myrmidon, Spitelash Battlemaster
step
  only Mage
  note Collect 6 Enchanted Coral and return them to Archmage Xylem.
  collect 6 Enchanted Coral##20029 |q 8252 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren
step
  talk Kim'jael##8420
  turnin Kim'jael's "Missing" Equipment##5534 |goto Azshara 53.45,21.82
step
  only Hunter
  note Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 6 Wavethrasher Scales##20087 |q 8231 |goto Azshara 86.31,12.61 |tip {dropsfrom}Young Wavethrasher, Wavethrasher, Great Wavethrasher
step
  only Mage
  talk Archmage Xylem##8379
  turnin The Siren's Coral##8252 |goto Azshara 29.25,40.21
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
  talk Duke Hydraxis##13278
  accept Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  only completed(3449)
  talk Tymor##8507
  turnin Return to Tymor##3461 |goto Ironforge 30.96,4.83 |tip {turninat}Ironforge
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96 |tip {turninat}Un'Goro Crater
step
  only completed(6761)
  talk Mathrengyl Bearwalker##4217
  accept Rabine Saturna##6762 |goto Darnassus 35.37,8.4
step
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  note Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
  kill Dust Stormer##11744 |q 6805 |goto Silithus 21.6,22.4
step
  note Travel to Silithus and search for a Reliquary of Purity within the ruins of Southwind Village. If you are able to find it, return with it to Rabine Saturna in Nighthaven, Moonglade.
  collect Reliquary of Purity##22201 |q 5527 |goto Silithus 63.23,55.35 |tip {dropsfrom}Dusty Reliquary
step
  only completed(6761)
  talk Rabine Saturna##11801
  turnin Rabine Saturna##6762 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  talk Duke Hydraxis##13278
  turnin Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  talk Rabine Saturna##11801
  turnin A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  only completed(6761)
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  accept Breaking the Ward##3508 |goto Azshara 60.82,66.35
step
  talk Rabine Saturna##11801
  accept Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  note Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade.
  collect Sealed Reliquary of Purity##18540 |q 5526 |goto Moonglade 51.69,45.1
step
  only completed(6761)
  talk Layo Starstrike##13220
  turnin Wasteland##1124 |goto Silithus 81.87,18.93 |tip {turninat}Silithus
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  turnin Breaking the Ward##3508 |goto Azshara 60.82,66.35
step
  talk Rabine Saturna##11801
  turnin Shards of the Felvine##5526 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  accept The Name of the Beast##3509 |goto Azshara 60.82,66.35
step
  only completed(2744)
  talk Lord Arkkoroc##6134
  turnin The Name of the Beast##3509 |goto Azshara 77.13,42.79
step
  only completed(2744)
  talk Lord Arkkoroc##6134
  accept The Name of the Beast##3510 |goto Azshara 77.13,42.79
step
  only completed(2744)
  note Slay Hetaera and bring back Hetaera's Bloodied Head, Hetaera's Beaten Head, and Hetaera's Bruised Head to Lord Arkkoroc.
  kill Hetaera##6140 |goto Azshara 56.73,44.79 |elite
  collect Hetaera's Beaten Head##10599 |q 3510 |goto Azshara 56.73,44.79
step
  only completed(2744)
  talk Lord Arkkoroc##6134
  turnin The Name of the Beast##3510 |goto Azshara 77.13,42.79
step
  only completed(2744)
  talk Lord Arkkoroc##6134
  accept The Name of the Beast##3511 |goto Azshara 77.13,42.79
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  turnin The Name of the Beast##3511 |goto Azshara 60.82,66.35
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  accept Azsharite##3602 |goto Azshara 60.82,66.35
step
  only completed(2744)
  note Recover twenty Crystallized Azsharite from southern Azshara. You may use the Felhound to assist you in 'sniffing' out the location of cleverly hidden deposits.
  collect Crystallized Azsharite##10714 |q 3602 |goto Azshara 55.65,83.31 |tip {dropsfrom}Azsharite Formation
step
  only completed(2744)
  talk Loramus Thalipedes##7783
  turnin Azsharite##3602 |goto Azshara 60.82,66.35
step
  note {travel}Winterspring
  goto Winterspring 31.27,45.16
]])
