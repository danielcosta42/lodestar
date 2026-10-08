-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Temple of Ahn'Qiraj", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Warrior
  talk Windcaller Yessendra##15498
  accept Signet of Unyielding Strength##8556 |goto Silithus 52.05,38.16
step
  only Priest
  talk Windcaller Yessendra##15498
  accept Ring of Infinite Wisdom##8697 |goto Silithus 52.05,38.16
step
  only Shaman
  talk Windcaller Yessendra##15498
  accept Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Mage
  talk Windcaller Yessendra##15498
  accept Band of Vaulted Secrets##8699 |goto Silithus 52.05,38.16
step
  only Druid
  talk Windcaller Yessendra##15498
  accept Band of Unending Life##8700 |goto Silithus 52.05,38.16
step
  only Rogue
  talk Windcaller Yessendra##15498
  accept Band of Veiled Shadows##8701 |goto Silithus 52.05,38.16
step
  only Warlock
  talk Windcaller Yessendra##15498
  accept Ring of Unspoken Names##8702 |goto Silithus 52.05,38.16
step
  only Hunter
  talk Windcaller Yessendra##15498
  accept Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Warrior
  talk Warden Haro##15499
  accept Sickle of Unyielding Strength##8558 |goto Silithus 51.14,38.94
step
  only Priest
  talk Warden Haro##15499
  accept Gavel of Infinite Wisdom##8705 |goto Silithus 51.14,38.94
step
  only Shaman
  talk Warden Haro##15499
  accept Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  only Mage
  talk Warden Haro##15499
  accept Blade of Vaulted Secrets##8707 |goto Silithus 51.14,38.94
step
  only Druid
  talk Warden Haro##15499
  accept Mace of Unending Life##8708 |goto Silithus 51.14,38.94
step
  only Rogue
  talk Warden Haro##15499
  accept Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Warden Haro##15499
  accept Kris of Unspoken Names##8710 |goto Silithus 51.14,38.94
step
  only Hunter
  talk Warden Haro##15499
  accept Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  only Warrior
  talk Keyl Swiftclaw##15500
  accept Drape of Unyielding Strength##8557 |goto Silithus 51.76,39.54
step
  only Priest
  talk Keyl Swiftclaw##15500
  accept Shroud of Infinite Wisdom##8689 |goto Silithus 51.76,39.54
step
  only Shaman
  talk Keyl Swiftclaw##15500
  accept Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  only Mage
  talk Keyl Swiftclaw##15500
  accept Drape of Vaulted Secrets##8691 |goto Silithus 51.76,39.54
step
  only Druid
  talk Keyl Swiftclaw##15500
  accept Cloak of Unending Life##8692 |goto Silithus 51.76,39.54
step
  only Rogue
  talk Keyl Swiftclaw##15500
  accept Cloak of Veiled Shadows##8693 |goto Silithus 51.76,39.54
step
  only Warlock
  talk Keyl Swiftclaw##15500
  accept Shroud of Unspoken Names##8694 |goto Silithus 51.76,39.54
step
  only Hunter
  talk Keyl Swiftclaw##15500
  accept Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  accept The Path of the Protector##8747 |goto Tanaris 65.27,50.03
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  kill Vekniss Soldier##15229 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Secrets of the Qiraji##8784 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  kill C'Thun##15727 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept C'Thun's Legacy##8801 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  note Bring 1 Qiraji Magisterial Ring, 2 Lambent Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8556 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Priest
  note Bring 1 Qiraji Ceremonial Ring, 2 Obsidian Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8697 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Shaman
  note Bring 1 Qiraji Magisterial Ring, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8698 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Mage
  note Bring 1 Qiraji Magisterial Ring, 2 Azure Idols, 5 Gold Scarabs and 5 Clay Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8699 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Druid
  note Bring 1 Qiraji Magisterial Ring, 2 Alabaster Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Magisterial Ring##20884 |q 8700 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Rogue
  note Bring 1 Qiraji Ceremonial Ring, 2 Onyx Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8701 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Warlock
  note Bring 1 Qiraji Ceremonial Ring, 2 Jasper Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8702 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Hunter
  note Bring 1 Qiraji Ceremonial Ring, 2 Amber Idols, 5 Gold Scarabs and 5 Clay Scarabs to Windcaller Yessendra in Silithus. You must also attain Honored reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ceremonial Ring##20888 |q 8704 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, General Rajaxx
