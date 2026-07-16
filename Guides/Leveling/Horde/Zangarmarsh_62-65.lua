-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Zangarmarsh (62-65)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Terokkar Forest (64-70)",
}, [[
step
  note {fp}Du'ga
  goto Zangarmarsh 33.07,51.07 |tip {vendor}
step
  talk Mack Diver##17637
  accept The Zapthrottle Mote Extractor!##9635 |goto Zangarmarsh 34.03,50.93
step
  note Bring 15 Steam Pump Parts to Mack Diver at Zabra'jin in Zangarmarsh.
  collect 15 Steam Pump Part##23981 |q 9635 |goto Zangarmarsh 81.4,40.2 |tip {dropsfrom}Steam Pump Part
step
  talk Shadow Hunter Denjai##18013
  accept The Ogre Threat##9795 |goto Zangarmarsh 30.74,50.89
step
  talk Messenger Gazgrigg##18091
  accept Reinforcements for Garadar##9797 |goto Zangarmarsh 32.01,50.43
step
  talk Witch Doctor Tor'gash##18014
  accept Burstcap Mushrooms, Mon!##9814 |goto Zangarmarsh 32.89,48.89
step
  note Bring Witch Doctor Tor'gash 6 Burstcap Mushrooms.
  collect Burstcap Mushroom##24468 |q 9814 |goto Zangarmarsh 29.17,51.96 |tip {dropsfrom}Burstcap Mushroom
step
  talk Shadow Hunter Denjai##18013
  accept Impending Attack##9822 |goto Zangarmarsh 30.74,50.89
step
  note Bring the Ango'rosh Attack Plans to Shadow Hunter Denjai in Zabra'jin.
  collect Ango'rosh Attack Plans##24471 |q 9822 |goto Zangarmarsh 19.88,27.09 |tip {dropsfrom}Ango'rosh Attack Plans
step
  talk Gambarinka##18015
  accept Stinging the Stingers##9841 |goto Zangarmarsh 31.63,49.19
step
  talk Zurjaya##18018
  accept Angling to Beat the Competition##9845 |goto Zangarmarsh 32.25,49.61
step
  talk Seer Janidi##18017
  accept Spirits of the Feralfen##9846 |goto Zangarmarsh 32.38,51.96
step
  note Bring 10 Feralfen Protection Totems to Seer Janidi at Zabra'jin.
  collect 10 Feralfen Protection Totem##24497 |q 9846 |goto Zangarmarsh 46.24,62.23 |tip {dropsfrom}Feralfen Hunter, Feralfen Mystic, Feralfen Druid
step
  talk Shadow Hunter Denjai##18013
  accept News for Rakoria##10105 |goto Zangarmarsh 30.74,50.89
step
  talk Gzhun'tt##17856
  accept Bring Me A Shrubbery!##9715 |goto Zangarmarsh 19.54,50.04
step
  note Collect 5 Sanguine Hibiscus and return them to Gzhun'tt at Sporeggar in Zangarmarsh.
  collect 5 Sanguine Hibiscus##24246 |q 9715 |goto The Underbog - Dungeon -1,-1 |tip {dropsfrom}Bog Giant, Underbat, Underbog Lurker
step
  talk T'shu##17857
  accept Oh, It's On!##9717 |goto Zangarmarsh 19.37,49.78
step
  note Gather an Underspore Frond and return it to T'shu at Sporeggar in Zangarmarsh.
  collect Underspore Frond##24247 |q 9717 |goto The Underbog - Dungeon -1,-1 |tip {dropsfrom}The Underspore
step
  talk Khn'nix##17866
  accept Stalk the Stalker##9719 |goto Zangarmarsh 19.65,49.7
step
  note Bring the Brain of the Black Stalker to Khn'nix at Sporeggar in Zangarmarsh.
  collect Brain of the Black Stalker##24248 |q 9719 |goto The Underbog - Dungeon -1,-1 |tip {dropsfrom}The Black Stalker, The Black Stalker (1)
step
  talk Gzhun'tt##17856
  accept Now That We're Friends...##9726 |goto Zangarmarsh 19.54,50.04
step
  talk Gshaff##17925
  accept Fertile Spores##9806 |goto Zangarmarsh 19.14,49.38
step
  note Gshaff wants you to gather 6 Fertile Spores from the various Zangarmarsh Spore Bats and Marsh Walkers. Return to Ghsaff at Sporeggar when you've completed this task.
  collect 6 Fertile Spores##24449 |q 9806 |goto Zangarmarsh 51.47,55.93 |tip {dropsfrom}Sporebat, Greater Sporebat, Fen Strider
step
  talk Msshi'fn##17924
  accept Glowcap Mushrooms##9808 |goto Zangarmarsh 19.68,52.07
step
  note Bring 10 Glowcaps to Msshi'fn at Sporeggar in Zangarmarsh.
  collect 10 Glowcap##24245 |q 9808 |goto Zangarmarsh 33.37,38.97 |tip {dropsfrom}Glowcap
step
  note Kill 8 Marshlight Bleeders and return to Gambarinka at Zabra'jin.
  kill Marshlight Bleeder##18133 |q 9841 |goto Zangarmarsh 21.88,34.55
step
  talk Fahssn##17923
  accept The Sporelings' Plight##9739 |goto Zangarmarsh 19.02,62.43
step
  note Fahssn at the Spawning Glen wants you to collect 10 Mature Spore Sacs.
  collect 10 Mature Spore Sac##24290 |q 9739 |goto Zangarmarsh 12.19,62.02 |tip {dropsfrom}Mature Spore Sac
step
  talk Fahssn##17923
  accept Natural Enemies##9743 |goto Zangarmarsh 19.02,62.43
step
  note Fahssn at the Spawning Glen in Zangarmarsh wants you to bring him 6 Bog Lord Tendrils.
  collect Bog Lord Tendril##24291 |q 9743 |goto Zangarmarsh 82.43,41.36 |tip {dropsfrom}Withered Giant, Starving Fungal Giant, Bog Lord
step
  talk Fahssn##17923
  accept Sporeggar##9919 |goto Zangarmarsh 19.02,62.43
step
  talk Captain Kroghan##18090
  turnin Reinforcements for Garadar##9797 |goto Nagrand 55.37,37.45 |tip {turninat}Nagrand
step
  talk Rakoria##18385
  turnin News for Rakoria##10105 |goto Terokkar Forest 50.13,44.88 |tip {turninat}Terokkar Forest
step
  talk Watcher Jhang##17884
  accept The Warlord's Hideout##9763 |goto Zangarmarsh 52.29,35.98
step
  note Kill 10 Fenclaw Thrashers and return to Zurjaya at Zabra'jin.
  kill Fenclaw Thrasher##18214 |q 9845 |goto Zangarmarsh 51.47,40.29
step
  talk Magasha##18016
  accept There's No Explanation for Fashion##9769 |goto Zangarmarsh 84.36,54.33
step
  note Bring 8 Diaphanous Wings from any species of Zangarmarsh fireflies to Magasha in Swamprat Post.
  collect 8 Diaphanous Wing##24372 |q 9769 |goto Zangarmarsh 73.8,70.07 |tip {dropsfrom}Umbraglow Stinger, Marshlight Bleeder, Blacksting
step
  talk Reavij##18012
  accept Menacing Marshfangs##9770 |goto Zangarmarsh 84.96,54.03
step
  talk Magasha##18016
  accept No More Mushrooms!##9773 |goto Zangarmarsh 84.36,54.33
step
  note Gather 8 Eel Filets from Umbrafen Eels and bring them to Magasha at Swamprat Post.
  collect 8 Eel Filet##24374 |q 9773 |goto Zangarmarsh 74.74,70.34 |tip {dropsfrom}Umbrafen Eel
step
  talk Zurai##18011
  accept Thick Hydra Scales##9774 |goto Zangarmarsh 85.28,54.75
step
  note Zurai at Swamprat Post wants you to bring him 12 Thick Hydra Scales.
  collect Thick Hydra Scale##24375 |q 9774 |goto Zangarmarsh 71.26,65.92 |tip {dropsfrom}Mire Hydra, Fenclaw Thrasher, Mragesh
step
  talk Zurai##18011
  accept Report to Shadow Hunter Denjai##9775 |goto Zangarmarsh 85.28,54.75
step
  talk Zurai##18011
  accept News from Zangarmarsh##9796 |goto Zangarmarsh 85.28,54.75
step
  note Reavij at Swamprat Post wants you to kill 10 Marshfang Rippers.
  kill Marshfang Ripper##18130 |q 9770 |goto Zangarmarsh 78.0,49.38
step
  talk Lethyn Moonfire##17834
  accept Watcher Leesa'oh##9697 |goto Zangarmarsh 78.53,63.15
step
  talk Ysiel Windsinger##17841
  accept Disturbance at Umbrafen Lake##9716 |goto Zangarmarsh 78.4,62.02
step
  talk Ysiel Windsinger##17841
  accept Warning the Cenarion Circle##9724 |goto Zangarmarsh 78.4,62.02
step
  talk Ikeyen##17956
  accept The Umbrafen Tribe##9747 |goto Zangarmarsh 80.4,64.16
step
  talk Ysiel Windsinger##17841
  accept Preparing for War##9765 |goto Zangarmarsh 78.4,62.02
step
  note Obtain Coilfang Armaments from naga at Coilfang Reservoir and return them to Ysiel Windsinger at the Cenarion Refuge in Zangarmarsh.
  collect Coilfang Armaments##24368 |q 9765 |goto The Steamvault - Dungeon -1,-1 |tip {dropsfrom}Coilfang Engineer, Coilfang Sorceress, Coilfang Myrmidon
step
  talk Ysiel Windsinger##17841
  accept Warden Hamoot##9778 |goto Zangarmarsh 78.4,62.02
step
  talk Windcaller Blackhoof##18070
  accept Blessings of the Ancients##9785 |goto Zangarmarsh 80.37,64.73
step
  talk Lauranna Thar'well##17909
  accept Plants of Zangarmarsh##9802 |goto Zangarmarsh 80.32,64.17
step
  note Bring 10 Unidentified Plant Parts to Lauranna Thar'well at the Cenarion Refuge in Zangarmarsh.
  collect 10 Unidentified Plant Parts##24401 |q 9802 |goto Zangarmarsh 62.13,67.45 |tip {dropsfrom}Darkcrest Taskmaster, Darkcrest Siren, Bloodscale Enchantress
step
  talk Ysiel Windsinger##17841
  accept Failed Incursion##9876 |goto Zangarmarsh 78.4,62.02
step
  talk Lethyn Moonfire##17834
  accept The Dying Balance##9895 |goto Zangarmarsh 78.53,63.15
step
  talk Lethyn Moonfire##17834
  accept What's Wrong at Cenarion Thicket?##9957 |goto Zangarmarsh 78.53,63.15
step
  talk Lauranna Thar'well##17909
  accept Master of Potions##10897 |goto Zangarmarsh 80.32,64.17
step
  note Lauranna Thar'well wants you to go to the Botanica in Tempest Keep and retrieve the Botanist's Field Guide from High Botanist Freywinn. In addition she also wants you to bring her 5 Super Healing Potions, 5 Super Mana Potions and 5 Major Dreamless Sleep Potions.
  collect Botanist's Field Guide##31744 |q 10897 |goto Zangarmarsh 80.32,64.17 |tip {dropsfrom}High Botanist Freywinn, High Botanist Freywinn (1)
step
  talk Morthis Whisperwing##22832
  accept Eternal Vigilance##11011 |goto Zangarmarsh 80.18,65.15
step
  note Ikeyen at the Cenarion Refuge wants you to travel to Umbrafen Village and slay Kataru, 8 Umbrafen Seers, 6 Umbrafen Witchdoctors and 6 Umbrafen Oracles.
  kill Kataru##18080 |q 9747 |goto Zangarmarsh 85.29,90.93
step
  note Locate and deal with Boglash, then return to Lethyn Moonfire at Cenarion Refuge.
  kill Boglash##18281 |q 9895 |goto Zangarmarsh 82.07,71.39 |elite
step
  note Windcaller Blackhoof wants you to speak to the ancients Ashyen and Keleth at Cenarion Refuge and obtain their blessings.
  kill Ashyen##17900 |q 9785 |goto Zangarmarsh 81.1,63.87
step
  talk Mack Diver##17637
  turnin The Zapthrottle Mote Extractor!##9635 |goto Zangarmarsh 34.03,50.93
step
  talk Shadow Hunter Denjai##18013
  turnin Report to Shadow Hunter Denjai##9775 |goto Zangarmarsh 30.74,50.89
step
  talk Nekthar##18248
  turnin The Ogre Threat##9795 |goto Blade's Edge Mountains 51.92,57.76 |tip {turninat}Blade's Edge Mountains
step
  talk Witch Doctor Tor'gash##18014
  turnin Burstcap Mushrooms, Mon!##9814 |goto Zangarmarsh 32.89,48.89
step
  talk Shadow Hunter Denjai##18013
  turnin Impending Attack##9822 |goto Zangarmarsh 30.74,50.89
step
  talk Gambarinka##18015
  turnin Stinging the Stingers##9841 |goto Zangarmarsh 31.63,49.19
step
  talk Zurjaya##18018
  turnin Angling to Beat the Competition##9845 |goto Zangarmarsh 32.25,49.61
step
  talk Seer Janidi##18017
  turnin Spirits of the Feralfen##9846 |goto Zangarmarsh 32.38,51.96
step
  talk Witch Doctor Tor'gash##18014
  accept Have You Ever Seen One of These?##9816 |goto Zangarmarsh 32.89,48.89
step
  note Take the Murloc Cage and place it on the flat rock near Daggerfen Village.
  kill Baby Murloc##18152 |q 9816
step
  talk Shadow Hunter Denjai##18013
  accept Us or Them##9823 |goto Zangarmarsh 30.74,50.89
step
  talk Gambarinka##18015
  accept The Sharpest Blades##9842 |goto Zangarmarsh 31.63,49.19
step
  note Bring 10 Marshfang Slicer Blades to Gambarinka at Zabra'jin.
  collect 10 Marshfang Slicer Blade##24493 |q 9842 |goto Zangarmarsh 33.06,58.28 |tip {dropsfrom}Marshfang Slicer, "Count" Ungula
step
  talk Seer Janidi##18017
  accept A Spirit Ally?##9847 |goto Zangarmarsh 32.38,51.96
step
  note Take the Feralfen Totem to the foot of the stairs at the Boha'mu Ruins and plant it in the ground. Report your findings to Seer Janidi at Zabra'jin.
  kill Feralfen Serpent Spirit##18185 |q 9847
step
  talk Zurjaya##18018
  accept The Biggest of Them All##9903 |goto Zangarmarsh 32.25,49.61
step
  talk Zurjaya##18018
  accept Pursuing Terrorclaw##9904 |goto Zangarmarsh 32.25,49.61
step
  talk Shadow Hunter Denjai##18013
  accept Message to the Daggerfen##10118 |goto Zangarmarsh 30.74,50.89
step
  note Kill 12 Bloodscale Slavedrivers and 6 Bloodscale Enchantresses, and then return to Gzhun'tt at Sporeggar in Zangarmarsh.
  kill Bloodscale Slavedriver##18089 |q 9726 |goto Zangarmarsh 26.54,40.93
step
  talk Msshi'fn##17924
  turnin Sporeggar##9919 |goto Zangarmarsh 19.68,52.07
step
  talk Gshaff##17925
  turnin Fertile Spores##9806 |goto Zangarmarsh 19.14,49.38
step
  talk Msshi'fn##17924
  turnin Glowcap Mushrooms##9808 |goto Zangarmarsh 19.68,52.07
step
  talk Gzhun'tt##17856
  turnin Bring Me A Shrubbery!##9715 |goto Zangarmarsh 19.54,50.04
step
  talk Khn'nix##17866
  turnin Stalk the Stalker##9719 |goto Zangarmarsh 19.65,49.7
step
  talk T'shu##17857
  turnin Oh, It's On!##9717 |goto Zangarmarsh 19.37,49.78
step
  talk Amythiel Mistwalker##16885
  turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula 16.04,52.15 |tip {turninat}Hellfire Peninsula
step
  talk Gzhun'tt##17856
  turnin Now That We're Friends...##9726 |goto Zangarmarsh 19.54,50.04
step
  note Slay 3 Daggerfen Assassins and 15 Daggerfen Muckdwellers and return to Shadow Hunter Denjai at Zabra'jin.
  kill Daggerfen Assassin##18116 |q 10118 |goto Zangarmarsh 25.82,22.82
step
  note Watcher Jhang wants you to find and slay Warlord Kalithresh inside Coilfang Reservoir.
  kill Warlord Kalithresh##17798 |q 9763 |goto The Steamvault - Dungeon -1,-1 |elite
step
  note Kill Terrorclaw and return to Zurjaya at Zabra'jin.
  kill Terrorclaw##20477 |q 9904 |goto Zangarmarsh 22.31,45.78
step
  note Kill Overlord Gorefist, 10 Ango'rosh Maulers, and 10 Ango'rosh Souleaters and report back to Shadow Hunter Denjai in Zabra'jin.
  kill Overlord Gorefist##18160 |q 9823 |goto Zangarmarsh 18.39,7.79
step
  talk Fahssn##17923
  turnin The Sporelings' Plight##9739 |goto Zangarmarsh 19.02,62.43
step
  talk Fahssn##17923
  turnin Natural Enemies##9743 |goto Zangarmarsh 19.02,62.43
step
  talk Watcher Leesa'oh##17831
  turnin Watcher Leesa'oh##9697 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Leesa'oh##17831
  accept Observing the Sporelings##9701 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Jhang##17884
  turnin Failed Incursion##9876 |goto Zangarmarsh 52.29,35.98
step
  talk Watcher Jhang##17884
  turnin The Warlord's Hideout##9763 |goto Zangarmarsh 52.29,35.98
step
  talk Mokasa##18249
  turnin News from Zangarmarsh##9796 |goto Terokkar Forest 49.71,43.33 |tip {turninat}Terokkar Forest
step
  talk Earthbinder Tavgren##18446
  turnin What's Wrong at Cenarion Thicket?##9957 |goto Terokkar Forest 44.33,26.31 |tip {turninat}Terokkar Forest
step
  talk Watcher Jhang##17884
  accept Lost in Action##9738 |goto Zangarmarsh 52.29,35.98
step
  note Slay Mragesh and return to Zurjaya in Zabra'jin.
  kill Mragesh##18286 |q 9903 |goto Zangarmarsh 42.23,41.42
step
  talk Magasha##18016
  turnin There's No Explanation for Fashion##9769 |goto Zangarmarsh 84.36,54.33
step
  talk Reavij##18012
  turnin Menacing Marshfangs##9770 |goto Zangarmarsh 84.96,54.03
step
  talk Magasha##18016
  turnin No More Mushrooms!##9773 |goto Zangarmarsh 84.36,54.33
step
  talk Zurai##18011
  turnin Thick Hydra Scales##9774 |goto Zangarmarsh 85.28,54.75
step
  talk Zurai##18011
  accept Searching for Scout Jyoba##9771 |goto Zangarmarsh 85.28,54.75
step
  talk Reavij##18012
  accept Nothin' Says Lovin' Like a Big Stinger##9898 |goto Zangarmarsh 84.96,54.03
step
  note Bring Blacksting's Stinger to Reavij at Swamprat Post.
  collect Blacksting's Stinger##25448 |q 9898 |goto Zangarmarsh 49.75,60.06 |tip {dropsfrom}Blacksting
step
  talk Magasha##18016
  accept A Job Undone##9899 |goto Zangarmarsh 84.36,54.33
step
  talk Morthis Whisperwing##22832
  turnin Eternal Vigilance##11011 |goto Zangarmarsh 80.18,65.15
step
  talk Lauranna Thar'well##17909
  turnin Master of Potions##10897 |goto Zangarmarsh 80.32,64.17
step
  talk Ikeyen##17956
  turnin The Umbrafen Tribe##9747 |goto Zangarmarsh 80.4,64.16
step
  talk Ysiel Windsinger##17841
  turnin Preparing for War##9765 |goto Zangarmarsh 78.4,62.02
step
  talk Lethyn Moonfire##17834
  turnin The Dying Balance##9895 |goto Zangarmarsh 78.53,63.15
step
  talk Warden Hamoot##17858
  turnin Warden Hamoot##9778 |goto Zangarmarsh 79.09,65.27
step
  talk Windcaller Blackhoof##18070
  turnin Blessings of the Ancients##9785 |goto Zangarmarsh 80.37,64.73
step
  talk Lauranna Thar'well##17909
  turnin Plants of Zangarmarsh##9802 |goto Zangarmarsh 80.32,64.17
step
  talk Ysiel Windsinger##17841
  turnin Disturbance at Umbrafen Lake##9716 |goto Zangarmarsh 78.4,62.02
step
  talk Ysiel Windsinger##17841
  accept As the Crow Flies##9718 |goto Zangarmarsh 78.4,62.02
step
  talk Warden Hamoot##17858
  accept A Warm Welcome##9728 |goto Zangarmarsh 79.09,65.27
step
  note Warden Hamoot at the Cenarion Refuge wants you to bring him 30 Naga Claws.
  collect Naga Claws##24280 |q 9728 |goto Zangarmarsh 65.15,40.91 |tip {dropsfrom}Rajis Fyashe, Rajah Haghazed, Darkcrest Taskmaster
step
  talk Ikeyen##17956
  accept A Damp, Dark Place##9788 |goto Zangarmarsh 80.4,64.16
step
  note Look for Ikeyen's Belongings inside a cave south of Umbrafen. Return them to Ikeyen at Cenarion Refuge in Zangarmarsh.
  collect Ikeyen's Belongings##24411 |q 9788 |goto Zangarmarsh 70.49,97.94 |tip {dropsfrom}Ikeyen's Belongings
step
  talk Windcaller Blackhoof##18070
  accept Safeguarding the Watchers##9894 |goto Zangarmarsh 80.37,64.73
step
  talk Lauranna Thar'well##17909
  accept Saving the Sporeloks##10096 |goto Zangarmarsh 80.32,64.17
step
  note Kill Lord Klaq and return to Windcaller Blackhoof at the Cenarion Refuge.
  kill Lord Klaq##18282 |q 9894 |goto Zangarmarsh 72.24,93.89
step
  note Slay 10 Marsh Dredgers and 10 Marsh Lurkers, and then return to Lauranna Thar'well at the Cenarion Refuge in Zangarmarsh.
  kill Marsh Dredger##18137 |q 10096 |goto Zangarmarsh 73.71,94.18
step
  talk Shadow Hunter Denjai##18013
  turnin Message to the Daggerfen##10118 |goto Zangarmarsh 30.74,50.89
step
  talk Seer Janidi##18017
  turnin A Spirit Ally?##9847 |goto Zangarmarsh 32.38,51.96
step
  talk Zurjaya##18018
  turnin The Biggest of Them All##9903 |goto Zangarmarsh 32.25,49.61
step
  talk Zurjaya##18018
  turnin Pursuing Terrorclaw##9904 |goto Zangarmarsh 32.25,49.61
step
  talk Witch Doctor Tor'gash##18014
  turnin Have You Ever Seen One of These?##9816 |goto Zangarmarsh 32.89,48.89
step
  talk Shadow Hunter Denjai##18013
  turnin Us or Them##9823 |goto Zangarmarsh 30.74,50.89
step
  talk Gambarinka##18015
  turnin The Sharpest Blades##9842 |goto Zangarmarsh 31.63,49.19
step
  note Discover what happened to Earthbinder Rayge, Naturalist Bite, Weeder Greenthumb, and Windcaller Claw. Then, return to Watcher Jhang at Coilfang Reservoir in Zangarmarsh.
  kill Earthbinder Rayge##17885 |q 9738 |goto The Underbog - Dungeon -1,-1
step
  talk Watcher Leesa'oh##17831
  turnin Observing the Sporelings##9701 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Leesa'oh##17831
  accept A Question of Gluttony##9702 |goto Zangarmarsh 23.32,66.21
step
  note Collect 10 pieces of Discarded Nutriment and then return to Watcher Leesa'oh at the Cenarion Watchpost in Zangarmarsh.
  collect 10 Discarded Nutriment##24233 |q 9702 |goto Zangarmarsh 30.2,63.94 |tip {dropsfrom}Discarded Nutriment
step
  talk Watcher Jhang##17884
  turnin Lost in Action##9738 |goto Zangarmarsh 52.29,35.98
step
  talk Scout Jyoba##18035
  turnin Searching for Scout Jyoba##9771 |goto Zangarmarsh 80.75,36.27
step
  talk Scout Jyoba##18035
  accept Jyoba's Report##9772 |goto Zangarmarsh 80.75,36.27
step
  note Retrieve Scout Jyoba's Report from the Withered Giants and return it to Zurai at Swamprat Post.
  collect Scout Jyoba's Report##24373 |q 9772 |goto Zangarmarsh 82.43,41.36 |tip {dropsfrom}Withered Giant, Withered Bog Lord, Starving Bog Lord
step
  note Magasha at Swamprat Post wants you to kill Sporewing.
  kill Sporewing##18280 |q 9899 |goto Zangarmarsh 78.01,45.41
step
  talk Reavij##18012
  turnin Nothin' Says Lovin' Like a Big Stinger##9898 |goto Zangarmarsh 84.96,54.03
step
  talk Magasha##18016
  turnin A Job Undone##9899 |goto Zangarmarsh 84.36,54.33
step
  talk Zurai##18011
  turnin Jyoba's Report##9772 |goto Zangarmarsh 85.28,54.75
step
  talk Warden Hamoot##17858
  turnin A Warm Welcome##9728 |goto Zangarmarsh 79.09,65.27
step
  talk Windcaller Blackhoof##18070
  turnin Safeguarding the Watchers##9894 |goto Zangarmarsh 80.37,64.73
step
  talk Ikeyen##17956
  turnin A Damp, Dark Place##9788 |goto Zangarmarsh 80.4,64.16
step
  talk Lauranna Thar'well##17909
  turnin Saving the Sporeloks##10096 |goto Zangarmarsh 80.32,64.17
step
  talk Ysiel Windsinger##17841
  turnin As the Crow Flies##9718 |goto Zangarmarsh 78.4,62.02
step
  talk Ysiel Windsinger##17841
  accept Balance Must Be Preserved##9720 |goto Zangarmarsh 78.4,62.02
step
  note Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
  use Umbrafen Steam Pump Credit Marker##17998 |q 9720 |goto Zangarmarsh 70.6,80.29 |tip {useit}
step
  talk Watcher Leesa'oh##17831
  turnin A Question of Gluttony##9702 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Leesa'oh##17831
  accept Familiar Fungi##9708 |goto Zangarmarsh 23.32,66.21
step
  note Collect 15 Mushroom Samples and return them to Watcher Leesa'oh at the Cenarion Watchpost in Zangarmarsh.
  collect 15 Mushroom Sample##24238 |q 9708 |goto Zangarmarsh 33.71,31.19 |tip {dropsfrom}Ango'rosh Ogre, Ango'rosh Shaman, Boss Grog'ak
step
  talk Ysiel Windsinger##17841
  turnin Balance Must Be Preserved##9720 |goto Zangarmarsh 78.4,62.02
step
  talk Watcher Leesa'oh##17831
  turnin Familiar Fungi##9708 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Leesa'oh##17831
  accept Stealing Back the Mushrooms##9709 |goto Zangarmarsh 23.32,66.21
step
  note Collect 10 Boxes of Mushrooms and return them to Watcher Leesa'oh at the Cenarion Watchpost in Zangarmarsh.
  collect 10 Box of Mushrooms##24240 |q 9709 |goto Zangarmarsh 18.89,7.03 |tip {dropsfrom}Ango'rosh Mauler, Ango'rosh Souleater, Overlord Gorefist
step
  talk Watcher Leesa'oh##17831
  turnin Stealing Back the Mushrooms##9709 |goto Zangarmarsh 23.32,66.21
step
  note {travel}Terokkar Forest
  goto Terokkar Forest 48.94,44.58
]])
