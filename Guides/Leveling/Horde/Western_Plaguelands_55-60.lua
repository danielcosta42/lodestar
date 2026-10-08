-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Western Plaguelands (55-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tirisfal Glades (55-60)",
}, [[
step
  talk Janice Felstone##10778
  accept Better Late Than Never##5021 |goto Western Plaguelands 38.4,54.05
step
  talk Janice Felstone##10778
  accept Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  note Locate the other half of the Good Luck Charm somewhere on the Felstone Farm in Western Plaguelands and reassemble it.
  collect Good Luck Charm##12723 |q 5051 |goto Western Plaguelands 38.4,54.05
step
  click Mrs. Dalson's Diary##175926
  accept Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.8,50.67
step
  click Locked Cabinet##175924
  accept Locked Away##5060 |goto Western Plaguelands 47.35,49.63
step
  collect Dalson Cabinet Key##12739 |q 5060 |goto Western Plaguelands 48.23,49.67 |tip {dropsfrom}Farmer Dalson
step
  click Scourge Cauldron##176361
  accept Return to the Bulwark##5230 |goto Western Plaguelands 37.25,56.78
step
  click Scourge Cauldron##177289
  accept Return to the Bulwark##5232 |goto Western Plaguelands 46.18,51.9
step
  talk Chromie##10667
  accept A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
step
  talk Jeziba##10976
  accept Catalogue of the Wayward##5164 |goto Western Plaguelands 39.37,66.78
step
  talk Chromie##10667
  accept The Battle of Darrowshire##5721 |goto Western Plaguelands 39.46,66.76
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  click Scourge Cauldron##176393
  accept Return to the Bulwark##5234 |goto Western Plaguelands 53.02,65.61
step
  click Scourge Cauldron##176392
  accept Return to the Bulwark##5236 |goto Western Plaguelands 62.54,58.47
step
  note Use the Temporal Displacer near one of Andorhal's silos and uncover Temporal Parasites.
  kill Temporal Parasite##10717 |q 4971 |goto Western Plaguelands 48.26,65.86
step
  talk Marlene Redpath##10927
  accept Little Pamela##5142 |goto Western Plaguelands 49.17,78.57
step
  talk Marlene Redpath##10927
  accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.57
step
  note Bring Joseph's Wedding Ring to Chromie.
  collect Joseph's Wedding Ring##12894 |q 5153 |goto Western Plaguelands 49.7,76.76 |tip {dropsfrom}Joseph Redpath's Monument
step
  talk Myranda the Hag##11872
  accept Scarlet Subterfuge##5862 |goto Western Plaguelands 50.79,77.85
step
  talk Myranda the Hag##11872
  accept Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  note Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete.
  collect 20 Black Dragonspawn Eye##16786 |q 6569 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Rage Talon Dragonspawn, Overlord Wyrmthalak, Rage Talon Flamescale
step
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  talk Argent Officer Pureheart##10840
  accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  note Place the Relic Bundle at the Darrowshire town square.
  kill Joseph Redpath##10936 |q 5721 |goto Eastern Plaguelands 33.62,78.46
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5230 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5232 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5234 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5236 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  talk Eva Sarkhoff##11216
  accept Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Magistrate Marduke##11286
  accept The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  note Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke.
  collect Human Head of Ras Frostwhisper##13626 |q 5466 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Ras Frostwhisper
step
  talk Artist Renfray##11936
  accept Of Love and Family##5848 |goto Western Plaguelands 65.77,75.37
step
  note Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.
  collect Of Love and Family##14679 |q 5848 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Unfinished Painting
step
  talk Lord Tirion Fordring##12126
  accept Demon Dogs##5542 |goto Western Plaguelands 53.95,24.45
step
  talk Lord Tirion Fordring##12126
  accept Blood Tinged Skies##5543 |goto Western Plaguelands 53.95,24.45
step
  talk Lord Tirion Fordring##12126
  accept Carrion Grubbage##5544 |goto Western Plaguelands 53.95,24.45
step
  note Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
  collect Slab of Carrion Worm Meat##13853 |q 5544 |goto Eastern Plaguelands 43.13,59.21 |tip {dropsfrom}Carrion Grub, Carrion Devourer
step
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
step
  click Termite Barrel##177491
  accept A Plague Upon Thee##6390 |goto Western Plaguelands 48.34,31.99
step
  talk Highlord Taelan Fordring##1842
  turnin Scarlet Subterfuge##5862 |goto Western Plaguelands 42.02,14.79
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  turnin Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.8,50.67
step
  turnin Locked Away##5060 |goto Western Plaguelands 47.35,49.63
step
  talk Tirion Fordring##1855
  turnin Of Love and Family##5848 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
step
  talk Tirion Fordring##1855
  turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  talk Janice Felstone##10778
  turnin Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  click Janice's Parcel##175894
  accept Better Late Than Never##5023 |goto Western Plaguelands 38.73,55.24
step
  note Kill 2 Scarlet Medics, 2 Scarlet Hunters, 2 Scarlet Magi and 2 Scarlet Knights before returning to Kirsta Deepshadow in Western Plaguelands.
  kill Scarlet Medic##10605 |q 6004 |goto Western Plaguelands 43.67,51.91
step
  note Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Wolf##1817 |q 4984 |goto Western Plaguelands 47.28,44.91
step
  talk Chromie##10667
  turnin A Strange Historian##5153 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  turnin A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
step
  turnin Catalogue of the Wayward##5164 |goto Western Plaguelands 39.35,66.6
step
  talk Chromie##10667
  accept Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  note Locate 5 Andorhal Watches, found in lockboxes amongst the rubble of the city. Return with them to Chromie in the Andorhal Inn, Western Plaguelands.
  collect Andorhal Watch##12638 |q 4972 |goto Western Plaguelands 42.84,69.78 |tip {dropsfrom}Small Lockbox
step
  talk Chromie##10667
  accept The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  note Bring the Annals of Darrowshire to Chromie in Andorhal.
  collect Annals of Darrowshire##12900 |q 5154 |goto Western Plaguelands 43.46,69.51 |tip {dropsfrom}Musty Tome
step
  click Catalogue of the Wayward##176192
  accept Breastplate of the Chromatic Flight##5166 |goto Western Plaguelands 39.35,66.6
step
  note To forge the Breastplate of the Chromatic Flight, you will be required to bring the following items to Jeziba the 'Sculptor':
  collect Chromatic Carapace##12871 |q 5166 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Gyth
step
  click Catalogue of the Wayward##176192
  accept Legplates of the Chromatic Defier##5167 |goto Western Plaguelands 39.35,66.6
step
  note To forge the Legplates of the Chromatic Defier, you will be required to bring the following items to Jeziba the 'Sculptor':
  collect Chromatic Carapace##12871 |q 5167 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Gyth
step
  note Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
  kill Plaguehound Runt##8596 |q 5542 |goto Eastern Plaguelands 20.15,63.55
step
  note Slay 30 Plaguebats and return to Tirion Fordring.
  kill Plaguebat##8600 |q 5543 |goto Eastern Plaguelands 28.83,65.7
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  note Destroy 8 Diseased Grizzlies, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Grizzly##1816 |q 4985 |goto Western Plaguelands 59.01,51.68
step
  talk Myranda the Hag##11872
  turnin Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  talk Myranda the Hag##11872
  accept Emberstrife##6570 |goto Western Plaguelands 50.79,77.85
step
  talk Argent Officer Pureheart##10840
  turnin Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  talk Pamela Redpath##10926
  turnin The Battle of Darrowshire##5721 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Magistrate Marduke##11286
  turnin The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  talk Mickey Levine##11615
  turnin A Plague Upon Thee##6390 |goto Tirisfal Glades 83.29,72.34 |tip {turninat}Tirisfal Glades
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  note Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
  collect Krastinov's Bag of Horrors##13725 |q 5515 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Jandice Barov
step
  talk Royal Overseer Bauhaus##10781
  turnin Better Late Than Never##5023 |goto Undercity 69.79,43.16 |tip {turninat}Undercity
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
step
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
  note Kill Huntsman Radley and Cavalier Durgen before returning to Kirsta Deepshadow in Western Plaguelands.
  kill Huntsman Radley##11613 |q 6023 |goto Western Plaguelands 57.83,36.1
step
  talk Tirion Fordring##1855
  turnin Demon Dogs##5542 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  talk Tirion Fordring##1855
  turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  talk Chromie##10667
  turnin The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  turnin Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  talk Jeziba##10976
  turnin Breastplate of the Chromatic Flight##5166 |goto Western Plaguelands 39.37,66.78
step
  talk Jeziba##10976
  turnin Legplates of the Chromatic Defier##5167 |goto Western Plaguelands 39.37,66.78
step
  talk Chromie##10667
  accept Brother Carlin##5210 |goto Western Plaguelands 39.46,66.76
step
  talk Carlin Redpath##11063
  turnin Brother Carlin##5210 |goto Eastern Plaguelands 71.7,50.04 |tip {turninat}Eastern Plaguelands
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  talk Mulgris Deepriver##10739
  accept Glyphed Oaken Branch##4987 |goto Western Plaguelands 53.73,64.66
step
  talk Emberstrife##10321
  turnin Emberstrife##6570 |goto Dustwallow Marsh 56.66,87.72 |tip {turninat}Dustwallow Marsh
step
  talk Eva Sarkhoff##11216
  turnin Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  talk Eva Sarkhoff##11216
  accept Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
  talk Nara Wildmane##5770
  turnin Glyphed Oaken Branch##4987 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  note Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
  kill Kirtonos the Herald##10506 |q 5384 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Eva Sarkhoff##11216
  turnin Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Magistrate Marduke##11286
  accept The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##13585 |q 5461 |goto Arathi Highlands 20.8,65.8
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  talk Leonid Barthalomew the Revered##11036
  turnin The Dying, Ras Frostwhisper##5462 |goto Eastern Plaguelands 71.89,48.29 |tip {turninat}Eastern Plaguelands
step
  note {travel}Tirisfal Glades
  goto Tirisfal Glades 30.84,66.2
]])