step
  only Warrior
  note Bring 1 Qiraji Spiked Hilt, 2 Alabaster Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8558 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Priest
  note Bring 1 Qiraji Ornate Hilt, 2 Lambent Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8705 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Shaman
  note Bring 1 Qiraji Spiked Hilt, 2 Amber Idols, 5 Ivory Scarabs and 5 Bronze Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8706 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Mage
  note Bring 1 Qiraji Ornate Hilt, 2 Obsidian Idols, 5 Silver Scarabs and 5 Bone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8707 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Druid
  note Bring 1 Qiraji Ornate Hilt, 2 Jasper Idols, 5 Crystal Scarabs and 5 Stone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8708 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Rogue
  note Bring 1 Qiraji Spiked Hilt, 2 Vermillion Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8709 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Warlock
  note Bring 1 Qiraji Ornate Hilt, 2 Onyx Idols, 5 Gold Scarabs and 5 Clay Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Ornate Hilt##20890 |q 8710 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Hunter
  note Bring 1 Qiraji Spiked Hilt, 2 Azure Idols, 5 Silver Scarabs and 5 Bone Scarabs to Warden Haro in Silithus. You must also attain Exalted reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Spiked Hilt##20886 |q 8712 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ossirian the Unscarred, Moam, Ayamiss the Hunter
step
  only Warrior
  note Bring 1 Qiraji Martial Drape, 2 Onyx Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8557 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Priest
  note Bring 1 Qiraji Martial Drape, 2 Jasper Idols, 5 Gold Scarabs and 5 Clay Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8689 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Shaman
  note Bring 1 Qiraji Regal Drape, 2 Obsidian Idols, 5 Clay Scarabs and 5 Gold Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8690 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Mage
  note Bring 1 Qiraji Martial Drape, 2 Alabaster Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8691 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Druid
  note Bring 1 Qiraji Regal Drape, 2 Vermillion Idols, 5 Silver Scarabs and 5 Bone Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8692 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Rogue
  note Bring 1 Qiraji Martial Drape, 2 Azure Idols, 5 Bronze Scarabs and 5 Ivory Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Martial Drape##20885 |q 8693 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Warlock
  note Bring 1 Qiraji Regal Drape, 2 Amber Idols, 5 Ivory Scarabs and 5 Bronze Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8694 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  only Hunter
  note Bring 1 Qiraji Regal Drape, 2 Lambent Idols, 5 Stone Scarabs and 5 Crystal Scarabs to Keyl Swiftclaw in Silithus. You must also obtain Revered reputation with Cenarion Circle to complete this quest.
  collect 1 Qiraji Regal Drape##20889 |q 8696 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}General Rajaxx, Kurinnaxx, Ayamiss the Hunter
step
  collect Qiraji Lord's Insignia##21229 |q 8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  only Warrior
  talk Windcaller Yessendra##15498
  turnin Signet of Unyielding Strength##8556 |goto Silithus 52.05,38.16
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
  only Warlock
  talk Windcaller Yessendra##15498
  turnin Ring of Unspoken Names##8702 |goto Silithus 52.05,38.16
step
  only Hunter
  talk Windcaller Yessendra##15498
  turnin Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Warrior
  talk Warden Haro##15499
  turnin Sickle of Unyielding Strength##8558 |goto Silithus 51.14,38.94
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
  only Rogue
  talk Warden Haro##15499
  turnin Dagger of Veiled Shadows##8709 |goto Silithus 51.14,38.94
step
  only Warlock
  talk Warden Haro##15499
  turnin Kris of Unspoken Names##8710 |goto Silithus 51.14,38.94
step
  only Hunter
  talk Warden Haro##15499
  turnin Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  only Warrior
  talk Keyl Swiftclaw##15500
  turnin Drape of Unyielding Strength##8557 |goto Silithus 51.76,39.54
step
  only Priest
  talk Keyl Swiftclaw##15500
  turnin Shroud of Infinite Wisdom##8689 |goto Silithus 51.76,39.54
step
  only Shaman
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
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
  only Hunter
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  turnin The Path of the Protector##8747 |goto Tanaris 65.27,50.03
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Andorgos##15502
  turnin Secrets of the Qiraji##8784 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Caelestrasz##15379
  turnin C'Thun's Legacy##8801 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  accept The Path of the Protector##8748 |goto Tanaris 65.27,50.03
