-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Stratholme", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
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
  talk Nathanos Blightcaller##11878
  accept To Kill With Purpose##6022 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  accept Un-Life's Little Annoyances##6042 |goto Eastern Plaguelands 22.23,63.51
step
  talk Pip Quickwit##10776
  accept Pip Quickwit, At Your Service!##5047 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Leonid Barthalomew the Revered##11036
  accept Houses of the Holy##5243 |goto Eastern Plaguelands 71.89,48.29
step
  talk Smokey LaRue##11033
  accept The Great Ezra Grimm##5214 |goto Eastern Plaguelands 70.88,48.43
step
  talk Betina Bigglezink##11035
  accept The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 71.66,49.94
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 71.63,50.09
step
  talk Caretaker Alen##11038
  accept The Restless Souls##5281 |goto Eastern Plaguelands 69.93,53.72
step
  talk Nathanos Blightcaller##11878
  accept The Ranger Lord's Behest##6133 |goto Eastern Plaguelands 22.23,63.51
step
  talk Sage Korolusk##14373
  accept Elven Legends##7481 |goto Feralas 74.4,44
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Aurius##10917
  accept The Medallion of Faith##5122 |goto Stratholme - Dungeon -1,-1
step
  talk Eva Sarkhoff##11216
  accept Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  only not completed(8869) not haveq(8869)
  talk Lilith the Lithe##11191
  accept Sweet Serenity##5305 |goto Winterspring 61.33,37.13
step
  talk Seril Scourgebane##11193
  accept Corruption##5307 |goto Winterspring 61.33,37.19
step
  note Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
  kill Plaguehound Runt##8596 |q 5542 |goto Eastern Plaguelands 20.15,61.44
step
  note Slay 30 Plaguebats and return to Tirion Fordring.
  kill Plaguebat##8600 |q 5543 |goto Eastern Plaguelands 28.22,64.82
step
  note Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
  collect Slab of Carrion Worm Meat##13853 |q 5544 |goto Eastern Plaguelands 42.91,55.69 |tip {dropsfrom}Carrion Grub, Carrion Devourer
step
  note Travel to Corin's Crossing to the east and slaughter the Scourge that inhabit the town. Collect 7 pieces of Living Rot in under 10 minutes. Use the Mortar and Pestle to grind the Living Rot into Coagulated Rot.
  collect 7 Coagulated Rot##15448 |q 6022 |goto Eastern Plaguelands 22.23,63.51
step
  note Slay 20 Noxious Plaguebats and 10 Monstrous Plaguebats. Return to Nathanos Blightcaller when you are finished.
  kill Noxious Plaguebat##8601 |q 6042 |goto Eastern Plaguelands 53.15,51.14
step
  note Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
  collect Stratholme Holy Water##13180 |q 5243 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
step
  note Find Ezra Grimm's smoke shop in Stratholme and recover a box of Grimm's Premium Tobacco. Return to Smokey LaRue when the job is done.
  collect Grimm's Premium Tobacco##13172 |q 5214 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ezra Grimm
step
  note Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
  collect Plagued Flesh Sample##13174 |q 5212 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ravaged Cadaver, Mangled Cadaver, Plague Ghoul
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1 |elite
step
  note Travel to the northern borders of the Eastern Plaguelands and recover the Quel'Thalas Registry. The item is somewhere in the Quel'Lithien lodge.
  talk Pathstrider##8565 |q 6133 |goto Eastern Plaguelands 46.74,13.01
step
  note Search Dire Maul for Telmius Dreamseeker. Report back to Sage Korolusk at Camp Mojache with whatever information that you may find.
  collect Skeletal Remains of Telmius Dreamseeker##179544 |q 7481 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  collect Medallion of Faith##12845 |q 5122 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Malor's Strongbox
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  only not completed(8869) not haveq(8869)
  note Travel to Stratholme and kill the Crimson Hammersmith. Recover the Crimson Hammersmith's Apron and return to Lilith.
  collect Crimson Hammersmith's Apron##13351 |q 5305 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Crimson Hammersmith
