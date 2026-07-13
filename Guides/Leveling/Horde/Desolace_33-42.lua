-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Desolace (33-42)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Dustwallow Marsh (36-41)",
}, [[
step
  note {fp}Thalon
  goto Desolace 21.6,74.13 |tip {vendor}
step
  talk Felgur Twocuts##5395
  accept Khan Dez'hepah##1365 |goto Desolace 56.19,59.57
step
  talk Gurda Wildmane##5412
  accept Magram Alliance##1367 |goto Desolace 56.29,59.68
step
  talk Gurda Wildmane##5412
  accept Gelkis Alliance##1368 |goto Desolace 56.29,59.68
step
  talk Takata Steelblade##5641
  accept Alliance Relations##1433 |goto Desolace 52.57,54.39
step
  talk Takata Steelblade##5641
  accept Befouled by Satyr##1434 |goto Desolace 52.57,54.39
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1481 |goto Desolace 52.25,53.44
step
  talk Nataka Longhorn##11259
  accept Catch of the Day##5386 |goto Desolace 55.41,55.81
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
  talk Taiga Wisemane##11624
  accept Hand of Iruxos##5381 |goto Desolace 25.82,68.21
step
  talk Roon Wildmane##11877
  accept Hunting in Stranglethorn##5763 |goto Desolace 25.05,72.27
step
  talk Mai'Lahii##12031
  accept Clam Bait##6142 |goto Desolace 22.64,71.97
step
  talk Drulzegar Skraghook##12340
  accept Other Fish to Fry##6143 |goto Desolace 23.32,72.87
step
  talk Vark Battlescar##11823
  accept Vyletongue Corruption##7029 |goto Desolace 23.22,70.33
step
  talk Selendra##13699
  accept Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  talk Uthek the Wise##5397
  turnin Gelkis Alliance##1368 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  talk Centaur Pariah##13717
  accept The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  talk Warug##5398
  turnin Magram Alliance##1367 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Broken Tears##1369 |goto Desolace 74.97,68.16
step
  talk Bibbly F'utzbuckle##11438
  accept Bone Collector##5501 |goto Desolace 62.33,38.99
step
  talk Willow##13656
  accept Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  note Slay 7 Hatefury Rogues, 7 Hatefury Felsworn, 7 Hatefury Betrayers, and 7 Hatefury Hellcallers, and return to Takata Steelblade in Desolace.
  kill Hatefury Rogue##4670 |q 1434 |goto Desolace 74.45,18.85
step
  talk Hemet Nesingwary Jr.##715
  turnin Hunting in Stranglethorn##5763 |goto Stranglethorn Vale 35.66,10.81 |tip {turninat}Stranglethorn Vale
step
  talk Azore Aldamort##11863
  accept Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  note Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace.
  kill Princess Theradras##12201 |q 7064 |goto Maraudon - Dungeon -1,-1
step
  note Slay 7 Slitherblade Myrmidon, 7 Slitherblade Naga, and 5 Slitherblade Sorceresses, and then talk to Drulzegar at Shadowprey in Desolace.
  kill Slitherblade Myrmidon##4714 |q 6143 |goto Desolace 32.18,14.81
step
  talk Nataka Longhorn##11259
  turnin Catch of the Day##5386 |goto Desolace 55.41,55.81
step
  talk Maurin Bonesplitter##4498
  turnin Alliance Relations##1433 |goto Desolace 52.25,53.44
step
  talk Takata Steelblade##5641
  turnin Befouled by Satyr##1434 |goto Desolace 52.57,54.39
step
  talk Smeed Scrabblescrew##11596
  turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
  talk Maurin Bonesplitter##4498
  turnin The Corrupter##1481 |goto Desolace 52.25,53.44
step
  talk Felgur Twocuts##5395
  turnin Khan Dez'hepah##1365 |goto Desolace 56.19,59.57
step
  talk Felgur Twocuts##5395
  accept Centaur Bounty##1366 |goto Desolace 56.19,59.57
step
  talk Maurin Bonesplitter##4498
  accept The Burning of Spirits##1435 |goto Desolace 52.25,53.44
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1482 |goto Desolace 52.25,53.44
step
  talk Hornizz Brimbuzzle##6019
  turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
  talk Taiga Wisemane##11624
  turnin Hand of Iruxos##5381 |goto Desolace 25.82,68.21
step
  talk Selendra##13699
  turnin Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  talk Vark Battlescar##11823
  turnin Vyletongue Corruption##7029 |goto Desolace 23.22,70.33
step
  talk Mai'Lahii##12031
  turnin Clam Bait##6142 |goto Desolace 22.64,71.97
step
  talk Drulzegar Skraghook##12340
  turnin Other Fish to Fry##6143 |goto Desolace 23.32,72.87
step
  talk Taiga Wisemane##11624
  accept Portals of the Legion##5581 |goto Desolace 25.82,68.21
step
  talk Uthek the Wise##5397
  turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Ongeku##1373 |goto Desolace 36.22,79.25
step
  talk Centaur Pariah##13717
  turnin The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  talk Warug##5398
  turnin Broken Tears##1369 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Gizmo for Warug##1371 |goto Desolace 74.97,68.16
step
  talk Willow##13656
  turnin Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Bibbly F'utzbuckle##11438
  turnin Bone Collector##5501 |goto Desolace 62.33,38.99
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Maurin Bonesplitter##4498
  turnin The Burning of Spirits##1435 |goto Desolace 52.25,53.44
step
  talk Maurin Bonesplitter##4498
  turnin The Corrupter##1482 |goto Desolace 52.25,53.44
step
  talk Felgur Twocuts##5395
  turnin Centaur Bounty##1366 |goto Desolace 56.19,59.57
step
  talk Takata Steelblade##5641
  accept Alliance Relations##1436 |goto Desolace 52.57,54.39
step
  talk Maurin Bonesplitter##4498
  accept The Corrupter##1484 |goto Desolace 52.25,53.44
step
  talk Keldran##5640
  turnin Alliance Relations##1436 |goto Orgrimmar 22.56,52.63 |tip {turninat}Orgrimmar
step
  talk Taiga Wisemane##11624
  turnin Portals of the Legion##5581 |goto Desolace 25.82,68.21
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
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Takata Steelblade##5641
  turnin The Corrupter##1484 |goto Desolace 52.57,54.39
step
  talk Takata Steelblade##5641
  accept The Corrupter##1488 |goto Desolace 52.57,54.39
step
  talk Uthek the Wise##5397
  turnin Khan Jehn##1374 |goto Desolace 36.22,79.25
step
  talk Uthek the Wise##5397
  accept Khan Hratha##1380 |goto Desolace 36.22,79.25
step
  note Slay Lord Azrethoc and Jugkar Grim'rod and return to Takata Steelblade in Desolace.
  kill Lord Azrethoc##5760 |q 1488 |goto Desolace 56.95,75.74
step
  talk Warug##5398
  turnin Khan Shaka##1375 |goto Desolace 74.97,68.16
step
  talk Warug##5398
  accept Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  talk Takata Steelblade##5641
  turnin The Corrupter##1488 |goto Desolace 52.57,54.39
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
  goto Dustwallow Marsh 35.21,30.66
]])