step
  only Warrior
  talk Andorgos##15502
  accept Conqueror's Spaulders##8544 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  accept Conqueror's Greaves##8559 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  accept Conqueror's Legguards##8560 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  talk Andorgos##15502
  accept Conqueror's Crown##8561 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  talk Vethsera##15504
  accept Conqueror's Breastplate##8562 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Andorgos##15502
  accept Tiara of the Oracle##8592 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  accept Trousers of the Oracle##8593 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Andorgos##15502
  accept Mantle of the Oracle##8594 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8595 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  accept Footwraps of the Oracle##8596 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Andorgos##15502
  accept Stormcaller's Pauldrons##8602 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Vethsera##15504
  accept Vestments of the Oracle##8603 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Kandrostrasz##15503
  accept Stormcaller's Footguards##8621 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Vethsera##15504
  accept Stormcaller's Hauberk##8622 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Andorgos##15502
  accept Stormcaller's Diadem##8623 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Kandrostrasz##15503
  accept Stormcaller's Leggings##8624 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Andorgos##15502
  accept Enigma Shoulderpads##8625 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  accept Striker's Footguards##8626 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  accept Enigma Leggings##8631 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Andorgos##15502
  accept Enigma Circlet##8632 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Vethsera##15504
  accept Enigma Robes##8633 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  accept Enigma Boots##8634 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  accept Deathdealer's Boots##8637 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Vethsera##15504
  accept Deathdealer's Vest##8638 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Andorgos##15502
  accept Deathdealer's Helm##8639 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  accept Deathdealer's Leggings##8640 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Andorgos##15502
  accept Deathdealer's Spaulders##8641 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Vethsera##15504
  accept Striker's Hauberk##8656 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Andorgos##15502
  accept Striker's Diadem##8657 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  accept Striker's Leggings##8658 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Andorgos##15502
  accept Striker's Pauldrons##8659 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  accept Doomcaller's Footwraps##8660 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Vethsera##15504
  accept Doomcaller's Robes##8661 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Andorgos##15502
  accept Doomcaller's Circlet##8662 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  accept Doomcaller's Trousers##8663 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Andorgos##15502
  accept Doomcaller's Mantle##8664 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  accept Genesis Boots##8665 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Vethsera##15504
  accept Genesis Vest##8666 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Andorgos##15502
  accept Genesis Helm##8667 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  accept Genesis Trousers##8668 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Andorgos##15502
  accept Genesis Shoulderpads##8669 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Caelestrasz##15379
  accept The Savior of Kalimdor##8802 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  collect Signet Ring of the Bronze Dragonflight##21196 |q 8748 |goto Tanaris 65.27,50.03
step
  only Warrior
  note Bring the Qiraji Bindings of Command, 2 Idols of Night, 5 Stone Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Command##20928 |q 8544 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Warrior
  note Bring the Qiraji Bindings of Command, 2 Idols of War, 5 Ivory Scarabs and 5 Gold Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Command##20928 |q 8559 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Warrior
  note Bring Ouro's Intact Hide, 2 Idols of Death, 5 Bronze Scarabs and 5 Ivory Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Ouro's Intact Hide##20927 |q 8560 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Warrior
  note Bring Vek'nilash's Circlet, 2 Idols of the Sun, 5 Stone Scarabs and 5 Crystal Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'nilash's Circlet##20926 |q 8561 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'nilash
step
  only Warrior
  note Bring the the Carapace of the Old God, 2 Idols of War, 5 Silver Scarabs and 5 Bone Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Carapace of the Old God##20929 |q 8562 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Priest
  note Bring Vek'nilash's Circlet, 2 Idols of the Sage, 5 Silver Scarabs and 5 Bone Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'nilash's Circlet##20926 |q 8592 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'nilash
step
  only Priest
  note Bring Ouro's Intact Hide, 2 Idols of Life, 5 Gold Scarabs and 5 Clay Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Ouro's Intact Hide##20927 |q 8593 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Priest
  note Bring the Qiraji Bindings of Command, 2 Idols of Rebirth, 5 Silver Scarabs and 5 Ivory Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Command##20928 |q 8594 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  collect Qiraji Lord's Insignia##21229 |q 8595 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  only Priest
  note Bring the Qiraji Bindings of Command, 2 Idols of Death, 5 Bronze Scarabs and 5 Gold Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Command##20928 |q 8596 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Shaman
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Life, 5 Gold Scarabs and 5 Crystal Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Dominance##20932 |q 8602 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Priest
  note Bring the the Husk of the Old God, 2 Idols of Death, 5 Stone Scarabs and 5 Crystal Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Husk of the Old God##20933 |q 8603 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Shaman
  note Bring the Qiraji Bindings of Dominance, 2 Idols of the Sage, 5 Bronze Scarabs and 5 Clay Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Dominance##20932 |q 8621 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Shaman
  note Bring the Carapace of the Old God, 2 Idols of the Sage, 5 Silver Scarabs and 5 Bone Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Carapace of the Old God##20929 |q 8622 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Shaman
  note Bring Vek'lor's Diadem, 2 Idols of Rebirth, 5 Stone Scarabs and 5 Crystal Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'lor's Diadem##20930 |q 8623 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'lor