step
  note Find the Black Guard Swordsmith in Stratholme and destroy him. Recover the Insignia of the Black Guard and return to Seril Scourgebane.
  collect Insignia of the Black Guard##13350 |q 5307 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Black Guard Swordsmith
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
  talk Nathanos Blightcaller##11878
  turnin To Kill With Purpose##6022 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  turnin Un-Life's Little Annoyances##6042 |goto Eastern Plaguelands 22.23,63.51
step
  talk Malyfous Darkhammer##10637
  turnin Pip Quickwit, At Your Service!##5047 |goto Winterspring 60.99,38.78
step
  talk Leonid Barthalomew the Revered##11036
  turnin Houses of the Holy##5243 |goto Eastern Plaguelands 71.89,48.29
step
  talk Smokey LaRue##11033
  turnin The Great Ezra Grimm##5214 |goto Eastern Plaguelands 70.88,48.43
step
  talk Betina Bigglezink##11035
  turnin The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 71.66,49.94
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Archivist##5251 |goto Eastern Plaguelands 71.63,50.09
step
  talk Egan##11140
  turnin The Restless Souls##5281 |goto Eastern Plaguelands 11.36,26.6
step
  talk Nathanos Blightcaller##11878
  turnin The Ranger Lord's Behest##6133 |goto Eastern Plaguelands 22.23,63.51
step
  talk Sage Korolusk##14373
  turnin Elven Legends##7481 |goto Feralas 74.4,44
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Aurius##10917
  turnin The Medallion of Faith##5122 |goto Stratholme - Dungeon -1,-1
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  only not completed(8869) not haveq(8869)
  talk Lilith the Lithe##11191
  turnin Sweet Serenity##5305 |goto Winterspring 61.33,37.13
step
  talk Seril Scourgebane##11193
  turnin Corruption##5307 |goto Winterspring 61.33,37.19
step
  talk Tirion Fordring##1855
  accept Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
step
  talk Lorekeeper Lydros##14368
  accept Libram of Protection##7485 |goto Dire Maul - Dungeon -1,-1
step
  talk Egan##11140
  accept The Restless Souls##5282 |goto Eastern Plaguelands 11.36,26.6
step
  talk Betina Bigglezink##11035
  accept The Active Agent##5213 |goto Eastern Plaguelands 71.66,49.94
step
  talk Nathanos Blightcaller##11878
  accept Duskwing, Oh How I Hate Thee...##6135 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  accept The Corpulent One##6136 |goto Eastern Plaguelands 22.23,63.51
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Aurius##10917
  accept Aurius' Reckoning##5125 |goto Stratholme - Dungeon -1,-1
step
  kill Grand Crusader Dathrohan##10812 |goto Stratholme - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Truth Comes Crashing Down##5262 |goto Stratholme - Dungeon -1,-1
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  click Malyfous's Catalogue##175927
  accept Leggings of Arcana##5067 |goto Winterspring 61,38.8
step
  click Malyfous's Catalogue##175927
  accept Breastplate of Bloodthirst##5068 |goto Winterspring 61,38.8
step
  note Listen to what Tirion Fordring has to say.
  talk Tirion Fordring##1855 |q 5742 |goto Eastern Plaguelands 5.16,35.57
step
  note Bring a Libram of Protection, 1 Pristine Black Diamond, 2 Large Brilliant Shards, and 1 Frayed Abomination Stitching to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Protection.
  collect Libram of Protection##18334 |q 7485 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Gordok Brute, Gordok Mage-Lord, Gordok Captain
step
  note Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!
  use Restless Soul##11122 |q 5282 |goto Stratholme - Dungeon -1,-1 |tip {useit}
step
  note Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink.
  collect Scourge Data##13176 |q 5213 |goto Stratholme - Dungeon -1,-1
step
  note Find Duskwing and slay him. From the corpse, recover a Patch of Duskwing's Fur and return it to Nathanos Blightcaller.
  kill Duskwing##11897 |goto Eastern Plaguelands 26.08,59.03 |elite
  collect Patch of Duskwing's Fur##15850 |q 6135 |goto Eastern Plaguelands 26.08,59.03
