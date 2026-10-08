-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Elwynn Forest (3-10)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Loch Modan (11-18)",
	rev = "6fee6348",
}, [[
step
  talk Deputy Willem##823
  accept A Threat Within##783 |goto Elwynn Forest 48.17,42.94
step
  talk Brother Paxton##951
  accept Rascally Rodents##91743 |goto Elwynn Forest 49.61,40.41
step
  talk Brother Paxton##951
  accept Mining Consultant##91745 |goto Elwynn Forest 49.61,40.41
step
  talk Brother Paxton##951
  accept Book Inventory##92124 |goto Elwynn Forest 49.61,40.41
step
  only Human Warrior
  talk Marshal McBride##197
  accept A Scribbled Letter##92479 |goto Elwynn Forest 48.92,41.61
step
  only Warlock not completed(1599) not haveq(1599)
  talk Drusilla La Salle##459
  accept The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
step
  talk Marshal McBride##197
  accept Follow That Kobold!##91758 |goto Elwynn Forest 48.92,41.61
step
  talk Tordrin Sternblade##248415
  accept Shhh! We're Hunting Kobolds##91772 |goto Elwynn Forest 51.19,40.74
step
  only Warlock not completed(1599) not haveq(1599)
  note Retrieve the Powers of the Void for Drusilla La Salle.
  collect Powers of the Void##6785 |q 1598 |goto Elwynn Forest 56.71,43.96 |tip {dropsfrom}Stolen Books
step
  talk Marshal McBride##197
  turnin A Threat Within##783 |goto Elwynn Forest 48.92,41.61
step
  only Warlock not completed(1599) not haveq(1599)
  talk Drusilla La Salle##459
  turnin The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
step
  talk Tordrin Sternblade##248415
  turnin Follow That Kobold!##91758 |goto Elwynn Forest 51.19,40.74
step
  talk Daniel##247229
  turnin Book Inventory##92124 |goto Elwynn Forest 49.51,40.57
step
  only Human Warrior
  talk Tordrin Sternblade##248415
  turnin A Scribbled Letter##92479 |goto Elwynn Forest 51.19,40.74
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  talk Deputy Willem##823
  accept Eagan Peltskinner##5261 |goto Elwynn Forest 48.17,42.94
step
  talk Deputy Willem##823
  accept Brotherhood of Thieves##18 |goto Elwynn Forest 48.17,42.94
step
  note Bring 12 Red Burlap Bandanas to Deputy Willem outside the Northshire Abbey.
  collect 12 Red Burlap Bandana##752 |q 18 |goto Elwynn Forest 54.14,47.84 |tip {dropsfrom}Defias Thug
step
  talk Deputy Willem##823
  turnin Brotherhood of Thieves##18 |goto Elwynn Forest 48.17,42.94
step
  talk Eagan Peltskinner##196
  turnin Eagan Peltskinner##5261 |goto Elwynn Forest 48.94,40.16
step
  talk Eagan Peltskinner##196
  accept Wolves Across the Border##33 |goto Elwynn Forest 48.94,40.16
step
  talk Deputy Willem##823
  accept Milly Osworth##3903 |goto Elwynn Forest 48.17,42.94
step
  talk Milly Osworth##9296
  accept Milly's Harvest##3904 |goto Elwynn Forest 50.69,39.35
step
  note Bring 8 pieces of Tough Wolf Meat to Eagan Peltskinner outside Northshire Abbey.
  collect 8 Tough Wolf Meat##750 |q 33 |goto Elwynn Forest 49.41,37.75 |tip {dropsfrom}Timber Wolf, Young Wolf, Ragged Timber Wolf
step
  note Bring 8 crates of Milly's Harvest to Milly Osworth at Northshire Abbey.
  collect 8 Milly's Harvest##11119 |q 3904 |goto Elwynn Forest 53.93,48.78
step
  talk Eagan Peltskinner##196
  turnin Wolves Across the Border##33 |goto Elwynn Forest 48.94,40.16
step
  talk Milly Osworth##9296
  turnin Milly Osworth##3903 |goto Elwynn Forest 50.69,39.35
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
  talk Kelsey Fargo##247226
  turnin Mining Consultant##91745 |goto Elwynn Forest 47.19,32.32
step
  kill Kobold Vermin##6 |goto Elwynn Forest 49.17,36.55 |tip Loot the quest item here — it starts the quest.
  accept Nibbled-On Book##91741 |goto Elwynn Forest 49.17,36.55
step
  talk Kelsey Fargo##247226
  accept The Big Picture##91752 |goto Elwynn Forest 47.19,32.32
step
  note Kill 10 Kobold Vermin, then return to Marshal McBride.
  kill Kobold Vermin##6 |q 7 |goto Elwynn Forest 49.17,36.55
step
  note Retrieve 8 Stolen Books from kobolds in Northshire Valley and return them to Brother Paxton.
  collect 8 Stolen Book##247839 |q 91743 |goto Elwynn Forest 49.17,36.55 |tip {dropsfrom}Kobold Vermin, Kobold Laborer, Kobold Worker
step
  note Retrieve a Sack of "Picture" Books from Shinyfinder Narf. Bring the sack to Marshal McBride just inside Northshire's Abbey.
  collect Sack of "Picture" Books##247886 |q 91752 |goto Elwynn Forest 48.95,27.97 |tip {dropsfrom}Shinyfinder Narf
step
  talk Marshal Dughan##240
  turnin Shhh! We're Hunting Kobolds##91772 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  talk Brother Paxton##951
  turnin Nibbled-On Book##91741 |goto Elwynn Forest 49.61,40.41
step
  talk Brother Paxton##951
  turnin Rascally Rodents##91743 |goto Elwynn Forest 49.61,40.41
step
  talk Marshal McBride##197
  turnin The Big Picture##91752 |goto Elwynn Forest 48.92,41.61
step
  talk Marshal McBride##197
  accept Investigate Echo Ridge##15 |goto Elwynn Forest 48.92,41.61
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
  only Human Mage
  talk Marshal McBride##197
  accept Glyphic Letter##3104 |goto Elwynn Forest 48.92,41.61
step
  only Human Warlock
  talk Marshal McBride##197
  accept Tainted Letter##3105 |goto Elwynn Forest 48.92,41.61
step
  talk Deputy Willem##823
  accept Bounty on Garrick Padfoot##6 |goto Elwynn Forest 48.17,42.94
step
  talk Falkhaan Isenstrider##6774
  accept Rest and Relaxation##2158 |goto Elwynn Forest 45.56,47.74
step
  note Kill Garrick Padfoot and bring his head to Deputy Willem at Northshire Abbey.
  collect Garrick's Head##182 |q 6 |goto Elwynn Forest 57.52,48.25 |tip {dropsfrom}Garrick Padfoot
step
  talk Deputy Willem##823
  turnin Bounty on Garrick Padfoot##6 |goto Elwynn Forest 48.17,42.94
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
  only Human Mage
  talk Khelden Bremen##198
  turnin Glyphic Letter##3104 |goto Elwynn Forest 49.66,39.4
step
  only Human Warlock
  talk Drusilla La Salle##459
  turnin Tainted Letter##3105 |goto Elwynn Forest 49.87,42.65
step
  note Kill 10 Kobold Workers, then report back to Marshal McBride.
  kill Kobold Worker##257 |q 15 |goto Elwynn Forest 48.09,34.03
step
  talk Innkeeper Farley##295
  turnin Rest and Relaxation##2158 |goto Elwynn Forest 43.77,65.8
step
  talk Marshal Dughan##240
  accept Book Return##91775 |goto Elwynn Forest 42.11,65.93
step
  note Find 6 Lost Books and "Fun with Elementals" and return them to Marshal Dughan.
  collect 6 Picture Book: Fun with Elementals##248002 |q 91775 |goto Elwynn Forest 41.19,80.28 |tip {dropsfrom}Nimsy
step
  talk Marshal McBride##197
  turnin Investigate Echo Ridge##15 |goto Elwynn Forest 48.92,41.61
step
  talk Marshal McBride##197
  accept Skirmish at Echo Ridge##21 |goto Elwynn Forest 48.92,41.61
step
  only not completed(96628) not completed(96630) not completed(96638) not completed(96652) not completed(96656) not completed(96659) not haveq(96628) not haveq(96630) not haveq(96638) not haveq(96652) not haveq(96656) not haveq(96659)
  talk Marshal McBride##197
  accept The Adventurer##96627 |goto Elwynn Forest 48.92,41.61
step
  note Kill 12 Kobold Laborers, then return to Marshal McBride at Northshire Abbey.
  kill Kobold Laborer##80 |q 21 |goto Elwynn Forest 48.47,28.05
step
  talk Marshal Dughan##240
  turnin Book Return##91775 |goto Elwynn Forest 42.11,65.93
step
  only not completed(96628) not completed(96630) not completed(96638) not completed(96652) not completed(96656) not completed(96659) not haveq(96628) not haveq(96630) not haveq(96638) not haveq(96652) not haveq(96656) not haveq(96659)
  talk Sam Sarsaparilla##263399
  turnin The Adventurer##96627 |goto Elwynn Forest 44.91,63.4
step
  only not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not completed(96608) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607) not haveq(96608)
  talk Sam Sarsaparilla##263399
  accept The Great Outdoors##95998 |goto Elwynn Forest 44.91,63.4
step
  only not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not completed(96608) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607) not haveq(96608)
  note Sit near Sam's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  collect Basic Campfire##450004 |q 95998 |goto Elwynn Forest 44.94,63.2
