-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Wetlands (30-33)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Hillsbrad Foothills (30-32)",
	rev = "06b76f50",
}, [[
step
  only completed(393)
  talk Master Mathias Shaw##332
  accept Look to an Old Friend##350 |goto Stormwind City 78.31,70.74
step
  only completed(1245)
  talk Elling Trias##482
  accept The Missing Diplomat##1246 |goto Stormwind City 66.03,74.1
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
  only completed(464)
  turnin Nek'rosh's Gambit##465 |goto Wetlands 47.46,47.01
step
  talk Motley Garmason##1074
  accept The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  talk Rhag Garmason##1075
  accept The Thandol Span##631 |goto Wetlands 49.9,18.24
step
  only completed(464)
  click Dragonmaw Catapult##1609
  accept Defeat Nek'rosh##474 |goto Wetlands 47.46,47.01
step
  only completed(289)
  note Get the Intrepid Strongbox Key from Captain Halyndor.
  collect Intrepid Strongbox Key##2629 |q 290 |goto Wetlands 15.45,23.61 |tip {dropsfrom}Captain Halyndor
step
  note Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists.
  kill Dark Iron Dwarf##1051 |q 303 |goto Wetlands 59.93,23.02 |elite
step
  only completed(464)
  note Kill Chieftain Nek'rosh
  kill Chieftain Nek'rosh##2091 |goto Wetlands 53.51,54.67 |elite
  collect Nek'rosh's Head##3625 |q 474 |goto Wetlands 53.51,54.67
step
  only completed(289)
  turnin Lifting the Curse##290 |goto Wetlands 14.38,24.04
step
  talk Motley Garmason##1074
  turnin The Dark Iron War##303 |goto Wetlands 49.67,18.23
step
  turnin The Thandol Span##631 |goto Wetlands 51.28,7.95
step
  only completed(289)
  click Intrepid's Locked Strongbox##112948
  accept The Eye of Paleth##292 |goto Wetlands 14.38,24.04
step
  click Ebenezer Rustlocke's Corpse##2652
  accept The Thandol Span##632 |goto Wetlands 51.28,7.95
step
  talk Rhag Garmason##1075
  turnin The Thandol Span##632 |goto Wetlands 49.9,18.24
step
  talk Rhag Garmason##1075
  accept The Thandol Span##633 |goto Wetlands 49.9,18.24
step
  only completed(289)
  talk Glorin Steelbrow##1217
  turnin The Eye of Paleth##292 |goto Wetlands 10.58,60.59
step
  only completed(464)
  talk Captain Stoutfist##2104
  turnin Defeat Nek'rosh##474 |goto Wetlands 9.86,57.49
step
  only completed(289)
  talk Glorin Steelbrow##1217
  accept Cleansing the Eye##293 |goto Wetlands 10.58,60.59
step
  talk Longbraid the Grim##1071
  accept A Grim Task##304 |goto Wetlands 49.8,18.26
step
  note Kill Balgaras the Foul and bring his ear to Longbraid the Grim outside of Dun Modr.
  kill Balgaras the Foul##1364 |goto Wetlands 62.49,28.42 |elite
  collect Ear of Balgaras##3639 |q 304 |goto Wetlands 62.49,28.42
step
  talk Longbraid the Grim##1071
  turnin A Grim Task##304 |goto Wetlands 49.8,18.26
step
  only completed(393)
  talk Elling Trias##482
  turnin Look to an Old Friend##350 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  only completed(1245)
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1246 |goto Stormwind City 74.26,59.17 |tip {turninat}Stormwind City
step
  talk Connor Rivers##5081
  accept James Hyal##1301 |goto Stormwind City 51.12,95.52
step
  talk Vincent Hyal##5082
  turnin James Hyal##1301 |goto Wetlands 10.8,60.4
step
  only completed(1245)
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1447 |goto Stormwind City 74.26,59.17
step
  only completed(393)
  talk Elling Trias##482
  accept Infiltrating the Castle##2745 |goto Stormwind City 66.03,74.1
step
  only completed(1245)
  note Defeat Dashel Stonefist in Stormwind.
  talk Dashel Stonefist##4961 |q 1447 |goto Stormwind City 74.26,59.17
step
  only completed(1245)
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1447 |goto Stormwind City 74.26,59.17 |tip {turninat}Stormwind City
step
  only completed(393)
  talk Tyrion##7766
  turnin Infiltrating the Castle##2745 |goto Stormwind City 73.23,35.58 |tip {turninat}Stormwind City
step
  only completed(289)
  talk Archbishop Benedictus##1284
  turnin Cleansing the Eye##293 |goto Stormwind City 50.31,45.47 |tip {turninat}Stormwind City
step
  only completed(1245)
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1247 |goto Stormwind City 74.26,59.17
step
  note Destroy the cache of explosives.
  collect Cache of Explosives##2704 |q 633 |goto Arathi Highlands 48.79,88.05
step
  talk Rhag Garmason##1075
  turnin The Thandol Span##633 |goto Wetlands 49.9,18.24
step
  only completed(1245)
  talk Elling Trias##482
  turnin The Missing Diplomat##1247 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  talk Rhag Garmason##1075
  accept Plea To The Alliance##634 |goto Wetlands 49.9,18.24
step
  only completed(1245)
  talk Elling Trias##482
  accept The Missing Diplomat##1248 |goto Stormwind City 66.03,74.1
step
  talk Captain Nials##2700
  turnin Plea To The Alliance##634 |goto Arathi Highlands 45.83,47.56 |tip {turninat}Arathi Highlands
step
  only completed(1245)
  talk Mikhail##4963
  turnin The Missing Diplomat##1248 |goto Wetlands 10.6,60.77
step
  only completed(1245)
  talk Mikhail##4963
  accept The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  only completed(1245)
  note Subdue Tapoke Jahn before he escapes, and then return to Mikhail in Menethil.
  use Tapoke "Slim" Jahn##4962 |q 1249 |goto Wetlands 10.54,60.26 |tip {useit}
step
  only completed(1245)
  talk Mikhail##4963
  turnin The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  only completed(1245)
  talk Tapoke "Slim" Jahn##4962
  accept The Missing Diplomat##1250 |goto Wetlands 10.54,60.26
step
  only completed(1245)
  talk Mikhail##4963
  turnin The Missing Diplomat##1250 |goto Wetlands 10.6,60.77
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 50.53,70.01
]])
