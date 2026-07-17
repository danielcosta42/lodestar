-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tanaris (47-68)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Western Plaguelands (55-60)",
}, [[
step
  note {fp}Bulkrek Ragefist
  goto Tanaris 51.6,25.44 |tip {vendor}
step
  kill Glasshide Basilisk##5419 |goto Tanaris 45.74,32.82 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-17/TN!##351 |goto Tanaris 45.74,32.82
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Slake That Thirst##379 |goto Tanaris 52.46,28.51
step
  note Bring 5 Wastewander Water Pouches to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect 5 Wastewander Water Pouch##8483 |q 379 |goto Tanaris 61.84,38.21 |tip {dropsfrom}Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Return to Apothecary Zinge##864 |goto Tanaris 52.46,28.51
step
  talk Senior Surveyor Fizzledowser##7724
  accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  note Use the untapped dowsing widget near the pool of water by Sandsorrow Watch. Once you have collected the sample, return the tapped dowsing widget to Senior Surveyor Fizzledowser in Gadgetzan.
  collect Tapped Dowsing Widget##8585 |q 992 |goto Tanaris 50.21,27.48
step
  talk Shreev##4708
  accept Safety First##1189 |goto Tanaris 50.96,27.24
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
  talk Spigot Operator Luglunket##7408
  accept Water Pouch Bounty##1707 |goto Tanaris 52.49,28.45
step
  note Bring 5 Wastewander Water Pouches to Spigot Operator Luglunket in Gadgetzan.
  collect 5 Wastewander Water Pouch##8483 |q 1707 |goto Tanaris 61.84,38.21 |tip {dropsfrom}Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage
step
  talk Marin Noggenfogger##7564
  accept The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  note Collect a Laden Dew Gland and bring it to Marin Noggenfogger in Gadgetzan.
  collect Laden Dew Gland##8428 |q 2605 |goto Tanaris 29.36,66.28 |tip {dropsfrom}Thistleshrub Dew Collector
step
  click Egg-O-Matic##142071
  accept The Super Egg-O-Matic##2741 |goto Tanaris 52.39,26.97
step
  collect Hippogryph Egg##8564 |q 2741 |goto Feralas 57.31,76.11
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
step
  note Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect Divino-matic Rod##8548 |q 2768 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Sergeant Bly
step
  talk Trenton Lighthammer##7804
  accept A Good Head On Your Shoulders##2771 |goto Tanaris 51.41,28.75
step
  note Bring two Mithril Coifs and one Ornate Mithril Shoulder to Trenton Lighthammer.
  collect Mithril Coif##7931 |q 2771 |goto Tanaris 51.41,28.75
step
  talk Trenton Lighthammer##7804
  accept The World At Your Feet##2772 |goto Tanaris 51.41,28.75
step
  note Bring two Heavy Mithril Boots and one Ornate Mithril Pants to Trenton Lighthammer.
  collect Heavy Mithril Boots##7933 |q 2772 |goto Tanaris 51.41,28.75
step
  talk Trenton Lighthammer##7804
  accept The Mithril Kid##2773 |goto Tanaris 51.41,28.75
step
  note Bring two Heavy Mithril Breastplates and one Ornate Mithril Gloves to Trenton Lighthammer.
  collect Heavy Mithril Breastplate##7930 |q 2773 |goto Tanaris 51.41,28.75
step
  click Wanted Poster##150075
  accept WANTED: Caliph Scorpidsting##2781 |goto Tanaris 51.83,27.04
step
  note Bring the head of Caliph Scorpidsting to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect Caliph Scorpidsting's Head##8723 |q 2781 |goto Tanaris 61.77,38.17 |tip {dropsfrom}Caliph Scorpidsting
step
  talk Tran'rek##7876
  accept Scarab Shells##2865 |goto Tanaris 51.57,26.76
step
  note Bring 5 Uncracked Scarab Shells to Tran'rek in Gadgetzan.
  collect 5 Uncracked Scarab Shell##9238 |q 2865 |goto Zul'Farrak - Dungeon -1,-1 |tip {dropsfrom}Scarab
step
  click Wanted Poster##150075
  accept WANTED: Andre Firebeard##2875 |goto Tanaris 51.83,27.04
step
  note Bring Andre's Head to Security Chief Bilgewhizzle in Steamwheedle Port.
  collect Firebeard's Head##9246 |q 2875 |goto Tanaris 73.37,47.14 |tip {dropsfrom}Andre Firebeard
step
  talk Trenton Lighthammer##7804
  accept Troll Temper##3042 |goto Tanaris 51.41,28.75
step
  note Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan.
  collect 20 Troll Temper##9523 |q 3042 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Sandfury Shadowcaster, Sandfury Blood Drinker, Sandfury Witch Doctor
step
  talk Tran'rek##7876
  accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  talk Nixx Sprocketspring##8126
  accept The Pledge of Secrecy##3638 |goto Tanaris 52.48,27.33
step
  note If you agree to become a Goblin Engineer, then right-click on the Pledge of Secrecy and speak once more with Nixx Sprocketspring in Gadgetzan.
  collect Nixx's Signed Pledge##11270 |q 3638 |goto Tanaris 52.48,27.33
step
  talk Gaeriyan##9299
  accept A Grave Situation##3913 |goto Tanaris 53.92,23.33
step
  talk Alchemist Pestlezugg##5594
  accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  note Bring a Gorishi Scent Gland and 5 Un'Goro Soil samples to Alchemist Pestlezugg in Gadgetzan.
  collect Gorishi Scent Gland##11837 |q 4496 |goto Un'Goro Crater 50.14,76.41 |tip {dropsfrom}Gorishi Wasp, Gorishi Worker, Gorishi Reaver
step
  talk Tran'rek##7876
  accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  note Collect 12 samples of Super Sticky Tar for Tran'rek in Gadgetzan.
  collect 12 Super Sticky Tar##11834 |q 4504 |goto Un'Goro Crater 59.89,31.38 |tip {dropsfrom}Tar Beast, Tar Lurker, Tar Lord
step
  talk Thrall##4949
  accept For The Horde!##4974 |goto Orgrimmar 31.73,37.82
step
  note Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar.
  collect Head of Rend Blackhand##12630 |q 4974 |goto Orgrimmar 31.73,37.82 |tip {dropsfrom}Warchief Rend Blackhand
step
  talk Krinkle Goodsteel##5411
  accept Fire Plume Forged##5802 |goto Tanaris 51.46,28.81
step
  note Take the Skeleton Key Mold and 2 Thorium Bars to the top of Fire Plume Ridge in Un'Goro Crater. Use the Skeleton Key Mold by the lava lake to forge the Unfinished Skeleton Key.
  collect Unfinished Skeleton Key##14645 |q 5802 |goto Tanaris 51.46,28.81
step
  talk Andi Lynn##11758
  accept The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Thrall##4949
  accept The Champion of the Horde##6567 |goto Orgrimmar 31.73,37.82
step
  talk Dirge Quikcleave##8125
  accept Clamlette Surprise##6610 |goto Tanaris 52.63,28.11
step
  note Dirge Quikcleave wants you to get the following items:
  collect Giant Egg##12207 |q 6610 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Vicious Owlbeast, Primitive Owlbeast
step
  talk Thrall##4949
  accept For All To See##7491 |goto Orgrimmar 31.73,37.82
step
  talk Derotain Mudsipper##14567
  accept A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept Material Assistance##7667 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  note If you are interested in helping Sagorne Crestrider in Orgrimmar's Valley of Wisdom, bring him an Azerothian Diamond and a Pristine Black Diamond.
  collect Azerothian Diamond##12800 |q 7667 |goto Azshara 59.31,79.76 |tip {dropsfrom}Cliff Breaker, Anubisath Guardian, Small Thorium Vein
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept Again Into the Great Ossuary##7669 |goto Orgrimmar 38.66,35.92
step
  talk Thrall##4949
  accept The Lord of Blackrock##7784 |goto Orgrimmar 31.73,37.82
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept A More Fitting Reward##8259 |goto Orgrimmar 38.66,35.92
step
  talk Elder Darkhorn##15579
  accept Darkhorn the Elder##8677 |goto Orgrimmar 41.13,33.84
step
  talk Elder Dreamseer##15586
  accept Dreamseer the Elder##8684 |goto Tanaris 51.61,26.99
step
  talk Elder Bladeswift##15598
  accept Bladeswift the Elder##8718 |goto Darnassus 33.49,14.3
step
  talk Elder Bronzebeard##15871
  accept Bronzebeard the Elder##8866 |goto Ironforge 29.2,17.05
step
  talk Lunar Festival Harbinger##15895
  accept Lunar Fireworks##8867 |goto Darnassus 33.89,13.87
step
  talk Lunar Festival Herald##15891
  accept The Lunar Festival##8873 |goto Orgrimmar 41.46,31.74
step
  talk Lunar Festival Herald##15891
  accept The Lunar Festival##8874 |goto Orgrimmar 41.46,31.74
step
  talk Lunar Festival Herald##15891
  accept The Lunar Festival##8875 |goto Orgrimmar 41.46,31.74
step
  note Launch 8 Lunar Fireworks and 2 Cluster Fireworks and return to a Lunar Festival Harbinger at any capital city.
  kill Lunar Firework Credit Marker##15893 |q 8867 |goto Darnassus 31.75,12.39
step
  talk Security Chief Bilgewhizzle##7882
  turnin WANTED: Andre Firebeard##2875 |goto Tanaris 67.06,23.89
step
  talk Orphan Matron Battlewail##14451
  accept Children's Week##172 |goto Orgrimmar 70.72,25.19
step
  talk Orcish Orphan##14444
  accept You Scream, I Scream...##915 |goto Orgrimmar 70.8,22.82
step
  note Get some Strawberry Ice Cream for your ward. The lad seems to prefer Tigule and Foror's brand ice cream.
  collect Tigule and Foror's Strawberry Ice Cream##7228 |q 915 |goto Orgrimmar 70.8,22.82
step
  talk Orcish Orphan##14444
  accept Cairne's Hoofprint##925 |goto Orgrimmar 70.8,22.82
step
  note Travel to Thunder Bluff to see about getting Cairne Bloodhoof's hoofprint for your ward.
  collect Cairne's Hoofprint##18643 |q 925 |goto Orgrimmar 70.8,22.82
step
  talk Stoley##7881
  accept Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
step
  note Bring Stoley's Shipment to Stoley in Steamwheedle Port.
  collect Stoley's Shipment##9244 |q 2873 |goto Tanaris 72.15,46.76 |tip {dropsfrom}Stolen Cargo
step
  talk Yeh'kinya##8579
  accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  note Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
  use Screecher Spirit##8612 |q 3520 |tip {useit}
step
  talk Yorba Screwspigot##9706
  accept Yuka Screwspigot##4324 |goto Tanaris 67.04,24.01
step
  talk Haughty Modiste##15165
  accept Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
  note Haughty Modiste wants you to collect 20 Southsea Pirate Hats and return them to her at Steamwheedle Port in Tanaris.
  collect 20 Southsea Pirate Hat##20519 |q 8365 |goto Tanaris 72.44,46.18 |tip {dropsfrom}Southsea Pirate, Southsea Freebooter, Southsea Dock Worker
step
  talk Security Chief Bilgewhizzle##7882
  accept Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  talk Narain Soothfancy##11811
  accept Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Decoy!##8606 |goto Tanaris 65.24,18.58
step
  note Narain Soothfancy in Tanaris wants you to travel to Winterspring and place the Bag of Gold at the drop off point documented by the booknappers.
  kill Number Two##15554 |q 8606 |elite
step
  talk Elder Proudhorn##15580
  accept Proudhorn the Elder##8678 |goto Thunder Bluff 72.98,23.37
step
  talk Mara Rennick##16109
  accept The Source Revealed##8984 |goto Undercity 71.26,28.31
step
  note Take down 10 Wastewander Bandits and Thieves east of Gadgetzan, then report back to Chief Engineer Bilgewhizzle.
  kill Wastewander Bandit##5618 |q 1690 |goto Tanaris 63.41,29.78
step
  talk Human Orphan##14305
  accept Jaina's Autograph##558 |goto Stormwind City 47.58,38.17
step
  note Travel to Theramore to see about getting Lady Jaina Proudmoore's autograph for your ward.
  collect Jaina's Autograph##18642 |q 558 |goto Stormwind City 47.58,38.17
step
  talk Marvon Rivetseeker##7771
  accept Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  note Marvon Rivetseeker in Tanaris wants you to collect 30 Gahz'ridian Ornaments.
  collect 30 Gahz'ridian Ornament##8443 |q 3161 |goto Tanaris 46.48,64.12 |tip {dropsfrom}Gahz'ridian
step
  talk Marvon Rivetseeker##7771
  accept The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  note Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.
  collect Stone Circle##10556 |q 3444 |goto The Barrens 62.5,38.54 |tip {dropsfrom}Marvon's Chest
step
  talk Senior Sergeant Taiga##15702
  accept The Horde Needs Your Help!##8792 |goto Thunder Bluff 39.93,51.65
step
  talk Master Sergeant Moonshadow##15709
  accept The Alliance Needs Your Help!##8797 |goto Darnassus 41.86,41.53
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Hunter
  talk Mokvar##16012
  accept An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Beaststalker's Bindings to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8914 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Mage
  talk Mokvar##16012
  accept An Earnest Proposition##8915 |goto Orgrimmar 34.95,38.29
step
  only Mage
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Magister's Bindings to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8915 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Priest
  talk Mokvar##16012
  accept An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29
step
  only Priest
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Devout Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8916 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Rogue
  talk Mokvar##16012
  accept An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Shadowcraft Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8917 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Shaman
  talk Mokvar##16012
  accept An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bindings of Elements to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8918 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warlock
  talk Mokvar##16012
  accept An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Dreadmist Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8919 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warrior
  talk Mokvar##16012
  accept An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bracers of Valor to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8920 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Druid
  talk Mokvar##16012
  accept Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Give Mokvar your Wildheart Cowl and Wildheart Vest.
  collect Wildheart Cowl##16720 |q 9007 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Hunter
  talk Mokvar##16012
  accept Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Give Mokvar your Beaststalker's Cap and Beaststalker's Tunic.
  collect Beaststalker's Cap##16677 |q 9008 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Priest
  talk Mokvar##16012
  accept Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29
step
  only Priest
  note Give Mokvar your Devout Crown and Devout Robe.
  collect Devout Crown##16693 |q 9009 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue
  talk Mokvar##16012
  accept Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Give Mokvar your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9010 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Shaman
  talk Mokvar##16012
  accept Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Give Mokvar your Coif of Elements and Vest of Elements.
  collect Coif of Elements##16667 |q 9011 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Warlock
  talk Mokvar##16012
  accept Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Give Mokvar your Dreadmist Mask and Dreadmist Robe.
  collect Dreadmist Mask##16698 |q 9012 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior
  talk Mokvar##16012
  accept Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Give Mokvar your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9013 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  only Mage
  talk Mokvar##16012
  accept Saving the Best for Last##9014 |goto Orgrimmar 34.95,38.29
step
  only Mage
  note Give Mokvar your Magister's Crown and Magister's Robes.
  collect Magister's Crown##16686 |q 9014 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  talk Mokvar##16012
  accept An Earnest Proposition##10493 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Lightforge Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 10493 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##10499 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  note Give Mokvar your Lightforge Helm and Lightforge Breastplate.
  collect Lightforge Helm##16727 |q 10499 |goto Orgrimmar 34.95,38.29 |tip {dropsfrom}Darkmaster Gandling
step
  note Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.
  kill Dunemaul Brute##5474 |q 5863 |goto Tanaris 40.63,54.8
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Elder Darkcore##15564
  accept Darkcore the Elder##8648 |goto Undercity 66.63,38.22
step
  talk Anachronos##15192
  accept The Path of the Protector##8747 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8752 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8757 |goto Tanaris 64.2,51.42
step
  talk Senior Sergeant Grimsford##15703
  accept The Horde Needs Your Help!##8793 |goto Undercity 62.56,47.72
step
  talk Fenstad Argyle##16108
  accept Tracing the Source##8982 |goto Undercity 66.67,44.72
step
  talk Anachronos##15192
  accept Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  note Anachronos at the Caverns of Time in Tanaris wants the Staff Head of Atiesh and the Base of Atiesh.
  collect Staff Head of Atiesh##22733 |q 9251 |goto Naxxramas - Raid -1,-1 |raid |tip {dropsfrom}Kel'Thuzad
step
  note Security Chief Bilgewhizzle of Steamwheedle Port in Tanaris wants you to kill 10 Southsea Pirates, 10 Southsea Freebooters, 10 Southsea Dock Workers and 10 Southsea Swashbucklers.
  kill Southsea Pirate##7855 |q 8366 |goto Tanaris 72.44,46.18
step
  talk High Overlord Saurfang##14720
  turnin The Lord of Blackrock##7784 |goto Orgrimmar 50.95,75.7 |tip {turninat}Orgrimmar
step
  talk Razzeric##4706
  turnin Safety First##1189 |goto Thousand Needles 80.33,76.09 |tip {turninat}Thousand Needles
step
  talk Apothecary Dithers##11057
  turnin Fire Plume Forged##5802 |goto Tirisfal Glades 83.28,69.23 |tip {turninat}Tirisfal Glades
step
  talk Apothecary Staffron Lerent##16107
  turnin The Source Revealed##8984 |goto Alterac Mountains 89.53,75.52 |tip {turninat}Alterac Mountains
step
  talk Overlord Runthak##14392
  turnin For All To See##7491 |goto Orgrimmar 51.71,75.46 |tip {turninat}Orgrimmar
step
  talk Homing Robot OOX-17/TN##7784
  turnin Find OOX-17/TN!##351 |goto Tanaris 60.23,64.72
step
  talk Apothecary Zinge##5204
  turnin Return to Apothecary Zinge##864 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  talk Apothecary Zinge##5204
  accept Vivian Lagrave and the Darkstone Tablet##4769 |goto Undercity 50.14,67.97
step
  talk Overlord Runthak##14392
  accept The Journey Has Just Begun##7493 |goto Orgrimmar 51.71,75.46
step
  talk Sergeant Stonebrow##15383
  accept The Alliance Needs Copper Bars!##8492 |goto Ironforge 64.4,67.31
step
  note Bring 20 Copper Bars to Sergeant Stonebrow at the Military Ward in Ironforge.
  collect 20 The Alliance Needs Copper Bars!##2840 |q 8492 |goto Ironforge 64.4,67.31
step
  talk Corporal Carnes##15431
  accept The Alliance Needs Iron Bars!##8494 |goto Ironforge 65.0,65.38
step
  note Bring 20 Iron Bars to Corporal Carnes at the Military Ward in Ironforge.
  collect 20 Iron Bar##3575 |q 8494 |goto Ironforge 65.0,65.38
step
  talk Dame Twinbraid##15432
  accept The Alliance Needs Thorium Bars!##8499 |goto Ironforge 63.89,68.43
step
  note Bring 20 Thorium Bars to Dame Twinbraid at the Military Ward in Ironforge.
  collect 20 Thorium Bar##12359 |q 8499 |goto Ironforge 63.89,68.43
step
  talk Private Draxlegauge##15434
  accept The Alliance Needs Stranglekelp!##8503 |goto Ironforge 70.94,72.59
step
  note Bring 20 Stranglekelp to Private Draxlegauge at the Military Ward in Ironforge.
  collect 20 The Alliance Needs Stranglekelp!##3820 |q 8503 |goto Ironforge 70.94,72.59
step
  talk Master Nightsong##15437
  accept The Alliance Needs Purple Lotus!##8505 |goto Ironforge 71.9,71.3
step
  note Bring 20 Purple Lotus to Master Nightsong at the Military Ward in Ironforge.
  collect 20 Purple Lotus##8831 |q 8505 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Sergeant Major Germaine##15445
  accept The Alliance Needs Arthas' Tears!##8509 |goto Ironforge 70.86,71.85
step
  note Bring 20 Arthas' Tears to Sergeant Major Germaine at the Military Ward in Ironforge.
  collect 20 Arthas' Tears##8836 |q 8509 |goto Swamp of Sorrows 5.5,31.38 |tip {dropsfrom}Mire Lord, Skeletal Sorcerer, Skeletal Executioner
step
  talk Bonnie Stoneflayer##15446
  accept The Alliance Needs Light Leather!##8511 |goto Ironforge 57.61,76.38
step
  note Bring 10 Light Leather to Bonnie Stoneflayer at the Military Ward in Ironforge.
  collect 10 Light Leather##2318 |q 8511 |goto Ghostlands 37.36,79.33 |tip {dropsfrom}Mirdoran the Fallen, Ghostclaw Lynx, Ghostclaw Ravager
step
  talk Private Porter##15448
  accept The Alliance Needs Medium Leather!##8513 |goto Ironforge 58.49,75.22
step
  note Bring 10 Medium Leather to Private Porter at the Military Ward in Ironforge.
  collect 10 The Alliance Needs Medium Leather!##2319 |q 8513 |goto Ironforge 58.49,75.22
step
  talk Marta Finespindle##15450
  accept The Alliance Needs Thick Leather!##8515 |goto Ironforge 59.02,75.86
step
  note Bring 10 Thick Leather to Marta Finespindle at the Military Ward in Ironforge.
  collect 10 Thick Leather##4304 |q 8515 |goto Hillsbrad Foothills 87.3,41.7 |tip {dropsfrom}Wild Gryphon, Searing Whelp, Skhowl
step
  talk Sentinel Silversky##15451
  accept The Alliance Needs Linen Bandages!##8517 |goto Ironforge 55.4,76.26
step
  note Bring 20 Linen Bandages to Sentinel Silversky at the Military Ward in Ironforge.
  collect 20 Linen Bandage##1251 |q 8517 |goto Ironforge 55.4,76.26
step
  talk Nurse Stonefield##15452
  accept The Alliance Needs Silk Bandages!##8520 |goto Ironforge 55.14,77.69
step
  note Bring 20 Silk Bandages to Nurse Stonefield at the Military Ward in Ironforge.
  collect 20 The Alliance Needs Silk Bandages!##6450 |q 8520 |goto Ironforge 55.14,77.69
step
  talk Keeper Moonshade##15453
  accept The Alliance Needs Runecloth Bandages!##8522 |goto Ironforge 54.21,77.84
step
  note Bring 20 Runecloth Bandages to Keeper Moonshade at the Military Ward in Ironforge.
  collect 20 The Alliance Needs Runecloth Bandages!##14529 |q 8522 |goto Ironforge 54.21,77.84
step
  talk Slicky Gastronome##15455
  accept The Alliance Needs Rainbow Fin Albacore!##8524 |goto Ironforge 71.02,69.89
step
  note Bring 20 Rainbow Fin Albacore to Slicky Gastronome at the Military Ward in Ironforge.
  collect 20 The Alliance Needs Rainbow Fin Albacore!##5095 |q 8524 |goto Ironforge 71.02,69.89
step
  talk Sarah Sadwhistle##15456
  accept The Alliance Needs Roast Raptor!##8526 |goto Ironforge 71.35,70.35
step
  note Bring 20 Roast Raptor to Sarah Sadwhistle at the Military Ward in Ironforge.
  collect 20 Roast Raptor##12210 |q 8526 |goto Ironforge 71.35,70.35
step
  talk Huntress Swiftriver##15457
  accept The Alliance Needs Spotted Yellowtail!##8528 |goto Ironforge 71.53,69.1
step
  note Bring 20 Spotted Yellowtail to Huntress Swiftriver at the Military Ward in Ironforge.
  collect 20 The Alliance Needs Spotted Yellowtail!##6887 |q 8528 |goto Ironforge 71.53,69.1
step
  talk Senior Sergeant Kai'jin##15704
  accept The Horde Needs Your Help!##8794 |goto Orgrimmar 51.56,66.37
step
  talk Master Sergeant Maclure##15708
  accept The Alliance Needs Your Help!##8796 |goto Stormwind City 54.07,59.67
step
  talk Orok Deathbane##16007
  accept Dearest Elenia,##8900 |goto Orgrimmar 51.29,70.19
step
  talk Temma of the Wells##16008
  accept Dearest Elenia,##8901 |goto Thunder Bluff 44.77,60.13
step
  talk Aristan Mottar##16105
  accept Tracing the Source##9026 |goto Stormwind City 54.6,65.3
step
  talk Warlord Gorchuk##15700
  turnin The Horde Needs Your Help!##8792 |goto Orgrimmar 34.92,74.89 |tip {turninat}Orgrimmar
step
  talk Warlord Gorchuk##15700
  turnin The Horde Needs Your Help!##8793 |goto Orgrimmar 34.92,74.89 |tip {turninat}Orgrimmar
step
  talk Warlord Gorchuk##15700
  turnin The Horde Needs Your Help!##8794 |goto Orgrimmar 34.92,74.89 |tip {turninat}Orgrimmar
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave and the Darkstone Tablet##4769 |goto Badlands 2.9,47.76 |tip {turninat}Badlands
step
  click Uldum Pedestal##142343
  accept Return to Thunder Bluff##2967 |goto Tanaris 37.63,81.4
step
  talk Miner Cromwell##15459
  accept The Horde Needs Copper Bars!##8532 |goto Orgrimmar 31.63,66.66
step
  note Bring 20 Copper Bars to Miner Cromwell at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Copper Bars!##2840 |q 8532 |goto Orgrimmar 31.63,66.66
step
  talk Grunt Maug##15460
  accept The Horde Needs Tin Bars!##8542 |goto Orgrimmar 31.15,65.01
step
  note Bring 20 Tin Bars to Grunt Maug at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Tin Bars!##3576 |q 8542 |goto Orgrimmar 31.15,65.01
step
  talk Senior Sergeant T'kelah##15469
  accept The Horde Needs Mithril Bars!##8545 |goto Orgrimmar 31.27,66.08
step
  note Bring 20 Mithril Bars to Senior Sergeant T'kelah at the Valley of Spirits in Orgrimmar.
  collect 20 Mithril Bar##3860 |q 8545 |goto Orgrimmar 31.27,66.08
step
  talk Herbalist Proudfeather##15477
  accept The Horde Needs Peacebloom!##8549 |goto Orgrimmar 33.15,70.44
step
  note Bring 20 Peacebloom to Herbalist Proudfeather at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Peacebloom!##2447 |q 8549 |goto Orgrimmar 33.15,70.44
step
  talk Batrider Pele'keiki##15508
  accept The Horde Needs Firebloom!##8580 |goto Orgrimmar 33.42,69.27
step
  note Bring 20 Firebloom to Batrider Pele'keiki at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Firebloom!##4625 |q 8580 |goto Orgrimmar 33.42,69.27
step
  talk Apothecary Jezel##15512
  accept The Horde Needs Purple Lotus!##8582 |goto Orgrimmar 32.9,68.48
step
  note Bring 20 Purple Lotus to Apothecary Jezel at the Valley of Spirits in Orgrimmar.
  collect 20 Purple Lotus##8831 |q 8582 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Skinner Jamani##15515
  accept The Horde Needs Heavy Leather!##8588 |goto Orgrimmar 35.6,73.31
step
  note Bring 10 Heavy Leather to Skinner Jamani at the Valley of Spirits in Orgrimmar.
  collect 10 Heavy Leather##4234 |q 8588 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Advanced Target Dummy, Jadespine Basilisk, Battered Chest
step
  talk Sergeant Umala##15522
  accept The Horde Needs Thick Leather!##8590 |goto Orgrimmar 34.14,72.76
step
  note Bring 10 Thick Leather to Sergeant Umala at the Valley of Spirits in Orgrimmar.
  collect 10 Thick Leather##4304 |q 8590 |goto Hillsbrad Foothills 87.3,41.7 |tip {dropsfrom}Wild Gryphon, Searing Whelp, Skhowl
step
  talk Doctor Serratus##15525
  accept The Horde Needs Rugged Leather!##8600 |goto Orgrimmar 35.21,72.49
step
  note Bring 10 Rugged Leather to Doctor Serratus at the Valley of Spirits in Orgrimmar.
  collect 10 Rugged Leather##8170 |q 8600 |goto Orgrimmar 35.21,72.49
step
  talk Healer Longrunner##15528
  accept The Horde Needs Wool Bandages!##8604 |goto Orgrimmar 31.05,74.16
step
  note Bring 20 Wool Bandages to Healer Longrunner at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Wool Bandages!##3530 |q 8604 |goto Orgrimmar 31.05,74.16
step
  talk Lady Callow##15529
  accept The Horde Needs Mageweave Bandages!##8607 |goto Orgrimmar 31.23,75.12
step
  note Bring 20 Mageweave Bandages to Lady Callow at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Mageweave Bandages!##8544 |q 8607 |goto Orgrimmar 31.23,75.12
step
  talk Stoneguard Clayhoof##15532
  accept The Horde Needs Runecloth Bandages!##8609 |goto Orgrimmar 31.61,75.77
step
  note Bring 20 Runecloth Bandages to Stoneguard Clayhoof at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Runecloth Bandages!##14529 |q 8609 |goto Orgrimmar 31.61,75.77
step
  talk Bloodguard Rawtar##15533
  accept The Horde Needs Lean Wolf Steaks!##8611 |goto Orgrimmar 28.84,67.4
step
  note Bring 20 Lean Wolf Steaks to Bloodguard Rawtar at the Valley of Spirits in Orgrimmar.
  collect 20 Lean Wolf Steak##12209 |q 8611 |goto Orgrimmar 28.84,67.4
step
  talk Fisherman Lin'do##15534
  accept The Horde Needs Spotted Yellowtail!##8613 |goto Orgrimmar 29.13,68.86
step
  note Bring 20 Spotted Yellowtail to Fisherman Lin'do at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Spotted Yellowtail!##6887 |q 8613 |goto Orgrimmar 29.13,68.86
step
  talk Chief Sharpclaw##15535
  accept The Horde Needs Baked Salmon!##8615 |goto Orgrimmar 28.83,68.39
step
  note Bring 20 Baked Salmon to Chief Sharpclaw at the Valley of Spirits in Orgrimmar.
  collect 20 The Horde Needs Baked Salmon!##13935 |q 8615 |goto Orgrimmar 28.83,68.39
step
  talk Elder Hammershout##15562
  accept Hammershout the Elder##8646 |goto Stormwind City 21.44,53.9
step
  talk Elder Ragetotem##15573
  accept Ragetotem the Elder##8671 |goto Tanaris 35.96,80.12
step
  talk Master Sergeant Fizzlebolt##15707
  accept The Alliance Needs Your Help!##8795 |goto Ironforge 27.52,73.32
step
  talk Warlord Gorchuk##15700
  accept Thirty Signets for War Supplies##8855 |goto Orgrimmar 34.92,74.89
step
  collect Thirty Signets for War Supplies##21438 |q 8855 |goto Orgrimmar 34.92,74.89
step
  note Tran'rek in Gadgetzan wants you to kill 8 Gnarled Thistleshrubs and 8 Thistleshrub Rootshapers.
  kill Gnarled Thistleshrub##5490 |q 3362 |goto Tanaris 29.35,66.17
step
  talk Varimathras##2425
  accept The Crimson Courier##6145 |goto Undercity 56.25,92.2
step
  note Return to Eastern Plaguelands and track down the Crimson Courier. Kill the Courier and recover the Grand Crusader's Command.
  collect The Crimson Courier##15868 |q 6145 |goto Undercity 56.25,92.2
step
  talk Meridith the Mermaiden##15526
  accept Love Song for Narain##8599 |goto Tanaris 59.43,96.05
step
  talk Elder Bladeswift##15598
  turnin Bladeswift the Elder##8718 |goto Darnassus 33.49,14.3 |tip {turninat}Darnassus
step
  talk Marin Noggenfogger##7564
  turnin The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
  talk Nixx Sprocketspring##8126
  turnin The Pledge of Secrecy##3638 |goto Tanaris 52.48,27.33
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin A More Fitting Reward##8259 |goto Orgrimmar 38.66,35.92 |tip {turninat}Orgrimmar
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
  talk Elder Bronzebeard##15871
  turnin Bronzebeard the Elder##8866 |goto Ironforge 29.2,17.05 |tip {turninat}Ironforge
step
  talk Lunar Festival Harbinger##15895
  turnin Lunar Fireworks##8867 |goto Darnassus 33.89,13.87 |tip {turninat}Darnassus
step
  talk Lunar Festival Harbinger##15895
  turnin The Lunar Festival##8873 |goto Darnassus 33.89,13.87 |tip {turninat}Darnassus
step
  talk Spigot Operator Luglunket##7408
  turnin Water Pouch Bounty##1707 |goto Tanaris 52.49,28.45
step
  talk Lunar Festival Harbinger##15895
  turnin The Lunar Festival##8874 |goto Darnassus 33.89,13.87 |tip {turninat}Darnassus
step
  talk Lunar Festival Harbinger##15895
  turnin The Lunar Festival##8875 |goto Darnassus 33.89,13.87 |tip {turninat}Darnassus
step
  turnin The Super Egg-O-Matic##2741 |goto Tanaris 52.39,26.97
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
step
  talk Trenton Lighthammer##7804
  turnin A Good Head On Your Shoulders##2771 |goto Tanaris 51.41,28.75
step
  talk Trenton Lighthammer##7804
  turnin The World At Your Feet##2772 |goto Tanaris 51.41,28.75
step
  talk Trenton Lighthammer##7804
  turnin The Mithril Kid##2773 |goto Tanaris 51.41,28.75
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin WANTED: Caliph Scorpidsting##2781 |goto Tanaris 52.46,28.51
step
  talk Andi Lynn##11758
  turnin The Dunemaul Compound##5863 |goto Tanaris 52.82,27.4
step
  talk Tran'rek##7876
  turnin Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
  talk Tran'rek##7876
  turnin Scarab Shells##2865 |goto Tanaris 51.57,26.76
step
  turnin A Grave Situation##3913 |goto Tanaris 53.81,29.06
step
  talk Thrall##4949
  turnin For The Horde!##4974 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Slake That Thirst##379 |goto Tanaris 52.46,28.51
step
  talk Alchemist Pestlezugg##5594
  turnin Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
  talk Tran'rek##7876
  turnin Super Sticky##4504 |goto Tanaris 51.57,26.76
step
  talk Rokaro##10182
  turnin The Champion of the Horde##6567 |goto Feralas 46.39,18.24 |tip {turninat}Feralas
step
  talk Dirge Quikcleave##8125
  turnin Clamlette Surprise##6610 |goto Tanaris 52.63,28.11
step
  talk Senior Surveyor Fizzledowser##7724
  turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
  talk Trenton Lighthammer##7804
  turnin Troll Temper##3042 |goto Tanaris 51.41,28.75
step
  talk Derotain Mudsipper##14567
  turnin A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
  talk Elder Darkhorn##15579
  turnin Darkhorn the Elder##8677 |goto Orgrimmar 41.13,33.84 |tip {turninat}Orgrimmar
step
  talk Elder Dreamseer##15586
  turnin Dreamseer the Elder##8684 |goto Tanaris 51.61,26.99
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin Material Assistance##7667 |goto Orgrimmar 38.66,35.92 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin Again Into the Great Ossuary##7669 |goto Orgrimmar 38.66,35.92 |tip {turninat}Orgrimmar
step
  talk Senior Surveyor Fizzledowser##7724
  accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
  note Bring five Centipaar insect parts from the Noxious Lair to Alchemist Pestlezugg in Gadgetzan.
  collect Centipaar Insect Parts##8587 |q 82 |goto Tanaris 33.39,44.37 |tip {dropsfrom}Centipaar Wasp, Centipaar Stinger, Centipaar Swarmer
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Another Power Source?##841 |goto Tanaris 52.46,28.51
step
  note Bring 10 Wastewander Water Pouches to Chief Engineer Bilgewhizzle in Gadgetzan in exchange for another power source.
  collect 10 Wastewander Water Pouch##8483 |q 841 |goto Tanaris 61.84,38.21 |tip {dropsfrom}Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage
step
  talk Chief Engineer Bilgewhizzle##7407
  accept More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Marin Noggenfogger##7564
  accept In Good Taste##2606 |goto Tanaris 51.81,28.66
step
  talk Nixx Sprocketspring##8126
  accept Show Your Work##3639 |goto Tanaris 52.48,27.33
step
  note Bring 20 Big Iron Bombs, 20 Solid Dynamite, and 5 Explosive Sheep to Nixx Sprocketspring in Gadgetzan.
  collect 20 Big Iron Bomb##4394 |q 3639 |goto Tanaris 52.48,27.33
step
  click A Conspicuous Gravestone##148504
  accept Linken's Sword##3914 |goto Tanaris 53.81,29.06
step
  talk Alchemist Pestlezugg##5594
  accept Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  note Defeat the Gorishi Hive Queen once she is summoned.
  collect Gorishi Queen Brain##11835 |q 4507 |goto Tanaris 50.89,26.96 |tip {dropsfrom}Gorishi Hive Queen
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Belt##7653 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7653 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Boots##7654 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7654 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Bracer##7655 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7655 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Chest##7656 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7656 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Helm##7657 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7657 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Leggings##7658 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7658 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Shoulders##7659 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7659 |goto Tanaris 51.38,28.67
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept The Darkreaver Menace##8258 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth spirits you must fight. Defeating these spirits will summon forth Death Knight Darkreaver; defeat him.
  collect Darkreaver's Head##18880 |q 8258 |goto Orgrimmar 38.66,35.92 |tip {dropsfrom}Death Knight Darkreaver
step
  talk Lunar Festival Harbinger##15895
  accept Valadar Starsong##8883 |goto Darnassus 33.89,13.87
step
  talk Orcish Orphan##14444
  turnin Children's Week##172 |goto Orgrimmar 70.8,22.82 |tip {turninat}Orgrimmar
step
  talk Haughty Modiste##15165
  turnin Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
  talk Security Chief Bilgewhizzle##7882
  turnin Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
  talk Yuka Screwspigot##9544
  turnin Yuka Screwspigot##4324 |goto Burning Steppes 66.06,21.95 |tip {turninat}Burning Steppes
step
  talk Stoley##7881
  turnin Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
step
  talk Narain Soothfancy##11811
  turnin Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Orcish Orphan##14444
  turnin You Scream, I Scream...##915 |goto Orgrimmar 70.8,22.82 |tip {turninat}Orgrimmar
step
  talk Nara Wildmane##5770
  turnin Return to Thunder Bluff##2967 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Narain Soothfancy##11811
  turnin Love Song for Narain##8599 |goto Tanaris 65.24,18.58
step
  talk Orcish Orphan##14444
  turnin Cairne's Hoofprint##925 |goto Orgrimmar 70.8,22.82 |tip {turninat}Orgrimmar
step
  talk Narain Soothfancy##11811
  turnin Decoy!##8606 |goto Tanaris 65.24,18.58
step
  talk Yeh'kinya##8579
  turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Elder Proudhorn##15580
  turnin Proudhorn the Elder##8678 |goto Thunder Bluff 72.98,23.37 |tip {turninat}Thunder Bluff
step
  talk Stoley##7881
  accept Deliver to MacKinley##2874 |goto Tanaris 67.11,23.98
step
  talk Yeh'kinya##8579
  accept The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  note Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
  collect First Mosh'aru Tablet##10660 |q 3527 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Theka the Martyr
step
  talk Orcish Orphan##14444
  accept A Warden of the Horde##5502 |goto Orgrimmar 70.8,22.82
step
  note Return your ward to the Orgrimmar orphanage by handing in the Orcish Orphan Whistle to Orphan Matron Battlewail in the Valley of Honor.
  collect A Warden of the Horde##18597 |q 5502 |goto Orgrimmar 70.8,22.82
step
  talk Narain Soothfancy##11811
  accept Stewvul, Ex-B.F.F.##8577 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Never Ask Me About My Business##8584 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Draconic for Dummies##8597 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  note Recover the 8 lost chapters of Draconic for Dummies and combine them with the Magical Book Binding and return the completed book of Draconic for Dummies: Volume II to Narain Soothfancy in Tanaris.
  collect Draconic For Dummies: Volume II##21111 |q 8620 |goto Tanaris 65.24,18.58
step
  talk Human Orphan##14305
  turnin Jaina's Autograph##558 |goto Stormwind City 47.58,38.17 |tip {turninat}Stormwind City
step
  talk Marvon Rivetseeker##7771
  turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.92
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin An Earnest Proposition##8915 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Mokvar##16012
  turnin An Earnest Proposition##8919 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Priest
  talk Mokvar##16012
  turnin An Earnest Proposition##8916 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Mokvar##16012
  turnin An Earnest Proposition##8917 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Mokvar##16012
  turnin An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Paladin
  talk Mokvar##16012
  turnin An Earnest Proposition##10493 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##10499 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Druid
  talk Mokvar##16012
  turnin Saving the Best for Last##9007 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Priest
  talk Mokvar##16012
  turnin Saving the Best for Last##9009 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Mokvar##16012
  turnin Saving the Best for Last##9010 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Mokvar##16012
  turnin Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Mokvar##16012
  turnin Saving the Best for Last##9012 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin Saving the Best for Last##9014 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  talk Marvon Rivetseeker##7771
  turnin The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
  talk Marvon Rivetseeker##7771
  accept Into the Depths##3446 |goto Tanaris 52.71,45.92
step
  talk Marvon Rivetseeker##7771
  accept Secret of the Circle##3447 |goto Tanaris 52.71,45.92
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note Take down 10 Wastewander Shadow Mages, 8 Wastewander Rogues, and 6 Wastewander Assassins for Chief Engineer Bilgewhizzle in Gadgetzan.
  kill Wastewander Rogue##5615 |q 1691 |goto Tanaris 61.84,38.21
step
  talk Anachronos##15192
  turnin Atiesh, the Befouled Greatstaff##9251 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Protector##8747 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8752 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8757 |goto Tanaris 64.2,51.42
step
  talk Elenia Haydon##16004
  turnin Dearest Elenia,##8900 |goto Undercity 66.93,45.24 |tip {turninat}Undercity
step
  talk Elenia Haydon##16004
  turnin Dearest Elenia,##8901 |goto Undercity 66.93,45.24 |tip {turninat}Undercity
step
  talk Innkeeper Norman##6741
  turnin Tracing the Source##8982 |goto Undercity 67.74,37.89 |tip {turninat}Undercity
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Elder Darkcore##15564
  turnin Darkcore the Elder##8648 |goto Undercity 66.63,38.22 |tip {turninat}Undercity
step
  talk Anachronos##15192
  accept The Path of the Protector##8748 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21196 |q 8748 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8753 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21201 |q 8753 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8758 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21206 |q 8758 |goto Tanaris 64.2,51.42
step
  talk Fenstad Argyle##16108
  accept Dangerous Love##8904 |goto Undercity 66.67,44.72
step
  note Get a Guardian's Moldy Card and bring it to Fenstad Argyle in the Undercity.
  collect Guardian's Moldy Card##22145 |q 8904 |goto Undercity 66.67,44.72
step
  only Priest
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9257 |goto Tanaris 64.2,51.42
step
  only Priest
  note Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him.
  kill Atiesh##16387 |q 9257 |raid
step
  only Druid
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9269 |goto Tanaris 64.2,51.42
step
  only Druid
  note Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him.
  kill Atiesh##16387 |q 9269 |raid
step
  only Mage
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9270 |goto Tanaris 64.2,51.42
step
  only Mage
  note Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him.
  kill Atiesh##16387 |q 9270 |raid
step
  only Warlock
  talk Anachronos##15192
  accept Atiesh, Greatstaff of the Guardian##9271 |goto Tanaris 64.2,51.42
step
  only Warlock
  note Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him.
  kill Atiesh##16387 |q 9271 |raid
step
  talk Sergeant Stonebrow##15383
  turnin The Alliance Needs Copper Bars!##8492 |goto Ironforge 64.4,67.31 |tip {turninat}Ironforge
step
  talk Corporal Carnes##15431
  turnin The Alliance Needs Iron Bars!##8494 |goto Ironforge 65.0,65.38 |tip {turninat}Ironforge
step
  talk Dame Twinbraid##15432
  turnin The Alliance Needs Thorium Bars!##8499 |goto Ironforge 63.89,68.43 |tip {turninat}Ironforge
step
  talk Private Draxlegauge##15434
  turnin The Alliance Needs Stranglekelp!##8503 |goto Ironforge 70.94,72.59 |tip {turninat}Ironforge
step
  talk Master Nightsong##15437
  turnin The Alliance Needs Purple Lotus!##8505 |goto Ironforge 71.9,71.3 |tip {turninat}Ironforge
step
  talk Sergeant Major Germaine##15445
  turnin The Alliance Needs Arthas' Tears!##8509 |goto Ironforge 70.86,71.85 |tip {turninat}Ironforge
step
  talk Bonnie Stoneflayer##15446
  turnin The Alliance Needs Light Leather!##8511 |goto Ironforge 57.61,76.38 |tip {turninat}Ironforge
step
  talk Private Porter##15448
  turnin The Alliance Needs Medium Leather!##8513 |goto Ironforge 58.49,75.22 |tip {turninat}Ironforge
step
  talk Innkeeper Allison##6740
  turnin Tracing the Source##9026 |goto Stormwind City 52.62,65.7 |tip {turninat}Stormwind City
step
  talk Marta Finespindle##15450
  turnin The Alliance Needs Thick Leather!##8515 |goto Ironforge 59.02,75.86 |tip {turninat}Ironforge
step
  talk Overlord Runthak##14392
  turnin The Journey Has Just Begun##7493 |goto Orgrimmar 51.71,75.46 |tip {turninat}Orgrimmar
step
  talk Sentinel Silversky##15451
  turnin The Alliance Needs Linen Bandages!##8517 |goto Ironforge 55.4,76.26 |tip {turninat}Ironforge
step
  talk Nurse Stonefield##15452
  turnin The Alliance Needs Silk Bandages!##8520 |goto Ironforge 55.14,77.69 |tip {turninat}Ironforge
step
  talk Keeper Moonshade##15453
  turnin The Alliance Needs Runecloth Bandages!##8522 |goto Ironforge 54.21,77.84 |tip {turninat}Ironforge
step
  talk Slicky Gastronome##15455
  turnin The Alliance Needs Rainbow Fin Albacore!##8524 |goto Ironforge 71.02,69.89 |tip {turninat}Ironforge
step
  talk Sarah Sadwhistle##15456
  turnin The Alliance Needs Roast Raptor!##8526 |goto Ironforge 71.35,70.35 |tip {turninat}Ironforge
step
  talk Huntress Swiftriver##15457
  turnin The Alliance Needs Spotted Yellowtail!##8528 |goto Ironforge 71.53,69.1 |tip {turninat}Ironforge
step
  talk Nathanos Blightcaller##11878
  turnin The Crimson Courier##6145 |goto Eastern Plaguelands 26.54,74.73 |tip {turninat}Eastern Plaguelands
step
  talk "Sea Wolf" MacKinley##2501
  turnin Deliver to MacKinley##2874 |goto Stranglethorn Vale 27.78,77.07 |tip {turninat}Stranglethorn Vale
step
  talk Miner Cromwell##15459
  turnin The Horde Needs Copper Bars!##8532 |goto Orgrimmar 31.63,66.66 |tip {turninat}Orgrimmar
step
  talk Grunt Maug##15460
  turnin The Horde Needs Tin Bars!##8542 |goto Orgrimmar 31.15,65.01 |tip {turninat}Orgrimmar
step
  talk Senior Sergeant T'kelah##15469
  turnin The Horde Needs Mithril Bars!##8545 |goto Orgrimmar 31.27,66.08 |tip {turninat}Orgrimmar
step
  talk Herbalist Proudfeather##15477
  turnin The Horde Needs Peacebloom!##8549 |goto Orgrimmar 33.15,70.44 |tip {turninat}Orgrimmar
step
  turnin Stewvul, Ex-B.F.F.##8577 |goto Silverpine Forest 46.19,86.68 |tip {turninat}Silverpine Forest
step
  talk Batrider Pele'keiki##15508
  turnin The Horde Needs Firebloom!##8580 |goto Orgrimmar 33.42,69.27 |tip {turninat}Orgrimmar
step
  talk Apothecary Jezel##15512
  turnin The Horde Needs Purple Lotus!##8582 |goto Orgrimmar 32.9,68.48 |tip {turninat}Orgrimmar
step
  talk Skinner Jamani##15515
  turnin The Horde Needs Heavy Leather!##8588 |goto Orgrimmar 35.6,73.31 |tip {turninat}Orgrimmar
step
  talk Sergeant Umala##15522
  turnin The Horde Needs Thick Leather!##8590 |goto Orgrimmar 34.14,72.76 |tip {turninat}Orgrimmar
step
  talk Doctor Serratus##15525
  turnin The Horde Needs Rugged Leather!##8600 |goto Orgrimmar 35.21,72.49 |tip {turninat}Orgrimmar
step
  talk Healer Longrunner##15528
  turnin The Horde Needs Wool Bandages!##8604 |goto Orgrimmar 31.05,74.16 |tip {turninat}Orgrimmar
step
  talk Lady Callow##15529
  turnin The Horde Needs Mageweave Bandages!##8607 |goto Orgrimmar 31.23,75.12 |tip {turninat}Orgrimmar
step
  talk Stoneguard Clayhoof##15532
  turnin The Horde Needs Runecloth Bandages!##8609 |goto Orgrimmar 31.61,75.77 |tip {turninat}Orgrimmar
step
  talk Bloodguard Rawtar##15533
  turnin The Horde Needs Lean Wolf Steaks!##8611 |goto Orgrimmar 28.84,67.4 |tip {turninat}Orgrimmar
step
  talk Fisherman Lin'do##15534
  turnin The Horde Needs Spotted Yellowtail!##8613 |goto Orgrimmar 29.13,68.86 |tip {turninat}Orgrimmar
step
  talk Chief Sharpclaw##15535
  turnin The Horde Needs Baked Salmon!##8615 |goto Orgrimmar 28.83,68.39 |tip {turninat}Orgrimmar
step
  talk Elder Hammershout##15562
  turnin Hammershout the Elder##8646 |goto Stormwind City 21.44,53.9 |tip {turninat}Stormwind City
step
  talk Elder Ragetotem##15573
  turnin Ragetotem the Elder##8671 |goto Tanaris 35.96,80.12
step
  talk Sprinkle##7583
  turnin In Good Taste##2606 |goto Tanaris 51.06,26.87
step
  talk Nixx Sprocketspring##8126
  turnin Show Your Work##3639 |goto Tanaris 52.48,27.33
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin The Darkreaver Menace##8258 |goto Orgrimmar 38.66,35.92 |tip {turninat}Orgrimmar
step
  talk Alchemist Pestlezugg##5594
  turnin Noxious Lair Investigation##82 |goto Tanaris 50.89,26.96
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
  talk Valadar Starsong##15864
  turnin Valadar Starsong##8883 |goto Moonglade 53.65,35.26 |tip {turninat}Moonglade
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Another Power Source?##841 |goto Tanaris 52.46,28.51
step
  talk Linken##8737
  turnin Linken's Sword##3914 |goto Un'Goro Crater 44.66,8.1 |tip {turninat}Un'Goro Crater
step
  turnin Into the Depths##3446 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |tip {turninat}The Temple of Atal'Hakkar - Dungeon
step
  turnin Secret of the Circle##3447 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |tip {turninat}The Temple of Atal'Hakkar - Dungeon
step
  talk Dirge Quikcleave##8125
  turnin Never Ask Me About My Business##8584 |goto Tanaris 52.63,28.11
step
  talk Alchemist Pestlezugg##5594
  turnin Pawn Captures Queen##4507 |goto Tanaris 50.89,26.96
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Belt##7653 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Boots##7654 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Bracer##7655 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Chest##7656 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Helm##7657 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Leggings##7658 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Shoulders##7659 |goto Tanaris 51.38,28.67
step
  talk Senior Surveyor Fizzledowser##7724
  accept The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  note Discover the fate of Junior Surveyor Scrimshank, and bring either him or his surveying equipment to Senior Surveyor Fizzledowser in Gadgetzan.
  collect Scrimshank's Surveying Gear##8593 |q 10 |goto Tanaris 55.96,71.17
step
  talk Sprinkle##7583
  accept Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
  note Sprinkle in Gadgetzan wants you to collect a Violet Tragan and return it to her.
  collect Violet Tragan##8526 |q 2641 |goto The Hinterlands 40.99,59.83
step
  talk Alchemist Pestlezugg##5594
  accept Calm Before the Storm##4509 |goto Tanaris 50.89,26.96
step
  talk Dirge Quikcleave##8125
  accept The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  note Recover Lakmaeran's Carcass and 20 Chimaerok Tenderloins for Dirge Quikcleave in Tanaris.
  kill Lord Lakmaeran##12803 |goto Feralas 29.34,72.63 |elite
  collect Lakmaeran's Carcass##21027 |q 8585 |goto Feralas 29.34,72.63
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Orphan Matron Battlewail##14451
  turnin A Warden of the Horde##5502 |goto Orgrimmar 70.72,25.19 |tip {turninat}Orgrimmar
step
  turnin Draconic for Dummies##8597 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  talk Yeh'kinya##8579
  turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  talk Yeh'kinya##8579
  accept The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  note Bring the Ancient Egg to Yeh'kinya in Tanaris.
  collect Ancient Egg##12402 |q 4787 |goto The Hinterlands 57.58,86.79
step
  talk Narain Soothfancy##11811
  accept Scrying Goggles? No Problem!##8578 |goto Tanaris 65.24,18.58
step
  note Find Narain's Scrying Goggles and return them to Narain Soothfancy in Tanaris.
  collect Narain's Scrying Goggles##20951 |q 8578 |goto Molten Core - Raid -1,-1 |elite |tip {dropsfrom}Molten Giant, Molten Destroyer, Ragnaros
step
  talk Zilzibin Drumlore##7010
  turnin Calm Before the Storm##4509 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  only Priest
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9257 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Protector##8748 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8753 |goto Tanaris 64.2,51.42
step
  only Druid
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9269 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8758 |goto Tanaris 64.2,51.42
step
  only Mage
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9270 |goto Tanaris 64.2,51.42
step
  only Warlock
  talk Anachronos##15192
  turnin Atiesh, Greatstaff of the Guardian##9271 |goto Tanaris 64.2,51.42
step
  talk Fenstad Argyle##16108
  turnin Dangerous Love##8904 |goto Undercity 66.67,44.72 |tip {turninat}Undercity
step
  talk Anachronos##15192
  accept The Path of the Protector##8749 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21197 |q 8749 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8754 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21202 |q 8754 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8759 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21207 |q 8759 |goto Tanaris 64.2,51.42
step
  talk Fenstad Argyle##16108
  accept Fenstad's Hunch##8979 |goto Undercity 66.67,44.72
step
  note Bring 1 Cologne Bottle and 1 Perfume Bottle to Apothecary Zinge in the Undercity's Apothecarium.
  collect 1 Fenstad's Hunch##21833 |q 8979 |goto Undercity 66.67,44.72
step
  talk Apothecary Zinge##5204
  turnin Fenstad's Hunch##8979 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  talk Senior Surveyor Fizzledowser##7724
  turnin The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
  talk Sprinkle##7583
  turnin Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Dirge Quikcleave##8125
  turnin The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  talk Senior Surveyor Fizzledowser##7724
  accept Insect Part Analysis##110 |goto Tanaris 50.21,27.48
step
  talk Sprinkle##7583
  accept Delivery for Marin##2661 |goto Tanaris 51.06,26.87
step
  talk Dirge Quikcleave##8125
  accept Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  note Dirge Quikcleave in Gadgetzan wants you to bring him 20 Goblin Rocket Fuel and 20 Deeprock Salt.
  collect Goblin Rocket Fuel##9061 |q 8586 |goto Searing Gorge 34.69,51.89 |tip {dropsfrom}Clunk, Spirestone Ogre Magus, Tortured Druid
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.76 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Yeh'kinya##8579
  turnin The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Narain Soothfancy##11811
  turnin Scrying Goggles? No Problem!##8578 |goto Tanaris 65.24,18.58
step
  talk Yeh'kinya##8579
  accept The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  note Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
  collect Filled Egg of Hakkar##10662 |q 3528 |goto Tanaris 66.99,22.36
step
  talk Anachronos##15192
  turnin The Path of the Protector##8749 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8754 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8759 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Protector##8750 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21198 |q 8750 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8755 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21203 |q 8755 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8760 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21208 |q 8760 |goto Tanaris 64.2,51.42
step
  talk Marin Noggenfogger##7564
  turnin Delivery for Marin##2661 |goto Tanaris 51.81,28.66
step
  talk Alchemist Pestlezugg##5594
  turnin Insect Part Analysis##110 |goto Tanaris 50.89,26.96
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Dirge Quikcleave##8125
  turnin Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  talk Alchemist Pestlezugg##5594
  accept Insect Part Analysis##113 |goto Tanaris 50.89,26.96
step
  talk Marin Noggenfogger##7564
  accept Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
  talk Dirge Quikcleave##8125
  accept Return to Narain##8587 |goto Tanaris 52.63,28.11
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Narain Soothfancy##11811
  turnin Return to Narain##8587 |goto Tanaris 65.24,18.58
step
  talk Yeh'kinya##8579
  turnin The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Prospector Ironboot##10460
  accept The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  note Bring the Third and Fourth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Third Mosh'aru Tablet##12411 |q 5065 |goto Eastern Plaguelands 72.33,12.9
step
  talk Narain Soothfancy##11811
  accept The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  note Narain Soothfancy in Tanaris wants you to bring him 20 Arcanite Bars, 10 Elementium Ore, 10 Azerothian Diamonds, and 10 Blue Sapphires.
  collect Arcanite Bar##12360 |q 8728 |goto Tanaris 65.24,18.58
step
  talk Anachronos##15192
  turnin The Path of the Protector##8750 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8755 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8760 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Protector of Kalimdor##8751 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21199 |q 8751 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Qiraji Conqueror##8756 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21204 |q 8756 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Grand Invoker##8761 |goto Tanaris 64.2,51.42
step
  collect Signet Ring of the Bronze Dragonflight##21209 |q 8761 |goto Tanaris 64.2,51.42
step
  talk Marin Noggenfogger##7564
  turnin Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
  talk Senior Surveyor Fizzledowser##7724
  turnin Insect Part Analysis##113 |goto Tanaris 50.21,27.48
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Senior Surveyor Fizzledowser##7724
  accept Rise of the Silithid##32 |goto Tanaris 50.21,27.48
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  collect Fel Elemental Rod##21939 |q 8928 |goto Tanaris 52.47,27.23
step
  talk Narain Soothfancy##11811
  turnin The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  talk Prospector Ironboot##10460
  turnin The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Prospector Ironboot##10460
  accept The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  note Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Fifth Mosh'aru Tablet##12740 |q 4788 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Shadow Priest, Fifth Mosh'aru Tablet
step
  talk Narain Soothfancy##11811
  accept The Wrath of Neptulon##8729 |goto Tanaris 65.24,18.58
step
  note Use the Arcanite Buoy at the Swirling Maelstrom at the Bay of Storms in Azshara.
  collect Blue Scepter Shard##21137 |q 8729 |goto Tanaris 65.24,18.58 |tip {dropsfrom}Maws
step
  talk Zilzibin Drumlore##7010
  turnin Rise of the Silithid##32 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  talk Anachronos##15192
  turnin The Wrath of Neptulon##8729 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Protector of Kalimdor##8751 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Qiraji Conqueror##8756 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Grand Invoker##8761 |goto Tanaris 64.2,51.42
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Prospector Ironboot##10460
  turnin The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Prospector Ironboot##10460
  accept Confront Yeh'kinya##8181 |goto Tanaris 66.89,24.03
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Druid
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Hunter
  talk Mokvar##16012
  accept Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  note Bring a Beaststalker's Belt and a set of Beaststalker's Gloves to Mokvar in Orgrimmar.
  collect Beaststalker's Belt##16680 |q 8938 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Headhunter, Scarshield Raider, Firebrand Grunt
step
  only Mage
  talk Mokvar##16012
  accept Just Compensation##8939 |goto Orgrimmar 34.95,38.29
step
  only Mage
  note Bring a Magister's Belt and a set of Magister's Gloves to Mokvar in Orgrimmar.
  collect Magister's Belt##16685 |q 8939 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Smolderthorn Mystic, Thuzadin Shadowcaster, Thuzadin Necromancer
step
  only Priest
  talk Mokvar##16012
  accept Just Compensation##8940 |goto Orgrimmar 34.95,38.29
step
  only Priest
  note Bring a Devout Belt and a set of Devout Gloves to Mokvar in Orgrimmar.
  collect Devout Belt##16696 |q 8940 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Spellbinder, Smolderthorn Shadow Priest, Firebrand Darkweaver
step
  only Rogue
  talk Mokvar##16012
  accept Just Compensation##8941 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Mokvar in Orgrimmar.
  collect Shadowcraft Belt##16713 |q 8941 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Legionnaire, Firebrand Grunt, Scarshield Quartermaster
step
  only Shaman
  talk Mokvar##16012
  accept Just Compensation##8942 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Bring a Cord of Elements and a set of Gauntlets of Elements to Mokvar in Orgrimmar.
  collect Cord of Elements##16673 |q 8942 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Warlock, Firebrand Invoker, Scarshield Quartermaster
step
  only Warlock
  talk Mokvar##16012
  accept Just Compensation##8943 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Bring a Dreadmist Belt and a set of Dreadmist Wraps to Mokvar in Orgrimmar.
  collect Dreadmist Belt##16702 |q 8943 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Thuzadin Shadowcaster, Thuzadin Necromancer, Crimson Conjuror
step
  only Warrior
  talk Mokvar##16012
  accept Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Mokvar in Orgrimmar.
  collect Belt of Valor##16736 |q 8944 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  only Paladin
  talk Mokvar##16012
  accept Just Compensation##10495 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  note Bring a Lightforge Belt and a set of Lightforge Gauntlets to Mokvar in Orgrimmar.
  collect Lightforge Belt##16723 |q 10495 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Rockwing Gargoyle, Rockwing Screecher, Crimson Guardsman
step
  talk Yeh'kinya##8579
  turnin Confront Yeh'kinya##8181 |goto Tanaris 66.99,22.36
step
  talk Prospector Ironboot##10460
  accept The Hand of Rastakhan##8182 |goto Tanaris 66.89,24.03
step
  only Druid
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Mokvar##16012
  turnin Just Compensation##8938 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Mage
  talk Mokvar##16012
  turnin Just Compensation##8939 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Priest
  talk Mokvar##16012
  turnin Just Compensation##8940 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Mokvar##16012
  turnin Just Compensation##8941 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Mokvar##16012
  turnin Just Compensation##8942 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Mokvar##16012
  turnin Just Compensation##8943 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Warrior
  talk Mokvar##16012
  turnin Just Compensation##8944 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  only Paladin
  talk Mokvar##16012
  turnin Just Compensation##10495 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032
step
  talk Molthor##14875
  turnin The Hand of Rastakhan##8182 |goto Stranglethorn Vale 15.04,15.13 |tip {turninat}Stranglethorn Vale
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 30.85,16.75 |tip {turninat}Eastern Plaguelands
step
  note {travel}Western Plaguelands
  goto Western Plaguelands 38.4,54.05
]])
