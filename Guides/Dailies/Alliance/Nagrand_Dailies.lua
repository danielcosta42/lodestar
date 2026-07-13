-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Alliance/Nagrand (Dailies)", {
	faction = "Alliance",
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
  talk Warden Moi'bff Jill##18408
  accept Fierce Enemies##10476 |goto Nagrand 54.74,70.88
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
  talk Lakoor##24866
  accept In Defense of Halaa##11502 |goto Nagrand 55.96,73.7
step
  note Obtain 10 Oshu'gun Crystal Fragments and bring them to Gezhe at Aeris Landing in Nagrand.
  get Stealing from Thieves |q 9882 |goto Nagrand 31.36,57.79
step
  note Collect 3 Pair of Ivory Tusks and return them to Shadrek at Aeris Landing in Nagrand.
  get A Head Full of Ivory |q 9914 |goto Nagrand 31.77,56.78
step
  note Bring 10 Obsidian Warbeads to Gezhe at Aeris Landing in Nagrand.
  get Obsidian Warbeads |q 9893 |goto Nagrand 31.36,57.79
step
  note Warden Moi'bff Jill at Telaar wants you to obtain 10 Obsidian Warbeads from the various ogres that inhabit Nagrand.
  get Fierce Enemies |q 10476 |goto Nagrand 54.74,70.88
step
  note Defeat 10 enemy players in Halaa and return to Lakoor in Telaar.
  kill Halaa Enemy Combatant##24867 |q 11502
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
  talk Warden Moi'bff Jill##18408
  turnin Fierce Enemies##10476 |goto Nagrand 54.74,70.88
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
  talk Lakoor##24866
  turnin In Defense of Halaa##11502 |goto Nagrand 55.96,73.7
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
  talk Warden Moi'bff Jill##18408
  accept More Warbeads##10477 |goto Nagrand 54.74,70.88
step
  get More Crystal Fragments |q 9883 |goto Nagrand 31.36,57.79
step
  get More Heads Full of Ivory |q 9915 |goto Nagrand 31.77,56.78
step
  get More Obsidian Warbeads |q 9892 |goto Nagrand 31.36,57.79
step
  get More Warbeads |q 10477 |goto Nagrand 54.74,70.88
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
  talk Warden Moi'bff Jill##18408
  turnin More Warbeads##10477 |goto Nagrand 54.74,70.88
]])
