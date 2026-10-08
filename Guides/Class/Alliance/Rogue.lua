-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Rogue", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "deb6da07",
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
  only Dwarf Rogue
  talk Sten Stoutarm##658
  accept Encrypted Rune##3109 |goto Dun Morogh 29.93,71.2
step
  only Dwarf Rogue
  note Read the Encrypted Rune and speak to Solm Hargrin in Coldridge Valley.
  talk Solm Hargrin##916
  turnin Encrypted Rune##3109 |goto Dun Morogh 28.37,67.51
step
  only Gnome Rogue
  talk Sten Stoutarm##658
  accept Encrypted Memorandum##3113 |goto Dun Morogh 29.93,71.2
step
  only Gnome Rogue
  note Read the Encrypted Memorandum and speak to Solm Hargrin in Coldridge Valley.
  talk Solm Hargrin##916
  turnin Encrypted Memorandum##3113 |goto Dun Morogh 28.37,67.51
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
  only Human Rogue
  talk Marshal McBride##197
  accept Encrypted Letter##3102 |goto Elwynn Forest 48.92,41.61
step
  only Human Rogue
  note Read the Encrypted Letter and speak to Jorik Kerridan in the stable behind Northshire Abbey.
  talk Jorik Kerridan##915
  turnin Encrypted Letter##3102 |goto Elwynn Forest 50.31,39.92
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
  only NightElf Rogue
  talk Conservator Ilthalaine##2079
  accept Encrypted Sigil##3118 |goto Teldrassil 58.69,44.27
step
  only NightElf Rogue
  note Read the Encrypted Sigil and speak to Frahun Shadewhisper in Shadowglen.
  talk Frahun Shadewhisper##3594
  turnin Encrypted Sigil##3118 |goto Teldrassil 59.64,38.66
step
  talk Ailee Farheart##251362
  accept Coming of Age##92460 |goto Zephras Isle 42.82,23.37
step
  note Speak with Rorian the Dayseeker in Thendal Grove.
  talk Rorian the Dayseeker##251361
  turnin Coming of Age##92460 |goto Zephras Isle 42.1,23.49
step
  talk Rorian the Dayseeker##251361
  accept Harmony in Balance##92461 |goto Zephras Isle 42.1,23.49
step
  note Slay 8 Vuldren Juveniles in Thendal Grove.
  talk Juvenile Vuldren##250873 |q 92461 |goto Zephras Isle 44.71,26.43
step
  talk Rorian the Dayseeker##251361
  turnin Harmony in Balance##92461 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Rogue
  talk Rorian the Dayseeker##251361
  accept At Home in the Shadows##92483 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Rogue
  note Read the Simple Note then speak with Akeri Duskblade within the watchtower in Thendal Grove.
  talk Akeri Duskblade##251389
  turnin At Home in the Shadows##92483 |goto Zephras Isle 43.71,24.3
step
  only not Human not NightElf not Skyborne Rogue
  talk Hogral Bakkan##1234
  accept Road to Salvation##2218 |goto Dun Morogh 47.56,52.61
step
  only not Human not NightElf not Skyborne Rogue
  note Speak with Hulfdan Blackbeard in Ironforge.
  talk Hulfdan Blackbeard##5165
  turnin Road to Salvation##2218 |goto Ironforge 51.96,14.84
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Simple Subterfugin'##2238 |goto Ironforge 51.96,14.84
step
  only Rogue
  note Find Onin MacHammar by Gnomeregan.
  talk Onin MacHammar##6886
  turnin Simple Subterfugin'##2238 |goto Dun Morogh 25.16,44.45
step
  only not Human not NightElf not Skyborne Rogue
  talk Onin MacHammar##6886
  accept Onin's Report##2239 |goto Dun Morogh 25.16,44.45
step
  only not Human not NightElf not Skyborne Rogue
  note Take Onin's Report back to Hulfdan in Ironforge.
  talk Hulfdan Blackbeard##5165
  turnin Onin's Report##2239 |goto Ironforge 51.96,14.84
step
  only Human Rogue
  talk Keryn Sylvius##917
  accept Seek out SI: 7##2205 |goto Elwynn Forest 43.87,65.94
step
  only Human Rogue
  note Deliver Keryn Sylvius's package to Master Mathias Shaw at the Stormwind Barracks.
  talk Master Mathias Shaw##332
  turnin Seek out SI: 7##2205 |goto Stormwind City 78.31,70.74
step
  only Rogue
  talk Master Mathias Shaw##332
  accept Snatch and Grab##2206 |goto Stormwind City 78.31,70.74
step
  only Rogue
  note Find the Defias Dockmaster and recover the Shipping Schedule for Master Mathias Shaw.
  collect Defias Shipping Schedule##7675 |q 2206 |goto Elwynn Forest 48.06,86.96 |tip {dropsfrom}Defias Dockmaster
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Snatch and Grab##2206 |goto Stormwind City 78.31,70.74
step
  only NightElf Rogue
  talk Jannok Breezesong##3599
  accept The Apple Falls##2241 |goto Teldrassil 56.38,60.14