step
  only not completed(96101) not completed(96604) not completed(96605) not completed(96606) not completed(96607) not completed(96608) not haveq(96101) not haveq(96604) not haveq(96605) not haveq(96606) not haveq(96607) not haveq(96608)
  talk Sam Sarsaparilla##263399
  turnin The Great Outdoors##95998 |goto Elwynn Forest 44.91,63.4
step
  only not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  talk Sam Sarsaparilla##263399
  accept Camping 101: Cooking##96626 |goto Elwynn Forest 44.91,63.4
step
  only not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  note Speak with Tomas in Goldshire to learn to become a cook.
  talk Tomas##1430 |q 96626 |goto Elwynn Forest 44.37,65.99
step
  only not completed(96629) not completed(96634) not completed(96646) not completed(96655) not completed(96658) not completed(96661) not haveq(96629) not haveq(96634) not haveq(96646) not haveq(96655) not haveq(96658) not haveq(96661)
  talk Tomas##1430
  turnin Camping 101: Cooking##96626 |goto Elwynn Forest 44.37,65.99
step
  talk Marshal McBride##197
  turnin Skirmish at Echo Ridge##21 |goto Elwynn Forest 48.92,41.61
step
  talk Marshal McBride##197
  accept Report to Goldshire##54 |goto Elwynn Forest 48.92,41.61