step
  only Shaman
  note Bring the Skin of the Great Sandworm, 2 Idols of Strife, 5 Bronze Scarabs and 5 Ivory Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Skin of the Great Sandworm##20931 |q 8624 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Mage
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Death, 5 Stone Scarabs and 5 Bronze Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Dominance##20932 |q 8625 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Hunter
  note Bring the Qiraji Bindings of Command, 2 Idols of Life, 5 Stone Scarabs and 5 Bone Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Command##20928 |q 8626 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Mage
  note Bring Ouro's Intact Hide, 2 Idols of the Sage, 5 Silver Scarabs and 5 Bone Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Ouro's Intact Hide##20927 |q 8631 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Mage
  note Bring Vek'nilash's Circlet, 2 Idols of Night, 5 Bronze Scarabs and 5 Ivory Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'nilash's Circlet##20926 |q 8632 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'nilash
step
  only Mage
  note Bring the Husk of the Old God, 2 Idols of the Sun, 5 Gold Scarabs and 5 Clay Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Husk of the Old God##20933 |q 8633 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Mage
  note Bring the Qiraji Bindings of Dominance, 2 Idols of the Sun, 5 Silver Scarabs and 5 Crystal Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Dominance##20932 |q 8634 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Rogue
  note Bring the Qiraji Bindings of Command, 2 Idols of Strife, 5 Crystal Scarabs and 5 Bone Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Command##20928 |q 8637 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Rogue
  note Bring the the Carapace of the Old God, 2 Idols of Strife, 5 Bronze Scarabs and 5 Ivory Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Carapace of the Old God##20929 |q 8638 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Rogue
  note Bring Vek'lor's Diadem, 2 Idols of the War, 5 Gold Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'lor's Diadem##20930 |q 8639 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'lor
step
  only Rogue
  note Bring Ouro's Intact Hide, 2 Idols of Night, 5 Stone Scarabs and 5 Crystal Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Ouro's Intact Hide##20927 |q 8640 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Rogue
  note Bring the Qiraji Bindings of Command, 2 Idols of the Sun, 5 Silver Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Command##20928 |q 8641 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Hunter
  note Bring the the Carapace of the Old God, 2 Idols of Life, 5 Gold Scarabs and 5 Clay Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Carapace of the Old God##20929 |q 8656 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Hunter
  note Bring Vek'lor's Diadem, 2 Idols of Strife, 5 Bronze Scarabs and 5 Ivory Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'lor's Diadem##20930 |q 8657 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'lor
step
  only Hunter
  note Bring the Skin of the Great Sandworm, 2 Idols of the Sun, 5 Silver Scarabs and 5 Bone Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Skin of the Great Sandworm##20931 |q 8658 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Hunter
  note Bring the Qiraji Bindings of Command, 2 Idols of War, 5 Crystal Scarabs and 5 Ivory Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Command##20928 |q 8659 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Warlock
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Night, 5 Clay Scarabs and 5 Ivory Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Dominance##20932 |q 8660 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Warlock
  note Bring the the Husk of the Old God, 2 Idols of Night, 5 Stone Scarabs and 5 Crystal Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Husk of the Old God##20933 |q 8661 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Warlock
  note Bring Vek'nilash's Circlet, 2 Idols of Death, 5 Silver Scarabs and 5 Bone Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'nilash's Circlet##20926 |q 8662 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'nilash
step
  only Warlock
  note Bring the Skin of the Great Sandworm, 2 Idols of Rebirth, 5 Gold Scarabs and 5 Clay Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Skin of the Great Sandworm##20931 |q 8663 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Warlock
  note Bring the Qiraji Bindings of Dominance, 2 Idols of the Sage, 5 Bronze Scarabs and 5 Bone Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Dominance##20932 |q 8664 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Druid
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Rebirth, 5 Stone Scarabs and 5 Silver Scarabs to Kandrostrasz in Ahn'Qiraj. This quest also requires Neutral faction with the Brood of Nozdormu.
  collect Qiraji Bindings of Dominance##20932 |q 8665 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only Druid
  note Bring the the Husk of the Old God, 2 Idols of Rebirth, 5 Bronze Scarabs and 5 Ivory Scarabs to Vethsera inside Ahn'Qiraj. You must also attain Honored reputation with the Brood of Nozdormu to complete this quest.
  collect Husk of the Old God##20933 |q 8666 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}C'Thun
step
  only Druid
  note Bring Vek'lor's Diadem, 2 Idols of Life, 5 Gold Scarabs and 5 Clay Scarabs to Andorgos in Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Vek'lor's Diadem##20930 |q 8667 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'lor
