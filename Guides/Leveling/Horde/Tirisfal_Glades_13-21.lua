-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Tirisfal Glades (13-21)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Silverpine Forest (11-18)",
	rev = "1d7abab7",
}, [[
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
  talk Deathguard Falgan##257663
  accept A Lesson in Divinity##94440 |goto Tirisfal Glades 86.67,47.74
step
  only Undead Paladin
  note Retrieve the Scarlet Crusade Attack Plans from the Scarlet Crusaders at Venomweb Vale, and return to Deathguard Billmuth at Tyr's Watch.
  collect Scarlet Crusade Attack Plans##264693 |q 94440 |goto Tirisfal Glades 78.38,56.03 |tip {dropsfrom}Scarlet Zealot, Scarlet Friar, Tarnished Exemplar
step
  note Bring Riptear's Heart to Deathguard Linnea.
  collect Riptear's Heart##286326 |q 99156 |goto Tirisfal Glades 84.28,45.38 |tip {dropsfrom}Riptear
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin A Lesson in Divinity##94435 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  turnin A Lesson in Divinity##94440 |goto Tirisfal Glades 21.95,44.57
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
  only Undead Paladin
  talk Danitha Morr##246378
  accept A Lesson in Divinity##94427 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept A Lesson in Divinity##94436 |goto Tirisfal Glades 22.05,44.7
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  accept A Lesson in Divinity##94438 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  accept A Lesson in Divinity##94441 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Deathguard Billmuth##257655
  turnin A Lesson in Divinity##94436 |goto Tirisfal Glades 21.95,44.57
step
  only Undead Paladin
  talk Danitha Morr##246378
  turnin A Lesson in Divinity##94441 |goto Tirisfal Glades 22.05,44.7
step
  talk Leonid Barthalomew the Revered##267008
  turnin A Righteous Cause##96896 |goto Tirisfal Glades 22.01,44.77
step
  talk Deathguard Linnea##1495
  turnin Rear Guard Patrol##99156 |goto Tirisfal Glades 65.49,60.25
step
  only Undead Paladin
  talk Deathguard Falgan##257663
  turnin A Lesson in Divinity##94438 |goto Tirisfal Glades 86.67,47.74
step
  talk Deathguard Kristof##251001
  accept The Wrath of Rath'mael##92422 |goto Tirisfal Glades 65.22,60.19
step
  note Kill Rath'mael in the Ruins of Lordaeron for Deathguard Kristof in Brill.
  kill Rath'mael##250657 |q 92422
step
  talk Deathguard Kristof##251001
  turnin The Wrath of Rath'mael##92422 |goto Tirisfal Glades 65.22,60.19
step
  only Undead Paladin
  talk Danitha Morr##246378
  accept Diplomatic Incident##91858 |goto Tirisfal Glades 22.05,44.7
step
  talk Glix Xizzix##272526
  turnin Leonid's Letter##98545 |goto Undercity 69.84,47.13 |tip {turninat}Undercity
step
  only Undead Paladin
  talk Tanis Alderwood##257648
  turnin A Lesson in Divinity##94427 |goto Undercity 65.62,37.94 |tip {turninat}Undercity
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin Diplomatic Incident##91858 |goto Silverpine Forest 43.4,41 |tip {turninat}Silverpine Forest
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97289 |goto Undercity 48.82,69.28
step
  talk Unfinished Abomination##271613
  accept Unending Torment##97290 |goto Undercity 47.52,65.9
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97291 |goto Undercity 48.82,69.28
step
  note Collect a Toxic Skullcap from Tawny Grisette in the Trade Quarter, Blisterweed near the Herbalism Trainer, and Essence of Agony from the poison vendor in the Rogues' Quarter for Master Apothecary Faranell in Undercity.
  buy Toxic Skullcap##281246 |q 97291 |goto Undercity 65.19,49.84
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97292 |goto Undercity 48.82,69.28
step
  only Warrior completed(1848)
  talk Velora Nitely##6411
  accept Dragonmaw Shinbones##1846 |goto Undercity 62.14,39.14
step
  only Warrior completed(1848)
  note Bring 8 Sturdy Dragonmaw Shinbones to Velora Nitely in the Undercity.
  collect 8 Sturdy Dragonmaw Shinbone##7134 |q 1846 |goto Wetlands 45.83,45.42 |tip {dropsfrom}Dragonmaw Raider, Dragonmaw Swamprunner, Dragonmaw Centurion
step
  talk Unfinished Abomination##271613
  turnin Unending Torment##97289 |goto Undercity 47.52,65.9 |tip {turninat}Undercity
step
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97290 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97291 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97292 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  only Warrior completed(1848)
  talk Velora Nitely##6411
  turnin Dragonmaw Shinbones##1846 |goto Undercity 62.14,39.14 |tip {turninat}Undercity
step
  only Warrior completed(1848)
  talk Velora Nitely##6411
  accept Brutal Legguards##1847 |goto Undercity 62.14,39.14
step
  only Warrior completed(1848)
  talk Velora Nitely##6411
  turnin Brutal Legguards##1847 |goto Undercity 62.14,39.14 |tip {turninat}Undercity
step
  note {travel}Silverpine Forest
  goto Silverpine Forest 43.42,40.86
]])
