-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Scholomance", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "630b65c6",
}, [[
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  only Shaman
  talk Eldrun Stormbreaker##258098
  accept The Darkreaver Menace##97169 |goto Ironforge 47.1,13.79
step
  talk Eva Sarkhoff##11216
  accept Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Weldon Barov##11023
  accept Barov Family Fortune##5343 |goto Western Plaguelands 43.45,83.73
step
  only Warlock completed(7625)
  talk Gorzeeki Wildeyes##14437
  accept Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  only not NightElf not Gnome not Skyborne Paladin completed(7646)
  talk Lord Grayson Shadowbreaker##928
  accept Judgment and Redemption##7647 |goto Stormwind City 48.43,50.22
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  collect 8 Broodling Essence##12283 |q 4726 |goto Burning Steppes 63.78,57.27
step
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  only Shaman
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance.  Doing so will bring forth spirits you must fight. Defeating these spirits will summon forth Death Knight Darkreaver; defeat him.
  collect Darkreaver's Head##18880 |q 97169 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Death Knight Darkreaver
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  note Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Weldon Barov when you have completed this task.
  collect The Deed to Brill##13471 |q 5343 |goto Scholomance - Dungeon -1,-1
step
  only Warlock completed(7625)
  note Bring the Imp in a Jar to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes.
  talk J'eevee##14500 |q 7629 |goto Scholomance - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin completed(7646)
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth the spirits you must judge. Defeating these spirits will summon forth Death Knight Darkreaver. Defeat him and reclaim the lost soul of the fallen charger.
  collect Charger's Redeemed Soul##18799 |q 7647/1
  collect Blessed Arcanite Barding##18792 |q 7647 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Risen Construct
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Betina Bigglezink##11035
  turnin Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  only Shaman
  talk Eldrun Stormbreaker##258098
  turnin The Darkreaver Menace##97169 |goto Ironforge 47.1,13.79
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Weldon Barov##11023
  turnin Barov Family Fortune##5343 |goto Western Plaguelands 43.45,83.73
step
  only Warlock completed(7625)
  talk Gorzeeki Wildeyes##14437
  turnin Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  only not NightElf not Gnome not Skyborne Paladin completed(7646)
  talk Darkreaver's Fallen Charger##14568
  turnin Judgment and Redemption##7647 |goto Scholomance - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  note Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
  collect Krastinov's Bag of Horrors##13725 |q 5515 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Jandice Barov
step
  note Give Tinkee's Letter to Felnok Steelspring.
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
step
  talk Eva Sarkhoff##11216
  turnin Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Eva Sarkhoff##11216
  accept Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.88,42.22 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  note Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
  kill Kirtonos the Herald##10506 |q 5384 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Eva Sarkhoff##11216
  turnin Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Magistrate Marduke##11286
  accept The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##13585 |q 5461 |goto Arathi Highlands 20.8,65.8
step
  note Bring Felnok's Package to Tinkee Steamboil in the Burning Steppes.
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  note Use the Eggscilloscope Prototype on an egg in the Rookery.
  click Rookery Egg##175124 |q 4734 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  note Travel to Light's Hope in Eastern Plaguelands and seek out Leonid Barthalomew the Revered. Show him the Keepsake of Remembrance and tell him all that you have discovered.
  talk Leonid Barthalomew the Revered##11036
  turnin The Dying, Ras Frostwhisper##5462 |goto Eastern Plaguelands 71.89,48.29
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 71.89,48.29
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  click Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  note Travel to Stratholme and find Menethil's Gift. Place the Keepsake of Remembrance upon the unholy ground.
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  accept Leonid Barthalomew##5522 |goto Burning Steppes 65.24,24
step
  click Menethil's Gift##176631
  accept Menethil's Gift##5464 |goto Stratholme - Dungeon -1,-1
step
  note Bring the Frozen Eggs to Leonid Barthalomew in the Eastern Plaguelands.
  talk Leonid Barthalomew the Revered##11036
  turnin Leonid Barthalomew##5522 |goto Eastern Plaguelands 71.89,48.29
step
  note Take the Soulbound Keepsake to Leonid Barthalomew in Eastern Plaguelands.
  talk Leonid Barthalomew the Revered##11036
  turnin Menethil's Gift##5464 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Soulbound Keepsake##5465 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 71.89,48.29
step
  note Return to Magistrate Marduke in Caer Darrow. Show him the Soulbound Keepsake.
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11
step
  note Bring the Frozen Eggs to Betina Bigglezink.
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 71.66,49.94
step
  talk Betina Bigglezink##11035
  accept Dawn's Gambit##4771 |goto Eastern Plaguelands 71.66,49.94
step
  talk Magistrate Marduke##11286
  accept The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  note Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink.
  kill Vectus##10432 |q 4771 |goto Scholomance - Dungeon -1,-1 |elite
step
  note Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke.
  collect Human Head of Ras Frostwhisper##13626 |q 5466 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Ras Frostwhisper
step
  talk Betina Bigglezink##11035
  turnin Dawn's Gambit##4771 |goto Eastern Plaguelands 71.66,49.94
step
  talk Magistrate Marduke##11286
  turnin The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
]])
