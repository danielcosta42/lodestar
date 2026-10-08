-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Priest", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "a0c8f78e",
}, [[
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  collect Tough Wolf Meat##750 |q 179 |goto Elwynn Forest 49.41,37.75 |tip {dropsfrom}Timber Wolf, Young Wolf, Ragged Timber Wolf
step
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Priest
  talk Sten Stoutarm##658
  accept Hallowed Rune##3110 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Priest
  note Read the Hallowed Rune and speak to Branstock Khalder in Anvilmar.
  talk Branstock Khalder##837
  turnin Hallowed Rune##3110 |goto Dun Morogh 28.6,66.39
step
  only Gnome Priest
  talk Sten Stoutarm##658
  accept Hallowed Memorandum##98574 |goto Dun Morogh 29.93,71.2
step
  only Gnome Priest
  note Read the Hallowed Memorandum and speak to Branstock Khalder in Anvilmar.
  talk Branstock Khalder##837
  turnin Hallowed Memorandum##98574 |goto Dun Morogh 28.6,66.39
step
  talk Deputy Willem##823
  accept A Threat Within##783 |goto Elwynn Forest 48.17,42.94
step
  note Speak with Marshal McBride.
  talk Marshal McBride##197
  turnin A Threat Within##783 |goto Elwynn Forest 48.92,41.61
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  note Kill 10 Kobold Vermin, then return to Marshal McBride.
  kill Kobold Vermin##6 |q 7 |goto Elwynn Forest 49.17,36.55
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Human Priest
  talk Marshal McBride##197
  accept Hallowed Letter##3103 |goto Elwynn Forest 48.92,41.61
step
  only Human Priest
  note Read the Hallowed Letter and speak to Priestess Anetta in Northshire Abbey.
  talk Priestess Anetta##375
  turnin Hallowed Letter##3103 |goto Elwynn Forest 49.81,39.49
step
  talk Conservator Ilthalaine##2079
  accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  note Kill 7 Young Nightsabers and 4 Young Thistle Boars and return to Conservator Ilthalaine.
  talk Young Nightsaber##2031 |q 456 |goto Teldrassil 61.58,44.19
step
  talk Conservator Ilthalaine##2079
  turnin The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
  only NightElf Priest
  talk Conservator Ilthalaine##2079
  accept Hallowed Sigil##3119 |goto Teldrassil 58.69,44.27
step
  only NightElf Priest
  note Read the Hallowed Sigil and speak to Shanda in Aldrassil.
  talk Shanda##3595
  turnin Hallowed Sigil##3119 |goto Teldrassil 59.17,40.44
step
  only not Human not NightElf not Skyborne Priest
  talk Branstock Khalder##837
  accept In Favor of the Light##5626 |goto Dun Morogh 28.6,66.39
step
  only not Human not NightElf not Skyborne Priest
  note Speak to Maxan Anvol in Dun Morogh.
  talk Maxan Anvol##1226
  turnin In Favor of the Light##5626 |goto Dun Morogh 47.34,52.19
step
  only not Human not NightElf not Skyborne Priest
  talk Maxan Anvol##1226
  accept Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  only not Human not NightElf not Skyborne Priest
  note Find Mountaineer Dolf and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Maxan Anvol in Kharanos.
  talk Mountaineer Dolf##12427 |q 5625 |goto Dun Morogh 45.81,54.57
step
  only not Human not NightElf not Skyborne Priest
  talk Maxan Anvol##1226
  turnin Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
step
  only Human Priest
  talk Priestess Anetta##375
  accept In Favor of the Light##5623 |goto Elwynn Forest 49.81,39.49
step
  only Human Priest
  note Speak to Priestess Josetta in Elwynn Forest.
  talk Priestess Josetta##377
  turnin In Favor of the Light##5623 |goto Elwynn Forest 43.28,65.72
step
  only Human Priest
  talk Priestess Josetta##377
  accept Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
step
  only Human Priest
  note Find Guard Roberts and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude and then return to Priestess Josetta in Goldshire.
  talk Guard Roberts##12423 |q 5624 |goto Elwynn Forest 48.15,68.05
step
  only Human Priest
  talk Priestess Josetta##377
  turnin Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
step
  only NightElf Priest
  talk Shanda##3595
  accept In Favor of Elune##5622 |goto Teldrassil 59.17,40.44
step
  only NightElf Priest
  note Speak to Laurna Morninglight in Teldrassil.
  talk Laurna Morninglight##3600
  turnin In Favor of Elune##5622 |goto Teldrassil 55.56,56.75
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  accept Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
step
  only NightElf Priest
  note Find Sentinel Shaya and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude and then return to Laurna Morninglight in Dolanaar.
  talk Sentinel Shaya##12429 |q 5621 |goto Teldrassil 57.24,63.51
step
  only NightElf Priest
  talk Laurna Morninglight##3600
  turnin Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
step
  only NightElf Priest not completed(5628) not completed(5629) not completed(5630) not completed(5631) not completed(5632) not completed(5633) not haveq(5628) not haveq(5629) not haveq(5630) not haveq(5631) not haveq(5632) not haveq(5633)
  talk Priestess Alathea##11401
  accept Stars of Elune##5627 |goto Darnassus 39.52,81.2
step
  only NightElf Priest not completed(5628) not completed(5629) not completed(5630) not completed(5631) not completed(5632) not completed(5633) not haveq(5628) not haveq(5629) not haveq(5630) not haveq(5631) not haveq(5632) not haveq(5633)
  talk Priestess Alathea##11401
  turnin Stars of Elune##5627 |goto Darnassus 39.52,81.2
step
  only Gnome Priest
  talk Maxan Anvol##1226
  accept Confounding Flash##94824 |goto Dun Morogh 47.34,52.19
step
  only Gnome Priest
  note Speak to High Priestess Mims in Ironforge.
  talk High Priestess Mims##258785
  turnin Confounding Flash##94824 |goto Ironforge 24.89,10.23
step
  only Human Priest not completed(5634) not completed(5636) not completed(5637) not completed(5638) not completed(5639) not completed(5640) not haveq(5634) not haveq(5636) not haveq(5637) not haveq(5638) not haveq(5639) not haveq(5640)
  talk Priestess Josetta##377
  accept Desperate Prayer##5635 |goto Elwynn Forest 43.28,65.72
step
  only Human Priest not completed(5634) not completed(5636) not completed(5637) not completed(5638) not completed(5639) not completed(5640) not haveq(5634) not haveq(5636) not haveq(5637) not haveq(5638) not haveq(5639) not haveq(5640)
  note Speak to High Priestess Laurena in Stormwind.
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5635 |goto Stormwind City 49.53,44.6
step
  only Human Priest
  talk Priestess Josetta##377
  accept Divine Grace##94774 |goto Elwynn Forest 43.28,65.72
step
  only Human Priest
  note Speak to High Priestess Laurena in Stormwind.
  talk High Priestess Laurena##376
  turnin Divine Grace##94774 |goto Stormwind City 49.53,44.6
step
  only Gnome Priest
  talk High Priestess Mims##258785
  accept Confounding Flash##94817 |goto Ironforge 24.89,10.23
step
  only Gnome Priest
  talk High Priestess Mims##258785
  turnin Confounding Flash##94817 |goto Ironforge 24.89,10.23
step
  only Dwarf Priest not completed(5635) not completed(5636) not completed(5637) not completed(5638) not completed(5639) not completed(5640) not haveq(5635) not haveq(5636) not haveq(5637) not haveq(5638) not haveq(5639) not haveq(5640)
  talk High Priestess Laurena##376
  accept Desperate Prayer##5634 |goto Stormwind City 49.53,44.6
step
  only Dwarf Priest not completed(5635) not completed(5636) not completed(5637) not completed(5638) not completed(5639) not completed(5640) not haveq(5635) not haveq(5636) not haveq(5637) not haveq(5638) not haveq(5639) not haveq(5640)
  talk High Priestess Laurena##376
  turnin Desperate Prayer##5634 |goto Stormwind City 49.53,44.6
step
  only Human Priest
  talk High Priestess Laurena##376
  accept Divine Grace##94773 |goto Stormwind City 49.53,44.6
step
  only Human Priest
  talk High Priestess Laurena##376
  turnin Divine Grace##94773 |goto Stormwind City 49.53,44.6
step
  only NightElf Priest not completed(5673) not completed(5674) not completed(5675) not haveq(5673) not haveq(5674) not haveq(5675)
  talk Priestess Alathea##11401
  accept Elune's Grace##5672 |goto Darnassus 39.52,81.2
step
  only NightElf Priest not completed(5673) not completed(5674) not completed(5675) not haveq(5673) not haveq(5674) not haveq(5675)
  talk Priestess Alathea##11401
  turnin Elune's Grace##5672 |goto Darnassus 39.52,81.2
step
  only Dwarf Priest not completed(5645) not completed(5647) not haveq(5645) not haveq(5647)
  talk High Priest Rohan##11406
  accept A Lack of Fear##5641 |goto Ironforge 24.73,8.16
step
  only Dwarf Priest not completed(5645) not completed(5647) not haveq(5645) not haveq(5647)
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5641 |goto Ironforge 24.73,8.16
step
  only Human Priest not completed(5677) not completed(5678) not haveq(5677) not haveq(5678)
  talk High Priestess Laurena##376
  accept Arcane Feedback##5676 |goto Stormwind City 49.53,44.6
step
  only Human Priest not completed(5677) not completed(5678) not haveq(5677) not haveq(5678)
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5676 |goto Stormwind City 49.53,44.6
step
  only Priest
  talk Brother Joshua##5489
  accept Cenarion Aid##8254 |goto Stormwind City 49.5,45.21
step
  only Priest
  note Seek out Ogtinc in Azshara.
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  accept Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Priest
  note Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 4 Healthy Courser Gland##20027 |q 8255 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Priest
  talk Ogtinc##8405
  turnin Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  accept The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Priest
  note Acquire an Ichor of Undeath for Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Ichor of Undeath##7972 |q 8256 |goto Stranglethorn Vale 38.89,57.62 |tip {dropsfrom}Zanzil Zombie, Zanzil Hunter, Skeletal Flayer
step
  only Priest
  talk Ogtinc##8405
  turnin The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  accept Blood of Morphaz##8257 |goto Azshara 42.4,42.62
step
  only Priest
  note Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows.
  collect Blood of Morphaz##20025 |q 8257 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Priest
  talk Greta Mosshoof##10922
  turnin Blood of Morphaz##8257 |goto Felwood 51.21,82.11
step
  only Priest
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Holy Bologna: What the Light Won't Tell You##7504 |goto Dire Maul - Dungeon -1,-1
step
  only Priest
  note Return the book to its rightful owners.
  talk Lorekeeper Javon##14381
  turnin Holy Bologna: What the Light Won't Tell You##7504 |goto Dire Maul - Dungeon -1,-1
step
  only Priest
  talk Deliana##16013
  accept An Earnest Proposition##8909 |goto Ironforge 43.53,52.64
step
  only Priest
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with 1 set of Devout Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8909 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Priest
  talk Deliana##16013
  turnin An Earnest Proposition##8909 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  note Bring the Sealed Blood Container to Mux Manascrambler inside Gadgetzan in Tanaris.
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  note Bring the Extra-Dimensional Ghost Revealer to Deliana in Ironforge.
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  accept Just Compensation##8934 |goto Ironforge 43.53,52.64
step
  only Priest
  note Bring a Devout Belt and a set of Devout Gloves to Deliana in Ironforge.
  collect Devout Belt##16696 |q 8934 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Spellbinder, Smolderthorn Shadow Priest, Firebrand Darkweaver
step
  only Priest
  talk Deliana##16013
  turnin Just Compensation##8934 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  note Use the Extra-Dimensional Ghost Revealer at the entrance to Stratholme and speak with the ghost of Anthion Harmon.
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  note Bring Ysida's Locket to Anthion Harmon in Eastern Plaguelands.
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
  note Take the incomplete Banner of Provocation to Falrin Treeshaper at the library in Dire Maul.
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
  only Priest
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8955 |goto Eastern Plaguelands 26.11,11.3
step
  only Priest
  note Return to Deliana in Ironforge with a set of Devout Sandals, Devout Skirt and Devout Mantle.
  collect Devout Sandals##16691 |q 8955 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Maleki the Pallid
step
  only Priest
  talk Deliana##16013
  turnin Anthion's Parting Words##8955 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  note Travel to Blackrock Mountain and use the Extra-Dimensional Ghost Revealer to find Bodley near Blackrock Spire.
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
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8989 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain.
  collect 40 Blackrock Bracer##22138 |q 8994 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Sentry, Scarshield Acolyte, Scarshield Legionnaire
step
  talk Bodley##16033
  turnin Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
  use Lord Valthalak##16042 |q 8995 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {useit}
step
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996 |goto Blackrock Spire - Dungeon -1,-1
step
  note Return to Bodley inside Blackrock Mountain and give him the Brazier of Beckoning.
  collect Brazier of Beckoning##22056 |q 8996 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Bodley##16033
  turnin Return to Bodley##8996 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Back to the Beginning##8997 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Speak with Deliana at The High Seat in Ironforge.
  talk Deliana##16013
  turnin Back to the Beginning##8997 |goto Ironforge 43.53,52.64
step
  only Priest
  talk Deliana##16013
  accept Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
step
  only Priest
  note Give Deliana your Devout Crown and Devout Robe.
  collect Devout Crown##16693 |q 9003 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Priest
  talk Deliana##16013
  turnin Saving the Best for Last##9003 |goto Ironforge 43.53,52.64
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  talk Frankal Stonebridge##15171 |q 8304 |goto Silithus 40.81,88.86
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 50.87,26.76 |tip {dropsfrom}Hive'Ashi Glyphed Crystal
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 50.21,40.97
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment wants you to deliver the Glyphed Crystal Prism to Geologist Larksbane at the Cenarion Hold in Silithus.
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  kill Emissary Roman'khan##14862 |goto Silithus 48.77,58.14 |raid
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 48.77,58.14
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  only Priest
  talk Geologist Larksbane##15183
  accept Armaments of War##8379 |goto Silithus 49.67,37.46
step
  only Priest
  talk Geologist Larksbane##15183
  turnin Armaments of War##8379 |goto Silithus 49.67,37.46
step
  only Priest
  talk Eris Havenfire##14494
  accept A Warning##7621 |goto Eastern Plaguelands 17.21,12.79
step
  only Priest
  talk Eris Havenfire##14494
  turnin A Warning##7621 |goto Eastern Plaguelands 17.21,12.79
step
  only Priest
  talk Eris Havenfire##14494
  accept The Balance of Light and Shadow##7622 |goto Eastern Plaguelands 17.21,12.79
step
  only Priest
  note Save 50 Peasants before 15 are slain. Speak with Eris Havenfire should you accomplish this task.
  talk Eris Havenfire##14494
  turnin The Balance of Light and Shadow##7622 |goto Eastern Plaguelands 17.21,12.79
]])
