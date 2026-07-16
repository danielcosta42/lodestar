-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Thrallmar", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Battlecryer Blackeye##18267
  accept Hellfire Fortifications##10110 |goto Hellfire Peninsula 55.95,39.2
step
  talk Vurtok Axebreaker##21256
  accept Bonechewer Blood##10450 |goto Hellfire Peninsula 55.13,36.39
step
  talk Grelag##16858
  accept Preparing the Salve##9345 |goto Hellfire Peninsula 60.93,81.67
step
  talk Warlord Dar'toon##19254
  accept Through the Dark Portal##9407 |goto Blasted Lands 58.1,56.0
step
  talk Megzeg Nukklebust##21283
  accept I Work... For the Horde!##10086 |goto Hellfire Peninsula 55.18,38.79
step
  talk Emissary Mordiba##19682
  accept Make Them Listen##10220 |goto Hellfire Peninsula 61.78,81.71
step
  talk Ogath the Mad##19683
  accept The Warp Rifts##10278 |goto Hellfire Peninsula 61.87,81.53
step
  talk Nazgrel##3230
  accept The Will of the Warchief##9495 |goto Hellfire Peninsula 55.02,35.96
step
  talk Shadow Hunter Ty'jin##16575
  accept Pride of the Fel Horde##9496 |goto Hellfire Peninsula 55.05,36.32
step
  note Capture the Overlook, the Stadium and Broken Hill, then return to Battlecryer Blackeye in Thrallmar.
  get Hellfire Fortifications |q 10110 |goto Hellfire Peninsula 39.94,48.39
step
  note Bring 12 Bonechewer Blood Vials to Vurtok Axebreaker in Thrallmar.
  collect 12 Bonechewer Blood##30327 |q 10450 |goto Hellfire Peninsula 57.27,48.17 |tip {dropsfrom}Bonechewer Mutant, Bonechewer Raider, Bonechewer Scavenger
step
  note Kill Worg Master Kruush and bring his head to Captain Darkhowl in Spinebreaker Post.
  collect Worg Master's Head##31374 |q 10809 |goto Hellfire Peninsula 68.34,73.51 |tip {dropsfrom}Worg Master Kruush
step
  note Gather 12 Hellfire Spineleaf plants for a salve and return to Grelag at Spinebreaker Post.
  collect 12 Hellfire Spineleaf##23205 |q 9345 |goto Hellfire Peninsula 62.77,67.2 |tip {dropsfrom}Hellfire Spineleaf
step
  note Bring 8 pieces of Salvaged Metal and 8 pieces of Salvaged Wood to Megzeg Nukklebust in Thrallmar.
  collect 8 Salvaged Metal##25912 |q 10086 |goto Hellfire Peninsula 57.71,53.38 |tip {dropsfrom}Salvageable Metal
step
  note Mordiba wants you to defeat 12 Unyielding Footmen, 8 Unyielding Knights, and 6 Unyielding Sorcerers at the Expedition Armory to the west of Spinebreaker Post.
  kill Unyielding Footman##16904 |q 10220 |goto Hellfire Peninsula 55.38,78.36
step
  note Use the Unstable Warp Rift Generator in the Warp Fields. Gather 3 Warp Nethers from Unstable Voidwalkers and return them to Ogath the Mad in Spinebreaker Post.
  collect 3 Warp Nether##29051 |q 10278 |goto Hellfire Peninsula 61.87,81.53 |tip {dropsfrom}Unstable Voidwalker
step
  note Bring Warchief Kargath's Fist to Nazgrel in Thrallmar.
  collect Warchief Kargath's Fist##23723 |q 9495 |goto The Shattered Halls - Dungeon -1,-1 |tip {dropsfrom}Warchief Kargath Bladefist, Warchief Kargath Bladefist (1)
step
  note Shadow Hunter Ty'jin at Thrallmar wants you to kill 8 Shattered Hand Legionnaires, 4 Shattered Hand Centurions, and 4 Shattered Hand Champions.
  kill Shattered Hand Legionnaire##16700 |q 9496 |goto The Shattered Halls - Dungeon -1,-1 |elite