step
  talk Marshal Dughan##240
  turnin Report to Goldshire##54 |goto Elwynn Forest 42.11,65.93
step
  only Human Priest
  talk Priestess Anetta##375
  accept In Favor of the Light##5623 |goto Elwynn Forest 49.81,39.49
step
  only Human Priest
  talk Priestess Josetta##377
  turnin In Favor of the Light##5623 |goto Elwynn Forest 43.28,65.72
step
  talk Remy "Two Times"##241
  accept Gold Dust Exchange##47 |goto Elwynn Forest 42.14,67.26
step
  talk William Pestle##253
  accept Kobold Candles##60 |goto Elwynn Forest 43.32,65.7
step
  talk Marshal Dughan##240
  accept The Fargodeep Mine##62 |goto Elwynn Forest 42.11,65.93
step
  only Human Priest
  talk Priestess Josetta##377
  accept Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
step
  talk Helene Peltskinner##6306
  accept Rough Wolf Pelts##91751 |goto Elwynn Forest 46.24,62.24
step
  talk Marshal Dughan##240
  accept Rare Books##91777 |goto Elwynn Forest 42.11,65.93
step
  talk Jason Mathers##383
  accept A Net Disaster##99127 |goto Elwynn Forest 47.46,62.18
step
  talk Jason Mathers##383
  accept Slimy Menace##99128 |goto Elwynn Forest 47.46,62.18
step
  talk Jason Mathers##383
  accept A Man About a Murloc##99129 |goto Elwynn Forest 47.46,62.18
step
  talk Remy "Two Times"##241
  accept An Enticing Offer##99130 |goto Elwynn Forest 42.14,67.26
step
  talk Remy "Two Times"##241
  accept Baited for Success##99131 |goto Elwynn Forest 42.14,67.26
step
  talk Lee Brown##1651
  accept Bottles and Baubles##99143 |goto Elwynn Forest 47.61,62.32
step
  only Human Priest
  note Find Guard Roberts and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Priestess Josetta in Goldshire.
  talk Guard Roberts##12423 |q 5624 |goto Elwynn Forest 48.15,68.05
step
  note Check the fishing traps in Crystal Lake.
  collect Half-Eaten Fish##286205 |q 99127 |goto Elwynn Forest 48.8,64.7 |tip {dropsfrom}Fishing Trap
step
  note Kill the murlocs at Crystal Lake.
  kill Murloc Streamrunner##735 |q 99128 |goto Elwynn Forest 51.98,66.25
step
  talk Marshal Dughan##240
  turnin The Fargodeep Mine##62 |goto Elwynn Forest 42.11,65.93
step
  only Human Priest
  talk Priestess Josetta##377
  turnin Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
step
  talk Jason Mathers##383
  turnin A Net Disaster##99127 |goto Elwynn Forest 47.46,62.18
step
  talk Jason Mathers##383
  turnin Slimy Menace##99128 |goto Elwynn Forest 47.46,62.18
step
  talk Remy "Two Times"##241
  turnin A Man About a Murloc##99129 |goto Elwynn Forest 42.14,67.26
step
  talk Jason Mathers##383
  turnin Baited for Success##99131 |goto Elwynn Forest 47.46,62.18
step
  talk "Auntie" Bernice Stonefield##246
  accept Lost Necklace##85 |goto Elwynn Forest 34.49,84.25
step
  talk Billy Maclure##247
  turnin Lost Necklace##85 |goto Elwynn Forest 43.13,85.72
step
  talk Billy Maclure##247
  accept Pie for Billy##86 |goto Elwynn Forest 43.13,85.72
step
  talk Maybell Maclure##251
  accept Young Lovers##106 |goto Elwynn Forest 43.15,89.62
step
  note Collect ingredients for murloc bait.
  collect Duskweed Petal##286214 |q 99130 |goto Elwynn Forest 41.2,86.1 |tip {dropsfrom}Overgrown Duskweed
step
  talk Kitta Firewind##11072
  accept An Enchanting Lesson##91753 |goto Elwynn Forest 64.93,70.71
step
  note Kitta Firewind in the Tower of Azora wants you to collect 3 Luminous Residue.
  collect 3 Luminous Residue##247884 |q 91753 |goto Elwynn Forest 64.93,70.71
