-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Arathi Highlands (34-44)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Badlands (38-56)",
}, [[
step
  note {fp}Urda
  goto Arathi Highlands 73.02,32.7 |tip {vendor}
step
  talk Zengu##2703
  accept Sigil of Strom##639 |goto Arathi Highlands 73.8,33.96
step
  note Get the Sigil of Strom for Zengu in Hammerfall.
  kill Syndicate Prowler##2588 |q 639 |goto Arathi Highlands 28.15,63.55
step
  talk Gor'mul##2792
  accept Hammerfall##655 |goto Arathi Highlands 72.64,33.93
step
  talk Tor'gan##2706
  accept Foul Magics##671 |goto Arathi Highlands 74.72,36.29
step
  note Get 10 Bloodstone Amulets for Tor'gan in Hammerfall.
  kill Syndicate Highwayman##2586 |q 671 |goto Arathi Highlands 32.21,28.87
step
  talk Drum Fel##2771
  accept Call to Arms##677 |goto Arathi Highlands 74.24,33.92
step
  talk Zaruk##2787
  accept Theldurin the Lost##687 |goto Arathi Highlands 74.54,35.64
step
  talk Rutherford Twing##15126
  accept Defiler's Basic Care Package##8263 |goto Arathi Highlands 73.37,29.67
step
  talk Rutherford Twing##15126
  accept Defiler's Standard Care Package##8264 |goto Arathi Highlands 73.37,29.67
step
  note Slay 10 Witherbark Axe Throwers, 10 Headhunters and 8 Witch Doctors, and return to Drum Fel in the Hammerfall outpost.
  kill Witherbark Axe Thrower##2554 |q 677 |goto Arathi Highlands 65.56,67.06
step
  talk Theldurin the Lost##2785
  turnin Theldurin the Lost##687 |goto Badlands 51.39,76.87 |tip {turninat}Badlands
step
  talk Lolo the Lookout##2766
  accept Land Ho!##663 |goto Arathi Highlands 31.78,82.68
step
  talk Captain Steelgut##2769
  accept Drowned Sorrows##664 |goto Arathi Highlands 34.0,80.8
step
  talk Professor Phizzlethorpe##2768
  accept Sunken Treasure##665 |goto Arathi Highlands 33.87,80.55
step
  note Captain Steelgut in Faldir's Cove wants you to kill 10 Daggerspine Raiders and 3 Daggerspine Sorceresses.
  kill Daggerspine Raider##2595 |q 664 |goto Arathi Highlands 22.39,86.8
step
  talk Drum Fel##2771
  turnin Call to Arms##677 |goto Arathi Highlands 74.24,33.92
step
  talk Rutherford Twing##15126
  turnin Defiler's Basic Care Package##8263 |goto Arathi Highlands 73.37,29.67
step
  talk Rutherford Twing##15126
  turnin Defiler's Standard Care Package##8264 |goto Arathi Highlands 73.37,29.67
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
  note Retrieve the 5 Sigil Fragments from the defenders in Stromgarde, and bring them to Tor'gan in Hammerfall.
  kill Stromgarde Troll Hunter##2583 |q 640 |goto Arathi Highlands 23.56,60.34
step
  talk Tor'gan##2706
  accept Raising Spirits##672 |goto Arathi Highlands 74.72,36.29
step
  note Acquire 10 Highland Raptor Eyes from Highland Striders and Highland Thrashers for Tor'gan in Hammerfall.
  kill Highland Strider##2559 |q 672 |goto Arathi Highlands 47.75,42.25
step
  talk Tor'gan##2706
  accept Foul Magics##673 |goto Arathi Highlands 74.72,36.29
step
  note Retrieve Marez Cowl's Bloodstone Orb and bring it to Tor'gan in Hammerfall.
  kill Marez Cowl##2783 |q 673 |goto Arathi Highlands 29.62,62.97
step
  talk Drum Fel##2771
  accept Call to Arms##678 |goto Arathi Highlands 74.24,33.92
step
  talk Shakes O'Breen##2610
  turnin Land Ho!##663 |goto Arathi Highlands 32.28,81.38
step
  talk Captain Steelgut##2769
  turnin Drowned Sorrows##664 |goto Arathi Highlands 34.0,80.8
step
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##665 |goto Arathi Highlands 33.86,80.45
step
  talk First Mate Nilzlix##2767
  accept Deep Sea Salvage##662 |goto Arathi Highlands 32.8,81.48
step
  note First Mate Nilzlix wants you to retrieve the Charts and Logs from the Maiden's Folly and the Spirit of Silverpine.
  collect Maiden's Folly Charts##2707 |q 662 |goto Arathi Highlands 23.05,84.51
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  note Doctor Draxlegauge in Faldir's Cove wants you to collect 10 Elven Gems and return the Goggles of Gem Hunting once you are done.
  collect Calcified Elven Gem##2712 |q 666 |goto Arathi Highlands 22.43,89.37
step
  note Kill 10 Boulderfist Brutes and 4 Boulderfist Magi, and return to Drum Fel in the Hammerfall outpost.
  kill Boulderfist Brute##2566 |q 678 |goto Arathi Highlands 53.1,75.63
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
  kill Or'Kalar##2773 |q 680 |goto Arathi Highlands 19.36,66.24
step
  talk First Mate Nilzlix##2767
  turnin Deep Sea Salvage##662 |goto Arathi Highlands 32.8,81.48
step
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##668 |goto Arathi Highlands 33.86,80.45
step
  note Kill 7 Boulderfist Shaman and 3 Boulderfist Lords and return to Drum Fel in the Hammerfall outpost.
  kill Boulderfist Shaman##2570 |q 679 |goto Arathi Highlands 20.23,67.51
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
  talk Zengu##2703
  accept Sigil of Arathor##643 |goto Arathi Highlands 73.8,33.96
step
  note Retrieve the Sigil of Arathor and return it to Zengu in Hammerfall.
  kill Lieutenant Valorcall##2612 |q 643 |goto Arathi Highlands 33.47,52.08
step
  talk Gor'mul##2792
  accept Raising Spirits##675 |goto Arathi Highlands 72.64,33.93
step
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##668 |goto Arathi Highlands 32.28,81.38
step
  talk Shakes O'Breen##2610
  accept Sunken Treasure##669 |goto Arathi Highlands 32.28,81.38
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
  kill Prince Galen Trollbane##2607 |q 644 |goto Arathi Highlands 28.36,58.11
step
  talk Tor'gan##2706
  accept Guile of the Raptor##701 |goto Arathi Highlands 74.72,36.29
step
  note Acquire 12 Raptor Hearts from Highland Fleshstalkers for Tor'gan.
  kill Highland Fleshstalker##2561 |q 701 |goto Arathi Highlands 50.16,68.78
step
  talk Fleet Master Seahorn##2487
  turnin Sunken Treasure##669 |goto Stranglethorn Vale 27.17,77.01 |tip {turninat}Stranglethorn Vale
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
  talk Gor'mul##2792
  turnin Guile of the Raptor##702 |goto Arathi Highlands 72.64,33.93
step
  talk Gor'mul##2792
  accept Guile of the Raptor##847 |goto Arathi Highlands 72.64,33.93
step
  talk Tor'gan##2706
  turnin Guile of the Raptor##847 |goto Arathi Highlands 74.72,36.29
step
  note {travel}Badlands
  goto Badlands 42.39,52.93
]])
