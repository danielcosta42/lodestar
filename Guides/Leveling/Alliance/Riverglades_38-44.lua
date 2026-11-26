-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Riverglades (38-44)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Desolace (33-40)",
	rev = "27b013c2",
}, [[
step
  ding 37
step
  only haveq(93443)
  note Deliver the Lost Shipping Crate to Friz Frazzlespark at Powderfuse Port in the Riverglades.
  talk Friz Frazzlespark##255897
  turnin Lost Shipping Crate##93443 |goto Riverglades 77.1,52.9
step
  only haveq(97332)
  note Deliver the Twice Reordered Package to Wharfmaster Whizzbuzz at Powderfuse Port in the Riverglades.
  talk Wharfmaster Whizzbuzz##259961
  turnin Twice Misplaced Trust##97332 |goto Riverglades 79.45,52.71
step
  talk Friz Frazzlespark##255897
  accept Frazzlespark's Crate##95059 |goto Riverglades 77.1,52.9
step
  talk Picked Carcass##263316
  accept A Feast for Buzzards##95983 |goto Riverglades 61.64,58.82
step
  note Bring the Gnawed Skull to Watcher Cornelius at Terral's Watch.
  talk Watcher Cornelius##259352
  turnin A Feast for Buzzards##95983 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  accept Hunting the Hunters##94924 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  accept A Fur Trade##94925 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  accept Song of the Strider##95984 |goto Riverglades 59.53,63.97
step
  note Kill 12 Rog'mar Poachers for Watcher Cornelius.
  kill Rog'mar Poacher##259052 |q 94924 |goto Riverglades 57.99,57.12
step
  note Bring 8 Prized Lion Hides to Watcher Terral.
  collect 8 Prized Lion Hide##266888 |q 94925 |goto Riverglades 58.97,53.47 |tip {dropsfrom}Wildplains Patriarch, Wildplains Huntress
step
  note Bring an Intact Tallstrider Beak to Watcher Cornelius at Terral's Watch.
  collect Intact Tallstrider Beak##271778 |q 95984 |goto Riverglades 65.29,56.08 |tip {dropsfrom}Roving Tallstrider
step
  talk Watcher Cornelius##259352
  turnin Hunting the Hunters##94924 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  turnin A Fur Trade##94925 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  turnin Song of the Strider##95984 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  accept A Few Furs for Friz##94928 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  accept Preventative Measures##95064 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  accept Rog'mar Supplies##95426 |goto Riverglades 59.53,63.97
step
  talk Curly##258935
  accept If a Tree Falls, and No One Hears...##94857 |goto Riverglades 46.09,71.02
step
  note Go to Turner's Logging Camp and get help.
  talk Hurley##258963
  turnin If a Tree Falls, and No One Hears...##94857 |goto Riverglades 41.41,64.46
step
  talk Halligan Turner##256438
  accept Unsavory Plant Food##94842 |goto Riverglades 41.18,62.92
step
  talk Halligan Turner##256438
  accept Stolen Saws##94931 |goto Riverglades 41.18,62.92
step
  talk Hurley##258963
  accept Helping Hands##94861 |goto Riverglades 41.41,64.46
step
  note Go with Hurley to save Curly.
  talk Halligan Turner##256438
  turnin Helping Hands##94861 |goto Riverglades 41.18,62.92
step
  note Gather 4 Jumbo Crawfish Shells, 4 pieces of Fresh Manure, and 8 Mudfin Murloc Heads for Halligan Turner.
  collect 4 Jumbo Crawfish Shell##266157 |q 94842/1 |goto Riverglades 47.8,56.55 |tip {dropsfrom}Jumbo Crawfish
  collect Fresh Manure##266156 |q 94842/2 |goto Riverglades 45.16,80.14
  collect 8 Mudfin Murloc Head##267266 |q 94842 |goto Riverglades 72.39,67.75 |tip {dropsfrom}Murloc Tideskimmer, Mudfin Oracle, Mudfin Warrior
step
  talk Halligan Turner##256438
  turnin Unsavory Plant Food##94842 |goto Riverglades 41.18,62.92
step
  talk Halligan Turner##256438
  accept From Seed to Sprout##94843 |goto Riverglades 41.18,62.92
step
  note Plant 5 saplings around the lumber camp with Halligan Turner's tree sprouting kit.
  get From Seed to Sprout |q 94843
step
  talk Halligan Turner##256438
  turnin From Seed to Sprout##94843 |goto Riverglades 41.18,62.92
step
  only not completed(94532) not haveq(94532)
  talk Cedric Dalton##259353
  accept Gnoll Infestation##94678 |goto Riverglades 39.57,74.67
step
  only not completed(94533) not haveq(94533) level>=40
  talk Cedric Dalton##259353
  accept Snargl's Snout##94679 |goto Riverglades 39.57,74.67
step
  talk Robbie Holmsby##259049
  accept Hats Off##94923 |goto Riverglades 43.33,82.68
step
  talk Eleanor Holmsby##259050
  accept Eyes for the Watchman##94999 |goto Riverglades 43.43,82.42
step
  note Find Robbie's Hat somewhere along the river near the murlocs.
  collect Robbie's Hat##266884 |q 94923 |goto Riverglades 49.28,78.65 |tip {dropsfrom}Hollow Clam Shell
step
  talk Robbie Holmsby##259049
  turnin Hats Off##94923 |goto Riverglades 43.33,82.68
step
  note Deliver Eleanor's care package to Watcher Fredericks at Southern Watch.
  talk Watcher Fredericks##259051
  turnin Eyes for the Watchman##94999 |goto Riverglades 36.38,75.75
step
  only not completed(94532) not haveq(94532)
  note Kill 8 Redridge Mystics, 8 Redridge Trappers, and 6 Redridge Brutes for Cedric Dalton at Southern Watch.
  kill Redridge Trapper##255772 |q 94678/2 |goto Riverglades 29.15,65.93
  kill Redridge Brute##255769 |q 94678/3 |goto Riverglades 29.31,64.93
  kill Redridge Mystic##255770 |q 94678 |goto Riverglades 29.36,64.8
step
  only not completed(94532) not haveq(94532)
  talk Cedric Dalton##259353
  turnin Gnoll Infestation##94678 |goto Riverglades 39.57,74.67
step
  talk Benjy Wheeler##258317
  accept Freshwater Fiends##94614 |goto Riverglades 54.89,73
step
  only haveq(94929)
  note Bring the Shipment to Demar Brant at Farholde Keep in the Riverglades.
  talk Demar Brant##257558
  turnin Deliver the Second Shipment##94929 |goto Riverglades 66.67,81.01
step
  note Deliver Frazzlespark's Crate to Knight Commander Demar Brant in Farholde Keep.
  talk Demar Brant##257558
  turnin Frazzlespark's Crate##95059 |goto Riverglades 66.67,81.01
step
  only haveq(95315)
  note Deliver Captain Nials' Correspondence to Demar Brant at Farholde Keep along the southeastern coast in the Riverglades.
  talk Demar Brant##257558
  turnin The Riverglades Report##95315 |goto Riverglades 66.67,81.01
step
  talk Demar Brant##257558
  accept My Kingdom for a Horse##94613 |goto Riverglades 66.67,81.01
step
  talk Ashe Amberhall##257591
  accept Curious Trinkets##94881 |goto Riverglades 66.75,81.1
step
  talk Ember Bladewhisper##260080
  accept Stuff 'Em and Stick 'Em##95156 |goto Riverglades 66.15,79.62
step
  talk Cassandra Wheeler##259863
  accept Love Thy Neighbor##95330 |goto Riverglades 64.63,82.89
step
  talk Sister Rowland##262031
  accept Bats in the Belfry##95603 |goto Riverglades 61.82,83.08
step
  talk Bertrand Ironbrow##260070
  accept Foreman's Plight##95943 |goto Riverglades 63.39,80.64
step
  talk Demar Brant##257558
  accept Saving Sunnyglade##94877 |goto Riverglades 66.67,81.01
step
  talk Ashe Amberhall##257591
  accept Scraps of Knowledge##94879 |goto Riverglades 66.75,81.1
step
  only completed(96081)
  talk Brother Lowley##263613
  accept Doctor's Orderly##96082 |goto Riverglades 65.55,78.97
step
  only completed(96081)
  note Bandage up 3 Wounded Soldiers for Brother Lowley.
  kill Wounded Soldier##263614 |q 96082 |goto Riverglades 65.72,79.78
step
  only completed(96081)
  talk Brother Lowley##263613
  turnin Doctor's Orderly##96082 |goto Riverglades 65.55,78.97
step
  only completed(96081)
  talk Brother Lowley##263613
  accept Clerical Quarantine##96083 |goto Riverglades 65.55,78.97
step
  only completed(96081)
  note Speak to Sister Rowland at the chapel in Farholde Keep.
  talk Sister Rowland##262031
  turnin Clerical Quarantine##96083 |goto Riverglades 61.82,83.08
step
  only completed(96081)
  talk Sister Rowland##262031
  accept Something's in the Water##96084 |goto Riverglades 61.82,83.08
step
  only completed(96081)
  note Collect a sample of drinking water from the plains for Sister Rowland at the chapel in Farholde Keep.
  collect Filled Freshwater Phial##281228 |q 96084 |goto Riverglades 61.82,83.08
step
  only completed(96081)
  talk Sister Rowland##262031
  turnin Something's in the Water##96084 |goto Riverglades 61.82,83.08
step
  note Kill 5 Roosting Duskbats in the Farholde Cathedral for Sister Rowland.
  kill Roosting Duskbat##262037 |q 95603 |goto Riverglades 60.51,84.69
step
  note Kill 8 Mudfin Oracles and 8 Mudfin Warriors along the river near Wheeler's Grange.
  kill Mudfin Oracle##258573 |q 94614/2 |goto Riverglades 49.53,76.1
  kill Mudfin Warrior##258574 |q 94614 |goto Riverglades 49.38,76.25
step
  note Go to Wheeler's Grange to inquire about the missing horses.
  talk Benjy Wheeler##258317
  turnin My Kingdom for a Horse##94613 |goto Riverglades 54.89,73
step
  talk Benjy Wheeler##258317
  turnin Freshwater Fiends##94614 |goto Riverglades 54.89,73
step
  talk Benjy Wheeler##258317
  accept Foal Play##94615 |goto Riverglades 54.89,73
step
  note Search near the stables at Wheeler's Grange for evidence of the missing horses' whereabouts.
  collect Pawprint Tracing##267223 |q 94615 |goto Riverglades 54.53,78.07 |tip {dropsfrom}Track
step
  note Collect 3 Bundles of Hay for Ember at the training grounds.
  collect 3 Bundle of Hay##268536 |q 95156 |goto Riverglades 54.75,76.65 |tip {dropsfrom}Hay Bale
step
  talk Benjy Wheeler##258317
  turnin Foal Play##94615 |goto Riverglades 54.89,73
step
  talk Benjy Wheeler##258317
  accept Coyote Huntin'##94617 |goto Riverglades 54.89,73
step
  talk Benjy Wheeler##258317
  accept Wheeler's Fleeing Steeds##94618 |goto Riverglades 54.89,73
step
  note Find one of the horses that fled Wheeler's Grange after the coyote attack and give it some feed.
  talk Lost Horse##259254
  turnin Wheeler's Fleeing Steeds##94618 |goto Riverglades 54.89,73
step
  talk Lost Horse##259254
  accept Rescue Roundup##94992 |goto Riverglades 54.89,73
step
  note Bring the lost horse back to Wheeler's Grange.
  talk Benjy Wheeler##258317
  turnin Rescue Roundup##94992 |goto Riverglades 54.89,73
step
  note Kill the coyote known as Sootfur, and bring its pelt back to Benjy Wheeler.
  collect Sootfur's Pelt##265738 |q 94617 |goto Riverglades 54.92,84.9 |tip {dropsfrom}Sootfur
step
  talk Benjy Wheeler##258317
  turnin Coyote Huntin'##94617 |goto Riverglades 54.89,73
step
  only level>=41
  talk Watcher Cornelius##259352
  accept King of the Wild Plains##95986 |goto Riverglades 59.53,63.97
step
  only haveq(95986)
  note Use the Tallstrider Call to call forth the leader of the lion pride. Slay the beast and retrieve its hide for Watcher Cornelius at Terral's Watch.
  kill Ombassa##263315 |q 95986 |goto Riverglades 59.81,53.05 |elite
  collect Ombassa's Hide##281052 |q 95986 |goto Riverglades 59.81,53.05
step
  only haveq(95986)
  talk Watcher Cornelius##259352
  turnin King of the Wild Plains##95986 |goto Riverglades 59.53,63.97
step
  note Locate the Foreman's Crate and return it to Bertrand Ironbrow in Farholde Keep.
  collect Foreman's Crate##271620 |q 95943 |goto Riverglades 51.14,57.2
step
  talk Fuzzle##259158
  accept Biting the Hand##94961 |goto Riverglades 47.31,51.41
step
  talk Apprentice Claire##256831
  accept Abominable Magics##95642 |goto Riverglades 47.7,47.3
step
  talk Apprentice Claire##256831
  accept Indiscriminate Purge##95643 |goto Riverglades 47.7,47.3
step
  note Defeat 8 Twilight Raiders, 8 Twilight Shadowmancers, and 8 Twilight Neophytes within Sunnyglade for Demar Brant.
  kill Twilight Neophyte##256798 |q 94877/3 |goto Riverglades 47.84,47.47
  kill Twilight Shadowmancer##254560 |q 94877/2 |goto Riverglades 47.02,48.24
  kill Twilight Raider##256952 |q 94877 |goto Riverglades 49.22,48.8
step
  note Collect 5 Twilight Pages from within Sunnyglade for Ashe Amberall in Farholde Keep.
  collect 5 Twilight Page##266424 |q 94879 |goto Riverglades 45.82,50.12
step
  note Retrieve 25 Twilight Charms from Twilight Shadowmancers and Twilight Neophytes in Sunnyglade for Ashe Amberhall in Farholde Keep.
  collect 25 Twilight Charm##266425 |q 94881 |goto Riverglades 47.84,47.47 |tip {dropsfrom}Twilight Neophyte, Twilight Shadowmancer
step
  only hasitem(266427)
  use Field Marshal's Log##266427 |tip It starts the quest.
  accept Field Marshal's Log##94885
step
  only haveq(94885)
  note Deliver the Field Marshal's Log to Demar Brant in Farholde Keep.
  collect Field Marshal's Log##266427 |q 94885 |goto Riverglades 47.02,48.24 |tip {dropsfrom}Twilight Shadowmancer, Twilight Neophyte, Twilight Raider
step
  note Bring 20 Twilight Finger Bones to Fuzzle.
  collect 20 Twilight Finger Bone##267073 |q 94961 |goto Riverglades 47.02,48.24 |tip {dropsfrom}Twilight Shadowmancer, Twilight Neophyte, Twilight Raider
step
  note Kill 5 Twilight Ritualists and 5 Empowered Brutes within the caves underneath Sunnyglade.
  kill Twilight Ritualist##262169 |q 95643/2 |goto Riverglades 48.2,49.49
  kill Empowered Brute##261711 |q 95643 |goto Riverglades 47.88,50.27
step
  talk Fuzzle##259158
  turnin Biting the Hand##94961 |goto Riverglades 47.31,51.41
step
  note Absorb 25 samples into the Crystal Catalyst from Twilight's Hammer cultists and Twilight Ritual Circles in the cave underneath Sunnyglade for Apprentice Claire.
  talk Apprentice Claire##256831
  turnin Abominable Magics##95642 |goto Riverglades 47.7,47.3
step
  talk Apprentice Claire##256831
  turnin Indiscriminate Purge##95643 |goto Riverglades 47.7,47.3
step
  talk Fuzzle##259158
  accept Biting the Hand##94963 |goto Riverglades 47.31,51.41
step
  only level>=41
  talk Apprentice Claire##256831
  accept Cut Off the Heads##95562 |goto Riverglades 47.7,47.3
step
  only haveq(95562)
  note Kill Chogg'Zac in the caves beneath Sunnyglade and retrieve their heads for Apprentice Claire.
  kill Chogg'Zac##256899 |q 95562 |goto Riverglades 46.22,51.11 |elite
  collect Chogg's Head##265750 |q 95562 |goto Riverglades 46.22,51.11
step
  note <Fuzzle snarls.>
  turnin Biting the Hand##94963 |goto Riverglades 41.59,47.73
step
  only haveq(95562)
  talk Apprentice Claire##256831
  turnin Cut Off the Heads##95562 |goto Riverglades 47.7,47.3
step
  only completed(95562)
  talk Apprentice Claire##256831
  accept An Unsettling Discovery##94884 |goto Riverglades 47.7,47.3
step
  talk Farmer Elbrim##258697
  accept What We Lost##94829 |goto Riverglades 52.79,42.35
step
  note Collect 5 Farmers' Mementos from Twilight Raiders and place them on the graves west of Elbrim's Farm.
  get What We Lost |q 94829
step
  talk Farmer Elbrim##258697
  turnin What We Lost##94829 |goto Riverglades 52.79,42.35
step
  talk Farmer Elbrim##258697
  accept All That's Left##94858 |goto Riverglades 52.79,42.35
step
  note Find Farmer Elbrim's family's possessions in the nearby barn and return them to him.
  collect Damaged Locket##266252 |q 94858/2 |goto Riverglades 53.01,44.77 |tip {dropsfrom}Converted Farmer
  collect Discarded Doll##266251 |q 94858 |goto Riverglades 53.68,44.84
step
  talk Farmer Elbrim##258697
  turnin All That's Left##94858 |goto Riverglades 52.79,42.35
step
  talk Sleebo Fizzlespout##263367
  accept Gaseous Gold##96063 |goto Riverglades 68.15,48.57
step
  note Deliver the Bundle of Lion Hides to Friz Frazzlespark at Powderfuse Port.
  talk Friz Frazzlespark##255897
  turnin A Few Furs for Friz##94928 |goto Riverglades 77.1,52.9
step
  talk Fimbo Greasemitz##259962
  accept A Taste of the Sea##95121 |goto Riverglades 79.02,54.2
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
  only level>=38
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
  talk Demar Brant##257558
  turnin Saving Sunnyglade##94877 |goto Riverglades 66.67,81.01
step
  talk Ashe Amberhall##257591
  turnin Scraps of Knowledge##94879 |goto Riverglades 66.75,81.1
step
  talk Ashe Amberhall##257591
  turnin Curious Trinkets##94881 |goto Riverglades 66.75,81.1
step
  only haveq(94884)
  note Bring the Filled Crystal Catalyst to Ashe Amberhall in Farholde Keep.
  talk Ashe Amberhall##257591
  turnin An Unsettling Discovery##94884 |goto Riverglades 66.75,81.1
step
  only haveq(94885)
  talk Demar Brant##257558
  turnin Field Marshal's Log##94885 |goto Riverglades 66.67,81.01
step
  talk Ember Bladewhisper##260080
  turnin Stuff 'Em and Stick 'Em##95156 |goto Riverglades 66.15,79.62
step
  talk Sister Rowland##262031
  turnin Bats in the Belfry##95603 |goto Riverglades 61.82,83.08
step
  talk Bertrand Ironbrow##260070
  turnin Foreman's Plight##95943 |goto Riverglades 63.39,80.64
step
  talk Demar Brant##257558
  accept Out in the Field##95329 |goto Riverglades 66.67,81.01
step
  talk Tessa Dawnbright##263089
  accept Apple of My Eye##95561 |goto Riverglades 63.84,82.22
step
  talk Sister Rowland##262031
  accept Keeping the Light On##95613 |goto Riverglades 61.82,83.08
step
  note Bring 5 Holy Candles to Sister Rowland in Farholde Keep.
  talk Marla Bell##272437
  buy 5 Holy Candle##17028 |q 95613 |goto Riverglades 62.21,85.95
step
  talk Bertrand Ironbrow##260070
  accept High Stakes##96009 |goto Riverglades 63.39,80.64
step
  only level>=42
  click Wanted##707245
  accept WANTED: Blademaster Kaijo##95912 |goto Riverglades 65.92,81.08
step
  only level>=42
  click WANTED!##645166
  accept WANTED: Ghostmaw##95991 |goto Riverglades 65.61,80.79
step
  only completed(96081)
  talk Sister Rowland##262031
  accept Upstream Contamination##96085 |goto Riverglades 61.82,83.08
step
  note Collect 6 Fresh Apples for Tessa Dawnbright in Farholde Keep.
  collect 6 Fresh Apple##271431 |q 95561 |goto Riverglades 61.39,82.82
step
  talk Tessa Dawnbright##263089
  turnin Apple of My Eye##95561 |goto Riverglades 63.84,82.22
step
  talk Sister Rowland##262031
  turnin Keeping the Light On##95613 |goto Riverglades 61.82,83.08
step
  only completed(96081)
  note Find whatever creature is causing the drinking water contamination and eliminate it. Then, return to Sister Rowland at the chapel in Farholde Keep.
  talk Sister Rowland##262031
  turnin Upstream Contamination##96085 |goto Riverglades 61.82,83.08
step
  talk Sister Rowland##262031
  accept In Memoriam##95615 |goto Riverglades 61.82,83.08
step
  note Place 3 Memorial Candles on graves in the chapel graveyard for Sister Rowland at Farholde Keep.
  get In Memoriam |q 95615
step
  talk Tessa Dawnbright##263089
  accept Fit for a Princess##95913 |goto Riverglades 63.84,82.22
step
  talk Sister Rowland##262031
  turnin In Memoriam##95615 |goto Riverglades 61.82,83.08
step
  note Collect 3 Coyote Pelts for Tessa Dawnbright in Farholde Keep.
  collect 3 Coyote Pelt##271432 |q 95913 |goto Riverglades 53.2,83.52 |tip {dropsfrom}Plains Coyote
step
  talk Tessa Dawnbright##263089
  turnin Fit for a Princess##95913 |goto Riverglades 63.84,82.22
step
  talk Tessa Dawnbright##263089
  accept Stepped Out##95961 |goto Riverglades 63.84,82.22
step
  note Go to Terral's Watch to get a status report from Watcher Cornelius.
  talk Watcher Cornelius##259352
  turnin Out in the Field##95329 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  accept In Need of Relief##96125 |goto Riverglades 59.53,63.97
step
  note Gather 8 Marsh Gas Vials for Sleebo Fizzlespout.
  collect 8 Marsh Gas Vial##272004 |q 96063 |goto Riverglades 62.34,59.01 |tip {dropsfrom}Marsh Gas Vent
step
  only haveq(95991)
  note Bring Ghostmaw's Fang to Wheatley in Farholde Keep.
  kill Ghostmaw##263380 |q 95991 |goto Riverglades 52.72,52.9 |elite
  collect Ghostmaw's Fang##271828 |q 95991 |goto Riverglades 52.72,52.9
step
  note Deliver Cassandra's surplus farm goods to Halligan Turner at Turner's Logging Camp.
  talk Halligan Turner##256438
  turnin Love Thy Neighbor##95330 |goto Riverglades 41.18,62.92
step
  note Collect 10 Wood Bundles from Turner's Logging Camp for Bertrand Ironbrow in Farholde Keep.
  collect 10 Wood Bundle##271877 |q 96009 |goto Riverglades 38.73,62.49 |tip {dropsfrom}Bundle of Wood
step
  talk Gelinda Coppergleam##262399
  accept Clear 'em Out##95792 |goto Riverglades 30.21,69.07
step
  talk Gelinda Coppergleam##262399
  accept Proof of Profit##95934 |goto Riverglades 30.21,69.07
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
  talk Scout Bolain##260026
  accept The Lost Scout##95147 |goto Riverglades 23.66,67.82
step
  only not completed(94533) not haveq(94533) haveq(94679)
  note Locate Snargl in the Bristle Hills, kill him, and bring his snout to Cedric Dalton at Southern Watch.
  kill Snargl##255906 |q 94679 |goto Riverglades 17.16,71.96 |elite
  collect Snargl's Snout##265357 |q 94679 |goto Riverglades 17.16,71.96
step
  note Recover 8 Saw Blades from the gnoll camps in Bristle Hills for Halligan Turner at the lumber mill.
  collect 8 Saw Blade##266897 |q 94931 |goto Riverglades 19.97,70.66 |tip {dropsfrom}Stolen Tools
step
  only not completed(94533) not haveq(94533) haveq(94679)
  talk Cedric Dalton##259353
  turnin Snargl's Snout##94679 |goto Riverglades 39.57,74.67
step
  note Deliver Bolain's message to Captain Dalton at Southern Watch.
  talk Cedric Dalton##259353
  turnin The Lost Scout##95147 |goto Riverglades 39.57,74.67
step
  talk Cedric Dalton##259353
  accept Southern Watch Gnoll Report##95148 |goto Riverglades 39.57,74.67
step
  note Deliver the Southern Watch Gnoll Report to the knight commander at Farholde Keep.
  talk Demar Brant##257558
  turnin Southern Watch Gnoll Report##95148 |goto Riverglades 66.67,81.01
step
  only haveq(95991)
  talk Wheatley##259859
  turnin WANTED: Ghostmaw##95991 |goto Riverglades 63.53,85.09
step
  talk Bertrand Ironbrow##260070
  turnin High Stakes##96009 |goto Riverglades 63.39,80.64
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
  only haveq(95260)
  note Find someone at Powderfuse Port who can identify the monster from the painted hide.
  talk Argo Brinewhistle##260231
  turnin Terrors From the Deep##95260 |goto Riverglades 79.95,52.49
step
  note Find Gray Dawnbright in Powderfuse Port.
  talk Gray Dawnbright##263120
  turnin Stepped Out##95961 |goto Riverglades 78.85,54.23
step
  talk Innkeeper Zizplink##255894
  accept Goes Down Smooth##95988 |goto Riverglades 78.77,53.98
step
  only completed(95260)
  talk Argo Brinewhistle##260231
  accept It Takes Guts##95261 |goto Riverglades 79.95,52.49
step
  talk Wharfmaster Whizzbuzz##259961
  accept Unfriendly Competition##95119 |goto Riverglades 79.45,52.71
step
  talk Friz Frazzlespark##255897
  accept Smuggler's Paradise##95288 |goto Riverglades 77.1,52.9
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
  note Kill 12 Rog'mar Trainees for Watcher Cornelius at Terral's Watch.
  kill Rog'mar Trainee##256749 |q 95064 |goto Riverglades 59.22,37.48
step
  note Retrieve 8 Horde Supply Shipment from the training camps north of Rog'mar.
  collect 8 Rog'mar Supply Crate##274975 |q 95426 |goto Riverglades 61.14,35.89
step
  only haveq(95912)
  note Bring the Blademaster's Banner to Ember Bladewhisper in Farholde Keep.
  kill Blademaster Kaijo##263071 |q 95912 |goto Riverglades 58.81,38.87 |elite
  collect Blademaster's Banner##271425 |q 95912 |goto Riverglades 58.81,38.87
step
  only haveq(95261)
  note Collect 15 Beast Entrails and 8 Rotflesh Mushrooms for Argo Brinewhistle.
  collect 15 Beast Entrails##268632 |q 95261/1 |goto Riverglades 70.3,32.52 |tip {dropsfrom}Mature Paletusk, Sand Crawler, Shore Crawler
  collect 8 Rotflesh Mushroom##268664 |q 95261 |goto Riverglades 74.76,25.66
step
  note Kill 10 Eastsea Buccaneers and 10 Eastsea Musketeers along the Eastwind Shore, north of Powderfuse Port.
  kill Eastsea Musketeer##257910 |q 95119/2 |goto Riverglades 86.19,36.87
  kill Eastsea Buccaneer##257901 |q 95119 |goto Riverglades 86.63,37.49
step
  note Collect 8 Smuggled Goods for Friz Frazzlespark at Powderfuse Port.
  collect 8 Smuggled Goods##268796 |q 95288 |goto Riverglades 86.63,37.49 |tip {dropsfrom}Eastsea Buccaneer, Eastsea Musketeer
step
  note Gather 3 Crawler Spittle, Fresh Chum, Goblin Degreaser, and Expired Poison for Innkeeper Zizplink in Powderfuse Port.
  collect 3 Crawler Spittle##271650 |q 95988/1 |goto Riverglades 86.14,34.12 |tip {dropsfrom}Shore Crawler
  talk Kor'gar##260565
  buy Goblin Degreaser##271653 |q 95988/3 |goto Riverglades 77.62,50.93
  talk Krikshank##260560
  buy Expired Poison##271654 |q 95988/4 |goto Riverglades 76.8,51.14
  talk Gritta Chumwater##260487
  buy Fresh Chum##271657 |q 95988 |goto Riverglades 78.4,54.98
step
  talk Wharfmaster Whizzbuzz##259961
  turnin Unfriendly Competition##95119 |goto Riverglades 79.45,52.71
step
  only haveq(95261)
  talk Argo Brinewhistle##260231
  turnin It Takes Guts##95261 |goto Riverglades 79.95,52.49
step
  talk Friz Frazzlespark##255897
  turnin Smuggler's Paradise##95288 |goto Riverglades 77.1,52.9
step
  talk Innkeeper Zizplink##255894
  turnin Goes Down Smooth##95988 |goto Riverglades 78.77,53.98
step
  talk Innkeeper Zizplink##255894
  accept Drink Up!##95957 |goto Riverglades 78.77,53.98
step
  only completed(95261)
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
  note Deliver Zizplink's Frothing Mug to Gray Dawnbright in Powderfuse Port.
  talk Gray Dawnbright##263120
  turnin Drink Up!##95957 |goto Riverglades 78.85,54.23
step
  talk Gray Dawnbright##263120
  accept Her World##95975 |goto Riverglades 78.85,54.23
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
  note Find Dunston Willis somewhere among the ogres in Bolder'ok.
  talk Dunston Willis##259057
  turnin In Need of Relief##96125 |goto Riverglades 68.5,12.85
step
  talk Dunston Willis##259057
  accept An Ogre's Captive##96126 |goto Riverglades 68.5,12.85
step
  note Find Gronok the Butcher, kill him, and bring Dunston the key to his shackles.
  collect Gronok's Key##272190 |q 96126 |goto Riverglades 66.64,18.96 |tip {dropsfrom}Gronok the Butcher
step
  talk Dunston Willis##259057
  turnin An Ogre's Captive##96126 |goto Riverglades 68.5,12.85
step
  talk Dunston Willis##259057
  accept Dunston Checks Out##94927 |goto Riverglades 68.5,12.85
step
  talk Wharfmaster Whizzbuzz##259961
  turnin Unchecked Expansion##95122 |goto Riverglades 79.45,52.71
step
  talk Wharfmaster Whizzbuzz##259961
  turnin A Blast Ye Scurvy Dogs!##95123 |goto Riverglades 79.45,52.71
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
  note Plant a remote explosive charge on each of the Eastsea's three boats.
  talk Wharfmaster Whizzbuzz##259961
  turnin See Ya, Scallywags!##95165 |goto Riverglades 79.45,52.71
step
  only haveq(95267)
  note Use the Big Ball o' Bait to lure out the sea monster. Then, bring its head to Argo Brinewhistle.
  collect Sea Monster's Head##268633 |q 95267 |goto Riverglades 74.91,71.8 |tip {dropsfrom}Monstrous Threshadon
step
  only haveq(95912)
  talk Ember Bladewhisper##260080
  turnin WANTED: Blademaster Kaijo##95912 |goto Riverglades 66.15,79.62
step
  talk Demar Brant##257558
  accept The Western Front##94886 |goto Riverglades 66.67,81.01
step
  talk Ashe Amberhall##257591
  accept A Small Favor##94907 |goto Riverglades 66.75,81.1
step
  note Help Dunston break out of Bolder'ok then return to Watcher Cornelius.
  talk Watcher Cornelius##259352
  turnin Dunston Checks Out##94927 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  turnin Preventative Measures##95064 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  turnin Rog'mar Supplies##95426 |goto Riverglades 59.53,63.97
step
  talk Watcher Cornelius##259352
  accept The Rog'mar Situation##95066 |goto Riverglades 59.53,63.97
step
  talk Halligan Turner##256438
  turnin Stolen Saws##94931 |goto Riverglades 41.18,62.92
step
  note Find Sergeant Riftan near the Twilight's Shroud to the west.
  talk Sergeant Riftan##258023
  turnin The Western Front##94886 |goto Riverglades 30.71,49.06
step
  talk Sergeant Riftan##258023
  accept A Miner Problem##96015 |goto Riverglades 30.71,49.06
step
  talk Sergeant Riftan##258023
  accept No Soldier Left Behind##94888 |goto Riverglades 30.71,49.06
step
  talk Sergeant Riftan##258023
  accept Carving a Path##94889 |goto Riverglades 30.71,49.06
step
  note Summon a Twilight's Thrall from a conduit within the Twilight Shroud and capture it with Amberhall's Soulstone.
  use Twilight Thrall##258652 |q 94907 |goto Riverglades 26.62,47.77 |tip {useit}
step
  note Rescue 5 Farholde Scouts within the Twilight's Shroud for Sergeant Riftan.
  talk Farholde Scout##256904 |q 94888 |goto Riverglades 28.5,41.9
step
  note Defeat 8 Twilight Fanatics, 8 Twilight Corrupters, and 8 Twilight Champions within the Twilight's Shroud for Sergeant Riftan.
  kill Twilight Fanatic##256795 |q 94889/1 |goto Riverglades 29.4,42.73
  kill Twilight Champion##256799 |q 94889/3 |goto Riverglades 28.75,43.28
  kill Twilight Corrupter##256797 |q 94889 |goto Riverglades 28.05,43.32
step
  note Defeat 5 Ogre Miners and 5 Twilight Subjugators in the cave near the Twilight's Shroud for Sergeant Riftan.
  kill Twilight Subjugator##260996 |q 96015/2 |goto Riverglades 27.19,35.8
  kill Ogre Miner##260995 |q 96015 |goto Riverglades 26.47,35.58
step
  talk Sergeant Riftan##258023
  turnin No Soldier Left Behind##94888 |goto Riverglades 30.71,49.06
step
  talk Sergeant Riftan##258023
  turnin Carving a Path##94889 |goto Riverglades 30.71,49.06
step
  talk Sergeant Riftan##258023
  turnin A Miner Problem##96015 |goto Riverglades 30.71,49.06
step
  note Gather 20 Wildflowers and deliver them to Tessa Dawnbright in Farholde Keep.
  collect 20 Wildflower##271823 |q 95975 |goto Riverglades 63.12,58.44
step
  only haveq(95267)
  talk Argo Brinewhistle##260231
  turnin The Monster Surfaces##95267 |goto Riverglades 79.95,52.49
step
  talk Wharfmaster Whizzbuzz##259961
  accept Admiral Lamora##95124 |goto Riverglades 79.45,52.71
step
  note Slay Admiral Lamora, locate his stash of loot, and return it to Wharfmaster Whizzbuzz.
  kill Admiral Lamora##257861 |q 95124 |goto Riverglades 90.1,29.58
step
  only level>=45
  kill Komuk##259056 |goto Riverglades 67.54,33.22 |elite |tip Loot the quest item here — it starts the quest.
  accept Drop the Hammer##94926 |goto Riverglades 67.54,33.22
step
  only haveq(94926)
  note Take Komuk's Maul to Farholde Keep as proof of the ogre's demise.
  kill Komuk##259056 |q 94926 |goto Riverglades 67.54,33.22 |elite
  collect Komuk's Warmaul##266889 |q 94926 |goto Riverglades 67.54,33.22
step
  talk Wharfmaster Whizzbuzz##259961
  turnin Admiral Lamora##95124 |goto Riverglades 79.45,52.71
step
  talk Ashe Amberhall##257591
  turnin A Small Favor##94907 |goto Riverglades 66.75,81.1
step
  only haveq(94926)
  talk Demar Brant##257558
  turnin Drop the Hammer##94926 |goto Riverglades 66.67,81.01
step
  note Deliver the report to Demar Brant in Farholde Keep.
  talk Demar Brant##257558
  turnin The Rog'mar Situation##95066 |goto Riverglades 66.67,81.01
step
  talk Tessa Dawnbright##263089
  turnin Her World##95975 |goto Riverglades 63.84,82.22
step
  only level>=44
  talk Ashe Amberhall##257591
  accept Tome of Twilight##94984 |goto Riverglades 66.75,81.1
step
  only haveq(94984)
  note Kill Nar'gurk within Krol'dok Stronghold and recover any valuable information.
  collect Tome of Twilight##267104 |q 94984 |goto Riverglades 66.75,81.1 |elite |tip {dropsfrom}Nar'gurk
step
  only level>=45
  talk Demar Brant##257558
  accept Eye of Mugg##94982 |goto Riverglades 66.67,81.01
step
  only haveq(94982)
  note Infiltrate Krol'dok Stronghold and return to Commander Brant with proof of their leader's demise.
  collect Eye of Mugg##267086 |q 94982 |goto Riverglades 66.67,81.01 |elite |tip {dropsfrom}Overlord Mugg
step
  only haveq(94982)
  talk Demar Brant##257558
  turnin Eye of Mugg##94982 |goto Riverglades 66.67,81.01
step
  only haveq(94984)
  talk Ashe Amberhall##257591
  turnin Tome of Twilight##94984 |goto Riverglades 66.75,81.1
step
  only level>=46
  talk Sergeant Riftan##258023
  accept Bring Me His Head##94890 |goto Riverglades 30.71,49.06
step
  only haveq(94890)
  note Defeat Overlord Kilgar within the Twilight's Shroud and bring his head to Sergeant Riftan.
  kill Overlord Kilgar##256881 |q 94890 |goto Riverglades 26.84,43.18 |elite
  collect Kilgar's Head##265837 |q 94890 |goto Riverglades 26.84,43.18
step
  only haveq(94890)
  talk Sergeant Riftan##258023
  turnin Bring Me His Head##94890 |goto Riverglades 30.71,49.06
step
  only completed(94890) level>=42
  talk Sergeant Riftan##258023
  accept Twilight Mementos##94983 |goto Riverglades 30.71,49.06
step
  only haveq(94983)
  note Collect 8 Cultist Bangles from the Twilight's Hammer in Krol'dok Stronghold.
  collect 8 Twilight Bangle##267234 |q 94983 |goto Riverglades 30.71,49.06 |elite |tip {dropsfrom}Twilight Grunt, Twilight Warlock, Twilight Outrider
step
  only completed(94890)
  talk Sergeant Riftan##258023
  accept News to Farholde##94891 |goto Riverglades 30.71,49.06
step
  only haveq(94983)
  talk Sergeant Riftan##258023
  turnin Twilight Mementos##94983 |goto Riverglades 30.71,49.06
step
  only completed(94983)
  talk Sergeant Riftan##258023
  accept Lingering Essence##94997 |goto Riverglades 30.71,49.06
step
  only haveq(94891)
  note Return to Ashe Amberhall in Farholde Keep.
  talk Ashe Amberhall##257591
  turnin News to Farholde##94891 |goto Riverglades 66.75,81.1
step
  only haveq(94997)
  note Bring the Satchel of Cursed Mementos to Ashe Amberhall in Farholde Keep.
  talk Ashe Amberhall##257591
  turnin Lingering Essence##94997 |goto Riverglades 66.75,81.1
step
  only completed(94997)
  talk Ashe Amberhall##257591
  accept Curios of Curiosity##94998 |goto Riverglades 66.75,81.1
step
  only completed(94891)
  talk Demar Brant##257558
  accept The Twilight Threat##94894 |goto Riverglades 66.67,81.01
step
  only haveq(94998)
  note Bring the Satchel of Mementos to Melanie Sable.
  talk Melanie Sable##259287
  turnin Curios of Curiosity##94998 |goto Riverglades 66.21,83.36
step
  only completed(94885)
  talk Demar Brant##257558
  accept Saving Marshal Ryan##94887 |goto Riverglades 66.67,81.01
step
  only haveq(94887)
  note Find Marshal Ryan within the Twilight's Shroud.
  talk Marshal Ryan##257250
  turnin Saving Marshal Ryan##94887 |goto Riverglades 26.15,40.8
step
  only completed(94887)
  talk Marshal Ryan##257250
  accept Dying Wish##94892 |goto Riverglades 26.15,40.8
step
  only haveq(94892)
  note Return Marshal Ryan's crest to Knight Commander Demar Brant in Farholde Keep.
  talk Demar Brant##257558
  turnin Dying Wish##94892 |goto Riverglades 66.67,81.01
step
  only completed(94892)
  talk Demar Brant##257558
  accept Delivering Closure##94893 |goto Riverglades 66.67,81.01
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
  note {travel}Desolace
  goto Desolace 38.88,27.16
]])
