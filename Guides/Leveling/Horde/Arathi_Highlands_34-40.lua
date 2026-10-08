-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Arathi Highlands (34-40)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Dustwallow Marsh (35-45)",
}, [[
step
  note {fp}Tharlidun
  goto Arathi Highlands 73.93,33.13 |tip {vendor}
step
  talk Zengu##2703
  accept Sigil of Strom##639 |goto Arathi Highlands 73.8,33.96
step
  note Get the Sigil of Strom for Zengu in Hammerfall.
  kill Syndicate Prowler##2588 |goto Arathi Highlands 28.15,63.55 |elite
  collect Sigil of Strom##4440 |q 639 |goto Arathi Highlands 28.15,63.55
step
  click Shards of Myzrael##138492
  accept The Princess Trapped##642 |goto Arathi Highlands 62.5,33.73
step
  note Gather 12 Motes of Myzrael, then bring them to the Iridescent Shards in Drywhisker Gorge.
  collect 12 Mote of Myzrael##4435 |q 642 |goto Arathi Highlands 78.55,37.77 |tip {dropsfrom}Drywhisker Kobold, Drywhisker Surveyor, Drywhisker Digger
step
  talk Gor'mul##2792
  accept Hammerfall##655 |goto Arathi Highlands 72.64,33.93
step
  talk Tor'gan##2706
  accept Foul Magics##671 |goto Arathi Highlands 74.72,36.29
step
  note Get 10 Bloodstone Amulets for Tor'gan in Hammerfall.
  collect Bloodstone Amulet##4495 |q 671 |goto Arathi Highlands 32.21,28.87 |tip {dropsfrom}Syndicate Highwayman, Syndicate Pathstalker, Syndicate Mercenary
step
  talk Drum Fel##2771
  accept Call to Arms##677 |goto Arathi Highlands 74.24,33.92
step
  click Messenger Bag##406918
  accept This Must Be The Place##79976 |goto Arathi Highlands 22.48,24.23
step
  note Slay 10 Witherbark Axe Throwers, 10 Headhunters and 8 Witch Doctors, and return to Drum Fel in the Hammerfall outpost.
  kill Witherbark Axe Thrower##2554 |q 677 |goto Arathi Highlands 65.56,67.06
step
  talk Lolo the Lookout##2766
  accept Land Ho!##663 |goto Arathi Highlands 31.78,82.68
step
  turnin The Princess Trapped##642 |goto Arathi Highlands 84.31,30.95
step
  talk Drum Fel##2771
  turnin Call to Arms##677 |goto Arathi Highlands 74.24,33.92
step
  turnin This Must Be The Place##79976 |goto Arathi Highlands 22.47,24.23
step
  talk Tor'gan##2706
  turnin Hammerfall##655 |goto Arathi Highlands 74.72,36.29
step
  talk Zengu##2703
  turnin Sigil of Strom##639 |goto Arathi Highlands 73.8,33.96
step
  talk Tor'gan##2706
  turnin Foul Magics##671 |goto Arathi Highlands 74.72,36.29
step
  talk Zengu##2703
  accept The Broken Sigil##640 |goto Arathi Highlands 73.8,33.96
step
  note Retrieve the 11 Sigil Fragments from the defenders in Stromgarde, and bring them to Tor'gan in Hammerfall.
  kill Stromgarde Troll Hunter##2583 |goto Arathi Highlands 23.56,60.34 |elite
  collect Sigil Fragment##4450 |q 640 |goto Arathi Highlands 23.56,60.34
step
  click Iridescent Shards##2701
  accept Stones of Binding##651 |goto Arathi Highlands 84.31,30.95
step
  note Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
  collect Burning Key##4483 |q 651 |goto Arathi Highlands 25.46,30.11 |tip {dropsfrom}Stone of West Binding
step
  talk Tor'gan##2706
  accept Raising Spirits##672 |goto Arathi Highlands 74.72,36.29
step
  note Acquire 10 Highland Raptor Eyes from Highland Striders and Highland Thrashers for Tor'gan in Hammerfall.
  collect 10 Highland Raptor Eye##4512 |q 672 |goto Arathi Highlands 47.75,42.25 |tip {dropsfrom}Highland Strider, Highland Thrasher
step
  talk Tor'gan##2706
  accept Foul Magics##673 |goto Arathi Highlands 74.72,36.29
step
  note Retrieve Marez Cowl's Bloodstone Orb and bring it to Tor'gan in Hammerfall.
  kill Marez Cowl##2783 |goto Arathi Highlands 29.62,64.14 |elite
  collect Befouled Bloodstone Orb##4510 |q 673 |goto Arathi Highlands 29.62,64.14
step
  talk Drum Fel##2771
  accept Call to Arms##678 |goto Arathi Highlands 74.24,33.92
step
  turnin Stones of Binding##651 |goto Arathi Highlands 36.23,57.38
step
  talk Shakes O'Breen##2610
  turnin Land Ho!##663 |goto Arathi Highlands 32.28,81.38
step
  click Stone of Inner Binding##2702
  accept Breaking the Keystone##652 |goto Arathi Highlands 36.23,57.38
step
  note Find and kill Fozruk. Bring the Rod of Order to the Keystone in the Arathi Highlands.
  kill Fozruk##2611 |goto Arathi Highlands 63.9,30 |elite
  collect Rod of Order##4469 |q 652 |goto Arathi Highlands 63.9,30
step
  talk First Mate Nilzlix##2767
  accept Deep Sea Salvage##662 |goto Arathi Highlands 32.8,81.48
step
  note First Mate Nilzlix wants you to retrieve the Charts and Logs from the Maiden's Folly and the Spirit of Silverpine.
  collect Maiden's Folly Charts##4487 |q 662 |goto Arathi Highlands 23.05,84.51
step
  talk Captain Steelgut##2769
  accept Drowned Sorrows##664 |goto Arathi Highlands 34,80.8
step
  talk Professor Phizzlethorpe##2768
  accept Sunken Treasure##665 |goto Arathi Highlands 33.87,80.55
step
  note Kill 10 Boulderfist Brutes and 4 Boulderfist Magi, and return to Drum Fel in the Hammerfall outpost.
  kill Boulderfist Brute##2566 |q 678 |goto Arathi Highlands 53.1,75.63
step
  note Captain Steelgut in Faldir's Cove wants you to kill 10 Daggerspine Raiders and 3 Daggerspine Sorceresses.
  kill Daggerspine Raider##2595 |q 664 |goto Arathi Highlands 22.39,86.8
step
  talk Tor'gan##2706
  turnin The Broken Sigil##640 |goto Arathi Highlands 74.72,36.29
step
  talk Tor'gan##2706
  turnin Raising Spirits##672 |goto Arathi Highlands 74.72,36.29
step
  talk Tor'gan##2706
  turnin Foul Magics##673 |goto Arathi Highlands 74.72,36.29
step
  talk Drum Fel##2771
  turnin Call to Arms##678 |goto Arathi Highlands 74.24,33.92
step
  talk Tor'gan##2706
  accept Sigil of Thoradin##641 |goto Arathi Highlands 74.72,36.29
step
  talk Tor'gan##2706
  accept Raising Spirits##674 |goto Arathi Highlands 74.72,36.29
step
  talk Drum Fel##2771
  accept Call to Arms##679 |goto Arathi Highlands 74.24,33.92
step
  talk Korin Fel##2772
  accept The Real Threat##680 |goto Arathi Highlands 74.04,33.07
step
  note Slay Or'Kalar and bring his Head to Korin Fel in the Hammerfall outpost.
  kill Or'Kalar##2773 |goto Arathi Highlands 19.36,66.24 |elite
  collect Or'Kalar's Head##4551 |q 680 |goto Arathi Highlands 19.36,66.24
step
  turnin Breaking the Keystone##652 |goto Arathi Highlands 36.08,58.09
step
  talk First Mate Nilzlix##2767
  turnin Deep Sea Salvage##662 |goto Arathi Highlands 32.8,81.48
step
  talk Captain Steelgut##2769
  turnin Drowned Sorrows##664 |goto Arathi Highlands 34,80.8
step
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##665 |goto Arathi Highlands 33.86,80.45
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  note Doctor Draxlegauge in Faldir's Cove wants you to collect 10 Elven Gems and return the Goggles of Gem Hunting once you are done.
  collect 10 Elven Gem##4492 |q 666 |goto Arathi Highlands 23,89 |tip {dropsfrom}Calcified Elven Gem
step
  click Keystone##2688
  accept Myzrael's Allies##688 |goto Arathi Highlands 36.08,58.09
step
  note Kill 7 Boulderfist Shaman and 3 Boulderfist Lords and return to Drum Fel in the Hammerfall outpost.
  kill Boulderfist Shaman##2570 |q 679 |goto Arathi Highlands 20.23,67.51 |elite
step
  talk Zengu##2703
  turnin Sigil of Thoradin##641 |goto Arathi Highlands 73.8,33.96
step
  talk Gor'mul##2792
  turnin Raising Spirits##674 |goto Arathi Highlands 72.64,33.93
step
  talk Drum Fel##2771
  turnin Call to Arms##679 |goto Arathi Highlands 74.24,33.92
step
  talk Korin Fel##2772
  turnin The Real Threat##680 |goto Arathi Highlands 74.04,33.07
step
  talk Zaruk##2787
  turnin Myzrael's Allies##688 |goto Arathi Highlands 74.54,35.64
step
  talk Zengu##2703
  accept Sigil of Arathor##643 |goto Arathi Highlands 73.8,33.96
step
  note Retrieve the Sigil of Arathor and return it to Zengu in Hammerfall.
  kill Lieutenant Valorcall##2612 |goto Arathi Highlands 33.47,52.08 |elite
  collect Sigil of Arathor##4458 |q 643 |goto Arathi Highlands 33.47,52.08
step
  talk Gor'mul##2792
  accept Raising Spirits##675 |goto Arathi Highlands 72.64,33.93
step
  talk Zaruk##2787
  accept Theldurin the Lost##687 |goto Arathi Highlands 74.54,35.64
step
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  talk Theldurin the Lost##2785
  turnin Theldurin the Lost##687 |goto Badlands 51.39,76.87 |tip {turninat}Badlands
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##668 |goto Arathi Highlands 33.86,80.45
step
  talk Zengu##2703
  turnin Sigil of Arathor##643 |goto Arathi Highlands 73.8,33.96
step
  talk Tor'gan##2706
  turnin Raising Spirits##675 |goto Arathi Highlands 74.72,36.29
step
  talk Zengu##2703
  accept Sigil of Trollbane##644 |goto Arathi Highlands 73.8,33.96
step
  note Kill Prince Galen Trollbane and bring the Sigil of Trollbane to Zengu in Hammerfall.
  kill Prince Galen Trollbane##2607 |goto Arathi Highlands 28.36,58.11 |elite
  collect Sigil of Trollbane##4466 |q 644 |goto Arathi Highlands 28.36,58.11
step
  talk Tor'gan##2706
  accept Guile of the Raptor##701 |goto Arathi Highlands 74.72,36.29
step
  note Acquire 12 Raptor Hearts from Highland Fleshstalkers for Tor'gan.
  collect 12 Raptor Heart##4513 |q 701 |goto Arathi Highlands 50.16,68.78 |tip {dropsfrom}Highland Fleshstalker
step
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##668 |goto Arathi Highlands 32.28,81.38
step
  talk Shakes O'Breen##2610
  accept Sunken Treasure##669 |goto Arathi Highlands 32.28,81.38
step
  talk Zengu##2703
  turnin Sigil of Trollbane##644 |goto Arathi Highlands 73.8,33.96
step
  talk Tor'gan##2706
  turnin Guile of the Raptor##701 |goto Arathi Highlands 74.72,36.29
step
  talk Zengu##2703
  accept Trol'kalar##645 |goto Arathi Highlands 73.8,33.96
step
  talk Tor'gan##2706
  accept Guile of the Raptor##702 |goto Arathi Highlands 74.72,36.29
step
  turnin Trol'kalar##645 |goto Arathi Highlands 28.86,59.62
step
  talk Fleet Master Seahorn##2487
  turnin Sunken Treasure##669 |goto Stranglethorn Vale 27.17,77.01 |tip {turninat}Stranglethorn Vale
step
  click Trollbane's Tomb##2703
  accept Trol'kalar##646 |goto Arathi Highlands 28.86,59.62
step
  talk Zengu##2703
  turnin Trol'kalar##646 |goto Arathi Highlands 73.8,33.96
step
  talk Gor'mul##2792
  turnin Guile of the Raptor##702 |goto Arathi Highlands 72.64,33.93
step
  talk Gor'mul##2792
  accept Guile of the Raptor##847 |goto Arathi Highlands 72.64,33.93
step
  talk Tor'gan##2706
  turnin Guile of the Raptor##847 |goto Arathi Highlands 74.72,36.29
step
  note {travel}Dustwallow Marsh
  goto Dustwallow Marsh 35.21,30.66
]])
