-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Badlands (50-54)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tirisfal Glades (53-60)",
}, [[
step
  only completed(3568)
  talk Chemist Cuely##8390
  accept Seeping Corruption##3569 |goto Undercity 48.71,71.39
step
  talk Chemist Fuely##10136
  accept A Sample of Slime...##4293 |goto Undercity 47.45,73.35
step
  only Rogue
  talk Ormok##3328
  accept A Simple Request##8233 |goto Orgrimmar 43.9,54.63
step
  only completed(692)
  talk Theldurin the Lost##2785
  accept Summoning the Princess##656 |goto Badlands 51.39,76.87
step
  note {fp}Gorrik
  goto Badlands 3.99,44.78 |tip {vendor}
step
  only completed(782)
  talk Gorn##1068
  accept Broken Alliances##793 |goto Badlands 2.91,45.6
step
  talk Thal'trak Proudtusk##9082
  accept Dreadmaul Rock##3821 |goto Badlands 3.36,48.06
step
  talk Thunderheart##9084
  accept Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  only completed(782)
  note Use the Sign of the Earth to activate the Pillars of Diamond, Opal, and Amethyst and obtain the Runestones.
  kill Blacklash##2757 |goto Badlands 81.88,49.46 |elite
  collect Blacklash's Bindings##4615 |q 793 |goto Badlands 81.88,49.46
step
  only completed(782)
  talk Gorn##1068
  turnin Broken Alliances##793 |goto Badlands 2.91,45.6
step
  only completed(3568)
  talk Thersa Windsong##8393
  turnin Seeping Corruption##3569 |goto Undercity 49.04,70.8 |tip {turninat}Undercity
step
  talk Sha'ni Proudtusk##9136
  turnin Dreadmaul Rock##3821 |goto Burning Steppes 79.95,45.4 |tip {turninat}Burning Steppes
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88 |tip {turninat}Alterac Mountains
step
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  talk Apothecary Zinge##5204
  accept Vivian Lagrave##4133 |goto Undercity 50.14,67.97
step
  only completed(4082)
  talk Lexlort##9080
  accept Grark Lorkrub##4122 |goto Badlands 5.88,47.63
step
  only completed(692)
  note Go to the Shards of Myzrael, summon her and defeat her.
  collect Eldritch Shackles##4473 |q 656 |goto Arathi Highlands 62.62,34.06 |tip {dropsfrom}Myzrael
step
  note Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment.
  kill Overmaster Pyron##9026 |q 3906 |goto Eastern Kingdoms - the continent map 46.82,67.7 |elite
step
  note Gather Felwood Slime Samples from any of the slimes in Felwood. Then, using the Testing Equipment next to Chemist Fuely in Undercity, see which of your samples are the most corrupt. Bring 5 of the Corrupted Felwood Samples you find to Chemist Fuely.
  collect 5 Corrupted Felwood Sample##12234 |q 4293 |goto Undercity 47.85,73.48 |tip {dropsfrom}Testing Equipment
step
  note Venture to the Burning Steppes and recover 10 Fractured Elemental Shards for Hierophant Theodora Mulvadania.
  collect Fractured Elemental Shard##11266 |q 4061 |goto Burning Steppes 55.47,49.02 |tip {dropsfrom}Greater Obsidian Elemental, War Reaver, Malfunctioning Reaver
step
  only completed(692)
  turnin Summoning the Princess##656 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  talk Thunderheart##9084
  turnin Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  talk Chemist Fuely##10136
  turnin A Sample of Slime...##4293 |goto Undercity 47.45,73.35 |tip {turninat}Undercity
step
  talk Hierophant Theodora Mulvadania##9079
  turnin The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave##4133 |goto Badlands 2.9,47.76
step
  only completed(4082)
  talk Grark Lorkrub##9520
  turnin Grark Lorkrub##4122 |goto Burning Steppes 40.2,34.24 |tip {turninat}Burning Steppes
step
  only completed(3568)
  talk Chemist Cuely##8390
  accept Seeping Corruption##3570 |goto Undercity 48.71,71.39
step
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4062 |goto Badlands 3.02,47.81
step
  only completed(3568)
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3570 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  talk Lotwil Veriatus##2921
  turnin The Rise of the Machines##4062 |goto Badlands 25.95,44.87
step
  note {travel}Undercity
  goto Undercity 63.9,44.08
]])