step
  note Bring 10 Gold Dust to Remy "Two Times" in Goldshire. Gold Dust is gathered from Kobolds in Elwynn Forest.
  collect 10 Gold Dust##773 |q 47 |goto Elwynn Forest 60.91,59.71 |tip {dropsfrom}Kobold Miner, Goldtooth, Kobold Tunneler
step
  note Bring 8 Large Candles to William Pestle in Goldshire.
  collect 8 Large Candle##772 |q 60 |goto Elwynn Forest 60.91,59.71 |tip {dropsfrom}Kobold Miner, Goldtooth, Kobold Tunneler
step
  note Collect 6 pieces of shiny junk from the nearby Murloc camp.
  collect 6 Shiny Junk##286209 |q 99143 |goto Elwynn Forest 56.6,67.3 |tip {dropsfrom}Junk Pile
step
  talk Kitta Firewind##11072
  turnin An Enchanting Lesson##91753 |goto Elwynn Forest 64.93,70.71
step
  note Skin wolves around Elwynn Forest to obtain 7 Rough Wolf Pelts, then deliver them to Helene Peltskinner near Goldshire.
  collect 7 Rough Wolf Pelt##247877 |q 91751 |goto Elwynn Forest 83.83,71.99 |tip {dropsfrom}Prowler, Gray Forest Wolf
step
  note Recover "Geomancy for Curious Young Wizards" and "Arcane Explainer: Magical Stuff in Simple Words" and return them to Brother Paxton inside Northshire's Abbey.
  collect Geomancy for Curious Young Wizards##248003 |q 91777 |goto Elwynn Forest 61.08,49.34 |tip {dropsfrom}Geosculptor Yip
step
  talk Brother Paxton##951
  turnin Rare Books##91777 |goto Elwynn Forest 49.61,40.41
step
  talk Remy "Two Times"##241
  turnin Gold Dust Exchange##47 |goto Elwynn Forest 42.14,67.26
step
  talk William Pestle##253
  turnin Kobold Candles##60 |goto Elwynn Forest 43.32,65.7
step
  talk Helene Peltskinner##6306
  turnin Rough Wolf Pelts##91751 |goto Elwynn Forest 46.24,62.24
step
  talk Remy "Two Times"##241
  turnin An Enticing Offer##99130 |goto Elwynn Forest 42.14,67.26
step
  talk Lee Brown##1651
  turnin Bottles and Baubles##99143 |goto Elwynn Forest 47.61,62.32
step
  talk William Pestle##253
  accept Shipment to Stormwind##61 |goto Elwynn Forest 43.32,65.7
step
  talk Tommy Joe Stonefield##252
  turnin Young Lovers##106 |goto Elwynn Forest 29.84,86
step
  talk Tommy Joe Stonefield##252
  accept Speak with Gramma##111 |goto Elwynn Forest 29.84,86
step
  note Bring 4 Chunks of Boar Meat to Auntie Bernice Stonefield at the Stonefield's Farm.
  collect 4 Chunk of Boar Meat##769 |q 86 |goto Elwynn Forest 38.56,86.16 |tip {dropsfrom}Stonetusk Boar, Longsnout, Goretusk
step
  talk "Auntie" Bernice Stonefield##246
  turnin Pie for Billy##86 |goto Elwynn Forest 34.49,84.25
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
  talk Ma Stonefield##244
  accept Princess Must Die!##88 |goto Elwynn Forest 34.66,84.48
step
  talk Billy Maclure##247
  turnin Back to Billy##84 |goto Elwynn Forest 43.13,85.72
step
  talk Billy Maclure##247
  accept Goldtooth##87 |goto Elwynn Forest 43.13,85.72
step
  note Bring Bernice's Necklace to "Auntie" Bernice Stonefield at the Stonefield Farm.
  collect Bernice's Necklace##981 |q 87 |goto Elwynn Forest 41.71,78.03 |tip {dropsfrom}Goldtooth
step
  note Kill Princess, grab her collar, then bring it back to Ma Stonefield at the Stonefield Farm.
  collect Brass Collar##1006 |q 88 |goto Elwynn Forest 69.66,79.25 |tip {dropsfrom}Princess
step
  talk Sara Timberlain##278
  accept Red Linen Goods##83 |goto Elwynn Forest 79.46,68.79
step
  talk Supervisor Raelen##10616
  accept A Bundle of Trouble##5545 |goto Elwynn Forest 81.38,66.11
step
  note Bring 8 Bundles of Wood to Raelen at the Eastvale Logging Camp.
  collect 8 Bundle of Wood##13872 |q 5545 |goto Elwynn Forest 80.24,61.47
step
  talk Supervisor Raelen##10616
  turnin A Bundle of Trouble##5545 |goto Elwynn Forest 81.38,66.11
step
  talk William Pestle##253
  turnin Note to William##107 |goto Elwynn Forest 43.32,65.7
step
  talk William Pestle##253
  accept Collecting Kelp##112 |goto Elwynn Forest 43.32,65.7
