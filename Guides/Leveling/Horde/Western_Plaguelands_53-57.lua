-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Western Plaguelands (53-57)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Swamp of Sorrows (50-57)",
}, [[
step
  talk Janice Felstone##10778
  accept Better Late Than Never##5021 |goto Western Plaguelands 38.4,54.05
step
  only completed(5229)
  click Scourge Cauldron##176361
  accept Return to the Bulwark##5230 |goto Western Plaguelands 37.25,56.78
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
  accept Better Late Than Never##5023 |goto Western Plaguelands 38.73,55.24
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
  only not completed(5405) not completed(5503) not haveq(5405) not haveq(5503)
  talk Argent Officer Pureheart##10840
  accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  only not completed(5405) not completed(5503) not haveq(5405) not haveq(5503)
  talk Argent Officer Pureheart##10840
  turnin Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  only completed(5902)
  click Termite Barrel##177491
  accept A Plague Upon Thee##6390 |goto Western Plaguelands 48.34,31.99
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
  note Kill 2 Scarlet Medics, 2 Scarlet Hunters, 2 Scarlet Magi and 2 Scarlet Knights before returning to Kirsta Deepshadow in Western Plaguelands.
  kill Scarlet Medic##10605 |q 6004 |goto Western Plaguelands 41.03,51.91
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
  accept Glyphed Oaken Branch##4987 |goto Western Plaguelands 53.73,64.66
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
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5230 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  only not completed(5601) not haveq(5601)
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  only completed(5902)
  talk Mickey Levine##11615
  turnin A Plague Upon Thee##6390 |goto Tirisfal Glades 83.29,72.34 |tip {turninat}Tirisfal Glades
step
  only completed(5162)
  talk Jeziba##10976
  accept Catalogue of the Wayward##5164 |goto Western Plaguelands 39.37,66.78
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
  talk Royal Overseer Bauhaus##10781
  turnin Better Late Than Never##5023 |goto Undercity 69.79,43.16 |tip {turninat}Undercity
step
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  accept Target: Dalson's Tears##5231 |goto Tirisfal Glades 83.04,71.91
step
  only completed(5229)
  note Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Dalson's Tears Cauldron Key##13195 |q 5231 |goto Western Plaguelands 46.11,52.61 |tip {dropsfrom}Cauldron Lord Malvinious
step
  only completed(5229)
  turnin Target: Dalson's Tears##5231 |goto Western Plaguelands 46.18,51.9
step
  talk Nara Wildmane##5770
  turnin Glyphed Oaken Branch##4987 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Royal Overseer Bauhaus##10781
  accept The Jeremiah Blues##5049 |goto Undercity 69.79,43.16
step
  only completed(5229)
  click Scourge Cauldron##177289
  accept Return to the Bulwark##5232 |goto Western Plaguelands 46.18,51.9
step
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6025 |goto Western Plaguelands 51.92,28.06
step
  talk Jeremiah Payson##8403
  turnin The Jeremiah Blues##5049 |goto Undercity 67.6,44.16 |tip {turninat}Undercity
step
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5232 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6025 |goto Western Plaguelands 51.92,28.06
step
  talk Jeremiah Payson##8403
  accept Good Luck Charm##5050 |goto Undercity 67.6,44.16
step
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  accept Target: Writhing Haunt##5233 |goto Tirisfal Glades 83.04,71.91
step
  only completed(5229)
  note Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Writhing Haunt Cauldron Key##13197 |q 5233 |goto Western Plaguelands 52.88,66.08 |tip {dropsfrom}Cauldron Lord Razarch
step
  talk Janice Felstone##10778
  turnin Good Luck Charm##5050 |goto Western Plaguelands 38.4,54.05
step
  only completed(5229)
  turnin Target: Writhing Haunt##5233 |goto Western Plaguelands 53.02,65.61
step
  talk Janice Felstone##10778
  accept Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  note Locate the other half of the Good Luck Charm somewhere on the Felstone Farm in Western Plaguelands and reassemble it.
  collect Good Luck Charm##12723 |q 5051 |goto Western Plaguelands 38.4,54.05
step
  only completed(5229)
  click Scourge Cauldron##176393
  accept Return to the Bulwark##5234 |goto Western Plaguelands 53.02,65.61
step
  talk Janice Felstone##10778
  turnin Two Halves Become One##5051 |goto Western Plaguelands 38.4,54.05
step
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5234 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  accept Target: Gahrron's Withering##5235 |goto Tirisfal Glades 83.04,71.91
step
  only completed(5229)
  note Go to Gahrron's Withering in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Gahrron's Withering Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Gahrron's Withering Cauldron Key##13196 |q 5235 |goto Western Plaguelands 62.18,59.06 |tip {dropsfrom}Cauldron Lord Soulwrath
step
  only completed(5229)
  turnin Target: Gahrron's Withering##5235 |goto Western Plaguelands 62.54,58.47
step
  only completed(5229)
  click Scourge Cauldron##176392
  accept Return to the Bulwark##5236 |goto Western Plaguelands 62.54,58.47
step
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5236 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  only completed(5229)
  talk High Executor Derrington##10837
  accept Mission Accomplished!##5238 |goto Tirisfal Glades 83.13,68.94
step
  only completed(5229)
  talk High Executor Derrington##10837
  turnin Mission Accomplished!##5238 |goto Tirisfal Glades 83.13,68.94 |tip {turninat}Tirisfal Glades
step
  note {travel}Thunder Bluff
  goto Thunder Bluff 57.24,87.37
]])
