-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Sporeggar", {
	faction = "Alliance",
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
  collect 10 Mature Spore Sac##24290 |q 9739 |goto Zangarmarsh 12.19,62.02
step
  note Kill 12 Bloodscale Slavedrivers and 6 Bloodscale Enchantresses, and then return to Gzhun'tt at Sporeggar in Zangarmarsh.
  kill Bloodscale Slavedriver##18089 |q 9726 |goto Zangarmarsh 26.54,40.93
step
  note Fahssn at the Spawning Glen in Zangarmarsh wants you to bring him 6 Bog Lord Tendrils.
  collect Bog Lord Tendril##24291 |q 9743 |goto Zangarmarsh 82.43,41.36 |tip {dropsfrom}Withered Giant, Starving Fungal Giant, Bog Lord
step
  note Gshaff wants you to gather 6 Fertile Spores from the various Zangarmarsh Spore Bats and Marsh Walkers. Return to Ghsaff at Sporeggar when you've completed this task.
  collect 6 Fertile Spores##24449 |q 9806 |goto Zangarmarsh 51.47,55.93 |tip {dropsfrom}Sporebat, Greater Sporebat, Fen Strider
step
  note Bring 10 Glowcaps to Msshi'fn at Sporeggar in Zangarmarsh.
  collect 10 Glowcap##24245 |q 9808 |goto Zangarmarsh 33.37,38.97
step
  note Collect 5 Sanguine Hibiscus and return them to Gzhun'tt at Sporeggar in Zangarmarsh.
  collect 5 Sanguine Hibiscus##24246 |q 9715 |goto The Underbog - Dungeon -1,-1 |elite |tip {dropsfrom}Bog Giant, Underbat, Underbog Lurker
step
  note Gather an Underspore Frond and return it to T'shu at Sporeggar in Zangarmarsh.
  collect Underspore Frond##24247 |q 9717 |goto The Underbog - Dungeon -1,-1 |tip {dropsfrom}The Underspore
step
  note Bring the Brain of the Black Stalker to Khn'nix at Sporeggar in Zangarmarsh.
  collect Brain of the Black Stalker##24248 |q 9719 |goto The Underbog - Dungeon -1,-1 |elite |tip {dropsfrom}The Black Stalker, The Black Stalker (1)
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
  collect Mature Spore Sac##24290 |q 9742 |goto Zangarmarsh 12.19,62.02
step
  note Kill 12 Bloodscale Slavedrivers and 6 Bloodscale Enchantresses, and then return to Gzhun'tt at Sporeggar in Zangarmarsh.
  kill Bloodscale Slavedriver##18089 |q 9727 |goto Zangarmarsh 26.54,40.93
step
  collect Bog Lord Tendril##24291 |q 9744 |goto Zangarmarsh 82.43,41.36 |tip {dropsfrom}Withered Giant, Starving Fungal Giant, Bog Lord
step
  collect Fertile Spores##24449 |q 9807 |goto Zangarmarsh 51.47,55.93 |tip {dropsfrom}Sporebat, Greater Sporebat, Fen Strider
step
  collect Glowcap##24245 |q 9809 |goto Zangarmarsh 33.37,38.97
step
  collect Sanguine Hibiscus##24246 |q 9714 |goto The Underbog - Dungeon -1,-1 |elite |tip {dropsfrom}Bog Giant, Underbat, Underbog Lurker
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
