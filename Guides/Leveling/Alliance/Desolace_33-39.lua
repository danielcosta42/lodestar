-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Desolace (33-39)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Dustwallow Marsh (35-38)",
}, [[
step
  talk Smeed Scrabblescrew##11596
  accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  talk Smeed Scrabblescrew##11596
  turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  talk Cork Gizelton##11625
  accept Bodyguard for Hire##5821 |goto Desolace 66.54,37.51
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
  talk Captain Pentigast##5396
  accept Strange Alliance##1382 |goto Desolace 66.66,10.93
step
  talk Captain Pentigast##5396
  accept Brutal Politics##1385 |goto Desolace 66.66,10.93
step
  only completed(1453)
  note Bring 10 Hatefury Claws, and 10 Hatefury Horns to Kreldig Ungor in Desolace.
  collect 10 Hatefury Claw##6246 |q 1458 |goto Desolace 73.55,19.11 |tip {dropsfrom}Hatefury Rogue, Hatefury Trickster, Hatefury Felsworn
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1458 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1459 |goto Desolace 66.2,9.63
step
  talk Uthek the Wise##5397
  turnin Strange Alliance##1382 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
step
  talk Smeed Scrabblescrew##11596
  turnin Bodyguard for Hire##5821 |goto Desolace 60.86,61.86
step
  talk Warug##5398
  turnin Brutal Politics##1385 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Assault on the Kolkar##1386 |goto Desolace 74.97,68.16
step
  note Maintain your reputation with the Gelkis, and bring 10 Crude Charms to Uthek the Wise in the Gelkis Village in Desolace.
  collect 10 Crude Charm##6079 |q 1384 |goto Desolace 69.35,46.87 |tip {dropsfrom}Kolkar Centaur, Kolkar Scout, Kolkar Mauler
step
  note Maintain your reputation with the Magram. Kill 12 Kolkar Centaurs, 12 Kolkar Scouts and 6 Kolkar Maulers, then return to Warug in the Magram Village in Desolace.
  kill Kolkar Centaur##4632 |q 1386 |goto Desolace 69.35,46.87
step
  note Bring 15 Centaur Ears to Corporal Melkins at Nijel's Point in Desolace.
  collect 15 Centaur Ear##6067 |q 1387 |goto Desolace 69.35,46.87 |tip {dropsfrom}Kolkar Centaur, Kolkar Scout, Kolkar Mauler
step
  turnin Vahlarriel's Search##1437 |goto Desolace 56.52,17.84
step
  click Malem Chest##50961
  accept Vahlarriel's Search##1465 |goto Desolace 56.52,17.84
step
  only completed(1453)
  note Bring 7 vials of Scorpashi Venom and 3 Aged Kodo Hides to Kreldig Ungor in Desolace.
  collect 7 Scorpashi Venom##6248 |q 1459 |goto Desolace 65.46,27.9 |tip {dropsfrom}Scorpashi Snapper, Scorpashi Lasher, Scorpashi Venomlash
step
  note Get the Sceptre of Light and then return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Sceptre of Light##15750 |q 5741 |goto Desolace 55.17,30.15 |tip {dropsfrom}Burning Blade Seer
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  click Rackmore's Log##177787
  accept Claim Rackmore's Treasure!##6161 |goto Desolace 36.07,30.41
step
  talk Corporal Melkins##5752
  turnin Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.2,9.63
step
  talk Vahlarriel Demonslayer##5642
  turnin Vahlarriel's Search##1465 |goto Desolace 66.44,11.82
step
  talk Vahlarriel Demonslayer##5642
  accept Vahlarriel's Search##1438 |goto Desolace 66.44,11.82
step
  talk Uthek the Wise##5397
  turnin Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  note Find Rackmore's Silver Key. Find Rackmore's Golden Key. Find and open Rackmore's Chest.
  collect Rackmore's Silver Key##15878 |q 6161 |goto Desolace 24.7,78.72 |tip {dropsfrom}Drysnap Crawler, Drysnap Pincer
step
  talk Warug##5398
  turnin Assault on the Kolkar##1386 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Broken Tears##1369 |goto Desolace 74.97,68.16
step
  note Bring 6 bags of Crudely Dried Meat to Uthek the Wise in the Gelkis Village.
  collect 6 Crudely Dried Meat##6069 |q 1370 |goto Desolace 72.43,78.51 |tip {dropsfrom}Sack of Meat
step
  talk Dalinda Malem##5644
  turnin Vahlarriel's Search##1438 |goto Desolace 54.86,26.13
step
  talk Dalinda Malem##5644
  accept Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
  note Find Tyranis Malem in Desolace.
  collect Tyranis' Pendant##6767 |q 1439 |goto Desolace 53.01,29.08 |tip {dropsfrom}Tyranis Malem, Corrupt Tyranis Malem
step
  talk Dalinda Malem##5644
  turnin Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
  talk Dalinda Malem##5644
  accept Return to Vahlarriel##1440 |goto Desolace 54.86,26.13
step
  turnin Claim Rackmore's Treasure!##6161 |goto Desolace 30,8.71
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  note Get the Book of the Ancients and return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Book of the Ancients##15803 |q 6027 |goto Desolace 28.24,6.67 |tip {dropsfrom}Lord Kragaru
step
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Vahlarriel Demonslayer##5642
  turnin Return to Vahlarriel##1440 |goto Desolace 66.44,11.82
step
  talk Uthek the Wise##5397
  turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  talk Rigger Gizelton##11626
  accept Gizelton Caravan##5943 |goto Desolace 45.4,75.29
step
  note Maintain your reputation with the Magram, and bring 3 Broken Tears to Warug in the Magram Village.
  collect 3 Broken Tears##6083 |q 1369 |goto Desolace 39.65,93.3 |tip {dropsfrom}Tear of Theradras
step
  talk Smeed Scrabblescrew##11596
  turnin Gizelton Caravan##5943 |goto Desolace 60.86,61.86
step
  talk Warug##5398
  turnin Broken Tears##1369 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Gizmo for Warug##1371 |goto Desolace 74.97,68.16
step
  note Maintain your reputation with the Magram, and bring an Advanced Target Dummy to Warug in the Magram Village in Desolace.
  collect Advanced Target Dummy##4392 |q 1371 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  turnin Gizmo for Warug##1371 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  talk Bibbly F'utzbuckle##11438
  accept Bone Collector##5501 |goto Desolace 62.33,38.99
step
  talk Melizza Brimbuzzle##12277
  accept Get Me Out of Here!##6132 |goto Desolace 33.95,53.5
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1454 |goto Desolace 66.2,9.63
step
  note Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
  kill Undead Ravager##11561 |q 261 |goto Desolace 64.24,90.37
step
  note Maintain your reputation with the Magram, and bring the Head of Khan Shaka to Warug in the Magram Village in Desolace.
  collect Khan Shaka's Head##6073 |q 1375 |goto Desolace 40.49,95.49 |tip {dropsfrom}Khan Shaka
step
  talk Hornizz Brimbuzzle##6019
  turnin Get Me Out of Here!##6132 |goto Desolace 47.83,61.83
step
  talk Hornizz Brimbuzzle##6019
  accept Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  note Bring 10 Kodo Bones from the Kodo Graveyard to Bibbly F'utzbuckle at Kormek's Hut.
  collect 10 Kodo Bone##13703 |q 5501 |goto Desolace 53.26,61.24 |tip {dropsfrom}Kodo Bones
step
  talk Warug##5398
  turnin Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  talk Bibbly F'utzbuckle##11438
  turnin Bone Collector##5501 |goto Desolace 62.33,38.99
step
  only completed(1453)
  turnin The Karnitol Shipwreck##1454 |goto Desolace 36.11,30.45
step
  only completed(1453)
  click Karnitol's Chest##35251
  accept The Karnitol Shipwreck##1455 |goto Desolace 36.11,30.45
step
  talk Brother Anton##1182
  turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin The Karnitol Shipwreck##1455 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1456 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1466 |goto Desolace 66.2,9.63
step
  note Bring 8 Ghost-o-plasms and the Crate of Ghost Magnets to Hornizz Brimbuzzle in Desolace.
  collect 8 Ghost-o-plasm##15849 |q 6134 |goto Desolace 64.18,91.63 |tip {dropsfrom}Magrami Spectre
step
  talk Hornizz Brimbuzzle##6019
  turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  only completed(1453)
  note Bring 10 Felhound Brains, 10 Nether Wings, and 10 vials of Doomwarder Blood to Kreldig Ungor in Desolace.
  collect 10 Felhound Brain##6250 |q 1466 |goto Desolace 52.91,68.14 |tip {dropsfrom}Mana Eater, Mage Hunter, Ley Hunter
step
  only completed(1453)
  note Find Karnitol's Satchel and return it to Kreldig Ungor in Desolace.
  collect Karnitol's Satchel##6245 |q 1456 |goto Desolace 28.58,11.06 |tip {dropsfrom}Slitherblade Tidehunter, Slitherblade Sea Witch
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin The Karnitol Shipwreck##1456 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1466 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1457 |goto Desolace 66.2,9.63
step
  only completed(1453)
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1467 |goto Desolace 66.2,9.63
step
  talk Warug##5398
  accept Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  note Maintain your Magram reputation, and bring the Maraudine Key Fragment to Warug in the Magram Village in Desolace.
  kill Khan Hratha##5402 |goto Desolace 29.55,52 |elite
  collect Maraudine Key Fragment##6077 |q 1381 |goto Desolace 29.55,52
step
  talk Warug##5398
  turnin Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  talk Centaur Pariah##13717
  accept The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  note Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
  collect Amulet of Union##17758 |q 7067 |goto Desolace 50.42,86.65
step
  talk Centaur Pariah##13717
  turnin The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  only completed(1453)
  talk Roetten Stonehammer##5637
  turnin The Karnitol Shipwreck##1457 |goto Ironforge 69.95,21.26 |tip {turninat}Ironforge
step
  only completed(1453)
  talk Roetten Stonehammer##5637
  turnin Reagents for Reclaimers Inc.##1467 |goto Ironforge 69.95,21.26 |tip {turninat}Ironforge
step
  note {travel}Dustwallow Marsh
  goto Dustwallow Marsh 66.46,45.15
]])
