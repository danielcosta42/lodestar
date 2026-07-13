-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Western Plaguelands (55-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Moonglade (57-60)",
}, [[
step
  talk Janice Felstone##10778
  accept Better Late Than Never##5021 |goto Western Plaguelands 38.4,54.05
step
  talk Janice Felstone##10778
  accept Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  note Locate the other half of the Good Luck Charm somewhere on the Felstone Farm in Western Plaguelands and reassemble it.
  get Two Halves Become One |q 5051 |goto Western Plaguelands 38.4,54.05
step
  talk Chromie##10667
  accept A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
step
  note Use the Temporal Displacer near one of Andorhal's silos and uncover Temporal Parasites.
  kill Temporal Parasite##10717 |q 4971
step
  talk Jeziba##10976
  accept Catalogue of the Wayward##5164 |goto Western Plaguelands 39.37,66.78
step
  talk Chromie##10667
  accept The Battle of Darrowshire##5721 |goto Western Plaguelands 39.46,66.76
step
  note Place the Relic Bundle at the Darrowshire town square.
  kill Joseph Redpath##10936 |q 5721
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Marlene Redpath##10927
  accept Little Pamela##5142 |goto Western Plaguelands 49.17,78.57
step
  talk Marlene Redpath##10927
  accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.57
step
  note Bring Joseph's Wedding Ring to Chromie.
  collect Joseph Redpath's Monument##176145 |q 5153 |goto Western Plaguelands 49.7,76.76
step
  talk Myranda the Hag##11872
  accept Scarlet Subterfuge##5862 |goto Western Plaguelands 50.79,77.85
step
  talk Myranda the Hag##11872
  accept Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  note Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete.
  kill Rage Talon Dragonspawn##9096 |q 6569 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 36.45,90.8 |tip {turninat}Eastern Plaguelands
step
  talk Pamela Redpath##10926
  turnin The Battle of Darrowshire##5721 |goto Eastern Plaguelands 36.45,90.8 |tip {turninat}Eastern Plaguelands
step
  talk Argent Quartermaster Lightspark##10857
  accept Argent Dawn Commission##5405 |goto Western Plaguelands 42.84,83.72
step
  talk Argent Quartermaster Lightspark##10857
  accept Chromatic Mantle of the Dawn##5521 |goto Western Plaguelands 42.84,83.72
step
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Lightspark at Chillwind Camp, Western Plaguelands.
  get Chromatic Mantle of the Dawn |q 5521 |goto Western Plaguelands 42.84,83.72
step
  talk Eva Sarkhoff##11216
  accept Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Magistrate Marduke##11286
  accept The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  note Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke.
  kill Ras Frostwhisper##10508 |q 5466 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Artist Renfray##11936
  accept Of Love and Family##5848 |goto Western Plaguelands 65.77,75.37
step
  note Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.
  collect Unfinished Painting##177287 |q 5848 |goto Stratholme - Dungeon -1,-1
step
  talk Elder Moonstrike##15594
  accept Moonstrike the Elder##8714 |goto Western Plaguelands 69.18,73.45
step
  talk Elder Meadowrun##15602
  accept Meadowrun the Elder##8722 |goto Western Plaguelands 65.97,47.82
step
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
step
  talk Highlord Taelan Fordring##1842
  turnin Scarlet Subterfuge##5862 |goto Western Plaguelands 42.02,14.79
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Tirion Fordring##1855
  turnin Of Love and Family##5848 |goto Eastern Plaguelands 7.62,43.64 |tip {turninat}Eastern Plaguelands
step
  talk Janice Felstone##10778
  turnin Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
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
  collect Small Lockbox##175802 |q 4972 |goto Western Plaguelands 42.84,69.78
step
  talk Chromie##10667
  accept The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  note Bring the Annals of Darrowshire to Chromie in Andorhal.
  get The Annals of Darrowshire |q 5154 |goto Western Plaguelands 39.46,66.76
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  talk Myranda the Hag##11872
  turnin Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  talk Myranda the Hag##11872
  accept Emberstrife##6570 |goto Western Plaguelands 50.79,77.85
step
  talk Argent Quartermaster Lightspark##10857
  turnin Chromatic Mantle of the Dawn##5521 |goto Western Plaguelands 42.84,83.72
step
  talk Argent Quartermaster Lightspark##10857
  turnin Argent Dawn Commission##5405 |goto Western Plaguelands 42.84,83.72
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Elder Moonstrike##15594
  turnin Moonstrike the Elder##8714 |goto Western Plaguelands 69.18,73.45
step
  talk Magistrate Marduke##11286
  turnin The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  note Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
  kill Jandice Barov##10503 |q 5515 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Elder Meadowrun##15602
  turnin Meadowrun the Elder##8722 |goto Western Plaguelands 65.97,47.82
step
  note Destroy 8 Diseased Grizzlies, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Grizzly##1816 |q 4985 |goto Western Plaguelands 59.01,51.68
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
  talk Chromie##10667
  turnin The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  turnin Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  accept Brother Carlin##5210 |goto Western Plaguelands 39.46,66.76
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
  talk Carlin Redpath##11063
  turnin Brother Carlin##5210 |goto Eastern Plaguelands 81.52,59.77 |tip {turninat}Eastern Plaguelands
step
  talk Eva Sarkhoff##11216
  accept Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  note Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
  kill Kirtonos the Herald##10506 |q 5384 |elite
step
  talk Nara Wildmane##5770
  turnin Glyphed Oaken Branch##4987 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
  talk Eva Sarkhoff##11216
  turnin Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Magistrate Marduke##11286
  accept The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##176630 |q 5461 |goto Arathi Highlands 19.33,66.05
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  talk Leonid Barthalomew the Revered##11036
  turnin The Dying, Ras Frostwhisper##5462 |goto Eastern Plaguelands 81.73,57.83 |tip {turninat}Eastern Plaguelands
step
  note {travel}Moonglade
  goto Moonglade 52.53,40.57
]])