step
  note Find Borelgore in the northern wastes of Eastern Plaguelands and destroy him. Return to Nathanos Blightcaller when the mission is complete.
  kill Borelgore##11896 |q 6136 |goto Eastern Plaguelands 47.69,24.87 |elite
step
  note Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
  collect Krastinov's Bag of Horrors##13725 |q 5515 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Jandice Barov
step
  note In order to create the Leggings of Arcana, you will be required to bring the following items back to Malyfous Darkhammer: 1 Pristine Hide of the Beast; 5 Frayed Abomination Stitchings; 5 Arcanite Bars; 5 Frostwhisper's Embalming Fluid.
  collect Pristine Hide of the Beast##12731 |q 5067 |goto Winterspring 61,38.8
step
  note In order to create the Breastplate of Bloodthirst, you will be required to bring the following items back to Malyfous Darkhammer: 1 Pristine Hide of the Beast; 10 Frayed Abomination Stitchings; 5 Arcanite Bars; 5 Skin of Shadow.
  collect Pristine Hide of the Beast##12731 |q 5068 |goto Winterspring 61,38.8
step
  talk Tirion Fordring##1855
  turnin Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
step
  talk Lorekeeper Lydros##14368
  turnin Libram of Protection##7485 |goto Dire Maul - Dungeon -1,-1
step
  talk Egan##11140
  turnin The Restless Souls##5282 |goto Eastern Plaguelands 11.36,26.6
step
  talk Betina Bigglezink##11035
  turnin The Active Agent##5213 |goto Eastern Plaguelands 71.66,49.94
step
  talk Nathanos Blightcaller##11878
  turnin Duskwing, Oh How I Hate Thee...##6135 |goto Eastern Plaguelands 22.23,63.51
step
  talk Nathanos Blightcaller##11878
  turnin The Corpulent One##6136 |goto Eastern Plaguelands 22.23,63.51
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Aurius##10917
  turnin Aurius' Reckoning##5125 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Truth Comes Crashing Down##5262 |goto Eastern Plaguelands 71.63,50.09
step
  talk Eva Sarkhoff##11216
  turnin Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  talk Malyfous Darkhammer##10637
  turnin Leggings of Arcana##5067 |goto Winterspring 60.99,38.78
step
  talk Malyfous Darkhammer##10637
  turnin Breastplate of Bloodthirst##5068 |goto Winterspring 60.99,38.78
step
  talk Tirion Fordring##1855
  accept Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  talk Duke Nicholas Zverenhoff##11039
  accept Above and Beyond##5263 |goto Eastern Plaguelands 71.63,50.09
step
  talk Nathanos Blightcaller##11878
  accept Ramstein##6163 |goto Eastern Plaguelands 22.23,63.51
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Eva Sarkhoff##11216
  accept Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  note Travel to the Undercroft - at the southernmost section of the Eastern Plaguelands - and recover Taelan's Hammer. Return to Tirion Fordring upon completion of your objective.
  collect Taelan's Hammer##14613 |q 5781 |goto Eastern Plaguelands 23.85,74.22 |tip {dropsfrom}Mercutio Filthgorger
step
  note Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
  collect Head of Baron Rivendare##13251 |q 5263 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baron Rivendare
step
  note Travel to Stratholme and slay Ramstein the Gorger. Take his head as a souvenir for Nathanos.
  collect Head of Ramstein the Gorger##15880 |q 6163 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ramstein the Gorger
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  note Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
  kill Kirtonos the Herald##10506 |q 5384 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Tirion Fordring##1855
  turnin Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Above and Beyond##5263 |goto Eastern Plaguelands 71.63,50.09