step
  only Druid
  note Bring the Skin of the Great Sandworm, 2 Idols of War, 5 Stone Scarabs and 5 Crystal Scarabs to Kandrostrasz inside Ahn'Qiraj. You must also attain Friendly reputation with the Brood of Nozdormu to complete this quest.
  collect Skin of the Great Sandworm##20931 |q 8668 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Ouro
step
  only Druid
  note Bring the Qiraji Bindings of Dominance, 2 Idols of Strife, 5 Gold Scarabs and 5 Bone Scarabs to Andorgos in Ahn'Qiraj. You must also attain Neutral reputation with the Brood of Nozdormu to complete this quest.
  collect Qiraji Bindings of Dominance##20932 |q 8669 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Viscidus, Princess Huhuran
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  turnin The Path of the Protector##8748 |goto Tanaris 65.27,50.03
step
  only Warrior
  talk Andorgos##15502
  turnin Conqueror's Spaulders##8544 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  turnin Conqueror's Greaves##8559 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  turnin Conqueror's Legguards##8560 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  talk Andorgos##15502
  turnin Conqueror's Crown##8561 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warrior
  talk Vethsera##15504
  turnin Conqueror's Breastplate##8562 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Andorgos##15502
  turnin Tiara of the Oracle##8592 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  turnin Trousers of the Oracle##8593 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Andorgos##15502
  turnin Mantle of the Oracle##8594 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8595 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  turnin Footwraps of the Oracle##8596 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Andorgos##15502
  turnin Stormcaller's Pauldrons##8602 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Priest
  talk Vethsera##15504
  turnin Vestments of the Oracle##8603 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Kandrostrasz##15503
  turnin Stormcaller's Footguards##8621 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Vethsera##15504
  turnin Stormcaller's Hauberk##8622 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Andorgos##15502
  turnin Stormcaller's Diadem##8623 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Shaman
  talk Kandrostrasz##15503
  turnin Stormcaller's Leggings##8624 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Andorgos##15502
  turnin Enigma Shoulderpads##8625 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  turnin Striker's Footguards##8626 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  turnin Enigma Leggings##8631 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Andorgos##15502
  turnin Enigma Circlet##8632 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Vethsera##15504
  turnin Enigma Robes##8633 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  turnin Enigma Boots##8634 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  turnin Deathdealer's Boots##8637 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Vethsera##15504
  turnin Deathdealer's Vest##8638 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Andorgos##15502
  turnin Deathdealer's Helm##8639 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  turnin Deathdealer's Leggings##8640 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Rogue
  talk Andorgos##15502
  turnin Deathdealer's Spaulders##8641 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Vethsera##15504
  turnin Striker's Hauberk##8656 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Andorgos##15502
  turnin Striker's Diadem##8657 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  turnin Striker's Leggings##8658 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Hunter
  talk Andorgos##15502
  turnin Striker's Pauldrons##8659 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  turnin Doomcaller's Footwraps##8660 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Vethsera##15504
  turnin Doomcaller's Robes##8661 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Andorgos##15502
  turnin Doomcaller's Circlet##8662 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  turnin Doomcaller's Trousers##8663 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Warlock
  talk Andorgos##15502
  turnin Doomcaller's Mantle##8664 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  turnin Genesis Boots##8665 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Vethsera##15504
  turnin Genesis Vest##8666 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Andorgos##15502
  turnin Genesis Helm##8667 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  turnin Genesis Trousers##8668 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  only Druid
  talk Andorgos##15502
  turnin Genesis Shoulderpads##8669 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Anachronos##15192
  turnin The Savior of Kalimdor##8802 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  accept The Path of the Protector##8749 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  collect Signet Ring of the Bronze Dragonflight##21197 |q 8749 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  turnin The Path of the Protector##8749 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  accept The Path of the Protector##8750 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  collect Signet Ring of the Bronze Dragonflight##21198 |q 8750 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  turnin The Path of the Protector##8750 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  accept The Protector of Kalimdor##8751 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  collect Signet Ring of the Bronze Dragonflight##21199 |q 8751 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  turnin The Protector of Kalimdor##8751 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  accept The Changing of Paths - Protector No More##8764 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  collect Signet Ring of the Bronze Dragonflight##21200 |q 8764 |goto Tanaris 65.27,50.03
step
  only not completed(8752) not completed(8757) not haveq(8752) not haveq(8757)
  talk Anachronos##15192
  turnin The Changing of Paths - Protector No More##8764 |goto Tanaris 65.27,50.03
]])
