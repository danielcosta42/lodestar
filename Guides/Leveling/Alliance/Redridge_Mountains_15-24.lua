-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Redridge Mountains (15-24)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Darkshore (13-20)",
	rev = "cabcdfb7",
}, [[
step
  ding 14
step
  only haveq(65)
  note Gryan Stoutmantle wants you to talk to Wiley in Lakeshire.
  talk Wiley the Black##266
  turnin The Defias Brotherhood##65 |goto Redridge Mountains 21.39,45.35
step
  talk Barkeep Daniels##346
  accept Dry Times##116 |goto Redridge Mountains 21.39,43.96
step
  note Barkeep Daniels of Lakeshire needs a keg of Thunderbrew Lager, a cask of Merlot, a bottle of Moonshine and a skin of Sweet Rum.
  talk Grimbooze Thunderbrew##239
  collect Keg of Thunderbrew##1262 |q 116/1 |goto Westfall 44.62,80.25
  talk Roberto Pupellyverbos##277
  buy Cask of Merlot##1941 |q 116/2 |goto Stormwind City 60.03,76.86
  talk Barkeep Hann##274
  buy Bottle of Moonshine##1942 |q 116/3 |goto Duskwood 73.66,44.05
  talk Barkeep Dobbins##465
  buy Skin of Sweet Rum##1939 |q 116 |goto Elwynn Forest 44,65.69
step
  talk Darcy##379
  accept A Free Lunch##129 |goto Redridge Mountains 21.53,44.3
step
  only level>=14
  talk Magistrate Solomon##344
  accept Messenger to Stormwind##120 |goto Redridge Mountains 24.9,44.45
step
  talk Barkeep Daniels##346
  turnin Dry Times##116 |goto Redridge Mountains 21.39,43.96
step
  only level>=15
  talk Foreman Oslow##341
  accept The Lost Tools##125 |goto Redridge Mountains 27.05,48.64
step
  note {fp}Ariena Stormfeather
  goto Redridge Mountains 25.5,59.41 |tip {vendor}
step
  talk Shawn##8965
  accept Hilary's Necklace##3741 |goto Redridge Mountains 24.23,53.64
step
  note Find Hilary's Necklace, and return it to Hilary in Lakeshire.
  collect Hilary's Necklace##10958 |q 3741 |goto Redridge Mountains 24.43,53.72 |tip {dropsfrom}Glinting Mud
step
  talk Hilary##8962
  turnin Hilary's Necklace##3741 |goto Redridge Mountains 24.15,53.63
step
  talk Deputy Feldon##1070
  accept Show of Force##98407 |goto Redridge Mountains 25.64,60
step
  note Bring Parker's lunch to Guard Parker. He patrols the road leading to Darkshire.
  talk Guard Parker##464
  turnin A Free Lunch##129 |goto Redridge Mountains 10.18,71.46
step
  talk Guard Parker##464
  accept Visit the Herbalist##130 |goto Redridge Mountains 10.18,71.46
step
  talk Guard Parker##464
  accept Encroaching Gnolls##244 |goto Redridge Mountains 10.18,71.46
step
  note Collect 5 Spiked Collars from Gnoll Thrashers for Deputy Feldon near Lakeshire.
  collect 5 Spiked Collar##280911 |q 98407 |goto Redridge Mountains 10.37,66.29 |tip {dropsfrom}Redridge Thrasher
step
  note Speak with the Redridge Herbalist, Martie Jainrose.
  talk Martie Jainrose##342
  turnin Visit the Herbalist##130 |goto Redridge Mountains 16.77,46.33
step
  talk Martie Jainrose##342
  accept Delivering Daffodils##131 |goto Redridge Mountains 16.77,46.33
step
  only level>=15
  talk Chef Breanna##343
  accept Redridge Goulash##92 |goto Redridge Mountains 17.59,43.84
step
  note Report to Deputy Feldon.
  talk Deputy Feldon##1070
  turnin Encroaching Gnolls##244 |goto Redridge Mountains 25.64,60
step
  talk Deputy Feldon##1070
  turnin Show of Force##98407 |goto Redridge Mountains 25.64,60
step
  talk Deputy Feldon##1070
  accept Assessing the Threat##246 |goto Redridge Mountains 25.64,60
step
  only haveq(92)
  note Chef Breanna of Lakeshire wants five pieces of Tough Condor Meat, five Great Goretusk Snouts and five helpings of Crisp Spider Meat.
  collect Great Goretusk Snout##2296 |q 92/1 |goto Redridge Mountains 20.33,60.53 |tip {dropsfrom}Great Goretusk, Bellygrub
  collect Crisp Spider Meat##1081 |q 92/3 |goto Redridge Mountains 7.32,76.98 |tip {dropsfrom}Tarantula, Greater Tarantula, Chatter
  collect Tough Condor Meat##1080 |q 92 |goto Redridge Mountains 50.17,73.4 |tip {dropsfrom}Dire Condor
step
  only haveq(92)
  talk Chef Breanna##343
  turnin Redridge Goulash##92 |goto Redridge Mountains 17.59,43.84
step
  only haveq(125)
  note Foreman Oslow of Lakeshire wants you to retrieve his toolbox from the bottom of Lake Everstill.
  collect Oslow's Toolbox##1309 |q 125 |goto Redridge Mountains 36.43,54.66 |tip {dropsfrom}Sunken Chest
step
  note Kill 10 Redridge Mongrels and 6 Redridge Poachers, then report back to Deputy Feldon in Lakeshire.
  kill Redridge Mongrel##423 |q 246/1 |goto Redridge Mountains 25.26,81.2
  kill Redridge Poacher##424 |q 246 |goto Redridge Mountains 27.19,82.28
step
  talk Deputy Feldon##1070
  turnin Assessing the Threat##246 |goto Redridge Mountains 25.64,60
step
  only haveq(125)
  talk Foreman Oslow##341
  turnin The Lost Tools##125 |goto Redridge Mountains 27.05,48.64
step
  note Give Darcy the Daffodil Bouquet.
  talk Darcy##379
  turnin Delivering Daffodils##131 |goto Redridge Mountains 21.53,44.3
step
  talk Verner Osgood##415
  accept The Price of Shoes##118 |goto Redridge Mountains 25.88,47.27
step
  only completed(65)
  talk Wiley the Black##266
  accept The Defias Brotherhood##132 |goto Redridge Mountains 21.39,45.35
step
  only completed(125) level>=15
  talk Foreman Oslow##341
  accept The Everstill Bridge##89 |goto Redridge Mountains 27.05,48.64
step
  only haveq(89)
  note Bring 5 Iron Pikes and 5 Iron Rivets to Foreman Oslow in Lakeshire.
  collect 5 Iron Pike##2856 |q 89 |goto Redridge Mountains 18.91,34.91 |tip {dropsfrom}Redridge Brute, Redridge Mystic, Redridge Basher
step
  only haveq(89)
  talk Foreman Oslow##341
  turnin The Everstill Bridge##89 |goto Redridge Mountains 27.05,48.64
step
  only level>=18
  talk Marshal Marris##382
  accept Blackrock Menace##20 |goto Redridge Mountains 28.41,48.97
step
  only level>=16
  talk Dockmaster Baren##381
  accept Selling Fish##127 |goto Redridge Mountains 22.63,47.38
step
  only level>=15
  talk Foreman Oslow##341
  accept Alther's Mill##98386 |goto Redridge Mountains 27.05,48.64
step
  only level>=18
  talk Marshal Marris##382
  accept Blackrock Blockade##98387 |goto Redridge Mountains 28.41,48.97
step
  only haveq(98387)
  note Bring 8 Stolen Weapons and 10 Blackrock Supplies to Marshal Marris in Lakeshire.
  collect 8 Stolen Weapon##280841 |q 98387/1 |tip {dropsfrom}Weapon Rack
  collect 10 Blackrock Supplies##280839 |q 98387 |tip {dropsfrom}Meat Haunch, Water Barrel
step
  only haveq(98387)
  talk Marshal Marris##382
  turnin Blackrock Blockade##98387 |goto Redridge Mountains 28.41,48.97
step
  only haveq(98386)
  note Slay 12 Greater Tarantulas and destroy 6 Tarantula Eggs in Alther's Mill for Foreman Oslow in Redridge.
  kill Greater Tarantula##505 |q 98386 |goto Redridge Mountains 48.79,43.18
step
  only haveq(20)
  note Bring 10 Battleworn Axes to Marshal Marris in Lakeshire.
  collect 10 Battleworn Axe##3014 |q 20 |goto Redridge Mountains 57.46,45.65 |tip {dropsfrom}Blackrock Renegade, Blackrock Grunt, Blackrock Outrunner
step
  only haveq(127)
  note Bring 10 Spotted Sunfish to Dockmaster Baren in Lakeshire.
  collect 10 Spotted Sunfish##1467 |q 127 |goto Redridge Mountains 50.2,61.74 |tip {dropsfrom}Murloc Flesheater, Murloc Nightcrawler, Murloc Tidecaller
step
  only haveq(20)
  talk Marshal Marris##382
  turnin Blackrock Menace##20 |goto Redridge Mountains 28.41,48.97
step
  only haveq(127)
  talk Dockmaster Baren##381
  turnin Selling Fish##127 |goto Redridge Mountains 22.63,47.38
step
  only haveq(98386)
  talk Foreman Oslow##341
  turnin Alther's Mill##98386 |goto Redridge Mountains 27.05,48.64
step
  only Rogue level>=16
  talk Arantir##7009
  accept Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  only Rogue haveq(2358)
  note Return the Horns of Nez'ra to Arantir's Shadow in Lakeshire.
  collect Horns of Nez'ra##7906 |q 2358 |goto Redridge Mountains 57.46,45.65 |tip {dropsfrom}Blackrock Renegade, Blackrock Shadowcaster, Blackrock Grunt
step
  only Rogue haveq(2358)
  talk Arantir##7009
  turnin Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  only level>=20
  talk Dockmaster Baren##381
  accept Murloc Poachers##150 |goto Redridge Mountains 22.63,47.38
step
  only haveq(150)
  note Bring 8 Murloc Fins to Dockmaster Baren in Lakeshire.
  collect 8 Murloc Fin##1468 |q 150 |goto Redridge Mountains 50.2,61.74 |tip {dropsfrom}Murloc Flesheater, Murloc Tidecaller, Murloc Minor Tidecaller
step
  only haveq(150)
  talk Dockmaster Baren##381
  turnin Murloc Poachers##150 |goto Redridge Mountains 22.63,47.38
step
  only level>=17
  talk Bailiff Conacher##900
  accept Solomon's Law##91 |goto Redridge Mountains 24.63,44.26
step
  only completed(20) level>=23
  talk Marshal Marris##382
  accept Shadow Magic##115 |goto Redridge Mountains 28.41,48.97
step
  only haveq(115)
  note Bring 3 Midnight Orbs to Marshal Marris in Lakeshire.
  kill Blackrock Shadowcaster##436 |q 115 |goto Redridge Mountains 63.08,54.64 |elite
  collect 3 Midnight Orb##1261 |q 115 |goto Redridge Mountains 63.08,54.64
step
  kill Shadowhide Darkweaver##429 |goto Redridge Mountains 75.2,49.48 |tip Loot the quest item here — it starts the quest.
  accept Theocritus' Retrieval##178 |goto Redridge Mountains 75.2,49.48
step
  only haveq(91)
  note Bring 10 Shadowhide Pendants to Bailiff Conacher in the Lakeshire Town Hall.
  collect 10 Shadowhide Pendant##1075 |q 91 |goto Redridge Mountains 73.87,40.45 |tip {dropsfrom}Shadowhide Brute, Shadowhide Gnoll, Rabid Shadowhide Gnoll
step
  only haveq(91)
  talk Bailiff Conacher##900
  turnin Solomon's Law##91 |goto Redridge Mountains 24.63,44.26
step
  only haveq(115)
  talk Marshal Marris##382
  turnin Shadow Magic##115 |goto Redridge Mountains 28.41,48.97
step
  only level>=18
  talk Martie Jainrose##342
  accept An Unwelcome Guest##34 |goto Redridge Mountains 16.77,46.33
step
  only haveq(34)
  note Martie Jainrose of Lakeshire wants you to kill Bellygrub. Bring her his tusk as proof.
  collect Bellygrub's Tusk##3631 |q 34 |goto Redridge Mountains 10.59,49.31 |tip {dropsfrom}Bellygrub
step
  only haveq(34)
  talk Martie Jainrose##342
  turnin An Unwelcome Guest##34 |goto Redridge Mountains 16.77,46.33
step
  only level>=20
  talk Guard Howe##903
  accept Blackrock Bounty##128 |goto Redridge Mountains 26.45,57.85
step
  only completed(20) level>=25
  talk Marshal Marris##382
  accept Tharil'zun##19 |goto Redridge Mountains 28.41,48.97
step
  click Wanted: Incinerator Gar'im##649051
  accept WANTED: Incinerator Gar'im##95999 |goto Redridge Mountains 24.45,46.11
step
  only haveq(128)
  note Kill 15 Blackrock Champions and Guard Howe in Lakeshire will reward you.
  kill Blackrock Champion##435 |q 128 |goto Redridge Mountains 24.25,12.05
step
  only level>=19
  talk Corporal Keeshan##349
  accept Missing In Action##219 |goto Redridge Mountains 23.3,12.55
step
  only haveq(219)
  note Protect Corporal Keeshan on the journey back to Redridge.
  goto Redridge Mountains 28.27,48.7 |tip Escort Corporal Keeshan back to Redridge
step
  only haveq(219)
  talk Marshal Marris##382
  turnin Missing In Action##219 |goto Redridge Mountains 28.41,48.97
step
  only haveq(19)
  note Bring Tharil'zun's Head to Marshal Marris in Redridge.
  kill Tharil'zun##486 |q 19 |goto Redridge Mountains 64.36,59.41 |elite
  collect Tharil'zun's Head##1260 |q 19 |goto Redridge Mountains 64.36,59.41
step
  note Deliver the Broken Staff of Incinerator Gar'im to Magistrate Solomon in Lakeshire.
  collect Broken Staff of Incinerator Gar'im##271872 |q 95999 |goto Redridge Mountains 71.61,84.4 |tip {dropsfrom}Incinerator Gar'im
step
  only haveq(128)
  talk Guard Howe##903
  turnin Blackrock Bounty##128 |goto Redridge Mountains 26.45,57.85
step
  only haveq(19)
  talk Marshal Marris##382
  turnin Tharil'zun##19 |goto Redridge Mountains 28.41,48.97
step
  talk Magistrate Solomon##344
  turnin WANTED: Incinerator Gar'im##95999 |goto Redridge Mountains 24.9,44.45
step
  only level>=26
  click Wanted: Gath'Ilzogg##60
  accept Wanted: Gath'Ilzogg##169 |goto Redridge Mountains 24.53,46.16
step
  click Wanted: Lieutenant Fangore##47
  accept Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 21.66,46.44
step
  only haveq(169)
  note Kill Gath'Ilzogg and bring his head to Magistrate Solomon in Lakeshire for the reward.
  kill Gath'Ilzogg##334 |q 169 |goto Redridge Mountains 64.52,55.79 |elite
  collect Head of Gath'Ilzogg##3633 |q 169 |goto Redridge Mountains 64.52,55.79
step
  note Kill Lieutenant Fangore and return to Magistrate Solomon in Lakeshire with his paw.
  collect Fangore's Paw##3632 |q 180 |goto Redridge Mountains 75.09,37.06 |tip {dropsfrom}Lieutenant Fangore
step
  only haveq(169)
  talk Magistrate Solomon##344
  turnin Wanted: Gath'Ilzogg##169 |goto Redridge Mountains 24.9,44.45
step
  talk Magistrate Solomon##344
  turnin Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 24.9,44.45
step
  only haveq(120)
  note Magistrate Solomon has given you a report which must be delivered to General Marcus Jonathan in Stormwind. The judge wants you to return to him as soon as the delivery has been made.
  talk General Marcus Jonathan##466
  turnin Messenger to Stormwind##120 |goto Stormwind City 69.17,82.72 |tip {turninat}Stormwind City
step
  only completed(120)
  talk General Marcus Jonathan##466
  accept Messenger to Stormwind##121 |goto Stormwind City 69.17,82.72
step
  only Rogue
  talk Renzik "The Shiv"##6946
  accept Redridge Rendezvous##2281 |goto Stormwind City 78.29,71.14
step
  only Rogue completed(2359) level>=20
  talk Master Mathias Shaw##332
  accept The Touch of Zanzil##2607 |goto Stormwind City 78.31,70.74
step
  only Rogue completed(2359) haveq(2607)
  note Speak with Doc Mixilpixil in the cellar of the Barracks.
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2607 |goto Stormwind City 80.06,69.9 |tip {turninat}Stormwind City
step
  only Rogue completed(2359) completed(2607) level>=20
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2608 |goto Stormwind City 80.06,69.9
step
  only Rogue completed(2359) haveq(2608)
  note /Lay down to be examined by Doc Mixilpixil. How can he find the cure if he can't find the cause?
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2608 |goto Stormwind City 80.06,69.9 |tip {turninat}Stormwind City
step
  only Rogue completed(2359) completed(2608) level>=20
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2609 |goto Stormwind City 80.06,69.9
step
  only Rogue completed(2359) haveq(2609)
  note Bring Doc Mixilpixil one bundle of Simple Wildflowers, one Leaded Vial, one Bronze Tube, and one Spool of Light Chartreuse Silk Thread. The 'itis' doesn't cure itself, young <fella/lady>.
  talk Bernard Gump##1302
  buy Simple Wildflowers##3421 |q 2609/1 |goto Stormwind City 69.24,71.84
  collect Spool of Light Chartreuse Silk Thread##8431 |q 2609/4 |goto Stormwind City 50.58,60.14
  talk Amy Davenport##777
  buy Leaded Vial##3372 |q 2609/2 |goto Redridge Mountains 24.04,47.32
  collect Bronze Tube##4371 |q 2609 |goto Westfall 41.27,66.41 |tip {dropsfrom}Box of Assorted Parts
step
  only Rogue completed(2359) haveq(2609)
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2609 |goto Stormwind City 80.06,69.9 |tip {turninat}Stormwind City
step
  only Mage
  talk Garion Wendell##211033
  accept Research Access##97286 |goto Stormwind City 49.05,86.37
step
  only Mage
  talk Garion Wendell##211033
  turnin Research Access##97286 |goto Stormwind City 49.05,86.37 |tip {turninat}Stormwind City
step
  only not NightElf not Gnome not Skyborne Paladin level>=22
  talk Ursula Deline##5495
  accept Earning Your Salt##78091 |goto Stormwind City 39.89,84.19
step
  only Warlock completed(1738) level>=20
  talk Gakin the Darkbinder##6122
  accept The Binding##1739 |goto Stormwind City 39.22,85.23
step
  only Warlock completed(1738) haveq(1739)
  note Using the Heartswood Core, summon and subdue a succubus, then return the Heartswood Core to Gakin the Darkbinder in the Slaughtered Lamb.
  use Summoned Succubus##5677 |q 1739 |tip {useit}
step
  only Warlock completed(1738) haveq(1739)
  talk Gakin the Darkbinder##6122
  turnin The Binding##1739 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only Warlock completed(65602) level>=20
  talk Gakin the Darkbinder##6122
  accept The Binding##65603 |goto Stormwind City 39.22,85.23
step
  only Warlock completed(65602) haveq(65603)
  note Using the Wooden Figurine, summon and subdue an incubus, then return the Wooden Figurine to Gakin the Darkbinder in the Slaughtered Lamb.
  use Summoned Incubus##185335 |q 65603 |goto Stormwind City 39.35,84.74 |tip {useit}
step
  only Warlock completed(65602) haveq(65603)
  talk Gakin the Darkbinder##6122
  turnin The Binding##65603 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only Dwarf Priest not completed(5641) not completed(5647) not haveq(5641) not haveq(5647) level>=20
  talk High Priestess Laurena##376
  accept A Lack of Fear##5645 |goto Stormwind City 49.53,44.6
step
  only Human Priest not completed(5677) not completed(5678) not haveq(5677) not haveq(5678) level>=20
  talk High Priestess Laurena##376
  accept Arcane Feedback##5676 |goto Stormwind City 49.53,44.6
step
  only Human Priest not completed(5677) not completed(5678) not haveq(5677) not haveq(5678) haveq(5676)
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5676 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only Gnome Priest level>=20
  talk High Priestess Laurena##376
  accept Contingency Plan##94819 |goto Stormwind City 49.53,44.6
step
  note Take Verner's Note to Smith Argus in Goldshire.
  talk Smith Argus##514
  turnin The Price of Shoes##118 |goto Elwynn Forest 41.71,65.54 |tip {turninat}Elwynn Forest
step
  note Bring the Faded Shadowhide Pendant to Theocritus the Mage.
  talk Theocritus##313
  turnin Theocritus' Retrieval##178 |goto Elwynn Forest 65.22,69.71 |tip {turninat}Elwynn Forest
step
  only haveq(161)
  note Chief Engineer Hinderweir wants you to take the strange smelling powder to Ashlan Stonesmirk, the explosives expert in Dun Modr.
  talk Ashlan Stonesmirk##1073
  turnin A Dark Threat Looms##161 |goto Wetlands 50.05,18.17 |tip {turninat}Wetlands
step
  only Rogue
  note Venture forth to Lakeshire in the Redridge Mountains and speak with Lucius.
  talk Lucius##6966
  turnin Redridge Rendezvous##2281 |goto Redridge Mountains 22.97,52.04
step
  only Rogue
  talk Lucius##6966
  accept Alther's Mill##2282 |goto Redridge Mountains 22.97,52.04
step
  only haveq(121)
  note Take General Marcus Jonathan's letter of response to Magistrate Solomon in Lakeshire.
  talk Magistrate Solomon##344
  turnin Messenger to Stormwind##121 |goto Redridge Mountains 24.9,44.45
step
  only completed(121)
  talk Magistrate Solomon##344
  accept Messenger to Westfall##143 |goto Redridge Mountains 24.9,44.45
step
  only Rogue
  note Open Lucius's Lockbox, recover the Token of Thievery and return it to Lucius in Lakeshire.
  collect Token of Thievery##7871 |q 2282 |goto Redridge Mountains 46.95,44.69 |tip {dropsfrom}Lucius's Lockbox
step
  only Rogue
  talk Lucius##6966
  turnin Alther's Mill##2282 |goto Redridge Mountains 22.97,52.04
step
  only not NightElf not Gnome not Skyborne Paladin haveq(78091)
  note Collect 14 Summoner's Salt from Blackrock Summoners in Redridge Mountains, then return to Ursula Deline in Stormwind.
  collect 14 Summoner's Salt##209778 |q 78091 |goto Redridge Mountains 24.25,12.05 |tip {dropsfrom}Blackrock Champion, Gath'Ilzogg, Blackrock Shadowcaster
step
  only level>=19
  talk Mountaineer Kadrell##1340
  accept Report to Mountaineer Rockgar##468 |goto Loch Modan 32.63,49.74
step
  only Shaman level>=20
  talk Norric Lochthane##258043
  accept Water Sapta##94616 |goto Loch Modan 41.86,19.02
step
  only Shaman haveq(94616)
  talk Norric Lochthane##258043
  turnin Water Sapta##94616 |goto Loch Modan 41.86,19.02 |tip {turninat}Loch Modan
step
  only haveq(468)
  note Speak with Mountaineer Rockgar.
  talk Mountaineer Rockgar##1342
  turnin Report to Mountaineer Rockgar##468 |goto Loch Modan 25.44,10.38 |tip {turninat}Loch Modan
step
  only level>=19
  talk Mountaineer Rockgar##1342
  accept The Algaz Gauntlet##455 |goto Loch Modan 25.44,10.38
step
  only Dwarf Priest not completed(5641) not completed(5647) not haveq(5641) not haveq(5647) haveq(5645)
  note Speak to High Priest Rohan in Ironforge.
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5645 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
step
  only Gnome Priest haveq(94819)
  note Speak to High Priestess Mims in Ironforge.
  talk High Priestess Mims##258785
  turnin Contingency Plan##94819 |goto Ironforge 24.84,10.16 |tip {turninat}Ironforge
step
  only Shaman level>=20
  talk Eldrun Stormbreaker##258098
  accept Call of Water##94494 |goto Ironforge 47.38,13.48
step
  only Warrior level>=20
  talk Kelv Sternhammer##5113
  accept Yorus Barleybrew##1698 |goto Ironforge 70.34,90.65
step
  only Warrior haveq(1698)
  note Speak with Yorus Barleybrew.
  talk Yorus Barleybrew##6166
  turnin Yorus Barleybrew##1698 |goto Redridge Mountains 21.49,44.72
step
  only Warrior level>=20
  talk Yorus Barleybrew##6166
  accept The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  only Warrior haveq(1699)
  note Enter the Rethban Caverns, reach the first fork, and return to Yorus Barleybrew within the time allowed.
  goto Redridge Mountains 14.05,24.71 |tip Enter the Rethban Caverns
step
  only Warrior haveq(1699)
  talk Yorus Barleybrew##6166
  turnin The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  only Warrior completed(1699) level>=20
  talk Yorus Barleybrew##6166
  accept The Shieldsmith##1702 |goto Redridge Mountains 21.49,44.72
step
  only Shaman haveq(94494)
  note Find Norric Lochthane in Loch Modan.
  talk Norric Lochthane##258043
  turnin Call of Water##94494 |goto Loch Modan 41.86,19.02 |tip {turninat}Loch Modan
step
  only not NightElf not Gnome not Skyborne Paladin haveq(78091)
  talk Ursula Deline##5495
  turnin Earning Your Salt##78091 |goto Stormwind City 39.89,84.19 |tip {turninat}Stormwind City
step
  only Warrior haveq(1702)
  note Bring the Cask of Scalder to Furen Longbeard.
  talk Furen Longbeard##5413
  turnin The Shieldsmith##1702 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  only completed(65)
  note Take Wiley's Note to Gryan Stoutmantle in Westfall.
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only haveq(143)
  note Magistrate Solomon wants you to take his written plea to Gryan Stoutmantle in Westfall.
  talk Gryan Stoutmantle##234
  turnin Messenger to Westfall##143 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only completed(65)
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
step
  only completed(143)
  talk Gryan Stoutmantle##234
  accept Messenger to Westfall##144 |goto Westfall 56.33,47.52
step
  only haveq(455)
  note Traverse Dun Algaz.
  kill Dragonmaw Scout##2103 |q 455/1 |goto Wetlands 47.89,77.19
  kill Dragonmaw Grunt##2102 |q 455 |goto Wetlands 48.21,75.77
step
  only haveq(455)
  talk Valstag Ironjaw##2086
  turnin The Algaz Gauntlet##455 |goto Wetlands 10.1,56.9 |tip {turninat}Wetlands
step
  only completed(65)
  note Take Wiley's Note to Mathias Shaw in Stormwind.
  talk Master Mathias Shaw##332
  turnin The Defias Brotherhood##135 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(65)
  talk Master Mathias Shaw##332
  accept The Defias Brotherhood##141 |goto Stormwind City 78.31,70.74
step
  only haveq(144)
  note Return to Magistrate Solomon with Gryan Stoutmantle's response.
  talk Magistrate Solomon##344
  turnin Messenger to Westfall##144 |goto Redridge Mountains 24.9,44.45
step
  only completed(144) level>=18
  talk Magistrate Solomon##344
  accept Messenger to Darkshire##145 |goto Redridge Mountains 24.9,44.45
step
  only completed(65)
  note Take Shaw's report to Gryan Stoutmantle in Westfall.
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only completed(65)
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  only completed(65)
  note Track down the Defias Messenger in Westfall and bring his message to Stoutmantle.
  collect A Mysterious Message##1381 |q 142 |goto Westfall 45.1,69.33 |tip {dropsfrom}Defias Messenger
step
  only completed(65)
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only completed(65)
  talk The Defias Traitor##467
  accept The Defias Brotherhood##155 |goto Westfall 55.68,47.5
step
  only completed(65)
  note Escort the Defias Traitor to the secret hideout of the Defias Brotherhood. Once the Defias Traitor shows you where VanCleef and his men are hiding out, return to Gryan Stoutmantle with the information.
  goto Westfall 42.55,71.53 |tip Escort The Defias Traitor to discover where VanCleef is hiding
step
  only completed(65)
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only completed(65)
  talk Scout Riell##820
  accept Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  only completed(65)
  note Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas.
  collect 10 Red Silk Bandana##915 |q 214 |goto Westfall 42.82,76.47 |tip {dropsfrom}Defias Digger, Defias Henchman, Defias Conjurer
step
  only completed(65)
  talk Scout Riell##820
  turnin Red Silk Bandanas##214 |goto Westfall 56.67,47.35 |tip {turninat}Westfall
step
  only haveq(145)
  note Magistrate Solomon wants you to take a letter to Lord Ebonlocke in Darkshire.
  talk Lord Ello Ebonlocke##263
  turnin Messenger to Darkshire##145 |goto Duskwood 71.93,46.42 |tip {turninat}Duskwood
step
  note {travel}Darkshore
  goto Darkshore 36.97,44.13
]])
