-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Desolace (33-42)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Dustwallow Marsh (35-40)",
}, [[
step
  note {fp}Baritanas Skyriver
  goto Desolace 64.66,10.54 |tip {vendor}
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  talk Captain Pentigast##5396
  accept Strange Alliance##1382 |goto Desolace 66.66,10.93
step
  talk Captain Pentigast##5396
  accept Brutal Politics##1385 |goto Desolace 66.66,10.93
step
  talk Corporal Melkins##5752
  accept Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
  talk Vahlarriel Demonslayer##5642
  accept Vahlarriel's Search##1437 |goto Desolace 66.44,11.82
step
  talk Vahlarriel Demonslayer##5642
  accept Vahlarriel's Search##1438 |goto Desolace 66.44,11.82
step
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1454 |goto Desolace 66.2,9.63
step
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1456 |goto Desolace 66.2,9.63
step
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1458 |goto Desolace 66.2,9.63
step
  talk Talendria##11715
  accept Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
step
  talk Keeper Marandis##13698
  accept Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  turnin Vahlarriel's Search##1437 |goto Desolace 56.52,17.84
step
  talk Dalinda Malem##5644
  turnin Vahlarriel's Search##1438 |goto Desolace 54.86,26.13
step
  talk Dalinda Malem##5644
  accept Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
  talk Bibbly F'utzbuckle##11438
  accept Bone Collector##5501 |goto Desolace 62.33,38.99
step
  talk Willow##13656
  accept Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Smeed Scrabblescrew##11596
  accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  talk Hornizz Brimbuzzle##6019
  accept Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  talk Cavindra##13697
  accept Legends of Maraudon##7044 |goto Desolace 32.1,63.96
step
  talk Uthek the Wise##5397
  turnin Strange Alliance##1382 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
step
  talk Centaur Pariah##13717
  accept The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  note Destroy 30 Undead Ravagers, then return to Brother Anton at Nijel's Point.
  kill Undead Ravager##11561 |q 261 |goto Desolace 63.97,90.0
step
  talk Warug##5398
  turnin Brutal Politics##1385 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Assault on the Kolkar##1386 |goto Desolace 74.97,68.16
step
  turnin The Karnitol Shipwreck##1454 |goto Desolace 36.11,30.45
step
  talk Azore Aldamort##11863
  accept Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  note Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
  kill Princess Theradras##12201 |q 7065 |goto Maraudon - Dungeon -1,-1
step
  talk Talendria##11715
  turnin Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
step
  talk Brother Anton##1182
  turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
  talk Keeper Marandis##13698
  turnin Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  talk Kreldig Ungor##5638
  turnin The Karnitol Shipwreck##1456 |goto Desolace 66.2,9.63
step
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1458 |goto Desolace 66.2,9.63
step
  talk Corporal Melkins##5752
  turnin Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
  talk Brother Anton##1182
  accept Down the Scarlet Path##1052 |goto Desolace 66.52,7.91
step
  talk Kreldig Ungor##5638
  accept The Karnitol Shipwreck##1457 |goto Desolace 66.2,9.63
step
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1459 |goto Desolace 66.2,9.63
step
  talk Dalinda Malem##5644
  turnin Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
  talk Willow##13656
  turnin Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Bibbly F'utzbuckle##11438
  turnin Bone Collector##5501 |goto Desolace 62.33,38.99
step
  note Maintain your reputation with the Magram. Kill 12 Kolkar Centaurs, 12 Kolkar Scouts and 6 Kolkar Maulers, then return to Warug in the Magram Village in Desolace.
  kill Kolkar Centaur##4632 |q 1386 |goto Desolace 69.23,46.87
step
  talk Smeed Scrabblescrew##11596
  turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  talk Raleigh the Devout##3980
  turnin Down the Scarlet Path##1052 |goto Hillsbrad Foothills 51.47,58.35 |tip {turninat}Hillsbrad Foothills
step
  talk Hornizz Brimbuzzle##6019
  turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  talk Uthek the Wise##5397
  turnin Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  talk Centaur Pariah##13717
  turnin The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  talk Warug##5398
  turnin Assault on the Kolkar##1386 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Broken Tears##1369 |goto Desolace 74.97,68.16
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Roetten Stonehammer##5637
  turnin The Karnitol Shipwreck##1457 |goto Ironforge 69.95,21.26 |tip {turninat}Ironforge
step
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.2,9.63
step
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1466 |goto Desolace 66.2,9.63
step
  talk Uthek the Wise##5397
  turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Ongeku##1373 |goto Desolace 36.22,79.25
step
  talk Warug##5398
  turnin Broken Tears##1369 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Gizmo for Warug##1371 |goto Desolace 74.97,68.16
step
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Kreldig Ungor##5638
  turnin Reagents for Reclaimers Inc.##1466 |goto Desolace 66.2,9.63
step
  talk Kreldig Ungor##5638
  accept Reagents for Reclaimers Inc.##1467 |goto Desolace 66.2,9.63
step
  talk Uthek the Wise##5397
  turnin Ongeku##1373 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Khan Jehn##1374 |goto Desolace 36.22,79.25
step
  talk Warug##5398
  turnin Gizmo for Warug##1371 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  talk Roetten Stonehammer##5637
  turnin Reagents for Reclaimers Inc.##1467 |goto Ironforge 69.95,21.26 |tip {turninat}Ironforge
step
  talk Uthek the Wise##5397
  turnin Khan Jehn##1374 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Khan Hratha##1380 |goto Desolace 36.22,79.25
step
  talk Warug##5398
  turnin Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  talk Uthek the Wise##5397
  turnin Khan Hratha##1380 |goto Desolace 36.22,79.25
step
  talk Warug##5398
  turnin Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  talk Celebras the Redeemed##13716
  turnin Legends of Maraudon##7044
step
  note {travel}Dustwallow Marsh
  goto Dustwallow Marsh 55.44,26.27
]])
