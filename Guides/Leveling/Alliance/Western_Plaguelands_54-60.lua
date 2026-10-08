-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Western Plaguelands (54-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Burning Steppes (53-60)",
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
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  talk Commander Ashlam Valorfist##10838
  accept Clear the Way##5092 |goto Western Plaguelands 42.7,84.03
step
  talk Weldon Barov##11023
  accept Barov Family Fortune##5343 |goto Western Plaguelands 43.45,83.73
step
  note Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Weldon Barov when you have completed this task.
  collect The Deed to Brill##13471 |q 5343 |goto Scholomance - Dungeon -1,-1
step
  talk Argent Officer Pureheart##10840
  accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  talk Argent Quartermaster Lightspark##10857
  accept Mantles of the Dawn##5507 |goto Western Plaguelands 42.84,83.72
step
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Lightspark at Chillwind Camp, Western Plaguelands.
  collect 10 Argent Dawn Valor Token##12844 |q 5507 |goto Western Plaguelands 42.84,83.72
step
  talk Argent Quartermaster Lightspark##10857
  accept Chromatic Mantle of the Dawn##5521 |goto Western Plaguelands 42.84,83.72
step
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Lightspark at Chillwind Camp, Western Plaguelands.
  collect 25 Argent Dawn Valor Token##12844 |q 5521 |goto Western Plaguelands 42.84,83.72
step
  talk Alchemist Arbington##11056
  accept Araj's Scarab##5803 |goto Western Plaguelands 42.66,83.77
step
  note Destroy Araj the Summoner and bring Araj's Scarab to Alchemist Arbington at Chillwind Point, Western Plaguelands.
  collect Araj's Scarab##14610 |q 5803 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  talk Nathaniel Dumah##11616
  accept A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.83
step
  note Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Nathaniel Dumah at Chillwind Camp in Western Plaguelands.
  collect Plagueland Termites##15043 |q 5903 |goto Eastern Plaguelands 29.68,22.91 |tip {dropsfrom}Large Termite Mound
step
  talk Flint Shadowmore##12425
  accept The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
step
  note Scour the Eastern Plaguelands for clues as to the "Blightcaller" and the missing SI:7 agents. If you find any SI:7 Insignias, return them to Flint Shadowmore at Chillwind Camp.
  collect SI:7 Insignia (Rutger)##16003 |q 6185 |goto Eastern Plaguelands 24.28,68.11 |tip {dropsfrom}Mangled Human Remains
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  accept Dispelling Evil##8414 |goto Western Plaguelands 42.7,84.03
step
  only Paladin
  note Collect 20 Minion's Scourgestones and bring them to High Priest Thel'danis in the Western Plaguelands.
  collect 20 Minion's Scourgestone##12840 |q 8414 |goto Western Plaguelands 38.99,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  note Place the Relic Bundle at the Darrowshire town square.
  kill Joseph Redpath##10936 |q 5721 |goto Eastern Plaguelands 33.62,78.46
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
  talk Highlord Taelan Fordring##1842
  turnin Scarlet Subterfuge##5862 |goto Western Plaguelands 42.02,14.79
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
step
  talk Tirion Fordring##1855
  turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  talk Janice Felstone##10778
  turnin Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  turnin Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.8,50.67
step
  turnin Locked Away##5060 |goto Western Plaguelands 47.35,49.63
step
  talk Tirion Fordring##1855
  turnin Of Love and Family##5848 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  click Janice's Parcel##175894
  accept Better Late Than Never##5022 |goto Western Plaguelands 38.73,55.24
step
  note Kill 10 Skeletal Flayers and 10 Slavering Ghouls in Sorrow Hill.
  kill Skeletal Flayer##1783 |q 5092 |goto Western Plaguelands 38.99,58.49
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
  turnin Catalogue of the Wayward##5164 |goto Western Plaguelands 39.35,66.6
step
  talk Chromie##10667
  turnin A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
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
  talk Royal Factor Bathrilor##10782
  turnin Better Late Than Never##5022 |goto Stormwind City 57.17,48.07 |tip {turninat}Stormwind City
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
  only Paladin
  talk High Priest Thel'danis##1854
  turnin Dispelling Evil##8414 |goto Western Plaguelands 52.05,83.27
step
  only Paladin
  talk High Priest Thel'danis##1854
  accept Inert Scourgestones##8416 |goto Western Plaguelands 52.05,83.27
step
  talk Argent Quartermaster Lightspark##10857
  turnin Mantles of the Dawn##5507 |goto Western Plaguelands 42.84,83.72
step
  talk Nathaniel Dumah##11616
  turnin A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.83
step
  talk Argent Quartermaster Lightspark##10857
  turnin Chromatic Mantle of the Dawn##5521 |goto Western Plaguelands 42.84,83.72
step
  talk Argent Officer Pureheart##10840
  turnin Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  talk Flint Shadowmore##12425
  turnin The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
step
  talk Alchemist Arbington##11056
  turnin Araj's Scarab##5803 |goto Western Plaguelands 42.66,83.77
step
  talk Pamela Redpath##10926
  turnin The Battle of Darrowshire##5721 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  talk Weldon Barov##11023
  turnin Barov Family Fortune##5343 |goto Western Plaguelands 43.45,83.73
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Inert Scourgestones##8416 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  turnin Clear the Way##5092 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  accept All Along the Watchtowers##5097 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  accept The Scourge Cauldrons##5215 |goto Western Plaguelands 42.7,84.03
step
  talk Weldon Barov##11023
  accept The Last Barov##5344 |goto Western Plaguelands 43.45,83.73
step
  note Travel to the Bulwark - Horde territory - and assassinate Alexi Barov. Take his head and return to Weldon Barov.
  kill Alexi Barov##11022 |goto Tirisfal Glades 83.06,71.6 |elite
  collect Head of Alexi Barov##13470 |q 5344 |goto Tirisfal Glades 83.06,71.6
step
  talk Alchemist Arbington##11056
  accept The Key to Scholomance##5505 |goto Western Plaguelands 42.66,83.77
step
  talk Nathaniel Dumah##11616
  accept A Plague Upon Thee##5904 |goto Western Plaguelands 43.42,84.83
step
  talk Flint Shadowmore##12425
  accept The Blightcaller Cometh##6186 |goto Western Plaguelands 43.61,84.51
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  accept Forging the Mightstone##8418 |goto Western Plaguelands 42.7,84.03
step
  only Paladin
  note Bring the voodoo feathers to Ashlam Valorfist.
  collect Amber Voodoo Feather##20606 |q 8418 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Magistrate Marduke##11286
  turnin The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  note Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
  collect Krastinov's Bag of Horrors##13725 |q 5515 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Jandice Barov
step
  turnin A Plague Upon Thee##5904 |goto Western Plaguelands 48.34,31.99
step
  talk Highlord Bolvar Fordragon##1748
  turnin The Blightcaller Cometh##6186 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
step
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
  click Termite Barrel##177491
  accept A Plague Upon Thee##6389 |goto Western Plaguelands 48.34,31.99
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
  talk Jeziba##10976
  turnin Breastplate of the Chromatic Flight##5166 |goto Western Plaguelands 39.37,66.78
step
  talk Jeziba##10976
  turnin Legplates of the Chromatic Defier##5167 |goto Western Plaguelands 39.37,66.78
step
  talk Chromie##10667
  turnin Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  accept Brother Carlin##5210 |goto Western Plaguelands 39.46,66.76
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  kill Andorhal Tower One##10902 |q 5097 |goto Western Plaguelands 40.05,71.6
step
  talk Carlin Redpath##11063
  turnin Brother Carlin##5210 |goto Eastern Plaguelands 71.7,50.04 |tip {turninat}Eastern Plaguelands
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  talk Mulgris Deepriver##10739
  accept Glyphed Oaken Branch##4986 |goto Western Plaguelands 53.73,64.66
step
  talk Alchemist Arbington##11056
  turnin The Key to Scholomance##5505 |goto Western Plaguelands 42.66,83.77
step
  talk High Priestess MacDonnell##11053
  turnin The Scourge Cauldrons##5215 |goto Western Plaguelands 42.97,84.5
step
  talk Weldon Barov##11023
  turnin The Last Barov##5344 |goto Western Plaguelands 43.45,83.73
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Forging the Mightstone##8418 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  turnin All Along the Watchtowers##5097 |goto Western Plaguelands 42.7,84.03
step
  talk Nathaniel Dumah##11616
  turnin A Plague Upon Thee##6389 |goto Western Plaguelands 43.42,84.83
step
  talk Commander Ashlam Valorfist##10838
  accept Alas, Andorhal##211 |goto Western Plaguelands 42.7,84.03
step
  note Bring Araj's Phylactery Shard to Commander Ashlam Valorfist at Chillwind Camp, Western Plaguelands.
  collect Araj's Phylactery Shard##17114 |q 211 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  talk High Priestess MacDonnell##11053
  accept Target: Felstone Field##5216 |goto Western Plaguelands 42.97,84.5
step
  note Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Felstone Field Cauldron Key##13194 |q 5216 |goto Western Plaguelands 36.93,57.41 |tip {dropsfrom}Cauldron Lord Bilemaw
step
  talk Commander Ashlam Valorfist##10838
  accept Scholomance##5533 |goto Western Plaguelands 42.7,84.03
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
  talk Mathrengyl Bearwalker##4217
  turnin Glyphed Oaken Branch##4986 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  note Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
  kill Kirtonos the Herald##10506 |q 5384 |goto Scholomance - Dungeon -1,-1 |elite
step
  turnin Target: Felstone Field##5216 |goto Western Plaguelands 37.25,56.78
step
  click Scourge Cauldron##176361
  accept Return to Chillwind Camp##5217 |goto Western Plaguelands 37.25,56.78
step
  talk Alchemist Arbington##11056
  turnin Scholomance##5533 |goto Western Plaguelands 42.66,83.77
step
  talk Commander Ashlam Valorfist##10838
  turnin Alas, Andorhal##211 |goto Western Plaguelands 42.7,84.03
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5217 |goto Western Plaguelands 42.97,84.5
step
  talk High Priestess MacDonnell##11053
  accept Target: Dalson's Tears##5219 |goto Western Plaguelands 42.97,84.5
step
  note Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Dalson's Tears Cauldron Key##13195 |q 5219 |goto Western Plaguelands 46.11,52.61 |tip {dropsfrom}Cauldron Lord Malvinious
step
  talk Alchemist Arbington##11056
  accept Skeletal Fragments##5537 |goto Western Plaguelands 42.66,83.77
step
  note Bring 15 Skeletal Fragments to Alchemist Arbington at Chillwind Point, Western Plaguelands.
  collect 15 Skeletal Fragments##14619 |q 5537 |goto Western Plaguelands 38.99,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
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
  turnin Target: Dalson's Tears##5219 |goto Western Plaguelands 46.18,51.9
step
  click Scourge Cauldron##177289
  accept Return to Chillwind Camp##5220 |goto Western Plaguelands 46.18,51.9
step
  talk Alchemist Arbington##11056
  turnin Skeletal Fragments##5537 |goto Western Plaguelands 42.66,83.77
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5220 |goto Western Plaguelands 42.97,84.5
step
  talk High Priestess MacDonnell##11053
  accept Target: Writhing Haunt##5222 |goto Western Plaguelands 42.97,84.5
step
  note Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Writhing Haunt Cauldron Key##13197 |q 5222 |goto Western Plaguelands 52.88,66.08 |tip {dropsfrom}Cauldron Lord Razarch
step
  talk Alchemist Arbington##11056
  accept Mold Rhymes With...##5538 |goto Western Plaguelands 42.66,83.77
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  talk Krinkle Goodsteel##5411
  turnin Mold Rhymes With...##5538 |goto Tanaris 51.46,28.81 |tip {turninat}Tanaris
step
  talk Leonid Barthalomew the Revered##11036
  turnin The Dying, Ras Frostwhisper##5462 |goto Eastern Plaguelands 71.89,48.29 |tip {turninat}Eastern Plaguelands
step
  turnin Target: Writhing Haunt##5222 |goto Western Plaguelands 53.02,65.61
step
  click Scourge Cauldron##176393
  accept Return to Chillwind Camp##5223 |goto Western Plaguelands 53.02,65.61
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5223 |goto Western Plaguelands 42.97,84.5
step
  talk High Priestess MacDonnell##11053
  accept Target: Gahrron's Withering##5225 |goto Western Plaguelands 42.97,84.5
step
  note Go to Gahrron's Withering in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Gahrron's Withering Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Gahrron's Withering Cauldron Key##13196 |q 5225 |goto Western Plaguelands 62.18,59.06 |tip {dropsfrom}Cauldron Lord Soulwrath
step
  turnin Target: Gahrron's Withering##5225 |goto Western Plaguelands 62.54,58.47
step
  click Scourge Cauldron##176392
  accept Return to Chillwind Camp##5226 |goto Western Plaguelands 62.54,58.47
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5226 |goto Western Plaguelands 42.97,84.5
step
  talk Commander Ashlam Valorfist##10838
  accept Mission Accomplished!##5237 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  turnin Mission Accomplished!##5237 |goto Western Plaguelands 42.7,84.03
step
  note {travel}Burning Steppes
  goto Burning Steppes 65.15,23.91
]])
