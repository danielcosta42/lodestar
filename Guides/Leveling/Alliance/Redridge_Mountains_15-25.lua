-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Redridge Mountains (15-25)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/The Barrens (14-26)",
}, [[
step
  note {fp}Penny
  goto Redridge Mountains 21.71,46.56 |tip {vendor}
step
  talk Marshal Marris##382
  accept Blackrock Menace##20 |goto Redridge Mountains 28.41,48.97
step
  note Bring 10 Battleworn Axes to Marshal Marris in Lakeshire.
  collect 10 Battleworn Axe##3014 |q 20 |goto Redridge Mountains 24.51,11.69 |tip {dropsfrom}Blackrock Champion, Blackrock Shadowcaster, Blackrock Renegade
step
  talk Martie Jainrose##342
  accept An Unwelcome Guest##34 |goto Redridge Mountains 16.77,46.33
step
  note Martie Jainrose of Lakeshire wants you to kill Bellygrub. Bring her his tusk as proof.
  collect Bellygrub's Tusk##3631 |q 34 |goto Redridge Mountains 10.59,49.31 |tip {dropsfrom}Bellygrub
step
  talk Bailiff Conacher##900
  accept Solomon's Law##91 |goto Redridge Mountains 24.63,44.26
step
  note Bring 10 Shadowhide Pendants to Bailiff Conacher in the Lakeshire Town Hall.
  collect 10 Shadowhide Pendant##1075 |q 91 |goto Redridge Mountains 74.87,49.42 |tip {dropsfrom}Shadowhide Darkweaver, Shadowhide Slayer, Shadowhide Brute
step
  talk Chef Breanna##343
  accept Redridge Goulash##92 |goto Redridge Mountains 17.59,43.84
step
  note Chef Breanna of Lakeshire wants five pieces of Tough Condor Meat, five Great Goretusk Snouts and five helpings of Crisp Spider Meat.
  collect Great Goretusk Snout##2296 |q 92 |goto Redridge Mountains 10.59,49.31 |tip {dropsfrom}Bellygrub, Great Goretusk, Snort
step
  talk Barkeep Daniels##346
  accept Dry Times##116 |goto Redridge Mountains 21.39,43.96
step
  note Barkeep Daniels of Lakeshire needs a keg of Thunderbrew Lager, a cask of Merlot, a bottle of Moonshine and a skin of Sweet Rum.
  buy Keg of Thunderbrew##1262 |q 116 |goto Westfall 44.62,80.25
step
  talk Verner Osgood##415
  accept The Price of Shoes##118 |goto Redridge Mountains 25.88,47.27
step
  talk Magistrate Solomon##344
  accept Messenger to Stormwind##120 |goto Redridge Mountains 24.9,44.45
step
  talk Verner Osgood##415
  accept Underbelly Scales##122 |goto Redridge Mountains 25.88,47.27
step
  note Gather 6 Underbelly Whelp Scales from Black Dragon Whelps, and bring them to Verner Osgood in Redridge.
  collect 6 Underbelly Whelp Scale##1221 |q 122 |goto Redridge Mountains 37.56,74.53 |tip {dropsfrom}Black Dragon Whelp, Snarlflare
step
  talk Verner Osgood##415
  accept A Baying of Gnolls##124 |goto Redridge Mountains 25.88,47.27
step
  talk Foreman Oslow##341
  accept The Lost Tools##125 |goto Redridge Mountains 27.05,48.64
step
  note Foreman Oslow of Lakeshire wants you to retrieve his toolbox from the bottom of Lake Everstill.
  collect Oslow's Toolbox##1309 |q 125 |goto Redridge Mountains 36.43,54.66 |tip {dropsfrom}Sunken Chest
step
  talk Dockmaster Baren##381
  accept Selling Fish##127 |goto Redridge Mountains 22.63,47.38
step
  note Bring 10 Spotted Sunfish to Dockmaster Baren in Lakeshire.
  collect 10 Spotted Sunfish##1467 |q 127 |goto Redridge Mountains 50.84,61.57 |tip {dropsfrom}Murloc Flesheater, Murloc Nightcrawler, Murloc Tidecaller
step
  talk Guard Howe##903
  accept Blackrock Bounty##128 |goto Redridge Mountains 26.45,57.85
step
  talk Darcy##379
  accept A Free Lunch##129 |goto Redridge Mountains 21.53,44.3
step
  talk Wiley the Black##266
  accept The Defias Brotherhood##132 |goto Redridge Mountains 21.39,45.35
step
  talk Master Mathias Shaw##332
  accept The Defias Brotherhood##141 |goto Stormwind City 78.31,70.74
step
  talk Magistrate Solomon##344
  accept Messenger to Westfall##143 |goto Redridge Mountains 24.9,44.45
step
  talk Magistrate Solomon##344
  accept Messenger to Darkshire##145 |goto Redridge Mountains 24.9,44.45
step
  talk Dockmaster Baren##381
  accept Murloc Poachers##150 |goto Redridge Mountains 22.63,47.38
step
  note Bring 8 Murloc Fins to Dockmaster Baren in Lakeshire.
  collect 8 Murloc Fin##1468 |q 150 |goto Redridge Mountains 50.84,61.57 |tip {dropsfrom}Murloc Flesheater, Murloc Nightcrawler, Murloc Tidecaller
step
  talk Wilder Thistlenettle##656
  accept Collecting Memories##168 |goto Stormwind City 70.31,40.82
step
  note Retrieve 4 Miners' Union Cards and return them to Wilder Thistlenettle in Stormwind.
  kill Skeletal Miner##623 |goto Westfall 41.22,81.67 |elite
  collect 4 Miners' Union Card##1894 |q 168 |goto Westfall 41.22,81.67
step
  click Wanted: Gath'Ilzogg##60
  accept Wanted: Gath'Ilzogg##169 |goto Redridge Mountains 24.53,46.16
step
  note Kill Gath'Ilzogg and bring his head to Magistrate Solomon in Lakeshire for the reward.
  kill Gath'Ilzogg##334 |goto Redridge Mountains 64.52,55.79 |elite
  collect Head of Gath'Ilzogg##3633 |q 169 |goto Redridge Mountains 64.52,55.79
step
  kill Shadowhide Darkweaver##429 |goto Redridge Mountains 74.87,49.42 |tip Loot the quest item here — it starts the quest.
  accept Theocritus' Retrieval##178 |goto Redridge Mountains 74.87,49.42
step
  click Wanted: Lieutenant Fangore##47
  accept Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 21.66,46.44
step
  note Kill Lieutenant Fangore and return to Magistrate Solomon in Lakeshire with his paw.
  collect Fangore's Paw##3632 |q 180 |goto Redridge Mountains 75.09,37.06 |tip {dropsfrom}Lieutenant Fangore
step
  click Old Lion Statue##31
  accept Looking Further##248 |goto Redridge Mountains 79.4,46.83
step
  talk Foreman Oslow##341
  accept Rethban Ore##347 |goto Redridge Mountains 27.05,48.64
step
  note Gather 5 loads of Rethban Ore and bring it to Brother Paxton in the Northshire Library.
  collect 5 Rethban Ore##2798 |q 347 |goto Redridge Mountains 14.87,18.87 |tip {dropsfrom}Redridge Drudger, Tin Vein, Copper Vein
step
  talk Guard Berton##859
  accept What Comes Around...##386 |goto Redridge Mountains 21.17,46.58
step
  note Bring the head of Targorr the Dread to Guard Berton in Lakeshire.
  collect Head of Targorr##3630 |q 386 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Targorr the Dread
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  only Rogue
  talk Lucius##6966
  accept Alther's Mill##2282 |goto Redridge Mountains 22.97,52.04
step
  only Rogue
  note Open Lucius's Lockbox, recover the Token of Thievery and return it to Lucius in Lakeshire.
  collect Token of Thievery##7871 |q 2282 |goto Redridge Mountains 46.95,44.69 |tip {dropsfrom}Lucius's Lockbox
step
  only Rogue
  talk Arantir##7009
  accept Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  only Rogue
  note Return the Horns of Nez'ra to Arantir's Shadow in Lakeshire.
  kill Gath'Ilzogg##334 |goto Redridge Mountains 64.52,55.79 |elite
  collect Horns of Nez'ra##7906 |q 2358 |goto Redridge Mountains 64.52,55.79
step
  talk Shawn##8965
  accept Hilary's Necklace##3741 |goto Redridge Mountains 24.23,53.64
step
  note Find Hilary's Necklace, and return it to Hilary in Lakeshire.
  collect Hilary's Necklace##10958 |q 3741 |goto Redridge Mountains 24.43,54.3 |tip {dropsfrom}Glinting Mud
step
  talk Roy Lewells##268568
  accept Reading Room##97234 |goto Stormwind City 38.72,62.18
step
  talk Donyal Tovald##2504
  accept Shelf Picked##97237 |goto Stormwind City 75.05,30.12
step
  note Find each of the reading materials located somewhere in the library and then return to Roy Lewells in Stormwind's Park.
  collect The Forsaken Ally##277195 |q 97237 |goto Stormwind City 75.05,30.12
step
  talk Foreman Oslow##341
  accept Alther's Mill##98386 |goto Redridge Mountains 27.05,48.64
step
  talk Marshal Marris##382
  accept Blackrock Blockade##98387 |goto Redridge Mountains 28.41,48.97
step
  note Bring 10 Battleworn Axes to Marshal Marris in Lakeshire.
  collect 10 Stolen Supplies##280839 |q 98387 |goto Redridge Mountains 28.41,48.97 |tip {dropsfrom}Water Barrel, Grain Sack
step
  talk Deputy Feldon##1070
  accept Show of Force##98407 |goto Redridge Mountains 25.64,60
step
  note Collect 5 Spiked Collars from Gnoll Thrashers for Deputy Feldon near Lakeshire.
  collect 5 Spiked Collar##280911 |q 98407 |goto Redridge Mountains 10.86,66.29 |tip {dropsfrom}Redridge Thrasher
step
  note Kill 15 Blackrock Champions and Guard Howe in Lakeshire will reward you.
  kill Blackrock Champion##435 |q 128 |goto Redridge Mountains 24.51,11.69
step
  note Slay 12 Greater Tarantulas and destroy 6 Tarantula Eggs in Alther's Mill for Foreman Oslow in Redridge.
  kill Greater Tarantula##505 |q 98386 |goto Redridge Mountains 48.71,42.09
step
  note Kill 10 Redridge Brutes and 8 Redridge Mystics, then return to Verner Osgood.
  kill Redridge Brute##426 |q 124 |goto Redridge Mountains 19.03,35.01
step
  talk Guard Parker##464
  turnin A Free Lunch##129 |goto Redridge Mountains 10.18,71.46
step
  talk Guard Parker##464
  accept Visit the Herbalist##130 |goto Redridge Mountains 10.18,71.46
step
  talk Guard Parker##464
  accept Encroaching Gnolls##244 |goto Redridge Mountains 10.18,71.46
step
  talk Guard Howe##903
  turnin Blackrock Bounty##128 |goto Redridge Mountains 26.45,57.85
step
  talk Guard Berton##859
  turnin What Comes Around...##386 |goto Redridge Mountains 21.17,46.58
step
  talk Martie Jainrose##342
  turnin Visit the Herbalist##130 |goto Redridge Mountains 16.77,46.33
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  talk Gryan Stoutmantle##234
  turnin Messenger to Westfall##143 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  talk Lord Ello Ebonlocke##263
  turnin Messenger to Darkshire##145 |goto Duskwood 71.93,46.42 |tip {turninat}Duskwood
step
  talk Marshal Marris##382
  turnin Blackrock Menace##20 |goto Redridge Mountains 28.41,48.97
step
  talk Dockmaster Baren##381
  turnin Murloc Poachers##150 |goto Redridge Mountains 22.63,47.38
step
  talk Hilary##8962
  turnin Hilary's Necklace##3741 |goto Redridge Mountains 24.15,53.63
step
  talk Martie Jainrose##342
  turnin An Unwelcome Guest##34 |goto Redridge Mountains 16.77,46.33
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  talk Wilder Thistlenettle##656
  turnin Collecting Memories##168 |goto Stormwind City 70.31,40.82 |tip {turninat}Stormwind City
step
  talk Magistrate Solomon##344
  turnin Wanted: Gath'Ilzogg##169 |goto Redridge Mountains 24.9,44.45
step
  talk Theocritus##313
  turnin Theocritus' Retrieval##178 |goto Elwynn Forest 65.22,69.71 |tip {turninat}Elwynn Forest
step
  talk Magistrate Solomon##344
  turnin Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 24.9,44.45
step
  only Rogue
  talk Arantir##7009
  turnin Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  talk Donyal Tovald##2504
  turnin Reading Room##97234 |goto Stormwind City 75.05,30.12 |tip {turninat}Stormwind City
step
  talk Foreman Oslow##341
  turnin Alther's Mill##98386 |goto Redridge Mountains 27.05,48.64
step
  talk Marshal Marris##382
  turnin Blackrock Blockade##98387 |goto Redridge Mountains 28.41,48.97
step
  talk Roy Lewells##268568
  turnin Shelf Picked##97237 |goto Stormwind City 38.72,62.18 |tip {turninat}Stormwind City
step
  talk Bailiff Conacher##900
  turnin Solomon's Law##91 |goto Redridge Mountains 24.63,44.26
step
  talk Chef Breanna##343
  turnin Redridge Goulash##92 |goto Redridge Mountains 17.59,43.84
step
  talk Brother Paxton##951
  turnin Rethban Ore##347 |goto Elwynn Forest 49.61,40.41 |tip {turninat}Elwynn Forest
step
  turnin Looking Further##248 |goto Redridge Mountains 58.16,49.84
step
  talk Deputy Feldon##1070
  turnin Show of Force##98407 |goto Redridge Mountains 25.64,60
step
  only Rogue
  talk Lucius##6966
  turnin Alther's Mill##2282 |goto Redridge Mountains 22.97,52.04
step
  talk Barkeep Daniels##346
  turnin Dry Times##116 |goto Redridge Mountains 21.39,43.96
step
  talk Deputy Feldon##1070
  turnin Encroaching Gnolls##244 |goto Redridge Mountains 25.64,60
step
  talk Smith Argus##514
  turnin The Price of Shoes##118 |goto Elwynn Forest 41.71,65.54 |tip {turninat}Elwynn Forest
step
  talk General Marcus Jonathan##466
  turnin Messenger to Stormwind##120 |goto Stormwind City 69.17,82.72 |tip {turninat}Stormwind City
step
  talk Verner Osgood##415
  turnin Underbelly Scales##122 |goto Redridge Mountains 25.88,47.27
step
  talk Verner Osgood##415
  turnin A Baying of Gnolls##124 |goto Redridge Mountains 25.88,47.27
step
  talk Foreman Oslow##341
  turnin The Lost Tools##125 |goto Redridge Mountains 27.05,48.64
step
  talk Dockmaster Baren##381
  turnin Selling Fish##127 |goto Redridge Mountains 22.63,47.38
step
  talk Marshal Marris##382
  accept Tharil'zun##19 |goto Redridge Mountains 28.41,48.97
step
  note Bring Tharil'zun's Head to Marshal Marris in Redridge.
  kill Tharil'zun##486 |goto Redridge Mountains 64.36,59.41 |elite
  collect Tharil'zun's Head##1260 |q 19 |goto Redridge Mountains 64.36,59.41
step
  talk Foreman Oslow##341
  accept The Everstill Bridge##89 |goto Redridge Mountains 27.05,48.64
step
  note Bring 5 Iron Pikes and 5 Iron Rivets to Foreman Oslow in Lakeshire.
  collect 5 Iron Pike##2856 |q 89 |goto Redridge Mountains 19.03,35.01 |tip {dropsfrom}Redridge Brute, Redridge Mystic, Redridge Basher
step
  talk Marshal Marris##382
  accept Shadow Magic##115 |goto Redridge Mountains 28.41,48.97
step
  note Bring 3 Midnight Orbs to Marshal Marris in Lakeshire.
  kill Blackrock Shadowcaster##436 |goto Redridge Mountains 63.08,54.76 |elite
  collect 3 Midnight Orb##1261 |q 115 |goto Redridge Mountains 63.08,54.76
step
  talk Verner Osgood##415
  accept Howling in the Hills##126 |goto Redridge Mountains 25.88,47.27
step
  note Bring Yowler's Paw to Verner Osgood in Lakeshire.
  collect Yowler's Paw##3614 |q 126 |goto Redridge Mountains 22.56,21.38 |tip {dropsfrom}Yowler
step
  talk Martie Jainrose##342
  accept Delivering Daffodils##131 |goto Redridge Mountains 16.77,46.33
step
  talk Deputy Feldon##1070
  accept Assessing the Threat##246 |goto Redridge Mountains 25.64,60
step
  click Old Lion Statue##31
  accept Morganth##249 |goto Redridge Mountains 79.4,46.83
step
  note Defeat Morganth.
  kill Morganth##397 |goto Redridge Mountains 75.02,49.49 |elite
  collect Pendant of Shadow##3617 |q 249 |goto Redridge Mountains 75.02,49.49
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Shieldsmith##1702 |goto Redridge Mountains 21.49,44.72
step
  note Kill 10 Redridge Mongrels and 6 Redridge Poachers, then report back to Deputy Feldon in Lakeshire.
  kill Redridge Mongrel##423 |q 246 |goto Redridge Mountains 24.77,72.3
step
  talk Darcy##379
  turnin Delivering Daffodils##131 |goto Redridge Mountains 21.53,44.3
step
  talk Marshal Marris##382
  turnin Tharil'zun##19 |goto Redridge Mountains 28.41,48.97
step
  only Warrior
  talk Furen Longbeard##5413
  turnin The Shieldsmith##1702 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  talk Foreman Oslow##341
  turnin The Everstill Bridge##89 |goto Redridge Mountains 27.05,48.64
step
  talk Marshal Marris##382
  turnin Shadow Magic##115 |goto Redridge Mountains 28.41,48.97
step
  talk Deputy Feldon##1070
  turnin Assessing the Threat##246 |goto Redridge Mountains 25.64,60
step
  talk Theocritus##313
  turnin Morganth##249 |goto Elwynn Forest 65.22,69.71 |tip {turninat}Elwynn Forest
step
  talk Verner Osgood##415
  turnin Howling in the Hills##126 |goto Redridge Mountains 25.88,47.27
step
  note {travel}The Barrens
  goto The Barrens 62.68,36.23
]])