step
  talk Battlecryer Blackeye##18267
  turnin Hellfire Fortifications##10110 |goto Hellfire Peninsula 55.95,39.2
step
  talk Vurtok Axebreaker##21256
  turnin Bonechewer Blood##10450 |goto Hellfire Peninsula 55.13,36.39
step
  talk Captain Darkhowl##22107
  turnin Wanted: Worg Master Kruush##10809 |goto Hellfire Peninsula 61.21,81.32
step
  talk Grelag##16858
  turnin Preparing the Salve##9345 |goto Hellfire Peninsula 60.93,81.67
step
  talk Lieutenant General Orion##19253
  turnin Through the Dark Portal##9407 |goto Hellfire Peninsula 87.35,49.78
step
  talk Megzeg Nukklebust##21283
  turnin I Work... For the Horde!##10086 |goto Hellfire Peninsula 55.18,38.79
step
  talk Emissary Mordiba##19682
  turnin Make Them Listen##10220 |goto Hellfire Peninsula 61.78,81.71
step
  talk Althen the Historian##19736
  turnin Decipher the Tome##10229 |goto Hellfire Peninsula 61.74,81.79
step
  talk Ogath the Mad##19683
  turnin The Warp Rifts##10278 |goto Hellfire Peninsula 61.87,81.53
step
  talk Magister Bloodhawk##21175
  turnin Vile Plans##10393 |goto Hellfire Peninsula 55.13,36.03
step
  talk Nazgrel##3230
  turnin Dark Tidings##9588 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  turnin The Will of the Warchief##9495 |goto Hellfire Peninsula 55.02,35.96
step
  talk Shadow Hunter Ty'jin##16575
  turnin Pride of the Fel Horde##9496 |goto Hellfire Peninsula 55.05,36.32
step
  talk Nazgrel##3230
  turnin Entry Into the Citadel##10755 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  turnin The Fall of Magtheridon##11003 |goto Hellfire Peninsula 55.02,35.96
step
  talk Vurtok Axebreaker##21256
  accept Apothecary Zelana##10449 |goto Hellfire Peninsula 55.13,36.39
step
  talk Megzeg Nukklebust##21283
  accept Burn It Up... For the Horde!##10087 |goto Hellfire Peninsula 55.18,38.79
step
  talk Lieutenant General Orion##19253
  accept Arrival in Outland##10120 |goto Hellfire Peninsula 87.35,49.78
step
  talk Althen the Historian##19736
  accept The Battle Horn##10230 |goto Hellfire Peninsula 61.74,81.79
step
  talk Ogath the Mad##19683
  accept Void Ridge##10294 |goto Hellfire Peninsula 61.87,81.53
step
  talk Magister Bloodhawk##21175
  accept The Agony and the Darkness##10389 |goto Hellfire Peninsula 55.13,36.03
step
  talk Captain Darkhowl##22107
  accept Zeth'Gor Must Burn!##10792 |goto Hellfire Peninsula 61.21,81.32
step
  talk Zezzak##22231
  accept The Eyes of Grillok##10813 |goto Hellfire Peninsula 61.66,81.86
step
  talk Caza'rez##17558
  accept The Blood is Life##9590 |goto Hellfire Peninsula 54.88,36.0
step
  talk Nazgrel##3230
  accept Grand Master Rohok##10756 |goto Hellfire Peninsula 55.02,35.96
step
  note Use the Flaming Torch to burn the Eastern Alliance Cannon and the Western Alliance Cannon, and then return to Megzeg Nukklebust in Thrallmar.
  kill Invis Alliance Siege Engine - East##18849 |q 10087 |goto Hellfire Peninsula 60.82,51.86
step
  note Take the Unyielding Battle Horn from Lieutenant Commander Thalvos and bring it to Althen the Historian in Spinebreaker Post.
  collect Unyielding Battle Horn##28562 |q 10230 |goto Hellfire Peninsula 54.83,83.74 |tip {dropsfrom}Lieutenant Commander Thalvos
