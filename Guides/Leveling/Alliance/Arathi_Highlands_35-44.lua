-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Arathi Highlands (35-44)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Badlands (37-43)",
}, [[
step
  note {fp}Cedrik Prose
  goto Arathi Highlands 45.73,46.1 |tip {vendor}
step
  talk Foggy MacKreel##2696
  accept MacKreel's Moonshine##647 |goto Arathi Highlands 43.24,92.64
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
  talk Captain Nials##2700
  accept Northfold Manor##681 |goto Arathi Highlands 45.83,47.56
step
  talk Apprentice Kryten##2788
  accept Worth Its Weight in Gold##691 |goto Arathi Highlands 46.2,47.75
step
  note Find 10 Witherbark Tusks, 4 Witherbark Medicine Pouches and a Shadow Hunter Knife for Apprentice Kryten at Refuge Pointe.
  kill Witherbark Troll##2552 |q 691 |goto Arathi Highlands 37.5,45.78
step
  talk Samuel Hawke##15127
  accept Arathor Basic Care Package##8260 |goto Arathi Highlands 45.97,45.21
step
  talk Samuel Hawke##15127
  accept Arathor Standard Care Package##8261 |goto Arathi Highlands 45.97,45.21
step
  note Kill 10 Syndicate Highwaymen and 6 Syndicate Mercenaries.
  kill Syndicate Highwayman##2586 |q 681 |goto Arathi Highlands 32.21,28.87
step
  talk Brewmeister Bilger##2705
  turnin MacKreel's Moonshine##647 |goto Hillsbrad Foothills 52.13,58.74 |tip {turninat}Hillsbrad Foothills
step
  talk Quae##2712
  accept Hints of a New Plague?##658 |goto Arathi Highlands 60.18,53.85
step
  note Find the Forsaken Courier and bring back her Sealed Folder to Quae near the Go'Shek Farm.
  kill Forsaken Courier##2714 |q 658 |goto Arathi Highlands 52.47,61.53
step
  talk Zaruk##2787
  accept Theldurin the Lost##687 |goto Arathi Highlands 74.54,35.64
step
  talk Theldurin the Lost##2785
  turnin Theldurin the Lost##687 |goto Badlands 51.39,76.87 |tip {turninat}Badlands
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
  talk Samuel Hawke##15127
  turnin Arathor Basic Care Package##8260 |goto Arathi Highlands 45.97,45.21
step
  talk Samuel Hawke##15127
  turnin Arathor Standard Care Package##8261 |goto Arathi Highlands 45.97,45.21
step
  talk Captain Nials##2700
  turnin Northfold Manor##681 |goto Arathi Highlands 45.83,47.56
step
  talk Apprentice Kryten##2788
  turnin Worth Its Weight in Gold##691 |goto Arathi Highlands 46.2,47.75
step
  talk Captain Nials##2700
  accept Stromgarde Badges##682 |goto Arathi Highlands 45.83,47.56
step
  note Bring 7 Stromgarde Badges to Captain Nials at Refuge Pointe.
  kill Syndicate Prowler##2588 |q 682 |goto Arathi Highlands 28.15,63.55
step
  talk Skuerto##2789
  accept Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
  note Find Trelane's Wand of Invocation and return it to Skuerto at Refuge Pointe.
  kill Kor'gresh Coldrage##2793 |q 693 |goto Arathi Highlands 54.75,81.87
step
  talk Quae##2712
  turnin Hints of a New Plague?##658 |goto Arathi Highlands 60.18,53.85
step
  talk Quae##2712
  accept Hints of a New Plague?##657 |goto Arathi Highlands 60.18,53.85
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
  talk Captain Nials##2700
  turnin Stromgarde Badges##682 |goto Arathi Highlands 45.83,47.56
step
  talk Skuerto##2789
  turnin Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
  talk Skuerto##2789
  accept Trelane's Defenses##694 |goto Arathi Highlands 46.65,47.01
step
  note Find an Azure Agate and bring it to Apprentice Kryten at Refuge Pointe.
  kill Boulderfist Shaman##2570 |q 694 |goto Arathi Highlands 20.23,67.51
step
  talk Kinelory##2713
  turnin Hints of a New Plague?##657 |goto Arathi Highlands 60.24,53.92
step
  talk Kinelory##2713
  accept Hints of a New Plague?##660 |goto Arathi Highlands 60.24,53.92
step
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##668 |goto Arathi Highlands 32.28,81.38
step
  talk Shakes O'Breen##2610
  accept Sunken Treasure##669 |goto Arathi Highlands 32.28,81.38
step
  talk Apprentice Kryten##2788
  turnin Trelane's Defenses##694 |goto Arathi Highlands 46.2,47.75
step
  talk Apprentice Kryten##2788
  accept An Apprentice's Enchantment##695 |goto Arathi Highlands 46.2,47.75
step
  talk Quae##2712
  turnin Hints of a New Plague?##660 |goto Arathi Highlands 60.18,53.85
step
  talk Quae##2712
  accept Hints of a New Plague?##661 |goto Arathi Highlands 60.18,53.85
step
  talk Fleet Master Seahorn##2487
  turnin Sunken Treasure##669 |goto Stranglethorn Vale 27.17,77.01 |tip {turninat}Stranglethorn Vale
step
  talk Skuerto##2789
  turnin An Apprentice's Enchantment##695 |goto Arathi Highlands 46.65,47.01
step
  talk Skuerto##2789
  accept Attack on the Tower##696 |goto Arathi Highlands 46.65,47.01
step
  note Find Trelane's Phylactery, Trelane's Orb, and Trelane's Ember Agate, and return them to Skuerto at Refuge Pointe.
  collect Trelane's Footlocker##2717 |q 696 |goto Arathi Highlands 18.18,68.14
step
  talk Phin Odelic##2711
  turnin Hints of a New Plague?##661 |goto Hillsbrad Foothills 50.35,59.05 |tip {turninat}Hillsbrad Foothills
step
  talk Skuerto##2789
  turnin Attack on the Tower##696 |goto Arathi Highlands 46.65,47.01
step
  talk Skuerto##2789
  accept Malin's Request##697 |goto Arathi Highlands 46.65,47.01
step
  talk Archmage Malin##2708
  turnin Malin's Request##697 |goto Stormwind City 39.84,81.46 |tip {turninat}Stormwind City
step
  note {travel}Badlands
  goto Badlands 53.42,43.39
]])
