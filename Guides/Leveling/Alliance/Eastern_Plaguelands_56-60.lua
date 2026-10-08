-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Eastern Plaguelands (56-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Moonglade (57-60)",
}, [[
step
  talk Pamela Redpath##10926
  accept Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  note Find Pamela's doll.
  collect Pamela's Doll##12885 |q 5149 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 31.15,77.98
step
  click Torn Scroll##177667
  accept Hameya's Plea##6024 |goto Eastern Plaguelands 22.9,72.96
step
  note Kill Infiltrator Hameya. Use his key on the Mound of Dirt behind the Undercroft.
  collect Hameya's Key##15767 |q 6024 |goto Eastern Plaguelands 61.96,11.11 |tip {dropsfrom}Infiltrator Hameya
step
  talk Carlin Redpath##11063
  accept Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
  collect Davil's Libram##12954 |q 5168 |goto Western Plaguelands 42.52,18.99
step
  talk Carlin Redpath##11063
  accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
  collect Skull of Horgus##12956 |q 5181 |goto Eastern Plaguelands 44.34,41.18 |tip {dropsfrom}Horgus' Skull
step
  talk Carlin Redpath##11063
  accept Defenders of Darrowshire##5211 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  accept The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 71.66,49.94
step
  note Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
  collect Plagued Flesh Sample##13174 |q 5212 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ravaged Cadaver, Mangled Cadaver, Plague Ghoul
step
  talk Smokey LaRue##11033
  accept The Great Ezra Grimm##5214 |goto Eastern Plaguelands 70.88,48.43
step
  note Find Ezra Grimm's smoke shop in Stratholme and recover a box of Grimm's Premium Tobacco. Return to Smokey LaRue when the job is done.
  collect Grimm's Premium Tobacco##13172 |q 5214 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ezra Grimm
step
  talk Leonid Barthalomew the Revered##11036
  accept Houses of the Holy##5243 |goto Eastern Plaguelands 71.89,48.29
step
  note Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
  collect Stratholme Holy Water##13180 |q 5243 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 71.63,50.09
step
  talk Duke Nicholas Zverenhoff##11039
  accept Above and Beyond##5263 |goto Eastern Plaguelands 71.63,50.09
step
  note Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
  collect Head of Baron Rivendare##13251 |q 5263 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baron Rivendare
step
  talk Caretaker Alen##11038
  accept The Restless Souls##5281 |goto Eastern Plaguelands 69.93,53.72
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Soulbound Keepsake##5465 |goto Eastern Plaguelands 71.89,48.29
step
  talk Duke Nicholas Zverenhoff##11039
  accept Argent Dawn Commission##5503 |goto Eastern Plaguelands 71.63,50.09
step
  talk Quartermaster Miranda Breechlock##11536
  accept Mantles of the Dawn##5513 |goto Eastern Plaguelands 71.79,50.25
step
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  collect 10 Argent Dawn Valor Token##12844 |q 5513 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 71.79,50.25
step
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  collect 25 Argent Dawn Valor Token##12844 |q 5517 |goto Eastern Plaguelands 71.79,50.25
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 71.89,48.29
step
  talk Caretaker Alen##11038
  accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  note Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
  collect Zaeldarr's Head##15785 |q 6021 |goto Eastern Plaguelands 23.07,72.63 |tip {dropsfrom}Zaeldarr the Outcast
step
  talk Smokey LaRue##11033
  accept That's Asking A Lot##6026 |goto Eastern Plaguelands 70.88,48.43
step
  note Smokey LaRue wants you to get 2 Thorium Bars, 1 Golden Rod, 8 Hi-Explosive Bombs, and 8 Unstable Triggers.
  collect Thorium Bar##12359 |q 6026 |goto Eastern Plaguelands 70.88,48.43
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 71.7,48.69
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 2 Arcane Crystals, 1 Nexus Crystal and 30 gold pieces. You must also be Revered with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9122 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 71.7,48.69
step
  talk Huntsman Leopold##16132
  accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands wants 30 Crypt Fiend Parts.
  collect Crypt Fiend Parts##22525 |q 9124 |goto Eastern Plaguelands 12.25,25.96 |tip {dropsfrom}Crypt Fiend, Crypt Walker, Crypt Horror
step
  talk Rohan the Assassin##16131
  accept Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands wants 30 Bone Fragments.
  collect Bone Fragments##22526 |q 9126 |goto Western Plaguelands 38.99,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Archmage Angela Dosantos##16116
  accept The Elemental Equation##9128 |goto Eastern Plaguelands 71.7,48.69
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 30 Core of Elements.
  collect Core of Elements##22527 |q 9128 |goto Un'Goro Crater 52.73,48.83 |tip {dropsfrom}Scorching Elemental, Living Blaze, Obsidian Elemental
step
  talk Korfax, Champion of the Light##16112
  accept Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants 30 Dark Iron Scraps.
  collect Dark Iron Scraps##22528 |q 9131 |goto Searing Gorge 40.01,49.65 |tip {dropsfrom}Dark Iron Steamsmith, Dark Iron Slaver, Dark Iron Taskmaster
step
  talk Rayne##16135
  accept Savage Flora##9136 |goto Eastern Plaguelands 71.41,49.35
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands wants 30 Savage Fronds.
  collect Savage Frond##22529 |q 9136 |goto Feralas 56.82,74.86 |tip {dropsfrom}Cursed Sycamore, Bloodpetal Lasher, Bloodpetal Flayer
step
  talk Dispatch Commander Metz##16212
  accept They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 71.28,48.04
step
  note Dispatch Commander Metz at Light's Hope Chapel in the Eastern Plaguelands wants an Argent Dawn Valor Token.
  collect Argent Dawn Valor Token##12844 |q 9141 |goto Eastern Plaguelands 71.28,48.04
step
  talk Craftsman Wilhelm##16376
  accept Icebane Gauntlets##9234 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essences of Water and 200 gold.
  collect Frozen Rune##22682 |q 9234 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icebane Bracers##9235 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essence of Water and 200 gold.
  collect Frozen Rune##22682 |q 9235 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icebane Breastplate##9236 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Thorium Bars, 2 Arcanite Bars, 4 Essence of Water and 300 gold. You will also need to be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9236 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Cloak##9237 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 2 Essences of Water, 4 Ironweb Spider Silks and 200 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9237 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Wrists##9238 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 2 Bolts of Runecloth, 2 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##22682 |q 9238 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Gloves##9239 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 4 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##22682 |q 9239 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Glacial Vest##9240 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 8 Bolts of Runecloth, 6 Essences of Water, 4 Ironweb Spider Silks and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9240 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Bracers##9241 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9241 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Gloves##9242 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9242 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Polar Tunic##9243 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Enchanted Leathers, 5 Essences of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9243 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Bracers##9244 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 16 Heavy Scorpid Scales, 5 Essences of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9244 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 16 Heavy Scorpid Scale, 5 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9245 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  accept Icy Scale Breastplate##9246 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 24 Heavy Scorpid Scale, 7 Essence of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9246 |goto Naxxramas - Dungeon -1,-1
step
  talk Emmisary Whitebeard##17069
  accept Establishing New Outposts##9664 |goto Eastern Plaguelands 71.51,49.66
step
  talk Aurora Skycaller##10304
  accept Fragments of the Past##5246 |goto Eastern Plaguelands 46.49,16.03
step
  note Find the Sacred Highborne Writings in the Temple of Zin-Malor in Azshara, and bring them to Aurora Skycaller near the Northpass Tower in Eastern Plaguelands.
  collect Sacred Highborne Writings##13313 |q 5246 |goto Azshara 41.51,52.54
step
  note Free 15 Darrowshire Spirits and return to Carlin Redpath.
  kill Darrowshire Spirit##11064 |q 5211 |goto Eastern Plaguelands 33.07,29.19
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8951 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  note Return to Deliana in Ironforge with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 8951 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8952 |goto Eastern Plaguelands 26.11,11.3
step
  only Hunter
  note Return to Deliana in Ironforge with a set of Beaststalker's Boots, Beaststalker's Pants and Beaststalker's Mantle.
  collect Beaststalker's Boots##16675 |q 8952 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Nerub'enkan
step
  only Mage
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8953 |goto Eastern Plaguelands 26.11,11.3
step
  only Mage
  note Return to Deliana in Ironforge with a set of Magister's Boots, Magister's Leggings and Magister's Mantle.
  collect Magister's Boots##16682 |q 8953 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Hearthsinger Forresten
step
  only Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8954 |goto Eastern Plaguelands 26.11,11.3
step
  only Paladin
  note Return to Deliana in Ironforge with a set of Lightforge Boots, Lightforge Legplates and Lightforge Spaulders.
  collect Lightforge Boots##16725 |q 8954 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Balnazzar
step
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8955 |goto Eastern Plaguelands 26.11,11.3
step
  only Priest
  note Return to Deliana in Ironforge with a set of Devout Sandals, Devout Skirt and Devout Mantle.
  collect Devout Sandals##16691 |q 8955 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Maleki the Pallid
step
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8956 |goto Eastern Plaguelands 26.11,11.3
step
  only Rogue
  note Return to Deliana in Ironforge with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  collect Shadowcraft Boots##16711 |q 8956 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Rattlegore
step
  only Warlock
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8958 |goto Eastern Plaguelands 26.11,11.3
step
  only Warlock
  note Return to Deliana in Ironforge with a set of Dreadmist Sandals, Dreadmist Leggings and Dreadmist Mantle.
  collect Dreadmist Sandals##16704 |q 8958 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baroness Anastari
step
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8959 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior
  note Return to Deliana in Ironforge with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  collect Boots of Valor##16734 |q 8959 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Kirtonos the Herald
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1 |tip {turninat}Stratholme - Dungeon
step
  only Priest
  talk Eris Havenfire##14494
  accept A Warning##7621 |goto Eastern Plaguelands 17.21,12.79
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1 |elite
step
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  kill Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  talk Egan##11140
  turnin The Restless Souls##5281 |goto Eastern Plaguelands 11.36,26.6
step
  talk Egan##11140
  accept The Restless Souls##5282 |goto Eastern Plaguelands 11.36,26.6
step
  talk Augustus the Touched##12384
  accept Augustus' Receipt Book##6164 |goto Eastern Plaguelands 11.36,26.37
step
  note Bring Augustus' Receipt Book to Augustus the Touched in Terrordale.
  collect Augustus' Receipt Book##15884 |q 6164 |goto Eastern Plaguelands 14.04,24.22
step
  talk Tirion Fordring##1855
  accept Demon Dogs##5542 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Carrion Grubbage##5544 |goto Eastern Plaguelands 5.16,35.57
step
  note Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
  collect Slab of Carrion Worm Meat##13853 |q 5544 |goto Eastern Plaguelands 43.13,59.21 |tip {dropsfrom}Carrion Grub, Carrion Devourer
step
  talk Tirion Fordring##1855
  accept Find Myranda##5861 |goto Eastern Plaguelands 5.16,35.57
step
  only Priest
  talk Deliana##16013
  turnin Anthion's Parting Words##8955 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  turnin Hameya's Plea##6024 |goto Eastern Plaguelands 23.58,73.79
step
  only Warlock
  talk Deliana##16013
  turnin Anthion's Parting Words##8958 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  talk Pamela Redpath##10926
  turnin Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  turnin Hidden Treasures##5942 |goto Eastern Plaguelands 30.92,77.78
step
  talk Myranda the Hag##11872
  turnin Find Myranda##5861 |goto Western Plaguelands 50.79,77.85 |tip {turninat}Western Plaguelands
step
  only Warrior
  talk Deliana##16013
  turnin Anthion's Parting Words##8959 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Druid
  talk Deliana##16013
  turnin Anthion's Parting Words##8951 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Hunter
  talk Deliana##16013
  turnin Anthion's Parting Words##8952 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Mage
  talk Deliana##16013
  turnin Anthion's Parting Words##8953 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Paladin
  talk Deliana##16013
  turnin Anthion's Parting Words##8954 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only Rogue
  talk Deliana##16013
  turnin Anthion's Parting Words##8956 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  talk Pamela Redpath##10926
  accept Auntie Marlene##5152 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Uncle Carlin##5241 |goto Eastern Plaguelands 31.15,77.98
step
  note Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
  kill Plaguehound Runt##8596 |q 5542 |goto Eastern Plaguelands 20.15,63.55
step
  note Slay 30 Plaguebats and return to Tirion Fordring.
  kill Plaguebat##8600 |q 5543 |goto Eastern Plaguelands 28.83,65.7
step
  note Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Whitebeard at Light's Hope Chapel.
  use <TXT>Crown Guard Capture Quest Doodad##17689 |q 9664 |goto Eastern Plaguelands 34.09,64.1 |tip {useit}
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Archivist##5251 |goto Eastern Plaguelands 71.63,50.09
step
  talk Caretaker Alen##11038
  turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Mantles of the Dawn##5513 |goto Eastern Plaguelands 71.79,50.25
step
  talk Smokey LaRue##11033
  turnin That's Asking A Lot##6026 |goto Eastern Plaguelands 70.88,48.43
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 71.79,50.25
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Above and Beyond##5263 |goto Eastern Plaguelands 71.63,50.09
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Gauntlets##9234 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Bracers##9235 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icebane Breastplate##9236 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Cloak##9237 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Wrists##9238 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Gloves##9239 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Glacial Vest##9240 |goto Eastern Plaguelands 71.24,49.9
step
  talk Betina Bigglezink##11035
  turnin Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  talk Craftsman Wilhelm##16376
  turnin Polar Bracers##9241 |goto Eastern Plaguelands 71.24,49.9
step
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 71.66,49.94
step
  talk Craftsman Wilhelm##16376
  turnin Polar Gloves##9242 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Polar Tunic##9243 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Bracers##9244 |goto Eastern Plaguelands 71.24,49.9
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 71.24,49.9
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 71.7,48.69
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 71.7,48.69
step
  talk Huntsman Leopold##16132
  turnin Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  talk Rohan the Assassin##16131
  turnin Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Breastplate##9246 |goto Eastern Plaguelands 71.24,49.9
step
  talk Archmage Angela Dosantos##16116
  turnin The Elemental Equation##9128 |goto Eastern Plaguelands 71.7,48.69
step
  talk Korfax, Champion of the Light##16112
  turnin Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  talk Carlin Redpath##11063
  turnin Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  talk Rayne##16135
  turnin Savage Flora##9136 |goto Eastern Plaguelands 71.41,49.35
step
  talk Dispatch Commander Metz##16212
  turnin They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 71.28,48.04
step
  talk Carlin Redpath##11063
  turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  talk Emmisary Whitebeard##17069
  turnin Establishing New Outposts##9664 |goto Eastern Plaguelands 71.51,49.66
step
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11 |tip {turninat}Western Plaguelands
step
  talk Carlin Redpath##11063
  turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  turnin The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 71.66,49.94
step
  talk Smokey LaRue##11033
  turnin The Great Ezra Grimm##5214 |goto Eastern Plaguelands 70.88,48.43
step
  talk Carlin Redpath##11063
  turnin Uncle Carlin##5241 |goto Eastern Plaguelands 71.7,50.04
step
  talk Leonid Barthalomew the Revered##11036
  turnin Houses of the Holy##5243 |goto Eastern Plaguelands 71.89,48.29
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Argent Dawn Commission##5503 |goto Eastern Plaguelands 71.63,50.09
step
  talk Carlin Redpath##11063
  accept Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring 5 Resonating Skulls and the Mystic Crystal to Carlin Redpath in Eastern Plaguelands.
  collect 5 Resonating Skull##13155 |q 5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  accept The Active Agent##5213 |goto Eastern Plaguelands 71.66,49.94
step
  note Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink.
  collect Scourge Data##13176 |q 5213 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  accept Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 71.63,50.09
step
  talk Smokey LaRue##11033
  accept When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 70.88,48.43
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  talk Aurora Skycaller##10304
  turnin Fragments of the Past##5246 |goto Eastern Plaguelands 46.49,16.03
step
  talk Aurora Skycaller##10304
  accept Fragments of the Past##5247 |goto Eastern Plaguelands 46.49,16.03
step
  note Bring an Enchanted Thorium Bar, 5 Crystal Restore, and a Vial of Dire Water to Aurora Skycaller near the Northpass Tower in Eastern Plaguelands.
  collect Enchanted Thorium Bar##12655 |q 5247 |goto Eastern Plaguelands 46.49,16.03
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  note Travel to Plaguewood, northwest of Light's Hope. Destroy 8 Scourge Structures by using Smokey's Special Compound at the Mark of Detonation planted inside each building. Smokey has had the Ziggurats and Slaughterhouses marked.
  kill Scourge Structure##12247 |q 6041 |goto Eastern Plaguelands 28.01,19.79
step
  only Priest
  talk Eris Havenfire##14494
  turnin A Warning##7621 |goto Eastern Plaguelands 17.21,12.79
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1 |tip {turninat}Stratholme - Dungeon
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1 |tip {turninat}Dire Maul - Dungeon
step
  note Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!
  use Restless Soul##11122 |q 5282 |goto Stratholme - Dungeon -1,-1 |tip {useit}
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Dungeon -1,-1 |elite
step
  talk Egan##11140
  turnin The Restless Souls##5282 |goto Eastern Plaguelands 11.36,26.6
step
  talk Augustus the Touched##12384
  turnin Augustus' Receipt Book##6164 |goto Eastern Plaguelands 11.36,26.37
step
  talk Tirion Fordring##1855
  turnin Demon Dogs##5542 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
step
  note Listen to what Tirion Fordring has to say.
  kill Tirion Fordring##1855 |q 5742 |goto Eastern Plaguelands 5.16,35.57 |elite
step
  talk Marlene Redpath##10927
  turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.57 |tip {turninat}Western Plaguelands
step
  talk Lord Maxwell Tyrosus##11034
  turnin Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 71.9,48.41
step
  talk Smokey LaRue##11033
  turnin When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 70.88,48.43
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  talk Carlin Redpath##11063
  turnin Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  turnin The Active Agent##5213 |goto Eastern Plaguelands 71.66,49.94
step
  talk Lord Maxwell Tyrosus##11034
  accept The Argent Hold##5265 |goto Eastern Plaguelands 71.9,48.41
step
  talk Carlin Redpath##11063
  accept Return to Chromie##5941 |goto Eastern Plaguelands 71.7,50.04
step
  talk Korfax, Champion of the Light##16112
  accept The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  note Enter Naxxramas and uncover the Fate of Ramaladni.
  collect Fate of Ramaladni##22708 |q 9229 |goto Naxxramas - Dungeon -1,-1 |elite |tip {dropsfrom}Dread Creeper, Carrion Spinner, Venom Stalker
step
  talk Craftsman Wilhelm##16376
  accept The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 2 Frozen Runes, 2 Essence of Water, 2 Blue Sapphires and 30 gold pieces.
  collect Frozen Rune##22682 |q 9232 |goto Naxxramas - Dungeon -1,-1
step
  talk Aurora Skycaller##10304
  turnin Fragments of the Past##5247 |goto Eastern Plaguelands 46.49,16.03
step
  talk Aurora Skycaller##10304
  accept Tormented By the Past##5248 |goto Eastern Plaguelands 46.49,16.03
step
  talk Tirion Fordring##1855
  turnin Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  note Travel to the Undercroft - at the southernmost section of the Eastern Plaguelands - and recover Taelan's Hammer. Return to Tirion Fordring upon completion of your objective.
  collect Taelan's Hammer##14613 |q 5781 |goto Eastern Plaguelands 23.85,74.22 |tip {dropsfrom}Mercutio Filthgorger
step
  talk Chromie##10667
  turnin Return to Chromie##5941 |goto Western Plaguelands 39.46,66.76 |tip {turninat}Western Plaguelands
step
  talk Remorseful Highborne##10684
  turnin Tormented By the Past##5248 |goto Winterspring 56.14,44.36 |tip {turninat}Winterspring
step
  turnin The Argent Hold##5265 |goto Eastern Plaguelands 71.96,48.41
step
  talk Korfax, Champion of the Light##16112
  turnin The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  talk Craftsman Wilhelm##16376
  turnin The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  talk Korfax, Champion of the Light##16112
  accept Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 1 Frozen Rune, 1 Blue Sapphire and 1 Arcanite Bar.
  collect Frozen Rune##22682 |q 9230 |goto Naxxramas - Dungeon -1,-1
step
  talk Tirion Fordring##1855
  turnin Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  note Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
  collect Symbol of Lost Honor##14625 |q 5845 |goto Eastern Plaguelands 62.53,26.81
step
  talk Korfax, Champion of the Light##16112
  turnin Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
step
  talk Tirion Fordring##1855
  turnin Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  talk Tirion Fordring##1855
  accept Of Love and Family##5846 |goto Eastern Plaguelands 5.16,35.57
step
  talk Artist Renfray##11936
  turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37 |tip {turninat}Western Plaguelands
step
  note {travel}Moonglade
  goto Moonglade 56.21,30.64
]])
