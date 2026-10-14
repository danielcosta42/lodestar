-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Redridge Mountains (15-24)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Duskwood (21-28)",
	rev = "75fda501",
}, [[
step
  talk Barkeep Daniels##346
  accept Dry Times##116 |goto Redridge Mountains 21.39,43.96
step
  note Barkeep Daniels of Lakeshire needs a keg of Thunderbrew Lager, a cask of Merlot, a bottle of Moonshine and a skin of Sweet Rum.
  buy Keg of Thunderbrew##1262 |q 116 |goto Westfall 44.62,80.25
step
  talk Darcy##379
  accept A Free Lunch##129 |goto Redridge Mountains 21.53,44.3
step
  note {fp}Ariena Stormfeather
  goto Redridge Mountains 25.5,59.41 |tip {vendor}
step
  talk Shawn##8965
  accept Hilary's Necklace##3741 |goto Redridge Mountains 24.23,53.64
step
  talk Magistrate Solomon##344
  accept Messenger to Stormwind##120 |goto Redridge Mountains 24.9,44.45
step
  talk Deputy Feldon##1070
  accept Show of Force##98407 |goto Redridge Mountains 25.64,60
step
  note Find Hilary's Necklace, and return it to Hilary in Lakeshire.
  collect Hilary's Necklace##10958 |q 3741 |goto Redridge Mountains 24.43,53.72 |tip {dropsfrom}Glinting Mud
step
  talk Barkeep Daniels##346
  turnin Dry Times##116 |goto Redridge Mountains 21.39,43.96
step
  talk Hilary##8962
  turnin Hilary's Necklace##3741 |goto Redridge Mountains 24.15,53.63
step
  talk Foreman Oslow##341
  accept The Lost Tools##125 |goto Redridge Mountains 27.05,48.64
step
  talk Chef Breanna##343
  accept Redridge Goulash##92 |goto Redridge Mountains 17.59,43.84
step
  talk Verner Osgood##415
  accept The Price of Shoes##118 |goto Redridge Mountains 25.88,47.27
step
  only completed(65)
  talk Wiley the Black##266
  accept The Defias Brotherhood##132 |goto Redridge Mountains 21.39,45.35
step
  note Chef Breanna of Lakeshire wants five pieces of Tough Condor Meat, five Great Goretusk Snouts and five helpings of Crisp Spider Meat.
  collect Great Goretusk Snout##2296 |q 92 |goto Redridge Mountains 10.59,49.31 |tip {dropsfrom}Bellygrub, Great Goretusk, Snort
step
  note Foreman Oslow of Lakeshire wants you to retrieve his toolbox from the bottom of Lake Everstill.
  collect Oslow's Toolbox##1309 |q 125 |goto Redridge Mountains 36.43,54.66 |tip {dropsfrom}Sunken Chest
step
  talk Chef Breanna##343
  turnin Redridge Goulash##92 |goto Redridge Mountains 17.59,43.84
step
  talk Foreman Oslow##341
  turnin The Lost Tools##125 |goto Redridge Mountains 27.05,48.64
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
  note Collect 5 Spiked Collars from Gnoll Thrashers for Deputy Feldon near Lakeshire.
  collect 5 Spiked Collar##280911 |q 98407 |goto Redridge Mountains 10.37,66.29 |tip {dropsfrom}Redridge Thrasher
step
  talk Martie Jainrose##342
  turnin Visit the Herbalist##130 |goto Redridge Mountains 16.77,46.33
step
  talk Deputy Feldon##1070
  turnin Encroaching Gnolls##244 |goto Redridge Mountains 25.64,60
step
  talk Deputy Feldon##1070
  turnin Show of Force##98407 |goto Redridge Mountains 25.64,60
step
  talk Martie Jainrose##342
  accept Delivering Daffodils##131 |goto Redridge Mountains 16.77,46.33
step
  talk Deputy Feldon##1070
  accept Assessing the Threat##246 |goto Redridge Mountains 25.64,60
step
  talk Foreman Oslow##341
  accept The Everstill Bridge##89 |goto Redridge Mountains 27.05,48.64
step
  note Bring 5 Iron Pikes and 5 Iron Rivets to Foreman Oslow in Lakeshire.
  collect 5 Iron Pike##2856 |q 89 |goto Redridge Mountains 18.91,34.91 |tip {dropsfrom}Redridge Brute, Redridge Mystic, Redridge Basher
step
  talk Foreman Oslow##341
  turnin The Everstill Bridge##89 |goto Redridge Mountains 27.05,48.64
step
  talk Darcy##379
  turnin Delivering Daffodils##131 |goto Redridge Mountains 21.53,44.3
step
  note Kill 10 Redridge Mongrels and 6 Redridge Poachers, then report back to Deputy Feldon in Lakeshire.
  kill Redridge Mongrel##423 |q 246 |goto Redridge Mountains 25.26,81.2
step
  talk Deputy Feldon##1070
  turnin Assessing the Threat##246 |goto Redridge Mountains 25.64,60
step
  talk Marshal Marris##382
  accept Blackrock Menace##20 |goto Redridge Mountains 28.41,48.97
step
  talk Dockmaster Baren##381
  accept Selling Fish##127 |goto Redridge Mountains 22.63,47.38
step
  talk Foreman Oslow##341
  accept Alther's Mill##98386 |goto Redridge Mountains 27.05,48.64
step
  talk Marshal Marris##382
  accept Blackrock Blockade##98387 |goto Redridge Mountains 28.41,48.97
step
  note Bring 8 Stolen Weapons and 10 Blackrock Supplies to Marshal Marris in Lakeshire.
  collect 8 Stolen Weapon##280841 |q 98387 |goto Redridge Mountains 28.41,48.97 |tip {dropsfrom}Weapon Rack, Stolen Weapon
step
  note Bring 10 Spotted Sunfish to Dockmaster Baren in Lakeshire.
  collect 10 Spotted Sunfish##1467 |q 127 |goto Redridge Mountains 50.2,61.74 |tip {dropsfrom}Murloc Flesheater, Murloc Nightcrawler, Murloc Tidecaller
step
  note Slay 12 Greater Tarantulas and destroy 6 Tarantula Eggs in Alther's Mill for Foreman Oslow in Redridge.
  kill Greater Tarantula##505 |q 98386 |goto Redridge Mountains 48.79,43.18
step
  talk Dockmaster Baren##381
  turnin Selling Fish##127 |goto Redridge Mountains 22.63,47.38
step
  talk Foreman Oslow##341
  turnin Alther's Mill##98386 |goto Redridge Mountains 27.05,48.64
step
  talk Marshal Marris##382
  turnin Blackrock Blockade##98387 |goto Redridge Mountains 28.41,48.97
step
  only Rogue
  talk Arantir##7009
  accept Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  note Bring 10 Battleworn Axes to Marshal Marris in Lakeshire.
  collect 10 Battleworn Axe##3014 |q 20 |goto Redridge Mountains 24.25,12.05 |tip {dropsfrom}Blackrock Champion, Blackrock Shadowcaster, Blackrock Renegade
step
  only Rogue
  note Return the Horns of Nez'ra to Arantir's Shadow in Lakeshire.
  collect Horns of Nez'ra##7906 |q 2358 |goto Redridge Mountains 24.25,12.05 |tip {dropsfrom}Gath'Ilzogg, Blackrock Champion, Blackrock Shadowcaster
step
  talk Marshal Marris##382
  turnin Blackrock Menace##20 |goto Redridge Mountains 28.41,48.97
step
  only Rogue
  talk Arantir##7009
  turnin Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  talk Dockmaster Baren##381
  accept Murloc Poachers##150 |goto Redridge Mountains 22.63,47.38
step
  talk Bailiff Conacher##900
  accept Solomon's Law##91 |goto Redridge Mountains 24.63,44.26
step
  talk Marshal Marris##382
  accept Shadow Magic##115 |goto Redridge Mountains 28.41,48.97
step
  kill Shadowhide Darkweaver##429 |goto Redridge Mountains 75.2,49.48 |tip Loot the quest item here — it starts the quest.
  accept Theocritus' Retrieval##178 |goto Redridge Mountains 75.2,49.48
step
  note Bring 10 Shadowhide Pendants to Bailiff Conacher in the Lakeshire Town Hall.
  collect 10 Shadowhide Pendant##1075 |q 91 |goto Redridge Mountains 75.2,49.48 |tip {dropsfrom}Shadowhide Darkweaver, Shadowhide Slayer, Shadowhide Brute
step
  note Bring 3 Midnight Orbs to Marshal Marris in Lakeshire.
  kill Blackrock Shadowcaster##436 |goto Redridge Mountains 63.08,54.64 |elite
  collect 3 Midnight Orb##1261 |q 115 |goto Redridge Mountains 63.08,54.64
step
  note Bring 8 Murloc Fins to Dockmaster Baren in Lakeshire.
  collect 8 Murloc Fin##1468 |q 150 |goto Redridge Mountains 50.2,61.74 |tip {dropsfrom}Murloc Flesheater, Murloc Nightcrawler, Murloc Tidecaller
step
  talk Bailiff Conacher##900
  turnin Solomon's Law##91 |goto Redridge Mountains 24.63,44.26
step
  talk Marshal Marris##382
  turnin Shadow Magic##115 |goto Redridge Mountains 28.41,48.97
step
  talk Dockmaster Baren##381
  turnin Murloc Poachers##150 |goto Redridge Mountains 22.63,47.38
step
  talk Martie Jainrose##342
  accept An Unwelcome Guest##34 |goto Redridge Mountains 16.77,46.33
step
  note Martie Jainrose of Lakeshire wants you to kill Bellygrub. Bring her his tusk as proof.
  collect Bellygrub's Tusk##3631 |q 34 |goto Redridge Mountains 10.59,49.31 |tip {dropsfrom}Bellygrub
step
  talk Martie Jainrose##342
  turnin An Unwelcome Guest##34 |goto Redridge Mountains 16.77,46.33
step
  talk Marshal Marris##382
  accept Tharil'zun##19 |goto Redridge Mountains 28.41,48.97
step
  talk Guard Howe##903
  accept Blackrock Bounty##128 |goto Redridge Mountains 26.45,57.85
step
  click Wanted: Incinerator Gar'im##649051
  accept WANTED: Incinerator Gar'im##95999 |goto Redridge Mountains 24.45,46.11
step
  note Bring Tharil'zun's Head to Marshal Marris in Redridge.
  kill Tharil'zun##486 |goto Redridge Mountains 64.36,59.41 |elite
  collect Tharil'zun's Head##1260 |q 19 |goto Redridge Mountains 64.36,59.41
step
  note Deliver the Broken Staff of Incinerator Gar'im to Magistrate Solomon in Lakeshire.
  collect Broken Staff of Incinerator Gar'im##271872 |q 95999 |goto Redridge Mountains 71.61,84.4 |tip {dropsfrom}Incinerator Gar'im
step
  talk Marshal Marris##382
  turnin Tharil'zun##19 |goto Redridge Mountains 28.41,48.97
step
  talk Magistrate Solomon##344
  turnin WANTED: Incinerator Gar'im##95999 |goto Redridge Mountains 24.9,44.45
step
  click Wanted: Gath'Ilzogg##60
  accept Wanted: Gath'Ilzogg##169 |goto Redridge Mountains 24.53,46.16
step
  click Wanted: Lieutenant Fangore##47
  accept Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 21.66,46.44
step
  note Kill Gath'Ilzogg and bring his head to Magistrate Solomon in Lakeshire for the reward.
  kill Gath'Ilzogg##334 |goto Redridge Mountains 64.52,55.79 |elite
  collect Head of Gath'Ilzogg##3633 |q 169 |goto Redridge Mountains 64.52,55.79
step
  note Kill Lieutenant Fangore and return to Magistrate Solomon in Lakeshire with his paw.
  collect Fangore's Paw##3632 |q 180 |goto Redridge Mountains 75.09,37.06 |tip {dropsfrom}Lieutenant Fangore
step
  talk Magistrate Solomon##344
  turnin Wanted: Gath'Ilzogg##169 |goto Redridge Mountains 24.9,44.45
step
  talk Magistrate Solomon##344
  turnin Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 24.9,44.45
step
  talk Corporal Keeshan##349
  accept Missing In Action##219 |goto Redridge Mountains 23.3,12.55
step
  note Kill 15 Blackrock Champions and Guard Howe in Lakeshire will reward you.
  kill Blackrock Champion##435 |q 128 |goto Redridge Mountains 24.25,12.05
step
  talk Guard Howe##903
  turnin Blackrock Bounty##128 |goto Redridge Mountains 26.45,57.85
step
  talk Marshal Marris##382
  turnin Missing In Action##219 |goto Redridge Mountains 28.41,48.97
step
  talk General Marcus Jonathan##466
  turnin Messenger to Stormwind##120 |goto Stormwind City 69.17,82.72 |tip {turninat}Stormwind City
step
  talk Smith Argus##514
  turnin The Price of Shoes##118 |goto Elwynn Forest 41.71,65.54 |tip {turninat}Elwynn Forest
step
  only completed(65)
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  talk Theocritus##313
  turnin Theocritus' Retrieval##178 |goto Elwynn Forest 65.22,69.71 |tip {turninat}Elwynn Forest
step
  only Rogue
  talk Renzik "The Shiv"##6946
  accept Redridge Rendezvous##2281 |goto Stormwind City 78.29,71.14
step
  only Mage
  talk Garion Wendell##211033
  accept Research Access##97286 |goto Stormwind City 49.05,86.37
step
  only Warrior
  talk Kelv Sternhammer##5113
  accept Yorus Barleybrew##1698 |goto Ironforge 70.34,90.65
step
  only Warlock completed(1738)
  talk Gakin the Darkbinder##6122
  accept The Binding##1739 |goto Stormwind City 39.22,85.23
step
  only Warlock completed(1738)
  note Using the Heartswood Core, summon and subdue a succubus, then return the Heartswood Core to Gakin the Darkbinder in the Slaughtered Lamb.
  use Summoned Succubus##5677 |q 1739 |tip {useit}
step
  only Rogue completed(2359)
  talk Master Mathias Shaw##332
  accept The Touch of Zanzil##2607 |goto Stormwind City 78.31,70.74
step
  only Dwarf Priest not completed(5641) not completed(5647) not haveq(5641) not haveq(5647)
  talk High Priestess Laurena##376
  accept A Lack of Fear##5645 |goto Stormwind City 49.53,44.6
step
  only NightElf Priest not completed(5672) not completed(5674) not completed(5675) not haveq(5672) not haveq(5674) not haveq(5675)
  talk High Priestess Laurena##376
  accept Elune's Grace##5673 |goto Stormwind City 49.53,44.6
step
  only Human Priest not completed(5677) not completed(5678) not haveq(5677) not haveq(5678)
  talk High Priestess Laurena##376
  accept Arcane Feedback##5676 |goto Stormwind City 49.53,44.6
step
  only Warlock completed(65602)
  talk Gakin the Darkbinder##6122
  accept The Binding##65603 |goto Stormwind City 39.22,85.23
step
  only Shaman
  talk Eldrun Stormbreaker##258098
  accept Call of Water##94494 |goto Ironforge 47.38,13.48
step
  only Shaman
  talk Norric Lochthane##258043
  accept Water Sapta##94616 |goto Loch Modan 41.86,19.02
step
  only Gnome Priest
  talk High Priestess Laurena##376
  accept Contingency Plan##94819 |goto Stormwind City 49.53,44.6
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ursula Deline##5495
  accept Earning Your Salt##78091 |goto Stormwind City 39.89,84.19
step
  only Warlock completed(65602)
  note Using the Wooden Figurine, summon and subdue an incubus, then return the Wooden Figurine to Gakin the Darkbinder in the Slaughtered Lamb.
  use Summoned Incubus##185335 |q 65603 |goto Stormwind City 39.35,84.74 |tip {useit}
step
  only not NightElf not Gnome not Skyborne Paladin
  note Collect 14 Summoner's Salt from Blackrock Summoners in Redridge Mountains, then return to Ursula Deline in Stormwind.
  collect 14 Summoner's Salt##209778 |q 78091 |goto Redridge Mountains 24.25,12.05 |tip {dropsfrom}Gath'Ilzogg, Blackrock Champion, Blackrock Shadowcaster
step
  only Rogue
  talk Lucius##6966
  turnin Redridge Rendezvous##2281 |goto Redridge Mountains 22.97,52.04
step
  only Mage
  talk Garion Wendell##211033
  turnin Research Access##97286 |goto Stormwind City 49.05,86.37 |tip {turninat}Stormwind City
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin Yorus Barleybrew##1698 |goto Redridge Mountains 21.49,44.72
step
  only Warlock completed(1738)
  talk Gakin the Darkbinder##6122
  turnin The Binding##1739 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only Rogue completed(2359)
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2607 |goto Stormwind City 80.06,69.9 |tip {turninat}Stormwind City
step
  only Dwarf Priest not completed(5641) not completed(5647) not haveq(5641) not haveq(5647)
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5645 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
step
  only NightElf Priest not completed(5672) not completed(5674) not completed(5675) not haveq(5672) not haveq(5674) not haveq(5675)
  talk Priestess Alathea##11401
  turnin Elune's Grace##5673 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only Human Priest not completed(5677) not completed(5678) not haveq(5677) not haveq(5678)
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5676 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only Warlock completed(65602)
  talk Gakin the Darkbinder##6122
  turnin The Binding##65603 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Call of Water##94494 |goto Loch Modan 41.86,19.02 |tip {turninat}Loch Modan
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Water Sapta##94616 |goto Loch Modan 41.86,19.02 |tip {turninat}Loch Modan
step
  only Gnome Priest
  talk High Priestess Mims##258785
  turnin Contingency Plan##94819 |goto Ironforge 24.84,10.16 |tip {turninat}Ironforge
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ursula Deline##5495
  turnin Earning Your Salt##78091 |goto Stormwind City 39.89,84.19 |tip {turninat}Stormwind City
step
  talk General Marcus Jonathan##466
  accept Messenger to Stormwind##121 |goto Stormwind City 69.17,82.72
step
  only completed(65)
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
step
  only Rogue
  talk Lucius##6966
  accept Alther's Mill##2282 |goto Redridge Mountains 22.97,52.04
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  only Rogue completed(2359)
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2608 |goto Stormwind City 80.06,69.9
step
  only Rogue
  note Open Lucius's Lockbox, recover the Token of Thievery and return it to Lucius in Lakeshire.
  collect Token of Thievery##7871 |q 2282 |goto Redridge Mountains 46.95,44.69 |tip {dropsfrom}Lucius's Lockbox
step
  talk Magistrate Solomon##344
  turnin Messenger to Stormwind##121 |goto Redridge Mountains 24.9,44.45
step
  only completed(65)
  talk Master Mathias Shaw##332
  turnin The Defias Brotherhood##135 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only Rogue
  talk Lucius##6966
  turnin Alther's Mill##2282 |goto Redridge Mountains 22.97,52.04
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin The Rethban Gauntlet##1699 |goto Redridge Mountains 21.49,44.72
step
  only Rogue completed(2359)
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2608 |goto Stormwind City 80.06,69.9 |tip {turninat}Stormwind City
step
  talk Magistrate Solomon##344
  accept Messenger to Westfall##143 |goto Redridge Mountains 24.9,44.45
step
  only completed(65)
  talk Master Mathias Shaw##332
  accept The Defias Brotherhood##141 |goto Stormwind City 78.31,70.74
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Shieldsmith##1702 |goto Redridge Mountains 21.49,44.72
step
  only Rogue completed(2359)
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2609 |goto Stormwind City 80.06,69.9
step
  only Rogue completed(2359)
  note Bring Doc Mixilpixil one bundle of Simple Wildflowers, one Leaded Vial, one Bronze Tube, and one Spool of Light Chartreuse Silk Thread. The 'itis' doesn't cure itself, young <fella/lady>.
  collect Simple Wildflowers##3421 |q 2609 |goto Stormwind City 69.24,71.84 |tip {dropsfrom}Bernard Gump, Felicia Gump
step
  talk Gryan Stoutmantle##234
  turnin Messenger to Westfall##143 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only completed(65)
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only Warrior
  talk Furen Longbeard##5413
  turnin The Shieldsmith##1702 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  only Rogue completed(2359)
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2609 |goto Stormwind City 80.06,69.9 |tip {turninat}Stormwind City
step
  talk Gryan Stoutmantle##234
  accept Messenger to Westfall##144 |goto Westfall 56.33,47.52
step
  only completed(65)
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  only completed(65)
  note Track down the Defias Messenger in Westfall and bring his message to Stoutmantle.
  collect A Mysterious Message##1381 |q 142 |goto Westfall 45.1,69.33 |tip {dropsfrom}Defias Messenger
step
  talk Magistrate Solomon##344
  turnin Messenger to Westfall##144 |goto Redridge Mountains 24.9,44.45
step
  only completed(65)
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only completed(65)
  talk The Defias Traitor##467
  accept The Defias Brotherhood##155 |goto Westfall 55.68,47.5
step
  talk Magistrate Solomon##344
  accept Messenger to Darkshire##145 |goto Redridge Mountains 24.9,44.45
step
  only completed(65)
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  talk Lord Ello Ebonlocke##263
  turnin Messenger to Darkshire##145 |goto Duskwood 71.93,46.42 |tip {turninat}Duskwood
step
  note {travel}Stormwind City
  goto Stormwind City 56.31,53.99
]])
