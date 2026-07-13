-- GERADO por gen_raidready.py — rota Biosparks/myro (spam de dungeon 60-70 raid ready).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Raid Ready - Boosted 60-70", {
	faction = "Alliance",
	range = {60, 70},
	author = "Lodestar (rota: Biosparks/myro)",
}, [[
step
  note {rrprep}
step
  note {rrportal}
  goto Hellfire Peninsula 88.4,50.1
step
  note {rrhearth}Honor Hold
  home Honor Hold
step
  note {rronlydg}
step
  note {section}The Blood Furnace
  goto Hellfire Peninsula 46.2,52.3
step
  run The Blood Furnace |dungeon The Blood Furnace |boss 17377 |runs 12
  |tip {rrspam}The Blood Furnace
step
  note {rrrepgoal}Honor Hold
step
  note {rrtoshatt}Allerian Stronghold
step
  home Shattrath City
step
  talk Haggard War Veteran##19684
  accept A'dal##10210 |goto Shattrath City 72.71,41.43
step
  talk A'dal##18481
  turnin A'dal##10210 |goto Shattrath City 53.99,44.75
step
  talk Khadgar##18166
  accept City of Light##10211 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  turnin City of Light##10211 |goto Shattrath City 54.75,44.32
step
  note {rraldor}
step
  note {section}The Slave Pens
  goto Zangarmarsh 50.0,39.6
step
  ding 65 |dungeon The Slave Pens |boss 17942 |runs 8
  |tip {rrspam}The Slave Pens
step
  note {section}Mana-Tombs
  goto Terokkar Forest 39.4,65.4
step
  ding 66 |dungeon Mana-Tombs |boss 18344 |runs 3
  |tip {rrspam}Mana-Tombs
step
  note {section}Sethekk Halls
  goto Terokkar Forest 39.4,65.4
step
  run Sethekk Halls |dungeon Sethekk Halls |boss 18473 |runs 8
  |tip {rrspam}Sethekk Halls
step
  note {rrshadowkey}
step
  note {rrkarahdr}
step
  note {rrtokara}Stormwind
step
  talk Archmage Alturus##17613
  accept Arcane Disturbances##9824 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Restless Activity##9825 |goto Deadwind Pass 47.28,75.21
step
  note Use the Violet Scrying Crystal near underground sources of water in the Master's Cellar, then return to Archmage Alturus.
  kill Underground Well Credit Marker##18161 |q 9824 |goto Deadwind Pass 53.2,90.22
step
  talk Archmage Alturus##17613
  turnin Arcane Disturbances##9824 |goto Deadwind Pass 47.28,75.21
step
  note Bring 10 Ghostly Essences to Archmage Alturus outside of Karazhan.
step
  talk Archmage Alturus##17613
  turnin Restless Activity##9825 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Contact from Dalaran##9826 |goto Deadwind Pass 47.28,75.21
step
  note {rrtoalterac}Southshore
step
  talk Archmage Cedric##18165
  turnin Contact from Dalaran##9826 |goto Alterac Mountains 15.61,54.58
step
  talk Archmage Cedric##18165
  accept Khadgar##9829 |goto Alterac Mountains 15.61,54.58
step
  home Shattrath City
step
  talk Khadgar##18166
  turnin Khadgar##9829 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  note {rrtocot}Stormwind
step
  talk Steward of Time##20142
  accept To The Master's Lair##10279 |goto Tanaris 66.02,49.7
step
  talk Andormu##20130
  turnin To The Master's Lair##10279 |goto Tanaris 58.43,54.28
step
  talk Andormu##20130
  accept The Caverns of Time##10277 |goto Tanaris 58.43,54.28
step
  talk Andormu##20130
  turnin The Caverns of Time##10277 |goto Tanaris 58.43,54.28
step
  talk Andormu##20130
  accept Old Hillsbrad##10282 |goto Tanaris 58.43,54.28
step
  note {rroh}
step
  talk Erozion##18723
  turnin Old Hillsbrad##10282 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Erozion##18723
  accept Taretha's Diversion##10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  note Travel to Durnholde Keep and set 5 incendiary charges at the barrels inside each internment lodge (Pack of Incendiary Bombs from Erozion).
  kill Hillsbrad Internment Lodge Quest Trigger##20155 |q 10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Thrall##17876
  turnin Taretha's Diversion##10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Thrall##17876
  accept Escape from Durnholde##10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  note Follow Thrall out of Durnholde Keep and help him free Taretha and fulfill his destiny.
  kill Thrall Quest Trigger##20156 |q 10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Erozion##18723
  turnin Escape from Durnholde##10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Erozion##18723
  accept Return to Andormu##10285 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Andormu##20130
  turnin Return to Andormu##10285 |goto Tanaris 58.43,54.28
step
  talk Andormu##19932
  accept The Black Morass##10296 |goto Tanaris 57.62,59.01
step
  note {section}The Black Morass
  goto Tanaris 63.0,49.0
step
  run The Black Morass |dungeon The Black Morass |boss 17881 |runs 7
  |tip {rrspam}The Black Morass
step
  talk Sa'at##20201
  turnin The Black Morass##10296 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  accept The Opening of the Dark Portal##10297 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  turnin The Opening of the Dark Portal##10297 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  accept Hero of the Brood##10298 |goto The Black Morass - Dungeon -1,-1
step
  talk Andormu##20130
  turnin Hero of the Brood##10298 |goto Tanaris 58.43,54.28
step
  home Shattrath City
step
  note {section}Shadow Labyrinth
  goto Terokkar Forest 39.4,65.4
step
  run Shadow Labyrinth |dungeon Shadow Labyrinth |boss 18708 |runs 6
  |tip {rrspam}Shadow Labyrinth
step
  home Shattrath City
step
  note Khadgar wants you to enter the Shadow Labyrinth at Auchindoun and retrieve the First Key Fragment from an Arcane Container hidden there.
step
  talk Khadgar##18166
  turnin Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  note {section}The Steamvault
  goto Zangarmarsh 50.0,39.6
step
  run The Steamvault |dungeon The Steamvault |boss 17798 |runs 7
  |tip {rrspam}The Steamvault
step
  note {rrshkey}
step
  accept Entry Into the Citadel##10754
step
  note {rrtohold}Honor Hold
step
  talk Force Commander Danath Trollbane##16819
  turnin Entry Into the Citadel##10754 |goto Hellfire Peninsula 56.64,66.7
step
  talk Force Commander Danath Trollbane##16819
  accept Grand Master Dumphry##10762 |goto Hellfire Peninsula 56.64,66.7
step
  talk Dumphry##21209
  turnin Grand Master Dumphry##10762 |goto Hellfire Peninsula 51.12,60.3
step
  talk Dumphry##21209
  accept Dumphry's Request##10763 |goto Hellfire Peninsula 51.12,60.3
step
  note Bring 4 Fel Iron Bars, 2 Arcane Dust and 4 Motes of Fire to Dumphry at Honor Hold in Hellfire Peninsula.
step
  talk Dumphry##21209
  turnin Dumphry's Request##10763 |goto Hellfire Peninsula 51.12,60.3
step
  talk Dumphry##21209
  accept Hotter than Hell##10764 |goto Hellfire Peninsula 51.12,60.3
step
  note Destroy a Fel Reaver in Hellfire Peninsula and plunge the Unfired Key Mold into its remains. Bring the Charred Key Mold to Dumphry in Honor Hold.
step
  talk Dumphry##21209
  turnin Hotter than Hell##10764 |goto Hellfire Peninsula 51.12,60.3
step
  note {section}The Shattered Halls
  goto Hellfire Peninsula 46.0,52.0
step
  run The Shattered Halls |dungeon The Shattered Halls |boss 16808 |runs 8
  |tip {rrspam}The Shattered Halls
step
  note {rrcheck1}
step
  note {rrflytrain}Wildhammer Stronghold
step
  talk Anchorite Karja##19467
  accept Assisting the Consortium##10263 |goto Netherstorm 32.04,64.18
step
  talk Spymaster Thalodien##19468
  accept Assisting the Consortium##10264 |goto Netherstorm 32.0,64.07
step
  talk Nether-Stalker Khay'ji##19880
  turnin Assisting the Consortium##10263 |goto Netherstorm 32.44,64.21
step
  talk Nether-Stalker Khay'ji##19880
  turnin Assisting the Consortium##10264 |goto Netherstorm 32.44,64.21
step
  talk Nether-Stalker Khay'ji##19880
  accept Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  note Obtain an Arklon Crystal Artifact and return it to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
step
  talk Nether-Stalker Khay'ji##19880
  turnin Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Nether-Stalker Khay'ji##19880
  accept A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  note Collect 10 Zaxxis Insignias and return them to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
step
  talk Nether-Stalker Khay'ji##19880
  turnin A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Nether-Stalker Khay'ji##19880
  accept Warp-Raider Nesaad##10205 |goto Netherstorm 32.44,64.21
step
  note Kill Warp-Raider Nesaad and then return to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  kill Warp-Raider Nesaad##19641 |q 10205 |goto Netherstorm 28.36,79.45
step
  talk Nether-Stalker Khay'ji##19880
  turnin Warp-Raider Nesaad##10205 |goto Netherstorm 32.44,64.21
step
  talk Nether-Stalker Khay'ji##19880
  accept Request for Assistance##10266 |goto Netherstorm 32.44,64.21
step
  talk Gahruj##20066
  turnin Request for Assistance##10266 |goto Netherstorm 46.67,56.95
step
  talk Gahruj##20066
  accept Rightful Repossession##10267 |goto Netherstorm 46.67,56.95
step
  note Collect 10 Boxes of Surveying Equipment and return them to Gahruj at the Midrealm Post inside Eco-Dome Midrealm in the Netherstorm.
step
  talk Gahruj##20066
  turnin Rightful Repossession##10267 |goto Netherstorm 46.67,56.95
step
  talk Gahruj##20066
  accept An Audience with the Prince##10268 |goto Netherstorm 46.67,56.95
step
  talk Image of Nexus-Prince Haramad##20084
  turnin An Audience with the Prince##10268 |goto Netherstorm 45.87,35.96
step
  talk Image of Nexus-Prince Haramad##20084
  accept Triangulation Point One##10269 |goto Netherstorm 45.87,35.96
step
  talk Dealer Hazzin##20092
  turnin Triangulation Point One##10269 |goto Netherstorm 58.35,31.26
step
  talk Dealer Hazzin##20092
  accept Triangulation Point Two##10275 |goto Netherstorm 58.35,31.26
step
  talk Wind Trader Tuluman##20112
  turnin Triangulation Point Two##10275 |goto Netherstorm 34.62,37.95
step
  talk Wind Trader Tuluman##20112
  accept Full Triangle##10276 |goto Netherstorm 34.62,37.95
step
  note Recover the Ata'mal Crystal and deliver it to the Image of Nexus-Prince Haramad at the Stormspire in the Netherstorm.
step
  talk Image of Nexus-Prince Haramad##20084
  turnin Full Triangle##10276 |goto Netherstorm 45.87,35.96
step
  talk Image of Nexus-Prince Haramad##20084
  accept Special Delivery to Shattrath City##10280 |goto Netherstorm 45.87,35.96
step
  talk A'dal##18481
  turnin Special Delivery to Shattrath City##10280 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept How to Break Into the Arcatraz##10704 |goto Shattrath City 53.99,44.75
step
  note A'dal has tasked you with the recovery of the Top and Bottom Shards of the Arcatraz Key. Return them to him, and he will fashion them into the Key to the Arcatraz for you.
step
  talk A'dal##18481
  turnin How to Break Into the Arcatraz##10704 |goto Shattrath City 53.99,44.75
step
  note {section}The Botanica
  goto Netherstorm 70.3,68.5
step
  run The Botanica |dungeon The Botanica |boss 17977 |runs 1
  |tip {rrspam}The Botanica
step
  note {section}The Mechanar
  goto Netherstorm 70.3,68.5
step
  run The Mechanar |dungeon The Mechanar |boss 19220 |runs 1
  |tip {rrspam}The Mechanar
step
  note {rrarca}
step
  note Obtain the Second Key Fragment from an Arcane Container inside Coilfang Reservoir and the Third Key Fragment from an Arcane Container inside Tempest Keep. Return to Khadgar in Shattrath City after you've completed this task.
step
  talk Khadgar##18166
  turnin The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept The Master's Touch##9836 |goto Shattrath City 54.75,44.32
step
  note {rrtocot}Stormwind
step
  note {section}The Black Morass
  goto Tanaris 63.0,49.0
step
  note {rrmedivh}
  goto The Black Morass - Dungeon -1,-1
step
  talk Medivh##15608
  turnin The Master's Touch##9836 |goto The Black Morass - Dungeon -1,-1
step
  talk Medivh##15608
  accept Return to Khadgar##9837 |goto The Black Morass - Dungeon -1,-1
step
  home Shattrath City
step
  talk Khadgar##18166
  turnin Return to Khadgar##9837 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept The Violet Eye##9838 |goto Shattrath City 54.75,44.32
step
  note {rrtokara}Stormwind
step
  talk Archmage Alturus##17613
  turnin The Violet Eye##9838 |goto Deadwind Pass 47.28,75.21
step
  note {rr70}
  ding 70
step
  note {rrrep}
step
  note {rrkaradone}
step
  note {rrtk}
]])