step
  note Bring 6 Red Linen Bandanas to Sara Timberlain at the Eastvale Logging Camp.
  collect 6 Red Linen Bandana##1019 |q 83 |goto Elwynn Forest 47.48,74.13 |tip {dropsfrom}Defias Bandit, Morgan the Collector, Defias Rogue Wizard
step
  talk "Auntie" Bernice Stonefield##246
  turnin Goldtooth##87 |goto Elwynn Forest 34.49,84.25
step
  talk Ma Stonefield##244
  turnin Princess Must Die!##88 |goto Elwynn Forest 34.66,84.48
step
  note Bring 4 Crystal Kelp Fronds to William Pestle in Goldshire.
  collect 4 Crystal Kelp Frond##1256 |q 112 |goto Elwynn Forest 54.9,66.75 |tip {dropsfrom}Murloc, Murloc Streamrunner
step
  talk Sara Timberlain##278
  turnin Red Linen Goods##83 |goto Elwynn Forest 79.46,68.79
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
  kill Riverpaw Runt##97 |goto Elwynn Forest 67.83,46.44 |tip Loot the quest item here — it starts the quest.
  accept The Collector##123 |goto Elwynn Forest 67.83,46.44
step
  kill Elmpaw##248299 |goto Elwynn Forest 74.8,40.55 |tip Loot the quest item here — it starts the quest.
  accept Elmpaw's Head##91746 |goto Elwynn Forest 74.8,40.55
step
  talk Marshal Dughan##240
  turnin The Collector##123 |goto Elwynn Forest 42.11,65.93
step
  talk Helene Peltskinner##6306
  turnin Elmpaw's Head##91746 |goto Elwynn Forest 46.24,62.24
step
  talk Remy "Two Times"##241
  accept A Fishy Peril##40 |goto Elwynn Forest 42.14,67.26
step
  talk Marshal Dughan##240
  accept The Jasperlode Mine##76 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  accept Manhunt##147 |goto Elwynn Forest 42.11,65.93
step
  kill Defias Bandit##116 |goto Elwynn Forest 47.48,74.13 |tip Loot the quest item here — it starts the quest.
  accept Furlbrow's Deed##184 |goto Elwynn Forest 47.48,74.13
step
  talk Marshal Dughan##240
  turnin A Fishy Peril##40 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  turnin The Jasperlode Mine##76 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  accept Further Concerns##35 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  accept Westbrook Garrison Needs Help!##239 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  accept Report to Gryan Stoutmantle##109 |goto Elwynn Forest 42.11,65.93
step
  talk Deputy Rainer##963
  turnin Westbrook Garrison Needs Help!##239 |goto Elwynn Forest 24.23,74.45
step
  talk Deputy Rainer##963
  accept Riverpaw Gnoll Bounty##11 |goto Elwynn Forest 24.23,74.45
step
  talk Sergeant De Vries##955
  accept An Apple Treat##91738 |goto Elwynn Forest 24.08,73.2
step
  collect Thunder Applejack##247824 |q 91738 |goto Elwynn Forest 24.08,73.2
step
  click Wanted Poster##68
  accept Wanted:  "Hogger"##176 |goto Elwynn Forest 24.55,74.69
step
  talk Sergeant De Vries##955
  turnin An Apple Treat##91738 |goto Elwynn Forest 24.08,73.2
step
  note Slay the gnoll Hogger and bring his Huge Gnoll Claw to Marshal Dughan.
  kill Hogger##448 |goto Elwynn Forest 25.02,92.9 |elite
  collect Huge Gnoll Claw##1931 |q 176 |goto Elwynn Forest 25.02,92.9
step
  talk Hamish Bergwort##248242
  accept Delicate Instruments##91723 |goto Elwynn Forest 65.01,69.79
step
  talk Hamish Bergwort##248242
  accept Delicate Instruments##91724 |goto Elwynn Forest 65.01,69.79
step
  talk Blixie Fitzwink##248248
  accept Stolen Enchanting Supplies##91725 |goto Elwynn Forest 63.32,72.73
step
  note Kill 8 Kobold Geomancers in Jasperlode Mine, then return to Hamish Bergwort in the Tower of Azora.
  kill Kobold Geomancer##476 |q 91723 |goto Elwynn Forest 64.49,56.55
step
  talk Hamish Bergwort##248242
  turnin Delicate Instruments##91723 |goto Elwynn Forest 65.01,69.79
step
  talk Guard Thomas##261
  turnin Further Concerns##35 |goto Elwynn Forest 73.97,72.18
step
  talk Guard Thomas##261
  accept Find the Lost Guards##37 |goto Elwynn Forest 73.97,72.18
step
  talk Guard Thomas##261
  accept Protect the Frontier##52 |goto Elwynn Forest 73.97,72.18
step
  talk Hagar Lowe##248266
  accept Good Steel##91732 |goto Elwynn Forest 82.55,63.82
step
  talk Ormin Pelford##248265
  accept Downstream##91733 |goto Elwynn Forest 76.58,71.82
step
  note Kill 8 Prowlers and 5 Young Forest Bears, and then return to Guard Thomas at the east Elwynn bridge.
  kill Prowler##118 |q 52 |goto Elwynn Forest 83.83,71.99
