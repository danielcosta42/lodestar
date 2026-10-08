-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tirisfal Glades (13-13)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Silverpine Forest (11-20)",
}, [[
step
  only Skyborne completed(95350)
  talk Thrall##4949
  accept Exploring the Horde##93739 |goto Orgrimmar 31.73,37.82
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  accept A Lesson in Divinity##94435 |goto Undercity 65.62,37.94
step
  only completed(355)
  talk Magistrate Sevren##1499
  accept The Family Crypt##408 |goto Tirisfal Glades 61.26,50.84
step
  only completed(355)
  note Kill 8 Wailing Ancestors and 8 Rotting Ancestors.
  kill Wailing Ancestor##1534 |q 408 |goto Tirisfal Glades 51.87,28.76
step
  only completed(355)
  talk Magistrate Sevren##1499
  turnin The Family Crypt##408 |goto Tirisfal Glades 61.26,50.84
step
  talk Deathguard Terrence##1738
  accept The Argent Emissary##96895 |goto Tirisfal Glades 63.47,56.55
step
  talk Hadric Harlson##267009
  accept The Cult of the Damned##96897 |goto Tirisfal Glades 65.88,61.13
step
  talk Hadric Harlson##267009
  accept Remnants of War##96898 |goto Tirisfal Glades 65.88,61.13
step
  talk Hadric Harlson##267009
  accept Bandarion Keep##96899 |goto Tirisfal Glades 65.88,61.13
step
  talk Deathguard Linnea##1495
  accept Rear Guard Patrol##99156 |goto Tirisfal Glades 65.49,60.25
step
  note Kill 8 Dark Neophytes and 8 Dark Enforcers in Tirisfal Glades.
  kill Dark Neophyte##267006 |q 96897 |goto Tirisfal Glades 68.16,64.61
step
  note Gather 12 Necrotic Crystal Fragments in Tirisfal Glades.
  collect 12 Necrotic Crystal Fragment##275851 |q 96898 |goto Tirisfal Glades 68.16,64.61 |tip {dropsfrom}Dark Neophyte, Dark Enforcer, Naxxramas Crystal Fragment
step
  talk Hadric Harlson##267009
  turnin The Argent Emissary##96895 |goto Tirisfal Glades 65.88,61.13
step
  talk Hadric Harlson##267009
  turnin The Cult of the Damned##96897 |goto Tirisfal Glades 65.88,61.13
step
  talk Hadric Harlson##267009
  turnin Remnants of War##96898 |goto Tirisfal Glades 65.88,61.13
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin A Lesson in Divinity##94435 |goto Tirisfal Glades 22.05,44.7
step
  talk Leonid Barthalomew the Revered##267008
  turnin Bandarion Keep##96899 |goto Tirisfal Glades 22.01,44.77
step
  talk Leonid Barthalomew the Revered##267008
  accept A Righteous Cause##96896 |goto Tirisfal Glades 22.01,44.77
step
  talk Leonid Barthalomew the Revered##267008
  accept Leonid's Letter##98545 |goto Tirisfal Glades 22.01,44.77
step
  talk Leonid Barthalomew the Revered##267008
  turnin A Righteous Cause##96896 |goto Tirisfal Glades 22.01,44.77
step
  note Bring Riptear's Heart to Deathguard Linnea.
  collect Riptear's Heart##286326 |q 99156 |goto Tirisfal Glades 84.28,45.38 |tip {dropsfrom}Riptear
step
  talk Deathguard Linnea##1495
  turnin Rear Guard Patrol##99156 |goto Tirisfal Glades 65.49,60.25
step
  talk Glix Xizzix##272526
  turnin Leonid's Letter##98545 |goto Undercity 69.84,47.13 |tip {turninat}Undercity
step
  talk Deathguard Kristof##251001
  accept The Wrath of Rath'mael##92422 |goto Tirisfal Glades 65.22,60.19
step
  note Kill Rath'mael in the Ruins of Lordaeron for Deathguard Kristof in Brill.
  kill Rath'mael##250657 |q 92422
step
  only Skyborne completed(95350)
  note Speak with Nazgrel in Grommash Hold to receive further instructions. Use the instructions received to locate and speak with Vol'jin, Cairne Bloodhoof, and Lady Sylvanas Windrunner.
  talk Nazgrel##3230 |q 93739 |goto Orgrimmar 32.3,35.75
step
  only Skyborne completed(95350)
  talk Thrall##4949
  turnin Exploring the Horde##93739 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Deathguard Kristof##251001
  turnin The Wrath of Rath'mael##92422 |goto Tirisfal Glades 65.22,60.19
step
  note {travel}Orgrimmar
  goto Orgrimmar 31.73,37.82
]])
