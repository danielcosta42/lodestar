-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackrock Depths", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "d63fd82e",
}, [[
step
  talk Kalaran Windblade##8479
  accept Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
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
  talk Lokhtos Darkbargainer##12944 |goto Blackrock Depths - Dungeon -1,-1 |tip They give you the item that starts the quest.
  accept A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  note Listen as Kalaran Windblade tells his story.
  talk Kalaran Windblade##8479 |q 3441 |goto Searing Gorge 39.06,38.99
step
  note Slay Overmaster Pyron and return to Jalinda Sprig.
  kill Overmaster Pyron##9026 |q 4262 |goto Eastern Kingdoms - the continent map 46.82,67.7 |elite
step
  note Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths.
  collect 4 Gromsblood##8846 |q 4201 |goto Felwood 38.83,49.24 |tip {dropsfrom}Razorlash, Gromsblood
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
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  collect Sulfuron Ingot##17203 |q 7604 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Golemagg the Incinerator
step
  talk Kalaran Windblade##8479
  turnin Divine Retribution##3441 |goto Searing Gorge 39.06,38.99
step
  note Speak with Franclorn Forgewright if you are interested in obtaining a key to the city major.
  talk Franclorn Forgewright##8888
  turnin Dark Iron Legacy##3801 |goto Burning Steppes 28.96,28.93
step
  talk Jalinda Sprig##9561
  turnin Overmaster Pyron##4262 |goto Burning Steppes 85.41,70.06
step
  note Speak with Yuka Screwspigot in the Burning Steppes.
  talk Yuka Screwspigot##9544
  turnin Yuka Screwspigot##4324 |goto Burning Steppes 66.06,21.95
step
  talk Mistress Nagmara##9500
  turnin The Love Potion##4201 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Royal Historian Archesonus##8879
  turnin The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
  turnin The Spectral Chalice##4083 |goto Blackrock Depths - Dungeon -1,-1
step
  note Speak with Ragnar Thunderbrew.
  talk Ragnar Thunderbrew##1267
  turnin Ragnar Thunderbrew##4128 |goto Dun Morogh 46.83,52.36
step
  talk Maxwort Uberglint##9536
  turnin The Heart of the Mountain##4123 |goto Burning Steppes 65.15,23.91
step
  talk Oralius##9177
  turnin The Good Stuff##4286 |goto Burning Steppes 84.56,68.68
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
  talk Royal Historian Archesonus##8879
  accept The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
  talk Ragnar Thunderbrew##1267
  accept Hurley Blackbreath##4126 |goto Dun Morogh 46.83,52.36
step
  talk Jalinda Sprig##9561
  accept Incendius!##4263 |goto Burning Steppes 85.41,70.06
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
  talk Kalaran Windblade##8479
  turnin The Flawless Flame##3442 |goto Searing Gorge 39.06,38.99
step
  turnin Dark Iron Legacy##3802 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Yuka Screwspigot##9544
  turnin Ribbly Screwspigot##4136 |goto Burning Steppes 66.06,21.95
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
  talk Kalaran Windblade##8479
  accept Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  talk King Magni Bronzebeard##2784
  accept Kharan Mighthammer##4341 |goto Ironforge 39.09,56.2
step
  note Bring 8 Thorium Plated Daggers to Kalaran Windblade.
  collect 8 Thorium Plated Dagger##10551 |q 3443 |goto Searing Gorge 63.66,59.26 |tip {dropsfrom}Dark Iron Geologist, Dark Iron Steamsmith, Slave Worker
step
  talk Kalaran Windblade##8479
  turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
step
  note Travel to Blackrock Depths and find Kharan Mighthammer.
  talk Kharan Mighthammer##9021
  turnin Kharan Mighthammer##4341 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Kharan Mighthammer##9021
  accept Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -1,-1
step
  note Find and return a Symbol of Ragnaros to Kalaran Windblade.
  kill Twilight Dark Shaman##5860 |goto Searing Gorge 23.52,36.55 |elite
  collect Symbol of Ragnaros##10552 |q 3452 |goto Searing Gorge 23.52,36.55
step
  note Listen as Kharan Mighthammer tells his story.
  talk Kharan Mighthammer##9021 |q 4342 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  turnin The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99
step
  talk Kharan Mighthammer##9021
  turnin Kharan's Tale##4342 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  talk Kharan Mighthammer##9021
  accept The Bearer of Bad News##4361 |goto Blackrock Depths - Dungeon -1,-1
step
  note Wait for Kalaran Windblade to complete the Torch of Retribution.
  talk Kalaran Windblade##8479 |q 3453 |goto Searing Gorge 39.06,38.99
step
  talk Kalaran Windblade##8479
  turnin The Torch of Retribution##3453 |goto Searing Gorge 39.06,38.99
step
  note Return to Ironforge and deliver the bad news to King Magni Bronzebeard.
  talk King Magni Bronzebeard##2784
  turnin The Bearer of Bad News##4361 |goto Ironforge 39.09,56.2
step
  talk Kalaran Windblade##8479
  accept The Torch of Retribution##3454 |goto Searing Gorge 39.06,38.99
step
  talk King Magni Bronzebeard##2784
  accept The Fate of the Kingdom##4362 |goto Ironforge 39.09,56.2
step
  note Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan.
  kill Emperor Dagran Thaurissan##9019 |q 4362 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Take the Torch of Retribution.
  turnin The Torch of Retribution##3454 |goto Searing Gorge 39.06,39.07
step
  talk Princess Moira Bronzebeard##8929
  turnin The Fate of the Kingdom##4362 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Kalaran Windblade##8479
  accept Squire Maltrake##3462 |goto Searing Gorge 39.06,38.99
step
  talk Princess Moira Bronzebeard##8929
  accept The Princess's Surprise##4363 |goto Blackrock Depths - Dungeon -1,-1
step
  note Speak with Squire Maltrake.
  talk Squire Maltrake##8509
  turnin Squire Maltrake##3462 |goto Searing Gorge 39.17,39
step
  note Return to Ironforge and speak with King Magni Bronzebeard.
  talk King Magni Bronzebeard##2784
  turnin The Princess's Surprise##4363 |goto Ironforge 39.09,56.2
step
  talk Squire Maltrake##8509
  accept Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  note Set the North, South, East, and West Sentry Towers on fire by using the Torch of Retribution inside each of the buildings.
  collect Sentry Brazier##149025 |q 3463 |goto Searing Gorge 35.67,60.68
step
  talk Squire Maltrake##8509
  turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39
step
  click Hoard of the Black Dragonflight##149502
  accept Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  note Open the chest.
  turnin Trinkets...##3481 |goto Searing Gorge 38.85,38.99
step
  only not completed(4023) not haveq(4023)
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  only not completed(4023) not haveq(4023)
  note Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.
  kill Frenzied Black Drake##9461 |goto Burning Steppes 94.4,31.8 |elite
  collect Black Dragonflight Molt##10575 |q 4022 |goto Burning Steppes 94.4,31.8
step
  only not completed(4023) not haveq(4023)
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4022 |goto Burning Steppes 95.09,31.56
step
  talk Cyrus Therepentous##9459
  accept A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
step
  note Travel to Blackrock Depths and slay Bael'Gar.
  collect Encased Fiery Essence##11230 |q 4024 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Bael'Gar
step
  talk Cyrus Therepentous##9459
  turnin A Taste of Flame##4024 |goto Burning Steppes 95.09,31.56
]])