step
  note Go to Void Ridge and kill the creatures you find. Collect 40 Void Ridge Soul Shards and return them to Ogath the Mad in Spinebreaker Post.
  collect 40 Void Ridge Soul Shard##29161 |q 10294 |goto Hellfire Peninsula 78.27,69.62 |tip {dropsfrom}Collapsing Voidwalker, Vacillating Voidcaller
step
  note Magister Bloodhawk wants you to kill 10 terrorfiends in the Pools of Aggonar.
  kill Terrorfiend##16951 |q 10389 |goto Hellfire Peninsula 40.05,32.89
step
  note Kill Bleeding Hollow Peons for their torches, ignite them at Zeth'Gor's forge then throw the burning torches at Zeth'Gor Buildings.
  get Zeth'Gor Must Burn! |q 10792 |goto Hellfire Peninsula 69.48,76.49
step
  note Use Zezzak's Shard to capture an Eye of Grillok, then approach Zezzak's cauldron to extract it. After it is removed, return Zezzak's Shard to him.
  get The Eyes of Grillok |q 10813 |goto Hellfire Peninsula 61.69,81.81
step
  note Collect 10 Fel Orc Blood Vials and return them to Centurion Caza'rez at Thrallmar in Hellfire Peninsula.
  collect 10 Fel Orc Blood Vial##23894 |q 9590 |goto The Blood Furnace - Dungeon -1,-1 |tip {dropsfrom}Laughing Skull Enforcer, Shadowmoon Warlock, Keli'dan the Breaker
step
  talk Apothecary Zelana##21257
  turnin Apothecary Zelana##10449 |goto Hellfire Peninsula 66.17,41.95
step
  talk Megzeg Nukklebust##21283
  turnin Burn It Up... For the Horde!##10087 |goto Hellfire Peninsula 55.18,38.79
step
  talk Vlagga Freyfeather##18930
  turnin Arrival in Outland##10120 |goto Hellfire Peninsula 87.35,48.14
step
  talk Althen the Historian##19736
  turnin The Battle Horn##10230 |goto Hellfire Peninsula 61.74,81.79
step
  talk Ogath the Mad##19683
  turnin Void Ridge##10294 |goto Hellfire Peninsula 61.87,81.53
step
  talk Magister Bloodhawk##21175
  turnin The Agony and the Darkness##10389 |goto Hellfire Peninsula 55.13,36.03
step
  talk Captain Darkhowl##22107
  turnin Zeth'Gor Must Burn!##10792 |goto Hellfire Peninsula 61.21,81.32
step
  talk Zezzak##22231
  turnin The Eyes of Grillok##10813 |goto Hellfire Peninsula 61.66,81.86
step
  talk Caza'rez##17558
  turnin The Blood is Life##9590 |goto Hellfire Peninsula 54.88,36.0
step
  talk Rohok##16583
  turnin Grand Master Rohok##10756 |goto Hellfire Peninsula 53.13,38.16
step
  talk Apothecary Zelana##21257
  accept Spinebreaker Post##10242 |goto Hellfire Peninsula 66.17,41.95
step
  talk Althen the Historian##19736
  accept Bloody Vengeance##10250 |goto Hellfire Peninsula 61.74,81.79
step
  talk Vlagga Freyfeather##18930
  accept Journey to Thrallmar##10289 |goto Hellfire Peninsula 87.35,48.14
step
  talk Zezzak##22231
  accept Grillok "Darkeye"##10834 |goto Hellfire Peninsula 61.66,81.86
step
  talk Ogath the Mad##19683
  accept From the Abyss##10295 |goto Hellfire Peninsula 61.87,81.53
step
  talk Rohok##16583
  accept Rohok's Request##10757 |goto Hellfire Peninsula 53.13,38.16
step
  note Blow the Unyielding Battle Horn near the Alliance Banner. Kill Urtrak and then return to Althen the Historian at Spinebreaker Post.
  kill Urtrak##19862 |q 10250
step
  note Kill Grillok Darkeye and bring Grillok's Eyepatch to Zezzak in Spinebreaker Post.
  collect Grillok's Eyepatch##31529 |q 10834 |goto Hellfire Peninsula 66.66,71.5 |tip {dropsfrom}Grillok "Darkeye"
