-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Thousand Needles (30-41)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Feralas (43-48)",
	rev = "da3bd36f",
}, [[
step
  only Warrior completed(1782)
  talk Mathiel##6142
  accept Sunscorched Shells##1710 |goto Darnassus 59.51,45.38
step
  talk Fizzle Brassbolts##4454
  accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  talk Wizzle Brassbolts##4453
  accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Kravel Koalbeard##4452
  accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
  talk Pozzik##4630
  accept Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  only Mage completed(1949)
  talk Magus Tirth##6548
  accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  note Bring 6 Salty Scorpid Venoms to Fizzle Brassbolts in the Shimmering Flats.
  collect 6 Salty Scorpid Venom##5794 |q 1104 |goto Thousand Needles 82.76,79.73 |tip {dropsfrom}Scorpid Terror, Scorpid Reaver, Vile Sting
step
  note Bring 9 Hardened Tortoise Shells to Wizzle Brassbolts in the Shimmering Flats.
  collect 9 Hardened Tortoise Shell##5795 |q 1105 |goto Thousand Needles 74.69,56.36 |tip {dropsfrom}Sparkleshell Tortoise, Sparkleshell Snapper, Sparkleshell Borer
step
  note Bring 30 Rocket Car Parts to Kravel Koalbeard in the Shimmering Flats.
  collect 30 Rocket Car Parts##5798 |q 1110 |goto Thousand Needles 72.52,72.34 |tip {dropsfrom}Rocket Car Rubble
step
  note Get 10 Hollow Vulture Bones for Pozzik in the Shimmering Flats.
  collect Hollow Vulture Bone##5848 |q 1176 |goto Thousand Needles 87.4,64.92 |tip {dropsfrom}Salt Flats Scavenger, Salt Flats Vulture
step
  only Warrior completed(1782)
  note Bring 20 Sunscorched Shells to Mathiel in Darnassus.
  collect 20 Sunscorched Shell##6849 |q 1710 |goto Thousand Needles 11.41,36.76
step
  only Mage completed(1949)
  note Find the phrase to Tirth's strongbox, then return to Tirth.
  talk "Plucky" Johnson##6626 |q 1950 |goto Thousand Needles 79.61,75.63
step
  talk Fizzle Brassbolts##4454
  turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  talk Wizzle Brassbolts##4453
  turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Kravel Koalbeard##4452
  turnin Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
  talk Pozzik##4630
  turnin Load Lightening##1176 |goto Thousand Needles 80.18,75.88
step
  only Mage completed(1949)
  talk Magus Tirth##6548
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  talk Trackmaster Zherin##4629
  accept A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  collect Henrig Lonebrow's Journal##19861 |goto Thousand Needles 30.73,24.35 |tip Loot the quest item here — it starts the quest.
  accept Lonebrow's Journal##1100 |goto Thousand Needles 30.73,24.35
step
  note Kill 10 Saltstone Basilisks, 10 Saltstone Crystalhides and 6 Saltstone Gazers for Trackmaster Zherin on the Shimmering Flats.
  kill Saltstone Basilisk##4147 |q 1175 |goto Thousand Needles 73.64,59.44
step
  talk Trackmaster Zherin##4629
  turnin A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
  talk Kravel Koalbeard##4452
  accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
step
  talk Pozzik##4630
  accept Goblin Sponsorship##1178 |goto Thousand Needles 80.18,75.88
step
  only completed(1183)
  talk Pozzik##4630
  accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
step
  only completed(1183)
  talk Razzeric##4706
  turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
step
  only completed(1183)
  talk Razzeric##4706
  accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  only completed(1137)
  talk Pozzik##4630
  accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
step
  only completed(1137)
  turnin Keeping Pace##1190 |goto Thousand Needles 77.21,77.39
step
  only completed(1137)
  click Rizzle's Unguarded Plans##20805
  accept Rizzle's Schematics##1194 |goto Thousand Needles 77.21,77.39
step
  only completed(1137)
  talk Pozzik##4630
  turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
  only completed(1119) not completed(1121) not haveq(1121)
  talk Kravel Koalbeard##4452
  accept Get the Gnomes Drunk##1120 |goto Thousand Needles 77.79,77.27
step
  only completed(1119) not completed(1121) not haveq(1121)
  talk Gnome Pit Boss##4495
  turnin Get the Gnomes Drunk##1120 |goto Thousand Needles 77.56,76.94
step
  only Warrior completed(1782)
  talk Mathiel##6142
  turnin Sunscorched Shells##1710 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  talk Falfindel Waywarder##4048
  turnin Lonebrow's Journal##1100 |goto Feralas 89.64,46.57 |tip {turninat}Feralas
step
  talk Wharfmaster Dizzywig##3453
  turnin Wharfmaster Dizzywig##1111 |goto The Barrens 63.35,38.45 |tip {turninat}The Barrens
step
  talk Talendria##11715
  accept Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
step
  note Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
  kill Noxxious Scion##13696 |q 7041 |goto Maraudon - Dungeon -1,-1
step
  talk Talendria##11715
  turnin Vyletongue Corruption##7041 |goto Desolace 68.5,8.88 |tip {turninat}Desolace
step
  talk Gazlowe##3391
  turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23 |tip {turninat}The Barrens
step
  only Warrior completed(1782)
  talk Mathiel##6142
  accept Mathiel's Armor##1711 |goto Darnassus 59.51,45.38
step
  talk Wharfmaster Dizzywig##3453
  accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
step
  only completed(1183)
  note Retrieve the Seaforium Booster for Razzeric in the Shimmering Flats.
  collect Seaforium Booster##5862 |q 1187 |goto Dustwallow Marsh 54.07,56.49 |tip {dropsfrom}Gizmorium Shipping Crate
step
  only Warrior completed(1782)
  talk Mathiel##6142
  turnin Mathiel's Armor##1711 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  talk Kravel Koalbeard##4452
  turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.27
step
  only completed(1183)
  talk Razzeric##4706
  turnin Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  talk Kravel Koalbeard##4452
  accept Delivery to the Gnomes##1114 |goto Thousand Needles 77.79,77.27
step
  only completed(1183)
  talk Razzeric##4706
  accept Safety First##1188 |goto Thousand Needles 80.33,76.09
step
  talk Fizzle Brassbolts##4454
  turnin Delivery to the Gnomes##1114 |goto Thousand Needles 78.06,77.13
step
  only completed(1183)
  talk Shreev##4708
  turnin Safety First##1188 |goto Tanaris 50.96,27.24 |tip {turninat}Tanaris
step
  note {travel}Feralas
  goto Feralas 30.28,46.17
]])
