-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Desolace (33-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Desolace (42-45)",
	rev = "ad291874",
}, [[
step
  ding 32
step
  talk Azore Aldamort##11863
  accept Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  note {fp}Baritanas Skyriver
  goto Desolace 64.66,10.54 |tip {vendor}
step
  talk Corporal Melkins##5752
  accept Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
  talk Vahlarriel Demonslayer##5642
  accept Vahlarriel's Search##1437 |goto Desolace 66.44,11.82
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1458 |goto Desolace 66.2,9.63
step
  note Find and search Tyranis and Dalinda Malem's wagon in Desolace.
  turnin Vahlarriel's Search##1437 |goto Desolace 56.52,17.84
step
  click Malem Chest##50961
  accept Vahlarriel's Search##1465 |goto Desolace 56.52,17.84
step
  note Get the Sceptre of Light and then return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Sceptre of Light##15750 |q 5741 |goto Desolace 55.17,30.15 |tip {dropsfrom}Burning Blade Seer
step
  only completed(1453)
  note Bring 10 Hatefury Claws, and 10 Hatefury Horns to Kreldig Ungor in Desolace.
  collect 10 Hatefury Claw##6246 |q 1458 |goto Desolace 73.55,19.11 |tip {dropsfrom}Hatefury Rogue, Hatefury Trickster, Hatefury Felsworn
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1458 |goto Desolace 66.2,9.63
step
  note Return the Malem Pendant to Vahlarriel Demonslayer in Desolace.
  talk Vahlarriel Demonslayer##5642
  turnin Vahlarriel's Search##1465 |goto Desolace 66.44,11.82
step
  talk Vahlarriel Demonslayer##5642
  accept Vahlarriel's Search##1438 |goto Desolace 66.44,11.82
step
  talk Vahlarriel Demonslayer##5642
  accept Vahlarriel's Vengeance##97284 |goto Desolace 66.44,11.82
step
  talk Captain Pentigast##5396
  accept Strange Alliance##1382 |goto Desolace 66.66,10.93
step
  talk Captain Pentigast##5396
  accept Brutal Politics##1385 |goto Desolace 66.66,10.93
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1459 |goto Desolace 66.2,9.63
step
  only completed(1453)
  note Bring 7 vials of Scorpashi Venom and 3 Aged Kodo Hides to Kreldig Ungor in Desolace.
  collect Scorpashi Venom##6248 |q 1459/1 |goto Desolace 65.46,27.9 |tip {dropsfrom}Scorpashi Snapper, Scorpashi Lasher, Scorpashi Venomlash
  collect 3 Aged Kodo Hide##6249 |q 1459 |goto Desolace 51.95,56.1 |tip {dropsfrom}Aged Kodo
step
  note Find Dalinda Malem in Desolace.
  talk Dalinda Malem##5644
  turnin Vahlarriel's Search##1438 |goto Desolace 54.86,26.13
step
  talk Dalinda Malem##5644
  accept Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
  note Find Tyranis Malem in Desolace.
  collect Tyranis' Pendant##6767 |q 1439 |goto Desolace 53.01,29.08 |tip {dropsfrom}Tyranis Malem
step
  note Slay Burning Blade orcs at Thunder Axe Fortress in the Desolace, then return to Vahlarriel Demonslayer at Nijel's Point.
  kill Burning Blade Felsworn##4666 |q 97284/4 |goto Desolace 54.8,27.79
  kill Burning Blade Adept##4665 |q 97284/3 |goto Desolace 54.99,27.13
  kill Burning Blade Augur##4663 |q 97284/1 |goto Desolace 55.95,27.4
  kill Burning Blade Reaver##4664 |q 97284 |goto Desolace 56.09,29.16
step
  talk Dalinda Malem##5644
  turnin Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
  talk Dalinda Malem##5644
  accept Return to Vahlarriel##1440 |goto Desolace 54.86,26.13
step
  note Escort Dalinda Malem from Thunder Axe Fortress and then return to Vahlarriel Demonslayer in Desolace.
  goto Desolace 58.27,30.91 |tip Rescue Dalinda Malem
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk Cork Gizelton##11625
  accept Bodyguard for Hire##5821 |goto Desolace 66.54,37.51
step
  note Escort the Gizelton Caravan past the Kolkar Centaur village. Talk with Smeed at Scrabblescrew's Camp for your reward.
  goto Desolace 67.17,56.62 |tip Escort Gizelton Caravan past Kolkar Centaur Village
step
  talk Smeed Scrabblescrew##11596
  turnin Bodyguard for Hire##5821 |goto Desolace 60.86,61.86
step
  talk Smeed Scrabblescrew##11596
  accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  note Bring five Tamed Kodos and the Kodo Kombobulator back to Smeed Scrabblescrew at Scrabblescrew's Camp.
  talk Smeed Scrabblescrew##11596
  turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  note Gain a Friendly reputation with the Magram, then speak with Warug.
  talk Warug##5398
  turnin Brutal Politics##1385 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Assault on the Kolkar##1386 |goto Desolace 74.97,68.16
step
  note Maintain your reputation with the Magram. Kill 12 Kolkar Centaurs, 12 Kolkar Scouts and 6 Kolkar Maulers, then return to Warug in the Magram Village in Desolace.
  kill Kolkar Centaur##4632 |q 1386/1 |goto Desolace 69.35,46.87
  kill Kolkar Scout##4633 |q 1386/2 |goto Desolace 68.62,45.66
  kill Kolkar Mauler##4634 |q 1386 |goto Desolace 72.26,44.71
step
  note Bring 15 Centaur Ears to Corporal Melkins at Nijel's Point in Desolace.
  collect 15 Centaur Ear##6067 |q 1387 |goto Desolace 69.35,46.87 |tip {dropsfrom}Kolkar Centaur, Kolkar Scout, Kolkar Mauler
step
  talk Corporal Melkins##5752
  turnin Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
  talk Vahlarriel Demonslayer##5642
  turnin Return to Vahlarriel##1440 |goto Desolace 66.44,11.82
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.2,9.63
step
  talk Vahlarriel Demonslayer##5642
  turnin Vahlarriel's Vengeance##97284 |goto Desolace 66.44,11.82
step
  click Rackmore's Log##177787
  accept Claim Rackmore's Treasure!##6161 |goto Desolace 36.07,30.41
step
  note Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
  collect Rackmore's Golden Key##15881 |q 6161/2 |goto Desolace 36.25,23.14 |tip {dropsfrom}Slitherblade Naga, Slitherblade Sorceress, Slitherblade Warrior
  collect Rackmore's Silver Key##15878 |q 6161 |goto Desolace 24.7,78.72 |tip {dropsfrom}Drysnap Crawler, Drysnap Pincer
step
  note Gain a Friendly reputation with the Gelkis, then speak with Uthek the Wise.
  talk Uthek the Wise##5397
  turnin Strange Alliance##1382 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
step
  talk Warug##5398
  turnin Assault on the Kolkar##1386 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Broken Tears##1369 |goto Desolace 74.97,68.16
step
  only completed(1371)
  talk Warug##5398
  accept Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  note Maintain your reputation with the Gelkis, and bring 10 Crude Charms to Uthek the Wise in the Gelkis Village in Desolace.
  collect 10 Crude Charm##6079 |q 1384 |goto Desolace 69.35,46.87 |tip {dropsfrom}Kolkar Centaur, Kolkar Scout, Kolkar Mauler
step
  talk Uthek the Wise##5397
  turnin Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  note Maintain your reputation with the Magram, and bring 3 Broken Tears to Warug in the Magram Village.
  collect 3 Broken Tears##6083 |q 1369 |goto Desolace 39.65,93.3 |tip {dropsfrom}Tear of Theradras
step
  only completed(1371)
  note Maintain your reputation with the Magram, and bring the Head of Khan Shaka to Warug in the Magram Village in Desolace.
  collect Khan Shaka's Head##6073 |q 1375 |goto Desolace 40.49,95.49 |tip {dropsfrom}Khan Shaka
step
  note Bring 6 bags of Crudely Dried Meat to Uthek the Wise in the Gelkis Village.
  collect 6 Crudely Dried Meat##6069 |q 1370 |goto Desolace 72.43,78.51 |tip {dropsfrom}Sack of Meat
step
  talk Warug##5398
  turnin Broken Tears##1369 |goto Desolace 74.97,68.16
step
  only completed(1371)
  talk Warug##5398
  turnin Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  talk Rigger Gizelton##11626
  accept Gizelton Caravan##5943 |goto Desolace 45.4,75.29
step
  note Escort the Gizelton Caravan through Mannoroc Coven. Talk with Smeed at Scrabblescrew's Camp for your reward.
  goto Desolace 55.69,67.79 |tip Escort Gizelton Caravan past Mannoroc Coven
step
  talk Uthek the Wise##5397
  turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  only completed(93041) level>=35
  talk Uthek the Wise##5397
  accept A Cleansing Cry##93044 |goto Desolace 36.22,79.25
step
  only completed(93041) haveq(93044)
  note Maintain your reputation with the Gelkis, and bring Tears of Theradras back to Uthek the Wise in Gelkis Village.
  talk Uthek the Wise##5397
  turnin A Cleansing Cry##93044 |goto Desolace 36.22,79.25
step
  talk Smeed Scrabblescrew##11596
  turnin Gizelton Caravan##5943 |goto Desolace 60.86,61.86
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  turnin Claim Rackmore's Treasure!##6161 |goto Desolace 30,8.71
step
  note Get the Book of the Ancients and return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Book of the Ancients##15803 |q 6027 |goto Desolace 28.24,6.67 |tip {dropsfrom}Lord Kragaru
step
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Bibbly F'utzbuckle##11438
  accept Bone Collector##5501 |goto Desolace 62.33,38.99
step
  only level>=34
  talk Hornizz Brimbuzzle##6019
  accept Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  note Bring 10 Kodo Bones from the Kodo Graveyard to Bibbly F'utzbuckle at Kormek's Hut.
  collect 10 Kodo Bone##13703 |q 5501 |goto Desolace 53.26,61.24 |tip {dropsfrom}Kodo Bones
step
  only level>=34
  talk Melizza Brimbuzzle##12277
  accept Get Me Out of Here!##6132 |goto Desolace 33.95,53.5
step
  only haveq(6132)
  note Escort Melizza Brimbuzzle, then speak with Hornizz Brimbuzzle at the Kodo Graveyard in Desolace.
  goto Desolace 40.15,61.58 |tip Melizza Brimbuzzle escorted to safety
step
  only haveq(6132)
  talk Hornizz Brimbuzzle##6019
  turnin Get Me Out of Here!##6132 |goto Desolace 47.83,61.83
step
  talk Bibbly F'utzbuckle##11438
  turnin Bone Collector##5501 |goto Desolace 62.33,38.99
step
  only level>=34
  talk Brother Anton##1182
  accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1454 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1466 |goto Desolace 66.2,9.63
step
  only not completed(93225) not haveq(93225)
  talk Captain Pentigast##5396
  accept Carved Centaur Totems##93224 |goto Desolace 66.66,10.93
step
  only completed(1453)
  note Find Karnitol's Chest in Desolace.
  turnin The Karnitol Shipwreck##1454 |goto Desolace 36.11,30.45
step
  only completed(1453)
  click Karnitol's Chest##35251
  accept The Karnitol Shipwreck##1455 |goto Desolace 36.11,30.45
step
  only completed(93464)
  talk Azore Aldamort##11863
  accept Notes on Draenethyst##93465 |goto Desolace 38.88,27.16
step
  only completed(1453)
  note Return to Kreldig Ungor in Desolace.
  talk Kreldig Ungor##5638
  turnin The Karnitol Shipwreck##1455 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1456 |goto Desolace 66.2,9.63
step
  only not completed(93225) not haveq(93225)
  note Acquire 5 Carved Centaur Totems by slaying centaur of any clan throughout Desolace, then return them to Captain Pentigast at Nijel's Point.
  collect 5 Carved Centaur Totem##254432 |q 93224 |goto Desolace 69.35,46.87 |tip {dropsfrom}Kolkar Centaur, Kolkar Scout, Kolkar Mauler
step
  only completed(92743)
  talk Warug##5398
  accept Valley of Bones##92841 |goto Desolace 74.97,68.16
step
  only completed(93464)
  note Take Gimashi's notes on Draenethyst, and bring them back to Azore Aldamort.
  collect Gimashi's Findings##258774 |q 93465 |goto Desolace 80.14,76.36 |tip {dropsfrom}Gimashi
step
  only completed(92743)
  note Improve your reputation with the Magram, and locate Orgrul near the Valley of Bones south of Magram Village.
  talk Orgrul##253136
  turnin Valley of Bones##92841 |goto Desolace 65.4,84.23
step
  only completed(92743)
  talk Orgrul##253136
  accept Outcast Necromancers##92846 |goto Desolace 65.4,84.23
step
  only haveq(261)
  note Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
  kill Undead Ravager##11561 |q 261 |goto Desolace 64.24,90.37
step
  only haveq(6134)
  note Bring 8 Ghost-o-plasms and the Crate of Ghost Magnets to Hornizz Brimbuzzle in Desolace.
  collect 8 Ghost-o-plasm##15849 |q 6134 |goto Desolace 64.18,91.63 |tip {dropsfrom}Magrami Spectre
step
  only completed(92743)
  note Maintain your reputation with the Magram, and slay Outcast Necromancers within the Valley of Bones.
  kill Outcast Necromancer##11559 |q 92846 |goto Desolace 63.87,90.46
step
  only completed(92743)
  talk Orgrul##253136
  turnin Outcast Necromancers##92846 |goto Desolace 65.4,84.23
step
  only completed(1453)
  note Bring 10 Felhound Brains, 10 Nether Wings, and 10 vials of Doomwarder Blood to Kreldig Ungor in Desolace.
  collect Doomwarder Blood##6252 |q 1466/3 |goto Desolace 51.79,83.52 |tip {dropsfrom}Doomwarder Captain, Lord Azrethoc, Kaskk
  collect 10 Nether Wing##6251 |q 1466/2 |goto Desolace 49.97,73.2 |tip {dropsfrom}Nether Maiden, Nether Sister, Nether Sorceress
  collect 10 Felhound Brain##6250 |q 1466 |goto Desolace 52.91,68.14 |tip {dropsfrom}Mana Eater, Mage Hunter, Ley Hunter
step
  only haveq(6134)
  talk Hornizz Brimbuzzle##6019
  turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  only completed(93464)
  talk Azore Aldamort##11863
  turnin Notes on Draenethyst##93465 |goto Desolace 38.88,27.16
step
  only completed(1453)
  note Find Karnitol's Satchel and return it to Kreldig Ungor in Desolace.
  collect Karnitol's Satchel##6245 |q 1456 |goto Desolace 28.58,11.06 |tip {dropsfrom}Slitherblade Tidehunter, Slitherblade Sea Witch
step
  only haveq(261)
  talk Brother Anton##1182
  turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin The Karnitol Shipwreck##1456 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1466 |goto Desolace 66.2,9.63
step
  only not completed(93225) not haveq(93225)
  talk Captain Pentigast##5396
  turnin Carved Centaur Totems##93224 |goto Desolace 66.66,10.93
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1457 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1467 |goto Desolace 66.2,9.63
step
  only completed(93546) level>=35
  talk Vindael##254717
  accept Tempered Expectations##96060 |goto Shen'dralas 42,79.02
step
  only completed(93546) haveq(96060)
  note Use the Phantasmal Blade to execute 8 wildlife in Shen'dralas, then return to Vindael at the temple.
  get Tempered Expectations |q 96060
step
  only completed(93546) haveq(96060)
  talk Vindael##254717
  turnin Tempered Expectations##96060 |goto Shen'dralas 42,79.02 |tip {turninat}Shen'dralas
step
  only NightElf not completed(97018) not completed(97170) not completed(97188) not completed(97194) not completed(97200) not completed(97203) not completed(97204) not completed(97205) not haveq(97018) not haveq(97170) not haveq(97188) not haveq(97194) not haveq(97200) not haveq(97203) not haveq(97204) not haveq(97205) level>=40
  talk Jartsam##4753
  accept Learning to Ride##97074 |goto Darnassus 38.69,15.84
step
  only NightElf not completed(97018) not completed(97170) not completed(97188) not completed(97194) not completed(97200) not completed(97203) not completed(97204) not completed(97205) not haveq(97018) not haveq(97170) not haveq(97188) not haveq(97194) not haveq(97200) not haveq(97203) not haveq(97204) not haveq(97205) haveq(97074)
  note Learn the Apprentice Riding skill from Jartsam.
  talk Lelanai##4730
  turnin Learning to Ride##97074 |goto Darnassus 38.28,15.36 |tip {turninat}Darnassus
step
  only NightElf not completed(96982) not completed(96989) not completed(96994) not completed(96996) not completed(96997) not completed(97017) not completed(97018) not completed(97045) not completed(97046) not completed(97170) not completed(97171) not completed(97188) not completed(97194) not completed(97200) not completed(97203) not completed(97204) not completed(97205) not completed(97446) not completed(98166) not completed(99326) not haveq(96982) not haveq(96989) not haveq(96994) not haveq(96996) not haveq(96997) not haveq(97017) not haveq(97018) not haveq(97045) not haveq(97046) not haveq(97170) not haveq(97171) not haveq(97188) not haveq(97194) not haveq(97200) not haveq(97203) not haveq(97204) not haveq(97205) not haveq(97446) not haveq(98166) not haveq(99326) completed(97074) level>=40
  talk Lelanai##4730
  accept Your First Feline Friend##95511 |goto Darnassus 38.28,15.36
step
  note {travel}Shen'dralas
  goto Shen'dralas 43.65,34.32
]])
