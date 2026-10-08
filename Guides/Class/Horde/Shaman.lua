-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Shaman", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "4688fcbb",
}, [[
step
  talk Gornek##3143
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  talk Mottled Boar##3098 |q 788 |goto Durotar 44.49,65.1
step
  talk Gornek##3143
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Troll Shaman
  talk Gornek##3143
  accept Rune-Inscribed Tablet##3084 |goto Durotar 42.06,68.33
step
  only Troll Shaman
  note Speak to Shikrik in the Valley of Trials.
  talk Shikrik##3157
  turnin Rune-Inscribed Tablet##3084 |goto Durotar 42.39,69
step
  only Orc Shaman
  talk Gornek##3143
  accept Rune-Inscribed Parchment##3089 |goto Durotar 42.06,68.33
step
  only Orc Shaman
  note Read the Rune-Inscribed Parchment and speak to Shikrik in the Valley of Trials.
  talk Shikrik##3157
  turnin Rune-Inscribed Parchment##3089 |goto Durotar 42.39,69
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  collect Plainstrider Meat##4739 |q 747 |goto Mulgore 47.2,81.46 |tip {dropsfrom}Plainstrider
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  only Tauren Shaman
  talk Grull Hawkwind##2980
  accept Rune-Inscribed Note##3093 |goto Mulgore 44.47,77.5
step
  only Tauren Shaman
  note Read the Rune-Inscribed Note and speak to Meela Dawnstrider in Camp Narache.
  talk Meela Dawnstrider##3062
  turnin Rune-Inscribed Note##3093 |goto Mulgore 44.58,76.56
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
  only Skyborne Shaman
  talk Rorian the Dayseeker##251361
  accept Embracing the Elements##92484 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Shaman
  note Examine the Humming Recall Crystal then speak with Windshaper Boro in Thendal Grove.
  talk Windshaper Boro##251374
  turnin Embracing the Elements##92484 |goto Zephras Isle 42.76,23.58
step
  only Skyborne Shaman not completed(1516) not completed(1519) not haveq(1516) not haveq(1519)
  talk Windshaper Boro##251374
  accept Call of Earth##92466 |goto Zephras Isle 42.76,23.58
step
  only Skyborne Shaman not completed(1516) not completed(1519) not haveq(1516) not haveq(1519)
  note Bring a Signet of Akir to Windshaper Boro.
  collect Signet of Akir##251924 |q 92466 |goto Zephras Isle 37.06,32.64 |tip {dropsfrom}Al'Aketh Brute, Al'Aketh Convert, Al'Aketh Neophyte
step
  only Skyborne Shaman not completed(1516) not completed(1519) not haveq(1516) not haveq(1519)
  talk Windshaper Boro##251374
  turnin Call of Earth##92466 |goto Zephras Isle 42.76,23.58
step
  only not Undead not Tauren not Skyborne Shaman not completed(1519) not completed(92466) not haveq(1519) not haveq(92466)
  talk Canaga Earthcaller##5887
  accept Call of Earth##1516 |goto Durotar 42.4,69.17
step
  only not Undead not Tauren not Skyborne Shaman not completed(1519) not completed(92466) not haveq(1519) not haveq(92466)
  note Bring 2 Felstalker Hooves to Canaga Earthcaller in the Valley of Trials.
  collect 2 Felstalker Hoof##6640 |q 1516 |goto Durotar 44.29,54.19 |tip {dropsfrom}Felstalker
step
  only not Undead not Tauren not Skyborne Shaman not completed(1519) not completed(92466) not haveq(1519) not haveq(92466)
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1516 |goto Durotar 42.4,69.17
step
  only Tauren Shaman not completed(1516) not completed(92466) not haveq(1516) not haveq(92466)
  talk Seer Ravenfeather##5888
  accept Call of Earth##1519 |goto Mulgore 44.35,76.77
step
  only Tauren Shaman not completed(1516) not completed(92466) not haveq(1516) not haveq(92466)
  note Bring 2 applications of Ritual Salve to Seer Ravenfeather in Camp Narache.
  collect 2 Ritual Salve##6634 |q 1519 |goto Mulgore 61.05,78.16 |tip {dropsfrom}Bristleback Shaman
step
  only Tauren Shaman not completed(1516) not completed(92466) not haveq(1516) not haveq(92466)
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1519 |goto Mulgore 44.35,76.77
step
  only Skyborne Shaman
  talk Windshaper Boro##251374
  accept Call of Earth##92467 |goto Zephras Isle 42.76,23.58
step
  only Skyborne Shaman
  note Find the Rise of Spirits and drink the Earth Sapta.
  talk Minor Manifestation of Earth##251166
  turnin Call of Earth##92467 |goto Zephras Isle 49.67,23.8
step
  only Skyborne Shaman
  talk Minor Manifestation of Earth##251166
  accept Call of Earth##92468 |goto Zephras Isle 49.67,23.8
step
  only Skyborne Shaman
  note Bring the Rough Quartz to Windshaper Boros in Thendal Grove.
  talk Windshaper Boro##251374
  turnin Call of Earth##92468 |goto Zephras Isle 42.76,23.58
step
  only not Undead not Tauren not Skyborne Shaman not completed(92466) not haveq(92466)
  talk Canaga Earthcaller##5887
  accept Call of Earth##1517 |goto Durotar 42.4,69.17
step
  only not Undead not Tauren not Skyborne Shaman not completed(92466) not haveq(92466)
  note Find Spirit Rock and drink the Earth Sapta.
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1517 |goto Durotar 44.03,76.2
step
  only not Undead not Tauren not Skyborne Shaman not completed(92466) not haveq(92466)
  talk Canaga Earthcaller##5887
  accept Earth Sapta##1463 |goto Durotar 42.4,69.17
step
  only not Undead not Tauren not Skyborne Shaman not completed(92466) not haveq(92466)
  talk Canaga Earthcaller##5887
  turnin Earth Sapta##1463 |goto Durotar 42.4,69.17
step
  only Shaman not completed(92466) not haveq(92466)
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##1518 |goto Durotar 44.03,76.2
step
  only Shaman not completed(92466) not haveq(92466)
  note Bring the Rough Quartz to Canaga Earthcaller in the Valley of Trials.
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1518 |goto Durotar 42.4,69.17
step
  only Tauren Shaman not completed(92466) not haveq(92466)
  talk Seer Ravenfeather##5888
  accept Call of Earth##1520 |goto Mulgore 44.35,76.77
step
  only Tauren Shaman not completed(92466) not haveq(92466)
  note Find Kodo Rock and drink the Earth Sapta.
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1520 |goto Durotar 44.03,76.2
step
  only Shaman not completed(92466) not haveq(92466)
  talk Minor Manifestation of Earth##5891
  accept Call of Earth##1521 |goto Durotar 44.03,76.2
step
  only Shaman not completed(92466) not haveq(92466)
  note Bring the Rough Quartz to Seer Ravenfeather in Camp Narache.
  talk Seer Ravenfeather##5888
  turnin Call of Earth##1521 |goto Mulgore 44.35,76.77
step
  only Tauren Shaman not completed(92466) not haveq(92466)
  talk Seer Ravenfeather##5888
  accept Earth Sapta##1462 |goto Mulgore 44.35,76.77
step
  only Tauren Shaman not completed(92466) not haveq(92466)
  talk Seer Ravenfeather##5888
  turnin Earth Sapta##1462 |goto Mulgore 44.35,76.77
step
  only Shaman
  talk Boarton Shadetotem##205729
  accept Stalk With The Earthmother##76240 |goto Thunder Bluff 39.6,65.85
step
  only Shaman
  note Buy or catch a Raw Brilliant Smallfish, then use the Knife Set to fillet it in front of Boarton Shadetotem in Thunder Bluff.
  talk Boarton Shadetotem##205729
  turnin Stalk With The Earthmother##76240 |goto Thunder Bluff 39.6,65.85
step
  only not Undead not Tauren Shaman not completed(1523) not completed(2983) not completed(2984) not haveq(1523) not haveq(2983) not haveq(2984)
  talk Searn Firewarder##5892
  accept Call of Fire##1522 |goto Orgrimmar 37.96,37.73
step
  only not Undead not Tauren Shaman not completed(1523) not completed(2983) not completed(2984) not haveq(1523) not haveq(2983) not haveq(2984)
  note Find Kranal Fiss in the Barrens.
  talk Kranal Fiss##5907
  turnin Call of Fire##1522 |goto The Barrens 56.03,19.89
step
  only Tauren Shaman not completed(1522) not completed(2983) not completed(2984) not haveq(1522) not haveq(2983) not haveq(2984)
  talk Xanis Flameweaver##5906
  accept Call of Fire##1523 |goto Thunder Bluff 25.16,20.51
step
  only Tauren Shaman not completed(1522) not completed(2983) not completed(2984) not haveq(1522) not haveq(2983) not haveq(2984)
  note Find Kranal Fiss in the Barrens.
  talk Kranal Fiss##5907
  turnin Call of Fire##1523 |goto The Barrens 56.03,19.89
step
  only Shaman
  talk Kranal Fiss##5907
  accept Call of Fire##1524 |goto The Barrens 56.03,19.89
step
  only Shaman
  note Bring the Torch of the Dormant Flame to Telf Joolam in Durotar.
  talk Telf Joolam##5900
  turnin Call of Fire##1524 |goto Durotar 38.55,58.96
step
  only not Undead not Tauren not Skyborne Shaman
  talk Telf Joolam##5900
  accept Call of Fire##1525 |goto Durotar 38.55,58.96
step
  only not Undead not Tauren not Skyborne Shaman
  note Bring 1 Fire Tar and 1 Reagent Pouch to Telf Joolam in Durotar.
  collect 1 Fire Tar##5026 |q 1525 |goto The Barrens 54.94,26.74 |tip {dropsfrom}Razormane Water Seeker, Razormane Thornweaver, Razormane Geomancer
step
  only not Undead not Tauren not Skyborne Shaman
  talk Telf Joolam##5900
  turnin Call of Fire##1525 |goto Durotar 38.55,58.96
step
  only not Undead not Tauren not Skyborne Shaman
  talk Telf Joolam##5900
  accept Fire Sapta##1464 |goto Durotar 38.55,58.96
step
  only not Undead not Tauren not Skyborne Shaman
  talk Telf Joolam##5900
  turnin Fire Sapta##1464 |goto Durotar 38.55,58.96
step
  only Skyborne Shaman
  talk Sessaria Skystride##252382
  accept Call of Fire##97243 |goto Zephras Isle 58.34,78.52
step
  only Skyborne Shaman
  note Bring the Torch of Dormant Flame to Olariaan Swiftburn at the Shrine of Flames in the Gustberry Lowlands.
  talk Olariaan Swiftburn##268592
  turnin Call of Fire##97243 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  accept Call of Fire##97244 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  note Slay Skypriest Faladiel in the Gustberry Lowlands and collect Faladiel's Heart.
  collect Faladiel's Heart##277267 |q 97244 |goto Zephras Isle 64.43,63.71 |tip {dropsfrom}Skypriest Faladiel
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  turnin Call of Fire##97244 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  accept Call of Fire##97245 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  note Find the home of Kuramaa in the Shen'dar Highlands, and defeat the spirit in combat. Bring Kuramaa's Mask to Olariaan Swiftburn in the Gustberry Lowlands when you are victorious.
  collect Kuramaa's Mask##277269 |q 97245 |goto Zephras Isle 42.44,68.75 |tip {dropsfrom}Kuramaa
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  turnin Call of Fire##97245 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  talk Olariaan Swiftburn##268592
  accept Call of Fire##97257 |goto Zephras Isle 51.22,86.22
step
  only Skyborne Shaman
  note Wait for Olariaan to begin the ritual at the Brazier of Offering and follow his instructions.
  talk Brazier of Offering##268762 |q 97257 |goto Zephras Isle 51.2,85.9
step
  only Skyborne Shaman
  talk Sessaria Skystride##252382
  turnin Call of Fire##97257 |goto Zephras Isle 58.34,78.52
step
  only not Undead not Tauren not Skyborne Shaman
  talk Telf Joolam##5900
  accept Call of Fire##1526 |goto Durotar 38.55,58.96
step
  only not Undead not Tauren not Skyborne Shaman
  note Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
  collect Glowing Ember##6655 |q 1526 |goto Durotar 38.72,58.29 |tip {dropsfrom}Minor Manifestation of Fire, Manifestation of Flames
step
  only not Undead not Tauren not Skyborne Shaman
  turnin Call of Fire##1526 |goto Durotar 38.96,58.22
step
  only Shaman
  click Brazier of the Dormant Flame##61934
  accept Call of Fire##1527 |goto Durotar 38.96,58.22
step
  only Shaman
  note Bring the Torch of Eternal Flame to Kranal Fiss in the Barrens.
  talk Kranal Fiss##5907
  turnin Call of Fire##1527 |goto The Barrens 56.03,19.89
step
  only not Undead not Tauren Shaman not completed(1529) not completed(2985) not completed(2986) not haveq(1529) not haveq(2985) not haveq(2986)
  talk Searn Firewarder##5892
  accept Call of Water##1528 |goto Orgrimmar 37.96,37.73
step
  only not Undead not Tauren Shaman not completed(1529) not completed(2985) not completed(2986) not haveq(1529) not haveq(2985) not haveq(2986)
  note Find Islen Waterseer in the Barrens.
  talk Islen Waterseer##5901
  turnin Call of Water##1528 |goto The Barrens 65.83,43.78
step
  only Tauren Shaman not completed(1528) not completed(2985) not completed(2986) not haveq(1528) not haveq(2985) not haveq(2986)
  talk Xanis Flameweaver##5906
  accept Call of Water##1529 |goto Thunder Bluff 25.16,20.51
step
  only Tauren Shaman not completed(1528) not completed(2985) not completed(2986) not haveq(1528) not haveq(2985) not haveq(2986)
  note Find Islen Waterseer in the Barrens.
  talk Islen Waterseer##5901
  turnin Call of Water##1529 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Islen Waterseer##5901
  accept Call of Water##1530 |goto The Barrens 65.83,43.78
step
  only Shaman
  note Find Brine in Southern Barrens.
  talk Brine##5899
  turnin Call of Water##1530 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Brine##5899
  accept Call of Water##1535 |goto The Barrens 43.42,77.41
step
  only Shaman
  note Fill the Empty Brown Waterskin at the watering hole below Brine's hut and return it to her in the Barrens.
  collect Filled Brown Waterskin##7769 |q 1535 |goto The Barrens 44.28,76.75 |tip {dropsfrom}Quilboar Watering Hole
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1535 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Brine##5899
  accept Call of Water##1536 |goto The Barrens 43.42,77.41
step
  only Shaman
  note Fill the Empty Red Waterskin at the well in Tarren Mill and return to Brine in the Barrens.
  collect Filled Red Waterskin##7771 |q 1536 |goto Hillsbrad Foothills 62.18,20.79 |tip {dropsfrom}Spring Well
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1536 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Brine##5899
  accept Call of Water##1534 |goto The Barrens 43.42,77.41
step
  only Shaman
  note Fill the Empty Blue Waterskin at the Ruins of Stardust in Ashenvale and return to Brine in the Barrens.
  collect Filled Blue Waterskin##7770 |q 1534 |goto Ashenvale 33.55,67.47 |tip {dropsfrom}Ruins of Stardust Fountain
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1534 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Brine##5899
  accept Call of Water##220 |goto The Barrens 43.42,77.41
step
  only Shaman
  note Bring the Vial of Purest Water to Islen Waterseer in the Barrens.
  talk Islen Waterseer##5901
  turnin Call of Water##220 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Islen Waterseer##5901
  accept Water Sapta##972 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Islen Waterseer##5901
  turnin Water Sapta##972 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Islen Waterseer##5901
  accept Call of Water##63 |goto The Barrens 65.83,43.78
step
  only Shaman
  note Defeat the Corrupt Manifestation of Water and place the Corrupted Manifestation's Bracers along with the Remaining Drops of Purest Water on the Brazier of Everfount in Silverpine Forest.
  collect Corrupt Manifestation's Bracers##7812 |q 63 |goto Silverpine Forest 38.78,44.26 |tip {dropsfrom}Corrupt Minor Manifestation of Water
step
  only Shaman
  turnin Call of Water##63 |goto Silverpine Forest 38.26,44.56
step
  only Shaman
  talk Tiev Mordune##7007
  accept Call of Water##1103 |goto Silverpine Forest 37.34,44.15
step
  only Shaman
  note Bring a Water Sapta to Tiev Mordune in Silverpine Forest if you failed to speak to the Minor Manifestation of Water.
  buy Water Sapta##6637 |q 1103 |goto The Barrens 65.83,43.78
step
  only Shaman
  talk Tiev Mordune##7007
  turnin Call of Water##1103 |goto Silverpine Forest 37.34,44.15
step
  only Shaman
  click Brazier of Everfount##113791
  accept Call of Water##100 |goto Silverpine Forest 38.26,44.56
step
  only Shaman
  note Speak to the Minor Manifestation of Water in Silverpine Forest.
  talk Minor Manifestation of Water##5895
  turnin Call of Water##100 |goto Silverpine Forest 38.65,44.58
step
  only Shaman
  talk Minor Manifestation of Water##5895
  accept Call of Water##96 |goto Silverpine Forest 38.65,44.58
step
  only Shaman
  note Bring the Shard of Water to Islen Waterseer in the Barrens.
  talk Islen Waterseer##5901
  turnin Call of Water##96 |goto The Barrens 65.83,43.78
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  accept Grant's Shield##79362 |goto Alterac Mountains 80.5,66.92
step
  only not Undead not Skyborne Shaman
  note Find Grant's Mace on one of the skeletons in Raven Hill Cemetery then return to Sirra Von'Indie in Darkshire for more information.
  collect Grant's Mace##281146 |q 79362 |goto Duskwood 23.06,47.11 |tip {dropsfrom}Skeletal Horror, Skeletal Fiend, Skeletal Healer
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Grant's Shield##79362 |goto Alterac Mountains 80.5,66.92
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  accept Silvia's Sword##79363 |goto Alterac Mountains 80.5,66.92
step
  only not Undead not Skyborne Shaman
  note Defeat 7 Defias Night Blades and 7 Defias Enchanters in Addle's Stead then return to Sirra Von'Indi in Darkshire for more information.
  kill Defias Night Blade##909 |q 79363 |goto Duskwood 23.37,73.31
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Silvia's Sword##79363 |goto Alterac Mountains 80.5,66.92
step
  only not Undead not Tauren Shaman not completed(1532) not haveq(1532)
  talk Searn Firewarder##5892
  accept Call of Air##1531 |goto Orgrimmar 37.96,37.73
step
  only not Undead not Tauren Shaman not completed(1532) not haveq(1532)
  note Find Prate Cloudseer in Thousand Needles.
  talk Prate Cloudseer##5905
  turnin Call of Air##1531 |goto Thousand Needles 53.54,42.65
step
  only Tauren Shaman not completed(1531) not haveq(1531)
  talk Xanis Flameweaver##5906
  accept Call of Air##1532 |goto Thunder Bluff 25.16,20.51
step
  only Tauren Shaman not completed(1531) not haveq(1531)
  note Find Prate Cloudseer in Thousand Needles.
  talk Prate Cloudseer##5905
  turnin Call of Air##1532 |goto Thousand Needles 53.54,42.65
step
  only Shaman not completed(8411) not haveq(8411)
  talk Beram Skychaser##3032
  accept Elemental Mastery##8410 |goto Thunder Bluff 21.99,18.8
step
  only Shaman not completed(8411) not haveq(8411)
  note Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.
  collect Elemental Air##7069 |q 8410 |goto Westfall 45.61,49.32 |tip {dropsfrom}Dust Devil, Thundering Exile, Cyclonian
step
  only Shaman not completed(8411) not haveq(8411)
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Mastery##8410 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  note Bring the pieces for the spirit totem to Bath'rah the Windwatcher.
  collect Bloodshot Spider Eye##20610 |q 8412 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Carrion Lurker, Venom Mist Lurker
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  note Bring the voodoo feathers to Bath'rah the Windwatcher.
  collect Amber Voodoo Feather##20606 |q 8413 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  only Shaman
  note Return the book to its rightful owners.
  talk Lorekeeper Javon##14381
  turnin Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept Material Assistance##7667 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  note If you are interested in helping Sagorne Crestrider in Orgrimmar's Valley of Wisdom, bring him an Azerothian Diamond and a Pristine Black Diamond.
  collect Azerothian Diamond##12800 |q 7667 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Cliff Breaker, Anubisath Guardian, Small Thorium Vein
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin Material Assistance##7667 |goto Orgrimmar 38.66,35.92
step
  only not Undead not Tauren Shaman not completed(8258) not haveq(8258)
  talk Sagorne Creststrider##13417
  accept The Darkreaver Menace##7668 |goto Orgrimmar 38.66,35.92
step
  only not Undead not Tauren Shaman not completed(8258) not haveq(8258)
  note Bring Darkreaver's Head to Sagorne Creststrider in the Valley of Wisdom, Orgrimmar.
  collect Darkreaver's Head##18880 |q 7668 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Death Knight Darkreaver
step
  only not Undead not Tauren Shaman not completed(8258) not haveq(8258)
  talk Sagorne Creststrider##13417
  turnin The Darkreaver Menace##7668 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  talk Sagorne Creststrider##13417
  accept Again Into the Great Ossuary##7669 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  talk Sagorne Creststrider##13417
  turnin Again Into the Great Ossuary##7669 |goto Orgrimmar 38.66,35.92
step
  only Shaman
  talk Mokvar##16012
  accept An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bindings of Elements to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8918 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Shaman
  talk Mokvar##16012
  turnin An Earnest Proposition##8918 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note Take the Sealed Venom Container to Mux Manascrambler in Gadgetzan.
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
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
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  note Return to Mokvar in Orgrimmar with the Extra-Dimensional Ghost Revealer.
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  talk Mokvar##16012
  accept Just Compensation##8942 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Bring a Cord of Elements and a set of Gauntlets of Elements to Mokvar in Orgrimmar.
  collect Cord of Elements##16673 |q 8942 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip {dropsfrom}Scarshield Warlock, Firebrand Invoker, Scarshield Quartermaster
step
  only Shaman
  talk Mokvar##16012
  turnin Just Compensation##8942 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  note Use the Extra-Dimensional Ghost Revealer at the entrance to Stratholme and speak with the ghost of Anthion Harmon.
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
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
  only Shaman
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8957 |goto Eastern Plaguelands 26.11,11.3
step
  only Shaman
  note Return to Mokvar in Orgimmar with a set of Boots of Elements, Kilt of Elements and Pauldrons of Elements.
  collect Boots of Elements##16670 |q 8957 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk
step
  only Shaman
  talk Mokvar##16012
  turnin Anthion's Parting Words##8957 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  note Travel to Blackrock Mountain and use the Extra-Dimensional Ghost Revealer to find Bodley near Blackrock Spire.
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032 |goto Eastern Kingdoms - the continent map 48.9,63.93
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
  accept Back to the Beginning##8998 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Speak with Mokvar at Grommash Hold in Orgrimmar's Valley of Wisdom.
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  talk Mokvar##16012
  accept Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
step
  only Shaman
  note Give Mokvar your Coif of Elements and Vest of Elements.
  collect Coif of Elements##16667 |q 9011 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Shaman
  talk Mokvar##16012
  turnin Saving the Best for Last##9011 |goto Orgrimmar 34.95,38.29
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
  only Shaman
  talk Geologist Larksbane##15183
  accept Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only Shaman
  talk Geologist Larksbane##15183
  turnin Armaments of War##8380 |goto Silithus 49.67,37.46
]])
