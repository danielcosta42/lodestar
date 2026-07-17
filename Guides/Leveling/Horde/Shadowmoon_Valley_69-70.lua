-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Shadowmoon Valley (69-70)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Deadwind Pass (70-70)",
}, [[
step
  note {fp}Drek'Gol
  goto Shadowmoon Valley 30.35,29.18 |tip {vendor}
step
  talk Blood Guard Gulmok##21359
  accept Besieged!##10595 |goto Shadowmoon Valley 30.45,32.4
step
  kill Overseer Ripsaw##21499 |goto Shadowmoon Valley 23.18,35.15 |tip Loot the quest item here — it starts the quest.
  accept Illidari-Bane Shard##10623 |goto Shadowmoon Valley 23.18,35.15
step
  talk Chief Apothecary Hildagard##21772
  accept A Haunted History##10624 |goto Shadowmoon Valley 29.96,27.75
step
  note Chief Apothecary Hildagard at Shadowmoon Village in Shadowmoon Valley wants you to bring her 15 Ever-burning Ash samples.
  collect Ever-burning Ash##30716 |q 10624 |goto Shadowmoon Valley 37.64,40.52
step
  click Wanted Poster##184945
  accept Wanted: Uvuros, Scourge of Shadowmoon##10647 |goto Shadowmoon Valley 30.44,30.81
step
  note Slay Uvuros and recover Uvuros's Fiery Mane. Return it to Warcaller Sardon Truslice at Shadowmoon Village in Shadowmoon Valley.
  kill Uvuros##21102 |goto Shadowmoon Valley 54.84,49.39 |elite
  collect Uvuros's Fiery Mane##30807 |q 10647 |goto Shadowmoon Valley 54.84,49.39
step
  talk Researcher Tiorus##21770
  accept What Strange Creatures...##10660 |goto Shadowmoon Valley 30.07,28.26
step
  note Researcher Tiorus at Shadowmoon Village in Shadowmoon Valley wants you to recover 8 Felfire Spleens.
  collect Felfire Spleen##30819 |q 10660 |goto Shadowmoon Valley 36.04,40.66 |tip {dropsfrom}Felfire Diemetradon
step
  talk Earthmender Splinthoof##21938
  accept The Hand of Gul'dan##10681 |goto Shadowmoon Valley 28.49,26.57
step
  talk Overlord Or'barokh##21769
  accept A Grunt's Work...##10702 |goto Shadowmoon Valley 28.39,26.53
step
  talk Sergeant Kargrul##22043
  accept The Sketh'lon Wreckage##10760 |goto Shadowmoon Valley 31.02,29.76
step
  note Recover the Skethlon Commander's Journal Page 1, Skethlon Commander's Journal Page 2, and Skethlon Commander's Journal Page 3 from the Dark Conclave arakkoa at the Sketh'lon Wreckage to Sergeant Kargrul at Shadowmoon Village.
  collect Sketh'lon Commander's Journal - Page 1##31260 |q 10760 |goto Shadowmoon Valley 37.18,30.79 |tip {dropsfrom}Dark Conclave Shadowmancer, Dark Conclave Ravenguard, Dark Conclave Hawkeye
step
  talk Earthmender Torlok##21024
  turnin The Hand of Gul'dan##10681 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley 42.19,45.06
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 8 Earthen Souls and 8 Fiery Souls.
  get Enraged Spirits of Fire and Earth |q 10458 |goto Shadowmoon Valley 42.19,45.06
step
  talk Borak, Son of Oronok##21293
  accept To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.56,57.18
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover the Stormrage Missive.
  collect Stormrage Missive##30617 |q 10570 |goto Shadowmoon Valley 47.56,57.18 |tip {dropsfrom}Envoy Icarius
step
  talk Arcanist Thelis##21955
  accept Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.25,59.6
step
  note Arcanist Thelis at the Sanctum of the Stars wants you to collect 12 Baa'ri Tablets from the ground and from Ashtongue Workers at the Ruins of Baa'ri.
  collect 12 Baa'ri Tablet Fragment##30596 |q 10683 |goto Shadowmoon Valley 58.47,37.68 |tip {dropsfrom}Ashtongue Worker, Baa'ri Tablet Fragment
step
  talk Larissa Sunstrike##21954
  accept Karabor Training Grounds##10687 |goto Shadowmoon Valley 55.73,58.17
step
  note Larissa Sunstrike at the Sanctum of the Stars wants you to obtain 8 Sunfury Glaives from the Demon Hunter Supplicants and Demon Hunter Initiates at the Ruins of Karabor, northeast of the Sanctum of the Stars.
  collect 8 Sunfury Glaive##30679 |q 10687 |goto Shadowmoon Valley 68.74,53.05 |tip {dropsfrom}Demon Hunter Supplicant, Demon Hunter Initiate
step
  talk Larissa Sunstrike##21954
  accept Varedis Must Be Stopped##10692 |goto Shadowmoon Valley 55.73,58.17
step
  kill Val'zareq the Conqueror##21979 |goto Shadowmoon Valley 51.61,64.92 |elite |tip Loot the quest item here — it starts the quest.
  accept The Journal of Val'zareq: Portends of War##10793 |goto Shadowmoon Valley 51.61,64.92
step
  talk Mordenai##22113
  accept Kindness##10804 |goto Shadowmoon Valley 59.19,58.69
step
  note Mordenai at Netherwing Fields in Shadowmoon Valley wants you to feed 8 Mature Netherwing Drakes.
  kill Netherwing Event Pinger##22131 |q 10804
step
  talk Varen the Reclaimer##21953
  accept The Ashtongue Broken##10807 |goto Shadowmoon Valley 54.73,58.19
step
  talk Battlemage Vyara##22211
  accept Sunfury Signets##10824 |goto Shadowmoon Valley 56.29,58.8
step
  note Battlemage Vyara at the Sanctum of the Stars wants you to bring her 10 Sunfury Signets.
  collect Sunfury Signet##30810 |q 10824 |goto Shadowmoon Valley 56.29,58.8 |tip {dropsfrom}Bloodwarder Protector, Bloodwarder Falconer, Bloodwarder Steward
step
  talk Akama##21700
  accept The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.11,48.18
step
  note Go to the top of the Atam'al Terrace in Shadowmoon Valley and obtain the Heart of Fury. Return to Akama at the Warden's Cage in Shadowmoon Valley when you've completed this task.
  kill Shadowlord Deathwail##22006 |goto Shadowmoon Valley 72.33,34.83 |elite
  collect Heart of Fury##31307 |q 10707 |goto Shadowmoon Valley 72.33,34.83
step
  talk Akama##21700
  accept Ruse of the Ashtongue##10946 |goto Shadowmoon Valley 58.11,48.18
step
  kill Smith Gorlunk##22037 |goto Shadowmoon Valley 67.64,36.2 |tip Loot the quest item here — it starts the quest.
  accept Entry Into the Citadel##10755 |goto Shadowmoon Valley 67.64,36.2
step
  talk Xi'ri##18528
  accept A Distraction for Akama##10985 |goto Shadowmoon Valley 65.22,43.96
step
  talk Nazgrel##3230
  turnin Entry Into the Citadel##10755 |goto Hellfire Peninsula 55.02,35.96 |tip {turninat}Hellfire Peninsula
step
  talk Anchorite Ceyla##21402
  accept Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.58,28.38
step
  note Anchorite Ceyla at the Altar of Sha'tar wants you to collect 12 Baa'ri Tablets from the ground and from Ashtongue Workers at the Ruins of Baa'ri.
  collect 12 Baa'ri Tablet Fragment##30596 |q 10568 |goto Shadowmoon Valley 58.47,37.68 |tip {dropsfrom}Ashtongue Worker, Baa'ri Tablet Fragment
step
  talk Exarch Onaala##21860
  accept Karabor Training Grounds##10587 |goto Shadowmoon Valley 61.2,29.23
step
  note Exarch Onaala at the Altar of Sha'tar wants you to obtain 8 Sunfury Glaives from Demon Hunter Supplicants and Demon Hunter Initiates at the Ruins of Karabor, southeast of the Altar of Sha'tar.
  collect 8 Sunfury Glaive##30679 |q 10587 |goto Shadowmoon Valley 68.74,53.05 |tip {dropsfrom}Demon Hunter Supplicant, Demon Hunter Initiate
step
  talk Vindicator Aluumen##21822
  accept The Ashtongue Tribe##10619 |goto Shadowmoon Valley 61.17,29.14
step
  talk Exarch Onaala##21860
  accept Varedis Must Be Stopped##10651 |goto Shadowmoon Valley 61.2,29.23
step
  talk Harbinger Saronen##22214
  accept Marks of Sargeras##10826 |goto Shadowmoon Valley 62.27,29.78
step
  note Bring 10 Marks of Sargeras to Harbinger Saronen in Shadowmoon Valley.
  collect 10 Mark of Sargeras##30809 |q 10826 |goto Netherstorm 40.3,21.07 |tip {dropsfrom}Cyber-Rage Forgelord, Mo'arg Doomsmith, Gan'arg Mekgineer
step
  note Varen the Reclaimer wants you to go to the Ruins of Baa'ri and slay 3 Ashtongue Handlers, 4 Ashtongue Warriors and 6 Ashtongue Shaman.
  kill Ashtongue Handler##21803 |q 10807 |goto Shadowmoon Valley 57.71,36.86
step
  note Vindicator Aluumen wants you to go to the Ruins of Baa'ri and slay 3 Ashtongue Handlers, 4 Ashtongue Warriors and 6 Ashtongue Shaman.
  kill Ashtongue Handler##21803 |q 10619 |goto Shadowmoon Valley 57.71,36.86
step
  turnin The Journal of Val'zareq: Portends of War##10793 |goto Shadowmoon Valley 51.38,72.79
step
  talk Ancient Shadowmoon Spirit##21797
  accept Divination: Gorefiend's Armor##10634 |goto Shadowmoon Valley 58.23,70.79
step
  note The Ancient Shadowmoon Spirit at the Altar of Shadows in southeast Shadowmoon Valley wants you to recover Gorefiend's Armor.
  kill Vhel'kur##21801 |goto Shadowmoon Valley 67.04,87.07 |elite
  collect Gorefiend's Armor##30797 |q 10634 |goto Shadowmoon Valley 67.04,87.07
step
  talk Ancient Shadowmoon Spirit##21797
  accept Divination: Gorefiend's Cloak##10635 |goto Shadowmoon Valley 58.23,70.79
step
  note The Ancient Shadowmoon Spirit at the Altar of Shadows in southeast Shadowmoon Valley wants you to recover Gorefiend's Cloak.
  collect Gorefiend's Cloak##30799 |q 10635 |goto Shadowmoon Valley 64.37,47.31 |tip {dropsfrom}Cleric of Karabor
step
  talk Ancient Shadowmoon Spirit##21797
  accept Divination: Gorefiend's Truncheon##10636 |goto Shadowmoon Valley 58.23,70.79
step
  note The Ancient Shadowmoon Spirit at the Altar of Shadows in southeast Shadowmoon Valley wants you to recover Gorefiend's Truncheon.
  collect Gorefiend's Truncheon##30800 |q 10636 |goto Shadowmoon Valley 61.88,31.87 |tip {dropsfrom}Ghostrider of Karabor
step
  talk Ancient Shadowmoon Spirit##21797
  accept Teron Gorefiend, I am...##10639 |goto Shadowmoon Valley 58.23,70.79
step
  note The Ancient Shadowmoon Spirit has used you as a pawn! Now that you have collected the items he required, he has revealed himself to be Teron Gorefiend. To break free of his possession, you must do his bidding and slay Karsius the Ancient Watcher.
  kill Karsius the Ancient Watcher##21877 |q 10639 |elite
step
  note Exarch Onaala wants you to go to the ruins of Karabor and slay Alandien, Theras, Netharel and Varedis. Use the Book of Fel Names when Varedis uses Metamorphosis to weaken him. Return to Exarch Onaala with the Book of Fel Names after you've completed this task.
  kill Varedis##21178 |q 10651 |goto Shadowmoon Valley 72.16,53.67 |elite
step
  note Larissa Sunstrike wants you to go to the ruins of Karabor and slay Alandien, Theras, Netharel and Varedis. Use the Book of Fel Names when Varedis uses Metamorphosis to weaken him. Return to Larissa Sunstrike with the Book of Fel Names after completing this task.
  kill Varedis##21178 |q 10692 |goto Shadowmoon Valley 72.16,53.67 |elite
step
  talk Ja'y Nosliw##22433
  accept Earning Your Wings...##11063 |goto Shadowmoon Valley 65.89,87.18
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Bow to the Highlord##11107 |goto Shadowmoon Valley 66.12,86.36
step
  talk Chief Apothecary Hildagard##21772
  turnin A Haunted History##10624 |goto Shadowmoon Valley 29.96,27.75
step
  talk Sergeant Kargrul##22043
  turnin The Sketh'lon Wreckage##10760 |goto Shadowmoon Valley 31.02,29.76
step
  talk Chief Apothecary Hildagard##21772
  turnin Teron Gorefiend, I am...##10639 |goto Shadowmoon Valley 29.96,27.75
step
  talk Warcaller Sardon Truslice##21771
  turnin Wanted: Uvuros, Scourge of Shadowmoon##10647 |goto Shadowmoon Valley 30.35,30.87
step
  talk Researcher Tiorus##21770
  turnin What Strange Creatures...##10660 |goto Shadowmoon Valley 30.07,28.26
step
  talk Overlord Or'barokh##21769
  turnin A Grunt's Work...##10702 |goto Shadowmoon Valley 28.39,26.53
step
  talk Blood Guard Gulmok##21359
  turnin Besieged!##10595 |goto Shadowmoon Valley 30.45,32.4
step
  talk Grokom Deatheye##19333
  turnin Illidari-Bane Shard##10623 |goto Shadowmoon Valley 29.79,31.26
step
  talk Blood Guard Gulmok##21359
  accept To Legion Hold##10596 |goto Shadowmoon Valley 30.45,32.4
step
  note Make your way to Legion Hold, locate the Legion Communication Device, and learn about the Legion's plans while in disguise. Return to Blood Guard Gulmok at Shadowmoon Village when you've completed your mission.
  kill Image of Warbringer Razuun##21502 |q 10596
step
  talk Chief Apothecary Hildagard##21772
  accept Spectrecles##10625 |goto Shadowmoon Valley 29.96,27.75
step
  talk Grokom Deatheye##19333
  accept Capture the Weapons##10627 |goto Shadowmoon Valley 29.79,31.26
step
  note Grokom Deatheye at Shadowmoon Village wants you to bring him Mazakradon's Glaive and Morgroron's Glaive.
  kill Makazradon##21501 |goto Shadowmoon Valley 22.68,35.3 |elite
  collect Makazradon's Glaive##30786 |q 10627 |goto Shadowmoon Valley 22.68,35.3
step
  talk Researcher Tiorus##21770
  accept Frankly, It Makes No Sense...##10672 |goto Shadowmoon Valley 30.07,28.26
step
  talk Sergeant Kargrul##22043
  accept Find the Deserter##10761 |goto Shadowmoon Valley 31.02,29.76
step
  note Chief Apothecary Hildagard at Shadowmoon Village in Shadowmoon Valley wants you to slay 12 Shadowmoon Zealots.
  kill Shadowmoon Zealot##21788 |q 10625 |goto Shadowmoon Valley 30.77,29.36
step
  talk Parshah##22024
  turnin Find the Deserter##10761 |goto Shadowmoon Valley 35.42,42.15
step
  talk Parshah##22024
  accept Asghar's Totem##10777 |goto Shadowmoon Valley 35.42,42.15
step
  note Bring the Sketh'lon War Totem to Parshah in the Magma Fields.
  collect Sketh'lon War Totem##31169 |q 10777 |goto Shadowmoon Valley 39.65,29.33 |tip {dropsfrom}Asghar
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Water##10480 |goto Shadowmoon Valley 42.19,45.06
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 5 Watery Souls.
  get Enraged Spirits of Water |q 10480 |goto Shadowmoon Valley 42.19,45.06
step
  talk Borak, Son of Oronok##21293
  turnin To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  accept The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.56,57.18
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover 6 pieces of Eclipsion Armor.
  collect Eclipsion Armor##30640 |q 10576 |goto Shadowmoon Valley 47.18,67.6 |tip {dropsfrom}Eclipsion Centurion, Eclipsion Blood Knight, Eclipsion Archmage
step
  talk Mordenai##22113
  turnin Kindness##10804 |goto Shadowmoon Valley 59.19,58.69
step
  talk Varen the Reclaimer##21953
  turnin The Ashtongue Broken##10807 |goto Shadowmoon Valley 54.73,58.19
step
  talk Arcanist Thelis##21955
  turnin Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.25,59.6
step
  talk Larissa Sunstrike##21954
  turnin Karabor Training Grounds##10687 |goto Shadowmoon Valley 55.73,58.17
step
  talk Larissa Sunstrike##21954
  turnin Varedis Must Be Stopped##10692 |goto Shadowmoon Valley 55.73,58.17
step
  talk Battlemage Vyara##22211
  turnin Sunfury Signets##10824 |goto Shadowmoon Valley 56.29,58.8
step
  talk Arcanist Thelis##21955
  accept Oronu the Elder##10684 |goto Shadowmoon Valley 56.25,59.6
step
  note Arcanist Thelis at the Sanctum of the Stars wants you to obtain the Orders from Akama from Oronu the Elder at the Ruins of Baa'ri.
  collect Orders From Akama##30649 |q 10684 |goto Shadowmoon Valley 57.19,32.87 |tip {dropsfrom}Oronu the Elder
step
  talk Larissa Sunstrike##21954
  accept A Necessary Distraction##10688 |goto Shadowmoon Valley 55.73,58.17
step
  talk Mordenai##22113
  accept Seek Out Neltharaku##10811 |goto Shadowmoon Valley 59.19,58.69
step
  talk Varen the Reclaimer##21953
  accept The Great Retribution##10817 |goto Shadowmoon Valley 54.73,58.19
step
  talk Akama##21700
  turnin Ruse of the Ashtongue##10946 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  turnin The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept Akama's Promise##10708 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept An Artifact From the Past##10947 |goto Shadowmoon Valley 58.11,48.18
step
  note Go to the Caverns of Time in Tanaris and gain access to the Battle of Mount Hyjal. Once inside, defeat Rage Winterchill and bring the Time-Phased Phylactery to Akama in Shadowmoon Valley.
  collect Time-Phased Phylactery##32459 |q 10947 |goto Shadowmoon Valley 58.11,48.18 |tip {dropsfrom}Rage Winterchill
step
  talk Xi'ri##18528
  turnin A Distraction for Akama##10985 |goto Shadowmoon Valley 65.22,43.96
step
  talk Xi'ri##18528
  accept Seek Out the Ashtongue##10958 |goto Shadowmoon Valley 65.22,43.96
step
  note Researcher Tiorus at Shadowmoon Village in Shadowmoon Valley wants you to travel to the lava flow near the Ruins of Baa'ri and use the Arcano Control Unit to control an Arcano-Scorp, swim in the lava with the Arcano-Scorp, and tag 8 Greater Felfire Diemetradons.
  use Arcano-Scorp Credit##21924 |q 10672 |goto Shadowmoon Valley 62.16,40.1 |tip {useit}
step
  note Larissa Sunstrike wants you to return to the Ruins of Karabor and find a way to unleash Azaloth on his captors.
  kill Azaloth Credit Marker##21892 |q 10688 |goto Shadowmoon Valley 69.84,51.42
step
  note Varen the Reclaimer wants you to slay 8 Shadowmoon Slayers, 8 Shadowmoon Chosen and 4 Shadowmoon Darkweavers.
  kill Shadowmoon Slayer##22082 |q 10817 |goto Shadowmoon Valley 69.23,38.7
step
  talk Exarch Onaala##21860
  turnin Varedis Must Be Stopped##10651 |goto Shadowmoon Valley 61.2,29.23
step
  talk Anchorite Ceyla##21402
  turnin Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.58,28.38
step
  talk Harbinger Saronen##22214
  turnin Marks of Sargeras##10826 |goto Shadowmoon Valley 62.27,29.78
step
  talk Exarch Onaala##21860
  turnin Karabor Training Grounds##10587 |goto Shadowmoon Valley 61.2,29.23
step
  talk Vindicator Aluumen##21822
  turnin The Ashtongue Tribe##10619 |goto Shadowmoon Valley 61.17,29.14
step
  talk Anchorite Ceyla##21402
  accept Oronu the Elder##10571 |goto Shadowmoon Valley 62.58,28.38
step
  note Anchorite Ceyla at the Altar of Sha'tar wants you to obtain the Orders from Akama from Oronu the Elder at the Ruins of Baa'ri.
  collect Orders From Akama##30649 |q 10571 |goto Shadowmoon Valley 57.19,32.87 |tip {dropsfrom}Oronu the Elder
step
  talk Exarch Onaala##21860
  accept A Necessary Distraction##10637 |goto Shadowmoon Valley 61.2,29.23
step
  talk Vindicator Aluumen##21822
  accept Reclaiming Holy Grounds##10816 |goto Shadowmoon Valley 61.17,29.14
step
  talk Ancient Shadowmoon Spirit##21797
  turnin Divination: Gorefiend's Armor##10634 |goto Shadowmoon Valley 58.23,70.79
step
  talk Ancient Shadowmoon Spirit##21797
  turnin Divination: Gorefiend's Cloak##10635 |goto Shadowmoon Valley 58.23,70.79
step
  talk Ancient Shadowmoon Spirit##21797
  turnin Divination: Gorefiend's Truncheon##10636 |goto Shadowmoon Valley 58.23,70.79
step
  talk Ja'y Nosliw##22433
  turnin Earning Your Wings...##11063 |goto Shadowmoon Valley 65.89,87.18
step
  talk Overlord Mor'ghor##23139
  turnin Bow to the Highlord##11107 |goto Shadowmoon Valley 66.3,85.56
step
  talk Chief Apothecary Hildagard##21772
  turnin Spectrecles##10625 |goto Shadowmoon Valley 29.96,27.75
step
  talk Grokom Deatheye##19333
  turnin Capture the Weapons##10627 |goto Shadowmoon Valley 29.79,31.26
step
  talk Researcher Tiorus##21770
  turnin Frankly, It Makes No Sense...##10672 |goto Shadowmoon Valley 30.07,28.26
step
  talk Seer Kanai##23158
  turnin Seek Out the Ashtongue##10958 |goto Black Temple - Raid -1,-1 |tip {turninat}Black Temple - Raid
step
  talk Blood Guard Gulmok##21359
  turnin To Legion Hold##10596 |goto Shadowmoon Valley 30.45,32.4
step
  talk Blood Guard Gulmok##21359
  accept Setting Up the Bomb##10597 |goto Shadowmoon Valley 30.45,32.4
step
  note Obtain a Fel Reaver Power Core and a Fel Reaver Armor Plate, then bring them to Blood Guard Gulmok at Shadowmoon Village.
  collect Fel Reaver Power Core##30628 |q 10597 |goto Shadowmoon Valley 26.3,41.27
step
  talk Chief Apothecary Hildagard##21772
  accept Teron Gorefiend - Lore and Legend##10633 |goto Shadowmoon Valley 29.96,27.75
step
  talk Grokom Deatheye##19333
  accept The Hermit Smith##10663 |goto Shadowmoon Valley 29.79,31.26
step
  talk Researcher Tiorus##21770
  accept Felspine the Greater##10673 |goto Shadowmoon Valley 30.07,28.26
step
  note Researcher Tiorus at Shadowmoon Village in Shadowmoon Valley wants you to kill Felspine the Greater and recover Felspine's Hide.
  collect Felspine's Hide##30851 |q 10673 |goto Shadowmoon Valley 56.1,44.33 |tip {dropsfrom}Felspine the Greater
step
  talk Parshah##22024
  turnin Asghar's Totem##10777 |goto Shadowmoon Valley 35.42,42.15
step
  talk Parshah##22024
  accept The Rod of Lianthe##10778 |goto Shadowmoon Valley 35.42,42.15
step
  note Obtain Lianthe's Key from any of the blood elves at Eclipse Point and use it to open Lianthe's Strongbox and claim the Rod of Lianthe. Return the rod to Parshah in the Magma Fields.
  collect Lianthe's Key##31316 |q 10778 |goto Shadowmoon Valley 47.18,67.6 |tip {dropsfrom}Eclipsion Centurion, Eclipsion Archmage, Eclipsion Bloodwarder
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Water##10480 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Air##10481 |goto Shadowmoon Valley 42.19,45.06
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 10 Airy Souls.
  get Enraged Spirits of Air |q 10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Borak, Son of Oronok##21293
  turnin The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  accept What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.56,57.18
step
  talk Neltharaku##21657
  turnin Seek Out Neltharaku##10811 |goto Shadowmoon Valley 61.31,59.98
step
  talk Arcanist Thelis##21955
  turnin Oronu the Elder##10684 |goto Shadowmoon Valley 56.25,59.6
step
  talk Larissa Sunstrike##21954
  turnin A Necessary Distraction##10688 |goto Shadowmoon Valley 55.73,58.17
step
  talk Varen the Reclaimer##21953
  turnin The Great Retribution##10817 |goto Shadowmoon Valley 54.73,58.19
step
  talk Arcanist Thelis##21955
  accept The Ashtongue Corruptors##10685 |goto Shadowmoon Valley 56.25,59.6
step
  note Obtain the four medallion fragments from Haalum, Eykenen, Lakaan and Uylaru and return to Arcanist Thelis at the Sanctum of the Stars in Shadowmoon Valley.
  collect Eykenen's Medallion Fragment##30692 |q 10685 |goto Shadowmoon Valley 51.18,52.82 |tip {dropsfrom}Eykenen
step
  talk Larissa Sunstrike##21954
  accept Altruis##10689 |goto Shadowmoon Valley 55.73,58.17
step
  talk Neltharaku##21657
  accept Neltharaku's Tale##10814 |goto Shadowmoon Valley 61.31,59.98
step
  talk Akama##21700
  turnin An Artifact From the Past##10947 |goto Shadowmoon Valley 58.11,48.18
step
  talk A'dal##18481
  turnin Akama's Promise##10708 |goto Shattrath City 53.99,44.75 |tip {turninat}Shattrath City
step
  talk Akama##21700
  accept The Hostage Soul##10948 |goto Shadowmoon Valley 58.11,48.18
step
  talk David Wayne##21465
  turnin The Hermit Smith##10663 |goto Terokkar Forest 77.58,38.72 |tip {turninat}Terokkar Forest
step
  note Exarch Onaala wants you to return to the Ruins of Karabor and find a way to unleash Azaloth on his captors.
  kill Azaloth Credit Marker##21892 |q 10637 |goto Shadowmoon Valley 69.84,51.42
step
  note Vindicator Aluumen wants you to slay 8 Shadowmoon Slayers, 8 Shadowmoon Chosen and 4 Shadowmoon Darkweavers.
  kill Shadowmoon Slayer##22082 |q 10816 |goto Shadowmoon Valley 69.23,38.7
step
  talk Exarch Onaala##21860
  turnin A Necessary Distraction##10637 |goto Shadowmoon Valley 61.2,29.23
step
  talk Vindicator Aluumen##21822
  turnin Reclaiming Holy Grounds##10816 |goto Shadowmoon Valley 61.17,29.14
step
  talk Anchorite Ceyla##21402
  turnin Oronu the Elder##10571 |goto Shadowmoon Valley 62.58,28.38
step
  talk Anchorite Ceyla##21402
  accept The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.58,28.38
step
  note Obtain the four medallion fragments from Haalum, Eykenen, Lakaan and Uylaru and return to Anchorite Ceyla at the Altar of Sha'tar in Shadowmoon Valley.
  collect Eykenen's Medallion Fragment##30692 |q 10574 |goto Shadowmoon Valley 51.18,52.82 |tip {dropsfrom}Eykenen
step
  talk Exarch Onaala##21860
  accept Altruis##10640 |goto Shadowmoon Valley 61.2,29.23
step
  talk Altruis the Sufferer##18417
  turnin Altruis##10640 |goto Nagrand 27.34,43.09 |tip {turninat}Nagrand
step
  talk Altruis the Sufferer##18417
  turnin Altruis##10689 |goto Nagrand 27.34,43.09 |tip {turninat}Nagrand
step
  talk Ancient Shadowmoon Spirit##21797
  turnin Teron Gorefiend - Lore and Legend##10633 |goto Shadowmoon Valley 58.23,70.79
step
  talk Researcher Tiorus##21770
  turnin Felspine the Greater##10673 |goto Shadowmoon Valley 30.07,28.26
step
  talk Blood Guard Gulmok##21359
  turnin Setting Up the Bomb##10597 |goto Shadowmoon Valley 30.45,32.4
step
  talk Blood Guard Gulmok##21359
  accept Blast the Infernals!##10598 |goto Shadowmoon Valley 30.45,32.4
step
  talk Parshah##22024
  turnin The Rod of Lianthe##10778 |goto Shadowmoon Valley 35.42,42.15
step
  talk Parshah##22024
  accept Sketh'lon Feathers##10780 |goto Shadowmoon Valley 35.42,42.15
step
  note Gather 8 Sketh'lon Feathers and bring them to Parshah in the Magma Fields.
  collect 8 Sketh'lon Feather##31324 |q 10780 |goto Shadowmoon Valley 43.75,57.52
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Air##10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  accept Oronok Torn-heart##10513 |goto Shadowmoon Valley 42.19,45.06
step
  talk Borak, Son of Oronok##21293
  turnin What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  accept The Cipher of Damnation - Borak's Charge##10578 |goto Shadowmoon Valley 47.56,57.18
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover the Third Part of the Cipher of Damnation from Ruul the Darkener.
  kill Ruul the Darkener##21315 |goto Shadowmoon Valley 57.28,50.7 |elite
  collect Third Fragment of the Cipher of Damnation##30645 |q 10578 |goto Shadowmoon Valley 57.28,50.7
step
  talk Arcanist Thelis##21955
  turnin The Ashtongue Corruptors##10685 |goto Shadowmoon Valley 56.25,59.6
step
  talk Neltharaku##21657
  turnin Neltharaku's Tale##10814 |goto Shadowmoon Valley 61.31,59.98
step
  talk Arcanist Thelis##21955
  accept The Warden's Cage##10686 |goto Shadowmoon Valley 56.25,59.6
step
  talk Neltharaku##21657
  accept Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley 61.31,59.98
step
  talk Sanoru##21826
  turnin The Warden's Cage##10686 |goto Shadowmoon Valley 57.33,49.58
step
  talk A'dal##18481
  turnin The Hostage Soul##10948 |goto Shattrath City 53.99,44.75 |tip {turninat}Shattrath City
step
  talk Sanoru##21826
  accept Proof of Allegiance##10622 |goto Shadowmoon Valley 57.33,49.58
step
  note Slay Zandras at the Warden's Cage in Shadowmoon Valley and return to Sanoru.
  kill Zandras##21827 |q 10622 |goto Shadowmoon Valley 58.03,49.13
step
  talk Anchorite Ceyla##21402
  turnin The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.58,28.38
step
  talk Anchorite Ceyla##21402
  accept The Warden's Cage##10575 |goto Shadowmoon Valley 62.58,28.38
step
  talk Oronok Torn-heart##21183
  turnin Oronok Torn-heart##10513 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept I Was A Lot Of Things...##10514 |goto Shadowmoon Valley 53.95,23.52
step
  note Oronok Torn-heart at Oronok's Farm in Shadowmoon Valley wants you to recover 10 Shadowmoon Tubers from the Shattered Plains.
  collect Shadowmoon Tuber##30356 |q 10514 |goto Shadowmoon Valley 53.95,23.52
step
  note Use the Fel Bomb while standing on the green glyph in Legion Hold to destroy the infernals, then report to Blood Guard Gulmok at Shadowmoon Village.
  kill Invis Legion Hold Glyph##21512 |q 10598 |goto Shadowmoon Valley 22.65,39.88
step
  talk Blood Guard Gulmok##21359
  turnin Blast the Infernals!##10598 |goto Shadowmoon Valley 30.45,32.4
step
  talk Blood Guard Gulmok##21359
  accept The Deathforge##10599 |goto Shadowmoon Valley 30.45,32.4
step
  talk Parshah##22024
  turnin Sketh'lon Feathers##10780 |goto Shadowmoon Valley 35.42,42.15
step
  talk Scout Zagran##21475
  turnin The Deathforge##10599 |goto Shadowmoon Valley 38.59,38.18
step
  talk Scout Zagran##21475
  accept Minions of the Shadow Council##10600 |goto Shadowmoon Valley 38.59,38.18
step
  talk Parshah##22024
  accept Imbuing the Headpiece##10782 |goto Shadowmoon Valley 35.42,42.15
step
  note Equip the Unfinished Headpiece, travel to the Altar of Damnation, and use it while standing near Gul'dan. When the headpiece is energized, return to Parshah in the Magma Fields.
  collect Energized Headpiece##31365 |q 10782 |goto Shadowmoon Valley 35.42,42.15
step
  note Scout Zagran at Slag Watch wants you to kill 10 Deathforge Guardians and 5 Deathforge Summoners.
  kill Deathforge Guardian##20878 |q 10600 |goto Shadowmoon Valley 39.4,39.26
step
  talk Borak, Son of Oronok##21293
  turnin The Cipher of Damnation - Borak's Charge##10578 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  accept The Cipher of Damnation - The Third Fragment Recovered##10579 |goto Shadowmoon Valley 47.56,57.18
step
  talk Neltharaku##21657
  turnin Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  accept To Netherwing Ledge!##10837 |goto Shadowmoon Valley 61.31,59.98
step
  note Neltharaku, flying high above Netherwing Fields in Shadowmoon Valley, wants you to collect 12 Nethervine Crystals from Netherwing Ledge.
  collect 12 Nethervine Crystal##31504 |q 10837 |goto Shadowmoon Valley 70.78,83.14
step
  talk Sanoru##21826
  turnin The Warden's Cage##10575 |goto Shadowmoon Valley 57.33,49.58
step
  talk Sanoru##21826
  turnin Proof of Allegiance##10622 |goto Shadowmoon Valley 57.33,49.58
step
  talk Sanoru##21826
  accept Akama##10628 |goto Shadowmoon Valley 57.33,49.58
step
  talk Oronok Torn-heart##21183
  turnin I Was A Lot Of Things...##10514 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The Third Fragment Recovered##10579 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept A Lesson Learned##10515 |goto Shadowmoon Valley 53.95,23.52
step
  note Oronok Torn-heart at Oronok's Farm in Shadowmoon Valley wants you to destroy 10 Ravenous Flayer Eggs on the Shattered Plains.
  collect Ravenous Flayer Egg##184684 |q 10515 |goto Shadowmoon Valley 56.78,16.14
step
  talk Parshah##22024
  turnin Imbuing the Headpiece##10782 |goto Shadowmoon Valley 35.42,42.15
step
  talk Scout Zagran##21475
  turnin Minions of the Shadow Council##10600 |goto Shadowmoon Valley 38.59,38.18
step
  talk Scout Zagran##21475
  accept The Fate of Kagrosh##10601 |goto Shadowmoon Valley 38.59,38.18
step
  note Scout Zagran at Slag Watch wants you to search the Deathforge for Kagrosh and recover Kagrosh's Pack.
  kill Kagrosh##21725 |goto Shadowmoon Valley 36.05,40.18
  collect Kagrosh's Pack##30659 |q 10601 |goto Shadowmoon Valley 36.05,40.18
step
  talk Scout Zagran##21475
  accept The Summoning Chamber##10602 |goto Shadowmoon Valley 38.59,38.18
step
  note Obtain an Elemental Displacer from a Deathforge Smith or Deathforge Tinkerer and use it to disrupt the ritual in the summoning chamber. Report to Scout Zagran at Slag Watch when you've completed your task.
  kill Infernal Oversoul##21735 |q 10602
step
  talk Parshah##22024
  accept Thwart the Dark Conclave##10808 |goto Shadowmoon Valley 35.42,42.15
step
  note Slay the Dark Conclave Ritualists and use the Staff of Parshah to end the Dark Conclave's summoning ritual, then return to Parshah in the Magma Fields.
  kill Summoned Old God##22137 |q 10808 |goto Shadowmoon Valley 40.36,61.21 |elite
step
  talk Neltharaku##21657
  turnin To Netherwing Ledge!##10837 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  accept The Force of Neltharaku##10854 |goto Shadowmoon Valley 61.31,59.98
step
  note Neltharaku, flying high above Netherwing Fields in Shadowmoon Valley, wants you to free 5 Enslaved Netherwing Drakes.
  get The Force of Neltharaku |q 10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Akama##21700
  turnin Akama##10628 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept Seer Udalo##10705 |goto Shadowmoon Valley 58.11,48.18
step
  talk Oronok Torn-heart##21183
  turnin A Lesson Learned##10515 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley 53.95,23.52
step
  talk Parshah##22024
  turnin Thwart the Dark Conclave##10808 |goto Shadowmoon Valley 35.42,42.15
step
  talk Scout Zagran##21475
  turnin The Fate of Kagrosh##10601 |goto Shadowmoon Valley 38.59,38.18
step
  talk Scout Zagran##21475
  turnin The Summoning Chamber##10602 |goto Shadowmoon Valley 38.59,38.18
step
  talk Scout Zagran##21475
  accept Bring Down the Warbringer!##10603 |goto Shadowmoon Valley 38.59,38.18
step
  note Defeat Warbringer Razuun, recover Razuun's Orders, and report to Blood Guard Gulmok at Shadowmoon Village.
  kill Warbringer Razuun##21287 |q 10603 |goto Shadowmoon Valley 38.95,46.89
step
  talk Neltharaku##21657
  turnin The Force of Neltharaku##10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  accept Karynaku##10858 |goto Shadowmoon Valley 61.31,59.98
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept Grom'tor, Son of Oronok##10521 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept Ar'tor, Son of Oronok##10527 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept Borak, Son of Oronok##10546 |goto Shadowmoon Valley 53.95,23.52
step
  talk Grom'tor, Son of Oronok##21291
  turnin Grom'tor, Son of Oronok##10521 |goto Shadowmoon Valley 44.62,23.66
step
  talk Grom'tor, Son of Oronok##21291
  accept The Cipher of Damnation - Grom'tor's Charge##10522 |goto Shadowmoon Valley 44.62,23.66
step
  note Grom'tor, Son of Oronok at Coilskar Point in Shadowmoon Valley wants you to recover the First Fragment of the Cipher of Damnation.
  collect First Fragment of the Cipher of Damnation##30428 |q 10522 |goto Shadowmoon Valley 47.92,26.7 |tip {dropsfrom}Coilskar Chest
step
  talk Ar'tor, Son of Oronok##21292
  turnin Ar'tor, Son of Oronok##10527 |goto Shadowmoon Valley 29.63,50.4
step
  talk Ar'tor, Son of Oronok##21292
  accept Demonic Crystal Prisons##10528 |goto Shadowmoon Valley 29.63,50.4
step
  note Seek out and slay Painmistress Gabrissa at Illidari Point and return to the corpse of Ar'tor, Son of Oronok with the Crystalline Key.
  collect Crystalline Key##30442 |q 10528 |goto Shadowmoon Valley 28.3,47.61 |tip {dropsfrom}Painmistress Gabrissa
step
  talk Karynaku##22112
  turnin Karynaku##10858 |goto Shadowmoon Valley 69.86,61.44
step
  talk Karynaku##22112
  accept Zuluhed the Whacked##10866 |goto Shadowmoon Valley 69.86,61.44
step
  note Kill Zuluhed the Whacked and recover Zuluhed's Key. Use Zuluhed's Key on Zuluhed's Chains to free Karynaku.
  collect Zuluhed's Chains##185156 |q 10866 |goto Shadowmoon Valley 69.84,61.29
step
  talk Blood Guard Gulmok##21359
  turnin Bring Down the Warbringer!##10603 |goto Shadowmoon Valley 30.45,32.4
step
  talk Blood Guard Gulmok##21359
  accept Gaining Access##10604 |goto Shadowmoon Valley 30.45,32.4
step
  note Bring a Legion Teleporter Control to Blood Guard Gulmok at Shadowmoon Village. The Mo'arg Weaponsmiths at Legion Hold are known to carry the devices.
  collect Legion Teleporter Control##30695 |q 10604 |goto Shadowmoon Valley 23.53,33.94 |tip {dropsfrom}Mo'arg Weaponsmith
step
  talk Borak, Son of Oronok##21293
  turnin Borak, Son of Oronok##10546 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  accept Of Thistleheads and Eggs...##10547 |goto Shadowmoon Valley 47.56,57.18
step
  note Borak, Son of Oronok at the bridge north of Eclipse Point wants you to find a Rotten Arakkoa Egg and deliver it to Tobias the Filth Gorger in Shattrath City, located in northwest Terokkar Forest.
  collect Rotten Arakkoa Egg##30500 |q 10547 |goto Shadowmoon Valley 44.15,57.51
step
  talk Grom'tor, Son of Oronok##21291
  turnin The Cipher of Damnation - Grom'tor's Charge##10522 |goto Shadowmoon Valley 44.62,23.66
step
  talk Grom'tor, Son of Oronok##21291
  accept The Cipher of Damnation - The First Fragment Recovered##10523 |goto Shadowmoon Valley 44.62,23.66
step
  talk Ar'tor, Son of Oronok##21292
  turnin Demonic Crystal Prisons##10528 |goto Shadowmoon Valley 29.63,50.4
step
  talk Spirit of Ar'tor##21318
  accept Lohn'goron, Bow of the Torn-heart##10537 |goto Shadowmoon Valley 29.53,50.52
step
  note The Spirit of Ar'tor at Illidari Point in Shadowmoon Valley wants you to recover Lohn'goron, Bow of the Torn-heart from the demons of the area.
  collect Lohn'goron, Bow of the Torn-heart##30451 |q 10537 |goto Shadowmoon Valley 31.44,55.67 |tip {dropsfrom}Illidari Dreadbringer, Illidari Painlasher, Illidari Shocktrooper
step
  talk Tobias the Filth Gorger##21411
  turnin Of Thistleheads and Eggs...##10547 |goto Shattrath City 63.95,70.03 |tip {turninat}Shattrath City
step
  talk Karynaku##22112
  turnin Zuluhed the Whacked##10866 |goto Shadowmoon Valley 69.86,61.44
step
  talk Karynaku##22112
  accept Ally of the Netherwing##10870 |goto Shadowmoon Valley 69.86,61.44
step
  talk Udalo##21962
  turnin Seer Udalo##10705
step
  talk Blood Guard Gulmok##21359
  turnin Gaining Access##10604 |goto Shadowmoon Valley 30.45,32.4
step
  talk Mordenai##22113
  turnin Ally of the Netherwing##10870 |goto Shadowmoon Valley 59.19,58.69
step
  talk Blood Guard Gulmok##21359
  accept Invasion Point: Cataclysm##10767 |goto Shadowmoon Valley 30.45,32.4
step
  talk Mordenai##22113
  accept Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley 59.19,58.69
step
  talk Nakansi##21789
  turnin Invasion Point: Cataclysm##10767 |goto Shadowmoon Valley 27.49,21.21
step
  talk Mordenai##22113
  turnin Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley 59.19,58.69
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The First Fragment Recovered##10523 |goto Shadowmoon Valley 53.95,23.52
step
  talk Spirit of Ar'tor##21318
  turnin Lohn'goron, Bow of the Torn-heart##10537 |goto Shadowmoon Valley 29.53,50.52
step
  talk Nakansi##21789
  accept The Art of Fel Reaver Maintenance##10611 |goto Shadowmoon Valley 27.49,21.21
step
  talk Mordenai##22113
  accept In Service of the Illidari##11013 |goto Shadowmoon Valley 59.19,58.69
step
  talk Nakansi##21789
  turnin The Art of Fel Reaver Maintenance##10611 |goto Shadowmoon Valley 27.49,21.21
step
  talk Overlord Mor'ghor##23139
  turnin In Service of the Illidari##11013 |goto Shadowmoon Valley 66.3,85.56
step
  talk Nakansi##21789
  accept The Fel and the Furious##10613 |goto Shadowmoon Valley 27.49,21.21
step
  talk Spirit of Ar'tor##21318
  accept The Cipher of Damnation - Ar'tor's Charge##10540 |goto Shadowmoon Valley 29.53,50.52
step
  talk Overlord Mor'ghor##23139
  accept Enter the Taskmaster##11014 |goto Shadowmoon Valley 66.3,85.56
step
  talk Nakansi##21789
  turnin The Fel and the Furious##10613 |goto Shadowmoon Valley 27.49,21.21
step
  talk Spirit of Ar'tor##21318
  turnin The Cipher of Damnation - Ar'tor's Charge##10540 |goto Shadowmoon Valley 29.53,50.52
step
  talk Taskmaster Varkule Dragonbreath##23140
  turnin Enter the Taskmaster##11014 |goto Shadowmoon Valley 66.12,86.36
step
  talk Spirit of Ar'tor##21318
  accept The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley 29.53,50.52
step
  talk Nakansi##21789
  accept News of Victory##10745 |goto Shadowmoon Valley 27.49,21.21
step
  talk Yarzill the Merc##23141
  accept Your Friend On The Inside##11019 |goto Shadowmoon Valley 66.0,86.47
step
  kill Arvoar the Rapacious##23267 |goto Shadowmoon Valley 74.19,86.39 |elite |tip Loot the quest item here — it starts the quest.
  accept A Job Unfinished...##11041 |goto Shadowmoon Valley 74.19,86.39
step
  note Slay 10 Overmine Flayers and Barash the Den Mother. Return to Overlord Mor'ghor at the Dragonmaw Base Camp should you succeed.
  kill Overmine Flayer##23264 |q 11041 |goto Shadowmoon Valley 72.59,85.62
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley 53.95,23.52
step
  talk Overlord Or'barokh##21769
  turnin News of Victory##10745 |goto Shadowmoon Valley 28.39,26.53
step
  talk Yarzill the Merc##23141
  turnin Your Friend On The Inside##11019 |goto Shadowmoon Valley 66.0,86.47
step
  talk Overlord Mor'ghor##23139
  turnin A Job Unfinished...##11041 |goto Shadowmoon Valley 66.3,85.56
step
  talk Oronok Torn-heart##21183
  accept The Cipher of Damnation##10588 |goto Shadowmoon Valley 53.95,23.52
step
  talk Yarzill the Merc##23141
  accept The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley 66.0,86.47
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Rise, Overseer!##11053 |goto Shadowmoon Valley 66.12,86.36
step
  talk Earthmender Torlok##21024
  turnin The Cipher of Damnation##10588 |goto Shadowmoon Valley 42.19,45.06
step
  talk Yarzill the Merc##23141
  turnin The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley 66.0,86.47
step
  talk Overlord Mor'ghor##23139
  turnin Rise, Overseer!##11053 |goto Shadowmoon Valley 66.3,85.56
step
  talk Chief Overseer Mudlump##23291
  accept Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley 66.86,86.11
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept The Netherwing Mines##11075 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.12,86.36
step
  talk Chief Overseer Mudlump##23291
  turnin Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley 66.86,86.11
step
  talk Mistress of the Mines##23149
  turnin The Netherwing Mines##11075 |goto Shadowmoon Valley 65.43,90.13
step
  talk Overlord Mor'ghor##23139
  turnin Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.3,85.56
step
  talk Ronag the Slave Driver##23166
  accept Crazed and Confused##11083 |goto Shadowmoon Valley 71.63,87.79
step
  note Ronag the Slave Driver in the Netherwing Mines of Shadowmoon Valley wants you to slay the Crazed Murkblood Foreman and 5 Crazed Murkblood Miners.
  kill Crazed Murkblood Foreman##23305 |q 11083 |goto Shadowmoon Valley 74.27,89.74
step
  talk Illidari Lord Balthas##23427
  accept The Soul Cannon of Reth'hedron##11089 |goto Shadowmoon Valley 66.3,85.7
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Hail, Commander!##11092 |goto Shadowmoon Valley 66.12,86.36
step
  talk Ronag the Slave Driver##23166
  turnin Crazed and Confused##11083 |goto Shadowmoon Valley 71.63,87.79
step
  talk Illidari Lord Balthas##23427
  turnin The Soul Cannon of Reth'hedron##11089 |goto Shadowmoon Valley 66.3,85.7
step
  talk Overlord Mor'ghor##23139
  turnin Hail, Commander!##11092 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  accept Kill Them All!##11094 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  accept Kill Them All!##11099 |goto Shadowmoon Valley 66.3,85.56
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
  note {travel}Deadwind Pass
  goto Deadwind Pass 47.28,75.21
]])
