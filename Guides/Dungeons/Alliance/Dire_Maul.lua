-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Dire Maul", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "db29764e",
}, [[
step
  talk Crier Goodman##2198
  accept Feathermoon Stronghold##7494 |goto Stormwind City 56.39,74.09
step
  talk Azj'Tordin##14355
  accept Pusillin and the Elder Azj'Tordin##7441 |goto Feralas 76.91,37.35
step
  talk Knot Thimblejack##14338
  accept The Gordok Ogre Suit##5518 |goto Dire Maul - Dungeon -1,-1
step
  talk Knot Thimblejack##14338
  accept Free Knot!##5525 |goto Dire Maul - Dungeon -1,-1
step
  talk Stomper Kreeg##14322
  accept The Gordok Taste Test##5528 |goto Dire Maul - Dungeon -1,-1
step
  talk Shen'dralar Ancient##14358
  accept The Madness Within##7461 |goto Dire Maul - Dungeon -1,-1
step
  only Rogue
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Garona: A Study on Stealth and Treachery##7498 |goto Dire Maul - Dungeon -1,-1
step
  only Warrior
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Codex of Defense##7499 |goto Dire Maul - Dungeon -1,-1
step
  only Mage
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Arcanist's Cookbook##7500 |goto Dire Maul - Dungeon -1,-1
step
  only Paladin
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Harnessing Shadows##7502 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Greatest Race of Hunters##7503 |goto Dire Maul - Dungeon -1,-1
step
  only Priest
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Holy Bologna: What the Light Won't Tell You##7504 |goto Dire Maul - Dungeon -1,-1
step
  only Shaman
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Emerald Dream...##7506 |goto Dire Maul - Dungeon -1,-1
step
  talk Captain Kromcrush##14325
  accept Unfinished Gordok Business##7703 |goto Dire Maul - Dungeon -1,-1
step
  talk Scholar Runethorn##14374
  accept Elven Legends##7482 |goto Feralas 31.65,43.45
step
  only Warlock
  talk Daio the Decrepit##14463
  accept The Prison's Bindings##7581 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Lord Banehollow##7623 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Rage of Blood##7563 |goto Burning Steppes 12.69,31.64
step
  only Mage
  talk Lorekeeper Lydros##14368
  accept Arcane Refreshment##7463 |goto Dire Maul - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Nostro's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Duthorian Rall##6171
  accept Lord Grayson Shadowbreaker##7638 |goto Stormwind City 50.48,47.49
step
  note Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary.
  collect Book of Incantations##18261 |q 7441 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Pusillin
step
  note Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
  collect 4 Bolt of Runecloth##14048 |q 5518 |goto Dire Maul - Dungeon -1,-1 |tip {dropsfrom}Felsteel Chest
step
  collect Gordok Shackle Key##18250 |q 5525 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Gordok Brute, Gordok Mage-Lord, Gordok Captain
step
  note You must destroy the guardians surrounding the 5 Pylons that power the Prison of Immol'thar. Once the Pylons have powered down, the force field surrounding Immol'thar will have dissipated.
  kill Immol'thar##11496 |q 7461 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.
  collect Gauntlet of Gordok Might##18336 |q 7703 |goto Dire Maul - Dungeon -1,-1 |tip {dropsfrom}The Prince's Chest
step
  note Search Dire Maul for Telmius Dreamseeker. Report back to Scholar Runethorn at Feathermoon with whatever information that you may find.
  collect Skeletal Remains of Telmius Dreamseeker##179544 |q 7482 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  note Travel to Dire Maul in Feralas and recover 15 Satyr Blood from the Wildspawn Satyr that inhabit the Warpwood Quarter. Return to Daio in the Tainted Scar when this is done.
  collect Satyr Blood##18603 |q 7581 |goto Dire Maul - Dungeon -1,-1 |tip {dropsfrom}Wildspawn Satyr, Wildspawn Rogue, Wildspawn Trickster
step
  only Warlock
  note Bring 30 bottles of Raging Beast's Blood to Mor'zul Bloodbringer in the Burning Steppes.
  collect 30 Raging Beast's Blood##18590 |q 7563 |goto Winterspring 44.76,38.29 |tip {dropsfrom}Ragged Owlbeast, Raging Owlbeast, Crazed Owlbeast
step
  only Mage
  note Travel to the Warpwood Quarter of Dire Maul and slay the water elemental, Hydrospawn. Return to Lorekeeper Lydros in the Athenaeum with the Hydrospawn Essence.
  collect Hydrospawn Essence##18299 |q 7463 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Hydrospawn
step
  note Speak with Latronicus Moonspear at the Feathermoon Stronghold in Feralas.
  talk Latronicus Moonspear##7877
  turnin Feathermoon Stronghold##7494 |goto Feralas 30.38,46.17
step
  talk Azj'Tordin##14355
  turnin Pusillin and the Elder Azj'Tordin##7441 |goto Feralas 76.91,37.35
step
  talk Knot Thimblejack##14338
  turnin The Gordok Ogre Suit##5518 |goto Dire Maul - Dungeon -1,-1
step
  talk Knot Thimblejack##14338
  turnin Free Knot!##5525 |goto Dire Maul - Dungeon -1,-1
step
  talk Stomper Kreeg##14322
  turnin The Gordok Taste Test##5528 |goto Dire Maul - Dungeon -1,-1
step
  talk Shen'dralar Ancient##14358
  turnin The Madness Within##7461 |goto Dire Maul - Dungeon -1,-1
step
  only Rogue
  note Return the book to its rightful owners.
  talk Lorekeeper Kildrath##14383
  turnin Garona: A Study on Stealth and Treachery##7498 |goto Dire Maul - Dungeon -1,-1
step
  only Warrior
  note Return the book to its rightful owners.
  talk Lorekeeper Kildrath##14383
  turnin Codex of Defense##7499 |goto Dire Maul - Dungeon -1,-1
step
  only Mage
  note Return the book to its rightful owners.
  talk Lorekeeper Kildrath##14383
  turnin The Arcanist's Cookbook##7500 |goto Dire Maul - Dungeon -1,-1
step
  only Paladin
  note Return the book to its rightful owners.
  talk Lorekeeper Mykos##14382
  turnin The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  note Return the book to its rightful owners.
  talk Lorekeeper Mykos##14382
  turnin Harnessing Shadows##7502 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  note Return the book to its rightful owners.
  talk Lorekeeper Mykos##14382
  turnin The Greatest Race of Hunters##7503 |goto Dire Maul - Dungeon -1,-1
step
  only Priest
  note Return the book to its rightful owners.
  talk Lorekeeper Javon##14381
  turnin Holy Bologna: What the Light Won't Tell You##7504 |goto Dire Maul - Dungeon -1,-1
step
  only Shaman
  note Return the book to its rightful owners.
  talk Lorekeeper Javon##14381
  turnin Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  note Return the book to its rightful owners.
  talk Lorekeeper Javon##14381
  turnin The Emerald Dream...##7506 |goto Dire Maul - Dungeon -1,-1
step
  talk Captain Kromcrush##14325
  turnin Unfinished Gordok Business##7703 |goto Dire Maul - Dungeon -1,-1
step
  talk Scholar Runethorn##14374
  turnin Elven Legends##7482 |goto Feralas 31.65,43.45
step
  only Warlock
  talk Daio the Decrepit##14463
  turnin The Prison's Bindings##7581 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  note Purchase Shadowy Potions from Gorzeeki in the Burning Steppes.
  talk Lord Banehollow##9516
  turnin Lord Banehollow##7623 |goto Felwood 35.93,44.42
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  turnin Rage of Blood##7563 |goto Burning Steppes 12.69,31.64
step
  only Mage
  talk Lorekeeper Lydros##14368
  turnin Arcane Refreshment##7463 |goto Dire Maul - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Return Nostro's Compendium of Dragon Slaying to the Athenaeum.
  talk Lorekeeper Lydros##14368
  turnin Nostro's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak with Lord Grayson Shadowbreaker in Stormwind's Cathedral District.
  talk Lord Grayson Shadowbreaker##928
  turnin Lord Grayson Shadowbreaker##7638 |goto Stormwind City 48.43,50.22
step
  talk Latronicus Moonspear##7877
  accept Lethtendris's Web##7488 |goto Feralas 30.38,46.17
step
  talk Shen'dralar Ancient##14358
  accept The Treasure of the Shen'dralar##7462 |goto Dire Maul - Dungeon -1,-1
step
  talk Shen'dralar Ancient##14358
  accept The Treasure of the Shen'dralar##7877 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Wildeyes##7564 |goto Burning Steppes 12.69,31.64
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  use A Dull and Flat Elven Blade##18513 |tip The previous quest gave you this item — it starts the quest.
  accept The Forging of Quel'Serrar##7508 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  talk Lord Banehollow##9516
  accept Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Emphasis on Sacrifice##7637 |goto Stormwind City 48.43,50.22
step
  note Bring Lethtendris' Web to Latronicus Moonspear at the Feathermoon Stronghold in Feralas.
  collect Lethtendris's Web##18426 |q 7488 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Lethtendris
step
  only Warlock
  note Confront Ulathek, then bring The Traitor's Heart to Lord Banehollow in Jaedenar.
  collect The Traitor's Heart##18719 |q 7624 |goto Felwood 40.76,48.42 |tip {dropsfrom}Ulathek
step
  talk Latronicus Moonspear##7877
  turnin Lethtendris's Web##7488 |goto Feralas 30.38,46.17
step
  note Return to the Athenaeum and find the Treasure of the Shen'dralar. Claim your reward!
  turnin The Treasure of the Shen'dralar##7462 |goto Dire Maul - Dungeon -1,-1
step
  note Return to the Athenaeum and find the Treasure of the Shen'dralar. Claim your reward!
  turnin The Treasure of the Shen'dralar##7877 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  note Bring the Case of Blood to Gorzeeki Wildeyes in the Burning Steppes.
  talk Gorzeeki Wildeyes##14437
  turnin Wildeyes##7564 |goto Burning Steppes 12.44,31.63
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Give the Dull and Flat Elven Blade to Lorekeeper Lydros.
  talk Lorekeeper Lydros##14368
  turnin The Forging of Quel'Serrar##7508 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  only not NightElf not Gnome not Skyborne Paladin
  note Travel to Ironforge and get High Priest Rohan's Exorcism Censer. You will need to make a donation of 150 gold in order to secure it.
  talk High Priest Rohan##11406
  turnin Emphasis on Sacrifice##7637 |goto Ironforge 24.73,8.16
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Bell of Dethmoora##7626 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Wheel of the Black March##7627 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Doomsday Candle##7628 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  talk Lord Banehollow##9516
  accept Xorothian Stardust##7625 |goto Felwood 35.93,44.42
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Rohan##11406
  accept To Show Due Judgment##7639 |goto Ironforge 24.73,8.16
step
  only Warlock
  note Bring 10 Elixirs of Shadow Power to Gorzeeki Wildeyes in the Burning Steppes.
  collect 10 Elixir of Shadow Power##9264 |q 7626 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Bring 6 Large Brilliant Shards and 25 Dark Iron Ore to Gorzeeki in the Burning Steppes.
  collect 6 Large Brilliant Shard##14344 |q 7627 |goto Burning Steppes 12.69,31.64
step
  only Warlock
  note Bring 35 Black Dragonscales to Gorzeeki Wildeyes in the Burning Steppes.
  collect 35 Black Dragonscale##15416 |q 7628 |goto Burning Steppes 90.47,52.28 |tip {dropsfrom}Black Dragonspawn, Black Wyrmkin, Flamescale Dragonspawn
step
  only Warlock
  note Purchase Xorothian Stardust from Ur'dan. Bring it to Gorzeeki Wildeyes in the Burning Steppes.
  buy Xorothian Stardust##18687 |q 7625 |goto Felwood 36.18,44.46
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Bell of Dethmoora##7626 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Wheel of the Black March##7627 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Doomsday Candle##7628 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Xorothian Stardust##7625 |goto Burning Steppes 12.44,31.63
step
  only not NightElf not Gnome not Skyborne Paladin
  note Return the Exorcism Censer to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  talk Lord Grayson Shadowbreaker##928
  turnin To Show Due Judgment##7639 |goto Stormwind City 48.43,50.22
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  accept Arcanite##7630 |goto Burning Steppes 12.44,31.63
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  only Warlock
  note Bring the Imp in a Jar to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes.
  talk J'eevee##14500 |q 7629 |goto Scholomance - Dungeon -1,-1
step
  only Warlock
  note Bring 3 Arcanite Bar to Gorzeeki in the Burning Steppes.
  collect 3 Arcanite Bar##12360 |q 7630 |goto Burning Steppes 12.44,31.63
step
  only not NightElf not Gnome not Skyborne Paladin
  note Use the Exorcism Censer to drive out the spirits that torment Terrordale. When you have slain 25 Terrordale Spirits, return to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  kill Terrordale Spirit##14564 |q 7640 |goto Eastern Plaguelands 11.36,20.78
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Imp Delivery##7629 |goto Burning Steppes 12.44,31.63
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Arcanite##7630 |goto Burning Steppes 12.44,31.63
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  accept Dreadsteed of Xoroth##7631 |goto Burning Steppes 12.69,31.64
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept The Work of Grimand Elmore##7641 |goto Stormwind City 48.43,50.22
step
  only Warlock
  note Read Mor'zul's Instructions. Summon a Xorothian Dreadsteed, defeat it, then bind its spirit to you.
  kill Xorothian Dreadsteed##14502 |q 7631 |goto Dire Maul - Dungeon -1,-1 |elite
step
  only Warlock
  talk Dreadsteed Spirit##14504
  turnin Dreadsteed of Xoroth##7631 |goto Dire Maul - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak with Grimand Elmore in Stormwind's Dwarven District.
  talk Grimand Elmore##1416
  turnin The Work of Grimand Elmore##7641 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  accept Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
  collect 40 Stratholme Holy Water##13180 |q 7642 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  turnin Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Ancient Equine Spirit##7643 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Acquire special horse feed used for feeding a spirit horse. Merideth Carlson in Southshore apparently is the source for such food.
  collect Manna-Enriched Horse Feed##18775 |q 7643 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Ancient Equine Spirit##14566
  turnin Ancient Equine Spirit##7643 |goto Dire Maul - Dungeon -1,-1
]])