step
  only NightElf Rogue
  note Take Jannok's Rose to Syurna in Darnassus.
  talk Syurna##4163
  turnin The Apple Falls##2241 |goto Darnassus 36.99,21.91
step
  only Rogue
  talk Syurna##4163
  accept Destiny Calls##2242 |goto Darnassus 36.99,21.91
step
  only Rogue
  note Find Sethir the Ancient and bring back any clues that you may discover to Syurna.
  collect Sethir's Journal##7737 |q 2242 |goto Teldrassil 37.11,22.83 |tip {dropsfrom}Sethir the Ancient
step
  only Rogue
  talk Syurna##4163
  turnin Destiny Calls##2242 |goto Darnassus 36.99,21.91
step
  only not Human not NightElf not Skyborne Rogue
  talk Hogral Bakkan##1234
  accept To Hulfdan!##2299 |goto Dun Morogh 47.56,52.61
step
  only not Human not NightElf not Skyborne Rogue
  note Travel to Ironforge and speak with Hulfdan Blackbeard.
  talk Hulfdan Blackbeard##5165
  turnin To Hulfdan!##2299 |goto Ironforge 51.96,14.84
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Kingly Shakedown##2298 |goto Ironforge 51.96,14.84
step
  only Rogue
  note Travel to Stormwind and seek out Renzik "The Shiv."
  talk Renzik "The Shiv"##6946
  turnin Kingly Shakedown##2298 |goto Stormwind City 78.29,71.14
step
  only Human Rogue
  talk Keryn Sylvius##917
  accept SI:7##2300 |goto Elwynn Forest 43.87,65.94
step
  only Human Rogue
  note Travel to Stormwind and seek out Renzik "The Shiv."
  talk Renzik "The Shiv"##6946
  turnin SI:7##2300 |goto Stormwind City 78.29,71.14
step
  only Rogue
  talk Renzik "The Shiv"##6946
  accept Redridge Rendezvous##2281 |goto Stormwind City 78.29,71.14
step
  only Rogue
  note Venture forth to Lakeshire in the Redridge Mountains and speak with Lucius.
  talk Lucius##6966
  turnin Redridge Rendezvous##2281 |goto Redridge Mountains 22.97,52.04
step
  only Rogue
  talk Lucius##6966
  accept Alther's Mill##2282 |goto Redridge Mountains 22.97,52.04
step
  only Rogue
  note Open Lucius's Lockbox, recover the Token of Thievery and return it to Lucius in Lakeshire.
  collect Token of Thievery##7871 |q 2282 |goto Redridge Mountains 46.95,44.69 |tip {dropsfrom}Lucius's Lockbox
step
  only Rogue
  talk Lucius##6966
  turnin Alther's Mill##2282 |goto Redridge Mountains 22.97,52.04
step
  only NightElf Rogue
  talk Jannok Breezesong##3599
  accept Erion Shadewhisper##2259 |goto Teldrassil 56.38,60.14
step
  only NightElf Rogue
  note Contact Erion Shadewhisper in Darnassus.
  talk Erion Shadewhisper##4214
  turnin Erion Shadewhisper##2259 |goto Darnassus 34.52,25.93
step
  only Rogue
  talk Erion Shadewhisper##4214
  accept Erion's Behest##2260 |goto Darnassus 34.52,25.93
step
  only Rogue
  note Travel to Stormwind City and seek council with Renzik "The Shiv."
  talk Renzik "The Shiv"##6946
  turnin Erion's Behest##2260 |goto Stormwind City 78.29,71.14
step
  only Rogue
  talk Arantir##7009
  accept Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  only Rogue
  note Return the Horns of Nez'ra to Arantir's Shadow in Lakeshire.
  collect Horns of Nez'ra##7906 |q 2358 |goto Redridge Mountains 24.25,12.05 |tip {dropsfrom}Gath'Ilzogg, Blackrock Champion, Blackrock Shadowcaster
step
  only Rogue
  talk Arantir##7009
  turnin Horns of Nez'ra##2358 |goto Redridge Mountains 22.97,52.32
step
  only Rogue
  talk Master Mathias Shaw##332
  accept Mathias and the Defias##2360 |goto Stormwind City 78.31,70.74
step
  only Rogue
  note Travel to Westfall and find Agent Kearnen for your debriefing.
  talk Agent Kearnen##7024
  turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
step
  only Rogue
  talk Agent Kearnen##7024
  accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
step
  only Rogue
  note Steal the Defias Tower Key, break into the Defias Tower and uncover the contents of the Duskwood Chest. Take whatever information you find back to Mathias Shaw in Stormwind. Read Kearnen's Journal to gain insight about the tower.
  collect Klaven Mortwake's Journal##7908 |q 2359 |goto Westfall 70.41,73.93 |tip {dropsfrom}Duskwood Chest
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Klaven's Tower##2359 |goto Stormwind City 78.31,70.74
step
  only Rogue
  talk Master Mathias Shaw##332
  accept The Touch of Zanzil##2607 |goto Stormwind City 78.31,70.74