step
  note Kill Void Baron Galaxis and collect his soul shard. Take the shard to Ogath the Mad in Spinebreaker Post.
  collect Galaxis Soul Shard##29162 |q 10295 |goto Hellfire Peninsula 61.87,81.53 |tip {dropsfrom}Void Baron Galaxis
step
  note Bring 4 Fel Iron Bars, 2 Arcane Dust and 4 Motes of Fire to Rohok at Thrallmar in Hellfire Peninsula.
  collect 4 Fel Iron Bar##23445 |q 10757 |goto Terokkar Forest 39.25,55.95 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Apothecary Albreck##21279
  turnin Spinebreaker Post##10242 |goto Hellfire Peninsula 61.14,81.77
step
  talk Althen the Historian##19736
  turnin Bloody Vengeance##10250 |goto Hellfire Peninsula 61.74,81.79
step
  talk General Krakork##19255
  turnin Journey to Thrallmar##10289 |goto Hellfire Peninsula 55.88,36.65
step
  talk Zezzak##22231
  turnin Grillok "Darkeye"##10834 |goto Hellfire Peninsula 61.66,81.86
step
  talk Ogath the Mad##19683
  turnin From the Abyss##10295 |goto Hellfire Peninsula 61.87,81.53
step
  talk Rohok##16583
  turnin Rohok's Request##10757 |goto Hellfire Peninsula 53.13,38.16
step
  talk General Krakork##19255
  accept Report to Nazgrel##10291 |goto Hellfire Peninsula 55.88,36.65
step
  talk Apothecary Albreck##21279
  accept Boiling Blood##10538 |goto Hellfire Peninsula 61.14,81.77
step
  talk Althen the Historian##19736
  accept Honor the Fallen##10258 |goto Hellfire Peninsula 61.74,81.79
step
  talk Rohok##16583
  accept Hotter than Hell##10758 |goto Hellfire Peninsula 53.13,38.16
step
  note Use Bleeding Hollow Blood at the Cursed Cauldron to make Boiled Blood. Bring 12 Boiled Blood to Apothecary Albreck at Spinebreaker Post.
  collect 12 Boiled Blood##30430 |q 10538 |goto Hellfire Peninsula 61.14,81.77
step
  note Destroy a Fel Reaver in Hellfire Peninsula and plunge the Unfired Key Mold into its remains. Bring the Charred Key Mold to Rohok in Thrallmar.
  collect Charred Key Mold##31252 |q 10758 |goto Hellfire Peninsula 53.13,38.16
step
  talk Nazgrel##3230
  turnin Report to Nazgrel##10291 |goto Hellfire Peninsula 55.02,35.96
step
  talk Apothecary Albreck##21279
  turnin Boiling Blood##10538 |goto Hellfire Peninsula 61.14,81.77
step
  talk Commander Hogarth##19937
  turnin Honor the Fallen##10258 |goto Hellfire Peninsula 56.92,77.37
step
  talk Rohok##16583
  turnin Hotter than Hell##10758 |goto Hellfire Peninsula 53.13,38.16
step
  talk Nazgrel##3230
  accept Eradicate the Burning Legion##10121 |goto Hellfire Peninsula 55.02,35.96
step
  talk Apothecary Albreck##21279
  accept Apothecary Antonivich##10835 |goto Hellfire Peninsula 61.14,81.77
step
  talk Sergeant Shatterskull##19256
  turnin Eradicate the Burning Legion##10121 |goto Hellfire Peninsula 58.14,41.27
step
  talk Apothecary Antonivich##16588
  turnin Apothecary Antonivich##10835 |goto Hellfire Peninsula 52.28,36.46
step
  talk Sergeant Shatterskull##19256
  accept Felspark Ravine##10123 |goto Hellfire Peninsula 58.14,41.27
step
  talk Apothecary Antonivich##16588
  accept A Burden of Souls##10864 |goto Hellfire Peninsula 52.28,36.46
step
  note Sergeant Shatterskull at the Supply Caravan east of Thrallmar in Hellfire Peninsula wants you to kill 4 Flamewaker Imps, 6 Infernal Warbringers and 1 Dreadcaller.
  kill Dreadcaller##19434 |q 10123 |goto Hellfire Peninsula 68.38,57.72
