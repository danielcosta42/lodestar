-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Stratholme", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "3cc24d2d",
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
  only completed(5122)
  talk Aurius##10917
  accept Aurius' Reckoning##5125 |goto Stratholme - Dungeon -1,-1
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
  only completed(5122)
  talk Aurius##10917
  turnin Aurius' Reckoning##5125 |goto Stratholme - Dungeon -1,-1
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
  kill Grand Crusader Dathrohan##10812 |goto Stratholme - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Truth Comes Crashing Down##5262 |goto Stratholme - Dungeon -1,-1
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  note Listen to what Tirion Fordring has to say.
  talk Tirion Fordring##1855 |q 5742 |goto Eastern Plaguelands 5.16,35.57
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
  talk Tirion Fordring##1855
  turnin Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
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
  talk Duke Nicholas Zverenhoff##11039
  turnin The Truth Comes Crashing Down##5262 |goto Eastern Plaguelands 71.63,50.09
step
  talk Eva Sarkhoff##11216
  turnin Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
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
  talk Eva Sarkhoff##11216
  turnin Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Tirion Fordring##1855
  accept Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  talk Magistrate Marduke##11286
  accept The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  note Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
  collect Symbol of Lost Honor##14625 |q 5845 |goto Eastern Plaguelands 62.53,26.81
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##13585 |q 5461 |goto Arathi Highlands 20.8,65.8
step
  talk Tirion Fordring##1855
  turnin Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Tirion Fordring##1855
  accept Of Love and Family##5846 |goto Eastern Plaguelands 5.16,35.57
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  talk Artist Renfray##11936
  turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37
step
  talk Leonid Barthalomew the Revered##11036
  turnin The Dying, Ras Frostwhisper##5462 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 71.89,48.29
step
  talk Artist Renfray##11936
  accept Of Love and Family##5848 |goto Western Plaguelands 65.77,75.37
step
  note Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.
  collect Of Love and Family##14679 |q 5848 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Unfinished Painting
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1
step
  talk Tirion Fordring##1855
  turnin Of Love and Family##5848 |goto Eastern Plaguelands 5.16,35.57
]])
