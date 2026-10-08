-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Western Plaguelands (53-58)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Swamp of Sorrows (55-57)",
}, [[
step
  only not completed(5090) not completed(5091) not haveq(5090) not haveq(5091)
  talk Crier Goodman##2198
  accept A Call to Arms: The Plaguelands!##5066 |goto Stormwind City 56.39,74.09
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Chillwind Point##8415 |goto Stormwind City 48.43,50.22
step
  talk Janice Felstone##10778
  accept Better Late Than Never##5021 |goto Western Plaguelands 38.4,54.05
step
  click Mrs. Dalson's Diary##175926
  accept Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.8,50.67
step
  click Locked Cabinet##175924
  accept Locked Away##5060 |goto Western Plaguelands 47.35,49.63
step
  collect Dalson Cabinet Key##12739 |q 5060 |goto Western Plaguelands 48.23,49.67 |tip {dropsfrom}Farmer Dalson
step
  turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
step
  turnin Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.8,50.67
step
  turnin Locked Away##5060 |goto Western Plaguelands 47.35,49.63
step
  click Janice's Parcel##175894
  accept Better Late Than Never##5022 |goto Western Plaguelands 38.73,55.24
step
  talk Chromie##10667
  accept A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  note Use the Temporal Displacer near one of Andorhal's silos and uncover Temporal Parasites.
  kill Temporal Parasite##10717 |q 4971 |goto Western Plaguelands 48.26,65.77
step
  only not completed(5601) not haveq(5601)
  talk Marlene Redpath##10927
  accept Little Pamela##5142 |goto Western Plaguelands 49.17,78.57
step
  note {fp}Bibilfaz Featherwhistle
  goto Western Plaguelands 42.92,85.06 |tip {vendor}
step
  only not completed(5090) not completed(5091) not haveq(5090) not haveq(5091)
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5066 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
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
  only not completed(5405) not completed(5503) not haveq(5405) not haveq(5503)
  talk Argent Officer Pureheart##10840
  accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  talk Nathaniel Dumah##11616
  accept A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.83
step
  only not completed(5405) not completed(5503) not haveq(5405) not haveq(5503)
  talk Argent Officer Pureheart##10840
  turnin Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
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
  note Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Wolf##1817 |q 4984 |goto Western Plaguelands 46.52,44.91
step
  note Kill 10 Skeletal Flayers and 10 Slavering Ghouls in Sorrow Hill.
  kill Skeletal Flayer##1783 |q 5092 |goto Western Plaguelands 37.61,58.49
step
  note Kill 2 Scarlet Medics, 2 Scarlet Hunters, 2 Scarlet Magi and 2 Scarlet Knights before returning to Kirsta Deepshadow in Western Plaguelands.
  kill Scarlet Medic##10605 |q 6004 |goto Western Plaguelands 41.03,51.91
step
  only not NightElf not Gnome not Skyborne Paladin
  note Collect 20 Minion's Scourgestones and bring them to High Priest Thel'danis in the Western Plaguelands.
  collect 20 Minion's Scourgestone##12840 |q 8414 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Chromie##10667
  turnin A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  accept Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  note Locate 5 Andorhal Watches, found in lockboxes amongst the rubble of the city. Return with them to Chromie in the Andorhal Inn, Western Plaguelands.
  collect Andorhal Watch##12638 |q 4972 |goto Western Plaguelands 42.69,69.6 |tip {dropsfrom}Small Lockbox
step
  talk Chromie##10667
  turnin Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
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
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Thel'danis##1854
  turnin Dispelling Evil##8414 |goto Western Plaguelands 52.05,83.27
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Thel'danis##1854
  accept Inert Scourgestones##8416 |goto Western Plaguelands 52.05,83.27
step
  talk Commander Ashlam Valorfist##10838
  turnin Clear the Way##5092 |goto Western Plaguelands 42.7,84.03
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Inert Scourgestones##8416 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  accept The Scourge Cauldrons##5215 |goto Western Plaguelands 42.7,84.03
step
  talk Commander Ashlam Valorfist##10838
  accept All Along the Watchtowers##5097 |goto Western Plaguelands 42.7,84.03
step
  talk High Priestess MacDonnell##11053
  turnin The Scourge Cauldrons##5215 |goto Western Plaguelands 42.97,84.5
step
  talk High Priestess MacDonnell##11053
  accept Target: Felstone Field##5216 |goto Western Plaguelands 42.97,84.5
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
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
  note Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Felstone Field Cauldron Key##13194 |q 5216 |goto Western Plaguelands 36.93,57.41 |tip {dropsfrom}Cauldron Lord Bilemaw
step
  turnin Target: Felstone Field##5216 |goto Western Plaguelands 37.25,56.78
step
  click Scourge Cauldron##176361
  accept Return to Chillwind Camp##5217 |goto Western Plaguelands 37.25,56.78
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  talk Andorhal Tower One##10902 |q 5097 |goto Western Plaguelands 40.05,71.6
step
  talk Commander Ashlam Valorfist##10838
  turnin All Along the Watchtowers##5097 |goto Western Plaguelands 42.7,84.03
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5217 |goto Western Plaguelands 42.97,84.5
step
  talk High Priestess MacDonnell##11053
  accept Target: Dalson's Tears##5219 |goto Western Plaguelands 42.97,84.5
step
  talk Commander Ashlam Valorfist##10838
  accept Scholomance##5533 |goto Western Plaguelands 42.7,84.03
step
  talk Alchemist Arbington##11056
  turnin Scholomance##5533 |goto Western Plaguelands 42.66,83.77
step
  talk Alchemist Arbington##11056
  accept Skeletal Fragments##5537 |goto Western Plaguelands 42.66,83.77
step
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6025 |goto Western Plaguelands 51.92,28.06
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6025 |goto Western Plaguelands 51.92,28.06
step
  note Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Dalson's Tears Cauldron Key##13195 |q 5219 |goto Western Plaguelands 46.11,52.61 |tip {dropsfrom}Cauldron Lord Malvinious
step
  note Bring 15 Skeletal Fragments to Alchemist Arbington at Chillwind Point, Western Plaguelands.
  collect 15 Skeletal Fragments##14619 |q 5537 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  turnin Target: Dalson's Tears##5219 |goto Western Plaguelands 46.18,51.9
step
  click Scourge Cauldron##177289
  accept Return to Chillwind Camp##5220 |goto Western Plaguelands 46.18,51.9
step
  talk High Priestess MacDonnell##11053
  turnin Return to Chillwind Camp##5220 |goto Western Plaguelands 42.97,84.5
step
  talk Alchemist Arbington##11056
  turnin Skeletal Fragments##5537 |goto Western Plaguelands 42.66,83.77
step
  talk High Priestess MacDonnell##11053
  accept Target: Writhing Haunt##5222 |goto Western Plaguelands 42.97,84.5
step
  note Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Writhing Haunt Cauldron Key##13197 |q 5222 |goto Western Plaguelands 52.88,66.08 |tip {dropsfrom}Cauldron Lord Razarch
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
  only not completed(5601) not haveq(5601)
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  only completed(5162)
  talk Jeziba##10976
  accept Catalogue of the Wayward##5164 |goto Western Plaguelands 39.37,66.78
step
  only not completed(5504) not completed(5513) not haveq(5504) not haveq(5513)
  talk Argent Quartermaster Lightspark##10857
  accept Mantles of the Dawn##5507 |goto Western Plaguelands 42.84,83.72
step
  only not completed(5504) not completed(5513) not haveq(5504) not haveq(5513)
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Lightspark at Chillwind Camp, Western Plaguelands.
  collect 10 Argent Dawn Valor Token##12844 |q 5507 |goto Western Plaguelands 42.84,83.72
step
  only not completed(5517) not completed(5524) not haveq(5517) not haveq(5524)
  talk Argent Quartermaster Lightspark##10857
  accept Chromatic Mantle of the Dawn##5521 |goto Western Plaguelands 42.84,83.72
step
  only not completed(5517) not completed(5524) not haveq(5517) not haveq(5524)
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Lightspark at Chillwind Camp, Western Plaguelands.
  collect 25 Argent Dawn Valor Token##12844 |q 5521 |goto Western Plaguelands 42.84,83.72
step
  only completed(5801)
  talk Alchemist Arbington##11056
  accept Araj's Scarab##5803 |goto Western Plaguelands 42.66,83.77
step
  note Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Nathaniel Dumah at Chillwind Camp in Western Plaguelands.
  collect Plagueland Termites##15043 |q 5903 |goto Eastern Plaguelands 28.82,23.2 |tip {dropsfrom}Large Termite Mound
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
  only completed(5801)
  note Destroy Araj the Summoner and bring Araj's Scarab to Alchemist Arbington at Chillwind Point, Western Plaguelands.
  collect Araj's Scarab##14610 |q 5803 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  talk Nathaniel Dumah##11616
  turnin A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.83
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
  only completed(5162)
  turnin Catalogue of the Wayward##5164 |goto Western Plaguelands 39.35,66.6
step
  only not completed(5504) not completed(5513) not haveq(5504) not haveq(5513)
  talk Argent Quartermaster Lightspark##10857
  turnin Mantles of the Dawn##5507 |goto Western Plaguelands 42.84,83.72
step
  only not completed(5517) not completed(5524) not haveq(5517) not haveq(5524)
  talk Argent Quartermaster Lightspark##10857
  turnin Chromatic Mantle of the Dawn##5521 |goto Western Plaguelands 42.84,83.72
step
  only completed(5801)
  talk Alchemist Arbington##11056
  turnin Araj's Scarab##5803 |goto Western Plaguelands 42.66,83.77
step
  talk Royal Factor Bathrilor##10782
  turnin Better Late Than Never##5022 |goto Stormwind City 57.17,48.07 |tip {turninat}Stormwind City
step
  talk Nathaniel Dumah##11616
  accept A Plague Upon Thee##5904 |goto Western Plaguelands 43.42,84.83
step
  only completed(5801)
  talk Alchemist Arbington##11056
  accept The Key to Scholomance##5505 |goto Western Plaguelands 42.66,83.77
step
  turnin A Plague Upon Thee##5904 |goto Western Plaguelands 48.34,31.99
step
  only completed(5801)
  talk Alchemist Arbington##11056
  turnin The Key to Scholomance##5505 |goto Western Plaguelands 42.66,83.77
step
  talk Mathrengyl Bearwalker##4217
  turnin Glyphed Oaken Branch##4986 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Royal Factor Bathrilor##10782
  accept Good Natured Emma##5048 |goto Stormwind City 57.17,48.07
step
  click Termite Barrel##177491
  accept A Plague Upon Thee##6389 |goto Western Plaguelands 48.34,31.99
step
  talk Ol' Emma##3520
  turnin Good Natured Emma##5048 |goto Stormwind City 60.2,57.03 |tip {turninat}Stormwind City
step
  talk Nathaniel Dumah##11616
  turnin A Plague Upon Thee##6389 |goto Western Plaguelands 43.42,84.83
step
  talk Ol' Emma##3520
  accept Good Luck Charm##5050 |goto Stormwind City 60.2,57.03
step
  talk Commander Ashlam Valorfist##10838
  accept Alas, Andorhal##211 |goto Western Plaguelands 42.7,84.03
step
  note Bring Araj's Phylactery Shard to Commander Ashlam Valorfist at Chillwind Camp, Western Plaguelands.
  collect Araj's Phylactery Shard##17114 |q 211 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  talk Janice Felstone##10778
  turnin Good Luck Charm##5050 |goto Western Plaguelands 38.4,54.05
step
  talk Commander Ashlam Valorfist##10838
  turnin Alas, Andorhal##211 |goto Western Plaguelands 42.7,84.03
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
  note {travel}Stormwind City
  goto Stormwind City 69.45,40.4
]])
