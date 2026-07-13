-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Sporeggar", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Fahssn##17923
  accept The Sporelings' Plight##9739 |goto Zangarmarsh 19.02,62.43
step
  talk Gzhun'tt##17856
  accept Now That We're Friends...##9726 |goto Zangarmarsh 19.54,50.04
step
  talk Fahssn##17923
  accept Natural Enemies##9743 |goto Zangarmarsh 19.02,62.43
step
  talk Gshaff##17925
  accept Fertile Spores##9806 |goto Zangarmarsh 19.14,49.38
step
  talk Msshi'fn##17924
  accept Glowcap Mushrooms##9808 |goto Zangarmarsh 19.68,52.07
step
  talk Fahssn##17923
  accept Sporeggar##9919 |goto Zangarmarsh 19.02,62.43
step
  talk Gzhun'tt##17856
  accept Bring Me A Shrubbery!##9715 |goto Zangarmarsh 19.54,50.04
step
  talk T'shu##17857
  accept Oh, It's On!##9717 |goto Zangarmarsh 19.37,49.78
step
  talk Khn'nix##17866
  accept Stalk the Stalker##9719 |goto Zangarmarsh 19.65,49.7
step
  talk Fhwoor##17877
  accept Fhwoor Smash!##9729 |goto Zangarmarsh 19.79,50.83
step
  note Fahssn at the Spawning Glen wants you to collect 10 Mature Spore Sacs.
  collect Mature Spore Sac##182069 |q 9739 |goto Zangarmarsh 12.19,62.02
step
  note Kill 12 Bloodscale Slavedrivers and 6 Bloodscale Enchantresses, and then return to Gzhun'tt at Sporeggar in Zangarmarsh.
  kill Bloodscale Slavedriver##18089 |q 9726 |goto Zangarmarsh 26.54,40.93
step
  note Fahssn at the Spawning Glen in Zangarmarsh wants you to bring him 6 Bog Lord Tendrils.
  kill Withered Giant##18124 |q 9743 |goto Zangarmarsh 82.43,41.36
step
  note Gshaff wants you to gather 6 Fertile Spores from the various Zangarmarsh Spore Bats and Marsh Walkers. Return to Ghsaff at Sporeggar when you've completed this task.
  kill Sporebat##18128 |q 9806 |goto Zangarmarsh 51.47,55.93
step
  note Bring 10 Glowcaps to Msshi'fn at Sporeggar in Zangarmarsh.
  collect Glowcap##182053 |q 9808 |goto Zangarmarsh 33.37,38.97
step
  note Collect 5 Sanguine Hibiscus and return them to Gzhun'tt at Sporeggar in Zangarmarsh.
  kill Bog Giant##17723 |q 9715 |goto The Underbog - Dungeon -1,-1
step
  note Gather an Underspore Frond and return it to T'shu at Sporeggar in Zangarmarsh.
  collect The Underspore##182054 |q 9717 |goto The Underbog - Dungeon -1,-1
step
  note Bring the Brain of the Black Stalker to Khn'nix at Sporeggar in Zangarmarsh.
  kill The Black Stalker##17882 |q 9719 |goto The Underbog - Dungeon -1,-1
step
  talk Fahssn##17923
  turnin The Sporelings' Plight##9739 |goto Zangarmarsh 19.02,62.43
step
  talk Gzhun'tt##17856
  turnin Now That We're Friends...##9726 |goto Zangarmarsh 19.54,50.04
step
  talk Fahssn##17923
  turnin Natural Enemies##9743 |goto Zangarmarsh 19.02,62.43
step
  talk Gshaff##17925
  turnin Fertile Spores##9806 |goto Zangarmarsh 19.14,49.38
step
  talk Msshi'fn##17924
  turnin Glowcap Mushrooms##9808 |goto Zangarmarsh 19.68,52.07
step
  talk Msshi'fn##17924
  turnin Sporeggar##9919 |goto Zangarmarsh 19.68,52.07
step
  talk Gzhun'tt##17856
  turnin Bring Me A Shrubbery!##9715 |goto Zangarmarsh 19.54,50.04
step
  talk T'shu##17857
  turnin Oh, It's On!##9717 |goto Zangarmarsh 19.37,49.78
step
  talk Khn'nix##17866
  turnin Stalk the Stalker##9719 |goto Zangarmarsh 19.65,49.7
step
  talk Gzhun'tt##17856
  turnin Fhwoor Smash!##9729 |goto Zangarmarsh 19.54,50.04
step
  talk Fahssn##17923
  accept More Spore Sacs##9742 |goto Zangarmarsh 19.02,62.43
step
  talk Gzhun'tt##17856
  accept Now That We're Still Friends...##9727 |goto Zangarmarsh 19.54,50.04
step
  talk Fahssn##17923
  accept More Tendrils!##9744 |goto Zangarmarsh 19.02,62.43
step
  talk Gshaff##17925
  accept More Fertile Spores##9807 |goto Zangarmarsh 19.14,49.38
step
  talk Msshi'fn##17924
  accept More Glowcaps##9809 |goto Zangarmarsh 19.68,52.07
step
  talk Gzhun'tt##17856
  accept Bring Me Another Shrubbery!##9714 |goto Zangarmarsh 19.54,50.04
step
  collect Mature Spore Sac##182069 |q 9742 |goto Zangarmarsh 12.19,62.02
step
  note Kill 12 Bloodscale Slavedrivers and 6 Bloodscale Enchantresses, and then return to Gzhun'tt at Sporeggar in Zangarmarsh.
  kill Bloodscale Slavedriver##18089 |q 9727 |goto Zangarmarsh 26.54,40.93
step
  kill Withered Giant##18124 |q 9744 |goto Zangarmarsh 82.43,41.36
step
  kill Sporebat##18128 |q 9807 |goto Zangarmarsh 51.47,55.93
step
  collect Glowcap##182053 |q 9809 |goto Zangarmarsh 33.37,38.97
step
  kill Bog Giant##17723 |q 9714 |goto The Underbog - Dungeon -1,-1
step
  talk Fahssn##17923
  turnin More Spore Sacs##9742 |goto Zangarmarsh 19.02,62.43
step
  talk Gzhun'tt##17856
  turnin Now That We're Still Friends...##9727 |goto Zangarmarsh 19.54,50.04
step
  talk Fahssn##17923
  turnin More Tendrils!##9744 |goto Zangarmarsh 19.02,62.43
step
  talk Gshaff##17925
  turnin More Fertile Spores##9807 |goto Zangarmarsh 19.14,49.38
step
  talk Msshi'fn##17924
  turnin More Glowcaps##9809 |goto Zangarmarsh 19.68,52.07
step
  talk Gzhun'tt##17856
  turnin Bring Me Another Shrubbery!##9714 |goto Zangarmarsh 19.54,50.04
]])
