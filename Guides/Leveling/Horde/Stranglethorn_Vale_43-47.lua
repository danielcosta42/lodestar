-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stranglethorn Vale (43-47)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Hinterlands (47-50)",
}, [[
step
  talk Apothecary Zinge##5204
  accept Errand for Apothecary Zinge##232 |goto Undercity 50.14,67.97
step
  only completed(189)
  talk Kebok##737
  accept Skullsplitter Tusks##209 |goto Stranglethorn Vale 27,77.13
step
  only completed(597)
  talk Dizzy One-Eye##2493
  accept Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.9
step
  only completed(599)
  talk Fleet Master Seahorn##2487
  accept The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
  talk Privateer Bloads##2494
  accept Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
step
  collect Cortello's Riddle##2554 |goto Stranglethorn Vale 29.19,88.6 |tip Loot the quest item here — it starts the quest.
  accept Cortello's Riddle##624 |goto Stranglethorn Vale 29.19,88.6
step
  only completed(607)
  talk "Sea Wolf" MacKinley##2501
  accept Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
  talk Crank Fizzlebub##2498
  accept Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
  talk Fin Fizracket##2486
  accept Stranglethorn Fever##348 |goto Stranglethorn Vale 27.61,76.74
step
  note Seek out Witch Doctor Unbagwa and have him summon Mokk the Savage. Bring the Heart of Mokk to Fin Fizracket.
  collect Heart of Mokk##2797 |q 348 |goto Stranglethorn Vale 35.05,60.88 |tip {dropsfrom}Mokk the Savage
step
  only completed(597)
  note Dizzy One-Eye in Booty Bay wants you to retrieve his eye from the Bloodsail Buccaneers.
  collect Dizzy's Eye##3897 |q 576 |goto Stranglethorn Vale 32.34,71.67 |tip {dropsfrom}Bloodsail Raider, Bloodsail Mage, Bloodsail Swashbuckler
step
  only completed(599)
  note Fleet Master Seahorn in Booty Bay wants you to kill 10 Bloodsail Swashbucklers and bring back the Bloodsail Charts and the Bloodsail Orders.
  kill Bloodsail Swashbuckler##1563 |q 604 |goto Stranglethorn Vale 26.67,82.84
step
  note Bring 10 Bundles of Akiris Reed to Privateer Bloads in Booty Bay.
  collect 10 Akiris Reed##4029 |q 617 |goto Stranglethorn Vale 26.2,62.42 |tip {dropsfrom}Naga Explorer, Brinescale Skirmisher
step
  note Bring 12 samples of Zanzil's Mixture to Crank Fizzlebub in Booty Bay.
  collect 12 Zanzil's Mixture##4016 |q 621 |goto Stranglethorn Vale 38.89,57.62 |tip {dropsfrom}Zanzil Zombie, Zanzil Hunter, Zanzil Witch Doctor
step
  talk Fin Fizracket##2486
  turnin Stranglethorn Fever##348 |goto Stranglethorn Vale 27.61,76.74
step
  only completed(597)
  talk Dizzy One-Eye##2493
  turnin Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.9
step
  only completed(599)
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
  talk Privateer Bloads##2494
  turnin Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
step
  talk Crank Fizzlebub##2498
  turnin Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
  only completed(599)
  talk Fleet Master Seahorn##2487
  accept The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01
step
  only completed(599)
  note Fleet-Master Seahorn in Booty Bay wants you to kill Captain Stillwater, Captain Keelhaul and Fleet Master Firallon.
  kill Captain Stillwater##2550 |q 608 |goto Stranglethorn Vale 32.87,88.2
step
  note {fp}Thysta
  goto Stranglethorn Vale 32.54,29.35 |tip {vendor}
step
  only completed(596) completed(629)
  talk Kin'weelay##2519
  accept Split Bone Necklace##598 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nimboya##2497
  accept Grim Message##2932 |goto Stranglethorn Vale 32.16,27.72
step
  only completed(571)
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##573 |goto Stranglethorn Vale 32.12,29.24
step
  only completed(584)
  click Bubbling Cauldron##2076
  accept Speaking with Gan'zulah##586 |goto Stranglethorn Vale 32.22,27.6
step
  only completed(189)
  note Acquire 18 Skullsplitter Tusks and return them to Kebok.
  collect 18 Skullsplitter Tusk##1524 |q 209 |goto Stranglethorn Vale 45.92,38 |tip {dropsfrom}Skullsplitter Warrior, Skullsplitter Hunter, Skullsplitter Witch Doctor
step
  only completed(584)
  note Kill 8 Skullsplitter Hunters, 6 Skullsplitter Headhunters, and 4 Skullsplitter Berserkers.
  kill Skullsplitter Hunter##669 |q 586 |goto Stranglethorn Vale 45.93,42.4
step
  only completed(596) completed(629)
  note Bring 25 Split Bone Necklaces to Kin'weelay at the Grom'gol Base camp.
  collect 25 Split Bone Necklace##3916 |q 598 |goto Stranglethorn Vale 45.92,38 |tip {dropsfrom}Skullsplitter Warrior, Skullsplitter Hunter, Skullsplitter Witch Doctor
step
  only completed(607)
  note Bring Maury's Clubbed Foot, Jon-Jon's Golden Spyglass, and Chucky's Huge Ring to "Sea Wolf" MacKinley in Booty Bay.
  collect Maury's Clubbed Foot##3924 |q 609 |goto Stranglethorn Vale 35.26,51.27 |tip {dropsfrom}Maury "Club Foot" Wilkins
step
  only completed(584)
  turnin Speaking with Gan'zulah##586 |goto Stranglethorn Vale 32.22,27.6
step
  only completed(596) completed(629)
  talk Kin'weelay##2519
  turnin Split Bone Necklace##598 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nimboya##2497
  turnin Grim Message##2932 |goto Stranglethorn Vale 32.16,27.72
step
  only completed(584) completed(585)
  click Bubbling Cauldron##2076
  accept The Fate of Yenniku##588 |goto Stranglethorn Vale 32.22,27.6
step
  only completed(584) completed(585)
  talk Kin'weelay##2519
  turnin The Fate of Yenniku##588 |goto Stranglethorn Vale 32.27,27.71
step
  only completed(584) completed(585)
  talk Kin'weelay##2519
  accept The Singing Crystals##589 |goto Stranglethorn Vale 32.27,27.71
step
  only completed(584) completed(585)
  note Bring 3 Pulsing Blue Shards to Kin'weelay at the Grom'gol Base Camp.
  collect 3 Pulsing Blue Shard##3911 |q 589 |goto Stranglethorn Vale 43.39,47.9 |tip {dropsfrom}Ironjaw Basilisk
step
  only completed(584) completed(585)
  talk Kin'weelay##2519
  turnin The Singing Crystals##589 |goto Stranglethorn Vale 32.27,27.71
step
  only completed(584) completed(585)
  talk Kin'weelay##2519
  accept The Mind's Eye##591 |goto Stranglethorn Vale 32.27,27.71
step
  only completed(584) completed(585)
  note Bring the Mind's Eye to Kin'weelay at the Grom'gol Base Camp.
  kill Mai'Zoth##818 |goto Stranglethorn Vale 52.93,27.6 |elite
  collect Mind's Eye##3616 |q 591 |goto Stranglethorn Vale 52.93,27.6
step
  only completed(584) completed(585)
  talk Kin'weelay##2519
  turnin The Mind's Eye##591 |goto Stranglethorn Vale 32.27,27.71
step
  only completed(584) completed(585)
  talk Kin'weelay##2519
  accept Saving Yenniku##592 |goto Stranglethorn Vale 32.27,27.71
step
  only completed(196)
  talk Hemet Nesingwary##715
  accept Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
step
  only completed(189)
  talk Kebok##737
  turnin Skullsplitter Tusks##209 |goto Stranglethorn Vale 27,77.13
step
  only completed(599)
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01
step
  only completed(607)
  talk "Sea Wolf" MacKinley##2501
  turnin Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
  only completed(607)
  talk "Sea Wolf" MacKinley##2501
  accept Cracking Maury's Foot##613 |goto Stranglethorn Vale 27.78,77.07
step
  talk Captain Hecklebury Smotts##2500
  accept The Captain's Chest##8551 |goto Stranglethorn Vale 26.69,73.61
step
  only completed(571)
  note Far Seer Mok'thardin of Grom'gol needs Holy Spring Water. He also wants you to kill 10 Naga Explorers.
  kill Naga Explorer##1907 |q 573 |goto Stranglethorn Vale 26.2,62.42
step
  only completed(584) completed(585)
  note Bring the Filled Soul Gem to Nimboya.
  collect Filled Soul Gem##3913 |q 592 |goto Stranglethorn Vale 39.02,58.35 |tip {dropsfrom}Yenniku
step
  collect Half-Buried Bottle##2560 |goto Stranglethorn Vale 36.56,77.09 |tip Loot the quest item here — it starts the quest.
  accept Message in a Bottle##594 |goto Stranglethorn Vale 36.56,77.09
step
  note Bring Smotts' Chest to Hecklebury Smotts in Booty Bay.
  kill Gorlash##1492 |goto Stranglethorn Vale 36.95,69.73 |elite
  collect Smotts' Chest##3932 |q 8551 |goto Stranglethorn Vale 36.95,69.73
step
  talk Princess Poobah##2634
  turnin Message in a Bottle##594 |goto Stranglethorn Vale 38.53,80.58
step
  only completed(571)
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##573 |goto Stranglethorn Vale 32.12,29.24
step
  only completed(584) completed(585)
  talk Nimboya##2497
  turnin Saving Yenniku##592 |goto Stranglethorn Vale 32.16,27.72
step
  only completed(196)
  note Hemet Nesingwary wants you to kill Tethis, an elusive, dangerous raptor in Stranglethorn.
  kill Tethis##730 |goto Stranglethorn Vale 32.2,42.8 |elite
  collect Talon of Tethis##3877 |q 197 |goto Stranglethorn Vale 32.2,42.8
step
  only completed(607)
  note Bring Maury's Key to "Sea Wolf" Mackinley in Booty Bay.
  kill Mosh'Ogg Mauler##678 |goto Stranglethorn Vale 51.48,27.13 |elite
  collect Maury's Key##3930 |q 613 |goto Stranglethorn Vale 51.48,27.13
step
  only completed(196)
  talk Hemet Nesingwary##715
  turnin Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
step
  only completed(188) completed(193) completed(196)
  talk Hemet Nesingwary##715
  accept Big Game Hunter##208 |goto Stranglethorn Vale 35.66,10.81
step
  only completed(607)
  talk "Sea Wolf" MacKinley##2501
  turnin Cracking Maury's Foot##613 |goto Stranglethorn Vale 27.78,77.07
step
  talk Captain Hecklebury Smotts##2500
  turnin The Captain's Chest##8551 |goto Stranglethorn Vale 26.69,73.61
step
  talk Whiskey Slim##2491
  accept Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
  kill Mok'rash##1493 |goto Stranglethorn Vale 23.25,72.1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Monogrammed Sash##8552 |goto Stranglethorn Vale 23.25,72.1
step
  talk Captain Hecklebury Smotts##2500
  turnin The Monogrammed Sash##8552 |goto Stranglethorn Vale 26.69,73.61
step
  talk Captain Hecklebury Smotts##2500
  accept The Captain's Cutlass##8553 |goto Stranglethorn Vale 26.69,73.61
step
  talk Sprogger##2594
  turnin The Captain's Cutlass##8553 |goto Stranglethorn Vale 26.66,73.64
step
  talk Sprogger##2594
  accept Facing Negolash##8554 |goto Stranglethorn Vale 26.66,73.64
step
  talk Princess Poobah##2634
  accept Message in a Bottle##630 |goto Stranglethorn Vale 38.53,80.58
step
  note Slay King Mukla and return to Princess Poobah with the Key to free her.
  kill King Mukla##1559 |goto Stranglethorn Vale 40.95,83.9 |elite
  collect Shackle Key##4103 |q 630 |goto Stranglethorn Vale 40.95,83.9
step
  note Bring 10 Barbecued Buzzard Wings and 5 bottles of Junglevine Wine to Captain Smotts' Lifeboat.
  kill Negolash##1494 |goto Stranglethorn Vale 32.45,81.57 |elite
  collect 10 Smotts' Cutlass##3935 |q 8554 |goto Stranglethorn Vale 32.45,81.57
step
  talk Princess Poobah##2634
  turnin Message in a Bottle##630 |goto Stranglethorn Vale 38.53,80.58
step
  only completed(188) completed(193) completed(196)
  note Hemet Nesingwary wants you to bring him the head of King Bangalash, the great white tiger.
  kill King Bangalash##731 |goto Stranglethorn Vale 38.21,35.58 |elite
  collect Head of Bangalash##3880 |q 208 |goto Stranglethorn Vale 38.21,35.58
step
  only completed(188) completed(193) completed(196)
  talk Hemet Nesingwary##715
  turnin Big Game Hunter##208 |goto Stranglethorn Vale 35.66,10.81
step
  talk Captain Hecklebury Smotts##2500
  turnin Facing Negolash##8554 |goto Stranglethorn Vale 26.69,73.61
step
  turnin Cortello's Riddle##624 |goto Swamp of Sorrows 22.87,48.19 |tip {turninat}Swamp of Sorrows
step
  talk Alessandro Luca##7683
  turnin Errand for Apothecary Zinge##232 |goto Undercity 58.61,54.68 |tip {turninat}Undercity
step
  note Whiskey Slim in Booty Bay wants you to bring him the bottles of Pupellyverbos Port he lost.
  collect Pupellyverbos Port##3900 |q 580 |goto The Hinterlands 78.7,70.64
step
  talk Whiskey Slim##2491
  turnin Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
  talk Alessandro Luca##7683
  accept Errand for Apothecary Zinge##238 |goto Undercity 58.61,54.68
step
  talk Apothecary Zinge##5204
  turnin Errand for Apothecary Zinge##238 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  note {travel}Undercity
  goto Undercity 73.06,32.85
]])
