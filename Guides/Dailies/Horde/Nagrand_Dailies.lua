-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Horde/Nagrand (Dailies)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Gezhe##18265
  accept Stealing from Thieves##9882 |goto Nagrand 31.36,57.79
step
  talk Shadrek##18333
  accept A Head Full of Ivory##9914 |goto Nagrand 31.77,56.78
step
  talk Gezhe##18265
  accept Obsidian Warbeads##9893 |goto Nagrand 31.36,57.79
step
  talk Warden Bullrok##18407
  accept Proving Your Strength##10479 |goto Nagrand 55.79,37.95
step
  talk Gezhe##18265
  accept Membership Benefits##9884 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  accept Membership Benefits##9885 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  accept Membership Benefits##9886 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  accept Membership Benefits##9887 |goto Nagrand 31.36,57.79
step
  talk Karrtog##24881
  accept Enemies, Old and New##11503 |goto Nagrand 52.81,36.05
step
  note Obtain 10 Oshu'gun Crystal Fragments and bring them to Gezhe at Aeris Landing in Nagrand.
  kill Vir'aani Raider##17149 |q 9882 |goto Nagrand 35.23,71.18
step
  note Collect 3 Pair of Ivory Tusks and return them to Shadrek at Aeris Landing in Nagrand.
  kill Wild Elekk##18334 |q 9914 |goto Nagrand 46.86,54.6
step
  note Bring 10 Obsidian Warbeads to Gezhe at Aeris Landing in Nagrand.
  kill Boulderfist Crusher##17134 |q 9893 |goto Nagrand 74.47,64.02
step
  note Warden Bullrok at Garadar wants you to obtain 10 Obsidian Warbeads from the various ogres that inhabit Nagrand.
  kill Boulderfist Crusher##17134 |q 10479 |goto Nagrand 74.47,64.02
step
  note Defeat 10 enemy players in Halaa and return to Karrtog in Garadar.
  kill Halaa Enemy Combatant##24867 |q 11503
step
  talk Gezhe##18265
  turnin Stealing from Thieves##9882 |goto Nagrand 31.36,57.79
step
  talk Shadrek##18333
  turnin A Head Full of Ivory##9914 |goto Nagrand 31.77,56.78
step
  talk Gezhe##18265
  turnin Obsidian Warbeads##9893 |goto Nagrand 31.36,57.79
step
  talk Warden Bullrok##18407
  turnin Proving Your Strength##10479 |goto Nagrand 55.79,37.95
step
  talk Gezhe##18265
  turnin Membership Benefits##9884 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  turnin Membership Benefits##9885 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  turnin Membership Benefits##9886 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  turnin Membership Benefits##9887 |goto Nagrand 31.36,57.79
step
  talk Karrtog##24881
  turnin Enemies, Old and New##11503 |goto Nagrand 52.81,36.05
step
  talk Gezhe##18265
  accept More Crystal Fragments##9883 |goto Nagrand 31.36,57.79
step
  talk Shadrek##18333
  accept More Heads Full of Ivory##9915 |goto Nagrand 31.77,56.78
step
  talk Gezhe##18265
  accept More Obsidian Warbeads##9892 |goto Nagrand 31.36,57.79
step
  talk Warden Bullrok##18407
  accept More Warbeads!##10478 |goto Nagrand 55.79,37.95
step
  kill Vir'aani Raider##17149 |q 9883 |goto Nagrand 35.23,71.18
step
  kill Wild Elekk##18334 |q 9915 |goto Nagrand 46.86,54.6
step
  kill Boulderfist Crusher##17134 |q 9892 |goto Nagrand 74.47,64.02
step
  kill Boulderfist Crusher##17134 |q 10478 |goto Nagrand 74.47,64.02
step
  talk Gezhe##18265
  turnin More Crystal Fragments##9883 |goto Nagrand 31.36,57.79
step
  talk Shadrek##18333
  turnin More Heads Full of Ivory##9915 |goto Nagrand 31.77,56.78
step
  talk Gezhe##18265
  turnin More Obsidian Warbeads##9892 |goto Nagrand 31.36,57.79
step
  talk Warden Bullrok##18407
  turnin More Warbeads!##10478 |goto Nagrand 55.79,37.95
]])
