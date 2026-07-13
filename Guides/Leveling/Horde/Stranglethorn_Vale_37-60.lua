-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stranglethorn Vale (37-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Feralas (45-51)",
}, [[
step
  note {fp}Thysta
  goto Stranglethorn Vale 32.54,29.35 |tip {vendor}
step
  talk Barnil Stonepot##716
  accept Chapter I##339 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  accept Chapter II##340 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  accept Chapter III##341 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  accept Chapter IV##342 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  accept Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.53
step
  talk Commander Aggro'gosh##2464
  accept The Defense of Grom'gol##568 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##570 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  accept Hunt for Yenniku##581 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  accept The Singing Crystals##589 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  accept Bloody Bone Necklaces##596 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  accept The Vile Reef##629 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nimboya##2497
  accept Trollbane##638 |goto Stranglethorn Vale 32.16,27.72
step
  talk Nemeth Hawkeye##17094
  accept Bloodscalp Insight##9436 |goto Stranglethorn Vale 31.97,28.61
step
  note Commander Aggro'gosh of the Grom'gol base camp wants you to kill 15 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 568 |goto Stranglethorn Vale 35.62,23.72
step
  talk Se'Jib##7871
  accept Tribal Leatherworking##5148 |goto Stranglethorn Vale 36.55,34.09
step
  talk Zengu##2703
  turnin Trollbane##638 |goto Arathi Highlands 73.8,33.96 |tip {turninat}Arathi Highlands
step
  talk Galvan the Ancient##7802
  accept Enchanted Azsharite Fel Weaponry##3625 |goto Stranglethorn Vale 50.62,20.48
step
  talk Elder Starglade##15596
  accept Starglade the Elder##8716 |goto Stranglethorn Vale 53.08,18.45
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8041 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8049 |goto Stranglethorn Vale 15.34,16.12
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Armguards##8053 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Belt##8054 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Breastplate##8055 |goto Stranglethorn Vale 15.31,14.43
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Bracers##8057 |goto Stranglethorn Vale 15.3,16.02
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Armguards##8058 |goto Stranglethorn Vale 15.31,14.43
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Wraps##8059 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Wraps##8060 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Wraps##8061 |goto Stranglethorn Vale 15.34,16.12
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Bracers##8062 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Bracers##8063 |goto Stranglethorn Vale 14.08,13.72
step
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Belt##8064 |goto Stranglethorn Vale 15.3,16.02
step
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Tunic##8065 |goto Stranglethorn Vale 15.3,16.02
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Belt##8066 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Mantle##8067 |goto Stranglethorn Vale 14.08,13.72
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Mantle##8068 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Robes##8069 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Bindings##8070 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Mantle##8071 |goto Stranglethorn Vale 15.34,16.12
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Mantle##8072 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Tunic##8073 |goto Stranglethorn Vale 14.08,13.72
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Mantle##8076 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Robes##8077 |goto Stranglethorn Vale 15.34,16.12
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Belt##8078 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Breastplate##8079 |goto Stranglethorn Vale 15.31,14.43
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8101 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8106 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  talk Exzhal##14910
  accept A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  talk Kebok##737
  accept Bloodscalp Ears##189 |goto Stranglethorn Vale 27.0,77.13
step
  talk Kebok##737
  accept Hostile Takeover##213 |goto Stranglethorn Vale 27.0,77.13
step
  talk Fin Fizracket##2486
  accept Stranglethorn Fever##348 |goto Stranglethorn Vale 27.61,76.74
step
  talk Drizzlik##2495
  accept Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
  talk Whiskey Slim##2491
  accept Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
  talk First Mate Crazz##2490
  accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.1,76.22
step
  talk First Mate Crazz##2490
  accept The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 28.1,76.22
step
  talk Crank Fizzlebub##2498
  accept Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
  talk "Sea Wolf" MacKinley##2501
  accept Scaring Shaky##606 |goto Stranglethorn Vale 27.78,77.07
step
  talk Privateer Bloads##2494
  accept Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
step
  talk Crank Fizzlebub##2498
  accept Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
  talk Fleet Master Seahorn##2487
  accept Sunken Treasure##670 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Pretty Boy" Duncan##2545
  accept Avast Ye, Scallywag##1036 |goto Stranglethorn Vale 27.39,69.42
step
  talk Krazek##773
  accept Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
  talk Wharfmaster Lozgil##4631
  accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.35,73.56
step
  talk McGavan##7794
  accept The Mithril Order##2760 |goto Stranglethorn Vale 28.87,75.42
step
  talk Krazek##773
  accept Tran'rek##2864 |goto Stranglethorn Vale 26.94,77.21
step
  talk "Sea Wolf" MacKinley##2501
  accept Stoley's Debt##2872 |goto Stranglethorn Vale 27.78,77.07
step
  talk Oglethorpe Obnoticus##7406
  accept The Pledge of Secrecy##3642 |goto Stranglethorn Vale 28.36,76.35
step
  only Druid
  talk Xizk Goodstitch##2670
  accept Components for the Enchanted Gold Bloodrobe##4782 |goto Stranglethorn Vale 28.71,76.89
step
  only Druid
  talk Xizk Goodstitch##2670
  accept Fine Gold Thread##4785 |goto Stranglethorn Vale 28.71,76.89
step
  talk Captain Hecklebury Smotts##2500
  accept The Captain's Chest##8551 |goto Stranglethorn Vale 26.69,73.61
step
  talk Captain Hecklebury Smotts##2500
  accept The Captain's Cutlass##8553 |goto Stranglethorn Vale 26.69,73.61
step
  talk Elder Winterhoof##15576
  accept Winterhoof the Elder##8674 |goto Stranglethorn Vale 26.47,76.53
step
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##670 |goto Arathi Highlands 32.28,81.38 |tip {turninat}Arathi Highlands
step
  talk Princess Poobah##2634
  accept Message in a Bottle##630 |goto Stranglethorn Vale 38.53,80.58
step
  talk Fleet Master Firallon##2546
  turnin Avast Ye, Scallywag##1036 |goto Stranglethorn Vale 30.58,90.63
step
  talk Fleet Master Firallon##2546
  accept Avast Ye, Admiral!##4621 |goto Stranglethorn Vale 30.58,90.63
step
  talk Fleet Master Firallon##2546
  accept Dressing the Part##9272 |goto Stranglethorn Vale 30.58,90.63
step
  talk Hemet Nesingwary Jr.##715
  turnin Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.81
step
  talk Barnil Stonepot##716
  turnin Chapter I##339 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter II##340 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter III##341 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter IV##342 |goto Stranglethorn Vale 35.66,10.53
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##185 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  accept Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  talk Barnil Stonepot##716
  accept The Green Hills of Stranglethorn##338 |goto Stranglethorn Vale 35.66,10.53
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Young Stranglethorn Tigers.
  kill Young Stranglethorn Tiger##681 |q 185 |goto Stranglethorn Vale 35.07,12.11
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Young Panthers.
  kill Young Panther##683 |q 190 |goto Stranglethorn Vale 41.27,12.75
step
  talk Commander Aggro'gosh##2464
  turnin The Defense of Grom'gol##568 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##570 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  turnin Hunt for Yenniku##581 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  turnin The Singing Crystals##589 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  turnin Bloody Bone Necklaces##596 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  turnin The Vile Reef##629 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nemeth Hawkeye##17094
  turnin Bloodscalp Insight##9436 |goto Stranglethorn Vale 31.97,28.61
step
  talk Commander Aggro'gosh##2464
  accept The Defense of Grom'gol##569 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##572 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  accept Headhunting##582 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  accept The Mind's Eye##591 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  accept Split Bone Necklace##598 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nemeth Hawkeye##17094
  accept An Unusual Patron##9457 |goto Stranglethorn Vale 31.97,28.61
step
  talk Se'Jib##7871
  turnin Tribal Leatherworking##5148 |goto Stranglethorn Vale 36.55,34.09
step
  note Commander Aggro'gosh of the Grom'gol base camp wants you to kill 10 Ogre Brutes and 5 Ogre Witch Doctors.
  kill Mosh'Ogg Brute##1142 |q 569 |goto Stranglethorn Vale 37.34,30.92
step
  talk Elder Starglade##15596
  turnin Starglade the Elder##8716 |goto Stranglethorn Vale 53.08,18.45
step
  talk Galvan the Ancient##7802
  turnin Enchanted Azsharite Fel Weaponry##3625 |goto Stranglethorn Vale 50.62,20.48
step
  only Druid
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4782 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Galvan the Ancient##7802
  turnin The Mithril Order##2760 |goto Stranglethorn Vale 50.62,20.48
step
  talk Tran'rek##7876
  turnin Tran'rek##2864 |goto Tanaris 51.57,26.76 |tip {turninat}Tanaris
step
  talk Stoley##7881
  turnin Stoley's Debt##2872 |goto Tanaris 67.11,23.98 |tip {turninat}Tanaris
step
  talk Galvan the Ancient##7802
  accept Smelt On, Smelt Off##2761 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept The Great Silver Deceiver##2762 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept The Art of the Imbue##2763 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept Return to the Blasted Lands##3626 |goto Stranglethorn Vale 50.62,20.48
step
  talk Exzhal##14910
  turnin A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8041 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8049 |goto Stranglethorn Vale 15.34,16.12
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Armguards##8053 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Belt##8054 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Breastplate##8055 |goto Stranglethorn Vale 15.31,14.43
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Bracers##8057 |goto Stranglethorn Vale 15.3,16.02
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Armguards##8058 |goto Stranglethorn Vale 15.31,14.43
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Wraps##8059 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Wraps##8060 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Wraps##8061 |goto Stranglethorn Vale 15.34,16.12
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Bracers##8062 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Bracers##8063 |goto Stranglethorn Vale 14.08,13.72
step
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Belt##8064 |goto Stranglethorn Vale 15.3,16.02
step
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Tunic##8065 |goto Stranglethorn Vale 15.3,16.02
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Belt##8066 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Mantle##8067 |goto Stranglethorn Vale 14.08,13.72
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Mantle##8068 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Robes##8069 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Bindings##8070 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Mantle##8071 |goto Stranglethorn Vale 15.34,16.12
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Mantle##8072 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Tunic##8073 |goto Stranglethorn Vale 14.08,13.72
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Mantle##8076 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Robes##8077 |goto Stranglethorn Vale 15.34,16.12
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Belt##8078 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Breastplate##8079 |goto Stranglethorn Vale 15.31,14.43
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8101 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8106 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8042 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8050 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8102 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8107 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
step
  note Hemet Nesingwary Jr. wants you to kill 10 Stranglethorn Raptors.
  kill Stranglethorn Raptor##685 |q 194 |goto Stranglethorn Vale 26.01,16.07
step
  talk Fallen Hero of the Horde##7572
  turnin Return to the Blasted Lands##3626 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  talk Oglethorpe Obnoticus##7406
  turnin The Pledge of Secrecy##3642 |goto Stranglethorn Vale 28.36,76.35
step
  talk Drizzlik##2495
  turnin Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
  talk Whiskey Slim##2491
  turnin Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
  turnin The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 27.28,69.52
step
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 27.17,77.01
step
  talk Krazek##773
  turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
  talk Crank Fizzlebub##2498
  turnin Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
  talk "Shaky" Phillipe##2502
  turnin Scaring Shaky##606 |goto Stranglethorn Vale 26.9,73.59
step
  talk Privateer Bloads##2494
  turnin Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
step
  talk Crank Fizzlebub##2498
  turnin Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
  talk Baron Revilgaz##2496
  turnin Goblin Sponsorship##1181 |goto Stranglethorn Vale 27.23,76.87
step
  only Druid
  talk Xizk Goodstitch##2670
  turnin Fine Gold Thread##4785 |goto Stranglethorn Vale 28.71,76.89
step
  talk Kebok##737
  turnin Bloodscalp Ears##189 |goto Stranglethorn Vale 27.0,77.13
step
  talk Kebok##737
  turnin Hostile Takeover##213 |goto Stranglethorn Vale 27.0,77.13
step
  talk Fin Fizracket##2486
  turnin Stranglethorn Fever##348 |goto Stranglethorn Vale 27.61,76.74
step
  talk Captain Hecklebury Smotts##2500
  turnin The Captain's Chest##8551 |goto Stranglethorn Vale 26.69,73.61
step
  talk Sprogger##2594
  turnin The Captain's Cutlass##8553 |goto Stranglethorn Vale 26.66,73.64
step
  talk Elder Winterhoof##15576
  turnin Winterhoof the Elder##8674 |goto Stranglethorn Vale 26.47,76.53
step
  talk Kebok##737
  accept Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.0,77.13
step
  talk Dizzy One-Eye##2493
  accept Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.9
step
  talk Drizzlik##2495
  accept Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  talk Deeg##2488
  accept Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  talk Crank Fizzlebub##2498
  accept Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
  talk Fleet Master Seahorn##2487
  accept The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Shaky" Phillipe##2502
  accept Return to MacKinley##607 |goto Stranglethorn Vale 26.9,73.59
step
  talk Krazek##773
  accept Rumors for Kravel##1117 |goto Stranglethorn Vale 26.94,77.21
step
  talk Baron Revilgaz##2496
  accept Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
  talk Oglethorpe Obnoticus##7406
  accept Show Your Work##3643 |goto Stranglethorn Vale 28.36,76.35
step
  talk Sprogger##2594
  accept Facing Negolash##8554 |goto Stranglethorn Vale 26.66,73.64
step
  note Slay Fleet Master Seahorn and Baron Revilgaz of Booty Bay, and then return to Fleet Master Firallon aboard the Crimson Veil off the coast of Stranglethorn Vale.
  kill Baron Revilgaz##2496 |q 4621 |goto Stranglethorn Vale 27.23,76.87
step
  note Fleet Master Seahorn in Booty Bay wants you to kill 10 Bloodsail Swashbucklers and bring back the Bloodsail Charts and the Bloodsail Orders.
  kill Bloodsail Swashbuckler##1563 |q 604 |goto Stranglethorn Vale 26.91,82.4
step
  talk Kravel Koalbeard##4452
  turnin Rumors for Kravel##1117 |goto Thousand Needles 77.79,77.27 |tip {turninat}Thousand Needles
step
  talk Princess Poobah##2634
  turnin Message in a Bottle##630 |goto Stranglethorn Vale 38.53,80.58
step
  talk Fleet Master Firallon##2546
  turnin Avast Ye, Admiral!##4621 |goto Stranglethorn Vale 30.58,90.63
step
  talk Fleet Master Firallon##2546
  turnin Dressing the Part##9272 |goto Stranglethorn Vale 30.58,90.63
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##185 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  turnin Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  talk Barnil Stonepot##716
  turnin The Green Hills of Stranglethorn##338 |goto Stranglethorn Vale 35.66,10.53
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##186 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  accept Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Panthers.
  kill Panther##736 |q 191 |goto Stranglethorn Vale 29.45,12.3
step
  talk Commander Aggro'gosh##2464
  turnin The Defense of Grom'gol##569 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##572 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  turnin Headhunting##582 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  turnin The Mind's Eye##591 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  turnin Split Bone Necklace##598 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nemeth Hawkeye##17094
  turnin An Unusual Patron##9457 |goto Stranglethorn Vale 31.97,28.61
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##571 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  accept Bloodscalp Clan Heads##584 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  accept Saving Yenniku##592 |goto Stranglethorn Vale 32.27,27.71
step
  note Hemet Nesingwary Jr. wants you to kill 10 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 195 |goto Stranglethorn Vale 35.62,23.72
step
  talk Galvan the Ancient##7802
  turnin Smelt On, Smelt Off##2761 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin The Great Silver Deceiver##2762 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin The Art of the Imbue##2763 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept Galvan's Finest Pupil##2764 |goto Stranglethorn Vale 50.62,20.48
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Stranglethorn Tigers.
  kill Stranglethorn Tiger##682 |q 186 |goto Stranglethorn Vale 46.08,14.4
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8042 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8050 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8102 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8107 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8043 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8051 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8103 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8108 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  talk Oglethorpe Obnoticus##7406
  turnin Show Your Work##3643 |goto Stranglethorn Vale 28.36,76.35
step
  talk Dizzy One-Eye##2493
  turnin Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.9
step
  talk Drizzlik##2495
  turnin Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  talk Deeg##2488
  turnin Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  talk Crank Fizzlebub##2498
  turnin Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Sea Wolf" MacKinley##2501
  turnin Return to MacKinley##607 |goto Stranglethorn Vale 27.78,77.07
step
  talk Baron Revilgaz##2496
  turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
  talk Kebok##737
  turnin Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.0,77.13
step
  talk Captain Hecklebury Smotts##2500
  turnin Facing Negolash##8554 |goto Stranglethorn Vale 26.69,73.61
step
  talk Fleet Master Seahorn##2487
  accept The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Sea Wolf" MacKinley##2501
  accept Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
  talk Drizzlik##2495
  accept Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
  talk Baron Revilgaz##2496
  accept Goblin Sponsorship##1183 |goto Stranglethorn Vale 27.23,76.87
step
  talk Pozzik##4630
  turnin Goblin Sponsorship##1183 |goto Thousand Needles 80.18,75.88 |tip {turninat}Thousand Needles
step
  note Fleet-Master Seahorn in Booty Bay wants you to kill Captain Stillwater, Captain Keelhaul and Fleet Master Firallon.
  kill Captain Stillwater##2550 |q 608 |goto Stranglethorn Vale 32.87,88.2
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##186 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  turnin Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  accept Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Elder Stranglethorn Tigers.
  kill Elder Stranglethorn Tiger##1085 |q 187 |goto Stranglethorn Vale 33.53,18.86
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##571 |goto Stranglethorn Vale 32.12,29.24
step
  turnin Bloodscalp Clan Heads##584 |goto Stranglethorn Vale 32.22,27.6
step
  talk Nimboya##2497
  turnin Saving Yenniku##592 |goto Stranglethorn Vale 32.16,27.72
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##573 |goto Stranglethorn Vale 32.12,29.24
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Shadowmaw Panthers.
  kill Shadowmaw Panther##684 |q 192 |goto Stranglethorn Vale 40.73,34.82
step
  note Hemet Nesingwary Jr. wants you to kill 10 Jungle Stalkers.
  kill Jungle Stalker##687 |q 196 |goto Stranglethorn Vale 28.88,44.1
step
  talk Trenton Lighthammer##7804
  turnin Galvan's Finest Pupil##2764 |goto Tanaris 51.41,28.75 |tip {turninat}Tanaris
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8043 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8051 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8103 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8108 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept The Rage of Mugamba##8044 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The All-Seeing Eye of Zuldazar##8052 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Jewel of Kajaro##8104 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Unstoppable Taint##8109 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  accept Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Sea Wolf" MacKinley##2501
  turnin Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
  talk Drizzlik##2495
  turnin Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
  talk "Sea Wolf" MacKinley##2501
  accept Cracking Maury's Foot##613 |goto Stranglethorn Vale 27.78,77.07
step
  note Far Seer Mok'thardin of Grom'gol needs Holy Spring Water. He also wants you to kill 10 Naga Explorers.
  kill Naga Explorer##1907 |q 573 |goto Stranglethorn Vale 26.32,62.32
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  turnin Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  accept Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##573 |goto Stranglethorn Vale 32.12,29.24
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin The Rage of Mugamba##8044 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The All-Seeing Eye of Zuldazar##8052 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Jewel of Kajaro##8104 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Unstoppable Taint##8109 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  turnin Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  talk "Sea Wolf" MacKinley##2501
  turnin Cracking Maury's Foot##613 |goto Stranglethorn Vale 27.78,77.07
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  turnin Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
step
  talk Hemet Nesingwary Jr.##715
  accept Big Game Hunter##208 |goto Stranglethorn Vale 35.66,10.81
step
  talk Hemet Nesingwary Jr.##715
  turnin Big Game Hunter##208 |goto Stranglethorn Vale 35.66,10.81
step
  note {travel}Feralas
  goto Feralas 74.91,42.46
]])
