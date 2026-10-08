-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tirisfal Glades (53-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Western Plaguelands (53-57)",
	rev = "8d063078",
}, [[
step
  only not completed(5093) not completed(5095) not haveq(5093) not haveq(5095)
  talk Harbinger Balthazad##10879
  accept A Call to Arms: The Plaguelands!##5094 |goto Undercity 63.9,44.08
step
  only not completed(5093) not completed(5095) not haveq(5093) not haveq(5095)
  talk High Executor Derrington##10837
  turnin A Call to Arms: The Plaguelands!##5094 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  only not completed(5401) not completed(5503) not haveq(5401) not haveq(5503)
  talk Argent Officer Garush##10839
  accept Argent Dawn Commission##5405 |goto Tirisfal Glades 83.19,68.45
step
  talk Mickey Levine##11615
  accept A Plague Upon Thee##5901 |goto Tirisfal Glades 83.29,72.34
step
  talk High Executor Derrington##10837
  turnin Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  only not completed(5401) not completed(5503) not haveq(5401) not haveq(5503)
  talk Argent Officer Garush##10839
  turnin Argent Dawn Commission##5405 |goto Tirisfal Glades 83.19,68.45
step
  talk High Executor Derrington##10837
  accept The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk Shadow Priestess Vandis##11055
  turnin The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.04,71.91
step
  talk Shadow Priestess Vandis##11055
  accept Target: Felstone Field##5229 |goto Tirisfal Glades 83.04,71.91
step
  only not completed(5507) not completed(5513) not haveq(5507) not haveq(5513)
  talk Argent Quartermaster Hasana##10856
  accept Mantles of the Dawn##5504 |goto Tirisfal Glades 83.26,68.14
step
  only not completed(5507) not completed(5513) not haveq(5507) not haveq(5513)
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Hasana at the Bulwark, Western Plaguelands.
  collect 10 Argent Dawn Valor Token##12844 |q 5504 |goto Tirisfal Glades 83.26,68.14
step
  only not completed(5517) not completed(5521) not haveq(5517) not haveq(5521)
  talk Argent Quartermaster Hasana##10856
  accept Chromatic Mantle of the Dawn##5524 |goto Tirisfal Glades 83.26,68.14
step
  only not completed(5517) not completed(5521) not haveq(5517) not haveq(5521)
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Hasana at the Bulwark, Western Plaguelands.
  collect 25 Argent Dawn Valor Token##12844 |q 5524 |goto Tirisfal Glades 83.26,68.14
step
  only completed(5802)
  talk Apothecary Dithers##11057
  accept Araj's Scarab##5804 |goto Tirisfal Glades 83.28,69.23
step
  only not completed(5507) not completed(5513) not haveq(5507) not haveq(5513)
  talk Argent Quartermaster Hasana##10856
  turnin Mantles of the Dawn##5504 |goto Tirisfal Glades 83.26,68.14
step
  only not completed(5517) not completed(5521) not haveq(5517) not haveq(5521)
  talk Argent Quartermaster Hasana##10856
  turnin Chromatic Mantle of the Dawn##5524 |goto Tirisfal Glades 83.26,68.14
step
  only not completed(1000) not completed(1018) not haveq(1000) not haveq(1018)
  talk Harbinger Balthazad##10879
  accept The New Frontier##1004 |goto Undercity 63.9,44.08
step
  talk Chemist Fuely##10136
  accept ... and a Batch of Ooze##4294 |goto Undercity 47.45,73.35
step
  talk Apothecary Zinge##5204
  accept Vivian Lagrave and the Darkstone Tablet##4769 |goto Undercity 50.14,67.97
step
  note Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Mickey Levine at the Bulwark in Tirisfal Glades.
  collect Plagueland Termites##15043 |q 5901 |goto Eastern Plaguelands 28.82,23.2 |tip {dropsfrom}Large Termite Mound
step
  note Gather Un'Goro Slime Samples from any of the slimes in Un'Goro Crater. Then, using the Testing Equipment next to Chemist Fuely in Undercity, see which of your samples are the most pure. Bring 5 of the Pure Un'Goro Samples you find to Chemist Fuely.
  collect 5 Pure Un'Goro Sample##12236 |q 4294 |goto Undercity 47.74,73.57 |tip {dropsfrom}Testing Equipment
step
  only completed(5802)
  note Destroy Araj the Summoner and bring Araj's Scarab to Apothecary Dithers at the Bulwark, Western Plaguelands.
  collect Araj's Scarab##14610 |q 5804 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  talk Mickey Levine##11615
  turnin A Plague Upon Thee##5901 |goto Tirisfal Glades 83.29,72.34
step
  only not completed(1000) not completed(1018) not haveq(1000) not haveq(1018)
  talk Arch Druid Hamuul Runetotem##5769
  turnin The New Frontier##1004 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Chemist Fuely##10136
  turnin ... and a Batch of Ooze##4294 |goto Undercity 47.45,73.35 |tip {turninat}Undercity
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave and the Darkstone Tablet##4769 |goto Badlands 2.9,47.76 |tip {turninat}Badlands
step
  only completed(5802)
  talk Apothecary Dithers##11057
  turnin Araj's Scarab##5804 |goto Tirisfal Glades 83.28,69.23
step
  talk Mickey Levine##11615
  accept A Plague Upon Thee##5902 |goto Tirisfal Glades 83.29,72.34
step
  only completed(5802)
  talk High Executor Derrington##10837
  accept The Key to Scholomance##5511 |goto Tirisfal Glades 83.13,68.94
step
  turnin A Plague Upon Thee##5902 |goto Western Plaguelands 48.34,31.99 |tip {turninat}Western Plaguelands
step
  only completed(5802)
  talk High Executor Derrington##10837
  turnin The Key to Scholomance##5511 |goto Tirisfal Glades 83.13,68.94
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  talk Andorhal Tower One##10902 |q 5098 |goto Western Plaguelands 40.05,71.6
step
  talk High Executor Derrington##10837
  turnin All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept Scholomance##838 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  note Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Felstone Field Cauldron Key##13194 |q 5229 |goto Western Plaguelands 36.93,57.41 |tip {dropsfrom}Cauldron Lord Bilemaw
step
  note Bring Araj's Phylactery Shard to High Executor Derrington at the Bulwark, Western Plaguelands.
  collect Araj's Phylactery Shard##17114 |q 105 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  turnin Target: Felstone Field##5229 |goto Western Plaguelands 37.25,56.78 |tip {turninat}Western Plaguelands
step
  talk Apothecary Dithers##11057
  turnin Scholomance##838 |goto Tirisfal Glades 83.28,69.23
step
  talk High Executor Derrington##10837
  turnin Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  talk Apothecary Dithers##11057
  accept Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
  note Bring 15 Skeletal Fragments to Apothecary Dithers at the Bulwark, Western Plaguelands.
  collect 15 Skeletal Fragments##14619 |q 964 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Apothecary Dithers##11057
  turnin Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
  note {travel}Western Plaguelands
  goto Western Plaguelands 38.4,54.05
]])