step
  note Find and kill "the Collector" then return to Marshal Dughan with The Collector's Ring.
  collect The Collector's Ring##2239 |q 147 |goto Elwynn Forest 71.09,80.65 |tip {dropsfrom}Morgan the Collector
step
  note Kill 6 Defias Rogue Wizards at Stone Cairn Lake, then return to Hamish Bergwort in the Tower of Azora.
  kill Defias Rogue Wizard##474 |q 91724 |goto Elwynn Forest 73.38,52.48
step
  turnin Find the Lost Guards##37 |goto Elwynn Forest 72.66,60.34
step
  talk Guard Thomas##261
  turnin Protect the Frontier##52 |goto Elwynn Forest 73.97,72.18
step
  click A half-eaten body##55
  accept Discover Rolf's Fate##45 |goto Elwynn Forest 72.66,60.34
step
  turnin Discover Rolf's Fate##45 |goto Elwynn Forest 79.8,55.5
step
  click Rolf's corpse##56
  accept Report to Thomas##71 |goto Elwynn Forest 79.8,55.5
step
  talk Guard Thomas##261
  turnin Report to Thomas##71 |goto Elwynn Forest 73.97,72.18
step
  talk Guard Thomas##261
  accept Deliver Thomas' Report##39 |goto Elwynn Forest 73.97,72.18
step
  kill Croaky##248278 |goto Elwynn Forest 76.7,85.89 |tip Loot the quest item here — it starts the quest.
  accept Croaky's Head##91740 |goto Elwynn Forest 76.7,85.89
step
  note Collect the Waterlogged Axe, Waterlogged Saw, and Waterlogged Toolbox that have washed downstream from Eastvale Logging Camp, then return to Ormin Pelford.
  collect Waterlogged Axe##247817 |q 91733 |goto Elwynn Forest 76.7,82.5
step
  talk Merell Ross##248277
  turnin Croaky's Head##91740 |goto Elwynn Forest 84.65,79.3
step
  note Bring 8 Painted Gnoll Armbands to Deputy Rainer at the Barracks.
  collect 8 Painted Gnoll Armband##782 |q 11 |goto Elwynn Forest 67.83,46.44 |tip {dropsfrom}Riverpaw Runt, Riverpaw Outrunner
step
  note Collect 5 Stolen Enchanting Supplies from gnoll camps around Stone Cairn Lake, then return to Blixie Fitzwink near the Tower of Azora.
  collect 5 Stolen Enchanting Supplies##247805 |q 91725 |goto Elwynn Forest 68,41.6
step
  note Collect 4 Mining Tools from Jasperlode Mine, then return to Hagar Lowe in Eastvale Logging Camp.
  collect 4 Mining Tools##247816 |q 91732 |goto Elwynn Forest 61.5,51.5
step
  talk Marshal Dughan##240
  turnin Deliver Thomas' Report##39 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  turnin Manhunt##147 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  turnin Wanted:  "Hogger"##176 |goto Elwynn Forest 42.11,65.93
step
  talk Marshal Dughan##240
  accept Cloth and Leather Armor##59 |goto Elwynn Forest 42.11,65.93
step
  only Warrior not completed(1639) not completed(1678) not completed(1683) not haveq(1639) not haveq(1678) not haveq(1683)
  talk Lyria Du Lac##913
  accept A Warrior's Training##1638 |goto Elwynn Forest 41.09,65.77
step
  only Warlock
  talk Remen Marcot##6121
  accept Gakin's Summons##1685 |goto Elwynn Forest 44.49,66.27
step
  only not Dwarf not NightElf not Skyborne Mage not completed(1880) not haveq(1880)
  talk Zaldimar Wefhellt##328
  accept Speak with Jennea##1860 |goto Elwynn Forest 43.25,66.19
step
  only Rogue
  talk Keryn Sylvius##917
  accept Seek out SI: 7##2205 |goto Elwynn Forest 43.87,65.94
step
  only NightElf Priest not completed(5627) not completed(5629) not completed(5630) not completed(5631) not completed(5632) not completed(5633) not haveq(5627) not haveq(5629) not haveq(5630) not haveq(5631) not haveq(5632) not haveq(5633)
  talk Priestess Josetta##377
  accept Returning Home##5628 |goto Elwynn Forest 43.28,65.72
step
  only not NightElf not Gnome not Skyborne Priest not completed(5634) not completed(5636) not completed(5637) not completed(5638) not completed(5639) not completed(5640) not haveq(5634) not haveq(5636) not haveq(5637) not haveq(5638) not haveq(5639) not haveq(5640)
  talk Priestess Josetta##377
  accept Desperate Prayer##5635 |goto Elwynn Forest 43.28,65.72
step
  only Human Priest
  talk Priestess Josetta##377
  accept Divine Grace##94774 |goto Elwynn Forest 43.28,65.72
step
  only Hunter
  talk Josephine Carson##251507
  accept Taming the Beast##94792 |goto Elwynn Forest 41.21,66.34
