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
  collect Waterlogged Letter##2656 |goto Arathi Highlands 44.29,92.88 |tip Loot the quest item here — it starts the quest.
  accept Sully Balloo's Letter##637 |goto Arathi Highlands 44.29,92.88
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
  talk Warlord Gorchuk##15700
  accept Fifteen Signets for War Supplies##8853 |goto Orgrimmar 34.92,74.89
step
  collect Fifteen Signets for War Supplies##21438 |q 8853 |goto Orgrimmar 34.92,74.89
step
  note Captain Steelgut in Faldir's Cove wants you to kill 10 Daggerspine Raiders and 3 Daggerspine Sorceresses.
  kill Daggerspine Raider##2595 |q 664 |goto Arathi Highlands 22.39,86.8
step
  talk Captain Nials##2700
  accept Northfold Manor##681 |goto Arathi Highlands 45.83,47.56
step
  click Wanted Board##2713
  accept Wanted!  Marez Cowl##684 |goto Arathi Highlands 46.04,47.76
step
  note Bring Marez's head to Captain Nials at Refuge Pointe.
  collect Marez's Head##4515 |q 684 |goto Arathi Highlands 29.62,62.97 |tip {dropsfrom}Marez Cowl
step
  click Wanted Board##2713
  accept Wanted!  Otto and Falconcrest##685 |goto Arathi Highlands 46.04,47.76
step
  note Bring Otto's Head and Falconcrest's Head to Captain Nials at Refuge Pointe.
  collect Otto's Head##4516 |q 685 |goto Arathi Highlands 26.22,65.55 |tip {dropsfrom}Otto
step
  talk Apprentice Kryten##2788
  accept Worth Its Weight in Gold##691 |goto Arathi Highlands 46.2,47.75
step
  note Find 10 Witherbark Tusks, 4 Witherbark Medicine Pouches and a Shadow Hunter Knife for Apprentice Kryten at Refuge Pointe.
  collect 10 Witherbark Tusk##4503 |q 691 |goto Arathi Highlands 37.5,45.78 |tip {dropsfrom}Witherbark Troll, Witherbark Shadowcaster, Witherbark Axe Thrower
step
  talk Brother Crowley##12336
  accept Brother Anton##6141 |goto Stormwind City 42.58,24.23
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
  talk Sara Balloo##2695
  turnin Sully Balloo's Letter##637 |goto Ironforge 63.5,67.3 |tip {turninat}Ironforge
step
  talk Quae##2712
  accept Hints of a New Plague?##658 |goto Arathi Highlands 60.18,53.85
step
  note Find the Forsaken Courier and bring back her Sealed Folder to Quae near the Go'Shek Farm.
  collect Sealed Folder##4482 |q 658 |goto Arathi Highlands 52.47,61.53 |tip {dropsfrom}Forsaken Courier, Alterac Granite
step
  talk Field Marshal Snowfall##15701
  accept Fifteen Signets for War Supplies##8848 |goto Ironforge 60.98,73.85
step
  collect Alliance Commendation Signet##21436 |q 8848 |goto Ironforge 60.98,73.85
step
  talk Brother Anton##1182
  turnin Brother Anton##6141 |goto Desolace 66.52,7.91 |tip {turninat}Desolace
step
  click Shards of Myzrael##138492
  accept The Princess Trapped##642 |goto Arathi Highlands 62.5,33.73
step
  note Gather 12 Motes of Myzrael, then bring them to the Iridescent Shards in Drywhisker Gorge.
  collect 12 Mote of Myzrael##4435 |q 642 |goto Arathi Highlands 78.55,37.77 |tip {dropsfrom}Drywhisker Kobold, Drywhisker Surveyor, Drywhisker Digger
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
  collect Maiden's Folly Charts##4487 |q 662 |goto Arathi Highlands 23.05,84.51
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  note Doctor Draxlegauge in Faldir's Cove wants you to collect 10 Elven Gems and return the Goggles of Gem Hunting once you are done.
  collect 10 Elven Gem##4492 |q 666 |goto Arathi Highlands 22.43,89.37 |tip {dropsfrom}Calcified Elven Gem
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
  talk Captain Nials##2700
  turnin Wanted!  Marez Cowl##684 |goto Arathi Highlands 45.83,47.56
