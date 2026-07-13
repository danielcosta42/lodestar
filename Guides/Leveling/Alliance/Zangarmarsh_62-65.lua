-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Zangarmarsh (62-65)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Terokkar Forest (63-70)",
}, [[
step
  note {fp}Munci
  goto Zangarmarsh 67.83,51.46 |tip {vendor}
step
  talk K. Lee Smallfry##17634
  accept The Zapthrottle Mote Extractor!##9636 |goto Zangarmarsh 68.65,50.21
step
  note Bring 15 Steam Pump Parts to K. Lee Smallfry at Telredor in Zangarmarsh.
  collect Steam Pump Part##181871 |q 9636 |goto Zangarmarsh 81.4,40.2
step
  talk Anchorite Ahuurn##18003
  accept The Orebor Harborage##9776 |goto Zangarmarsh 68.2,49.37
step
  talk Ruam##18007
  accept Fulgor Spores##9777 |goto Zangarmarsh 68.63,48.73
step
  note Bring 6 Fulgor Spores to Ruam at Telredor.
  collect Fulgor Spore##182116 |q 9777 |goto Zangarmarsh 67.25,50.21
step
  talk Haalrun##18005
  accept Too Many Mouths to Feed##9781 |goto Zangarmarsh 67.81,47.91
step
  talk Vindicator Idaar##18004
  accept The Dead Mire##9782 |goto Zangarmarsh 68.34,50.08
step
  note Bring a Dead Mire Soil Sample to Vindicator Idaar at Telredor.
  collect Dead Mire Soil##182119 |q 9782 |goto Zangarmarsh 80.79,37.71
step
  talk Anchorite Ahuurn##18003
  accept The Boha'mu Ruins##9786 |goto Zangarmarsh 68.2,49.37
step
  talk Noraani##18006
  accept Menacing Marshfangs##9791 |goto Zangarmarsh 67.64,47.87
step
  talk Vindicator Idaar##18004
  accept The Fate of Tuurem##9793 |goto Zangarmarsh 68.34,50.08
step
  talk Prospector Conall##18295
  accept Unfinished Business##9901 |goto Zangarmarsh 68.56,49.37
step
  talk Ruam##18007
  accept Withered Flesh##10355 |goto Zangarmarsh 68.63,48.73
step
  note Gather 5 Parched Hydra Samples and 5 Withered Bog Lord Samples and bring them to Ruam at Telredor.
  kill Parched Hydra##20324 |q 10355 |goto Zangarmarsh 82.09,41.14
step
  note Prospector Conall at Telredor wants you to kill Sporewing.
  kill Sporewing##18280 |q 9901 |goto Zangarmarsh 78.01,45.41
step
  note Kill 10 Marshfang Rippers and return to Noraani at Telredor.
  kill Marshfang Ripper##18130 |q 9791 |goto Zangarmarsh 78.0,49.38
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
  kill Coilfang Engineer##17721 |q 9765 |goto The Steamvault - Dungeon -1,-1 |elite
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
  kill Darkcrest Taskmaster##18086 |q 9802 |goto Zangarmarsh 62.13,67.45
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
  get Master of Potions |q 10897 |goto Zangarmarsh 80.32,64.17
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
  note Kill 10 Mire Hydra and return to Haalrun at Telredor.
  kill Mire Hydra##18213 |q 9781 |goto Zangarmarsh 71.26,65.92
step
  note Windcaller Blackhoof wants you to speak to the ancients Ashyen and Keleth at Cenarion Refuge and obtain their blessings.
  kill Ashyen##17900 |q 9785 |goto Zangarmarsh 81.1,63.87
step
  talk Watcher Jhang##17884
  turnin Failed Incursion##9876 |goto Zangarmarsh 52.29,35.98
step
  talk Watcher Jhang##17884
  accept Lost in Action##9738 |goto Zangarmarsh 52.29,35.98
step
  talk Watcher Jhang##17884
  accept The Warlord's Hideout##9763 |goto Zangarmarsh 52.29,35.98
step
  talk Ikuti##18008
  turnin The Orebor Harborage##9776 |goto Zangarmarsh 41.94,27.19
step
  talk Earthbinder Tavgren##18446
  turnin What's Wrong at Cenarion Thicket?##9957 |goto Terokkar Forest 44.33,26.31 |tip {turninat}Terokkar Forest
step
  talk Ikuti##18008
  accept A Message to Telaar##9792 |goto Zangarmarsh 41.94,27.19
step
  talk Timothy Daniels##18019
  accept No Time for Curiosity##9794 |goto Zangarmarsh 41.21,28.67
step
  talk Puluu##18009
  accept Stinger Venom##9830 |goto Zangarmarsh 40.85,28.66
step
  note Bring 6 Marshlight Bleeder Venom to Puluu at the Orebor Harborage.
  kill Marshlight Bleeder##18133 |q 9830 |goto Zangarmarsh 21.88,34.55
step
  talk Puluu##18009
  accept Lines of Communication##9833 |goto Zangarmarsh 40.85,28.66
step
  talk Maktu##18010
  accept Natural Armor##9834 |goto Zangarmarsh 41.61,27.28
step
  note Bring 8 Fenclaw Hides to Maktu at the Orebor Harborage.
  kill Fenclaw Thrasher##18214 |q 9834 |goto Zangarmarsh 51.47,40.29
step
  talk Ikuti##18008
  accept Ango'rosh Encroachment##9835 |goto Zangarmarsh 41.94,27.19
step
  talk Timothy Daniels##18019
  accept Secrets of the Daggerfen##9848 |goto Zangarmarsh 41.21,28.67
step
  note Bring the Daggerfen Poison Manual and a Daggerfen Poison Vial to Timothy Daniels at the Orebor Harborage.
  collect Daggerfen Poison Manual##182184 |q 9848 |goto Zangarmarsh 24.4,27.0
step
  talk Puluu##18009
  accept The Terror of Marshlight Lake##9902 |goto Zangarmarsh 40.85,28.66
step
  talk Ikuti##18008
  accept Concerns About Tuurem##10104 |goto Zangarmarsh 41.94,27.19
step
  talk Ikuti##18008
  accept Daggerfen Deviance##10115 |goto Zangarmarsh 41.94,27.19
step
  note Slay 3 Daggerfen Assassins and 15 Daggerfen Muckdwellers.
  kill Daggerfen Assassin##18116 |q 10115 |goto Zangarmarsh 25.82,22.82
step
  note Discover what happened to Earthbinder Rayge, Naturalist Bite, Weeder Greenthumb, and Windcaller Claw. Then, return to Watcher Jhang at Coilfang Reservoir in Zangarmarsh.
  kill Earthbinder Rayge##17885 |q 9738 |goto The Underbog - Dungeon -1,-1
step
  note Watcher Jhang wants you to find and slay Warlord Kalithresh inside Coilfang Reservoir.
  kill Warlord Kalithresh##17798 |q 9763 |goto The Steamvault - Dungeon -1,-1 |elite
step
  note Kill 10 Ango'rosh Ogres and 5 Ango'rosh Shaman and return to Ikuti at the Orebor Harborage.
  kill Ango'rosh Shaman##18118 |q 9835 |goto Zangarmarsh 32.57,31.49
step
  talk Amythiel Mistwalker##16885
  turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula 16.04,52.15 |tip {turninat}Hellfire Peninsula
step
  talk Gzhun'tt##17856
  accept Bring Me A Shrubbery!##9715 |goto Zangarmarsh 19.54,50.04
step
  note Collect 5 Sanguine Hibiscus and return them to Gzhun'tt at Sporeggar in Zangarmarsh.
  kill Bog Giant##17723 |q 9715 |goto The Underbog - Dungeon -1,-1 |elite
step
  talk T'shu##17857
  accept Oh, It's On!##9717 |goto Zangarmarsh 19.37,49.78
step
  note Gather an Underspore Frond and return it to T'shu at Sporeggar in Zangarmarsh.
  collect The Underspore##182054 |q 9717 |goto The Underbog - Dungeon -1,-1
step
  talk Khn'nix##17866
  accept Stalk the Stalker##9719 |goto Zangarmarsh 19.65,49.7
step
  note Bring the Brain of the Black Stalker to Khn'nix at Sporeggar in Zangarmarsh.
  kill The Black Stalker##17882 |q 9719 |goto The Underbog - Dungeon -1,-1 |elite
step
  talk Gzhun'tt##17856
  accept Now That We're Friends...##9726 |goto Zangarmarsh 19.54,50.04
step
  talk Gshaff##17925
  accept Fertile Spores##9806 |goto Zangarmarsh 19.14,49.38
step
  note Gshaff wants you to gather 6 Fertile Spores from the various Zangarmarsh Spore Bats and Marsh Walkers. Return to Ghsaff at Sporeggar when you've completed this task.
  kill Sporebat##18128 |q 9806 |goto Zangarmarsh 51.47,55.93
step
  talk Msshi'fn##17924
  accept Glowcap Mushrooms##9808 |goto Zangarmarsh 19.68,52.07
step
  note Bring 10 Glowcaps to Msshi'fn at Sporeggar in Zangarmarsh.
  collect Glowcap##182053 |q 9808 |goto Zangarmarsh 33.37,38.97
step
  note Slay Terrorclaw and return to Puluu at the Orebor Harborage.
  kill Terrorclaw##20477 |q 9902 |goto Zangarmarsh 22.31,45.78
step
  note Kill 12 Bloodscale Slavedrivers and 6 Bloodscale Enchantresses, and then return to Gzhun'tt at Sporeggar in Zangarmarsh.
  kill Bloodscale Slavedriver##18089 |q 9726 |goto Zangarmarsh 26.54,40.93
step
  talk Kialon Nightblade##18098
  turnin No Time for Curiosity##9794 |goto Blade's Edge Mountains 35.97,67.76 |tip {turninat}Blade's Edge Mountains
step
  talk Watcher Leesa'oh##17831
  turnin Watcher Leesa'oh##9697 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Leesa'oh##17831
  accept Observing the Sporelings##9701 |goto Zangarmarsh 23.32,66.21
step
  talk Fahssn##17923
  accept The Sporelings' Plight##9739 |goto Zangarmarsh 19.02,62.43
step
  note Fahssn at the Spawning Glen wants you to collect 10 Mature Spore Sacs.
  collect Mature Spore Sac##182069 |q 9739 |goto Zangarmarsh 12.19,62.02
step
  talk Fahssn##17923
  accept Natural Enemies##9743 |goto Zangarmarsh 19.02,62.43
step
  note Fahssn at the Spawning Glen in Zangarmarsh wants you to bring him 6 Bog Lord Tendrils.
  kill Withered Giant##18124 |q 9743 |goto Zangarmarsh 82.43,41.36
step
  talk Fahssn##17923
  accept Sporeggar##9919 |goto Zangarmarsh 19.02,62.43
step
  note Puluu at the Orebor Harborage wants you to kill 12 Marshfang Slicers.
  kill Marshfang Slicer##18131 |q 9833 |goto Zangarmarsh 33.06,58.28
step
  talk Andarl##18252
  turnin Concerns About Tuurem##10104 |goto Terokkar Forest 58.53,53.56 |tip {turninat}Terokkar Forest
step
  talk K. Lee Smallfry##17634
  turnin The Zapthrottle Mote Extractor!##9636 |goto Zangarmarsh 68.65,50.21
step
  talk Prospector Conall##18295
  turnin Unfinished Business##9901 |goto Zangarmarsh 68.56,49.37
step
  talk Ruam##18007
  turnin Fulgor Spores##9777 |goto Zangarmarsh 68.63,48.73
step
  talk Haalrun##18005
  turnin Too Many Mouths to Feed##9781 |goto Zangarmarsh 67.81,47.91
step
  talk Vindicator Idaar##18004
  turnin The Dead Mire##9782 |goto Zangarmarsh 68.34,50.08
step
  talk Anchorite Ahuurn##18003
  turnin The Boha'mu Ruins##9786 |goto Zangarmarsh 68.2,49.37
step
  talk Noraani##18006
  turnin Menacing Marshfangs##9791 |goto Zangarmarsh 67.64,47.87
step
  talk Andarl##18252
  turnin The Fate of Tuurem##9793 |goto Terokkar Forest 58.53,53.56 |tip {turninat}Terokkar Forest
step
  talk Ruam##18007
  turnin Withered Flesh##10355 |goto Zangarmarsh 68.63,48.73
step
  talk Noraani##18006
  accept Umbrafen Eel Filets##9780 |goto Zangarmarsh 67.64,47.87
step
  note Noraani at Telredor wants you to bring her 8 Eel Filets.
  kill Umbrafen Eel##18138 |q 9780 |goto Zangarmarsh 74.74,70.34
step
  talk Vindicator Idaar##18004
  accept An Unnatural Drought##9783 |goto Zangarmarsh 68.34,50.08
step
  talk Anchorite Ahuurn##18003
  accept Idols of the Feralfen##9787 |goto Zangarmarsh 68.2,49.37
step
  note Gather 6 Feralfen Idols and return them to Anchorite Ahuurn at Telredor.
  collect Feralfen Idol##182139 |q 9787 |goto Zangarmarsh 46.17,62.39
step
  talk Haalrun##18005
  accept Diaphanous Wings##9790 |goto Zangarmarsh 67.81,47.91
step
  note Haalrun at Telredor wants you to bring him 8 Diaphanous Wings from any of the firefly species in Zangarmarsh.
  kill Umbraglow Stinger##18132 |q 9790 |goto Zangarmarsh 73.8,70.07
step
  talk Prospector Conall##18295
  accept Blacksting's Bane##9896 |goto Zangarmarsh 68.56,49.37
step
  note Bring Blacksting's Stinger to Prospector Conall at Telredor.
  kill Blacksting##18283 |q 9896 |goto Zangarmarsh 49.75,60.06
step
  note Vindicator Idaar at Telredor wants you to kill 12 Withered Giants.
  kill Withered Giant##18124 |q 9783 |goto Zangarmarsh 82.43,41.36
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
  talk Nahuud##18097
  turnin A Message to Telaar##9792 |goto Nagrand 54.76,71.02 |tip {turninat}Nagrand
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
  kill Rajis Fyashe##18044 |q 9728 |goto Zangarmarsh 65.15,40.91 |elite
step
  talk Ikeyen##17956
  accept A Damp, Dark Place##9788 |goto Zangarmarsh 80.4,64.16
step
  note Look for Ikeyen's Belongings inside a cave south of Umbrafen. Return them to Ikeyen at Cenarion Refuge in Zangarmarsh.
  collect Ikeyen's Belongings##182122 |q 9788 |goto Zangarmarsh 70.49,97.94
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
  talk Watcher Jhang##17884
  turnin Lost in Action##9738 |goto Zangarmarsh 52.29,35.98
step
  talk Watcher Jhang##17884
  turnin The Warlord's Hideout##9763 |goto Zangarmarsh 52.29,35.98
step
  talk Ikuti##18008
  turnin Daggerfen Deviance##10115 |goto Zangarmarsh 41.94,27.19
step
  talk Puluu##18009
  turnin The Terror of Marshlight Lake##9902 |goto Zangarmarsh 40.85,28.66
step
  talk Puluu##18009
  turnin Stinger Venom##9830 |goto Zangarmarsh 40.85,28.66
step
  talk Puluu##18009
  turnin Lines of Communication##9833 |goto Zangarmarsh 40.85,28.66
step
  talk Maktu##18010
  turnin Natural Armor##9834 |goto Zangarmarsh 41.61,27.28
step
  talk Ikuti##18008
  turnin Ango'rosh Encroachment##9835 |goto Zangarmarsh 41.94,27.19
step
  talk Timothy Daniels##18019
  turnin Secrets of the Daggerfen##9848 |goto Zangarmarsh 41.21,28.67
step
  talk Ikuti##18008
  accept Overlord Gorefist##9839 |goto Zangarmarsh 41.94,27.19
step
  talk Maktu##18010
  accept Maktu's Revenge##9905 |goto Zangarmarsh 41.61,27.28
step
  note Ikuti wants you to kill Overlord Gorefist and 10 Ango'rosh Maulers. Return to the Orebor Harborage once you have completed the task.
  kill Overlord Gorefist##18160 |q 9839 |goto Zangarmarsh 18.39,7.79
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
  talk T'shu##17857
  turnin Oh, It's On!##9717 |goto Zangarmarsh 19.37,49.78
step
  talk Khn'nix##17866
  turnin Stalk the Stalker##9719 |goto Zangarmarsh 19.65,49.7
step
  talk Gzhun'tt##17856
  turnin Now That We're Friends...##9726 |goto Zangarmarsh 19.54,50.04
step
  talk Fahssn##17923
  turnin The Sporelings' Plight##9739 |goto Zangarmarsh 19.02,62.43
step
  talk Fahssn##17923
  turnin Natural Enemies##9743 |goto Zangarmarsh 19.02,62.43
step
  talk Watcher Leesa'oh##17831
  turnin Observing the Sporelings##9701 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Leesa'oh##17831
  accept A Question of Gluttony##9702 |goto Zangarmarsh 23.32,66.21
step
  note Collect 10 pieces of Discarded Nutriment and then return to Watcher Leesa'oh at the Cenarion Watchpost in Zangarmarsh.
  collect Discarded Nutriment##182031 |q 9702 |goto Zangarmarsh 30.2,63.94
step
  talk Prospector Conall##18295
  turnin Blacksting's Bane##9896 |goto Zangarmarsh 68.56,49.37
step
  talk Noraani##18006
  turnin Umbrafen Eel Filets##9780 |goto Zangarmarsh 67.64,47.87
step
  talk Vindicator Idaar##18004
  turnin An Unnatural Drought##9783 |goto Zangarmarsh 68.34,50.08
step
  talk Anchorite Ahuurn##18003
  turnin Idols of the Feralfen##9787 |goto Zangarmarsh 68.2,49.37
step
  talk Haalrun##18005
  turnin Diaphanous Wings##9790 |goto Zangarmarsh 67.81,47.91
step
  talk Anchorite Ahuurn##18003
  accept Gathering the Reagents##9801 |goto Zangarmarsh 68.2,49.37
step
  note Anchorite Ahuurn at Telredor wants you to bring him 4 Spore Bat Eyes and 4 Fen Strider Tentacles.
  kill Sporebat##18128 |q 9801 |goto Zangarmarsh 51.47,55.93
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
  kill Umbrafen Steam Pump Credit Marker##17998 |q 9720 |goto Zangarmarsh 70.6,80.29
step
  note Locate and kill Mragesh, then return to Maktu at the Orebor Harborage.
  kill Mragesh##18286 |q 9905 |goto Zangarmarsh 42.23,41.42
step
  talk Maktu##18010
  turnin Maktu's Revenge##9905 |goto Zangarmarsh 41.61,27.28
step
  talk Ikuti##18008
  turnin Overlord Gorefist##9839 |goto Zangarmarsh 41.94,27.19
step
  talk Watcher Leesa'oh##17831
  turnin A Question of Gluttony##9702 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Leesa'oh##17831
  accept Familiar Fungi##9708 |goto Zangarmarsh 23.32,66.21
step
  note Collect 15 Mushroom Samples and return them to Watcher Leesa'oh at the Cenarion Watchpost in Zangarmarsh.
  kill Ango'rosh Ogre##18117 |q 9708 |goto Zangarmarsh 33.71,31.19
step
  talk Anchorite Ahuurn##18003
  turnin Gathering the Reagents##9801 |goto Zangarmarsh 68.2,49.37
step
  talk Anchorite Ahuurn##18003
  accept Messenger to the Feralfen##9803 |goto Zangarmarsh 68.2,49.37
step
  note Drink Ahuurn's Elixir while standing in the Boha'mu Ruins. Speak to Elder Kuruti while you are in the form of an arakkoa.
  kill Elder Kuruti##18197 |q 9803 |goto Zangarmarsh 44.11,69.49 |elite
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
  kill Ango'rosh Mauler##18120 |q 9709 |goto Zangarmarsh 18.89,7.03
step
  talk Anchorite Ahuurn##18003
  turnin Messenger to the Feralfen##9803 |goto Zangarmarsh 68.2,49.37
step
  talk Watcher Leesa'oh##17831
  turnin Stealing Back the Mushrooms##9709 |goto Zangarmarsh 23.32,66.21
step
  note {travel}Terokkar Forest
  goto Terokkar Forest 57.5,55.78
]])