step
  talk Nathanos Blightcaller##11878
  turnin Ramstein##6163 |goto Eastern Plaguelands 22.23,63.51
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Eva Sarkhoff##11216
  turnin Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Tirion Fordring##1855
  accept Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Magistrate Marduke##11286
  accept The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  note Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
  collect Symbol of Lost Honor##14625 |q 5845 |goto Eastern Plaguelands 62.53,26.81
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##13585 |q 5461 |goto Arathi Highlands 20.8,65.8
step
  talk Tirion Fordring##1855
  turnin Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Tirion Fordring##1855
  accept Of Love and Family##5846 |goto Eastern Plaguelands 5.16,35.57
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Artist Renfray##11936
  turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Leonid Barthalomew the Revered##11036
  turnin The Dying, Ras Frostwhisper##5462 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 71.89,48.29
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Artist Renfray##11936
  accept Of Love and Family##5848 |goto Western Plaguelands 65.77,75.37
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  note Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.
  collect Of Love and Family##14679 |q 5848 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Unfinished Painting
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Tirion Fordring##1855
  turnin Of Love and Family##5848 |goto Eastern Plaguelands 5.16,35.57
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  talk Mokvar##16012
  accept Just Compensation##8943 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Bring a Dreadmist Belt and a set of Dreadmist Wraps to Mokvar in Orgrimmar.
  collect Dreadmist Belt##16702 |q 8943 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Thuzadin Shadowcaster, Thuzadin Necromancer, Crimson Conjuror
step
  only Warlock
  talk Mokvar##16012
  turnin Just Compensation##8943 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
step
  only Mage
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9018 |goto Eastern Plaguelands 26.11,11.3
step
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9020 |goto Eastern Plaguelands 26.11,11.3
step
  only Warlock
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9021 |goto Eastern Plaguelands 26.11,11.3
step
  only Mage
  note Return to Mokvar in Orgimmar with a set of Magister's Boots, Magister's Leggings and Magister's Mantle.
  collect Magister's Boots##16682 |q 9018 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Hearthsinger Forresten
step
  only Rogue
  note Return to Mokvar in Orgimmar with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  collect Shadowcraft Boots##16711 |q 9020 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Rattlegore
step
  only Warlock
  note Return to Mokvar in Orgimmar with a set of Dreadmist Sandals, Dreadmist Leggings and Dreadmist Mantle.
  collect Dreadmist Sandals##16704 |q 9021 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baroness Anastari
step
  only Mage
  talk Mokvar##16012
  turnin Anthion's Parting Words##9018 |goto Orgrimmar 34.95,38.29
step
  only Rogue
  talk Mokvar##16012
  turnin Anthion's Parting Words##9020 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  talk Mokvar##16012
  turnin Anthion's Parting Words##9021 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather the Incendicite of Incendius, the Ember of Emberseer and the Cinder of Cynders, along with a Hallowed Brazier, and return them to Bodley inside Blackrock Mountain.
  collect Incendicite of Incendius##21987 |q 8961 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Lord Incendius
step
  talk Bodley##16033
  turnin Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  accept Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 58.08,86.89 |elite
  collect Druidical Remains##22226 |q 8962 |goto Silithus 58.08,86.89
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  turnin Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8966 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 20 Bloodkelp from the Strashaz naga and then return to Bodley inside Blackrock Mountain.
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 76.94,19.81 |tip {dropsfrom}Strashaz Warrior, Strashaz Serpent Guard, Strashaz Myrmidon
step
  talk Bodley##16033
  turnin I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  accept More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.55 |elite
  collect Starbreeze Village Relic##22227 |q 8985 |goto Winterspring 62.56,69.55
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  turnin More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8989) not completed(8990) not completed(8992) not haveq(8989) not haveq(8990) not haveq(8992)
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8991 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8989) not completed(8990) not completed(8992) not haveq(8989) not haveq(8990) not haveq(8992)
  note Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Jarien##16101 |q 8991 |goto Stratholme - Dungeon -1,-1 |elite
step
  only not completed(8989) not completed(8990) not completed(8992) not haveq(8989) not haveq(8990) not haveq(8992)
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8991 |goto Eastern Kingdoms - the continent map 48.9,63.93
]])
