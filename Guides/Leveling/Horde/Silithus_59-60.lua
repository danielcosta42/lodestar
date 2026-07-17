-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Silithus (59-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Eastern Plaguelands (60-60)",
}, [[
step
  note {fp}Runk Windtamer
  goto Silithus 48.68,36.67 |tip {vendor}
step
  talk Layo Starstrike##13220
  accept The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  talk Beetix Ficklespragg##15189
  accept Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
  collect 8 Stonelash Scorpid Stinger##20373 |q 8277 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid
step
  talk Windcaller Proudhorn##15191
  accept Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  click Wanted Poster: Deathclasp##180448
  accept Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 51.35,38.27
step
  note Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
  kill Deathclasp##15196 |goto Silithus 45.07,92.31 |elite
  collect Deathclasp's Pincer##20385 |q 8283 |goto Silithus 45.07,92.31
step
  talk Geologist Larksbane##15183
  accept The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to collect 8 Twilight Tablet Fragments.
  collect 8 Twilight Tablet Fragment##20378 |q 8284 |goto Silithus 28.49,26.89 |tip {dropsfrom}Whirling Invader, Twilight Tablet Fragment
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Calandrath##15174
  accept Desert Recipe##8307 |goto Silithus 51.89,39.16
step
  kill Hive'Ashi Stinger##11698 |goto Silithus 48.5,41.14 |tip Loot the quest item here — it starts the quest.
  accept Brann Bronzebeard's Lost Letter##8308 |goto Silithus 48.5,41.14
step
  talk Bor Wildmane##15306
  accept Secret Communication##8318 |goto Silithus 48.57,37.78
step
  note Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
  collect 10 Encrypted Twilight Text##20404 |q 8318 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  talk Huum Wildmane##15270
  accept Twilight Geolords##8320 |goto Silithus 48.62,37.87
step
  talk Huum Wildmane##15270
  accept Aurel Goldleaf##8331 |goto Silithus 48.62,37.87
step
  talk Huum Wildmane##15270
  accept Goldleaf's Discovery##8343 |goto Silithus 48.62,37.87
step
  talk Bor Wildmane##15306
  accept Abyssal Contacts##8361 |goto Silithus 48.57,37.78
step
  note Bor Wildmane at Cenarion Hold in Silithus wants you to destroy an Abyssal Templar and bring him an Abyssal Crest as proof of the deed.
  collect Abyssal Crest##20513 |q 8361 |goto Silithus 48.57,37.78 |tip {dropsfrom}Crimson Templar, Azure Templar, Hoary Templar
step
  only Warrior
  talk Windcaller Yessendra##15498
  accept Signet of Unyielding Strength##8556 |goto Silithus 52.05,38.16
step
  only Warrior
  note Bring 1 Qiraji Magisterial Ring, 2 Lambent Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8556 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Warrior
  talk Keyl Swiftclaw##15500
  accept Drape of Unyielding Strength##8557 |goto Silithus 51.76,39.54
step
  only Warrior
  note Bring 1 Qiraji Martial Drape, 2 Onyx Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8557 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Warrior
  talk Warden Haro##15499
  accept Sickle of Unyielding Strength##8558 |goto Silithus 51.14,38.94
step
  only Warrior
  note Bring 1 Qiraji Spiked Hilt, 2 Alabaster Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8558 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Priest
  talk Keyl Swiftclaw##15500
  accept Shroud of Infinite Wisdom##8689 |goto Silithus 51.76,39.54
step
  only Priest
  note Bring 1 Qiraji Martial Drape, 2 Jasper Idols, 5 Gold Scarabs and 5 Clay Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8689 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Shaman
  talk Keyl Swiftclaw##15500
  accept Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  only Shaman
  note Bring 1 Qiraji Regal Drape, 2 Obsidian Idols, 5 Clay Scarabs and 5 Gold Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8690 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Mage
  talk Keyl Swiftclaw##15500
  accept Drape of Vaulted Secrets##8691 |goto Silithus 51.76,39.54
step
  only Mage
  note Bring 1 Qiraji Martial Drape, 2 Alabaster Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8691 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Druid
  talk Keyl Swiftclaw##15500
  accept Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Druid
  note Bring 1 Qiraji Regal Drape, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8692 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Rogue
  talk Keyl Swiftclaw##15500
  accept Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Rogue
  note Bring 1 Qiraji Martial Drape, 2 Azure Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8693 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Warlock
  talk Keyl Swiftclaw##15500
  accept Shroud of Unspoken Names##8694 |goto Silithus 51.76,39.54
step
  only Warlock
  note Bring 1 Qiraji Regal Drape, 2 Amber Idols, 5 Ivory Scarabs and 5 Bronze Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8694 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Paladin
  talk Keyl Swiftclaw##15500
  accept Cape of Eternal Justice##8695 |goto Silithus 51.76,39.54
step
  only Paladin
  note Bring 1 Qiraji Regal Drape, 2 Obsidian Idols, 5 Gold Scarabs and 5 Clay Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8695 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Hunter
  talk Keyl Swiftclaw##15500
  accept Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only Hunter
  note Bring 1 Qiraji Regal Drape, 2 Lambent Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8696 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Priest
  talk Windcaller Yessendra##15498
  accept Ring of Infinite Wisdom##8697 |goto Silithus 52.05,38.16
step
  only Priest
  note Bring 1 Qiraji Ceremonial Ring, 2 Obsidian Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8697 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Shaman
  talk Windcaller Yessendra##15498
  accept Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Shaman
  note Bring 1 Qiraji Magisterial Ring, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8698 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Mage
  talk Windcaller Yessendra##15498
  accept Band of Vaulted Secrets##8699 |goto Silithus 52.05,38.16
step
  only Mage
  note Bring 1 Qiraji Magisterial Ring, 2 Azure Idols, 5 Gold Scarabs and 5 Clay Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8699 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Druid
  talk Windcaller Yessendra##15498
  accept Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Druid
  note Bring 1 Qiraji Magisterial Ring, 2 Alabaster Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8700 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Rogue
  talk Windcaller Yessendra##15498
  accept Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  only Rogue
  note Bring 1 Qiraji Ceremonial Ring, 2 Onyx Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8701 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Warlock
  talk Windcaller Yessendra##15498
  accept Ring of Unspoken Names##8702 |goto Silithus 52.05,38.16
step
  only Warlock
  note Bring 1 Qiraji Ceremonial Ring, 2 Jasper Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8702 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Paladin
  talk Windcaller Yessendra##15498
  accept Ring of Eternal Justice##8703 |goto Silithus 52.05,38.16
step
  only Paladin
  note Bring 1 Qiraji Magisterial Ring, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8703 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Hunter
  talk Windcaller Yessendra##15498
  accept Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Hunter
  note Bring 1 Qiraji Ceremonial Ring, 2 Amber Idols, 5 Gold Scarabs and 5 Clay Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8704 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Priest
  talk Warden Haro##15499
  accept Gavel of Infinite Wisdom##8705 |goto Silithus 51.14,38.94
step
  only Priest
  note Bring 1 Qiraji Ornate Hilt, 2 Lambent Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8705 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Shaman
  talk Warden Haro##15499
  accept Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  only Shaman
  note Bring 1 Qiraji Spiked Hilt, 2 Amber Idols, 5 Ivory Scarabs and 5 Bronze Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8706 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Mage
  talk Warden Haro##15499
  accept Blade of Vaulted Secrets##8707 |goto Silithus 51.14,38.94
step
  only Mage
  note Bring 1 Qiraji Ornate Hilt, 2 Obsidian Idols, 5 Silver Scarabs and 5 Bone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8707 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Druid
  talk Warden Haro##15499
  accept Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Druid
  note Bring 1 Qiraji Ornate Hilt, 2 Jasper Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8708 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Rogue
  talk Warden Haro##15499
  accept Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Rogue
  note Bring 1 Qiraji Spiked Hilt, 2 Vermillion Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8709 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Warlock
  talk Warden Haro##15499
  accept Kris of Unspoken Names##8710 |goto Silithus 51.14,38.94
step
  only Warlock
  note Bring 1 Qiraji Ornate Hilt, 2 Onyx Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8710 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Paladin
  talk Warden Haro##15499
  accept Blade of Eternal Justice##8711 |goto Silithus 51.14,38.94
step
  only Paladin
  note Bring 1 Qiraji Spiked Hilt, 2 Amber Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8711 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Hunter
  talk Warden Haro##15499
  accept Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  only Hunter
  note Bring 1 Qiraji Spiked Hilt, 2 Azure Idols, 5 Silver Scarabs and 5 Bone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8712 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  talk Elder Bladesing##15599
  accept Bladesing the Elder##8719 |goto Silithus 48.96,37.66
step
  talk Windcaller Kaldon##15540
  accept Cenarion Battlegear##8800 |goto Silithus 49.98,36.35
step
  talk Colossus Researcher Nestor##15798
  accept Secrets of the Colossus - Ashi##8857 |goto Silithus 49.5,37.27
step
  talk Colossus Researcher Eazel##15799
  accept Secrets of the Colossus - Regal##8858 |goto Silithus 49.55,37.31
step
  talk Colossus Researcher Sophia##15797
  accept Secrets of the Colossus - Zora##8859 |goto Silithus 49.49,37.36
step
  talk Dirk Thunderwood##16091
  accept The Perfect Poison##9023 |goto Silithus 52.13,39.14
step
  note Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac.
  collect Venoxis's Venom Sac##22216 |q 9023 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}High Priest Venoxis
step
  talk Aurel Goldleaf##15282
  accept A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  note Aurel Goldleaf at Cenarion Hold in Silithus wants you to bring her 1 Abyssal Scepter. You must also be Honored with the Cenarion Circle.
  collect Abyssal Scepter##20515 |q 9248 |goto Silithus 51.96,38.16 |tip {dropsfrom}Prince Skaldrenox, High Marshal Whirlaxis, Baron Kazum
step
  talk Scout Bloodfist##17081
  accept Report to General Kirika##9416 |goto Silithus 48.95,36.69
step
  note Kill 10 Twilight Geolords, then return to Huum Wildmane in Cenarion Hold.
  kill Twilight Geolord##11881 |q 8320 |goto Silithus 26.97,43.89
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to kill 15 Dredge Strikers.
  kill Dredge Striker##11740 |q 8280 |goto Silithus 56.37,29.6
step
  talk General Kirika##17079
  turnin Report to General Kirika##9416 |goto Silithus 50.75,69.54
step
  talk General Kirika##17079
  accept Scouring the Desert##9422 |goto Silithus 50.75,69.54
step
  note Find and deliver Silithyst to the Silithyst Extractor then speak with General Kirika at the Horde encampment near Hive'Regal.
  kill Silithus Dust Turnin Quest Doodad Horde##18199 |q 9422 |goto Silithus 50.93,69.33
step
  talk Lord Maxwell Tyrosus##11034
  turnin Secrets of the Colossus - Zora##8859 |goto Eastern Plaguelands 81.74,57.96 |tip {turninat}Eastern Plaguelands
step
  note Free the spirits of 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village, and then return to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  kill Tortured Druid##12178 |q 1125 |goto Silithus 62.65,52.76
step
  talk Rutgar Glyphshaper##15170
  turnin Brann Bronzebeard's Lost Letter##8308 |goto Silithus 41.28,88.45
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  kill Frankal Invisible Trigger##15221 |q 8304 |goto Silithus 40.62,89.18
step
  talk Oglethorpe Obnoticus##7406
  turnin Secrets of the Colossus - Ashi##8857 |goto Stranglethorn Vale 28.36,76.35 |tip {turninat}Stranglethorn Vale
step
  talk Jonathan the Revelator##15693
  accept Treasure of the Timeless One##8745 |goto Silithus 25.94,90.96
step
  talk Highlord Demitrian##14347
  accept Thunderaan the Windseeker##7786 |goto Silithus 21.71,8.57
step
  note To free Thunderaan the Windseeker from his prison, you must present the right and left halves of the Bindings of the Windseeker, 10 bars of Elementium, and the Essence of the Firelord to Highlord Demitrian in Silithus.
  collect Elementium Bar##17771 |q 7786 |goto Silithus 21.71,8.57
step
  talk Elder Primestone##15570
  accept Primestone the Elder##8654 |goto Silithus 21.14,10.51
step
  talk Layo Starstrike##13220
  turnin The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  talk Layo Starstrike##13220
  accept Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  note Scale the tower of Southwind Village and locate a means to stir the silithid hive into activity. Bring back anything unusual you may uncover when doing so to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  collect Encrusted Silithid Object##17346 |q 1126 |goto Silithus 81.87,18.93 |tip {dropsfrom}Hive'Ashi Ambusher
step
  talk Huum Wildmane##15270
  turnin Twilight Geolords##8320 |goto Silithus 48.62,37.87
step
  only Hunter
  talk Windcaller Yessendra##15498
  turnin Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Priest
  talk Warden Haro##15499
  turnin Gavel of Infinite Wisdom##8705 |goto Silithus 51.14,38.94
step
  only Shaman
  talk Warden Haro##15499
  turnin Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  only Mage
  talk Warden Haro##15499
  turnin Blade of Vaulted Secrets##8707 |goto Silithus 51.14,38.94
step
  only Druid
  talk Warden Haro##15499
  turnin Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Windcaller Yessendra##15498
  turnin Ring of Unspoken Names##8702 |goto Silithus 52.05,38.16
step
  only Rogue
  talk Warden Haro##15499
  turnin Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Warden Haro##15499
  turnin Kris of Unspoken Names##8710 |goto Silithus 51.14,38.94
step
  only Paladin
  talk Warden Haro##15499
  turnin Blade of Eternal Justice##8711 |goto Silithus 51.14,38.94
step
  only Hunter
  talk Warden Haro##15499
  turnin Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  talk Aurel Goldleaf##15282
  turnin Aurel Goldleaf##8331 |goto Silithus 51.96,38.16
step
  talk Elder Bladesing##15599
  turnin Bladesing the Elder##8719 |goto Silithus 48.96,37.66
step
  talk Aurel Goldleaf##15282
  turnin Goldleaf's Discovery##8343 |goto Silithus 51.96,38.16
step
  talk Overseer Oilfist##14625
  turnin Secrets of the Colossus - Regal##8858 |goto Searing Gorge 38.12,26.97 |tip {turninat}Searing Gorge
step
  talk Aurel Goldleaf##15282
  turnin A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  talk Bor Wildmane##15306
  turnin Abyssal Contacts##8361 |goto Silithus 48.57,37.78
step
  talk Dirk Thunderwood##16091
  turnin The Perfect Poison##9023 |goto Silithus 52.13,39.14
step
  talk Beetix Ficklespragg##15189
  turnin Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  talk Windcaller Proudhorn##15191
  turnin Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  talk Vish Kozus##15182
  turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 50.75,33.65
step
  talk Geologist Larksbane##15183
  turnin The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Vargus##15176
  turnin Cenarion Battlegear##8800 |goto Silithus 51.23,38.86
step
  only Paladin
  talk Keyl Swiftclaw##15500
  turnin Cape of Eternal Justice##8695 |goto Silithus 51.76,39.54
step
  only Hunter
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only Warrior
  talk Windcaller Yessendra##15498
  turnin Signet of Unyielding Strength##8556 |goto Silithus 52.05,38.16
step
  only Warrior
  talk Keyl Swiftclaw##15500
  turnin Drape of Unyielding Strength##8557 |goto Silithus 51.76,39.54
step
  only Warrior
  talk Warden Haro##15499
  turnin Sickle of Unyielding Strength##8558 |goto Silithus 51.14,38.94
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Priest
  talk Keyl Swiftclaw##15500
  turnin Shroud of Infinite Wisdom##8689 |goto Silithus 51.76,39.54
step
  only Shaman
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  turnin Desert Recipe##8307 |goto Silithus 37.94,45.31
step
  only Mage
  talk Keyl Swiftclaw##15500
  turnin Drape of Vaulted Secrets##8691 |goto Silithus 51.76,39.54
step
  only Druid
  talk Keyl Swiftclaw##15500
  turnin Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Rogue
  talk Keyl Swiftclaw##15500
  turnin Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Warlock
  talk Keyl Swiftclaw##15500
  turnin Shroud of Unspoken Names##8694 |goto Silithus 51.76,39.54
step
  only Priest
  talk Windcaller Yessendra##15498
  turnin Ring of Infinite Wisdom##8697 |goto Silithus 52.05,38.16
step
  only Shaman
  talk Windcaller Yessendra##15498
  turnin Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Mage
  talk Windcaller Yessendra##15498
  turnin Band of Vaulted Secrets##8699 |goto Silithus 52.05,38.16
step
  only Druid
  talk Windcaller Yessendra##15498
  turnin Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Rogue
  talk Windcaller Yessendra##15498
  turnin Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  talk Bor Wildmane##15306
  turnin Secret Communication##8318 |goto Silithus 48.57,37.78
step
  only Paladin
  talk Windcaller Yessendra##15498
  turnin Ring of Eternal Justice##8703 |goto Silithus 52.05,38.16
step
  talk Beetix Ficklespragg##15189
  accept Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
  collect 3 Stonelash Flayer Stinger##20375 |q 8278 |goto Silithus 38.04,77.94 |tip {dropsfrom}Stonelash Flayer
step
  talk Windcaller Proudhorn##15191
  accept Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  talk Geologist Larksbane##15183
  accept The Deserter##8285 |goto Silithus 49.67,37.46
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  collect Head of the Broodlord Lashlayer##20383 |q 8288 |goto Blackwing Lair - Raid -1,-1 |raid |tip {dropsfrom}Broodlord Lashlayer
step
  talk Commander Mar'alith##15181
  accept Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.
  kill Mistress Natalia Mar'alith##15215 |q 8306
step
  click Sandy Cookbook##180503
  accept Sharing the Knowledge##8313 |goto Silithus 37.94,45.31
step
  talk Huum Wildmane##15270
  accept Vyral the Vile##8321 |goto Silithus 48.62,37.87
step
  note Bring Vyral's Signet Ring to Huum Wildmane in Cenarion Hold.
  collect Vyral's Signet Ring##20466 |q 8321 |goto Silithus 72.39,15.58 |tip {dropsfrom}Vyral the Vile
step
  talk Aurel Goldleaf##15282
  accept Dukes of the Council##8332 |goto Silithus 51.96,38.16
step
  note Bring 1 Large Brilliant Shard and 3 Abyssal Crests to Aurel Goldleaf in Cenarion Hold.
  collect 1 Large Brilliant Shard##14344 |q 8332 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  accept Lords of the Council##8341 |goto Silithus 51.96,38.16
step
  note Bring 5 Large Brilliant Shards and 3 Abyssal Signets to Aurel Goldleaf in Cenarion Hold.
  collect 5 Large Brilliant Shard##14344 |q 8341 |goto Silithus 51.96,38.16
step
  talk Vargus##15176
  accept Volunteer's Battlegear##8548 |goto Silithus 51.23,38.86
step
  note Bring 5 Cenarion Combat Badges, 3 Cenarion Logistics Badges and 7 Cenarion Tactical Badges to Vargus at Cenarion Hold in Silithus. You must also attain Friendly reputation with Cenarion Circle to be able to complete this quest.
  collect 5 Cenarion Combat Badge##20802 |q 8548 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  accept Veteran's Battlegear##8572 |goto Silithus 51.23,38.86
step
  note Bring 7 Cenarion Combat Badges, 4 Cenarion Logistics Badges and 4 Cenarion Tactical Badges to Vargus at Cenarion Hold in Silithus. You must also attain Honored reputation with Cenarion Circle to be able to complete this quest.
  collect 7 Cenarion Combat Badge##20802 |q 8572 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  accept Champion's Battlegear##8573 |goto Silithus 51.23,38.86
step
  note Bring 15 Cenarion Combat Badges, 20 Cenarion Logistics Badges, 20 Cenarion Tactical Badges and 1 Mark of Cenarius to Vargus at Cenarion Hold in Silithus. You must also attain Exalted reputation with Cenarion Circle to be able to complete this quest.
  collect 15 Cenarion Combat Badge##20802 |q 8573 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  accept Stalwart's Battlegear##8574 |goto Silithus 51.23,38.86
step
  note Bring 15 Cenarion Combat Badges, 20 Cenarion Logistics Badges, 17 Cenarion Tactical Badges and 1 Mark of Remulos to Vargus at Cenarion Hold in Silithus. You must also attain Revered reputation with Cenarion Circle to be able to complete this quest.
  collect 15 Cenarion Combat Badge##20802 |q 8574 |goto Silithus 51.23,38.86
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to slay 20 Dredge Crushers.
  kill Dredge Crusher##11741 |q 8281 |goto Silithus 37.84,53.47
step
  talk General Kirika##17079
  turnin Scouring the Desert##9422 |goto Silithus 50.75,69.54
step
  talk Hermit Ortell##15194
  turnin The Deserter##8285 |goto Silithus 67.19,69.76
step
  talk Hermit Ortell##15194
  accept The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  note Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
  collect Twilight Lexicon - Chapter 1##20394 |q 8279 |goto Silithus 26.35,36.62 |tip {dropsfrom}Twilight Keeper Mayna
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 48.5,41.14 |tip {dropsfrom}Hive'Ashi Stinger, Hive'Ashi Worker, Hive'Ashi Defender
step
  talk Jonathan the Revelator##15693
  turnin Treasure of the Timeless One##8745 |goto Silithus 25.94,90.96
step
  talk Elder Primestone##15570
  turnin Primestone the Elder##8654 |goto Silithus 21.14,10.51
step
  talk Highlord Demitrian##14347
  turnin Thunderaan the Windseeker##7786 |goto Silithus 21.71,8.57
step
  talk Layo Starstrike##13220
  turnin Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  talk Layo Starstrike##13220
  accept Umber, Archivist##6844 |goto Silithus 81.87,18.93
step
  talk Vargus##15176
  turnin Stalwart's Battlegear##8574 |goto Silithus 51.23,38.86
step
  talk Huum Wildmane##15270
  turnin Vyral the Vile##8321 |goto Silithus 48.62,37.87
step
  talk Aurel Goldleaf##15282
  turnin Dukes of the Council##8332 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  turnin Lords of the Council##8341 |goto Silithus 51.96,38.16
step
  talk Umber##11939
  turnin Umber, Archivist##6844 |goto Moonglade 44.88,35.6 |tip {turninat}Moonglade
step
  talk Beetix Ficklespragg##15189
  turnin Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  talk Windcaller Proudhorn##15191
  turnin Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  talk Baristolth of the Shifting Sands##15180
  turnin Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Vargus##15176
  turnin Volunteer's Battlegear##8548 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  turnin Champion's Battlegear##8573 |goto Silithus 51.23,38.86
step
  talk Vargus##15176
  turnin Veteran's Battlegear##8572 |goto Silithus 51.23,38.86
step
  talk Calandrath##15174
  turnin Sharing the Knowledge##8313 |goto Silithus 51.89,39.16
step
  talk Commander Mar'alith##15181
  turnin Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  talk Noggle Ficklespragg##15190
  accept Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  note Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
  collect Noggle's Satchel##20379 |q 8282 |goto Silithus 44.56,91.38
step
  talk Baristolth of the Shifting Sands##15180
  accept The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  note Collect 200 Silithid Carapace Fragments and return to Baristolth.
  collect 200 Silithid Carapace Fragment##20384 |q 8301 |goto Silithus 48.5,41.14 |tip {dropsfrom}Hive'Ashi Stinger, Hive'Ashi Worker, Hive'Ashi Defender
step
  talk Calandrath##15174
  accept Kitchen Assistance##8317 |goto Silithus 51.89,39.16
step
  note Calandrath at Cenarion Hold needs a batch of 10 Smoked Desert Dumplings.
  collect Smoked Desert Dumplings##20452 |q 8317 |goto Silithus 51.89,39.16
step
  talk Aurel Goldleaf##15282
  accept Bor Wildmane##8349 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  accept Bor Wishes to Speak##8351 |goto Silithus 51.96,38.16
step
  talk Hermit Ortell##15194
  turnin The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  talk Hermit Ortell##15194
  accept A Terrible Purpose##8287 |goto Silithus 67.19,69.76
step
  talk Hermit Ortell##15194
  accept True Believers##8323 |goto Silithus 67.19,69.76
step
  note Hermit Ortell wants you to bring him 10 Encrypted Twilight Texts
  collect Encrypted Twilight Text##20404 |q 8323 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Bor Wildmane##15306
  turnin Bor Wildmane##8349 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  turnin Bor Wishes to Speak##8351 |goto Silithus 48.57,37.78
step
  talk Noggle Ficklespragg##15190
  turnin Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  talk Commander Mar'alith##15181
  turnin A Terrible Purpose##8287 |goto Silithus 49.2,34.18
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Calandrath##15174
  turnin Kitchen Assistance##8317 |goto Silithus 51.89,39.16
step
  talk Baristolth of the Shifting Sands##15180
  accept Anachronos##8303 |goto Silithus 49.45,36.45
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 49.67,37.46 |tip {dropsfrom}Emissary Roman'khan
step
  talk Bor Wildmane##15306
  accept Signet of the Dukes##8348 |goto Silithus 48.57,37.78
step
  note Bring the Abyssal Signet to Bor Wildmane in Cenarion Hold.
  collect Abyssal Signet##20514 |q 8348 |goto Silithus 48.57,37.78 |tip {dropsfrom}The Duke of Cynders, The Duke of Fathoms, The Duke of Shards
step
  talk Bor Wildmane##15306
  accept Scepter of the Council##8352 |goto Silithus 48.57,37.78
step
  note Bring an Abyssal Scepter to Bor Wildmane in Cenarion Hold.
  collect Abyssal Scepter##20515 |q 8352 |goto Silithus 48.57,37.78 |tip {dropsfrom}Prince Skaldrenox, High Marshal Whirlaxis, Baron Kazum
step
  talk Hermit Ortell##15194
  turnin True Believers##8323 |goto Silithus 67.19,69.76
step
  talk Anachronos##15192
  turnin Anachronos##8303 |goto Tanaris 64.2,51.42 |tip {turninat}Tanaris
step
  talk Bor Wildmane##15306
  turnin Signet of the Dukes##8348 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  turnin Scepter of the Council##8352 |goto Silithus 48.57,37.78
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  only Warrior
  talk Geologist Larksbane##15183
  accept Armaments of War##8316 |goto Silithus 49.67,37.46
step
  only Paladin
  talk Geologist Larksbane##15183
  accept Armaments of War##8376 |goto Silithus 49.67,37.46
step
  only Hunter
  talk Geologist Larksbane##15183
  accept Armaments of War##8377 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Geologist Larksbane##15183
  accept Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Priest
  talk Geologist Larksbane##15183
  accept Armaments of War##8379 |goto Silithus 49.67,37.46
step
  only Shaman
  talk Geologist Larksbane##15183
  accept Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only Mage
  talk Geologist Larksbane##15183
  accept Armaments of War##8381 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  accept Armaments of War##8382 |goto Silithus 49.67,37.46
step
  only Paladin
  talk Geologist Larksbane##15183
  turnin Armaments of War##8376 |goto Silithus 49.67,37.46
step
  only Hunter
  talk Geologist Larksbane##15183
  turnin Armaments of War##8377 |goto Silithus 49.67,37.46
step
  only Rogue
  talk Geologist Larksbane##15183
  turnin Armaments of War##8378 |goto Silithus 49.67,37.46
step
  only Priest
  talk Geologist Larksbane##15183
  turnin Armaments of War##8379 |goto Silithus 49.67,37.46
step
  only Shaman
  talk Geologist Larksbane##15183
  turnin Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only Mage
  talk Geologist Larksbane##15183
  turnin Armaments of War##8381 |goto Silithus 49.67,37.46
step
  only Druid
  talk Geologist Larksbane##15183
  turnin Armaments of War##8382 |goto Silithus 49.67,37.46
step
  only Warrior
  talk Geologist Larksbane##15183
  turnin Armaments of War##8316 |goto Silithus 49.67,37.46
step
  note {travel}Eastern Plaguelands
  goto Eastern Plaguelands 36.45,90.8
]])
