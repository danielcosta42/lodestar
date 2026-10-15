-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Badlands (50-54)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tirisfal Glades (53-60)",
	rev = "21b1fc37",
}, [[
step
  ding 49
step
  only completed(692)
  talk Theldurin the Lost##2785
  accept Summoning the Princess##656 |goto Badlands 51.39,76.87
step
  note {fp}Gorrik
  goto Badlands 3.99,44.78 |tip {vendor}
step
  only completed(782) level>=50
  talk Gorn##1068
  accept Broken Alliances##793 |goto Badlands 2.91,45.6
step
  only completed(782) haveq(793)
  note Use the Sign of the Earth to activate the Pillars of Diamond, Opal, and Amethyst and obtain the Runestones.
  kill Blacklash##2757 |q 793/1 |goto Badlands 81.88,49.46 |elite
  collect Blacklash's Bindings##4615 |q 793/1 |goto Badlands 81.88,49.46
  kill Hematus##2759 |q 793 |goto Badlands 82.03,49.93 |elite
  collect Chains of Hematus##4645 |q 793 |goto Badlands 82.03,49.93
step
  only completed(782) haveq(793)
  talk Gorn##1068
  turnin Broken Alliances##793 |goto Badlands 2.91,45.6
step
  talk Thal'trak Proudtusk##9082
  accept Dreadmaul Rock##3821 |goto Badlands 3.36,48.06
step
  only level>=52
  talk Thunderheart##9084
  accept Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  only level>=52
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  only completed(4082) level>=52
  talk Lexlort##9080
  accept Grark Lorkrub##4122 |goto Badlands 5.88,47.63
step
  only completed(692)
  note Go to the Shards of Myzrael, summon her and defeat her.
  collect Eldritch Shackles##4473 |q 656 |goto Arathi Highlands 62.62,34.06 |tip {dropsfrom}Myzrael
step
  only completed(692)
  turnin Summoning the Princess##656 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  only completed(3568)
  talk Chemist Cuely##8390
  accept Seeping Corruption##3569 |goto Undercity 48.71,71.39
step
  only completed(3568)
  note Give Cuely's Elixir to Thersa Windsong in Undercity.
  talk Thersa Windsong##8393
  turnin Seeping Corruption##3569 |goto Undercity 49.04,70.8 |tip {turninat}Undercity
step
  only completed(3568)
  talk Chemist Cuely##8390
  accept Seeping Corruption##3570 |goto Undercity 48.71,71.39
step
  only completed(3568)
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3570 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  only level>=50
  talk Apothecary Zinge##5204
  accept Vivian Lagrave##4133 |goto Undercity 50.14,67.97
step
  only Rogue level>=50
  talk Miles Dexter##4583
  accept A Simple Request##8233 |goto Undercity 85.21,71.57
step
  note Venture forth to the Burning Steppes and find out what became of Sha'ni Proudtusk.
  talk Sha'ni Proudtusk##9136
  turnin Dreadmaul Rock##3821 |goto Burning Steppes 79.95,45.4 |tip {turninat}Burning Steppes
step
  only haveq(4061)
  note Venture to the Burning Steppes and recover 10 Fractured Elemental Shards for Hierophant Theodora Mulvadania.
  collect 10 Fractured Elemental Shard##11266 |q 4061 |goto Burning Steppes 59.4,37.85 |tip {dropsfrom}War Reaver, Greater Obsidian Elemental, Malfunctioning Reaver
step
  only completed(4082) haveq(4122)
  note Travel to the Burning Steppes and find Grark Lorkrub. You recall Lexlort mentioning that he was last seen in a massive Blackrock fortress.
  talk Grark Lorkrub##9520
  turnin Grark Lorkrub##4122 |goto Burning Steppes 40.2,34.24 |tip {turninat}Burning Steppes
step
  only haveq(3906)
  note Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment.
  kill Overmaster Pyron##9026 |q 3906 |goto Eastern Kingdoms - the continent map 46.82,67.7 |elite
step
  only haveq(3906)
  talk Thunderheart##9084
  turnin Disharmony of Flame##3906 |goto Badlands 3.33,48.26
step
  only haveq(4061)
  talk Hierophant Theodora Mulvadania##9079
  turnin The Rise of the Machines##4061 |goto Badlands 3.02,47.81
step
  only completed(4061) level>=52
  talk Hierophant Theodora Mulvadania##9079
  accept The Rise of the Machines##4062 |goto Badlands 3.02,47.81
step
  only haveq(4133)
  note Speak with Shadowmaster Vivian Lagrave in Kargath.
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave##4133 |goto Badlands 2.9,47.76
step
  only haveq(4062)
  note Take the Elemental Shard Sample to Lotwil Veriatus.
  talk Lotwil Veriatus##2921
  turnin The Rise of the Machines##4062 |goto Badlands 25.95,44.87
step
  only Rogue haveq(8233)
  note Speak with Lord Jorach Ravenholdt in Ravenholdt Manor.
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88 |tip {turninat}Alterac Mountains
step
  note {travel}Tirisfal Glades
  goto Tirisfal Glades 83.13,68.94
]])