step
  only Hunter
  talk Josephine Carson##251507
  accept Training the Beast##94793 |goto Elwynn Forest 41.21,66.34
step
  only Hunter
  talk Josephine Carson##251507
  accept Taming the Beast##94863 |goto Elwynn Forest 41.21,66.34
step
  only Hunter
  talk Josephine Carson##251507
  accept Taming the Beast##94864 |goto Elwynn Forest 41.21,66.34
step
  only Hunter
  talk Josephine Carson##251507
  turnin Taming the Beast##94792 |goto Elwynn Forest 41.21,66.34
step
  only Hunter
  talk Isaac Chan##258930
  turnin Training the Beast##94793 |goto Elwynn Forest 41.72,66.39
step
  only Hunter
  talk Josephine Carson##251507
  turnin Taming the Beast##94863 |goto Elwynn Forest 41.21,66.34
step
  only Hunter
  talk Josephine Carson##251507
  turnin Taming the Beast##94864 |goto Elwynn Forest 41.21,66.34
step
  talk Deputy Rainer##963
  turnin Riverpaw Gnoll Bounty##11 |goto Elwynn Forest 24.23,74.45
step
  talk Hamish Bergwort##248242
  turnin Delicate Instruments##91724 |goto Elwynn Forest 65.01,69.79
step
  talk Blixie Fitzwink##248248
  turnin Stolen Enchanting Supplies##91725 |goto Elwynn Forest 63.32,72.73
step
  talk Sara Timberlain##278
  turnin Cloth and Leather Armor##59 |goto Elwynn Forest 79.46,68.79
step
  talk Hagar Lowe##248266
  turnin Good Steel##91732 |goto Elwynn Forest 82.55,63.82
step
  talk Ormin Pelford##248265
  turnin Downstream##91733 |goto Elwynn Forest 76.58,71.82
step
  talk Guard Thomas##261
  accept Bounty on Murlocs##46 |goto Elwynn Forest 73.97,72.18
step
  note Bring 8 Torn Murloc Fins to Guard Thomas at the east Elwynn bridge.
  collect 8 Torn Murloc Fin##780 |q 46 |goto Elwynn Forest 78.45,56.16 |tip {dropsfrom}Murloc Forager, Murloc Lurker
step
  talk Guard Thomas##261
  turnin Bounty on Murlocs##46 |goto Elwynn Forest 73.97,72.18
step
  talk Farmer Furlbrow##237
  turnin Furlbrow's Deed##184 |goto Westfall 59.95,19.36 |tip {turninat}Westfall
step
  talk Gryan Stoutmantle##234
  turnin Report to Gryan Stoutmantle##109 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  only Warrior not completed(1639) not completed(1678) not completed(1683) not haveq(1639) not haveq(1678) not haveq(1683)
  talk Harry Burlguard##6089
  turnin A Warrior's Training##1638 |goto Stormwind City 77.13,53.26 |tip {turninat}Stormwind City
step
  only Warlock
  talk Gakin the Darkbinder##6122
  turnin Gakin's Summons##1685 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Mage not completed(1880) not haveq(1880)
  talk Jennea Cannon##5497
  turnin Speak with Jennea##1860 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Seek out SI: 7##2205 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only NightElf Priest not completed(5627) not completed(5629) not completed(5630) not completed(5631) not completed(5632) not completed(5633) not haveq(5627) not haveq(5629) not haveq(5630) not haveq(5631) not haveq(5632) not haveq(5633)
  talk Priestess Alathea##11401
  turnin Returning Home##5628 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only not NightElf not Gnome not Skyborne Priest not completed(5634) not completed(5636) not completed(5637) not completed(5638) not completed(5639) not completed(5640) not haveq(5634) not haveq(5636) not haveq(5637) not haveq(5638) not haveq(5639) not haveq(5640)
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5635 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only Human Priest
  talk High Priestess Laurena##376
  turnin Divine Grace##94774 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  talk Renato Gallina##1432
  accept Wine Shop Advert##332 |goto Stormwind City 63.76,73.59
step
  talk Harlan Bagley##1427
  accept Harlan Needs a Resupply##333 |goto Stormwind City 62.32,67.95
step
  talk Rema Schneider##1428
  accept Package for Thurman##334 |goto Stormwind City 58.09,67.49
step
  only NightElf Druid not completed(5923) not completed(5925) not haveq(5923) not haveq(5925)
  talk Theridran##5505
  accept Heeding the Call##5924 |goto Stormwind City 36.11,64.39
step
  only Human Priest
  talk High Priestess Laurena##376
  accept Divine Grace##94773 |goto Stormwind City 49.53,44.6
step
  talk Smith Argus##514
  accept Elmore's Task##1097 |goto Elwynn Forest 41.71,65.54
step
  talk Suzetta Gallina##1431
  turnin Wine Shop Advert##332 |goto Stormwind City 60.28,76.75 |tip {turninat}Stormwind City
step
  talk Rema Schneider##1428
  turnin Harlan Needs a Resupply##333 |goto Stormwind City 58.09,67.49 |tip {turninat}Stormwind City
