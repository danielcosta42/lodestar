-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Scholomance", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "b9a1fffa",
}, [[
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  talk Eva Sarkhoff##11216
  accept Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Weldon Barov##11023
  accept Barov Family Fortune##5343 |goto Western Plaguelands 43.45,83.73
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Lord Banehollow##7623 |goto Burning Steppes 12.44,31.63
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Duthorian Rall##6171
  accept Lord Grayson Shadowbreaker##7638 |goto Stormwind City 50.48,47.49
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  collect 8 Broodling Essence##12283 |q 4726 |goto Burning Steppes 63.78,57.27
step
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  note Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Weldon Barov when you have completed this task.
  collect The Deed to Brill##13471 |q 5343 |goto Scholomance - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Betina Bigglezink##11035
  turnin Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Weldon Barov##11023
  turnin Barov Family Fortune##5343 |goto Western Plaguelands 43.45,83.73
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Lord Banehollow##7623 |goto Felwood 35.93,44.42
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Lord Grayson Shadowbreaker##7638 |goto Stormwind City 48.43,50.22
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  only Warlock
  talk Lord Banehollow##9516
  accept Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Emphasis on Sacrifice##7637 |goto Stormwind City 48.43,50.22
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
  talk Eva Sarkhoff##11216
  turnin Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Rohan##11406
  turnin Emphasis on Sacrifice##7637 |goto Ironforge 24.73,8.16
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
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Rohan##11406
  accept To Show Due Judgment##7639 |goto Ironforge 24.73,8.16
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
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin To Show Due Judgment##7639 |goto Stormwind City 48.43,50.22
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
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##13585 |q 5461 |goto Arathi Highlands 20.8,65.8
step
  only Warlock
  note Bring the Imp in a Jar to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes.
  talk J'eevee##14500 |q 7629 |goto Scholomance - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  note Use the Exorcism Censer to drive out the spirits that torment Terrordale. When you have slain 25 Terrordale Spirits, return to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  kill Terrordale Spirit##14564 |q 7640 |goto Eastern Plaguelands 11.36,20.78
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
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept The Work of Grimand Elmore##7641 |goto Stormwind City 48.43,50.22
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
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  turnin The Work of Grimand Elmore##7641 |goto Stormwind City 59.73,33.78
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 71.89,48.29
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  accept Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  collect Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
  collect 40 Stratholme Holy Water##13180 |q 7642 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  turnin Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  talk Tinkee Steamboil##10267
  accept Leonid Barthalomew##5522 |goto Burning Steppes 65.24,24
step
  click Menethil's Gift##176631
  accept Menethil's Gift##5464 |goto Stratholme - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Ancient Equine Spirit##7643 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Acquire special horse feed used for feeding a spirit horse. Merideth Carlson in Southshore apparently is the source for such food.
  collect Manna-Enriched Horse Feed##18775 |q 7643 |goto Stormwind City 48.43,50.22
step
  talk Leonid Barthalomew the Revered##11036
  turnin Leonid Barthalomew##5522 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  turnin Menethil's Gift##5464 |goto Eastern Plaguelands 71.89,48.29
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ancient Equine Spirit##14566
  turnin Ancient Equine Spirit##7643 |goto Dire Maul - Dungeon -1,-1
step
  talk Leonid Barthalomew the Revered##11036
  accept Soulbound Keepsake##5465 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 71.89,48.29
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ancient Equine Spirit##14566
  accept Blessed Arcanite Barding##7644 |goto Dire Maul - Dungeon -1,-1
step
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11
step
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 71.66,49.94
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Blessed Arcanite Barding##7644 |goto Stormwind City 48.43,50.22
step
  talk Betina Bigglezink##11035
  accept Dawn's Gambit##4771 |goto Eastern Plaguelands 71.66,49.94
step
  talk Magistrate Marduke##11286
  accept The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept The Divination Scryer##7646 |goto Stormwind City 48.43,50.22
step
  note Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink.
  talk Vectus##10432 |q 4771 |goto Scholomance - Dungeon -1,-1
step
  note Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke.
  collect Human Head of Ras Frostwhisper##13626 |q 5466 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Ras Frostwhisper
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring an Azerothian Diamond and a Pristine Black Diamond to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  collect Azerothian Diamond##12800 |q 7646 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Cliff Breaker, Anubisath Guardian, Small Thorium Vein
step
  talk Betina Bigglezink##11035
  turnin Dawn's Gambit##4771 |goto Eastern Plaguelands 71.66,49.94
step
  talk Magistrate Marduke##11286
  turnin The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin The Divination Scryer##7646 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Judgment and Redemption##7647 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth the spirits you must judge. Defeating these spirits will summon forth Death Knight Darkreaver. Defeat him and reclaim the lost soul of the fallen charger.
  collect Charger's Redeemed Soul##18799 |q 7647 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Darkreaver's Fallen Charger##14568
  turnin Judgment and Redemption##7647 |goto Scholomance - Dungeon -1,-1
]])
