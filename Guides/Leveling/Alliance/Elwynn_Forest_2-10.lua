-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Elwynn Forest (2-10)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Teldrassil (4-12)",
}, [[
step
  talk Deputy Willem##823
  accept A Threat Within##783 |goto Elwynn Forest 48.17,42.94
step
  talk Falkhaan Isenstrider##6774
  accept Rest and Relaxation##2158 |goto Elwynn Forest 45.56,47.74
step
  only Human Priest
  talk Priestess Anetta##375
  accept In Favor of the Light##5623 |goto Elwynn Forest 49.81,39.49
step
  only Human Priest
  talk Priestess Josetta##377
  turnin In Favor of the Light##5623 |goto Elwynn Forest 43.28,65.72
step
  talk Innkeeper Farley##295
  turnin Rest and Relaxation##2158 |goto Elwynn Forest 43.77,65.8
step
  talk Remy "Two Times"##241
  accept A Fishy Peril##40 |goto Elwynn Forest 42.14,67.26
step
  talk Remy "Two Times"##241
  accept Gold Dust Exchange##47 |goto Elwynn Forest 42.14,67.26
step
  note Bring 10 Gold Dust to Remy "Two Times" in Goldshire. Gold Dust is gathered from Kobolds in Elwynn Forest.
  kill Kobold Miner##40 |q 47 |goto Elwynn Forest 60.64,59.83
step
  talk William Pestle##253
  accept Kobold Candles##60 |goto Elwynn Forest 43.32,65.7
step
  note Bring 8 Large Candles to William Pestle in Goldshire.
  kill Kobold Miner##40 |q 60 |goto Elwynn Forest 60.64,59.83
step
  talk Marshal Dughan##240
  accept The Fargodeep Mine##62 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  accept Report to Gryan Stoutmantle##109 |goto Elwynn Forest 42.11,65.93
step
  talk Smith Argus##514
  accept Return to Verner##119 |goto Elwynn Forest 41.71,65.54
step
  talk Marshal Dughan##240
  accept Manhunt##147 |goto Elwynn Forest 42.11,65.93
step
  note Find and kill "the Collector" then return to Marshal Dughan with The Collector's Ring.
  kill Morgan the Collector##473 |q 147 |goto Elwynn Forest 71.09,80.65
step
  talk Smith Argus##514
  accept Elmore's Task##1097 |goto Elwynn Forest 41.71,65.54
step
  only Human Warlock
  talk Zaldimar Wefhellt##328
  accept Speak with Jennea##1860 |goto Elwynn Forest 43.25,66.19
step
  only Human Rogue
  talk Keryn Sylvius##917
  accept Seek out SI: 7##2205 |goto Elwynn Forest 43.87,65.94
step
  only Human Priest
  talk Priestess Josetta##377
  accept Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
step
  only NightElf Priest
  talk Priestess Josetta##377
  accept Returning Home##5628 |goto Elwynn Forest 43.28,65.72
step
  only Priest
  talk Priestess Josetta##377
  accept Desperate Prayer##5635 |goto Elwynn Forest 43.28,65.72
step
  only Human Priest
  note Find Guard Roberts and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Priestess Josetta in Goldshire.
  kill Guard Roberts##12423 |q 5624 |goto Elwynn Forest 48.15,68.05
step
  only NightElf Priest
  talk Priestess Alathea##11401
  turnin Returning Home##5628 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  talk Maybell Maclure##251
  accept Young Lovers##106 |goto Elwynn Forest 43.15,89.62
step
  only Human Warlock
  talk Jennea Cannon##5497
  turnin Speak with Jennea##1860 |goto Stormwind City 38.62,79.3 |tip {turninat}Stormwind City
step
  talk Tommy Joe Stonefield##252
  turnin Young Lovers##106 |goto Elwynn Forest 29.84,86.0
step
  talk "Auntie" Bernice Stonefield##246
  accept Lost Necklace##85 |goto Elwynn Forest 34.49,84.25
step
  talk Ma Stonefield##244
  accept Princess Must Die!##88 |goto Elwynn Forest 34.66,84.48
step
  note Kill Princess, grab her collar, then bring it back to Ma Stonefield at the Stonefield Farm.
  kill Princess##330 |q 88 |goto Elwynn Forest 69.66,79.25
step
  talk Tommy Joe Stonefield##252
  accept Speak with Gramma##111 |goto Elwynn Forest 29.84,86.0
step
  talk Guard Thomas##261
  accept Deliver Thomas' Report##39 |goto Elwynn Forest 73.97,72.18
step
  talk Guard Thomas##261
  accept Bounty on Murlocs##46 |goto Elwynn Forest 73.97,72.18
step
  note Bring 8 Torn Murloc Fins to Guard Thomas at the east Elwynn bridge.
  kill Murloc Forager##46 |q 46 |goto Elwynn Forest 78.45,56.16
step
  talk Guard Thomas##261
  accept Protect the Frontier##52 |goto Elwynn Forest 73.97,72.18
step
  only Human Rogue
  talk Master Mathias Shaw##332
  turnin Seek out SI: 7##2205 |goto Stormwind City 75.78,59.84 |tip {turninat}Stormwind City
step
  talk Sara Timberlain##278
  accept Red Linen Goods##83 |goto Elwynn Forest 79.46,68.79
step
  note Bring 6 Red Linen Bandanas to Sara Timberlain at the Eastvale Logging Camp.
  kill Defias Bandit##116 |q 83 |goto Elwynn Forest 47.48,74.93
step
  only Warrior
  talk Marshal Haggard##294
  accept Dead-tooth Jack##1667 |goto Elwynn Forest 84.61,69.38
step
  only Warrior
  note Retrieve Haggard's Badge from Dead-tooth Jack's camp, and return to Marshal Haggard.
  collect Dead-tooth's Strongbox##85563 |q 1667 |goto Elwynn Forest 89.33,78.88
step
  talk Supervisor Raelen##10616
  accept A Bundle of Trouble##5545 |goto Elwynn Forest 81.38,66.11
step
  note Bring 8 Bundles of Wood to Raelen at the Eastvale Logging Camp.
  collect Bundle of Wood##176793 |q 5545 |goto Elwynn Forest 80.24,60.97
step
  note Kill 8 Prowlers and 5 Young Forest Bears, and then return to Guard Thomas at the east Elwynn bridge.
  kill Prowler##118 |q 52 |goto Elwynn Forest 80.51,70.87
step
  only Priest
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5635 |goto Stormwind City 38.58,26.06 |tip {turninat}Stormwind City
step
  talk Grimand Elmore##1416
  turnin Elmore's Task##1097 |goto Stormwind City 51.76,12.08 |tip {turninat}Stormwind City
step
  talk Marshal McBride##197
  turnin A Threat Within##783 |goto Elwynn Forest 48.92,41.61
step
  talk Gryan Stoutmantle##234
  turnin Report to Gryan Stoutmantle##109 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  talk Verner Osgood##415
  turnin Return to Verner##119 |goto Redridge Mountains 30.97,47.27 |tip {turninat}Redridge Mountains
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  talk Deputy Willem##823
  accept Brotherhood of Thieves##18 |goto Elwynn Forest 48.17,42.94
step
  note Bring 12 Red Burlap Bandanas to Deputy Willem outside the Northshire Abbey.
  kill Defias Thug##38 |q 18 |goto Elwynn Forest 54.47,48.13
step
  talk Deputy Willem##823
  accept Eagan Peltskinner##5261 |goto Elwynn Forest 48.17,42.94
step
  note Kill 10 Kobold Vermin, then return to Marshal McBride.
  kill Kobold Vermin##6 |q 7 |goto Elwynn Forest 49.27,36.26
step
  talk Marshal Dughan##240
  turnin Manhunt##147 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  turnin Deliver Thomas' Report##39 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  turnin A Fishy Peril##40 |goto Elwynn Forest 42.11,65.93
step
  talk Remy "Two Times"##241
  turnin Gold Dust Exchange##47 |goto Elwynn Forest 42.14,67.26
step
  only Human Priest
  talk Priestess Josetta##377
  turnin Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
step
  talk William Pestle##253
  turnin Kobold Candles##60 |goto Elwynn Forest 43.32,65.7
step
  talk Marshal Dughan##240
  turnin The Fargodeep Mine##62 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  accept Further Concerns##35 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  accept Cloth and Leather Armor##59 |goto Elwynn Forest 42.11,65.93
step
  talk William Pestle##253
  accept Shipment to Stormwind##61 |goto Elwynn Forest 43.32,65.7
step
  talk Marshal Dughan##240
  accept The Jasperlode Mine##76 |goto Elwynn Forest 42.11,65.93
step
  only Rogue
  talk Keryn Sylvius##917
  accept SI:7##2300 |goto Elwynn Forest 43.87,65.94
step
  talk Billy Maclure##247
  turnin Lost Necklace##85 |goto Elwynn Forest 43.13,85.72
step
  talk Billy Maclure##247
  accept Pie for Billy##86 |goto Elwynn Forest 43.13,85.72
step
  note Bring 4 Chunks of Boar Meat to Auntie Bernice Stonefield at the Stonefield's Farm.
  kill Stonetusk Boar##113 |q 86 |goto Elwynn Forest 38.75,85.14
step
  talk "Auntie" Bernice Stonefield##246
  turnin Pie for Billy##86 |goto Elwynn Forest 34.49,84.25
step
  talk Ma Stonefield##244
  turnin Princess Must Die!##88 |goto Elwynn Forest 34.66,84.48
step
  talk Gramma Stonefield##248
  turnin Speak with Gramma##111 |goto Elwynn Forest 34.94,83.86
step
  talk "Auntie" Bernice Stonefield##246
  accept Back to Billy##84 |goto Elwynn Forest 34.49,84.25
step
  talk Gramma Stonefield##248
  accept Note to William##107 |goto Elwynn Forest 34.94,83.86
step
  talk Guard Thomas##261
  turnin Further Concerns##35 |goto Elwynn Forest 73.97,72.18
step
  talk Guard Thomas##261
  turnin Bounty on Murlocs##46 |goto Elwynn Forest 73.97,72.18
step
  talk Guard Thomas##261
  turnin Protect the Frontier##52 |goto Elwynn Forest 73.97,72.18
step
  talk Guard Thomas##261
  accept Find the Lost Guards##37 |goto Elwynn Forest 73.97,72.18
step
  only Warrior
  talk Marshal Haggard##294
  turnin Dead-tooth Jack##1667 |goto Elwynn Forest 84.61,69.38
step
  talk Sara Timberlain##278
  turnin Red Linen Goods##83 |goto Elwynn Forest 79.46,68.79
step
  talk Supervisor Raelen##10616
  turnin A Bundle of Trouble##5545 |goto Elwynn Forest 81.38,66.11
step
  talk Sara Timberlain##278
  turnin Cloth and Leather Armor##59 |goto Elwynn Forest 79.46,68.79
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin SI:7##2300 |goto Stormwind City 75.76,60.36 |tip {turninat}Stormwind City
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  talk Eagan Peltskinner##196
  turnin Eagan Peltskinner##5261 |goto Elwynn Forest 48.94,40.16
step
  talk Deputy Willem##823
  turnin Brotherhood of Thieves##18 |goto Elwynn Forest 48.17,42.94
step
  talk Deputy Willem##823
  accept Bounty on Garrick Padfoot##6 |goto Elwynn Forest 48.17,42.94
step
  note Kill Garrick Padfoot and bring his head to Deputy Willem at Northshire Abbey.
  kill Garrick Padfoot##103 |q 6 |goto Elwynn Forest 57.52,48.25
step
  talk Marshal McBride##197
  accept Investigate Echo Ridge##15 |goto Elwynn Forest 48.92,41.61
step
  talk Eagan Peltskinner##196
  accept Wolves Across the Border##33 |goto Elwynn Forest 48.94,40.16
step
  note Bring 8 pieces of Tough Wolf Meat to Eagan Peltskinner outside Northshire Abbey.
  kill Timber Wolf##69 |q 33 |goto Elwynn Forest 49.48,39.15
step
  only Human Warrior
  talk Marshal McBride##197
  accept Simple Letter##3100 |goto Elwynn Forest 48.92,41.61
step
  only Human Paladin
  talk Marshal McBride##197
  accept Consecrated Letter##3101 |goto Elwynn Forest 48.92,41.61
step
  only Human Rogue
  talk Marshal McBride##197
  accept Encrypted Letter##3102 |goto Elwynn Forest 48.92,41.61
step
  only Human Priest
  talk Marshal McBride##197
  accept Hallowed Letter##3103 |goto Elwynn Forest 48.92,41.61
step
  only Human Warlock
  talk Marshal McBride##197
  accept Glyphic Letter##3104 |goto Elwynn Forest 48.92,41.61
step
  only Human Druid
  talk Marshal McBride##197
  accept Tainted Letter##3105 |goto Elwynn Forest 48.92,41.61
step
  note Kill 10 Kobold Workers, then report back to Marshal McBride.
  kill Kobold Worker##257 |q 15 |goto Elwynn Forest 48.4,34.27
step
  talk Marshal Dughan##240
  turnin The Jasperlode Mine##76 |goto Elwynn Forest 42.11,65.93
step
  talk William Pestle##253
  turnin Note to William##107 |goto Elwynn Forest 43.32,65.7
step
  talk Morgan Pestle##279
  turnin Shipment to Stormwind##61 |goto Stormwind City 56.2,64.58 |tip {turninat}Stormwind City
step
  talk William Pestle##253
  accept Collecting Kelp##112 |goto Elwynn Forest 43.32,65.7
step
  note Bring 4 Crystal Kelp Fronds to William Pestle in Goldshire.
  kill Murloc##285 |q 112 |goto Elwynn Forest 54.82,66.73
step
  talk Marshal Dughan##240
  accept Westbrook Garrison Needs Help!##239 |goto Elwynn Forest 42.11,65.93
step
  talk Billy Maclure##247
  turnin Back to Billy##84 |goto Elwynn Forest 43.13,85.72
step
  talk Billy Maclure##247
  accept Goldtooth##87 |goto Elwynn Forest 43.13,85.72
step
  note Bring Bernice's Necklace to "Auntie" Bernice Stonefield at the Stonefield Farm.
  kill Goldtooth##327 |q 87 |goto Elwynn Forest 41.71,78.03
step
  talk "Auntie" Bernice Stonefield##246
  turnin Goldtooth##87 |goto Elwynn Forest 34.49,84.25
step
  talk Deputy Rainer##963
  turnin Westbrook Garrison Needs Help!##239 |goto Elwynn Forest 24.23,74.45
step
  talk Deputy Rainer##963
  accept Riverpaw Gnoll Bounty##11 |goto Elwynn Forest 24.23,74.45
step
  note Bring 8 Painted Gnoll Armbands to Deputy Rainer at the Barracks.
  kill Riverpaw Runt##97 |q 11 |goto Elwynn Forest 66.09,46.34
step
  turnin Find the Lost Guards##37 |goto Elwynn Forest 72.66,60.34
step
  talk Deputy Willem##823
  turnin Bounty on Garrick Padfoot##6 |goto Elwynn Forest 48.17,42.94
step
  talk Marshal McBride##197
  turnin Investigate Echo Ridge##15 |goto Elwynn Forest 48.92,41.61
step
  only Human Warrior
  talk Llane Beshere##911
  turnin Simple Letter##3100 |goto Elwynn Forest 50.24,42.29
step
  only Human Paladin
  talk Brother Sammuel##925
  turnin Consecrated Letter##3101 |goto Elwynn Forest 50.43,42.12
step
  only Human Rogue
  talk Jorik Kerridan##915
  turnin Encrypted Letter##3102 |goto Elwynn Forest 50.31,39.92
step
  only Human Priest
  talk Priestess Anetta##375
  turnin Hallowed Letter##3103 |goto Elwynn Forest 49.81,39.49
step
  only Human Warlock
  talk Khelden Bremen##198
  turnin Glyphic Letter##3104 |goto Elwynn Forest 49.66,39.4
step
  talk Eagan Peltskinner##196
  turnin Wolves Across the Border##33 |goto Elwynn Forest 48.94,40.16
step
  only Human Druid
  talk Drusilla La Salle##459
  turnin Tainted Letter##3105 |goto Elwynn Forest 49.87,42.65
step
  talk Marshal McBride##197
  accept Skirmish at Echo Ridge##21 |goto Elwynn Forest 48.92,41.61
step
  talk Deputy Willem##823
  accept Milly Osworth##3903 |goto Elwynn Forest 48.17,42.94
step
  note Kill 12 Kobold Laborers, then return to Marshal McBride at Northshire Abbey.
  kill Kobold Laborer##80 |q 21 |goto Elwynn Forest 48.64,28.34
step
  talk William Pestle##253
  turnin Collecting Kelp##112 |goto Elwynn Forest 43.32,65.7
step
  talk William Pestle##253
  accept The Escape##114 |goto Elwynn Forest 43.32,65.7
step
  talk Maybell Maclure##251
  turnin The Escape##114 |goto Elwynn Forest 43.15,89.62
step
  talk Deputy Rainer##963
  turnin Riverpaw Gnoll Bounty##11 |goto Elwynn Forest 24.23,74.45
step
  talk Marshal McBride##197
  turnin Skirmish at Echo Ridge##21 |goto Elwynn Forest 48.92,41.61
step
  talk Milly Osworth##9296
  turnin Milly Osworth##3903 |goto Elwynn Forest 50.69,39.35
step
  talk Marshal McBride##197
  accept Report to Goldshire##54 |goto Elwynn Forest 48.92,41.61
step
  talk Milly Osworth##9296
  accept Milly's Harvest##3904 |goto Elwynn Forest 50.69,39.35
step
  note Bring 8 crates of Milly's Harvest to Milly Osworth at Northshire Abbey.
  collect Milly's Harvest##161557 |q 3904 |goto Elwynn Forest 53.93,48.89
step
  talk Marshal Dughan##240
  turnin Report to Goldshire##54 |goto Elwynn Forest 42.11,65.93
step
  talk Milly Osworth##9296
  turnin Milly's Harvest##3904 |goto Elwynn Forest 50.69,39.35
step
  talk Milly Osworth##9296
  accept Grape Manifest##3905 |goto Elwynn Forest 50.69,39.35
step
  talk Brother Neals##952
  turnin Grape Manifest##3905 |goto Elwynn Forest 49.47,41.59
step
  note {travel}Teldrassil
  goto Teldrassil 59.92,42.47
]])
