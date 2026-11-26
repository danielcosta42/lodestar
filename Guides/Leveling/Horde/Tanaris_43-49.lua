-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tanaris (43-49)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Feralas (43-50)",
	rev = "a2d7636e",
}, [[
step
  ding 41
step
  only completed(95296)
  talk Wharfmaster Steamfizzle##260405
  accept Shipping and Handling##95383 |goto Tanaris 67.6,23.15
step
  talk Yeh'kinya##8579
  accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  only completed(95296)
  note Deliver Friz's Secret Stash to Tazzik in Steamwheedle Port.
  talk Tazzik##260857
  turnin Shipping and Handling##95383 |goto Tanaris 67.35,23.98
step
  only completed(95296)
  talk Tazzik##260857
  accept Coming to Collect##95312 |goto Tanaris 67.35,23.98
step
  note {fp}Bulkrek Ragefist
  goto Tanaris 51.6,25.44 |tip {vendor}
step
  only haveq(1188)
  note Bring the Seaforium Booster to Shreev in Gadgetzan.
  talk Shreev##4708
  turnin Safety First##1188 |goto Tanaris 50.96,27.24
step
  only completed(95296)
  note Speak with Fizbuz Mithril in Gadgetzan.
  talk Fizbuz Mithril##220984
  turnin Coming to Collect##95312 |goto Tanaris 51.66,27.83
step
  only completed(95296)
  talk Fizbuz Mithril##220984
  accept Tazzik's Dues##95321 |goto Tanaris 51.66,27.83
step
  only completed(1188)
  talk Shreev##4708
  accept Safety First##1189 |goto Tanaris 50.96,27.24
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
  talk Spigot Operator Luglunket##7408
  accept Water Pouch Bounty##1707 |goto Tanaris 52.49,28.45
step
  only not completed(97536) not haveq(97536)
  talk Quinn##11756
  accept Gritty Business##97534 |goto Tanaris 51.12,27.88
step
  only not completed(97536) not haveq(97536)
  note Quinn wants you to recover 7  pieces of Desert Debris and return to her in Gadgetzan.
  collect Desert Debris##278191 |q 97534 |goto Tanaris 54.44,33.02 |tip {dropsfrom}Gnomish Garbage
step
  only not completed(97536) not haveq(97536)
  talk Quinn##11756
  turnin Gritty Business##97534 |goto Tanaris 51.12,27.88
step
  only completed(243)
  talk Chief Engineer Bilgewhizzle##7407
  accept Slake That Thirst##379 |goto Tanaris 52.46,28.51
step
  only completed(654)
  talk Chief Engineer Bilgewhizzle##7407
  accept Return to Apothecary Zinge##864 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  note Use the untapped dowsing widget near the pool of water by Sandsorrow Watch. Once you have collected the sample, return the tapped dowsing widget to Senior Surveyor Fizzledowser in Gadgetzan.
  collect Tapped Dowsing Widget##8585 |q 992 |goto Tanaris 39,29 |tip {dropsfrom}Sandsorrow Watch Water Hole
step
  talk Senior Surveyor Fizzledowser##7724
  turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  note Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
  kill Wastewander Bandit##5618 |q 1690/1 |goto Tanaris 63.79,29.78
  kill Wastewander Thief##5616 |q 1690 |goto Tanaris 63.56,31.07
step
  talk Stoley##7881
  accept Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
step
  click Wanted Poster##142122
  accept WANTED: Andre Firebeard##2875 |goto Tanaris 66.82,22.29
step
  talk Haughty Modiste##15165
  accept Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
  talk Security Chief Bilgewhizzle##7882
  accept Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  click Wanted Poster##142122
  accept WANTED: Caliph Scorpidsting##2781 |goto Tanaris 66.82,22.29
step
  only completed(95296)
  note Confront Tazzik in Steamwheedle Port in Tanaris.
  kill Tazzik##260857 |q 95321 |goto Tanaris 67.35,23.98
step
  only completed(95296)
  talk Tazzik##260857
  turnin Tazzik's Dues##95321 |goto Tanaris 67.35,23.98
step
  talk Security Chief Bilgewhizzle##7882
  accept Dunemaul Dues##97530 |goto Tanaris 67.06,23.89
step
  only completed(243)
  note Bring 5 Wastewander Water Pouches to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect 5 Wastewander Water Pouch##8483 |q 379 |goto Tanaris 61.71,38.21 |tip {dropsfrom}Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage
step
  note Bring 5 Wastewander Water Pouches to Spigot Operator Luglunket in Gadgetzan.
  collect 5 Wastewander Water Pouch##8483 |q 1707 |goto Tanaris 61.71,38.21 |tip {dropsfrom}Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage
step
  note Bring the head of Caliph Scorpidsting to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect Caliph Scorpidsting's Head##8723 |q 2781 |goto Tanaris 61.77,38.17 |tip {dropsfrom}Caliph Scorpidsting
step
  only completed(243)
  talk Chief Engineer Bilgewhizzle##7407
  turnin Slake That Thirst##379 |goto Tanaris 52.46,28.51
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
  talk Spigot Operator Luglunket##7408
  turnin Water Pouch Bounty##1707 |goto Tanaris 52.49,28.45
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin WANTED: Caliph Scorpidsting##2781 |goto Tanaris 52.46,28.51
step
  talk Chief Engineer Bilgewhizzle##7407
  accept More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
  note Take down 10 Wastewander Shadow Mages, 8 Wastewander Rogues, and 6 Wastewander Assassins for Chief Engineer Bilgewhizzle in Gadgetzan.
  kill Wastewander Shadow Mage##5617 |q 1691/3 |goto Tanaris 61.97,35.46
  kill Wastewander Rogue##5615 |q 1691/1 |goto Tanaris 61.71,38.21
  kill Wastewander Assassin##5623 |q 1691 |goto Tanaris 60.52,38.55
step
  only level>=43
  talk Marvon Rivetseeker##7771
  accept Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  only haveq(3161)
  note Marvon Rivetseeker in Tanaris wants you to collect 30 Gahz'ridian Ornaments.
  collect 30 Gahz'ridian Ornament##8443 |q 3161 |goto Tanaris 47.6,57.2 |tip {dropsfrom}Gahz'ridian
step
  only haveq(3161)
  talk Marvon Rivetseeker##7771
  turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  only Shaman
  talk Odd Totem##222856
  accept Challenge of the Desert Wolf##95753 |goto Tanaris 43.01,41.3
step
  only Shaman
  note Reach the other Odd Totem at the end of the massive skeleton before time runs out.
  talk Odd Totem##222857
  turnin Challenge of the Desert Wolf##95753 |goto Tanaris 45.74,37.74
step
  note Bring five Centipaar insect parts from the Noxious Lair to Alchemist Pestlezugg in Gadgetzan.
  collect Centipaar Insect Parts##8587 |q 82 |goto Tanaris 33.28,44.39 |tip {dropsfrom}Centipaar Wasp, Centipaar Tunneler, Centipaar Stinger
step
  talk Alchemist Pestlezugg##5594
  turnin Noxious Lair Investigation##82 |goto Tanaris 50.89,26.96
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  only level>=44
  talk Marin Noggenfogger##7564
  accept The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  only level>=44
  talk Andi Lynn##11758
  accept The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  only haveq(5863)
  note Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.
  kill Dunemaul Brute##5474 |q 5863/1 |goto Tanaris 40.65,54.35
  kill Dunemaul Enforcer##5472 |q 5863/2 |goto Tanaris 40.73,56.87
  kill Gor'marok the Ravager##12046 |q 5863 |goto Tanaris 41.5,57.81
step
  only haveq(2605)
  note Collect a Laden Dew Gland and bring it to Marin Noggenfogger in Gadgetzan.
  collect Laden Dew Gland##8428 |q 2605 |goto Tanaris 29.36,66.28 |tip {dropsfrom}Thistleshrub Dew Collector
step
  note Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to recover a particularly shiny bangle bracelet lost near the Dunemaul ogre compound.
  collect Brilliantly Polished Bangle##278186 |q 97530 |goto Tanaris 41.99,72.66 |tip {dropsfrom}Dunemaul Ogre, Dunemaul Enforcer, Dunemaul Ogre Mage
step
  only level>=43 hasitem(8623)
  use OOX-17/TN Distress Beacon##8623 |tip It starts the quest.
  accept Find OOX-17/TN!##351
step
  note Discover the fate of Junior Surveyor Scrimshank, and bring either him or his surveying equipment to Senior Surveyor Fizzledowser in Gadgetzan.
  collect Scrimshank's Surveying Gear##8593 |q 10 |goto Tanaris 55.96,71.17
step
  only haveq(351)
  note Bring the distress beacon to Oglethorpe's homing robot.
  talk Homing Robot OOX-17/TN##7784
  turnin Find OOX-17/TN!##351 |goto Tanaris 60.23,64.72
step
  note Bring Stoley's Shipment to Stoley in Steamwheedle Port.
  collect Stoley's Shipment##9244 |q 2873 |goto Tanaris 72.17,46.76 |tip {dropsfrom}Stolen Cargo
step
  note Bring Andre's Head to Security Chief Bilgewhizzle in Steamwheedle Port.
  collect Firebeard's Head##9246 |q 2875 |goto Tanaris 73.37,47.14 |tip {dropsfrom}Andre Firebeard
step
  note Haughty Modiste wants you to collect 20 Southsea Pirate Hats and return them to her at Steamwheedle Port in Tanaris.
  collect 20 Southsea Pirate Hat##20519 |q 8365 |goto Tanaris 72.95,46.18 |tip {dropsfrom}Southsea Pirate, Southsea Freebooter, Southsea Dock Worker
step
  note Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to kill 10 Southsea Pirates, 10 Southsea Freebooters, 10 Southsea Dock Workers and 10 Southsea Swashbucklers.
  kill Southsea Pirate##7855 |q 8366/1 |goto Tanaris 72.95,46.18
  kill Southsea Freebooter##7856 |q 8366/2 |goto Tanaris 72.79,45.34
  kill Southsea Swashbuckler##7858 |q 8366/4 |goto Tanaris 75.28,45.69
  kill Southsea Dock Worker##7857 |q 8366 |goto Tanaris 74.42,47.71
step
  talk Stoley##7881
  turnin Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
step
  talk Security Chief Bilgewhizzle##7882
  turnin WANTED: Andre Firebeard##2875 |goto Tanaris 67.06,23.89
step
  talk Haughty Modiste##15165
  turnin Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
  talk Security Chief Bilgewhizzle##7882
  turnin Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  talk Security Chief Bilgewhizzle##7882
  turnin Dunemaul Dues##97530 |goto Tanaris 67.06,23.89
step
  talk Senior Surveyor Fizzledowser##7724
  turnin The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  only haveq(2605)
  talk Marin Noggenfogger##7564
  turnin The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  only haveq(5863)
  talk Andi Lynn##11758
  turnin The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Senior Surveyor Fizzledowser##7724
  accept Insect Part Analysis##110 |goto Tanaris 50.21,27.48
step
  only completed(2605) level>=44
  talk Marin Noggenfogger##7564
  accept In Good Taste##2606 |goto Tanaris 51.81,28.66
step
  note Check in Gadgetzan for Alchemist Pestlezugg and his analysis of the insect parts.
  talk Alchemist Pestlezugg##5594
  turnin Insect Part Analysis##110 |goto Tanaris 50.89,26.96
step
  only haveq(2606)
  note Marin Noggenfogger wants you to speak with Sprinkle in Gadgetzan.
  talk Sprinkle##7583
  turnin In Good Taste##2606 |goto Tanaris 51.06,26.87
step
  talk Alchemist Pestlezugg##5594
  accept Insect Part Analysis##113 |goto Tanaris 50.89,26.96
step
  note Deliver the report to Senior Surveyor Fizzledowser in Gadgetzan. Be sure he gives you a copy of the report, as Alchemist Pestlezugg has requested.
  talk Senior Surveyor Fizzledowser##7724
  turnin Insect Part Analysis##113 |goto Tanaris 50.21,27.48
step
  talk Senior Surveyor Fizzledowser##7724
  accept Rise of the Silithid##32 |goto Tanaris 50.21,27.48
step
  note Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
  use Screecher Spirit##8612 |q 3520 |goto Feralas 46.82,48.47 |tip {useit}
step
  talk Yeh'kinya##8579
  turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  only completed(2280)
  talk Sage Truthseeker##3978
  accept The Platinum Discs##2440 |goto Thunder Bluff 34.4,46.87
step
  only completed(2280)
  note Take the reward voucher to Bena Winterhoof in Thunder Bluff.
  talk Bena Winterhoof##3009
  turnin The Platinum Discs##2440 |goto Thunder Bluff 46.62,33.17 |tip {turninat}Thunder Bluff
step
  note Take the report to Zilzibin Drumlore in Orgrimmar.
  talk Zilzibin Drumlore##7010
  turnin Rise of the Silithid##32 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  only level>=48
  talk Eitrigg##3144
  accept The Missing Kor'kron##95283 |goto Orgrimmar 34.28,39.35
step
  only haveq(95283)
  note Speak with Nazeer Bloodspike in Brackenwall Village.
  talk Nazeer Bloodpike##4791
  turnin The Missing Kor'kron##95283 |goto Dustwallow Marsh 35.21,30.66 |tip {turninat}Dustwallow Marsh
step
  only level>=48
  talk Nazeer Bloodpike##4791
  accept The Elite of the Elite##95284 |goto Dustwallow Marsh 35.21,30.66
step
  only haveq(95284)
  note Find the missing Kor'kron Elites.
  talk Sergeant Ulka##260383
  turnin The Elite of the Elite##95284 |goto Dustwallow Marsh 70.3,18.85 |tip {turninat}Dustwallow Marsh
step
  only completed(95284) level>=48
  talk Sergeant Ulka##260383
  accept Right Place, Wrong Time##95285 |goto Dustwallow Marsh 70.3,18.85
step
  only haveq(95285)
  note Speak with Sergeant Ulka to learn more about the situation on Alcaz Isle.
  talk Sergeant Ulka##260383
  turnin Right Place, Wrong Time##95285 |goto Dustwallow Marsh 70.3,18.85 |tip {turninat}Dustwallow Marsh
step
  only completed(95285) level>=48
  talk Sergeant Ulka##260383
  accept A Little Payback##96332 |goto Dustwallow Marsh 70.3,18.85
step
  only haveq(96332)
  note Enter the Alcaz Prison and slay 15 Strashasz Soldiers, 8 Strashaz Enchantresses, and bring the head of Tidemistress Ca'zass to Sergeant Ulka.
  get A Little Payback |q 96332
step
  only haveq(96332)
  talk Sergeant Ulka##260383
  turnin A Little Payback##96332 |goto Dustwallow Marsh 70.3,18.85 |tip {turninat}Dustwallow Marsh
step
  only level>=49
  talk Liv Rizzlefix##8496
  accept Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
  only haveq(4502)
  note Collect 9 samples of Un'Goro Ash from the fire elementals around the volcano in Un'Goro Crater, and return them to Liv Rizzlefix in Ratchet.
  collect 9 Un'Goro Ash##11829 |q 4502 |goto Un'Goro Crater 55.1,48.83 |tip {dropsfrom}Scorching Elemental, Living Blaze, Blazing Invader
step
  only haveq(4502)
  talk Liv Rizzlefix##8496
  turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.73 |tip {turninat}The Barrens
step
  only completed(1188)
  note Return the Modified Seaforium Booster to Razzeric on the Shimmering Flats.
  talk Razzeric##4706
  turnin Safety First##1189 |goto Thousand Needles 80.33,76.09 |tip {turninat}Thousand Needles
step
  note {travel}Orgrimmar
  goto Orgrimmar 75.23,34.24
]])
