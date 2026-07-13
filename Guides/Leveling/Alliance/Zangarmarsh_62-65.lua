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
  talk Ysiel Windsinger##17841
  accept Warden Hamoot##9778 |goto Zangarmarsh 78.4,62.02
step
  talk Windcaller Blackhoof##18070
  accept Blessings of the Ancients##9785 |goto Zangarmarsh 80.37,64.73
step
  talk Lauranna Thar'well##17909
  accept Plants of Zangarmarsh##9802 |goto Zangarmarsh 80.32,64.17
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
  note Locate and deal with Boglash, then return to Lethyn Moonfire at Cenarion Refuge.
  kill Boglash##18281 |q 9895 |goto Zangarmarsh 82.07,71.39
step
  note Ikeyen at the Cenarion Refuge wants you to travel to Umbrafen Village and slay Kataru, 8 Umbrafen Seers, 6 Umbrafen Witchdoctors and 6 Umbrafen Oracles.
  kill Kataru##18080 |q 9747 |goto Zangarmarsh 85.29,90.93
step
  note Windcaller Blackhoof wants you to speak to the ancients Ashyen and Keleth at Cenarion Refuge and obtain their blessings.
  kill Ashyen##17900 |q 9785 |goto Zangarmarsh 81.1,63.87
step
  talk K. Lee Smallfry##17634
  accept The Zapthrottle Mote Extractor!##9636 |goto Zangarmarsh 68.65,50.21
step
  talk Anchorite Ahuurn##18003
  accept The Orebor Harborage##9776 |goto Zangarmarsh 68.2,49.37
step
  talk Ruam##18007
  accept Fulgor Spores##9777 |goto Zangarmarsh 68.63,48.73
step
  talk Haalrun##18005
  accept Too Many Mouths to Feed##9781 |goto Zangarmarsh 67.81,47.91
step
  talk Vindicator Idaar##18004
  accept The Dead Mire##9782 |goto Zangarmarsh 68.34,50.08
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
  note Prospector Conall at Telredor wants you to kill Sporewing.
  kill Sporewing##18280 |q 9901 |goto Zangarmarsh 78.01,45.41
step
  note Kill 10 Marshfang Rippers and return to Noraani at Telredor.
  kill Marshfang Ripper##18130 |q 9791 |goto Zangarmarsh 78.0,49.38
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
  talk Puluu##18009
  accept Lines of Communication##9833 |goto Zangarmarsh 40.85,28.66
step
  talk Maktu##18010
  accept Natural Armor##9834 |goto Zangarmarsh 41.61,27.28
step
  talk Ikuti##18008
  accept Ango'rosh Encroachment##9835 |goto Zangarmarsh 41.94,27.19
step
  talk Timothy Daniels##18019
  accept Secrets of the Daggerfen##9848 |goto Zangarmarsh 41.21,28.67
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
  kill Warlord Kalithresh##17798 |q 9763 |goto The Steamvault - Dungeon -1,-1
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
  talk T'shu##17857
  accept Oh, It's On!##9717 |goto Zangarmarsh 19.37,49.78
step
  talk Khn'nix##17866
  accept Stalk the Stalker##9719 |goto Zangarmarsh 19.65,49.7
step
  talk Gzhun'tt##17856
  accept Now That We're Friends...##9726 |goto Zangarmarsh 19.54,50.04
step
  talk Gshaff##17925
  accept Fertile Spores##9806 |goto Zangarmarsh 19.14,49.38
step
  talk Msshi'fn##17924
  accept Glowcap Mushrooms##9808 |goto Zangarmarsh 19.68,52.07
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
  talk Fahssn##17923
  accept Natural Enemies##9743 |goto Zangarmarsh 19.02,62.43
step
  talk Fahssn##17923
  accept Sporeggar##9919 |goto Zangarmarsh 19.02,62.43
step
  note Puluu at the Orebor Harborage wants you to kill 12 Marshfang Slicers.
  kill Marshfang Slicer##18131 |q 9833 |goto Zangarmarsh 33.06,58.28
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
  talk Ikeyen##17956
  accept A Damp, Dark Place##9788 |goto Zangarmarsh 80.4,64.16
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
  note Kill 10 Mire Hydra and return to Haalrun at Telredor.
  kill Mire Hydra##18213 |q 9781 |goto Zangarmarsh 71.26,65.92
step
  note Slay 10 Marsh Dredgers and 10 Marsh Lurkers, and then return to Lauranna Thar'well at the Cenarion Refuge in Zangarmarsh.
  kill Marsh Dredger##18137 |q 10096 |goto Zangarmarsh 73.71,94.18
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
  talk Nahuud##18097
  turnin A Message to Telaar##9792 |goto Nagrand 54.76,71.02 |tip {turninat}Nagrand
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
  talk Vindicator Idaar##18004
  accept An Unnatural Drought##9783 |goto Zangarmarsh 68.34,50.08
step
  talk Anchorite Ahuurn##18003
  accept Idols of the Feralfen##9787 |goto Zangarmarsh 68.2,49.37
step
  talk Haalrun##18005
  accept Diaphanous Wings##9790 |goto Zangarmarsh 67.81,47.91
step
  talk Prospector Conall##18295
  accept Blacksting's Bane##9896 |goto Zangarmarsh 68.56,49.37
step
  note Vindicator Idaar at Telredor wants you to kill 12 Withered Giants.
  kill Withered Giant##18124 |q 9783 |goto Zangarmarsh 82.43,41.36
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
  talk Morthis Whisperwing##22832
  accept Eternal Vigilance##11011 |goto Zangarmarsh 80.18,65.15
step
  note Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
  kill Umbrafen Steam Pump Credit Marker##17998 |q 9720 |goto Zangarmarsh 70.6,80.29
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
  talk Morthis Whisperwing##22832
  turnin Eternal Vigilance##11011 |goto Zangarmarsh 80.18,65.15
step
  talk Ysiel Windsinger##17841
  turnin Balance Must Be Preserved##9720 |goto Zangarmarsh 78.4,62.02
step
  talk Anchorite Ahuurn##18003
  turnin Gathering the Reagents##9801 |goto Zangarmarsh 68.2,49.37
step
  talk Anchorite Ahuurn##18003
  accept Messenger to the Feralfen##9803 |goto Zangarmarsh 68.2,49.37
step
  talk Watcher Leesa'oh##17831
  turnin Familiar Fungi##9708 |goto Zangarmarsh 23.32,66.21
step
  talk Watcher Leesa'oh##17831
  accept Stealing Back the Mushrooms##9709 |goto Zangarmarsh 23.32,66.21
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
