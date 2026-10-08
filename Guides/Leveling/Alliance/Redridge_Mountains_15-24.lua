-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Redridge Mountains (15-24)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stonetalon Mountains (21-27)",
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
  accept Oh Brother. . .##167 |goto Stormwind City 70.31,40.82
step
  note Bring Foreman Thistlenettle's Explorers' League Badge to Wilder Thistlenettle in Stormwind.
  kill Foreman Thistlenettle##626 |goto Westfall 42.22,82.61 |elite
  collect Thistlenettle's Badge##1875 |q 167 |goto Westfall 42.22,82.61
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
  talk Lomac Gearstrip##4081
  accept Ineptitude + Chemicals = Fun##1073 |goto Ironforge 72.08,51.88
step
  note Bring 4 Minor Mana Potions and 2 Elixirs of Minor Fortitude to Lomac Gearstrip in Ironforge.
  collect 4 Minor Mana Potion##2455 |q 1073 |goto Westfall 45.85,26.58 |tip {dropsfrom}Defias Smuggler, Riverpaw Taskmaster, Harvest Watcher
step
  only Paladin
  talk Duthorian Rall##6171
  accept The Test of Righteousness##1653 |goto Stormwind City 50.48,47.49
step
  only Warrior
  talk Kelv Sternhammer##5113
  accept Yorus Barleybrew##1698 |goto Ironforge 70.34,90.65
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  only Warlock
  talk Lago Blackwrench##6120
  accept Gakin's Summons##1717 |goto Ironforge 47.63,9.26
step
  talk Shoni the Shilent##6579
  accept Underground Assault##2040 |goto Stormwind City 62.63,34.11
step
  note Retrieve the Gnoam Sprecklesprocket from the Deadmines and return it to Shoni the Shilent in Stormwind.
  collect Gnoam Sprecklesprocket##7365 |q 2040 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Sneed's Shredder
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
  only Rogue
  talk Master Mathias Shaw##332
  accept Mathias and the Defias##2360 |goto Stormwind City 78.31,70.74
step
  only Rogue
  talk Master Mathias Shaw##332
  accept The Touch of Zanzil##2607 |goto Stormwind City 78.31,70.74
step
  only Rogue
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2609 |goto Stormwind City 80.06,69.9
step
  only Rogue
  note Bring Doc Mixilpixil one bundle of Simple Wildflowers, one Leaded Vial, one Bronze Tube, and one Spool of Light Chartreuse Silk Thread. The 'itis' doesn't cure itself, young <fella/lady>.
  collect Simple Wildflowers##3421 |q 2609 |goto Stormwind City 69.24,71.84 |tip {dropsfrom}Bernard Gump, Felicia Gump
step
  talk Shawn##8965
  accept Hilary's Necklace##3741 |goto Redridge Mountains 24.23,53.64
step
  note Find Hilary's Necklace, and return it to Hilary in Lakeshire.
  collect Hilary's Necklace##10958 |q 3741 |goto Redridge Mountains 24.43,54.3 |tip {dropsfrom}Glinting Mud
step
  only Dwarf Priest
  talk High Priest Rohan##11406
  accept A Lack of Fear##5641 |goto Ironforge 24.73,8.16
step
  only Dwarf Priest
  talk High Priestess Laurena##376
  accept A Lack of Fear##5645 |goto Stormwind City 49.53,44.6
step
  only NightElf Priest
  talk High Priestess Laurena##376
  accept Elune's Grace##5673 |goto Stormwind City 49.53,44.6
step
  only NightElf Priest
  talk Nara Meideros##11397
  accept Elune's Grace##5674 |goto Stormwind City 35.68,63.18
step
  only NightElf Priest
  talk High Priest Rohan##11406
  accept Elune's Grace##5675 |goto Ironforge 24.73,8.16
step
  only Human Priest
  talk High Priestess Laurena##376
  accept Arcane Feedback##5676 |goto Stormwind City 49.53,44.6
step
  only Human Priest
  talk High Priest Rohan##11406
  accept Arcane Feedback##5677 |goto Ironforge 24.73,8.16
step
  only Shaman
  talk Eldrun Stormbreaker##258098
  accept Call of Water##94494 |goto Ironforge 47.48,13.5
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
  only Druid
  talk Mathrengyl Bearwalker##4217
  accept The Great Cat Spirit##98393 |goto Darnassus 35.37,8.4
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
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Elune's Grace##5673 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Elune's Grace##5674 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Elune's Grace##5675 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only Warlock
  talk Gakin the Darkbinder##6122
  turnin Gakin's Summons##1717 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  talk Guard Parker##464
  accept Visit the Herbalist##130 |goto Redridge Mountains 10.18,71.46
step
  talk Guard Parker##464
  accept Encroaching Gnolls##244 |goto Redridge Mountains 10.18,71.46
step
  talk Chief Archaeologist Greywhisker##2912
  accept The Absent Minded Prospector##942 |goto Darnassus 31.24,84.51
step
  talk Collin Mauren##4078
  accept Devils in Westfall##1076 |goto Stormwind City 53.02,86.64
step
  note Bring Dust Devil Debris to Collin Mauren in Stormwind.
  collect Dust Devil Debris##5669 |q 1076 |goto Westfall 42.75,49.32 |tip {dropsfrom}Dust Devil
