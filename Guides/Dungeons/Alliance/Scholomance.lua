-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Scholomance", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  talk Scholar Runethorn##14374
  accept Elven Legends##7482 |goto Feralas 31.65,43.45
step
  only Druid
  talk Deliana##16013
  accept An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
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
  note Search Dire Maul for Telmius Dreamseeker. Report back to Scholar Runethorn at Feathermoon with whatever information that you may find.
  collect Skeletal Remains of Telmius Dreamseeker##179544 |q 7482 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Wildheart Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8905 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
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
  talk Scholar Runethorn##14374
  turnin Elven Legends##7482 |goto Feralas 31.65,43.45
step
  only Druid
  talk Deliana##16013
  turnin An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
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
  kill Plagued Hatchling##10678 |goto Scholomance - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Healthy Dragon Scale##5582 |goto Scholomance - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  accept Libram of Focus##7484 |goto Dire Maul - Dungeon -1,-1
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
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
  note Bring a Libram of Focus, 1 Pristine Black Diamond, 4 Large Brilliant Shards, and 2 Skin of Shadow to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Focus.
  collect Libram of Focus##18333 |q 7484 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Gordok Brute, Gordok Mage-Lord, Gordok Captain
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
  talk Betina Bigglezink##11035
  turnin Healthy Dragon Scale##5582 |goto Eastern Plaguelands 71.66,49.94
step
  talk Lorekeeper Lydros##14368
  turnin Libram of Focus##7484 |goto Dire Maul - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
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
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
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
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
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
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
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
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
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
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
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
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
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
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
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
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
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
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  accept Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  collect Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
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
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
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
  talk Mux Manascrambler##16014
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
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
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
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
  only Druid
  talk Deliana##16013
  accept Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ancient Equine Spirit##14566
  accept Blessed Arcanite Barding##7644 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves Deliana in Ironforge.
  collect Wildheart Belt##16716 |q 8926 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11
step
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 71.66,49.94
step
  only Druid
  talk Deliana##16013
  turnin Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Blessed Arcanite Barding##7644 |goto Stormwind City 48.43,50.22
step
  talk Betina Bigglezink##11035
  accept Dawn's Gambit##4771 |goto Eastern Plaguelands 71.66,49.94
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
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
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
step
  talk Magistrate Marduke##11286
  turnin The Lich, Ras Frostwhisper##5466 |goto Western Plaguelands 70.57,74.11
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin The Divination Scryer##7646 |goto Stormwind City 48.43,50.22
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Judgment and Redemption##7647 |goto Stormwind City 48.43,50.22
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  note Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance. Doing so will bring forth the spirits you must judge. Defeating these spirits will summon forth Death Knight Darkreaver. Defeat him and reclaim the lost soul of the fallen charger.
  collect Charger's Redeemed Soul##18799 |q 7647 |goto Stormwind City 48.43,50.22
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Darkreaver's Fallen Charger##14568
  turnin Judgment and Redemption##7647 |goto Scholomance - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8951 |goto Eastern Plaguelands 26.11,11.3
step
  only Druid
  note Return to Deliana in Ironforge with a set of Wildheart Boots, a Wildheart Kilt and Wildheart Spaulders.
  collect Wildheart Boots##16715 |q 8951 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Mother Smolderweb
step
  only Druid
  talk Deliana##16013
  turnin Anthion's Parting Words##8951 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather the Incendicite of Incendius, the Ember of Emberseer and the Cinder of Cynders, along with a Hallowed Brazier, and return them to Bodley inside Blackrock Mountain.
  collect Incendicite of Incendius##21987 |q 8961 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Lord Incendius
step
  talk Bodley##16033
  turnin Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  accept Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 58.08,86.89 |elite
  collect Druidical Remains##22226 |q 8962 |goto Silithus 58.08,86.89
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  turnin Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8966 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 20 Bloodkelp from the Strashaz naga and then return to Bodley inside Blackrock Mountain.
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 76.94,19.81 |tip {dropsfrom}Strashaz Warrior, Strashaz Serpent Guard, Strashaz Myrmidon
step
  talk Bodley##16033
  turnin I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  accept More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.55 |elite
  collect Starbreeze Village Relic##22227 |q 8985 |goto Winterspring 62.56,69.55
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  turnin More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8989) not completed(8990) not completed(8991) not haveq(8989) not haveq(8990) not haveq(8991)
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8992 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8989) not completed(8990) not completed(8991) not haveq(8989) not haveq(8990) not haveq(8991)
  note Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Kormok##16118 |q 8992 |goto Scholomance - Dungeon -1,-1 |elite
step
  only not completed(8989) not completed(8990) not completed(8991) not haveq(8989) not haveq(8990) not haveq(8991)
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8992 |goto Eastern Kingdoms - the continent map 48.9,63.93
]])
