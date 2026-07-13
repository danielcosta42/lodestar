-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Dire Maul", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Warlock
  talk Lorekeeper Lydros##14368
  accept Arcane Refreshment##7463 |goto Dire Maul - Dungeon -1,-1
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
  talk Lorekeeper Lydros##14368
  accept Libram of Rapidity##7483 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  accept Libram of Focus##7484 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  accept Libram of Protection##7485 |goto Dire Maul - Dungeon -1,-1
step
  talk Captain Kromcrush##14325
  accept Unfinished Gordok Business##7703 |goto Dire Maul - Dungeon -1,-1
step
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  only Warlock
  note Travel to the Warpwood Quarter of Dire Maul and slay the water elemental, Hydrospawn. Return to Lorekeeper Lydros in the Athenaeum with the Hydrospawn Essence.
  kill Hydrospawn##13280 |q 7463 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul.
  get The Gordok Ogre Suit |q 5518 |goto Dire Maul - Dungeon -1,-1
step
  kill Gordok Brute##11441 |q 5525 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note You must destroy the guardians surrounding the 5 Pylons that power the Prison of Immol'thar. Once the Pylons have powered down, the force field surrounding Immol'thar will have dissipated.
  kill Immol'thar##11496 |q 7461 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note Bring a Libram of Rapidity, 1 Pristine Black Diamond, 2 Large Brilliant Shards, and 2 Blood of Heroes to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Rapidity.
  kill Gordok Brute##11441 |q 7483 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note Bring a Libram of Focus, 1 Pristine Black Diamond, 4 Large Brilliant Shards, and 2 Skin of Shadow to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Focus.
  kill Gordok Brute##11441 |q 7484 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note Bring a Libram of Protection, 1 Pristine Black Diamond, 2 Large Brilliant Shards, and 1 Frayed Abomination Stitching to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Protection.
  kill Gordok Brute##11441 |q 7485 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.
  collect The Prince's Chest##179545 |q 7703 |goto Dire Maul - Dungeon -1,-1
step
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  kill Stonelash Scorpid##11735 |q 8913 |goto Silithus 59.92,28.33
step
  only Warlock
  talk Lorekeeper Lydros##14368
  turnin Arcane Refreshment##7463 |goto Dire Maul - Dungeon -1,-1
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
  talk Lorekeeper Lydros##14368
  turnin Libram of Rapidity##7483 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  turnin Libram of Focus##7484 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  turnin Libram of Protection##7485 |goto Dire Maul - Dungeon -1,-1
step
  only Rogue
  talk Lorekeeper Kildrath##14383
  turnin Garona: A Study on Stealth and Treachery##7498 |goto Dire Maul - Dungeon -1,-1
step
  only Warrior
  talk Lorekeeper Kildrath##14383
  turnin Codex of Defense##7499 |goto Dire Maul - Dungeon -1,-1
step
  only Warlock
  talk Lorekeeper Kildrath##14383
  turnin The Arcanist's Cookbook##7500 |goto Dire Maul - Dungeon -1,-1
step
  only Paladin
  talk Lorekeeper Mykos##14382
  turnin The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
step
  only Druid
  talk Lorekeeper Mykos##14382
  turnin Harnessing Shadows##7502 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  talk Lorekeeper Mykos##14382
  turnin The Greatest Race of Hunters##7503 |goto Dire Maul - Dungeon -1,-1
step
  only Priest
  talk Lorekeeper Javon##14381
  turnin Holy Bologna: What the Light Won't Tell You##7504 |goto Dire Maul - Dungeon -1,-1
step
  only Mage
  talk Lorekeeper Javon##14381
  turnin Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Javon##14381
  turnin The Emerald Dream...##7506 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  turnin Foror's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  turnin Enchanted Thorium Platemail: Volume I##7649 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  turnin Enchanted Thorium Platemail: Volume II##7650 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  turnin Enchanted Thorium Platemail: Volume III##7651 |goto Dire Maul - Dungeon -1,-1
step
  talk Captain Kromcrush##14325
  turnin Unfinished Gordok Business##7703 |goto Dire Maul - Dungeon -1,-1
step
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Knot Thimblejack##14338
  accept The Gordok Ogre Suit##5519 |goto Dire Maul - Dungeon -1,-1
step
  talk Knot Thimblejack##14338
  accept Free Knot!##7429 |goto Dire Maul - Dungeon -1,-1
step
  talk Shen'dralar Ancient##14358
  accept The Treasure of the Shen'dralar##7877 |goto Dire Maul - Dungeon -1,-1
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  get The Gordok Ogre Suit |q 5519 |goto Dire Maul - Dungeon -1,-1
step
  kill Gordok Brute##11441 |q 7429 |goto Dire Maul - Dungeon -1,-1 |elite
step
  talk Knot Thimblejack##14338
  turnin The Gordok Ogre Suit##5519 |goto Dire Maul - Dungeon -1,-1
step
  talk Knot Thimblejack##14338
  turnin Free Knot!##7429 |goto Dire Maul - Dungeon -1,-1
step
  talk Lorekeeper Lydros##14368
  turnin The Forging of Quel'Serrar##7508 |goto Dire Maul - Dungeon -1,-1
step
  turnin The Treasure of the Shen'dralar##7877 |goto Dire Maul - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Lorekeeper Lydros##14368
  accept The Forging of Quel'Serrar##7509 |goto Dire Maul - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note You must get Onyxia to breathe fire on the Unfired Ancient Blade. Once this is done, pick up the now Heated Ancient Blade. Be warned, a Heated Ancient Blade will not remain heated forever - time is of the essence.
  get The Forging of Quel'Serrar |q 7509 |goto Dire Maul - Dungeon -1,-1
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  get The Ectoplasmic Distiller |q 8921 |goto Tanaris 52.47,27.23
step
  talk Lorekeeper Lydros##14368
  turnin The Forging of Quel'Serrar##7509 |goto Dire Maul - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  kill Tortured Druid##12178 |q 8924 |goto Silithus 62.65,52.76
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  kill Magma Lord Bokk##16043 |q 8925 |goto Burning Steppes 35.39,57.76
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  get A Shifty Merchant |q 8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  kill Scarshield Raider##9258 |q 8927 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  kill Ysida Harmon##16031 |q 8945
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  get Anthion's Strange Request |q 8947 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 30.85,16.75
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  kill Highlord Omokk##9196 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  kill Eldreth Sorcerer##11470 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  get The Challenge |q 9015 |goto Dire Maul - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 30.85,16.75
]])