step
  only Warlock
  talk Gakin the Darkbinder##6122
  accept The Binding##1739 |goto Stormwind City 39.22,85.23
step
  only Warlock
  note Using the Heartswood Core, summon and subdue a succubus, then return the Heartswood Core to Gakin the Darkbinder in the Slaughtered Lamb.
  use Summoned Succubus##5677 |q 1739 |tip {useit}
step
  only Dwarf Priest
  talk Priestess Alathea##11401
  accept A Lack of Fear##5647 |goto Darnassus 39.52,81.2
step
  only NightElf Priest
  talk Priestess Alathea##11401
  accept Elune's Grace##5672 |goto Darnassus 39.52,81.2
step
  only Human Priest
  talk Priestess Alathea##11401
  accept Arcane Feedback##5678 |goto Darnassus 39.52,81.2
step
  only Mage
  talk Garion Wendell##211033
  accept Research Access##97286 |goto Stormwind City 49.02,86.45
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
  only Mage
  talk Owen Thadd##211022
  turnin Research Access##97286 |goto Undercity 73.67,33.03 |tip {turninat}Undercity
step
  only Dwarf Priest
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5641 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
step
  only Dwarf Priest
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5645 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
step
  talk Gryan Stoutmantle##234
  turnin Messenger to Westfall##143 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only Dwarf Priest
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5647 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
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
  talk Shoni the Shilent##6579
  turnin Underground Assault##2040 |goto Stormwind City 62.63,34.11 |tip {turninat}Stormwind City
step
  talk Hilary##8962
  turnin Hilary's Necklace##3741 |goto Redridge Mountains 24.15,53.63
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Call of Water##94494 |goto Loch Modan 41.89,19.03 |tip {turninat}Loch Modan
step
  talk Martie Jainrose##342
  turnin An Unwelcome Guest##34 |goto Redridge Mountains 16.77,46.33
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin Yorus Barleybrew##1698 |goto Redridge Mountains 21.49,44.72
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  talk Wilder Thistlenettle##656
  turnin Oh Brother. . .##167 |goto Stormwind City 70.31,40.82 |tip {turninat}Stormwind City
step
  talk Magistrate Solomon##344
  turnin Wanted: Gath'Ilzogg##169 |goto Redridge Mountains 24.9,44.45
step
  only Human Priest
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5676 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only Human Priest
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5677 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2607 |goto Stormwind City 80.06,69.9 |tip {turninat}Stormwind City
step
  talk Lomac Gearstrip##4081
  turnin Ineptitude + Chemicals = Fun##1073 |goto Ironforge 72.08,51.88 |tip {turninat}Ironforge
step
  talk Theocritus##313
  turnin Theocritus' Retrieval##178 |goto Elwynn Forest 65.22,69.71 |tip {turninat}Elwynn Forest
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2609 |goto Stormwind City 80.06,69.9 |tip {turninat}Stormwind City
step
  talk Magistrate Solomon##344
  turnin Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 24.9,44.45
step
  only Rogue
  talk Arantir##7009
  turnin Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  only Human Priest
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5678 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only Rogue
  talk Agent Kearnen##7024
  turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08 |tip {turninat}Westfall
step
  talk Foreman Oslow##341
  turnin Alther's Mill##98386 |goto Redridge Mountains 27.05,48.64
step
  talk Marshal Marris##382
  turnin Blackrock Blockade##98387 |goto Redridge Mountains 28.41,48.97
step
  only Druid
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98393 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
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
  only Paladin
  talk Jordan Stilwell##6181
  turnin The Test of Righteousness##1653 |goto Dun Morogh 52.49,36.92 |tip {turninat}Dun Morogh
step
  talk Smith Argus##514
  turnin The Price of Shoes##118 |goto Elwynn Forest 41.71,65.54 |tip {turninat}Elwynn Forest
step
  talk Deputy Feldon##1070
  turnin Encroaching Gnolls##244 |goto Redridge Mountains 25.64,60
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
  talk Lomac Gearstrip##4081
  accept Ineptitude + Chemicals = Fun##1074 |goto Ironforge 72.08,51.88
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Shieldsmith##1702 |goto Redridge Mountains 21.49,44.72
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Elune's Grace##5672 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  talk Archaeologist Flagongut##2911
  turnin The Absent Minded Prospector##942 |goto Wetlands 10.84,60.43 |tip {turninat}Wetlands
step
  talk Collin Mauren##4078
  turnin Devils in Westfall##1076 |goto Stormwind City 53.02,86.64 |tip {turninat}Stormwind City
step
  only Warlock
  talk Gakin the Darkbinder##6122
  turnin The Binding##1739 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  talk Collin Mauren##4078
  accept Special Delivery for Gaxim##1077 |goto Stormwind City 53.02,86.64
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
  talk Gaxim Rustfizzle##4077
  turnin Special Delivery for Gaxim##1077 |goto Stonetalon Mountains 59.52,67.15 |tip {turninat}Stonetalon Mountains
step
  talk Gaxim Rustfizzle##4077
  turnin Ineptitude + Chemicals = Fun##1074 |goto Stonetalon Mountains 59.52,67.15 |tip {turninat}Stonetalon Mountains
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
  note {travel}Stonetalon Mountains
  goto Stonetalon Mountains 59.52,67.15
]])