step
  only Rogue
  note Speak with Doc Mixilpixil in the cellar of the Barracks.
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2607 |goto Stormwind City 80.06,69.9
step
  only Rogue
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2608 |goto Stormwind City 80.06,69.9
step
  only Rogue
  note /Lay down to be examined by Doc Mixilpixil. How can he find the cure if he can't find the cause?
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2608 |goto Stormwind City 80.06,69.9
step
  only Rogue
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2609 |goto Stormwind City 80.06,69.9
step
  only Rogue
  note Bring Doc Mixilpixil one bundle of Simple Wildflowers, one Leaded Vial, one Bronze Tube, and one Spool of Light Chartreuse Silk Thread. The 'itis' doesn't cure itself, young <fella/lady>.
  collect Simple Wildflowers##3421 |q 2609 |goto Stormwind City 69.24,71.84 |tip {dropsfrom}Bernard Gump, Felicia Gump
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2609 |goto Stormwind City 80.06,69.9
step
  only Rogue
  talk Master Mathias Shaw##332 |goto Stormwind City 78.31,70.74 |tip They give you the item that starts the quest.
  accept The Manor, Ravenholdt##6681 |goto Stormwind City 78.31,70.74
step
  only Rogue
  note Take the Seal of Ravenholdt to Fahrad at Ravenholdt Manor, hidden away in the hills of Hillsbrad.
  talk Ravenholdt##13936 |q 6681 |goto Hillsbrad Foothills 78.64,17.84
step
  only Rogue
  talk Fahrad##6707
  turnin The Manor, Ravenholdt##6681 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  talk Osborne the Night Man##918
  accept A Simple Request##8233 |goto Stormwind City 77.43,65.31
step
  only Rogue
  note Speak with Lord Jorach Ravenholdt in Ravenholdt Manor.
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  note Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
  collect Sealed Azure Bag##19775 |q 8234 |goto Azshara 44.78,22.51 |tip {dropsfrom}Timbermaw Shaman, Blackmaw Shaman
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  collect 10 Encoded Fragment##20023 |q 8235 |goto Azshara 71.73,29.47 |tip {dropsfrom}Forest Ooze
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Archmage Xylem##8379
  accept The Azure Key##8236 |goto Azshara 29.25,40.21
step
  only Rogue
  note Return the Azure Key to Lord Jorach Ravenholdt.
  collect Azure Key##20022 |q 8236 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin The Azure Key##8236 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Ravenholdt Guard##6766
  accept Syndicate Emblems##6701 |goto Alterac Mountains 84.59,78.71
step
  only Rogue
  collect Syndicate Emblem##17124 |q 6701 |goto Alterac Mountains 39.62,15.8 |tip {dropsfrom}Syndicate Assassin, Syndicate Conjuror, Syndicate Footpad
step
  only Rogue
  talk Ravenholdt Guard##6766
  turnin Syndicate Emblems##6701 |goto Alterac Mountains 84.59,78.71
step
  only Rogue
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Garona: A Study on Stealth and Treachery##7498 |goto Dire Maul - Dungeon -1,-1
step
  only Rogue
  note Return the book to its rightful owners.
  talk Lorekeeper Kildrath##14383
  turnin Garona: A Study on Stealth and Treachery##7498 |goto Dire Maul - Dungeon -1,-1
step
  only Rogue
  talk Deliana##16013
  accept An Earnest Proposition##8910 |goto Ironforge 43.53,52.64
step
  only Rogue
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Shadowcraft Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8910 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Rogue
  talk Deliana##16013
  turnin An Earnest Proposition##8910 |goto Ironforge 43.53,52.64
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
  only Rogue
  talk Deliana##16013
  accept Just Compensation##8935 |goto Ironforge 43.53,52.64
step
  only Rogue
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Deliana in Ironforge.
  collect Shadowcraft Belt##16713 |q 8935 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip {dropsfrom}Scarshield Legionnaire, Firebrand Grunt, Scarshield Quartermaster
step
  only Rogue
  talk Deliana##16013
  turnin Just Compensation##8935 |goto Ironforge 43.53,52.64
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
  only Rogue
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8956 |goto Eastern Plaguelands 26.11,11.3
step
  only Rogue
  note Return to Deliana in Ironforge with a set of Shadowcraft Boots, Shadowcraft Pants and Shadowcraft Spaulders.
  collect Shadowcraft Boots##16711 |q 8956 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Rattlegore
step
  only Rogue
  talk Deliana##16013
  turnin Anthion's Parting Words##8956 |goto Ironforge 43.53,52.64
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
  only Rogue
  talk Deliana##16013
  accept Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
step
  only Rogue
  note Give Deliana your Shadowcraft Cap and Shadowcraft Tunic.
  collect Shadowcraft Cap##16707 |q 9004 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Rogue
  talk Deliana##16013
  turnin Saving the Best for Last##9004 |goto Ironforge 43.53,52.64
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
  only Rogue
  talk Geologist Larksbane##15183
  accept Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Geologist Larksbane##15183
  turnin Armaments of War##8378 |goto Silithus 49.67,37.46
]])