step
  talk Sergeant Shatterskull##19256
  turnin Felspark Ravine##10123 |goto Hellfire Peninsula 58.14,41.27
step
  talk Apothecary Antonivich##16588
  turnin A Burden of Souls##10864 |goto Hellfire Peninsula 52.28,36.46
step
  talk Sergeant Shatterskull##19256
  accept Forward Base: Reaver's Fall##10124 |goto Hellfire Peninsula 58.14,41.27
step
  talk Apothecary Antonivich##16588
  accept The Demoniac Scryer##10838 |goto Hellfire Peninsula 52.28,36.46
step
  note Use the Demoniac Scryer in Hellfire Basin, wait for it to attune, and then take a reading.
  collect Demoniac Scryer Reading##31607 |q 10838 |goto Hellfire Peninsula 52.28,36.46
step
  talk Forward Commander To'arch##19273
  turnin Forward Base: Reaver's Fall##10124 |goto Hellfire Peninsula 65.89,43.59
step
  talk Apothecary Antonivich##16588
  turnin The Demoniac Scryer##10838 |goto Hellfire Peninsula 52.28,36.46
step
  talk Apothecary Antonivich##16588
  accept Report to Nazgrel##10875 |goto Hellfire Peninsula 52.28,36.46
step
  talk Stone Guard Stok'ton##17493
  accept Weaken the Ramparts##9572 |goto Hellfire Peninsula 55.2,36.01
step
  talk Forward Commander To'arch##19273
  accept Disrupt Their Reinforcements##10208 |goto Hellfire Peninsula 65.89,43.59
step
  note Slay Watchkeeper Gargolmar, Omor the Unscarred and the drake, Nazan. Return Gargolmar's Hand, Omor's Hoof and Nazan's Head to Caza'rez at Thrallmar in Hellfire Peninsula.
  collect Gargolmar's Hand##23881 |q 9572 |goto Hellfire Ramparts - Dungeon -1,-1 |tip {dropsfrom}Watchkeeper Gargolmar, Watchkeeper Gargolmar (1)
step
  note Defeat enemies around Portal Xilus and Portal Kruul to gather Demonic Rune Stones.
  collect Portal Xilus##184290 |q 10208 |goto Hellfire Peninsula 70.83,45.47
step
  talk Nazgrel##3230
  turnin Report to Nazgrel##10875 |goto Hellfire Peninsula 55.02,35.96
step
  talk Caza'rez##17558
  turnin Weaken the Ramparts##9572 |goto Hellfire Peninsula 54.88,36.0
step
  talk Forward Commander To'arch##19273
  turnin Disrupt Their Reinforcements##10208 |goto Hellfire Peninsula 65.89,43.59
step
  talk Forward Commander To'arch##19273
  accept Mission: Gateways Murketh and Shaadraz##10129 |goto Hellfire Peninsula 65.89,43.59
step
  talk Caza'rez##17558
  accept Heart of Rage##9608 |goto Hellfire Peninsula 54.88,36.0
step
  talk Nazgrel##3230
  accept The Foot of the Citadel##10876 |goto Hellfire Peninsula 55.02,35.96
step
  note Speak with Wing Commander Brack, bomb Gateway Murketh and Gateway Shaadraz and then return to Forward Commander To'arch at Reaver's Fall.
  kill Legion Transporter: Alpha##19291 |q 10129 |goto Hellfire Peninsula 78.0,47.24
step
  note Kill Force Commander Gorax, place the Challenge From the Horde upon his corpse, kill The Hand of Kargath, and then bring the Head of the Hand of Kargath to Nazgrel in Thrallmar.
  collect The Head of the Hand of Kargath##31706 |q 10876 |goto Hellfire Peninsula 55.02,35.96 |tip {dropsfrom}Hand of Kargath
step
  talk Forward Commander To'arch##19273
  turnin Mission: Gateways Murketh and Shaadraz##10129 |goto Hellfire Peninsula 65.89,43.59
step
  talk Nazgrel##3230
  turnin Heart of Rage##9608 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  turnin The Foot of the Citadel##10876 |goto Hellfire Peninsula 55.02,35.96