step
  talk Thurman Schneider##1429
  turnin Package for Thurman##334 |goto Stormwind City 52.59,83.4 |tip {turninat}Stormwind City
step
  only NightElf Druid not completed(5923) not completed(5925) not haveq(5923) not haveq(5925)
  talk Mathrengyl Bearwalker##4217
  turnin Heeding the Call##5924 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only Human Priest
  talk High Priestess Laurena##376
  turnin Divine Grace##94773 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  talk Grimand Elmore##1416
  turnin Elmore's Task##1097 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  talk Morgan Pestle##279
  turnin Shipment to Stormwind##61 |goto Stormwind City 63.16,74.41 |tip {turninat}Stormwind City
step
  only Warrior not completed(1678) not completed(1683) not haveq(1678) not haveq(1683)
  talk Harry Burlguard##6089
  accept Bartleby the Drunk##1639 |goto Stormwind City 77.13,53.26
step
  only Warlock
  talk Gakin the Darkbinder##6122
  accept Surena Caledon##1688 |goto Stormwind City 39.22,85.23
step
  only not Dwarf not NightElf Mage not completed(1880) not haveq(1880)
  talk Jennea Cannon##5497
  accept Mirror Lake##1861 |goto Stormwind City 49.56,85.8
step
  only Rogue
  talk Master Mathias Shaw##332
  accept Snatch and Grab##2206 |goto Stormwind City 78.31,70.74
step
  only Warlock
  note Retrieve Surena's Choker for Gakin the Darkbinder in Stormwind.
  collect Surena's Choker##6810 |q 1688 |goto Elwynn Forest 71.01,80.77 |tip {dropsfrom}Surena Caledon
step
  only not Dwarf not NightElf Mage not completed(1880) not haveq(1880)
  note Bring a Mirror Lake sample to Jennea Cannon in Stormwind.
  collect Mirror Lake Water Sample##7206 |q 1861 |goto Elwynn Forest 28.57,61.39 |tip {dropsfrom}Mirror Lake Waterwall
step
  only Rogue
  note Find the Defias Dockmaster and recover the Shipping Schedule for Master Mathias Shaw.
  collect Defias Shipping Schedule##7675 |q 2206 |goto Elwynn Forest 48.06,86.96 |tip {dropsfrom}Defias Dockmaster
step
  only Warrior not completed(1678) not completed(1683) not haveq(1678) not haveq(1683)
  talk Bartleby##6090
  turnin Bartleby the Drunk##1639 |goto Stormwind City 76.76,52.55 |tip {turninat}Stormwind City
step
  only Warlock
  talk Gakin the Darkbinder##6122
  turnin Surena Caledon##1688 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf Mage not completed(1880) not haveq(1880)
  talk Jennea Cannon##5497
  turnin Mirror Lake##1861 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Snatch and Grab##2206 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only Warrior
  talk Bartleby##6090
  accept Beat Bartleby##1640 |goto Stormwind City 76.76,52.55
step
  only Warlock
  talk Gakin the Darkbinder##6122
  accept The Binding##1689 |goto Stormwind City 39.22,85.23
step
  only Warlock
  note Using the Bloodstone Choker, summon and subdue a voidwalker, then return the Bloodstone Choker to Gakin the Darkbinder in Stormwind.
  use Summoned Voidwalker##5676 |q 1689 |tip {useit}
step
  only Warrior
  note Beat Bartleby, then talk to him.
  talk Bartleby##6090 |q 1640 |goto Stormwind City 76.76,52.55
step
  only Warrior
  talk Bartleby##6090
  turnin Beat Bartleby##1640 |goto Stormwind City 76.76,52.55 |tip {turninat}Stormwind City
step
  only Warlock
  talk Gakin the Darkbinder##6122
  turnin The Binding##1689 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only Warrior
  talk Bartleby##6090
  accept Bartleby's Mug##1665 |goto Stormwind City 76.76,52.55
step
  only Warrior
  talk Harry Burlguard##6089
  turnin Bartleby's Mug##1665 |goto Stormwind City 77.13,53.26 |tip {turninat}Stormwind City
step
  only Warrior
  talk Harry Burlguard##6089
  accept Marshal Haggard##1666 |goto Stormwind City 77.13,53.26
step
  only Warrior
  talk Marshal Haggard##294
  turnin Marshal Haggard##1666 |goto Elwynn Forest 84.61,69.38
step
  only Warrior
  talk Marshal Haggard##294
  accept Dead-tooth Jack##1667 |goto Elwynn Forest 84.61,69.38
step
  only Warrior
  note Retrieve Haggard's Badge from Dead-tooth Jack's camp, and return to Marshal Haggard.
  collect Marshal Haggard's Badge##6782 |q 1667 |goto Elwynn Forest 89.33,78.88 |tip {dropsfrom}Dead-tooth's Strongbox
step
  only Warrior
  talk Marshal Haggard##294
  turnin Dead-tooth Jack##1667 |goto Elwynn Forest 84.61,69.38
step
  note {travel}Loch Modan
  goto Loch Modan 34.83,49.28
]])
