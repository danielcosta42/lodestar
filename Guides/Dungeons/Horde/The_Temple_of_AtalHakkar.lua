-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/The Temple of Atal'Hakkar", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "bcbb1833",
}, [[
step
  talk Fel'zerul##1443
  accept Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Mage
  talk Archmage Xylem##8379
  accept Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Warlock not completed(8420) not haveq(8420)
  talk Zevrost##3326
  accept An Imp's Request##8419 |goto Orgrimmar 48.47,45.43
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Shaman not completed(8411) not haveq(8411)
  talk Beram Skychaser##3032
  accept Elemental Mastery##8410 |goto Thunder Bluff 21.99,18.8
step
  only Priest
  talk Malakai Cross##3045
  accept Cenarion Aid##8254 |goto Thunder Bluff 24.56,22.57
step
  only Hunter
  talk Holt Thunderhorn##3039
  accept The Hunter's Charm##8151 |goto Thunder Bluff 57.3,89.79
step
  talk Larion##9118
  accept Larion and Muigin##4145 |goto Un'Goro Crater 45.54,8.72
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  talk Atal'ai Exile##5598
  accept Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  kill Shade of Eranikus##5709 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Essence of Eranikus##3373 |goto The Temple of Atal'Hakkar - Dungeon -1,-1
step
  note Fel'zerul in Stonard wants you to gather 10 Atal'ai Artifacts.
  collect 10 Atal'ai Artifact##6175 |q 1424 |goto Swamp of Sorrows 72.53,53.11
step
  only Rogue
  note Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
  collect Sealed Azure Bag##19775 |q 8234 |goto Azshara 44.78,22.51 |tip {dropsfrom}Timbermaw Shaman, Blackmaw Shaman
step
  only Mage
  note Bring 10 Glittering Dust to Archmage Xylem.
  collect 10 Glittering Dust##20028 |q 8251 |goto Azshara 58.02,28.18 |tip {dropsfrom}Blood Elf Surveyor, Blood Elf Reclaimer, Blood Elf Defender
step
  only Warlock not completed(8420) not haveq(8420)
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8419 |goto Blasted Lands 57.73,50.62 |tip {dropsfrom}Felhunter, Felguard Sentry, Legashi Satyr
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 50.2,38.6
step
  only Shaman not completed(8411) not haveq(8411)
  note Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
  collect Elemental Air##7069 |q 8410 |goto Westfall 45.61,49.32 |tip {dropsfrom}Dust Devil, Thundering Exile, Cyclonian
step
  note Hunt 5 Bloodpetal Lashers, 5 Bloodpetal Threshers, 5 Bloodpetal Flayers and 5 Bloodpetal Trappers for Larion at Marshal's Refuge.
  talk Bloodpetal Lasher##6509 |q 4145 |goto Un'Goro Crater 67.79,31.77
step
  only Druid
  note Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
  collect 8 Gorishi Sting##22435 |q 9052 |goto Un'Goro Crater 50.14,75.97 |tip {dropsfrom}Gorishi Wasp, Gorishi Stinger
step
  note The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
  collect Head of Jammal'an##6212 |q 1446 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Jammal'an the Prophet
step
  talk Fel'zerul##1443
  turnin Pool of Tears##1424 |goto Swamp of Sorrows 47.93,54.78
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  turnin Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Warlock not completed(8420) not haveq(8420)
  talk Impsy##14470
  turnin An Imp's Request##8419 |goto Felwood 41.36,45.02
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Shaman not completed(8411) not haveq(8411)
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Mastery##8410 |goto Alterac Mountains 80.5,66.92
step
  only Priest
  note Seek out Ogtinc in Azshara.
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62
step
  only Hunter
  note Speak to Ogtinc in Azshara.
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62
step
  talk Larion##9118
  turnin Larion and Muigin##4145 |goto Un'Goro Crater 45.54,8.72
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  talk Atal'ai Exile##5598
  turnin Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  note Place the Essence of Eranikus in the Essence Font located in this lair in the Sunken Temple.
  turnin The Essence of Eranikus##3373 |goto The Temple of Atal'Hakkar - Dungeon -1,-1
step
  talk Fel'zerul##1443
  accept The Atal'ai Exile##1429 |goto Swamp of Sorrows 47.93,54.78
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Rogue
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only Hunter
  talk Ogtinc##8405
  accept Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  accept Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Warlock
  talk Impsy##14470
  accept The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Larion##9118
  accept Marvon's Workshop##4147 |goto Un'Goro Crater 45.54,8.72
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  only Shaman
  note Bring the pieces for the spirit totem to Bath'rah the Windwatcher.
  collect Bloodshot Spider Eye##20610 |q 8412 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Carrion Lurker, Venom Mist Lurker
step
  only Rogue
  note Bring 10 Encoded Fragments to Archmage Xylem in Azshara.
  collect 10 Encoded Fragment##20023 |q 8235 |goto Azshara 71.73,29.47 |tip {dropsfrom}Forest Ooze
step
  only Mage
  note Collect 6 Enchanted Coral and return them to Archmage Xylem.
  collect 6 Enchanted Coral##20029 |q 8252 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren
step
  only Hunter
  note Bring a pair of Perfect Courser Antlers to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast of the Ruins of Eldarath.
  collect Perfect Courser Antler##20017 |q 8153 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Priest
  note Acquire 4 Healthy Courser Glands and bring them to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 4 Healthy Courser Gland##20027 |q 8255 |goto Azshara 50.78,75.64 |tip {dropsfrom}Mosshoof Courser
step
  only Warlock
  note Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
  collect 10 Rotting Wood##20613 |q 8421 |goto Felwood 46.58,23.75 |tip {dropsfrom}Irontree Wanderer, Irontree Stomper, Withered Protector
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.08,35.24
step
  note Bring the Bundle of Atal'ai Artifacts to the Atal'ai Exile in the Hinterlands.
  talk Atal'ai Exile##5598
  turnin The Atal'ai Exile##1429 |goto The Hinterlands 33.75,75.21
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  turnin The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only Hunter
  talk Ogtinc##8405
  turnin Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  turnin Of Coursers We Know##8255 |goto Azshara 42.4,42.62
step
  only Warlock
  talk Impsy##14470
  turnin The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  note Travel to Marvon Rivetseeker's workshop in Ratchet.
  talk Liv Rizzlefix##8496
  turnin Marvon's Workshop##4147 |goto The Barrens 62.45,38.73
step
  only Druid
  note Stab a Devilsaur with the Devilsaur Barb. Return to Torwa Pathfinder in Un'Goro Crater when you have completed this task.
  talk Torwa Pathfinder##9619
  turnin Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk Atal'ai Exile##5598
  accept Return to Fel'Zerul##1444 |goto The Hinterlands 33.75,75.21
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Rogue
  talk Archmage Xylem##8379
  accept The Azure Key##8236 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Hunter
  talk Ogtinc##8405
  accept Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  accept The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Warlock
  talk Impsy##14470
  accept Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Liv Rizzlefix##8496
  accept Zapper Fuel##4146 |goto The Barrens 62.45,38.73
step
  only Druid
  talk Torwa Pathfinder##9619
  accept A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  only Shaman
  note Bring the voodoo feathers to Bath'rah the Windwatcher.
  collect Amber Voodoo Feather##20606 |q 8413 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Rogue
  note Return the Azure Key to Lord Jorach Ravenholdt.
  collect Azure Key##20022 |q 8236 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Mage
  note Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem.
  collect Arcane Shard##20085 |q 8253 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Hunter
  note Bring 6 Wavethrasher Scales to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect 6 Wavethrasher Scales##20087 |q 8231 |goto Azshara 86.31,12.61 |tip {dropsfrom}Young Wavethrasher, Wavethrasher, Great Wavethrasher
step
  only Priest
  note Acquire an Ichor of Undeath for Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Ichor of Undeath##7972 |q 8256 |goto Stranglethorn Vale 38.89,57.62 |tip {dropsfrom}Zanzil Zombie, Zanzil Hunter, Skeletal Flayer
step
  only Warlock
  note Bring a total of 6 Voodoo Feathers from the trolls in sunken temple.
  collect Amber Voodoo Feather##20606 |q 8422 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  collect Amber Voodoo Feather##20606 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  note Deliver the Unloaded Zapper and 5 samples of Atal'ai Haze to Larion in Marshal's Refuge.
  collect Atal'ai Haze##11318 |q 4146 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |tip {dropsfrom}Murk Worm, Saturated Ooze, Deep Lurker
step
  only Druid
  note Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder.
  collect Putrid Vine##22444 |q 9053 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Atal'alarion
step
  note Return to Fel'Zerul in Stonard.
  talk Fel'zerul##1443
  turnin Return to Fel'Zerul##1444 |goto Swamp of Sorrows 47.93,54.78
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin The Azure Key##8236 |goto Alterac Mountains 86.02,78.88
step
  only Mage
  talk Archmage Xylem##8379
  turnin Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Hunter
  talk Ogtinc##8405
  turnin Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  turnin The Ichor of Undeath##8256 |goto Azshara 42.4,42.62
step
  only Warlock
  talk Impsy##14470
  turnin Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Larion##9118
  turnin Zapper Fuel##4146 |goto Un'Goro Crater 45.54,8.72
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  talk Fel'zerul##1443
  accept The Temple of Atal'Hakkar##1445 |goto Swamp of Sorrows 47.93,54.78
step
  only Hunter
  talk Ogtinc##8405
  accept The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Priest
  talk Ogtinc##8405
  accept Blood of Morphaz##8257 |goto Azshara 42.4,42.62
step
  note Collect 20 Fetishes of Hakkar and bring them to Fel'Zerul in Stonard.
  collect 20 Fetish of Hakkar##6181 |q 1445 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Cursed Atal'ai, Atal'ai Warrior, Atal'ai Witch Doctor
step
  only Hunter
  note Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Tooth of Morphaz##20019 |q 8232 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Priest
  note Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows.
  collect Blood of Morphaz##20025 |q 8257 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  talk Fel'zerul##1443
  turnin The Temple of Atal'Hakkar##1445 |goto Swamp of Sorrows 47.93,54.78
step
  only Hunter
  talk Ogtinc##8405
  turnin The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Priest
  talk Greta Mosshoof##10922
  turnin Blood of Morphaz##8257 |goto Felwood 51.21,82.11
]])
