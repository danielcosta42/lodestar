-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tirisfal Glades (53-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Western Plaguelands (53-57)",
	rev = "ae6d2afc",
}, [[
step
  ding 51
step
  only not completed(5093) not completed(5095) not haveq(5093) not haveq(5095)
  talk Harbinger Balthazad##10879
  accept A Call to Arms: The Plaguelands!##5094 |goto Undercity 63.9,44.08
step
  only not completed(5093) not completed(5095) not haveq(5093) not haveq(5095)
  note Seek out High Executor Derrington. His base camp is located at the Bulwark, east of Tirisfal Glade and the Undercity.
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
  only not completed(5401) not completed(5503) not haveq(5401) not haveq(5503)
  talk Argent Officer Garush##10839
  turnin Argent Dawn Commission##5405 |goto Tirisfal Glades 83.19,68.45
step
  only completed(5802) level>=55
  talk Apothecary Dithers##11057
  accept Araj's Scarab##5804 |goto Tirisfal Glades 83.28,69.23
step
  note Use the Empty Termite Jar on the Termite Mounds in Eastern Plaguelands. After you've gathered 100 Plagueland Termites, return to Mickey Levine at the Bulwark in Tirisfal Glades.
  collect 100 Plagueland Termites##15043 |q 5901 |goto Eastern Plaguelands 28.82,23.2 |tip {dropsfrom}Large Termite Mound
step
  talk Mickey Levine##11615
  turnin A Plague Upon Thee##5901 |goto Tirisfal Glades 83.29,72.34
step
  talk Mickey Levine##11615
  accept A Plague Upon Thee##5902 |goto Tirisfal Glades 83.29,72.34
step
  only level>=57
  talk Apothecary Zinge##5204
  accept Vivian Lagrave and the Darkstone Tablet##4769 |goto Undercity 50.14,67.97
step
  only haveq(4769)
  note Speak with Shadowmage Vivian Lagrave.
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave and the Darkstone Tablet##4769 |goto Badlands 2.9,47.76 |tip {turninat}Badlands
step
  note Find someplace suitable in the center of the Northridge Lumber Mill in Western Plaguelands to place the Barrel of Plagueland Termites.
  turnin A Plague Upon Thee##5902 |goto Western Plaguelands 48.34,31.99 |tip {turninat}Western Plaguelands
step
  note Proceed to the Scarlet Crusade's base camp between Felstone Field and Dalson's Tears and destroy their command tent.
  goto Western Plaguelands 40.72,52.04 |tip Destroy the command tent and plant the Scourge banner in the camp
step
  only completed(5802) haveq(5804)
  note Destroy Araj the Summoner and bring Araj's Scarab to Apothecary Dithers at the Bulwark, Western Plaguelands.
  collect Araj's Scarab##14610 |q 5804 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  only completed(5802) haveq(5804)
  talk Apothecary Dithers##11057
  turnin Araj's Scarab##5804 |goto Tirisfal Glades 83.28,69.23
step
  talk High Executor Derrington##10837
  turnin Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  only completed(5802) completed(5804) level>=55
  talk High Executor Derrington##10837
  accept The Key to Scholomance##5511 |goto Tirisfal Glades 83.13,68.94
step
  only completed(5802) haveq(5511)
  talk High Executor Derrington##10837
  turnin The Key to Scholomance##5511 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  note Speak with Shadow Priestess Vandis at the Bulwark, Western Plaguelands.
  talk Shadow Priestess Vandis##11055
  turnin The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.04,71.91
step
  talk Shadow Priestess Vandis##11055
  accept Target: Felstone Field##5229 |goto Tirisfal Glades 83.04,71.91
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  use Andorhal Tower One##10902 |q 5098/1 |goto Western Plaguelands 40.05,71.6 |tip {useit}
  use Andorhal Tower Two##10903 |q 5098/2 |goto Western Plaguelands 42.33,66.24 |tip {useit}
  use Andorhal Tower Three##10904 |q 5098/3 |goto Western Plaguelands 44.3,63.25 |tip {useit}
  use Andorhal Tower Four##10905 |q 5098 |goto Western Plaguelands 46.62,71.05 |tip {useit}
step
  note Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Felstone Field Cauldron Key##13194 |q 5229 |goto Western Plaguelands 36.93,57.41 |tip {dropsfrom}Cauldron Lord Bilemaw
step
  turnin Target: Felstone Field##5229 |goto Western Plaguelands 37.25,56.78 |tip {turninat}Western Plaguelands
step
  talk High Executor Derrington##10837
  turnin All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  only level>=55
  talk High Executor Derrington##10837
  accept Scholomance##838 |goto Tirisfal Glades 83.13,68.94
step
  only level>=60
  talk High Executor Derrington##10837
  accept Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  only haveq(838)
  note Speak with Apothecary Dithers at the Bulwark, Western Plaguelands.
  talk Apothecary Dithers##11057
  turnin Scholomance##838 |goto Tirisfal Glades 83.28,69.23
step
  only completed(838) level>=55
  talk Apothecary Dithers##11057
  accept Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
  only haveq(105)
  note Bring Araj's Phylactery Shard to High Executor Derrington at the Bulwark, Western Plaguelands.
  kill Araj the Summoner##1852 |elite
  goto Western Plaguelands 45.27,69.21
step
  only haveq(105)
  note Bring Araj's Phylactery Shard to High Executor Derrington at the Bulwark, Western Plaguelands.
  collect Araj's Phylactery Shard##17114 |q 105 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  only haveq(964)
  note Bring 15 Skeletal Fragments to Apothecary Dithers at the Bulwark, Western Plaguelands.
  collect 15 Skeletal Fragments##14619 |q 964 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  only haveq(105)
  talk High Executor Derrington##10837
  turnin Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  only haveq(964)
  talk Apothecary Dithers##11057
  turnin Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
  note {travel}Western Plaguelands
  goto Western Plaguelands 38.4,54.05
]])
