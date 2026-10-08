-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tirisfal Glades (55-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Winterspring (54-60)",
}, [[
step
  note {fp}Morganus
  goto Tirisfal Glades 60.03,52.16 |tip {vendor}
step
  talk Harbinger Balthazad##10879
  accept The New Frontier##1004 |goto Undercity 63.9,44.08
step
  talk Apothecary Zinge##5204
  accept Vivian Lagrave##4133 |goto Undercity 50.14,67.97
step
  talk Chemist Fuely##10136
  accept ... and a Batch of Ooze##4294 |goto Undercity 47.45,73.35
step
  note Gather Un'Goro Slime Samples from any of the slimes in Un'Goro Crater. Then, using the Testing Equipment next to Chemist Fuely in Undercity, see which of your samples are the most pure. Bring 5 of the Pure Un'Goro Samples you find to Chemist Fuely.
  collect 5 Pure Un'Goro Sample##12236 |q 4294 |goto Undercity 47.74,73.57 |tip {dropsfrom}Testing Equipment
step
  talk Apothecary Zinge##5204
  accept Vivian Lagrave and the Darkstone Tablet##4769 |goto Undercity 50.14,67.97
step
  talk High Executor Derrington##10837
  accept Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  talk Shadow Priestess Vandis##11055
  accept Target: Dalson's Tears##5231 |goto Tirisfal Glades 83.04,71.91
step
  note Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Dalson's Tears Cauldron Key##13195 |q 5231 |goto Western Plaguelands 46.11,52.61 |tip {dropsfrom}Cauldron Lord Malvinious
step
  talk Shadow Priestess Vandis##11055
  accept Target: Writhing Haunt##5233 |goto Tirisfal Glades 83.04,71.91
step
  note Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Writhing Haunt Cauldron Key##13197 |q 5233 |goto Western Plaguelands 52.88,66.08 |tip {dropsfrom}Cauldron Lord Razarch
step
  talk Shadow Priestess Vandis##11055
  accept Target: Gahrron's Withering##5235 |goto Tirisfal Glades 83.04,71.91
step
  note Go to Gahrron's Withering in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Gahrron's Withering Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Gahrron's Withering Cauldron Key##13196 |q 5235 |goto Western Plaguelands 62.18,59.06 |tip {dropsfrom}Cauldron Lord Soulwrath
step
  talk High Executor Derrington##10837
  accept Mission Accomplished!##5238 |goto Tirisfal Glades 83.13,68.94
step
  talk Alexi Barov##11022
  accept Barov Family Fortune##5341 |goto Tirisfal Glades 83.06,71.6
step
  note Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Alexi Barov when you have completed this task.
  collect The Deed to Brill##13471 |q 5341 |goto Scholomance - Dungeon -1,-1
step
  talk Argent Officer Garush##10839
  accept Argent Dawn Commission##5405 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Quartermaster Hasana##10856
  accept Mantles of the Dawn##5504 |goto Tirisfal Glades 83.26,68.14
step
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Hasana at the Bulwark, Western Plaguelands.
  collect 10 Argent Dawn Valor Token##12844 |q 5504 |goto Tirisfal Glades 83.26,68.14
step
  talk Argent Quartermaster Hasana##10856
  accept Chromatic Mantle of the Dawn##5524 |goto Tirisfal Glades 83.26,68.14
step
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Hasana at the Bulwark, Western Plaguelands.
  collect 25 Argent Dawn Valor Token##12844 |q 5524 |goto Tirisfal Glades 83.26,68.14
step
  talk Apothecary Dithers##11057
  accept Araj's Scarab##5804 |goto Tirisfal Glades 83.28,69.23
step
  note Destroy Araj the Summoner and bring Araj's Scarab to Apothecary Dithers at the Bulwark, Western Plaguelands.
  collect Araj's Scarab##14610 |q 5804 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  talk Mickey Levine##11615
  accept A Plague Upon Thee##5901 |goto Tirisfal Glades 83.29,72.34
step
  note Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Mickey Levine at the Bulwark in Tirisfal Glades.
  collect Plagueland Termites##15043 |q 5901 |goto Eastern Plaguelands 29.68,22.91 |tip {dropsfrom}Large Termite Mound
step
  talk Lady Sylvanas Windrunner##10181
  accept The Champion of the Banshee Queen##5961 |goto Undercity 58.05,91.79
step
  talk Varimathras##2425
  accept The Crimson Courier##6145 |goto Undercity 56.25,92.2
step
  note Return to Eastern Plaguelands and track down the Crimson Courier. Kill the Courier and recover the Grand Crusader's Command.
  kill Crimson Courier##12337 |goto Eastern Plaguelands 51.39,30.59 |elite
  collect The Grand Crusader's Command##15868 |q 6145 |goto Eastern Plaguelands 51.39,30.59
step
  talk Harbinger Balthazad##10879
  accept Camp Mojache##7492 |goto Undercity 63.9,44.08
step
  talk Ralston Farnsley##14729
  accept A Donation of Wool##7813 |goto Undercity 71.66,29.23
step
  collect Wool Cloth##2592 |q 7813 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
step
  talk Ralston Farnsley##14729
  accept A Donation of Silk##7814 |goto Undercity 71.66,29.23
step
  collect Silk Cloth##4306 |q 7814 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Ralston Farnsley##14729
  accept A Donation of Mageweave##7817 |goto Undercity 71.66,29.23
step
  collect Mageweave Cloth##4338 |q 7817 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Solid Chest
step
  talk Argent Quartermaster Hasana##10856
  turnin Mantles of the Dawn##5504 |goto Tirisfal Glades 83.26,68.14
step
  talk Nathanos Blightcaller##11878
  turnin The Crimson Courier##6145 |goto Eastern Plaguelands 22.23,63.51 |tip {turninat}Eastern Plaguelands
step
  talk Ralston Farnsley##14729
  turnin A Donation of Wool##7813 |goto Undercity 71.66,29.23 |tip {turninat}Undercity
step
  talk Ralston Farnsley##14729
  turnin A Donation of Silk##7814 |goto Undercity 71.66,29.23 |tip {turninat}Undercity
step
  talk Ralston Farnsley##14729
  turnin A Donation of Mageweave##7817 |goto Undercity 71.66,29.23 |tip {turninat}Undercity
step
  talk Mickey Levine##11615
  turnin A Plague Upon Thee##5901 |goto Tirisfal Glades 83.29,72.34
step
  talk Argent Quartermaster Hasana##10856
  turnin Chromatic Mantle of the Dawn##5524 |goto Tirisfal Glades 83.26,68.14
step
  talk Argent Officer Garush##10839
  turnin Argent Dawn Commission##5405 |goto Tirisfal Glades 83.19,68.45
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave and the Darkstone Tablet##4769 |goto Badlands 2.9,47.76 |tip {turninat}Badlands
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave##4133 |goto Badlands 2.9,47.76 |tip {turninat}Badlands
step
  talk Apothecary Dithers##11057
  turnin Araj's Scarab##5804 |goto Tirisfal Glades 83.28,69.23
step
  talk Talo Thornhoof##7776
  turnin Camp Mojache##7492 |goto Feralas 76.18,43.83 |tip {turninat}Feralas
step
  talk Chemist Fuely##10136
  turnin ... and a Batch of Ooze##4294 |goto Undercity 47.45,73.35 |tip {turninat}Undercity
step
  talk Nathanos Blightcaller##11878
  turnin The Champion of the Banshee Queen##5961 |goto Eastern Plaguelands 22.23,63.51 |tip {turninat}Eastern Plaguelands
step
  talk Alexi Barov##11022
  turnin Barov Family Fortune##5341 |goto Tirisfal Glades 83.06,71.6
step
  talk High Executor Derrington##10837
  turnin Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin The New Frontier##1004 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  turnin Target: Dalson's Tears##5231 |goto Western Plaguelands 46.18,51.9 |tip {turninat}Western Plaguelands
step
  turnin Target: Writhing Haunt##5233 |goto Western Plaguelands 53.02,65.61 |tip {turninat}Western Plaguelands
step
  turnin Target: Gahrron's Withering##5235 |goto Western Plaguelands 62.54,58.47 |tip {turninat}Western Plaguelands
step
  talk High Executor Derrington##10837
  turnin Mission Accomplished!##5238 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.13,68.94
step
  talk Alexi Barov##11022
  accept The Last Barov##5342 |goto Tirisfal Glades 83.06,71.6
step
  note Travel to Chillwind Camp - Alliance territory - and assassinate Weldon Barov. Take his head and return to Alexi Barov.
  kill Weldon Barov##11023 |goto Western Plaguelands 43.45,83.73 |elite
  collect Head of Weldon Barov##13469 |q 5342 |goto Western Plaguelands 43.45,83.73
step
  talk High Executor Derrington##10837
  accept The Key to Scholomance##5511 |goto Tirisfal Glades 83.13,68.94
step
  talk Mickey Levine##11615
  accept A Plague Upon Thee##5902 |goto Tirisfal Glades 83.29,72.34
step
  talk Ralston Farnsley##14729
  accept A Donation of Runecloth##7818 |goto Undercity 71.66,29.23
step
  collect Runecloth##14047 |q 7818 |goto Undercity 71.66,29.23 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  kill Andorhal Tower One##10902 |q 5098 |goto Western Plaguelands 40.05,71.6
step
  talk High Executor Derrington##10837
  turnin The Key to Scholomance##5511 |goto Tirisfal Glades 83.13,68.94
step
  talk Ralston Farnsley##14729
  turnin A Donation of Runecloth##7818 |goto Undercity 71.66,29.23 |tip {turninat}Undercity
step
  turnin A Plague Upon Thee##5902 |goto Western Plaguelands 48.34,31.99 |tip {turninat}Western Plaguelands
step
  talk Alexi Barov##11022
  turnin The Last Barov##5342 |goto Tirisfal Glades 83.06,71.6
step
  talk High Executor Derrington##10837
  turnin All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk Shadow Priestess Vandis##11055
  turnin The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.04,71.91
step
  talk High Executor Derrington##10837
  accept Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  note Bring Araj's Phylactery Shard to High Executor Derrington at the Bulwark, Western Plaguelands.
  collect Araj's Phylactery Shard##17114 |q 105 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  talk High Executor Derrington##10837
  accept Scholomance##838 |goto Tirisfal Glades 83.13,68.94
step
  talk Shadow Priestess Vandis##11055
  accept Target: Felstone Field##5229 |goto Tirisfal Glades 83.04,71.91
step
  note Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Felstone Field Cauldron Key##13194 |q 5229 |goto Western Plaguelands 36.93,57.41 |tip {dropsfrom}Cauldron Lord Bilemaw
step
  talk Apothecary Dithers##11057
  turnin Scholomance##838 |goto Tirisfal Glades 83.28,69.23
step
  talk High Executor Derrington##10837
  turnin Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  turnin Target: Felstone Field##5229 |goto Western Plaguelands 37.25,56.78 |tip {turninat}Western Plaguelands
step
  talk Apothecary Dithers##11057
  accept Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
  note Bring 15 Skeletal Fragments to Apothecary Dithers at the Bulwark, Western Plaguelands.
  collect 15 Skeletal Fragments##14619 |q 964 |goto Western Plaguelands 38.99,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Apothecary Dithers##11057
  turnin Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
  talk Apothecary Dithers##11057
  accept Mold Rhymes With...##5514 |goto Tirisfal Glades 83.28,69.23
step
  talk Krinkle Goodsteel##5411
  turnin Mold Rhymes With...##5514 |goto Tanaris 51.46,28.81 |tip {turninat}Tanaris
step
  note {travel}Winterspring
  goto Winterspring 31.27,45.16
]])
