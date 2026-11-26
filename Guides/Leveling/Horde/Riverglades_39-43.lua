-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Riverglades (39-43)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Thousand Needles (37-41)",
	rev = "6d7d8627",
}, [[
step
  ding 38
step
  talk Mirelle Tremayne##5819
  accept Armory of Sunnyglade##97884 |goto Undercity 61.64,28.95
step
  only haveq(95141)
  note Report to Krom'rosh at the Rog'mar outpost in the Riverglades.
  talk Krom'rosh##256418
  turnin Report to Rog'mar##95141 |goto Riverglades 59.39,45.63
step
  only haveq(95143)
  note Find Tan'jani at Rog'mar in the Riverglades.
  talk Tan'jani##263190
  turnin Finding Tan'jani##95143 |goto Riverglades 58.13,45.32
step
  talk Krom'rosh##256418
  accept A Message in Blood##93786 |goto Riverglades 59.39,45.63
step
  talk Krom'rosh##256418
  accept Food for the Taking##93787 |goto Riverglades 59.39,45.63
step
  talk Kreza Darkthorn##256657
  accept Borrowed Blades##93788 |goto Riverglades 59.92,45.97
step
  talk Tan'jani##263190
  accept Fetch 'n' Fletch##95951 |goto Riverglades 58.13,45.32
step
  note Collect Wood Bundles from Peasant Woodpiles in Turner's Logging Camp then fletch them into 20 Makeshift Stickin' Spears.
  collect 20 Makeshift Stickin' Spear##271630 |q 95951 |goto Riverglades 58.13,45.32
step
  talk Neza Bloodsnout##258031
  accept Feathers for Fletching##96107 |goto Riverglades 60.46,47.86
step
  talk Tan'jani##263190
  turnin Fetch 'n' Fletch##95951 |goto Riverglades 58.13,45.32
step
  talk Tan'jani##263190
  accept Stick 'Em##95955 |goto Riverglades 58.13,45.32
step
  talk Fuzzle##259158
  accept Biting the Hand##94961 |goto Riverglades 47.31,51.41
step
  note Bring 20 Twilight Finger Bones to Fuzzle.
  collect 20 Twilight Finger Bone##267073 |q 94961 |goto Riverglades 47.02,48.24 |tip {dropsfrom}Twilight Shadowmancer, Twilight Neophyte, Twilight Raider
step
  note Travel to Sunnyglade in the Riverglades and recover the tome of Tremayne Family Blacksmithing Techniques.
  collect Tremayne Family Blacksmithing Techniques##278868 |q 97884 |goto Riverglades 46.92,49.9
step
  talk Fuzzle##259158
  turnin Biting the Hand##94961 |goto Riverglades 47.31,51.41
step
  talk Fuzzle##259158
  accept Biting the Hand##94963 |goto Riverglades 47.31,51.41
step
  note <Fuzzle snarls.>
  turnin Biting the Hand##94963 |goto Riverglades 41.59,47.73
step
  talk Picked Carcass##263316
  accept A Feast for Buzzards##96103 |goto Riverglades 61.64,58.82
step
  note Bring 6 Plains Buzzard Feathers to Neza Bloodsnout at Rog'mar.
  collect 6 Plains Buzzard Feather##271793 |q 96107 |goto Riverglades 65.48,57.04 |tip {dropsfrom}Low Plains Buzzard
step
  note Impale 10 Freshwater Crocolisks then return to Tran'jani in Rog'mar.
  kill Freshwater Crocolisk##259046 |q 95955 |goto Riverglades 48.42,56.86
step
  note Retrieve 10 Woodworker's Axe from the lumberjacks at Turner's Logging Camp for Kreza Darkthorn in Rog'mar.
  collect 10 Woodworker's Axe##263972 |q 93788 |goto Riverglades 40.16,62.39 |tip {dropsfrom}Turner's Mill Lumberjack
step
  note Slay 12 Meadowsbrook Farmhands, then return to Krom'rosh with news of your success.
  kill Meadowsbrook Farmhand##256383 |q 93786 |goto Riverglades 45.55,81.27
step
  note Steal 6 Feed Satchels from the Alliance farm in Meadowsbrook then return to Krom'rosh.
  collect 6 Feed Satchel##262640 |q 93787 |goto Riverglades 46.26,82.15
step
  only haveq(97332)
  note Deliver the Twice Reordered Package to Wharfmaster Whizzbuzz at Powderfuse Port in the Riverglades.
  talk Wharfmaster Whizzbuzz##259961
  turnin Twice Misplaced Trust##97332 |goto Riverglades 79.45,52.71
step
  talk Friz Frazzlespark##255897
  accept Frazzlespark's Crate##95062 |goto Riverglades 77.1,52.9
step
  talk Fimbo Greasemitz##259962
  accept A Taste of the Sea##95121 |goto Riverglades 79.02,54.2
step
  talk Sleebo Fizzlespout##263367
  accept Gaseous Gold##96063 |goto Riverglades 68.15,48.57
step
  talk Krom'rosh##256418
  turnin A Message in Blood##93786 |goto Riverglades 59.39,45.63
step
  talk Krom'rosh##256418
  turnin Food for the Taking##93787 |goto Riverglades 59.39,45.63
step
  talk Kreza Darkthorn##256657
  turnin Borrowed Blades##93788 |goto Riverglades 59.92,45.97
step
  note Deliver Frazzlespark's Crate to Krom'rosh at Rog'mar.
  talk Krom'rosh##256418
  turnin Frazzlespark's Crate##95062 |goto Riverglades 59.39,45.63
step
  talk Tan'jani##263190
  turnin Stick 'Em##95955 |goto Riverglades 58.13,45.32
step
  note Bring the Gnawed Skull to Neza Bloodsnout at Rog'mar.
  talk Neza Bloodsnout##258031
  turnin A Feast for Buzzards##96103 |goto Riverglades 60.46,47.86
step
  talk Neza Bloodsnout##258031
  turnin Feathers for Fletching##96107 |goto Riverglades 60.46,47.86
step
  talk Kreza Darkthorn##256657
  accept The Goblin Trader##93976 |goto Riverglades 59.92,45.97
step
  talk Krom'rosh##256418
  accept A Gift From Our Enemies##94480 |goto Riverglades 59.39,45.63
step
  talk Krom'rosh##256418
  accept Show Them How It's Done##94483 |goto Riverglades 59.39,45.63
step
  talk Neza Bloodsnout##258031
  accept Song of the Strider##96104 |goto Riverglades 60.46,47.86
step
  talk Neza Bloodsnout##258031
  accept Poison Tips##96108 |goto Riverglades 60.46,47.86
step
  note Deliver the Stolen Feed to Gorg in Rog'mar.
  talk Gorg##256655
  turnin A Gift From Our Enemies##94480 |goto Riverglades 58.58,44.61
step
  talk Gorg##256655
  accept A Serving of Strength##94481 |goto Riverglades 58.58,44.61
step
  note Feed 8 Rog'mar Trainees at the training grounds.
  kill Rog'mar Trainee##256749 |q 94481 |goto Riverglades 59.22,37.48
step
  talk Gorg##256655
  turnin A Serving of Strength##94481 |goto Riverglades 58.58,44.61
step
  note Gather 8 Marsh Gas Vials for Sleebo Fizzlespout.
  collect 8 Marsh Gas Vial##272004 |q 96063 |goto Riverglades 62.34,59.01 |tip {dropsfrom}Marsh Gas Vent
step
  note Bring an Intact Tallstrider Beak to Neza Bloodsnout at Rog'mar.
  collect Intact Tallstrider Beak##271778 |q 96104 |goto Riverglades 65.29,56.08 |tip {dropsfrom}Roving Tallstrider
step
  note Bring 4 samples of Glade Viper Venom to Neza Bloodsnout at Rog'mar.
  collect 4 Glade Viper Venom##271776 |q 96108 |goto Riverglades 62.34,58.13 |tip {dropsfrom}Glade Viper
step
  talk Sleebo Fizzlespout##263367
  turnin Gaseous Gold##96063 |goto Riverglades 68.15,48.57
step
  talk Sleebo Fizzlespout##263367
  accept Rock 'em and Sock 'em##96067 |goto Riverglades 68.15,48.57
step
  note Help Sleebo test his creation.
  talk Sleebo Fizzlespout##263367
  turnin Rock 'em and Sock 'em##96067 |goto Riverglades 68.15,48.57
step
  talk Neza Bloodsnout##258031
  turnin Song of the Strider##96104 |goto Riverglades 60.46,47.86
step
  talk Neza Bloodsnout##258031
  turnin Poison Tips##96108 |goto Riverglades 60.46,47.86
step
  talk Neza Bloodsnout##258031
  accept A Hunter's Quiver##96109 |goto Riverglades 60.46,47.86
step
  only level>=41
  talk Neza Bloodsnout##258031
  accept King of the Wild Plains##96105 |goto Riverglades 60.46,47.86
step
  only level>=42
  click WANTED!##645164
  accept WANTED: Ghostmaw##95992 |goto Riverglades 59.46,47.02
step
  only haveq(96105)
  note Use the Tallstrider Call to call forth the leader of the lion pride. Slay the beast and retrieve its hide for Neza Bloodsnout at Rog'mar.
  kill Ombassa##263315 |q 96105 |goto Riverglades 59.81,53.05 |elite
  collect Ombassa's Hide##281052 |q 96105 |goto Riverglades 59.81,53.05
step
  note Gather 6 Prized Lion Hides for Neza Bloodsnout at Rog'mar.
  collect 6 Prized Lion Hide##266888 |q 96109 |goto Riverglades 58.97,53.47 |tip {dropsfrom}Wildplains Patriarch, Wildplains Huntress
step
  only haveq(95992)
  note Bring Ghostmaw's Fang to Tan'jani in Rog'mar.
  kill Ghostmaw##263380 |q 95992 |goto Riverglades 52.72,52.9 |elite
  collect Ghostmaw's Fang##271828 |q 95992 |goto Riverglades 52.72,52.9
step
  only haveq(95992)
  talk Tan'jani##263190
  turnin WANTED: Ghostmaw##95992 |goto Riverglades 58.13,45.32
step
  only haveq(96105)
  talk Neza Bloodsnout##258031
  turnin King of the Wild Plains##96105 |goto Riverglades 60.46,47.86
step
  talk Neza Bloodsnout##258031
  turnin A Hunter's Quiver##96109 |goto Riverglades 60.46,47.86
step
  only not completed(94678) not haveq(94678)
  talk Neza Bloodsnout##258031
  accept Gnoll Infestation##94532 |goto Riverglades 60.46,47.86
step
  talk Kreza Darkthorn##256657
  accept Bristle Hills Bandits##94535 |goto Riverglades 59.92,45.97
step
  only not completed(94679) not haveq(94679) level>=40
  talk Neza Bloodsnout##258031
  accept Snargl's Snout##94533 |goto Riverglades 60.46,47.86
step
  talk Na'zok##256728
  accept Drive Them Back##95163 |goto Riverglades 70.73,28.09
step
  talk Na'zok##256728
  accept Paletusk Harvesting##95162 |goto Riverglades 70.73,28.09
step
  note Gather 10 Chunks of Boar Meat for Na'zok near Bolder'ok.
  collect 10 Chunk of Boar Meat##769 |q 95162 |goto Riverglades 70.3,32.52 |tip {dropsfrom}Mature Paletusk, Young Paletusk, Juvenile Paletusk
step
  talk Na'zok##256728
  turnin Paletusk Harvesting##95162 |goto Riverglades 70.73,28.09
step
  note Deliver the blade to Kreza Darkthorn's acquaintance at the docks east of Rog'mar.
  talk Friz Frazzlespark##255897
  turnin The Goblin Trader##93976 |goto Riverglades 77.1,52.9
step
  talk Wharfmaster Whizzbuzz##259961
  accept Saltwater Savages##95118 |goto Riverglades 79.45,52.71
step
  only level>=42
  click WANTED!##628948
  accept WANTED: Old Rot-Chum##95120 |goto Riverglades 78.49,53.94
step
  click WANTED!##628948
  accept WANTED: Trapclaw##95254 |goto Riverglades 78.49,53.94
step
  note Bring Trapclaw's Pincer to Fimbo Greasemitz.
  collect Trapclaw's Pincer##268586 |q 95254 |goto Riverglades 82.58,52 |tip {dropsfrom}Trapclaw
step
  talk Fimbo Greasemitz##259962
  turnin WANTED: Trapclaw##95254 |goto Riverglades 79.02,54.2
step
  click Painted Hide##629761
  accept Terrors From the Deep##95260 |goto Riverglades 72.36,61.9
step
  note Kill 8 Murloc Oracles and 8 Murloc Warriors along the Eastwind Shore.
  kill Murloc Warrior##256801 |q 95118/1 |goto Riverglades 73.38,68.83
  kill Murloc Oracle##255898 |q 95118 |goto Riverglades 73.73,69.79
step
  only haveq(95120)
  note Bring proof of Old Rot-Chum's demise to Wharfmaster Whizzbuzz.
  kill Old Rot-Chum##257001 |q 95120 |goto Riverglades 77.1,72.8 |elite
  collect Rot-Covered Harpoon##268341 |q 95120 |goto Riverglades 77.1,72.8
step
  note Gather 12 Murloc Eyes and 6 pieces of Sand Crawler Meat for Fimbo Greasemitz.
  collect Saltwater Murloc Eye##268344 |q 95121/1 |goto Riverglades 73.73,69.79 |tip {dropsfrom}Murloc Oracle, Murloc Tideskimmer, Murloc Warrior
  collect Sand Crawler Meat##268345 |q 95121 |goto Riverglades 70.6,71.82 |tip {dropsfrom}Sand Crawler, Shore Crawler
step
  note Return 10 Young Paletusks to Na'zok's farm near Bolder'ok.
  talk Young Paletusk##258331 |q 95163 |goto Riverglades 56.27,72.11
step
  note Slay 8 Farholde Priests and 12 Farholde Scouts south of the river.
  kill Farholde Scout##257926 |q 94483/2 |goto Riverglades 48.24,67.27
  kill Farholde Priest##270667 |q 94483 |goto Riverglades 47.74,66.52
step
  talk Gelinda Coppergleam##262399
  accept Clear 'em Out##95792 |goto Riverglades 30.21,69.07
step
  talk Gelinda Coppergleam##262399
  accept Proof of Profit##95934 |goto Riverglades 30.21,69.07
step
  only not completed(94678) not haveq(94678)
  note Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Neza Bloodsnout at Rog'mar.
  kill Redridge Trapper##255772 |q 94532/2 |goto Riverglades 29.15,65.93
  kill Redridge Brute##255769 |q 94532/3 |goto Riverglades 29.31,64.93
  kill Redridge Mystic##255770 |q 94532 |goto Riverglades 29.36,64.8
step
  note Gather 40 Stolen Ore from gnolls in the Bristle Hills for Kreza Darkthorn.
  collect 40 Stolen Ore##265358 |q 94535 |goto Riverglades 29.31,64.93 |tip {dropsfrom}Redridge Brute, Redridge Mystic, Redridge Trapper
step
  note Kill 8 Cinderscale Whelps and 4 Cinderscale Warriors for Gelinda Coppergleam.
  kill Cinderscale Warrior##262477 |q 95792/2 |goto Riverglades 29.99,72.81
  kill Cinderscale Whelp##262473 |q 95792 |goto Riverglades 30.01,73.05
step
  note Find a piece of Cubic Draconia for Gelinda Coppergleam.
  collect Cubic Draconia##271611 |q 95934 |goto Riverglades 30.14,73.35
step
  talk Gelinda Coppergleam##262399
  turnin Clear 'em Out##95792 |goto Riverglades 30.21,69.07
step
  talk Gelinda Coppergleam##262399
  turnin Proof of Profit##95934 |goto Riverglades 30.21,69.07
step
  only not completed(94679) not haveq(94679) haveq(94533)
  note Locate Snargl in the Bristle Hills, kill him, and retrieve his snout for Neza Bloodsnout.
  kill Snargl##255906 |q 94533 |goto Riverglades 17.16,71.96 |elite
  collect Snargl's Snout##265357 |q 94533 |goto Riverglades 17.16,71.96
step
  talk Krom'rosh##256418
  turnin Show Them How It's Done##94483 |goto Riverglades 59.39,45.63
step
  only not completed(94678) not haveq(94678)
  talk Neza Bloodsnout##258031
  turnin Gnoll Infestation##94532 |goto Riverglades 60.46,47.86
step
  only not completed(94679) not haveq(94679) haveq(94533)
  talk Neza Bloodsnout##258031
  turnin Snargl's Snout##94533 |goto Riverglades 60.46,47.86
step
  talk Kreza Darkthorn##256657
  turnin Bristle Hills Bandits##94535 |goto Riverglades 59.92,45.97
step
  talk Tran'gul##256710
  accept Encroaching Twilight##94672 |goto Riverglades 59.51,43.96
step
  talk Tran'gul##256710
  accept Twilight Missives##94680 |goto Riverglades 59.51,43.96
step
  note Defeat 8 Twilight Raiders and 8 Twilight Neophytes within Sunnyglade for Tran'gul in Rog'mar.
  kill Twilight Raider##256952 |q 94672/1 |goto Riverglades 49.22,48.8
  kill Twilight Neophyte##256798 |q 94672/3 |goto Riverglades 47.84,47.47
  kill Twilight Shadowmancer##254560 |q 94672 |goto Riverglades 47.02,48.24
step
  note Retrieve 3 Twilight Missives from Twilight Shadowmancers in Sunnyglade for Tran'gul in Rog'mar.
  collect 3 Twilight Missive##265745 |q 94680 |goto Riverglades 47.02,48.24 |tip {dropsfrom}Twilight Shadowmancer
step
  talk Tran'gul##256710
  turnin Encroaching Twilight##94672 |goto Riverglades 59.51,43.96
step
  talk Tran'gul##256710
  turnin Twilight Missives##94680 |goto Riverglades 59.51,43.96
step
  talk Tran'gul##256710
  accept Digging for Answers##94727 |goto Riverglades 59.51,43.96
step
  note Convince a Twilight's Hammer miner in Sunnyglade to divulge their secrets.
  talk Clubtoe##260931
  turnin Digging for Answers##94727 |goto Riverglades 49.95,46.99
step
  talk Clubtoe##260931
  accept The Purple Ones##95417 |goto Riverglades 49.95,46.99
step
  talk Clubtoe##260931
  accept Sickening Lights##95602 |goto Riverglades 49.95,46.99
step
  note Destroy 5 Twilight Ritual Circles found throughout the caves underneath Sunnyglade.
  get Sickening Lights |q 95602
step
  note Find missing ogres in the caves beneath Sunnyglade for Clubtoe.
  talk Twilight Brute##261208
  turnin The Purple Ones##95417 |goto Riverglades 49.18,46.74
step
  talk Clubtoe##260931
  turnin Sickening Lights##95602 |goto Riverglades 49.95,46.99
step
  talk Twilight Brute##261208
  accept The Purple Ones##95601 |goto Riverglades 49.18,46.74
step
  note Kill 5 Empowered Brutes and 10 Twilight Ritualists then return to Clubtoe in Sunnyglade.
  kill Twilight Ritualist##262169 |q 95601/2 |goto Riverglades 48.2,49.49
  kill Empowered Brute##261711 |q 95601 |goto Riverglades 47.88,50.27
step
  talk Clubtoe##260931
  turnin The Purple Ones##95601 |goto Riverglades 49.95,46.99
step
  only level>=41
  talk Clubtoe##260931
  accept Twilight No More!##95427 |goto Riverglades 49.95,46.99
step
  only haveq(95427)
  note Kill Chogg'Zac in the Sunnyglade cave and collect their heads for Clubtoe.
  kill Chogg'Zac##256899 |q 95427 |goto Riverglades 46.22,51.11 |elite
  collect Chogg's Head##265750 |q 95427 |goto Riverglades 46.22,51.11
step
  only haveq(95427)
  talk Clubtoe##260931
  turnin Twilight No More!##95427 |goto Riverglades 49.95,46.99
step
  only completed(95427)
  talk Clubtoe##260931
  accept Spread the Word##95418 |goto Riverglades 49.95,46.99
step
  only haveq(95418)
  note Deliver the head of Chogg to Tran'gul in Rog'mar.
  talk Tran'gul##256710
  turnin Spread the Word##95418 |goto Riverglades 59.51,43.96
step
  only completed(95418)
  talk Tran'gul##256710
  accept Land of Giants##95420 |goto Riverglades 59.51,43.96
step
  only level>=43
  click Wanted##707249
  accept WANTED: Scoutmaster Vargas##95882 |goto Riverglades 59.6,47.01
step
  talk Wharfmaster Whizzbuzz##259961
  turnin Saltwater Savages##95118 |goto Riverglades 79.45,52.71
step
  only haveq(95120)
  talk Wharfmaster Whizzbuzz##259961
  turnin WANTED: Old Rot-Chum##95120 |goto Riverglades 79.45,52.71
step
  talk Fimbo Greasemitz##259962
  turnin A Taste of the Sea##95121 |goto Riverglades 79.02,54.2
step
  note Find someone at Powderfuse Port who can identify the monster from the painted hide.
  talk Argo Brinewhistle##260231
  turnin Terrors From the Deep##95260 |goto Riverglades 79.95,52.49
step
  talk Argo Brinewhistle##260231
  accept It Takes Guts##95261 |goto Riverglades 79.95,52.49
step
  talk Wharfmaster Whizzbuzz##259961
  accept Unfriendly Competition##95119 |goto Riverglades 79.45,52.71
step
  talk Friz Frazzlespark##255897
  accept Smuggler's Paradise##95288 |goto Riverglades 77.1,52.9
step
  note Kill 10 Eastsea Buccaneers and 10 Eastsea Musketeers along the Eastwind Shore, north of Powderfuse Port.
  kill Eastsea Buccaneer##257901 |q 95119/1 |goto Riverglades 86.63,37.49
  kill Eastsea Musketeer##257910 |q 95119 |goto Riverglades 86.19,36.87
step
  note Collect 8 Smuggled Goods for Friz Frazzlespark at Powderfuse Port.
  collect 8 Smuggled Goods##268796 |q 95288 |goto Riverglades 86.63,37.49 |tip {dropsfrom}Eastsea Buccaneer, Eastsea Musketeer
step
  talk Na'zok##256728
  turnin Drive Them Back##95163 |goto Riverglades 70.73,28.09
step
  note Collect 15 Beast Entrails and 8 Rotflesh Mushrooms for Argo Brinewhistle.
  collect 15 Beast Entrails##268632 |q 95261/1 |goto Riverglades 70.3,32.52 |tip {dropsfrom}Mature Paletusk, Sand Crawler, Shore Crawler
  collect 8 Rotflesh Mushroom##268664 |q 95261 |goto Riverglades 74.76,25.66
step
  only haveq(95882)
  note Bring the Scoutmaster's Eye to Neza Bloodsnout in Rog'mar.
  kill Scoutmaster Vargas##260211 |q 95882 |goto Riverglades 75.46,34.29 |elite
  collect Scoutmaster's Eye##268581 |q 95882 |goto Riverglades 75.46,34.29
step
  only haveq(95420)
  note Deliver Chogg's head to the ogre city to the north.
  talk Clugfist##255829
  turnin Land of Giants##95420 |goto Riverglades 64.25,15.72
step
  only completed(95420)
  talk Clugfist##255829
  accept Might Makes Right##95424 |goto Riverglades 64.25,15.72
step
  only completed(95420)
  talk Clugfist##255829
  accept Unworthy Champion##95425 |goto Riverglades 64.25,15.72
step
  talk Jom-jom##258048
  accept Jom-jom's Escape##94556 |goto Riverglades 73.39,24.72
step
  note Escort Jom-jom to Clugfist at Bolder'ok.
  talk Clugfist##255829
  turnin Jom-jom's Escape##94556 |goto Riverglades 64.25,15.72
step
  only haveq(95424)
  note Kill 7 Twilight Maulers and 7 Twilight Firecallers for Clugfist in Bolder'ok.
  kill Twilight Firecaller##261497 |q 95424/2 |goto Riverglades 76.05,27.73
  kill Twilight Mauler##260968 |q 95424 |goto Riverglades 76.1,28.63
step
  only haveq(95425)
  note Collect Skullthumper from Klunk for Clugfist in Bolder'ok.
  collect Skullbasher##269257 |q 95425 |goto Riverglades 74.7,27.27 |tip {dropsfrom}Klunk
step
  only haveq(95424)
  talk Clugfist##255829
  turnin Might Makes Right##95424 |goto Riverglades 64.25,15.72
step
  only haveq(95425)
  talk Clugfist##255829
  turnin Unworthy Champion##95425 |goto Riverglades 64.25,15.72
step
  only completed(95424) completed(95425)
  talk Clugfist##255829
  accept Bloodmaster's Ring##94668 |goto Riverglades 64.25,15.72
step
  only completed(95424) completed(95425)
  talk Gorgegut##259988
  accept Step One: Rock##95183 |goto Riverglades 69.64,25.93
step
  only completed(95424) completed(95425)
  talk Clugfist##255829
  accept Clugfist's Decree##95428 |goto Riverglades 64.25,15.72
step
  only haveq(95183)
  note Gather 10 Good Rocks for Hamur in Bolder'ok.
  collect 10 Good Rock##271892 |q 95183 |goto Riverglades 68.5,29.1 |tip {dropsfrom}Rock Pile
step
  only haveq(94668)
  note Report to Jezap at the Bloodmaster's Ring.
  talk Jezap Jinglesprocket##257062
  turnin Bloodmaster's Ring##94668 |goto Riverglades 65.59,21.32
step
  only haveq(95183)
  talk Hamur##263440
  turnin Step One: Rock##95183 |goto Riverglades 67.24,21.75
step
  only completed(94668)
  talk Jezap Jinglesprocket##257062
  accept Pay to Play##94669 |goto Riverglades 65.59,21.32
step
  only haveq(94669)
  note Pay the safety deposit to qualify for the Bloodmaster's Ring.
  talk Jezap Jinglesprocket##257062
  turnin Pay to Play##94669 |goto Riverglades 65.59,21.32
step
  only completed(94669) level>=41
  talk Jezap Jinglesprocket##257062
  accept Bloodmaster's Ring##94670 |goto Riverglades 65.59,21.32
step
  only haveq(94670)
  note Defeat Buzzbeak in the Bloodmaster's Ring.
  kill Buzzbeak##257056 |q 94670 |goto Riverglades 65.61,20.66 |elite
step
  only haveq(94670)
  talk Jezap Jinglesprocket##257062
  turnin Bloodmaster's Ring##94670 |goto Riverglades 65.59,21.32
step
  only completed(94670) level>=42
  talk Jezap Jinglesprocket##257062
  accept Bloodmaster's Ring##94739 |goto Riverglades 65.59,21.32
step
  only haveq(94739)
  note Defeat Kronk in the Bloodmaster's Ring.
  kill Kronk##258491 |q 94739 |goto Riverglades 65.41,19.88 |elite
step
  only haveq(94739)
  talk Jezap Jinglesprocket##257062
  turnin Bloodmaster's Ring##94739 |goto Riverglades 65.59,21.32
step
  only completed(94739) level>=42
  talk Jezap Jinglesprocket##257062
  accept Bloodmaster's Ring##94962 |goto Riverglades 65.59,21.32
step
  only haveq(94962)
  note Defeat Bonegnaw in the Bloodmaster's Ring.
  kill Bonegnaw##255892 |q 94962 |goto Riverglades 65.56,20.49 |elite
step
  only haveq(94962)
  talk Jezap Jinglesprocket##257062
  turnin Bloodmaster's Ring##94962 |goto Riverglades 65.59,21.32
step
  only completed(94962) level>=43
  talk Jezap Jinglesprocket##257062
  accept Bloodmaster's Ring##94964 |goto Riverglades 65.59,21.32
step
  only haveq(94964)
  note Defeat Mog'thar in the Bloodmaster's Ring.
  kill Mog'thar##258626 |q 94964 |goto Riverglades 65.57,20.51 |elite
step
  only haveq(94964)
  talk Jezap Jinglesprocket##257062
  turnin Bloodmaster's Ring##94964 |goto Riverglades 65.59,21.32
step
  only completed(94964)
  talk Jezap Jinglesprocket##257062
  accept Our Ogre Friend##94733 |goto Riverglades 65.59,21.32
step
  only haveq(94733)
  note Locate Gobam in Bolder'ok.
  talk Gobam##257058
  turnin Our Ogre Friend##94733 |goto Riverglades 67,17.18
step
  only completed(94733)
  talk Gobam##257058
  accept A Boar's Delight##94734 |goto Riverglades 67,17.18
step
  only haveq(94734)
  note Gather 8 Sweetberry and 12 Riverweed for Gobam.
  collect 8 Sweetberry##265808 |q 94734/1 |goto Riverglades 79.2,37.29 |tip {dropsfrom}Freshly Picked Berries
  collect 12 Riverweed##265806 |q 94734 |goto Riverglades 51.65,52.77
step
  only haveq(94734)
  talk Gobam##257058
  turnin A Boar's Delight##94734 |goto Riverglades 67,17.18
step
  only completed(94734)
  talk Gobam##257058
  accept A Treat for a Friend##94737 |goto Riverglades 67,17.18
step
  only haveq(94737)
  note Deliver the bundle of goods to Jezap Jinglesprocket in Bolder'ok.
  talk Jezap Jinglesprocket##257062
  turnin A Treat for a Friend##94737 |goto Riverglades 65.59,21.32
step
  only completed(94737) level>=44
  talk Jezap Jinglesprocket##257062
  accept Bloodmaster's Ring##94965 |goto Riverglades 65.59,21.32
step
  only haveq(94965)
  note Defeat Snufflesnout in the Bloodmaster's Ring.
  kill Snufflesnout##258595 |q 94965 |goto Riverglades 65.55,20.43 |elite
step
  only haveq(94965)
  talk Jezap Jinglesprocket##257062
  turnin Bloodmaster's Ring##94965 |goto Riverglades 65.59,21.32
step
  only haveq(95428)
  note Report to Krom'rosh in Rog'mar.
  talk Krom'rosh##256418
  turnin Clugfist's Decree##95428 |goto Riverglades 59.39,45.63
step
  only haveq(95882)
  talk Neza Bloodsnout##258031
  turnin WANTED: Scoutmaster Vargas##95882 |goto Riverglades 60.46,47.86
step
  only completed(95428)
  talk Krom'rosh##256418
  accept The Wayward Warrior##94744 |goto Riverglades 59.39,45.63
step
  talk Wharfmaster Whizzbuzz##259961
  turnin Unfriendly Competition##95119 |goto Riverglades 79.45,52.71
step
  talk Argo Brinewhistle##260231
  turnin It Takes Guts##95261 |goto Riverglades 79.95,52.49
step
  talk Friz Frazzlespark##255897
  turnin Smuggler's Paradise##95288 |goto Riverglades 77.1,52.9
step
  talk Argo Brinewhistle##260231
  accept The Monster Surfaces##95267 |goto Riverglades 79.95,52.49
step
  talk Friz Frazzlespark##255897
  accept Smuggler's Special##95293 |goto Riverglades 77.1,52.9
step
  talk Wharfmaster Whizzbuzz##259961
  accept Unchecked Expansion##95122 |goto Riverglades 79.45,52.71
step
  talk Wharfmaster Whizzbuzz##259961
  accept A Blast Ye Scurvy Dogs!##95123 |goto Riverglades 79.45,52.71
step
  note Deliver The Friz Special to Captain Bentcoin in Eastwind Shore.
  talk Captain Bentcoin##260390
  turnin Smuggler's Special##95293 |goto Riverglades 91.26,39.72
step
  talk Captain Haynes##260391
  accept Smuggler's Bargain##95294 |goto Riverglades 91.2,39.75
step
  note Kill 8 Eastsea Raiders and 8 Eastsea Bombardiers for Wharfmaster Whizzbuzz.
  kill Eastsea Bombardier##257916 |q 95122/2 |goto Riverglades 79.13,33.31
  kill Eastsea Raider##257915 |q 95122 |goto Riverglades 79.1,33.3
step
  note Steal 5 Eastsea Powder Kegs for Wharfmaster Whizzbuzz.
  collect 5 Eastsea Powder Keg##268346 |q 95123 |goto Riverglades 78.25,34.78 |tip {dropsfrom}Powder Keg
step
  note Use the Big Ball o' Bait to lure out the sea monster. Then, bring its head to Argo Brinewhistle.
  collect Sea Monster's Head##268633 |q 95267 |goto Riverglades 74.91,71.8 |tip {dropsfrom}Monstrous Threshadon
step
  talk Wharfmaster Whizzbuzz##259961
  turnin Unchecked Expansion##95122 |goto Riverglades 79.45,52.71
step
  talk Wharfmaster Whizzbuzz##259961
  turnin A Blast Ye Scurvy Dogs!##95123 |goto Riverglades 79.45,52.71
step
  talk Argo Brinewhistle##260231
  turnin The Monster Surfaces##95267 |goto Riverglades 79.95,52.49
step
  note Return to Friz Frazzlespark in Powderfuse Port.
  talk Friz Frazzlespark##255897
  turnin Smuggler's Bargain##95294 |goto Riverglades 77.1,52.9
step
  talk Friz Frazzlespark##255897
  accept I Know a Guy##95295 |goto Riverglades 77.1,52.9
step
  talk Wharfmaster Whizzbuzz##259961
  accept See Ya, Scallywags!##95165 |goto Riverglades 79.45,52.71
step
  talk Wharfmaster Whizzbuzz##259961
  accept Admiral Lamora##95124 |goto Riverglades 79.45,52.71
step
  note Plant a remote explosive charge on each of the Eastsea's three boats.
  talk Wharfmaster Whizzbuzz##259961
  turnin See Ya, Scallywags!##95165 |goto Riverglades 79.45,52.71
step
  note Slay Admiral Lamora, locate his stash of loot, and return it to Wharfmaster Whizzbuzz.
  kill Admiral Lamora##257861 |q 95124 |goto Riverglades 90.1,29.58
step
  talk Wharfmaster Whizzbuzz##259961
  turnin Admiral Lamora##95124 |goto Riverglades 79.45,52.71
step
  only completed(94965) level>=45
  talk Jezap Jinglesprocket##257062
  accept Bloodmaster's Ring##95063 |goto Riverglades 65.59,21.32
step
  only haveq(95063)
  note Defeat Chub'chob, Bloodmaster of Bolder'ok, in the Bloodmaster's Ring, then share the news of becoming the newly crowned champion of the Bloodmaster's Ring with Clugfist at Bolder'ok.
  kill Chub'chob##257059 |q 95063 |goto Riverglades 66,20.37 |elite
step
  only haveq(95063)
  talk Clugfist##255829
  turnin Bloodmaster's Ring##95063 |goto Riverglades 64.25,15.72
step
  only haveq(94744)
  note Find Da'grosh in the hills west of Rog'mar.
  talk Da'grosh##258570
  turnin The Wayward Warrior##94744 |goto Riverglades 33.47,37.93
step
  only completed(94744)
  talk Da'grosh##258570
  accept Rumblings of Discontent##95431 |goto Riverglades 33.47,37.93
step
  only completed(94744)
  talk Da'grosh##258570
  accept Carving a Path##94745 |goto Riverglades 33.47,37.93
step
  only completed(94744)
  talk Da'grosh##258570
  accept Break Their Chains##94748 |goto Riverglades 33.47,37.93
step
  only haveq(95431)
  note Look for the Bolder'ok ogre in the nearby cave.
  talk Crag'rog##260993
  turnin Rumblings of Discontent##95431 |goto Riverglades 27.66,36.54
step
  only completed(95431)
  talk Crag'rog##260993
  accept Rise Up!##95432 |goto Riverglades 27.66,36.54
step
  only haveq(95432)
  note Recruit 5 Ogre Miners.
  talk Crag'rog##260993
  turnin Rise Up!##95432 |goto Riverglades 27.66,36.54
step
  only haveq(94745)
  note Defeat 8 Twilight Fanatics, 8 Twilight Corrupters, and 8 Twilight Champions within the Twilight's Shroud for Da'grosh.
  kill Twilight Fanatic##256795 |q 94745/1 |goto Riverglades 29.4,42.73
  kill Twilight Champion##256799 |q 94745/3 |goto Riverglades 28.75,43.28
  kill Twilight Corrupter##256797 |q 94745 |goto Riverglades 28.05,43.32
step
  only haveq(94748)
  note Rescue 5 Rog'mar Scouts within the Twilight's Shroud for Da'grosh.
  talk Rog'mar Scout##257450 |q 94748 |goto Riverglades 27.49,42.86
step
  only haveq(94745)
  talk Da'grosh##258570
  turnin Carving a Path##94745 |goto Riverglades 33.47,37.93
step
  only haveq(94748)
  talk Da'grosh##258570
  turnin Break Their Chains##94748 |goto Riverglades 33.47,37.93
step
  only completed(94745) completed(94748) level>=46
  talk Da'grosh##258570
  accept Bring Me His Head##94768 |goto Riverglades 33.47,37.93
step
  only completed(95432) level>=46
  talk Crag'rog##260993
  accept Death to the Executioner##95433 |goto Riverglades 27.66,36.54
step
  only haveq(94768)
  note Defeat Overlord Kilgar within the Twilight's Shroud and bring his head to Da'grosh.
  kill Overlord Kilgar##256881 |q 94768 |goto Riverglades 26.84,43.18 |elite
  collect Kilgar's Head##265837 |q 94768 |goto Riverglades 26.84,43.18
step
  only haveq(95433)
  note Collect the Executioner's Mace from Executioner Morg in the Twilight Shroud for Clugfist in Bolder'ok.
  kill Executioner Morg##256891 |q 95433 |goto Riverglades 29.25,41.1 |elite
  collect Executioner's Mace##269351 |q 95433 |goto Riverglades 29.25,41.1
step
  only haveq(94768)
  talk Da'grosh##258570
  turnin Bring Me His Head##94768 |goto Riverglades 33.47,37.93
step
  only completed(94768) level>=42
  talk Da'grosh##258570
  accept A Token of Vengeance##94975 |goto Riverglades 33.47,37.93
step
  only haveq(94975)
  note Collect 15 Cultist Ears from the Twilight's Hammer in Krol'dok Stronghold.
  collect 15 Cultist Ear##267091 |q 94975 |goto Riverglades 33.47,37.93 |elite |tip {dropsfrom}Twilight Grunt, Twilight Warlock, Twilight Outrider
step
  only completed(94768)
  talk Da'grosh##258570
  accept It Is Time, Brother...##95278 |goto Riverglades 33.47,37.93
step
  only haveq(94975)
  talk Da'grosh##258570
  turnin A Token of Vengeance##94975 |goto Riverglades 33.47,37.93
step
  only haveq(95278)
  note Deliver the missive to Krom'rosh at Rog'mar.
  talk Krom'rosh##256418
  turnin It Is Time, Brother...##95278 |goto Riverglades 59.39,45.63
step
  only completed(95278) level>=44
  talk Tran'gul##256710
  accept Tome of Twilight##94972 |goto Riverglades 59.51,43.96
step
  only haveq(94972)
  note Recover the Tome of Twilight from Krol'dok Stronghold.
  collect Tome of Twilight##267104 |q 94972 |goto Riverglades 59.51,43.96 |elite |tip {dropsfrom}Nar'gurk
step
  only completed(95278) level>=45
  talk Krom'rosh##256418
  accept Eye of Mugg##94968 |goto Riverglades 59.39,45.63
step
  only haveq(94968)
  note Infiltrate Krol'dok Stronghold and return to Krom'rosh with proof of their leader's demise.
  collect Eye of Mugg##267086 |q 94968 |goto Riverglades 59.39,45.63 |elite |tip {dropsfrom}Overlord Mugg
step
  only haveq(94968)
  talk Krom'rosh##256418
  turnin Eye of Mugg##94968 |goto Riverglades 59.39,45.63
step
  only haveq(94972)
  talk Tran'gul##256710
  turnin Tome of Twilight##94972 |goto Riverglades 59.51,43.96
step
  only haveq(95433)
  talk Clugfist##255829
  turnin Death to the Executioner##95433 |goto Riverglades 64.25,15.72
step
  talk Mirelle Tremayne##5819
  turnin Armory of Sunnyglade##97884 |goto Undercity 61.64,28.95 |tip {turninat}Undercity
step
  note Speak to Friz's contact in Booty Bay.
  talk Caravaneer Ruzzgot##3945
  turnin I Know a Guy##95295 |goto Stranglethorn Vale 27.37,74.08 |tip {turninat}Stranglethorn Vale
step
  talk Caravaneer Ruzzgot##3945
  accept Get the Goods##95322 |goto Stranglethorn Vale 27.37,74.08
step
  note Find the Bloodsail Trunk outside of Booty Bay in Stranglethorn Vale.
  talk Caravaneer Ruzzgot##3945
  turnin Get the Goods##95322 |goto Stranglethorn Vale 27.37,74.08 |tip {turninat}Stranglethorn Vale
step
  talk Caravaneer Ruzzgot##3945
  accept We've Been Robbed!##95325 |goto Stranglethorn Vale 27.37,74.08
step
  note Find the Venture Co. Ledger in the Venture Co. Camp near Lake Nezferiti in Stranglethorn.
  turnin We've Been Robbed!##95325 |goto Stranglethorn Vale 42.76,18.53 |tip {turninat}Stranglethorn Vale
step
  click Venture Co. Ledger##630887
  accept The Big Payback##95326 |goto Stranglethorn Vale 42.76,18.53
step
  note Kill the Venture Co. Agent and take back Ruzzgot's Shipment for him in Booty Bay.
  collect Ruzzgot's Shipment##268810 |q 95326 |goto Stranglethorn Vale 43.83,20.06 |tip {dropsfrom}Venture Co. Agent
step
  talk Caravaneer Ruzzgot##3945
  turnin The Big Payback##95326 |goto Stranglethorn Vale 27.37,74.08 |tip {turninat}Stranglethorn Vale
step
  talk Caravaneer Ruzzgot##3945
  accept All's Well That Ends Well##95327 |goto Stranglethorn Vale 27.37,74.08
step
  note Return to Friz Frazzlespark at Powderfuse Port in the Riverglades.
  talk Friz Frazzlespark##255897
  turnin All's Well That Ends Well##95327 |goto Riverglades 77.1,52.9
step
  note {travel}Thousand Needles
  goto Thousand Needles 32.24,22.17
]])
