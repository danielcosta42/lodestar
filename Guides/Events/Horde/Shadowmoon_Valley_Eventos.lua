-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Shadowmoon Valley (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Earthmender Wilda##21027
  accept Escape from Coilskar Cistern##10451 |goto Shadowmoon Valley 51.87,18.23
step
  talk Anchorite Ceyla##21402
  accept Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.58,28.38
step
  talk Earthmender Splinthoof##21938
  accept The Hand of Gul'dan##10681 |goto Shadowmoon Valley 28.49,26.57
step
  talk Overlord Or'barokh##21769
  accept The Path of Conquest##10750 |goto Shadowmoon Valley 28.39,26.53
step
  talk Mordenai##22113
  accept Kindness##10804 |goto Shadowmoon Valley 59.19,58.69
step
  talk Ja'y Nosliw##22433
  accept Earning Your Wings...##11063 |goto Shadowmoon Valley 65.89,87.18
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Bow to the Highlord##11107 |goto Shadowmoon Valley 66.12,86.36
step
  note Anchorite Ceyla at the Altar of Sha'tar wants you to collect 12 Baa'ri Tablets from the ground and from Ashtongue Workers at the Ruins of Baa'ri.
  get Tablets of Baa'ri |q 10568 |goto Shadowmoon Valley 62.58,28.38
step
  note Mordenai at Netherwing Fields in Shadowmoon Valley wants you to feed 8 Mature Netherwing Drakes.
  kill Netherwing Event Pinger##22131 |q 10804
step
  talk Earthmender Torlok##21024
  turnin Escape from Coilskar Cistern##10451 |goto Shadowmoon Valley 42.19,45.06
step
  talk Anchorite Ceyla##21402
  turnin Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.58,28.38
step
  talk Earthmender Torlok##21024
  turnin The Hand of Gul'dan##10681 |goto Shadowmoon Valley 42.19,45.06
step
  talk Kor'kron Wind Rider##21998
  turnin The Path of Conquest##10750
step
  talk Mordenai##22113
  turnin Kindness##10804 |goto Shadowmoon Valley 59.19,58.69
step
  talk Ja'y Nosliw##22433
  turnin Earning Your Wings...##11063 |goto Shadowmoon Valley 65.89,87.18
step
  talk Overlord Mor'ghor##23139
  turnin Bow to the Highlord##11107 |goto Shadowmoon Valley 66.3,85.56
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley 42.19,45.06
step
  talk Anchorite Ceyla##21402
  accept Oronu the Elder##10571 |goto Shadowmoon Valley 62.58,28.38
step
  talk Mordenai##22113
  accept Seek Out Neltharaku##10811 |goto Shadowmoon Valley 59.19,58.69
step
  talk Murg "Oldie" Muckjaw##23340
  accept Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley 65.17,85.65
step
  talk Overlord Mor'ghor##23139
  accept Lord Illidan Stormrage##11108 |goto Shadowmoon Valley 66.3,85.56
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 8 Earthen Souls and 8 Fiery Souls.
  get Enraged Spirits of Fire and Earth |q 10458 |goto Shadowmoon Valley 42.19,45.06
step
  note Anchorite Ceyla at the Altar of Sha'tar wants you to obtain the Orders from Akama from Oronu the Elder at the Ruins of Baa'ri.
  get Oronu the Elder |q 10571 |goto Shadowmoon Valley 62.58,28.38
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley 42.19,45.06
step
  talk Anchorite Ceyla##21402
  turnin Oronu the Elder##10571 |goto Shadowmoon Valley 62.58,28.38
step
  talk Neltharaku##21657
  turnin Seek Out Neltharaku##10811 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley 65.89,87.18
step
  talk Barthamus##23433
  turnin Lord Illidan Stormrage##11108 |goto Shattrath City 66.63,16.43
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Water##10480 |goto Shadowmoon Valley 42.19,45.06
step
  talk Anchorite Ceyla##21402
  accept The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.58,28.38
step
  talk Neltharaku##21657
  accept Neltharaku's Tale##10814 |goto Shadowmoon Valley 61.31,59.98
step
  talk Trope the Filth-Belcher##23342
  accept Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley 65.16,85.46
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 5 Watery Souls.
  get Enraged Spirits of Water |q 10480 |goto Shadowmoon Valley 42.19,45.06
step
  note Obtain the four medallion fragments from Haalum, Eykenen, Lakaan and Uylaru and return to Anchorite Ceyla at the Altar of Sha'tar in Shadowmoon Valley.
  get The Ashtongue Corruptors |q 10574 |goto Shadowmoon Valley 62.58,28.38
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Water##10480 |goto Shadowmoon Valley 42.19,45.06
step
  talk Anchorite Ceyla##21402
  turnin The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.58,28.38
step
  talk Neltharaku##21657
  turnin Neltharaku's Tale##10814 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley 65.89,87.18
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Air##10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Anchorite Ceyla##21402
  accept The Warden's Cage##10575 |goto Shadowmoon Valley 62.58,28.38
step
  talk Neltharaku##21657
  accept Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley 61.31,59.98
step
  talk Corlok the Vet##23344
  accept Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley 65.18,85.23
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 10 Airy Souls.
  get Enraged Spirits of Air |q 10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Air##10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Sanoru##21826
  turnin The Warden's Cage##10575 |goto Shadowmoon Valley 57.33,49.58
step
  talk Neltharaku##21657
  turnin Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley 65.89,87.18
step
  talk Earthmender Torlok##21024
  accept Oronok Torn-heart##10513 |goto Shadowmoon Valley 42.19,45.06
step
  talk Sanoru##21826
  accept Proof of Allegiance##10622 |goto Shadowmoon Valley 57.33,49.58
step
  talk Neltharaku##21657
  accept To Netherwing Ledge!##10837 |goto Shadowmoon Valley 61.31,59.98
step
  talk Wing Commander Ichman##13437
  accept Dragonmaw Race: Wing Commander Ichman##11069 |goto Alterac Valley - Battleground 48.36,84.56
step
  note Slay Zandras at the Warden's Cage in Shadowmoon Valley and return to Sanoru.
  kill Zandras##21827 |q 10622 |goto Shadowmoon Valley 58.03,49.13
step
  note Neltharaku, flying high above Netherwing Fields in Shadowmoon Valley, wants you to collect 12 Nethervine Crystals from Netherwing Ledge.
  get To Netherwing Ledge! |q 10837 |goto Shadowmoon Valley 61.31,59.98
step
  talk Oronok Torn-heart##21183
  turnin Oronok Torn-heart##10513 |goto Shadowmoon Valley 53.95,23.52
step
  talk Sanoru##21826
  turnin Proof of Allegiance##10622 |goto Shadowmoon Valley 57.33,49.58
step
  talk Neltharaku##21657
  turnin To Netherwing Ledge!##10837 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Wing Commander Ichman##11069 |goto Shadowmoon Valley 65.89,87.18
step
  talk Oronok Torn-heart##21183
  accept I Was A Lot Of Things...##10514 |goto Shadowmoon Valley 53.95,23.52
step
  talk Sanoru##21826
  accept Akama##10628 |goto Shadowmoon Valley 57.33,49.58
step
  talk Neltharaku##21657
  accept The Force of Neltharaku##10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Wing Commander Mulverick##23346
  accept Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley 65.17,84.88
step
  note Oronok Torn-heart at Oronok's Farm in Shadowmoon Valley wants you to recover 10 Shadowmoon Tubers from the Shattered Plains.
  get I Was A Lot Of Things... |q 10514 |goto Shadowmoon Valley 53.95,23.52
step
  note Neltharaku, flying high above Netherwing Fields in Shadowmoon Valley, wants you to free 5 Enslaved Netherwing Drakes.
  get The Force of Neltharaku |q 10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Oronok Torn-heart##21183
  turnin I Was A Lot Of Things...##10514 |goto Shadowmoon Valley 53.95,23.52
step
  talk Akama##21700
  turnin Akama##10628 |goto Shadowmoon Valley 58.11,48.18
step
  talk Neltharaku##21657
  turnin The Force of Neltharaku##10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley 65.89,87.18
step
  talk Oronok Torn-heart##21183
  accept A Lesson Learned##10515 |goto Shadowmoon Valley 53.95,23.52
step
  talk Akama##21700
  accept Seer Udalo##10705 |goto Shadowmoon Valley 58.11,48.18
step
  talk Neltharaku##21657
  accept Karynaku##10858 |goto Shadowmoon Valley 61.31,59.98
step
  talk Captain Skyshatter##23348
  accept Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley 65.45,85.28
step
  note Oronok Torn-heart at Oronok's Farm in Shadowmoon Valley wants you to destroy 10 Ravenous Flayer Eggs on the Shattered Plains.
  collect Ravenous Flayer Egg##184684 |q 10515 |goto Shadowmoon Valley 56.78,16.14
step
  talk Oronok Torn-heart##21183
  turnin A Lesson Learned##10515 |goto Shadowmoon Valley 53.95,23.52
step
  talk Udalo##21962
  turnin Seer Udalo##10705
step
  talk Karynaku##22112
  turnin Karynaku##10858 |goto Shadowmoon Valley 69.86,61.44
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley 65.89,87.18
step
  talk Oronok Torn-heart##21183
  accept The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley 53.95,23.52
step
  talk Udalo##21962
  accept A Mysterious Portent##10706
step
  talk Karynaku##22112
  accept Zuluhed the Whacked##10866 |goto Shadowmoon Valley 69.86,61.44
step
  note Kill Zuluhed the Whacked and recover Zuluhed's Key. Use Zuluhed's Key on Zuluhed's Chains to free Karynaku.
  kill Zuluhed the Whacked##11980 |q 10866
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley 53.95,23.52
step
  talk Akama##21700
  turnin A Mysterious Portent##10706 |goto Shadowmoon Valley 58.11,48.18
step
  talk Karynaku##22112
  turnin Zuluhed the Whacked##10866 |goto Shadowmoon Valley 69.86,61.44
step
  talk Oronok Torn-heart##21183
  accept Borak, Son of Oronok##10546 |goto Shadowmoon Valley 53.95,23.52
step
  talk Akama##21700
  accept The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.11,48.18
step
  talk Karynaku##22112
  accept Ally of the Netherwing##10870 |goto Shadowmoon Valley 69.86,61.44
step
  note Go to the top of the Atam'al Terrace in Shadowmoon Valley and obtain the Heart of Fury. Return to Akama at the Warden's Cage in Shadowmoon Valley when you've completed this task.
  get The Ata'mal Terrace |q 10707 |goto Shadowmoon Valley 58.11,48.18
step
  talk Borak, Son of Oronok##21293
  turnin Borak, Son of Oronok##10546 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  turnin The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.11,48.18
step
  talk Mordenai##22113
  turnin Ally of the Netherwing##10870 |goto Shadowmoon Valley 59.19,58.69
step
  talk Borak, Son of Oronok##21293
  accept Of Thistleheads and Eggs...##10547 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  accept Akama's Promise##10708 |goto Shadowmoon Valley 58.11,48.18
step
  talk Mordenai##22113
  accept Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley 59.19,58.69
step
  note Borak, Son of Oronok at the bridge north of Eclipse Point wants you to find a Rotten Arakkoa Egg and deliver it to Tobias the Filth Gorger in Shattrath City, located in northwest Terokkar Forest.
  get Of Thistleheads and Eggs... |q 10547 |goto Shadowmoon Valley 47.56,57.18
step
  talk Tobias the Filth Gorger##21411
  turnin Of Thistleheads and Eggs...##10547 |goto Shattrath City 63.95,70.03
step
  talk A'dal##18481
  turnin Akama's Promise##10708 |goto Shattrath City 53.99,44.75
step
  talk Mordenai##22113
  turnin Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley 59.19,58.69
step
  talk Tobias the Filth Gorger##21411
  accept The Bundle of Bloodthistle##10550 |goto Shattrath City 63.95,70.03
step
  talk Seer Olum##22820
  accept The Secret Compromised##10944 |goto Serpentshrine Cavern - Raid -1,-1
step
  talk Mordenai##22113
  accept In Service of the Illidari##11013 |goto Shadowmoon Valley 59.19,58.69
step
  talk Borak, Son of Oronok##21293
  turnin The Bundle of Bloodthistle##10550 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  turnin The Secret Compromised##10944 |goto Shadowmoon Valley 58.11,48.18
step
  talk Overlord Mor'ghor##23139
  turnin In Service of the Illidari##11013 |goto Shadowmoon Valley 66.3,85.56
step
  talk Borak, Son of Oronok##21293
  accept To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  accept Ruse of the Ashtongue##10946 |goto Shadowmoon Valley 58.11,48.18
step
  talk Overlord Mor'ghor##23139
  accept Enter the Taskmaster##11014 |goto Shadowmoon Valley 66.3,85.56
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover the Stormrage Missive.
  get To Catch A Thistlehead |q 10570 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  turnin To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  turnin Ruse of the Ashtongue##10946 |goto Shadowmoon Valley 58.11,48.18
step
  talk Taskmaster Varkule Dragonbreath##23140
  turnin Enter the Taskmaster##11014 |goto Shadowmoon Valley 66.12,86.36
step
  talk Borak, Son of Oronok##21293
  accept The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  accept An Artifact From the Past##10947 |goto Shadowmoon Valley 58.11,48.18
step
  talk Yarzill the Merc##23141
  accept Your Friend On The Inside##11019 |goto Shadowmoon Valley 66.0,86.47
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover 6 pieces of Eclipsion Armor.
  get The Shadowmoon Shuffle |q 10576 |goto Shadowmoon Valley 47.56,57.18
step
  note Go to the Caverns of Time in Tanaris and gain access to the Battle of Mount Hyjal. Once inside, defeat Rage Winterchill and bring the Time-Phased Phylactery to Akama in Shadowmoon Valley.
  get An Artifact From the Past |q 10947 |goto Shadowmoon Valley 58.11,48.18
step
  talk Borak, Son of Oronok##21293
  turnin The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  turnin An Artifact From the Past##10947 |goto Shadowmoon Valley 58.11,48.18
step
  talk Yarzill the Merc##23141
  turnin Your Friend On The Inside##11019 |goto Shadowmoon Valley 66.0,86.47
step
  talk Borak, Son of Oronok##21293
  accept What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.56,57.18
step
  talk Akama##21700
  accept The Hostage Soul##10948 |goto Shadowmoon Valley 58.11,48.18
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Rise, Overseer!##11053 |goto Shadowmoon Valley 66.12,86.36
step
  talk Borak, Son of Oronok##21293
  turnin What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.56,57.18
step
  talk A'dal##18481
  turnin The Hostage Soul##10948 |goto Shattrath City 53.99,44.75
step
  talk Overlord Mor'ghor##23139
  turnin Rise, Overseer!##11053 |goto Shadowmoon Valley 66.3,85.56
step
  talk A'dal##18481
  accept Entry Into the Black Temple##10949 |goto Shattrath City 53.99,44.75
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept The Netherwing Mines##11075 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.12,86.36
step
  talk Xi'ri##18528
  turnin Entry Into the Black Temple##10949 |goto Shadowmoon Valley 65.22,43.96
step
  talk Mistress of the Mines##23149
  turnin The Netherwing Mines##11075 |goto Shadowmoon Valley 65.43,90.13
step
  talk Overlord Mor'ghor##23139
  turnin Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.3,85.56
step
  talk Xi'ri##18528
  accept A Distraction for Akama##10985 |goto Shadowmoon Valley 65.22,43.96
step
  talk Illidari Lord Balthas##23427
  accept The Soul Cannon of Reth'hedron##11089 |goto Shadowmoon Valley 66.3,85.7
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Hail, Commander!##11092 |goto Shadowmoon Valley 66.12,86.36
step
  note Illidari Lord Balthas at the Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 2 Felsteel Bars, 1 Adamantite Frame, 1 Khorium Power Core and 1 Flawless Arcane Essence.
  get The Soul Cannon of Reth'hedron |q 11089 |goto Shadowmoon Valley 66.3,85.7
step
  talk Xi'ri##18528
  turnin A Distraction for Akama##10985 |goto Shadowmoon Valley 65.22,43.96
step
  talk Mistress of the Mines##23149
  turnin The Great Murkblood Revolt##11081 |goto Shadowmoon Valley 65.43,90.13
step
  talk Illidari Lord Balthas##23427
  turnin The Soul Cannon of Reth'hedron##11089 |goto Shadowmoon Valley 66.3,85.7
step
  talk Overlord Mor'ghor##23139
  turnin Hail, Commander!##11092 |goto Shadowmoon Valley 66.3,85.56
step
  talk Mistress of the Mines##23149
  accept Seeker of Truth##11082 |goto Shadowmoon Valley 65.43,90.13
step
  talk Illidari Lord Balthas##23427
  accept Subdue the Subduer##11090 |goto Shadowmoon Valley 66.3,85.7
step
  talk Overlord Mor'ghor##23139
  accept Kill Them All!##11094 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  accept Kill Them All!##11099 |goto Shadowmoon Valley 66.3,85.56
step
  note Find a Murkblood Overseer and interrogate him. Return to the Mistress of the Mines with the Murkblood information and the Hand of the Overseer.
  get Seeker of Truth |q 11082 |goto Shadowmoon Valley 65.43,90.13
step
  talk Mistress of the Mines##23149
  turnin Seeker of Truth##11082 |goto Shadowmoon Valley 65.43,90.13
step
  talk Illidari Lord Balthas##23427
  turnin Subdue the Subduer##11090 |goto Shadowmoon Valley 66.3,85.7
step
  talk Arcanist Thelis##21955
  turnin Kill Them All!##11094 |goto Shadowmoon Valley 56.25,59.6
step
  talk Anchorite Ceyla##21402
  turnin Kill Them All!##11099 |goto Shadowmoon Valley 62.58,28.38
step
  talk Arcanist Thelis##21955
  accept Commander Hobb##11095 |goto Shadowmoon Valley 56.25,59.6
step
  talk Anchorite Ceyla##21402
  accept Commander Arcus##11100 |goto Shadowmoon Valley 62.58,28.38
step
  talk Commander Hobb##23434
  turnin Commander Hobb##11095 |goto Shadowmoon Valley 56.48,58.65
step
  talk Commander Arcus##23452
  turnin Commander Arcus##11100 |goto Shadowmoon Valley 62.38,29.32
step
  talk Commander Hobb##23434
  accept The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley 56.48,58.65
step
  talk Commander Arcus##23452
  accept The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley 62.38,29.32
step
  talk Overlord Mor'ghor##23139
  turnin The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  turnin The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley 66.3,85.56
]])
