-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Western Plaguelands (53-57)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Un'Goro Crater (51-55)",
	rev = "81de7ac4",
}, [[
step
  ding 52
step
  talk Janice Felstone##10778
  accept Better Late Than Never##5021 |goto Western Plaguelands 38.4,54.05
step
  only completed(5229)
  click Scourge Cauldron##176361
  accept Return to the Bulwark##5230 |goto Western Plaguelands 37.25,56.78
step
  note The ramblings of the ghostly woman indicated that she needed a package delivered. She claimed that it was where her horse was. As to where the horse is or where the package was to be delivered - the ghost remains incomprehensible.
  turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
step
  click Janice's Parcel##175894
  accept Better Late Than Never##5023 |goto Western Plaguelands 38.73,55.24
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  note Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Wolf##1817 |q 4984 |goto Western Plaguelands 46.52,44.91
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
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
  only level>=53
  talk Chromie##10667
  accept A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
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
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  only haveq(4971)
  note Use the Temporal Displacer near one of Andorhal's silos and uncover Temporal Parasites.
  kill Temporal Parasite##10717 |q 4971 |goto Western Plaguelands 48.26,65.77
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
  only haveq(4971)
  talk Chromie##10667
  turnin A Matter of Time##4971 |goto Western Plaguelands 39.46,66.76
step
  only completed(4971) level>=53
  talk Chromie##10667
  accept Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  only haveq(4972)
  note Locate 5 Andorhal Watches, found in lockboxes amongst the rubble of the city. Return with them to Chromie in the Andorhal Inn, Western Plaguelands.
  collect 5 Andorhal Watch##12638 |q 4972 |goto Western Plaguelands 42.69,69.6 |tip {dropsfrom}Small Lockbox
step
  only haveq(4972)
  talk Chromie##10667
  turnin Counting Out Time##4972 |goto Western Plaguelands 39.46,66.76
step
  only completed(5902)
  click Termite Barrel##177491
  accept A Plague Upon Thee##6390 |goto Western Plaguelands 48.34,31.99
step
  only level>=52
  talk Lord Tirion Fordring##12126
  accept Demon Dogs##5542 |goto Western Plaguelands 53.95,24.45
step
  only level>=52
  talk Lord Tirion Fordring##12126
  accept Blood Tinged Skies##5543 |goto Western Plaguelands 53.95,24.45
step
  only level>=52
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
  talk Kirsta Deepshadow##11610
  accept Unfinished Business##6025 |goto Western Plaguelands 51.92,28.06
step
  note Enter Hearthglen and find a high vantage point from which you can see the town and gauge the Scarlet Crusade's forces, then return to Kirsta Deepshadow in Western Plaguelands.
  goto Western Plaguelands 45.81,18.25 |tip Overlook Hearthglen from a high vantage point
step
  talk Kirsta Deepshadow##11610
  turnin Unfinished Business##6025 |goto Western Plaguelands 51.92,28.06
step
  only completed(5162) level>=57
  talk Jeziba##10976
  accept Catalogue of the Wayward##5164 |goto Western Plaguelands 39.37,66.78
step
  only completed(5162) haveq(5164)
  note Read from the Catalogue of the Wayward.
  turnin Catalogue of the Wayward##5164 |goto Western Plaguelands 39.35,66.6
step
  only completed(5229)
  note Bring the Filled Felstone Field Bottle to Shadow Priestess Vandis at the Bulwark, Western Plaguelands.
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5230 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  accept Target: Dalson's Tears##5231 |goto Tirisfal Glades 83.04,71.91
step
  only completed(5902)
  note Release the Plagueland Termites in the Northridge Lumber Mill, then return with the Barrel of Plagueland Termites to Mickey Levine at the Bulwark in Tirisfal Glades.
  talk Mickey Levine##11615
  turnin A Plague Upon Thee##6390 |goto Tirisfal Glades 83.29,72.34 |tip {turninat}Tirisfal Glades
step
  only not completed(5601) not haveq(5601)
  note Find Pamela Redpath.
  talk Pamela Redpath##10926
  turnin Little Pamela##5142 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  only haveq(5543)
  note Slay 30 Plaguebats and return to Tirion Fordring.
  kill Plaguebat##8600 |q 5543 |goto Eastern Plaguelands 28.22,64.82
step
  only haveq(5542)
  note Slay 20 Plaguehound Runts, 5 Plaguehounds and 5 Frenzied Plaguehounds. Return to Tirion Fordring when the task is complete.
  kill Plaguehound Runt##8596 |q 5542/1 |goto Eastern Plaguelands 20.15,61.44
  kill Frenzied Plaguehound##8598 |q 5542/3 |goto Eastern Plaguelands 45.86,30.91
  kill Plaguehound##8597 |q 5542 |goto Eastern Plaguelands 59.53,53.87
step
  only haveq(5544)
  note Seek out the Carrion Grubs and Devourers of the region. Slay them and harvest their meat. Return to Tirion Fordring when you have gathered 15 Slabs of Carrion Worm Meat.
  collect 15 Slab of Carrion Worm Meat##13853 |q 5544 |goto Eastern Plaguelands 42.91,55.69 |tip {dropsfrom}Carrion Grub, Carrion Devourer
step
  only haveq(5542)
  talk Tirion Fordring##1855
  turnin Demon Dogs##5542 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  only haveq(5543)
  talk Tirion Fordring##1855
  turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  only haveq(5544)
  talk Tirion Fordring##1855
  turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 5.16,35.57 |tip {turninat}Eastern Plaguelands
step
  note Check with the Royal Overseers of the Undercity to learn the whereabouts of a Jeremiah Felstone. There is usually a census officer located near guild and tabard registration.
  talk Royal Overseer Bauhaus##10781
  turnin Better Late Than Never##5023 |goto Undercity 69.79,43.16 |tip {turninat}Undercity
step
  talk Royal Overseer Bauhaus##10781
  accept The Jeremiah Blues##5049 |goto Undercity 69.79,43.16
step
  note Find Jeremiah Payson in the Undercity and see if he is in fact Jeremiah Felstone. If he is, then perhaps he'd like the package Janice Felstone made for him.
  talk Jeremiah Payson##8403
  turnin The Jeremiah Blues##5049 |goto Undercity 67.6,44.16 |tip {turninat}Undercity
step
  talk Jeremiah Payson##8403
  accept Good Luck Charm##5050 |goto Undercity 67.6,44.16
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
  only completed(5229)
  note Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Dalson's Tears Cauldron Key##13195 |q 5231 |goto Western Plaguelands 46.11,52.61 |tip {dropsfrom}Cauldron Lord Malvinious
step
  only completed(5229)
  turnin Target: Dalson's Tears##5231 |goto Western Plaguelands 46.18,51.9
step
  only completed(5229)
  click Scourge Cauldron##177289
  accept Return to the Bulwark##5232 |goto Western Plaguelands 46.18,51.9
step
  only completed(5229)
  note Bring the Filled Dalson's Tears Bottle to Shadow Priestess Vandis at the Bulwark, Western Plaguelands.
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5232 |goto Tirisfal Glades 83.04,71.91 |tip {turninat}Tirisfal Glades
step
  only completed(5229)
  talk Shadow Priestess Vandis##11055
  accept Target: Writhing Haunt##5233 |goto Tirisfal Glades 83.04,71.91
step
  only completed(5229)
  note Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Writhing Haunt Cauldron Key##13197 |q 5233 |goto Western Plaguelands 52.88,66.08 |tip {dropsfrom}Cauldron Lord Razarch
step
  only completed(5229)
  turnin Target: Writhing Haunt##5233 |goto Western Plaguelands 53.02,65.61
step
  only completed(5229)
  click Scourge Cauldron##176393
  accept Return to the Bulwark##5234 |goto Western Plaguelands 53.02,65.61
step
  only completed(5229)
  note Bring the Filled Writhing Haunt Bottle to Shadow Priestess Vandis at The Bulwark, Western Plaguelands.
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
  note Bring the Filled Gahrron's Withering Bottle to Shadow Priestess Vandis at the Bulwark, Western Plaguelands.
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
  note Based on the magic enchanted within the Glyphed Oaken Branch, its delivery to the Cenarion Circle in Thunder Bluff is the next step the tauren druid sought. Seek one of the druids there for assistance.
  talk Nara Wildmane##5770
  turnin Glyphed Oaken Branch##4987 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  note {travel}Thunder Bluff
  goto Thunder Bluff 78.62,28.56
]])