step
  talk Captain Nials##2700
  turnin Wanted!  Otto and Falconcrest##685 |goto Arathi Highlands 45.83,47.56
step
  talk Apprentice Kryten##2788
  turnin Worth Its Weight in Gold##691 |goto Arathi Highlands 46.2,47.75
step
  talk Captain Nials##2700
  accept Stromgarde Badges##682 |goto Arathi Highlands 45.83,47.56
step
  note Bring 7 Stromgarde Badges to Captain Nials at Refuge Pointe.
  collect 7 Stromgarde Badge##4506 |q 682 |goto Arathi Highlands 28.15,63.55 |tip {dropsfrom}Syndicate Prowler, Syndicate Conjuror, Syndicate Magus
step
  talk Skuerto##2789
  accept Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
  note Find Trelane's Wand of Invocation and return it to Skuerto at Refuge Pointe.
  collect Trelane's Wand of Invocation##4525 |q 693 |goto Arathi Highlands 54.75,81.87 |tip {dropsfrom}Kor'gresh Coldrage
step
  talk Quae##2712
  turnin Hints of a New Plague?##658 |goto Arathi Highlands 60.18,53.85
step
  talk Quae##2712
  accept Hints of a New Plague?##657 |goto Arathi Highlands 60.18,53.85
step
  turnin The Princess Trapped##642 |goto Arathi Highlands 84.31,30.95
step
  click Iridescent Shards##2701
  accept Stones of Binding##651 |goto Arathi Highlands 84.31,30.95
step
  note Gather the Burning Key, the Cresting Key and the Thundering Key from the Stone of West Binding, the Stone of East Binding and the Stone of Outer Binding.
  collect Burning Key##4483 |q 651 |goto Arathi Highlands 25.64,30.52 |tip {dropsfrom}Burning Exile, Stone of West Binding
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
  turnin Stones of Binding##651 |goto Arathi Highlands 36.23,57.38
step
  talk Skuerto##2789
  turnin Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
  click Stone of Inner Binding##2702
  accept Breaking the Keystone##652 |goto Arathi Highlands 36.23,57.38
step
  note Find and kill Fozruk. Bring the Rod of Order to the Keystone in the Arathi Highlands.
  collect Rod of Order##4469 |q 652 |goto Arathi Highlands 67.73,37.65 |tip {dropsfrom}Fozruk
step
  talk Skuerto##2789
  accept Trelane's Defenses##694 |goto Arathi Highlands 46.65,47.01
step
  note Find an Azure Agate and bring it to Apprentice Kryten at Refuge Pointe.
  collect Azure Agate##4527 |q 694 |goto Arathi Highlands 20.23,67.51 |tip {dropsfrom}Boulderfist Shaman
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
  turnin Breaking the Keystone##652 |goto Arathi Highlands 36.08,58.09
step
  talk Apprentice Kryten##2788
  turnin Trelane's Defenses##694 |goto Arathi Highlands 46.2,47.75
step
  click Keystone##2688
  accept Myzrael's Allies##653 |goto Arathi Highlands 36.08,58.09
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
  talk Gerrig Bonegrip##2786
  turnin Myzrael's Allies##653 |goto Ironforge 50.83,5.62 |tip {turninat}Ironforge
step
  talk Zaruk##2787
  accept Theldurin the Lost##687 |goto Arathi Highlands 74.54,35.64
step
  talk Theldurin the Lost##2785
  turnin Theldurin the Lost##687 |goto Badlands 51.39,76.87 |tip {turninat}Badlands
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
  collect Trelane's Phylactery##4530 |q 696 |goto Arathi Highlands 18.18,68.14 |tip {dropsfrom}Trelane's Footlocker
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
