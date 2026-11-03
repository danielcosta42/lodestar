-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Wetlands (30-33)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Ashenvale (30-32)",
	rev = "03889ab4",
}, [[
step
  ding 28
step
  note {fp}Shellei Brondir
  goto Wetlands 9.49,59.69 |tip {vendor}
step
  only completed(289)
  talk First Mate Fitzsimmons##1239
  accept Lifting the Curse##290 |goto Wetlands 10.9,59.64
step
  only completed(464)
  talk Captain Stoutfist##2104
  accept Nek'rosh's Gambit##465 |goto Wetlands 9.86,57.49
step
  only completed(289)
  note Get the Intrepid Strongbox Key from Captain Halyndor.
  collect Intrepid Strongbox Key##2629 |q 290 |goto Wetlands 15.45,23.61 |tip {dropsfrom}Captain Halyndor
step
  only completed(289)
  turnin Lifting the Curse##290 |goto Wetlands 14.38,24.04
step
  only completed(289)
  click Intrepid's Locked Strongbox##112948
  accept The Eye of Paleth##292 |goto Wetlands 14.38,24.04
step
  only completed(464)
  note Destroy the Dragonmaw catapults.
  turnin Nek'rosh's Gambit##465 |goto Wetlands 47.46,47.01
step
  only level>=30
  talk Howin Kindfeather##270637
  accept Death to the Dragonmaw##98291 |goto Wetlands 49.36,42.13
step
  click Tattered Spellbook##671518
  accept Old Habits##98223 |goto Wetlands 53.48,54.53
step
  only haveq(98291)
  note Kill 8 Dragonmaw Reclaimers, 5 Dragonmaw Soulbinders, and 3 Dragonmaw Infiltrators in Dragonmaw Retreat for Howin Kindfeather.
  kill Dragonmaw Infiltrator##271346 |q 98291/3 |goto Wetlands 64.64,46.05 |elite
  kill Dragonmaw Reclaimer##271351 |q 98291/1 |goto Wetlands 64.86,46.18 |elite
  kill Dragonmaw Soulbinder##271348 |q 98291 |goto Wetlands 68.9,46.05 |elite
step
  only level>=30
  talk Rethiel the Greenwarden##1244
  accept Carnage##98283 |goto Wetlands 56.37,40.4
step
  click Dragonmaw Armaments##672330
  accept Forced Disarmament##98293 |goto Wetlands 58.82,45.14
step
  note Collect 30 Dragonmaw Armaments in Dragonmaw Retreat, then bring them to Captain Stoutfist in Menethil Keep.
  collect 30 Dragonmaw Armaments##280369 |q 98293 |goto Wetlands 58.82,45.14
step
  only haveq(98283)
  note Bring Carnage's Head to Rethiel the Greenwarden in The Green Belt.
  collect Malignant Rotclaw Flesh##280331 |q 98283/1 |goto Wetlands 61.47,39.55 |tip {dropsfrom}Maddened Rotclaw
  kill Carnage##271336 |q 98283 |goto Wetlands 69.54,29.05 |elite
  collect Carnage's Head##280330 |q 98283 |goto Wetlands 69.54,29.05
step
  only haveq(98283)
  talk Rethiel the Greenwarden##1244
  turnin Carnage##98283 |goto Wetlands 56.37,40.4
step
  only haveq(98291)
  talk Howin Kindfeather##270637
  turnin Death to the Dragonmaw##98291 |goto Wetlands 49.36,42.13
step
  only level>=31
  talk Prospector Whelgar##1077
  accept Understanding Our Present##98216 |goto Wetlands 38.81,52.39
step
  only haveq(98216)
  note Use the Goaz Stone near the Goaz Warder and bring its Titanic Keystone back to Prospector Whelgar.
  kill Goaz Warder##270892 |q 98216 |goto Wetlands 35.08,50 |elite
  collect Titanic Keystone##279993 |q 98216 |goto Wetlands 35.08,50
step
  only haveq(98216)
  talk Prospector Whelgar##1077
  turnin Understanding Our Present##98216 |goto Wetlands 38.81,52.39
step
  only level>=32
  talk Prospector Whelgar##1077
  accept Gleaning Our Future##98310 |goto Wetlands 38.81,52.39
step
  talk Prospector Whelgar##1077
  accept For Further Study##98313 |goto Wetlands 38.81,52.39
step
  only completed(464) level>=32
  click Dragonmaw Catapult##1609
  accept Defeat Nek'rosh##474 |goto Wetlands 47.46,47.01
step
  only haveq(98310)
  note Use the Goaz Stone near Ados, Modr, Golm, and Neru and bring their hearts back to Prospector Whelgar.
  kill Neru##271458 |q 98310/4 |goto Wetlands 61,23.48 |elite
  collect Heart of Neru##280398 |q 98310/4 |goto Wetlands 61,23.48
  kill Modr##271460 |q 98310/2 |goto Wetlands 51.01,17.7 |elite
  collect Heart of Modr##280396 |q 98310/2 |goto Wetlands 51.01,17.7
  kill Ados##271338 |q 98310/1 |goto Wetlands 77.55,47.02 |elite
  collect Heart of Ados##280395 |q 98310/1 |goto Wetlands 77.55,47.02
  kill Golm##271462 |q 98310 |goto Wetlands 67.68,71.11 |elite
  collect Heart of Golm##280397 |q 98310 |goto Wetlands 67.68,71.11
step
  only completed(464) haveq(474)
  note Kill Chieftain Nek'rosh
  kill Chieftain Nek'rosh##2091 |q 474 |goto Wetlands 53.51,54.67 |elite
  collect Nek'rosh's Head##3625 |q 474 |goto Wetlands 53.51,54.67
step
  only haveq(98310)
  talk Prospector Whelgar##1077
  turnin Gleaning Our Future##98310 |goto Wetlands 38.81,52.39
step
  only completed(289)
  note Bring the Cursed Eye of Paleth to Glorin Steelbrow.
  talk Glorin Steelbrow##1217
  turnin The Eye of Paleth##292 |goto Wetlands 10.58,60.59
step
  only completed(464) haveq(474)
  talk Captain Stoutfist##2104
  turnin Defeat Nek'rosh##474 |goto Wetlands 9.86,57.49
step
  note Bring the Tattered Spellbook to Captain Stoutfist in Menethil Harbor.
  talk Captain Stoutfist##2104
  turnin Old Habits##98223 |goto Wetlands 9.86,57.49
step
  talk Captain Stoutfist##2104
  turnin Forced Disarmament##98293 |goto Wetlands 9.86,57.49
step
  only completed(289)
  talk Glorin Steelbrow##1217
  accept Cleansing the Eye##293 |goto Wetlands 10.58,60.59
step
  only level>=30
  talk Motley Garmason##1074
  accept The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  talk Rhag Garmason##1075
  accept The Thandol Span##631 |goto Wetlands 49.9,18.24
step
  talk Ashlan Stonesmirk##1073
  accept Bring Back a Bang##88756 |goto Wetlands 50.05,18.17
step
  note Retrieve 3 Stolen Explosives from the Dark Iron Dwarf camps.
  collect 3 Stolen Explosives##280806 |q 88756 |goto Wetlands 50.05,18.17
step
  note Rhag Garmason wants you to locate Ol' Rustlocke.
  turnin The Thandol Span##631 |goto Wetlands 51.28,7.95
step
  talk Ashlan Stonesmirk##1073
  turnin Bring Back a Bang##88756 |goto Wetlands 50.05,18.17
step
  click Ebenezer Rustlocke's Corpse##2652
  accept The Thandol Span##632 |goto Wetlands 51.28,7.95
step
  talk Comar Villard##5683
  accept Hearts of the Lost##87318 |goto Wetlands 49.93,12.55
step
  talk Essene Villard##271322
  accept Accessories of the Lost##88757 |goto Wetlands 51.54,9.02
step
  note Bring back Essene's Necklace, Essene's Spellbook, and Essene's Waterskin.
  collect Essene's Necklace##284705 |q 88757/1
  collect Essene's Spellbook##284150 |q 88757/2
  collect Essene's Waterskin##284146 |q 88757
step
  talk Essene Villard##271322
  accept Sentiments of the Lost##88758 |goto Wetlands 51.54,9.02
step
  note Report back to Rhag Garmason and show him the parchment you found on Rustlocke's corpse.
  talk Rhag Garmason##1075
  turnin The Thandol Span##632 |goto Wetlands 49.9,18.24
step
  note Search for Corma's partner Essene.
  talk Essene Villard##271322
  turnin Hearts of the Lost##87318 |goto Wetlands 51.54,9.02
step
  talk Essene Villard##271322
  turnin Accessories of the Lost##88757 |goto Wetlands 51.54,9.02
step
  note Bring Essene's note back to Corma Villard.
  talk Comar Villard##5683
  turnin Sentiments of the Lost##88758 |goto Wetlands 49.93,12.55
step
  talk Rhag Garmason##1075
  accept The Thandol Span##633 |goto Wetlands 49.9,18.24
step
  talk Captive Fire Elemental##271481
  accept Spark of Freedom##87491 |goto Wetlands 45.67,16.66
step
  note Escort the captive fire elemental out of Dun Modr and to its freedom.
  talk Roggo Harlbarrow##1072
  turnin Spark of Freedom##87491 |goto Wetlands 49.85,18.09
step
  only haveq(303)
  note Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
  kill Dark Iron Saboteur##1052 |q 303/3 |goto Wetlands 48.1,18.09 |elite
  kill Dark Iron Tunneler##1053 |q 303/2 |goto Wetlands 47.11,17.92 |elite
  kill Dark Iron Dwarf##1051 |q 303/1 |goto Wetlands 59.93,23.02 |elite
  kill Dark Iron Demolitionist##1054 |q 303 |goto Wetlands 60.1,24.36 |elite
step
  only haveq(303)
  talk Motley Garmason##1074
  turnin The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  only level>=34
  talk Longbraid the Grim##1071
  accept A Grim Task##304 |goto Wetlands 49.8,18.26
step
  only haveq(304)
  note Kill Balgaras the Foul and bring his ear to Longbraid the Grim outside of Dun Modr.
  kill Balgaras the Foul##1364 |q 304 |goto Wetlands 62.49,28.42 |elite
  collect Ear of Balgaras##3639 |q 304 |goto Wetlands 62.49,28.42
step
  only haveq(304)
  talk Longbraid the Grim##1071
  turnin A Grim Task##304 |goto Wetlands 49.8,18.26
step
  only level>=34
  talk Howin Kindfeather##270637
  accept Stopping the Cycle##98297 |goto Wetlands 49.36,42.13
step
  talk Howin Kindfeather##270637
  accept Word to Ironforge##98300 |goto Wetlands 49.36,42.13
step
  only haveq(98297)
  note Kill the Subdued Dragonspawn at the Dragonmaw Gates for Howin Kindfeather.
  kill Subdued Dragonspawn##271373 |q 98297 |goto Wetlands 76.5,45.75 |elite
step
  only haveq(98297)
  talk Howin Kindfeather##270637
  turnin Stopping the Cycle##98297 |goto Wetlands 49.36,42.13
step
  only completed(289)
  note Bring Archbishop Benedictus the Cursed Eye of Paleth. Benedictus is in the Cathedral of Light, in the city of Stormwind.
  talk Archbishop Benedictus##1284
  turnin Cleansing the Eye##293 |goto Stormwind City 50.31,45.47 |tip {turninat}Stormwind City
step
  only completed(1247)
  talk Elling Trias##482
  accept The Missing Diplomat##1248 |goto Stormwind City 66.03,74.1
step
  only level>=30
  talk Connor Rivers##5081
  accept James Hyal##1301 |goto Stormwind City 51.12,95.52
step
  only completed(1247)
  note Speak to Mikhail in the Wetlands.
  talk Mikhail##4963
  turnin The Missing Diplomat##1248 |goto Wetlands 10.6,60.77
step
  only completed(1247)
  talk Mikhail##4963
  accept The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  only haveq(1301)
  note Speak with Vincent Hyal in Menethil Harbor.
  talk Vincent Hyal##5082
  turnin James Hyal##1301 |goto Wetlands 10.8,60.4
step
  only completed(1247)
  note Subdue Tapoke Jahn before he escapes, and then return to Mikhail in Menethil.
  use Tapoke "Slim" Jahn##4962 |q 1249 |goto Wetlands 10.54,60.26 |tip {useit}
step
  only completed(1247)
  talk Mikhail##4963
  turnin The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  only completed(1247)
  talk Tapoke "Slim" Jahn##4962
  accept The Missing Diplomat##1250 |goto Wetlands 10.54,60.26
step
  only completed(1247)
  note Speak to Mikhail in the Wetlands.
  talk Mikhail##4963
  turnin The Missing Diplomat##1250 |goto Wetlands 10.6,60.77
step
  note Destroy the cache of explosives.
  click Cache of Explosives##2704 |q 633 |goto Arathi Highlands 48.79,88.05
step
  talk Rhag Garmason##1075
  turnin The Thandol Span##633 |goto Wetlands 49.9,18.24
step
  talk Rhag Garmason##1075
  accept Plea To The Alliance##634 |goto Wetlands 49.9,18.24
step
  note Seek out Captain Nials at Refuge Pointe.
  talk Captain Nials##2700
  turnin Plea To The Alliance##634 |goto Arathi Highlands 45.83,47.56 |tip {turninat}Arathi Highlands
step
  note {travel}Ashenvale
  goto Ashenvale 49.48,67.09
]])
