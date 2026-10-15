-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Western Plaguelands (53-58)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Swamp of Sorrows (55-57)",
	rev = "2eecaa83",
}, [[
step
  ding 52
step
  only not completed(5090) not completed(5091) not haveq(5090) not haveq(5091)
  talk Crier Goodman##2198
  accept A Call to Arms: The Plaguelands!##5066 |goto Stormwind City 56.39,74.09
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Chillwind Point##8415 |goto Stormwind City 48.43,50.22
step
  only haveq(6402)
  note Travel to Stormwind City and venture to the city gates. Speak with Squire Rowe so that he may let Marshal Windsor know that you have arrived.
  talk Reginald Windsor##12580
  turnin Stormwind Rendezvous##6402 |goto Stormwind City 73.61,91.05 |tip {turninat}Stormwind City
step
  talk Janice Felstone##10778
  accept Better Late Than Never##5021 |goto Western Plaguelands 38.4,54.05
step
  note The ramblings of the ghostly woman indicated that she needed a package delivered. She claimed that it was where her horse was. As to where the horse is or where the package was to be delivered - the ghost remains incomprehensible.
  turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
step
  click Janice's Parcel##175894
  accept Better Late Than Never##5022 |goto Western Plaguelands 38.73,55.24
step
  note {fp}Bibilfaz Featherwhistle
  goto Western Plaguelands 42.92,85.06 |tip {vendor}
step
  only not completed(5090) not completed(5091) not haveq(5090) not haveq(5091)
  note Seek out Commander Ashlam Valorfist. His base camp is located at Chillwind Camp, north of the Alterac Mountains.
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5066 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak to Commander Ashlam Valorfist at Chillwind Camp.
  talk Commander Ashlam Valorfist##10838
  turnin Chillwind Point##8415 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  accept Clear the Way##5092 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Commander Ashlam Valorfist##10838
  accept Dispelling Evil##8414 |goto Western Plaguelands 42.7,84.03
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  note Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Wolf##1817 |q 4984 |goto Western Plaguelands 46.52,44.91
step
  note Kill 10 Skeletal Flayers and 10 Slavering Ghouls in Sorrow Hill.
  kill Skeletal Flayer##1783 |q 5092/1 |goto Western Plaguelands 37.61,58.49
  kill Slavering Ghoul##1791 |q 5092 |goto Western Plaguelands 49.93,76.67
step
  only not NightElf not Gnome not Skyborne Paladin
  note Collect 20 Minion's Scourgestones and bring them to High Priest Thel'danis in the Western Plaguelands.
  collect 20 Minion's Scourgestone##12840 |q 8414 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Slavering Ghoul
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Thel'danis##1854
  turnin Dispelling Evil##8414 |goto Western Plaguelands 52.05,83.27
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Thel'danis##1854
  accept Inert Scourgestones##8416 |goto Western Plaguelands 52.05,83.27
step
  only not completed(5601) not haveq(5601)
  talk Marlene Redpath##10927
  accept Little Pamela##5142 |goto Western Plaguelands 49.17,78.57
step
  talk Commander Ashlam Valorfist##10838
  turnin Clear the Way##5092 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring the Inert Scourgestone to Commander Ashlan Valorfist in Chillwind Point.
  talk Commander Ashlam Valorfist##10838
  turnin Inert Scourgestones##8416 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  accept The Scourge Cauldrons##5215 |goto Western Plaguelands 42.7,84.03
step
  only not completed(5405) not completed(5503) not haveq(5405) not haveq(5503)
  talk Argent Officer Pureheart##10840
  accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  talk Nathaniel Dumah##11616
  accept A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.83
step
  note Speak with High Priestess MacDonnell at Chillwind Point, Western Plaguelands.
  talk High Priestess MacDonnell##11053
  turnin The Scourge Cauldrons##5215 |goto Western Plaguelands 42.97,84.5
step
  only not completed(5405) not completed(5503) not haveq(5405) not haveq(5503)
  talk Argent Officer Pureheart##10840
  turnin Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  talk High Priestess MacDonnell##11053
  accept Target: Felstone Field##5216 |goto Western Plaguelands 42.97,84.5
step
  note Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Felstone Field Cauldron Key##13194 |q 5216 |goto Western Plaguelands 36.93,57.41 |tip {dropsfrom}Cauldron Lord Bilemaw
step
  turnin Target: Felstone Field##5216 |goto Western Plaguelands 37.25,56.78
step
  click Scourge Cauldron##176361
  accept Return to Chillwind Camp##5217 |goto Western Plaguelands 37.25,56.78
step
  only level>=52
  click Mrs. Dalson's Diary##175926
  accept Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.8,50.67
step
  only level>=52
  click Locked Cabinet##175924
  accept Locked Away##5060 |goto Western Plaguelands 47.35,49.63
step
  only haveq(5060)
  collect Dalson Cabinet Key##12739 |q 5060 |goto Western Plaguelands 48.23,49.67 |tip {dropsfrom}Farmer Dalson
step
  only haveq(5058)
  turnin Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.8,50.67
step
  only haveq(5060)
  turnin Locked Away##5060 |goto Western Plaguelands 47.35,49.63
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  only level>=53
  talk Chromie##10667
  accept A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
step
  note Bring the Filled Felstone Field Bottle to High Priestess MacDonnell at Chillwind Camp, Western Plaguelands.
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5217 |goto Western Plaguelands 42.97,84.5
step
  talk High Priestess MacDonnell##11053
  accept Target: Dalson's Tears##5219 |goto Western Plaguelands 42.97,84.5
step
  talk Commander Ashlam Valorfist##10838
  accept All Along the Watchtowers##5097 |goto Western Plaguelands 42.7,84.03
step
  only haveq(4971)
  note Use the Temporal Displacer near one of Andorhal's silos and uncover Temporal Parasites.
  kill Temporal Parasite##10717 |q 4971 |goto Western Plaguelands 48.26,65.77
step
  note Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Dalson's Tears Cauldron Key##13195 |q 5219 |goto Western Plaguelands 46.11,52.61 |tip {dropsfrom}Cauldron Lord Malvinious
step
  turnin Target: Dalson's Tears##5219 |goto Western Plaguelands 46.18,51.9
step
  click Scourge Cauldron##177289
  accept Return to Chillwind Camp##5220 |goto Western Plaguelands 46.18,51.9
step
  note Destroy 8 Diseased Grizzlies, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Grizzly##1816 |q 4985 |goto Western Plaguelands 59.01,51.61
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  talk Mulgris Deepriver##10739
  accept Glyphed Oaken Branch##4986 |goto Western Plaguelands 53.73,64.66
step
  only haveq(4971)
  talk Chromie##10667
  turnin A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
step
  only completed(4971) level>=53
  talk Chromie##10667
  accept Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  use Andorhal Tower One##10902 |q 5097/1 |goto Western Plaguelands 40.05,71.6 |tip {useit}
  use Andorhal Tower Two##10903 |q 5097/2 |goto Western Plaguelands 42.33,66.24 |tip {useit}
  use Andorhal Tower Three##10904 |q 5097/3 |goto Western Plaguelands 44.3,63.25 |tip {useit}
  use Andorhal Tower Four##10905 |q 5097 |goto Western Plaguelands 46.62,71.05 |tip {useit}
step
  only haveq(4972)
  note Locate 5 Andorhal Watches, found in lockboxes amongst the rubble of the city. Return with them to Chromie in the Andorhal Inn, Western Plaguelands.
  collect 5 Andorhal Watch##12638 |q 4972 |goto Western Plaguelands 42.69,69.6 |tip {dropsfrom}Small Lockbox
step
  only haveq(4972)
  talk Chromie##10667
  turnin Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  talk Commander Ashlam Valorfist##10838
  turnin All Along the Watchtowers##5097 |goto Western Plaguelands 42.7,84.03
step
  note Bring the Filled Dalson's Tears Bottle to High Priestess MacDonnell at Chillwind Camp, Western Plaguelands.
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5220 |goto Western Plaguelands 42.97,84.5
step
  talk High Priestess MacDonnell##11053
  accept Target: Writhing Haunt##5222 |goto Western Plaguelands 42.97,84.5
step
  only level>=55
  talk Commander Ashlam Valorfist##10838
  accept Scholomance##5533 |goto Western Plaguelands 42.7,84.03
step
  only haveq(5533)
  note Speak with Alchemist Arbington at Chillwind Point, Western Plaguelands.
  talk Alchemist Arbington##11056
  turnin Scholomance##5533 |goto Western Plaguelands 42.66,83.77
step
  only completed(5533) level>=55
  talk Alchemist Arbington##11056
  accept Skeletal Fragments##5537 |goto Western Plaguelands 42.66,83.77
step
  note Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Writhing Haunt Cauldron Key##13197 |q 5222 |goto Western Plaguelands 52.88,66.08 |tip {dropsfrom}Cauldron Lord Razarch
step
  turnin Target: Writhing Haunt##5222 |goto Western Plaguelands 53.02,65.61
step
  click Scourge Cauldron##176393
  accept Return to Chillwind Camp##5223 |goto Western Plaguelands 53.02,65.61
step
  only haveq(5537)
  note Bring 15 Skeletal Fragments to Alchemist Arbington at Chillwind Point, Western Plaguelands.
  collect 15 Skeletal Fragments##14619 |q 5537 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
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
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
step
  note Kill 2 Scarlet Medics, 2 Scarlet Hunters, 2 Scarlet Magi and 2 Scarlet Knights before returning to Kirsta Deepshadow in Western Plaguelands.
  kill Scarlet Knight##1833 |q 6004/4 |goto Western Plaguelands 53.18,36.97
  kill Scarlet Mage##1826 |q 6004/3 |goto Western Plaguelands 52.77,37.56
  kill Scarlet Hunter##1831 |q 6004/2 |goto Western Plaguelands 47.33,51.38
  kill Scarlet Medic##10605 |q 6004 |goto Western Plaguelands 41.03,51.91
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
step
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
  note Kill Huntsman Radley and Cavalier Durgen before returning to Kirsta Deepshadow in Western Plaguelands.
  kill Cavalier Durgen##11611 |q 6023/2 |goto Western Plaguelands 55.15,23.62
  kill Huntsman Radley##11613 |q 6023 |goto Western Plaguelands 57.83,36.1
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
  note Bring the Filled Writhing Haunt Bottle to High Priestess MacDonnell at Chillwind Camp, Western Plaguelands.
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5223 |goto Western Plaguelands 42.97,84.5
step
  only haveq(5537)
  talk Alchemist Arbington##11056
  turnin Skeletal Fragments##5537 |goto Western Plaguelands 42.66,83.77
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
  note Bring the Filled Gahrron's Withering Bottle to High Priestess MacDonnell at Chillwind Camp, Western Plaguelands.
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5226 |goto Western Plaguelands 42.97,84.5
step
  talk Commander Ashlam Valorfist##10838
  accept Mission Accomplished!##5237 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  turnin Mission Accomplished!##5237 |goto Western Plaguelands 42.7,84.03
step
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6025 |goto Western Plaguelands 51.92,28.06
step
  note Enter Hearthglen and find a high vantage point from which you can see the town and gauge the Scarlet Crusade's forces, then return to Kirsta Deepshadow in Western Plaguelands.
  goto Western Plaguelands 45.81,18.25 |tip Overlook Hearthglen from a high vantage point
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6025 |goto Western Plaguelands 51.92,28.06
step
  only level>=60
  talk Commander Ashlam Valorfist##10838
  accept Alas, Andorhal##211 |goto Western Plaguelands 42.7,84.03
step
  only completed(5801) level>=55
  talk Alchemist Arbington##11056
  accept Araj's Scarab##5803 |goto Western Plaguelands 42.66,83.77
step
  only haveq(211)
  note Bring Araj's Phylactery Shard to Commander Ashlam Valorfist at Chillwind Camp, Western Plaguelands.
  kill Araj the Summoner##1852 |elite
  goto Western Plaguelands 45.27,69.21
step
  only haveq(211)
  note Bring Araj's Phylactery Shard to Commander Ashlam Valorfist at Chillwind Camp, Western Plaguelands.
  collect Araj's Phylactery Shard##17114 |q 211 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  only completed(5801) haveq(5803)
  note Destroy Araj the Summoner and bring Araj's Scarab to Alchemist Arbington at Chillwind Point, Western Plaguelands.
  collect Araj's Scarab##14610 |q 5803 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  only haveq(211)
  talk Commander Ashlam Valorfist##10838
  turnin Alas, Andorhal##211 |goto Western Plaguelands 42.7,84.03
step
  only completed(5801) haveq(5803)
  talk Alchemist Arbington##11056
  turnin Araj's Scarab##5803 |goto Western Plaguelands 42.66,83.77
step
  only completed(5801) completed(5803) level>=55
  talk Alchemist Arbington##11056
  accept The Key to Scholomance##5505 |goto Western Plaguelands 42.66,83.77
step
  only completed(5801) haveq(5505)
  talk Alchemist Arbington##11056
  turnin The Key to Scholomance##5505 |goto Western Plaguelands 42.66,83.77
step
  only completed(5162) level>=57
  talk Jeziba##10976
  accept Catalogue of the Wayward##5164 |goto Western Plaguelands 39.37,66.78
step
  only completed(5162) haveq(5164)
  note Read from the Catalogue of the Wayward.
  turnin Catalogue of the Wayward##5164 |goto Western Plaguelands 39.35,66.6
step
  only not completed(5601) not haveq(5601)
  note Find Pamela Redpath.
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  note Slay 30 Plaguebats and return to Tirion Fordring.
  kill Plaguebat##8600 |q 5543 |goto Eastern Plaguelands 28.22,64.82
step
  note Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
  kill Plaguehound Runt##8596 |q 5542/1 |goto Eastern Plaguelands 20.15,61.44
  kill Frenzied Plaguehound##8598 |q 5542/3 |goto Eastern Plaguelands 45.86,30.91
  kill Plaguehound##8597 |q 5542 |goto Eastern Plaguelands 59.53,53.87
step
  note Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
  collect 15 Slab of Carrion Worm Meat##13853 |q 5544 |goto Eastern Plaguelands 42.91,55.69 |tip {dropsfrom}Carrion Grub, Carrion Devourer
step
  note Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Nathaniel Dumah at Chillwind Camp in Western Plaguelands.
  collect 100 Plagueland Termites##15043 |q 5903 |goto Eastern Plaguelands 28.82,23.2 |tip {dropsfrom}Large Termite Mound
step
  talk Tirion Fordring##1855
  turnin Demon Dogs##5542 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  talk Tirion Fordring##1855
  turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  talk Tirion Fordring##1855
  turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  talk Nathaniel Dumah##11616
  turnin A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.83
step
  talk Nathaniel Dumah##11616
  accept A Plague Upon Thee##5904 |goto Western Plaguelands 43.42,84.83
step
  note Find someplace suitable in the center of the Northridge Lumber Mill in Western Plaguelands to place the Barrel of Plagueland Termites.
  turnin A Plague Upon Thee##5904 |goto Western Plaguelands 48.34,31.99
step
  click Termite Barrel##177491
  accept A Plague Upon Thee##6389 |goto Western Plaguelands 48.34,31.99
step
  note Release the Plagueland Termites in the Northridge Lumber Mill, then return with the Barrel of Plagueland Termites to Nathaniel Dumah at Chillwind Camp in Western Plaguelands.
  talk Nathaniel Dumah##11616
  turnin A Plague Upon Thee##6389 |goto Western Plaguelands 43.42,84.83
step
  note Check with the Royal Factors of Stormwind to learn the whereabouts of an Emma Felstone. There is usually a census officer located in City Hall.
  talk Royal Factor Bathrilor##10782
  turnin Better Late Than Never##5022 |goto Stormwind City 57.17,48.07 |tip {turninat}Stormwind City
step
  talk Royal Factor Bathrilor##10782
  accept Good Natured Emma##5048 |goto Stormwind City 57.17,48.07
step
  note Find Ol' Emma in Stormwind and see if she is in fact Emma Felstone. If she is, then perhaps she'd like the package Janice Felstone made for her.
  talk Ol' Emma##3520
  turnin Good Natured Emma##5048 |goto Stormwind City 60.2,57.03 |tip {turninat}Stormwind City
step
  talk Ol' Emma##3520
  accept Good Luck Charm##5050 |goto Stormwind City 60.2,57.03
step
  only level>=57
  talk Count Remington Ridgewell##2285
  accept Mayara Brightwing##4766 |goto Stormwind City 76.94,47.83
step
  only haveq(4766)
  note Speak with Mayara Brightwing in the Burning Steppes.
  talk Mayara Brightwing##9565
  turnin Mayara Brightwing##4766 |goto Burning Steppes 84.84,69.12 |tip {turninat}Burning Steppes
step
  only level>=55
  talk Ragged John##9563
  accept Mother's Milk##4866 |goto Burning Steppes 65.01,23.76
step
  only haveq(4866)
  note In the heart of Blackrock Spire you will find Mother Smolderweb. Engage her and get her to poison you. Chances are good that you will have to kill her as well. Return to Ragged John when you are poisoned so that he can 'milk' you.
  talk Ragged John##9563 |q 4866 |goto Burning Steppes 65.01,23.76
step
  only haveq(4866)
  talk Ragged John##9563
  turnin Mother's Milk##4866 |goto Burning Steppes 65.01,23.76 |tip {turninat}Burning Steppes
step
  note Return to Janice Felstone in Western Plaguelands her Good Luck Half-Charm.
  talk Janice Felstone##10778
  turnin Good Luck Charm##5050 |goto Western Plaguelands 38.4,54.05
step
  talk Janice Felstone##10778
  accept Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  note Locate the other half of the Good Luck Charm somewhere on the Felstone Farm in Western Plaguelands and reassemble it.
  collect Good Luck Charm##12723 |q 5051 |goto Western Plaguelands 38.4,54.05
step
  talk Janice Felstone##10778
  turnin Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 22.16,50.23
]])
