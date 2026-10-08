-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackrock Depths", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "75fef47d",
}, [[
step
  talk Private Rocknot##9503
  accept Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  accept Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  talk Master Smith Burninate##14624
  accept What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Franclorn Forgewright##8888
  accept Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  talk Jalinda Sprig##9561
  accept Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  talk Yorba Screwspigot##9706
  accept Yuka Screwspigot##4324 |goto Tanaris 67.04,24.01
step
  talk Mistress Nagmara##9500
  accept The Love Potion##4201 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Royal Historian Archesonus##8879
  accept The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
  click Spectral Chalice##164869
  accept The Spectral Chalice##4083 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Enohar Thunderbrew##9540
  accept Ragnar Thunderbrew##4128 |goto Blasted Lands 63.63,20.63
step
  talk Maxwort Uberglint##9536
  accept The Heart of the Mountain##4123 |goto Burning Steppes 65.15,23.91
step
  talk Oralius##9177
  accept The Good Stuff##4286 |goto Burning Steppes 84.56,68.68
step
  only Druid
  talk Deliana##16013
  accept An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  talk Lothos Riftwaker##14387
  accept Attunement to the Core##7848 |goto Searing Gorge 32.13,94.7
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -1,-1
step
  kill Lokhtos Darkbargainer##12944 |goto Blackrock Depths - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Dark Iron Ale Mug##11325 |q 4295 |goto Duskwood 78.99,44.35 |tip {dropsfrom}Whit Wantmal, Anvilrage Officer, Grim Patron
step
  note Listen as Kalaran Windblade tells his story.
  talk Kalaran Windblade##8479 |q 3441 |goto Searing Gorge 39.06,38.99
step
  note Somewhere in the Slag Pit of the Cauldron you will find the Secret Plans: Fiery Flux that Overseer Maltorius stole. Find those plans and return them to Master Smith Burninate in the Searing Gorge.
  collect Secret Plans: Fiery Flux##18922 |q 7722 |goto Searing Gorge 40.45,35.74
step
  note Slay Overmaster Pyron and return to Jalinda Sprig.
  kill Overmaster Pyron##9026 |q 4262 |goto Eastern Kingdoms - the continent map 46.82,67.7 |elite
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  collect 4 Gromsblood##8846 |q 4201 |goto Felwood 38.83,49.24 |tip {dropsfrom}Razorlash, Gromsblood
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 91.67,35.54
step
  note Listen to Royal Historian Archesonus recant the history of Thaurissan.
  talk Royal Historian Archesonus##8879 |q 3702 |goto Ironforge 38.37,55.31
step
  collect Star Ruby##7910 |q 4083 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Small Thorium Vein, Mithril Deposit, Truesilver Deposit
step
  note Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes.
  collect The Heart of the Mountain##11309 |q 4123 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Heart of the Mountain
step
  note Travel to Blackrock Depths and recover 20 Dark Iron Fanny Packs. Return to Oralius when you have completed this task. You assume that the Dark Iron dwarves inside Blackrock Depths carry these 'fanny pack' contraptions.
  collect Dark Iron Fanny Pack##11468 |q 4286 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Anvilrage Overseer, Anvilrage Warden, Anvilrage Guardsman
step
  only Druid
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Wildheart Bracers to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8905 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  note Venture to the Molten Core entry portal in Blackrock Depths and recover a Core Fragment. Return to Lothos Riftwaker in Blackrock Mountain when you have recovered the Core Fragment.
  collect Core Fragment##18412 |q 7848 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Dark Iron Ore##11370 |q 6642 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Dark Iron Deposit
step
  collect Fiery Core##17010 |q 6643 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Molten Destroyer, Firewalker, Flameguard
step
  collect Lava Core##17011 |q 6644 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Molten Destroyer, Lava Annihilator, Golemagg the Incinerator
step
  collect Core Leather##17012 |q 6645 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Blood of the Mountain##11382 |q 6646 |goto Burning Steppes 80.56,42.82 |tip {dropsfrom}Firegut Brute, War Reaver, Scalding Broodling
step
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  collect Sulfuron Ingot##17203 |q 7604 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Golemagg the Incinerator
step
  talk Private Rocknot##9503
  turnin Rocknot's Ale##4295 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  turnin Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  talk Master Smith Burninate##14624
  turnin What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Franclorn Forgewright##8888
  turnin Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  talk Jalinda Sprig##9561
  turnin Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  talk Yuka Screwspigot##9544
  turnin Yuka Screwspigot##4324 |goto Burning Steppes 66.06,21.95
step
  talk Mistress Nagmara##9500
  turnin The Love Potion##4201 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Royal Historian Archesonus##8879
  turnin The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
  turnin The Spectral Chalice##4083 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Ragnar Thunderbrew##1267
  turnin Ragnar Thunderbrew##4128 |goto Dun Morogh 46.83,52.36
step
  talk Maxwort Uberglint##9536
  turnin The Heart of the Mountain##4123 |goto Burning Steppes 65.15,23.91
step
  talk Oralius##9177
  turnin The Good Stuff##4286 |goto Burning Steppes 84.56,68.68
step
  only Druid
  talk Deliana##16013
  turnin An Earnest Proposition##8905 |goto Ironforge 43.53,52.64
step
  talk Lothos Riftwaker##14387
  turnin Attunement to the Core##7848 |goto Searing Gorge 32.13,94.7
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  accept The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  talk Franclorn Forgewright##8888
  accept Dark Iron Legacy##3802 |goto Burning Steppes 28.96,28.93
step
  talk Yuka Screwspigot##9544
  accept Ribbly Screwspigot##4136 |goto Burning Steppes 66.06,21.95
step
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  talk Royal Historian Archesonus##8879
  accept The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
  talk Ragnar Thunderbrew##1267
  accept Hurley Blackbreath##4126 |goto Dun Morogh 46.83,52.36
step
  talk Jalinda Sprig##9561
  accept Incendius!##4263 |goto Burning Steppes 85.41,70.06
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  talk Master Smith Burninate##14624
  accept Gaining Acceptance##7737 |goto Searing Gorge 38.8,28.51
step
  note Collect 4 Hearts of Flame and 4 globes of Golem Oil and return the items to Kalaran Windblade.
  collect 4 Heart of Flame##10509 |q 3442 |goto Searing Gorge 57.56,46.7 |tip {dropsfrom}Blazing Elemental, Inferno Elemental, Magma Elemental
step
  note Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright.
  collect Ironfel##10999 |q 3802 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Fineous Darkvire
step
  note Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes.
  collect Ribbly's Head##11313 |q 4136 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Ribbly Screwspigot
step
  note Venture to the Ruins of Thaurissan in the Burning Steppes and recover information from the Thaurissan Relics. Return to Royal Historian Archesonus when you have recovered the information.
  collect Thaurissan Relic##153556 |q 3701 |goto Burning Steppes 62.71,39.6
step
  note Bring the Lost Thunderbrew Recipe to Ragnar Thunderbrew in Kharanos.
  collect Lost Thunderbrew Recipe##11312 |q 4126 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Hurley Blackbreath, Blackbreath Crony
step
  note Find Lord Incendius in Blackrock Depths and destroy him!
  kill Lord Incendius##9017 |q 4263 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  collect Dark Iron Residue##18945 |q 7737 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Anvilrage Overseer, Anvilrage Warden, Anvilrage Guardsman
step
  talk Kalaran Windblade##8479
  turnin The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  turnin Dark Iron Legacy##3802 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Yuka Screwspigot##9544
  turnin Ribbly Screwspigot##4136 |goto Burning Steppes 66.06,21.95
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 24.9,44.45
step
  talk Royal Historian Archesonus##8879
  turnin The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
  talk Ragnar Thunderbrew##1267
  turnin Hurley Blackbreath##4126 |goto Dun Morogh 46.83,52.36
step
  talk Jalinda Sprig##9561
  turnin Incendius!##4263 |goto Burning Steppes 85.41,70.06
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  talk Master Smith Burninate##14624
  turnin Gaining Acceptance##7737 |goto Searing Gorge 38.8,28.51
step
  talk Kalaran Windblade##8479
  accept Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 24.9,44.45
step
  talk King Magni Bronzebeard##2784
  accept Kharan Mighthammer##4341 |goto Ironforge 39.09,56.2
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Bring 8 Thorium Plated Daggers to Kalaran Windblade.
  collect 8 Thorium Plated Dagger##10551 |q 3443 |goto Searing Gorge 63.66,59.26 |tip {dropsfrom}Dark Iron Geologist, Dark Iron Steamsmith, Slave Worker
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 80.21,38.35
step
  talk Kharan Mighthammer##9021
  turnin Kharan Mighthammer##4341 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  talk Kharan Mighthammer##9021
  accept Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Find and return a Symbol of Ragnaros to Kalaran Windblade.
  kill Twilight Dark Shaman##5860 |goto Searing Gorge 23.52,36.55 |elite
  collect Symbol of Ragnaros##10552 |q 3452 |goto Searing Gorge 23.52,36.55
step
  note Speak with Highlord Bolvar Fordragon after speaking with Lady Katrana Prestor.
  talk Lady Katrana Prestor##1749 |q 4185 |goto Stormwind City 80.1,38.17
step
  note Listen as Kharan Mighthammer tells his story.
  talk Kharan Mighthammer##9021 |q 4342 |goto Blackrock Depths - Dungeon -1,-1
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Kalaran Windblade##8479
  turnin The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  talk Kharan Mighthammer##9021
  turnin Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 80.21,38.35
step
  talk Kharan Mighthammer##9021
  accept The Bearer of Bad News##4361 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Wait for Kalaran Windblade to complete the Torch of Retribution.
  talk Kalaran Windblade##8479 |q 3453 |goto Searing Gorge 39.06,38.99
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Kalaran Windblade##8479
  turnin The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  talk Magistrate Solomon##344
  turnin The True Masters##4186 |goto Redridge Mountains 24.9,44.45
step
  talk King Magni Bronzebeard##2784
  turnin The Bearer of Bad News##4361 |goto Ironforge 39.09,56.2
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3454 |goto Searing Gorge 39.06,38.99
step
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 24.9,44.45
step
  talk King Magni Bronzebeard##2784
  accept The Fate of the Kingdom##4362 |goto Ironforge 39.09,56.2
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan.
  kill Emperor Dagran Thaurissan##9019 |q 4362 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  turnin The Torch of Retribution##3454 |goto Searing Gorge 39.06,39.07
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02
step
  talk Princess Moira Bronzebeard##8929
  turnin The Fate of the Kingdom##4362 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Kalaran Windblade##8479
  accept Squire Maltrake##3462 |goto Searing Gorge 39.06,38.99
step
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess's Surprise##4363 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Mux Manascrambler##16014
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  note Speak with Ragged John to learn of Marshal Windsor's fate and return to Marshal Maxwell when you have completed this task.
  talk Ragged John##9563 |q 4224 |goto Burning Steppes 65.01,23.76
step
  talk Squire Maltrake##8509
  turnin Squire Maltrake##3462 |goto Searing Gorge 39.17,39
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk King Magni Bronzebeard##2784
  turnin The Princess's Surprise##4363 |goto Ironforge 39.09,56.2
step
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  talk Squire Maltrake##8509
  accept Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  talk Marshal Maxwell##9560
  accept Marshal Windsor##4241 |goto Burning Steppes 84.74,69.02
step
  only Druid
  talk Deliana##16013
  accept Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  note Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
  collect Sentry Brazier##149025 |q 3463 |goto Searing Gorge 35.67,60.68
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves Deliana in Ironforge.
  collect Wildheart Belt##16716 |q 8926 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  talk Squire Maltrake##8509
  turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  talk Marshal Windsor##9023
  turnin Marshal Windsor##4241 |goto Blackrock Depths - Dungeon -1,-1
step
  only Druid
  talk Deliana##16013
  turnin Just Compensation##8926 |goto Ironforge 43.53,52.64
step
  click Hoard of the Black Dragonflight##149502
  accept Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  talk Marshal Windsor##9023
  accept Abandoned Hope##4242 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  turnin Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  talk Marshal Maxwell##9560
  turnin Abandoned Hope##4242 |goto Burning Steppes 84.74,69.02
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
step
  only not completed(4023) not haveq(4023)
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  kill Anvilrage Overseer##8889 |goto Blackrock Depths - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  only not completed(4023) not haveq(4023)
  note Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
  kill Frenzied Black Drake##9461 |goto Burning Steppes 94.4,31.8 |elite
  collect Black Dragonflight Molt##10575 |q 4022 |goto Burning Steppes 94.4,31.8
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  only not completed(4023) not haveq(4023)
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  talk Marshal Windsor##9023
  turnin A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Marshal Windsor##9023
  accept A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  note Return Marshal Windsor's Lost Information.
  collect Marshal Windsor's Lost Information##11464 |q 4282 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}General Angerforge
step
  note Travel to Blackrock Depths and slay Bael'Gar.
  collect Encased Fiery Essence##11230 |q 4024 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Bael'Gar
step
  talk Marshal Windsor##9023
  turnin A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Marshal Windsor##9023
  accept Jail Break!##4322 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Marshal Maxwell##9560
  turnin Jail Break!##4322 |goto Burning Steppes 84.74,69.02
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
]])