step
  talk Forward Commander To'arch##19273
  accept Mission: The Abyssal Shelf##10162 |goto Hellfire Peninsula 65.89,43.59
step
  note Forward Commander To'arch at Reaver's Fall in Hellfire Peninsula has asked that you destroy 20 Gan'arg Peons, 5 Mo'arg Overseers and 5 Fel Cannons.
  kill Gan'arg Peon##19398 |q 10162 |goto Hellfire Peninsula 72.94,17.37 |elite
step
  talk Forward Commander To'arch##19273
  turnin Mission: The Abyssal Shelf##10162 |goto Hellfire Peninsula 65.89,43.59
step
  talk Forward Commander To'arch##19273
  accept Return to Thrallmar##10388 |goto Hellfire Peninsula 65.89,43.59
step
  talk Nazgrel##3230
  turnin Return to Thrallmar##10388 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept Forge Camp: Mageddon##10390 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept The Assassin##9400 |goto Hellfire Peninsula 55.02,35.96
step
  note Nazgrel in Thrallmar wants you to attack Forge Camp: Mageddon and kill 10 gan'arg servants and return with the head of Razorsaw.
  kill Gan'arg Servant##16947 |q 10390 |goto Hellfire Peninsula 58.98,31.64
step
  talk Nazgrel##3230
  turnin Forge Camp: Mageddon##10390 |goto Hellfire Peninsula 55.02,35.96
step
  talk Fel Orc Corpse##17062
  turnin The Assassin##9400 |goto Hellfire Peninsula 33.62,43.53
step
  talk Nazgrel##3230
  accept Cannons of Rage##10391 |goto Hellfire Peninsula 55.02,35.96
step
  talk Fel Orc Corpse##17062
  accept A Strange Weapon##9401 |goto Hellfire Peninsula 33.62,43.53
step
  note Destroy 3 Fel Cannon MKIs in Forge Camp: Rage and return to Nazgrel in Thrallmar.
  kill Fel Cannon MKI##22461 |q 10391 |goto Hellfire Peninsula 59.62,32.56
step
  talk Nazgrel##3230
  turnin Cannons of Rage##10391 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  turnin A Strange Weapon##9401 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept Doorway to the Abyss##10392 |goto Hellfire Peninsula 55.02,35.96
step
  talk Nazgrel##3230
  accept The Warchief's Mandate##9405 |goto Hellfire Peninsula 55.02,35.96
step
  note Slay Arix'Amal to get the Burning Legion Gate Key. Use the Burning Legion Gate Key on the Rune of Spite, then return to Nazgrel in Thrallmar.
  kill Warbringer Arix'Amal##19298 |q 10392 |goto Hellfire Peninsula 53.09,26.47
step
  talk Nazgrel##3230
  turnin Doorway to the Abyss##10392 |goto Hellfire Peninsula 55.02,35.96
step
  talk Far Seer Regulkut##16574
  turnin The Warchief's Mandate##9405 |goto Hellfire Peninsula 54.23,37.9
step
  talk Far Seer Regulkut##16574
  accept A Spirit Guide##9410 |goto Hellfire Peninsula 54.23,37.9
step
  talk Nazgrel##3230
  accept Cruel's Intentions##10136 |goto Hellfire Peninsula 55.02,35.96
step
  note Kill Arazzius the Cruel, then return to Nazgrel in Thrallmar.
  kill Arazzius the Cruel##19191 |q 10136 |goto Hellfire Peninsula 43.82,31.55 |elite
step
  talk Gorkan Bloodfist##16845
  turnin A Spirit Guide##9410 |goto Hellfire Peninsula 31.99,27.79
step
  talk Nazgrel##3230
  turnin Cruel's Intentions##10136 |goto Hellfire Peninsula 55.02,35.96
step
  talk Gorkan Bloodfist##16845
  accept The Mag'har##9406 |goto Hellfire Peninsula 31.99,27.79
step
  talk Nazgrel##3230
  turnin The Mag'har##9406 |goto Hellfire Peninsula 55.02,35.96
]])
