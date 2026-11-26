-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Dire Maul", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "a286e49d",
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
  only Mage
  talk Lorekeeper Lydros##14368
  accept Arcane Refreshment##7463 |goto Dire Maul - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Nostro's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin completed(7642)
  talk Lord Grayson Shadowbreaker##928
  accept Ancient Equine Spirit##7643 |goto Stormwind City 48.43,50.22
step
  talk Pix Xizzix##227853
  accept In Demand - Ancient Elven Curiosities##96076 |goto Stranglethorn Vale 28.52,75.86
step
  note Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary.
  collect Book of Incantations##18261 |q 7441 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Pusillin
step
  note Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
  collect 4 Bolt of Runecloth##14048 |q 5518/1 |tip Crafted or bought.
  talk Lhara##14846
  collect 8 Rugged Leather##8170 |q 5518/2 |goto Elwynn Forest 41.2,69.9
  talk Edna Mullby##1286
  buy 2 Rune Thread##14341 |q 5518/3 |goto Stormwind City 64.73,71.26
  collect Ogre Tannin##18240 |q 5518 |goto Dire Maul - Dungeon -1,-1 |tip {dropsfrom}Ogre Tannin Basket
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
  click Skeletal Remains of Telmius Dreamseeker##179544 |q 7482 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  note Travel to Dire Maul in Feralas and recover 15 Satyr Blood from the Wildspawn Satyr that inhabit the Warpwood Quarter. Return to Daio in the Tainted Scar when this is done.
  collect 15 Satyr Blood##18603 |q 7581 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Wildspawn Satyr, Wildspawn Rogue, Wildspawn Trickster
step
  only Mage
  note Travel to the Warpwood Quarter of Dire Maul and slay the water elemental, Hydrospawn. Return to Lorekeeper Lydros in the Athenaeum with the Hydrospawn Essence.
  collect Hydrospawn Essence##18299 |q 7463 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Hydrospawn
step
  only not NightElf not Gnome not Skyborne Paladin completed(7642)
  note Acquire special horse feed used for feeding a spirit horse. Merideth Carlson in Southshore apparently is the source for such food.
  collect Manna-Enriched Horse Feed##18775 |q 7643 |goto Stormwind City 48.43,50.22
step
  note Travel to Dire Maul to acquire a Felvine Seed from Alzzin the Wildshaper, an Ancient Memento from Prince Tortheldrin, and an Earthstone Diamond Pinky Ring from King Gordok, and bring them to Pix Xizzix in Booty Bay.
  collect Felvine Seed##272020 |q 96076 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Alzzin the Wildshaper
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
  only Mage
  talk Lorekeeper Lydros##14368
  turnin Arcane Refreshment##7463 |goto Dire Maul - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Return Nostro's Compendium of Dragon Slaying to the Athenaeum.
  talk Lorekeeper Lydros##14368
  turnin Nostro's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin completed(7642)
  talk Ancient Equine Spirit##14566
  turnin Ancient Equine Spirit##7643 |goto Dire Maul - Dungeon -1,-1
step
  talk Pix Xizzix##227853
  turnin In Demand - Ancient Elven Curiosities##96076 |goto Stranglethorn Vale 28.52,75.86
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
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  use A Dull and Flat Elven Blade##18513 |tip The previous quest gave you this item — it starts the quest.
  accept The Forging of Quel'Serrar##7508 |goto Dire Maul - Dungeon -1,-1
step
  note Bring Lethtendris' Web to Latronicus Moonspear at the Feathermoon Stronghold in Feralas.
  collect Lethtendris's Web##18426 |q 7488 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Lethtendris
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
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Give the Dull and Flat Elven Blade to Lorekeeper Lydros.
  talk Lorekeeper Lydros##14368
  turnin The Forging of Quel'Serrar##7508 |goto Dire Maul - Dungeon -1,-1
]])
