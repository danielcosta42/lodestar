-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Scholomance", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "f894683e",
}, [[
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept Material Assistance##7667 |goto Orgrimmar 38.66,35.92
step
  talk Alexi Barov##11022
  accept Barov Family Fortune##5341 |goto Tirisfal Glades 83.06,71.6
step
  talk Eva Sarkhoff##11216
  accept Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Lord Banehollow##7623 |goto Burning Steppes 12.44,31.63
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  collect 8 Broodling Essence##12283 |q 4726 |goto Burning Steppes 63.78,57.27
step
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  only Shaman
  note If you are interested in helping Sagorne Crestrider in Orgrimmar's Valley of Wisdom, bring him an Azerothian Diamond and a Pristine Black Diamond.
  collect Azerothian Diamond##12800 |q 7667 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Cliff Breaker, Anubisath Guardian, Small Thorium Vein
step
  note Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Alexi Barov when you have completed this task.
  collect The Deed to Brill##13471 |q 5341 |goto Scholomance - Dungeon -1,-1
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Betina Bigglezink##11035
  turnin Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin Material Assistance##7667 |goto Orgrimmar 38.66,35.92
step
  talk Alexi Barov##11022
  turnin Barov Family Fortune##5341 |goto Tirisfal Glades 83.06,71.6
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Lord Banehollow##7623 |goto Felwood 35.93,44.42
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24
step
  only not Undead not Tauren Shaman not completed(8258) not haveq(8258)
  talk Sagorne Creststrider##13417
  accept The Darkreaver Menace##7668 |goto Orgrimmar 38.66,35.92
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  only Warlock
  talk Lord Banehollow##9516
  accept Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  only not Undead not Tauren Shaman not completed(8258) not haveq(8258)
  note Bring Darkreaver's Head to Sagorne Creststrider in the Valley of Wisdom, Orgrimmar.
  collect Darkreaver's Head##18880 |q 7668 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Death Knight Darkreaver
step
  note Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
  collect Krastinov's Bag of Horrors##13725 |q 5515 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Jandice Barov
step
  only Warlock
  note Confront Ulathek, then bring The Traitor's Heart to Lord Banehollow in Jaedenar.
  collect The Traitor's Heart##18719 |q 7624 |goto Felwood 40.76,48.42 |tip {dropsfrom}Ulathek
step
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
step
  only not Undead not Tauren Shaman not completed(8258) not haveq(8258)
  talk Sagorne Creststrider##13417
  turnin The Darkreaver Menace##7668 |goto Orgrimmar 38.66,35.92
step
  talk Eva Sarkhoff##11216
  turnin Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Eva Sarkhoff##11216
  accept Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  only Warlock
  talk Lord Banehollow##9516
  accept Xorothian Stardust##7625 |goto Felwood 35.93,44.42
step
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.88,42.22 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  note Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
  kill Kirtonos the Herald##10506 |q 5384 |goto Scholomance - Dungeon -1,-1 |elite
step
  only Warlock
  note Purchase Xorothian Stardust from Ur'dan. Bring it to Gorzeeki Wildeyes in the Burning Steppes.
  buy Xorothian Stardust##18687 |q 7625 |goto Felwood 36.18,44.46
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Eva Sarkhoff##11216
  turnin Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Xorothian Stardust##7625 |goto Burning Steppes 12.44,31.63
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Magistrate Marduke##11286
  accept The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##13585 |q 5461 |goto Arathi Highlands 20.8,65.8
step
  only Warlock
  note Bring the Imp in a Jar to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes.
  talk J'eevee##14500 |q 7629 |goto Scholomance - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  note Use the Eggscilloscope Prototype on an egg in the Rookery.
  collect Rookery Egg##175124 |q 4734 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
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
  collect Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  accept Leonid Barthalomew##5522 |goto Burning Steppes 65.24,24
step
  click Menethil's Gift##176631
  accept Menethil's Gift##5464 |goto Stratholme - Dungeon -1,-1
step
  talk Leonid Barthalomew the Revered##11036
  turnin Leonid Barthalomew##5522 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  turnin Menethil's Gift##5464 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Soulbound Keepsake##5465 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 71.89,48.29
step
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11
step
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
  talk Vectus##10432 |q 4771 |goto Scholomance - Dungeon -1,-1
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
