-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Cenarion Circle", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept A Lesson to Learn##26 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept Moonglade##5921 |goto Darnassus 35.37,8.4
step
  only Druid
  talk Mathrengyl Bearwalker##4217
  accept Lessons Anew##6121 |goto Darnassus 35.37,8.4
step
  talk Lotherias##6034
  accept Moonglow Vest##1582 |goto Darnassus 64.4,22.22
step
  talk Cavindra##13697
  accept Legends of Maraudon##7044 |goto Desolace 32.1,63.96
step
  talk Keeper Marandis##13698
  accept Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  talk Zaetar's Spirit##12238
  accept Seed of Life##7066
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Arch Druid Fandral Staghelm##3516
  accept The New Frontier##6761 |goto Darnassus 34.81,9.26
step
  talk Cenarion Emissary Jademoon##15187
  accept Taking Back Silithus##8275 |goto Ironforge 58.54,47.32
step
  talk Beetix Ficklespragg##15189
  accept Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  talk Calandrath##15174
  accept Desert Recipe##8307 |goto Silithus 51.89,39.16
step
  talk Geologist Larksbane##15183
  accept The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  click Wanted Poster: Deathclasp##180448
  accept Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 51.35,38.27
step
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  kill Hive'Ashi Stinger##11698 |goto Silithus 48.5,41.14 |tip Loot the quest item here — it starts the quest.
  accept Brann Bronzebeard's Lost Letter##8308 |goto Silithus 48.5,41.14
step
  talk Bor Wildmane##15306
  accept Secret Communication##8318 |goto Silithus 48.57,37.78
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
  talk Windcaller Kaldon##15540
  accept Field Duty##8507 |goto Silithus 49.98,36.35
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8595 |goto Ahn'Qiraj - Raid -1,-1
step
  kill Ossirian the Unscarred##15339 |goto Ruins of Ahn'Qiraj - Raid -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Fall of Ossirian##8791 |goto Ruins of Ahn'Qiraj - Raid -1,-1
step
  talk Windcaller Kaldon##15540
  accept Cenarion Battlegear##8800 |goto Silithus 49.98,36.35
step
  kill C'Thun##15727 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept C'Thun's Legacy##8801 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Lunar Festival Emissary##15892
  accept The Lunar Festival##8870 |goto Darnassus 32.14,13.12
step
  talk Lunar Festival Emissary##15892
  accept The Lunar Festival##8871 |goto Darnassus 32.14,13.12
step
  talk Lunar Festival Emissary##15892
  accept The Lunar Festival##8872 |goto Darnassus 32.14,13.12
step
  talk Dirk Thunderwood##16091
  accept The Perfect Poison##9023 |goto Silithus 52.13,39.14
step
  talk Aurel Goldleaf##15282
  accept A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  talk Windcaller Kaldon##15540
  accept Allegiance to Cenarion Circle##9338 |goto Silithus 49.98,36.35
step
  talk Rifleman Torrig##17082
  accept Report to Marshal Bluewall##9415 |goto Silithus 50.68,34.71
step
  kill Marauding Crust Burster##16857 |goto Hellfire Peninsula 47.92,63.19 |tip Loot the quest item here — it starts the quest.
  accept Missing Missive##9373 |goto Hellfire Peninsula 47.92,63.19
step
  note Bring 1 Embossed Leather Gloves, 5 Embossed Leather Boots and 5 Embossed Leather Cloaks to Lotherias in Darnassus.
  collect 1 Embossed Leather Gloves##4239 |q 1582 |goto Darnassus 64.4,22.22
step
  note Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
  collect Celebrian Diamond##17703 |q 7044 |goto Maraudon - Dungeon -1,-1 |tip {dropsfrom}Lord Vyletongue
step
  note Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
  kill Princess Theradras##12201 |q 7065 |goto Maraudon - Dungeon -1,-1 |elite
step
  note Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Wolf##1817 |q 4984 |goto Western Plaguelands 47.28,44.91
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
  collect 8 Stonelash Scorpid Stinger##20373 |q 8277 |goto Silithus 59.92,28.33 |tip {dropsfrom}Stonelash Scorpid
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to collect 8 Twilight Tablet Fragments.
  collect 8 Twilight Tablet Fragment##20378 |q 8284 |goto Silithus 28.49,26.89 |tip {dropsfrom}Whirling Invader, Twilight Tablet Fragment
step
  note Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
  kill Deathclasp##15196 |goto Silithus 45.07,92.31 |elite
  collect Deathclasp's Pincer##20385 |q 8283 |goto Silithus 45.07,92.31
step
  note Travel to Silithus and search for a Reliquary of Purity within the ruins of Southwind Village. If you are able to find it, return with it to Rabine Saturna in Nighthaven, Moonglade.
  collect Reliquary of Purity##22201 |q 5527 |goto Silithus 63.23,55.35 |tip {dropsfrom}Dusty Reliquary
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  note Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
  collect 10 Encrypted Twilight Text##20404 |q 8318 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  note Kill 10 Twilight Geolords, then return to Huum Wildmane in Cenarion Hold.
  kill Twilight Geolord##11881 |q 8320 |goto Silithus 26.97,43.89
step
  note Bor Wildmane at Cenarion Hold in Silithus wants you to destroy an Abyssal Templar and bring him an Abyssal Crest as proof of the deed.
  collect Abyssal Crest##20513 |q 8361 |goto Silithus 48.57,37.78 |tip {dropsfrom}Crimson Templar, Azure Templar, Hoary Templar
step
  note Obtain the Twilight Battle Orders and bring them Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Tactical Task Briefing X in order to complete this quest.
  kill Twilight Prophet##15308 |goto Silithus 22.82,68.66 |elite
  collect Twilight Battle Orders##20803 |q 8498 |goto Silithus 22.82,68.66
step
  note Kill 30 Hive'Ashi Stingers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing XII in order to complete this quest.
  kill Hive'Ashi Stinger##11698 |q 8501 |goto Silithus 48.5,41.14
step
  note Slay 30 Hive'Ashi Workers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing III in order to complete this quest.
  kill Hive'Ashi Worker##11721 |q 8502 |goto Silithus 45.66,22.96
step
  note Report for duty at the Ironforge Brigade post near Hive'Zora. Prepare your Unsigned Field Duty Papers and obtain Signed Field Duty Papers from Captain Blackanvil and return to Windcaller Kaldon at Cenarion Hold in Silithus.
  collect Signed Field Duty Papers##20810 |q 8507 |goto Silithus 49.98,36.35
step
  note Contact Cenarion Scout Azenel inside Hive'Zora and return the Hive'Zora Scout Report to Windcaller Proudhorn at Cenarion Hold. You must also bring Tactical Task Briefing VI in order to complete this quest.
  collect Hive'Zora Scout Report##21158 |q 8534
step
  note Slay 30 Hive'Zora Hive Sisters and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing V in order to complete this quest.
  kill Hive'Zora Hive Sister##11729 |q 8539 |goto Silithus 25.33,64.22
step
  collect Qiraji Lord's Insignia##21229 |q 8579 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  collect Qiraji Lord's Insignia##21229 |q 8595 |goto Ahn'Qiraj - Raid -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  note Slay 30 Hive'Zora Tunnelers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing VII in order to complete this quest.
  kill Hive'Zora Tunneler##11726 |q 8687 |goto Silithus 23.17,64.15
step
  note Contact Cenarion Scout Landion inside Hive'Regal and return the Hive'Regal Scout Report to Windcaller Proudhorn at Cenarion Hold. You must also bring Tactical Task Briefing VII in order to complete this quest.
  collect Hive'Regal Scout Report##21160 |q 8738
step
  note Contact Cenarion Scout Jalia inside Hive'Ashi and return the Hive'Ashi Scout Report to Windcaller Proudhorn at Cenarion Hold. You must also bring Tactical Task Briefing VIII in order to complete this quest.
  collect Hive'Ashi Scout Report##21161 |q 8739
step
  note Slay 30 Hive'Ashi Defenders and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing I in order to complete this quest.
  kill Hive'Ashi Defender##11722 |q 8770 |goto Silithus 43.79,22.03
step
  note Slay 30 Hive'Ashi Sandstalkers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing II in order to complete this quest.
  kill Hive'Ashi Sandstalker##11723 |q 8771 |goto Silithus 44.49,22.29
step
  note Slay 30 Hive'Zora Waywatchers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing VI in order to complete this quest.
  kill Hive'Zora Waywatcher##11725 |q 8772 |goto Silithus 24.86,61.68
step
  note Slay 30 Hive'Zora Reavers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing IV in order to complete this quest.
  kill Hive'Zora Reaver##11728 |q 8773 |goto Silithus 24.92,62.45
step
  note Kill 30 Hive'Regal Ambushers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing VIII in order to complete this quest.
  kill Hive'Regal Ambusher##11730 |q 8774 |goto Silithus 61.05,86.89
step
  note Kill 30 Hive'Regal Spitfires and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing IX in order to complete this quest.
  kill Hive'Regal Spitfire##11732 |q 8775 |goto Silithus 58.3,82.74
step
  note Kill 30 Hive'Regal Slavemakers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing X in order to complete this quest.
  kill Hive'Regal Slavemaker##11733 |q 8776 |goto Silithus 57.36,83.05
step
  note Kill 30 Hive'Regal Burrowers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing XI in order to complete this quest.
  kill Hive'Regal Burrower##11731 |q 8777 |goto Silithus 60.65,80.95
step
  note Bring 6 Oils of Immolation, 5 Goblin Rocket Fuel and 10 Dense Blasting Powder to Arcanist Nozzlespring near Hive'Zora in Silithus. You must also bring Logistics Task Briefing IV in order to complete this quest.
  collect 6 Oil of Immolation##8956 |q 8778 |goto Un'Goro Crater 56.08,49.67 |tip {dropsfrom}Bloodpetal Flayer, Jadefire Betrayer, Southsea Freebooter
step
  note Bring 8 Rugged Armor Kits and 8 Heavy Armor Kits to Janela Stouthammer at the Ironforge Brigade Outpost near Hive'Zora in Silithus. You must also bring Logistics Task Briefing VII in order to complete this quest.
  collect 8 Rugged Armor Kit##15564 |q 8780 |goto Tanaris 37.69,63.72 |tip {dropsfrom}Rabid Blisterpaw, Scorching Elemental
step
  note Bring 2 Moonsteel Broadswords to Janela Stouthammer at the Ironforge Brigade Outpost outside of Hive'Zora. You must also bring Logistics Task Briefing VI in order to complete this quest.
  collect 2 Moonsteel Broadsword##3853 |q 8781
step
  note Bring a Skin of Shadow, 3 Frayed Abomination Stitchings and 1 Twilight Cultist Robe to Aurel Goldleaf at Cenarion Hold in Silithus. You must also bring Logistics Task Briefing XI in order to complete this quest.
  collect Skin of Shadow##12753 |q 8829 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Risen Construct, Risen Bonewarder, Lady Illucia Barov
step
  note Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac.
  collect Venoxis's Venom Sac##22216 |q 9023 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}High Priest Venoxis
step
  note Aurel Goldleaf at Cenarion Hold in Silithus wants you to bring her 1 Abyssal Scepter. You must also be Honored with the Cenarion Circle.
  collect Abyssal Scepter##20515 |q 9248 |goto Silithus 51.96,38.16 |tip {dropsfrom}Prince Skaldrenox, High Marshal Whirlaxis, Baron Kazum
step
  collect Cenarion Combat Badge##20802 |q 9338 |goto Silithus 49.98,36.35
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5921 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dendrite Starblaze##11802
  turnin Lessons Anew##6121 |goto Moonglade 56.21,30.64
step
  talk Lotherias##6034
  turnin Moonglow Vest##1582 |goto Darnassus 64.4,22.22
step
  talk Celebras the Redeemed##13716
  turnin Legends of Maraudon##7044
step
  talk Keeper Marandis##13698
  turnin Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  talk Keeper Remulos##11832
  turnin Seed of Life##7066 |goto Moonglade 36.18,41.79
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Mathrengyl Bearwalker##4217
  turnin The New Frontier##6761 |goto Darnassus 35.37,8.4
step
  talk Windcaller Proudhorn##15191
  turnin Taking Back Silithus##8275 |goto Silithus 51.15,38.29
step
  talk Beetix Ficklespragg##15189
  turnin Deadly Desert Venom##8277 |goto Silithus 51.61,38.63
step
  turnin Desert Recipe##8307 |goto Silithus 37.94,45.31
step
  talk Geologist Larksbane##15183
  turnin The Twilight Mystery##8284 |goto Silithus 49.67,37.46
step
  talk Vish Kozus##15182
  turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 50.75,33.65
step
  talk Rabine Saturna##11801
  turnin A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Rutgar Glyphshaper##15170
  turnin Brann Bronzebeard's Lost Letter##8308 |goto Silithus 41.28,88.45
step
  talk Bor Wildmane##15306
  turnin Secret Communication##8318 |goto Silithus 48.57,37.78
step
  talk Huum Wildmane##15270
  turnin Twilight Geolords##8320 |goto Silithus 48.62,37.87
step
  talk Aurel Goldleaf##15282
  turnin Aurel Goldleaf##8331 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  turnin Goldleaf's Discovery##8343 |goto Silithus 51.96,38.16
step
  talk Bor Wildmane##15306
  turnin Abyssal Contacts##8361 |goto Silithus 48.57,37.78
step
  talk Keeper Remulos##11832
  turnin Shrouded in Nightmare##8446 |goto Moonglade 36.18,41.79
step
  talk Commander Mar'alith##15181
  turnin Twilight Battle Orders##8498 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Ashi Stingers##8501 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Ashi Workers##8502 |goto Silithus 49.2,34.18
step
  talk Windcaller Kaldon##15540
  turnin Field Duty##8507 |goto Silithus 49.98,36.35
step
  talk Windcaller Proudhorn##15191
  turnin Hive'Zora Scout Report##8534 |goto Silithus 51.15,38.29
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Zora Hive Sisters##8539 |goto Silithus 49.2,34.18
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8595 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Zora Tunnelers##8687 |goto Silithus 49.2,34.18
step
  talk Windcaller Proudhorn##15191
  turnin Hive'Regal Scout Report##8738 |goto Silithus 51.15,38.29
step
  talk Windcaller Proudhorn##15191
  turnin Hive'Ashi Scout Report##8739 |goto Silithus 51.15,38.29
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Ashi Defenders##8770 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Ashi Sandstalkers##8771 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Zora Waywatchers##8772 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Zora Reavers##8773 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Regal Ambushers##8774 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Regal Spitfires##8775 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Regal Slavemakers##8776 |goto Silithus 49.2,34.18
step
  talk Commander Mar'alith##15181
  turnin Target: Hive'Regal Burrowers##8777 |goto Silithus 49.2,34.18
step
  talk Arcanist Nozzlespring##15444
  turnin The Ironforge Brigade Needs Explosives!##8778 |goto Silithus 32.54,52.03
step
  talk Janela Stouthammer##15443
  turnin Armor Kits for the Field##8780 |goto Silithus 32.88,52.53
step
  talk Janela Stouthammer##15443
  turnin Arms for the Field##8781 |goto Silithus 32.88,52.53
step
  talk Commander Mar'alith##15181
  turnin The Fall of Ossirian##8791 |goto Silithus 49.2,34.18
step
  talk Vargus##15176
  turnin Cenarion Battlegear##8800 |goto Silithus 51.23,38.86
step
  talk Caelestrasz##15379
  turnin C'Thun's Legacy##8801 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Aurel Goldleaf##15282
  turnin The Ultimate Deception##8829 |goto Silithus 51.96,38.16
step
  talk Lunar Festival Harbinger##15895
  turnin The Lunar Festival##8870 |goto Darnassus 33.89,13.87
step
  talk Lunar Festival Harbinger##15895
  turnin The Lunar Festival##8871 |goto Darnassus 33.89,13.87
step
  talk Lunar Festival Harbinger##15895
  turnin The Lunar Festival##8872 |goto Darnassus 33.89,13.87
step
  talk Dirk Thunderwood##16091
  turnin The Perfect Poison##9023 |goto Silithus 52.13,39.14
step
  talk Aurel Goldleaf##15282
  turnin A Humble Offering##9248 |goto Silithus 51.96,38.16
step
  talk Windcaller Kaldon##15540
  turnin Allegiance to Cenarion Circle##9338 |goto Silithus 49.98,36.35
step
  talk Marshal Bluewall##17080
  turnin Report to Marshal Bluewall##9415 |goto Silithus 33.29,51.06
step
  talk Thiah Redmane##16991
  turnin Missing Missive##9373 |goto Hellfire Peninsula 15.7,52.09
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6122 |goto Moonglade 56.21,30.64
step
  talk Mathrengyl Bearwalker##4217
  accept Rabine Saturna##6762 |goto Darnassus 35.37,8.4
step
  talk Windcaller Proudhorn##15191
  accept Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  talk Beetix Ficklespragg##15189
  accept Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  click Sandy Cookbook##180503
  accept Sharing the Knowledge##8313 |goto Silithus 37.94,45.31
step
  talk Geologist Larksbane##15183
  accept The Deserter##8285 |goto Silithus 49.67,37.46
step
  talk Rabine Saturna##11801
  accept Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Commander Mar'alith##15181
  accept Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Bor Wildmane##15306
  accept Encrypted Twilight Texts##8319 |goto Silithus 48.57,37.78
step
  talk Huum Wildmane##15270
  accept Vyral the Vile##8321 |goto Silithus 48.62,37.87
step
  talk Aurel Goldleaf##15282
  accept Dukes of the Council##8332 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  accept Lords of the Council##8341 |goto Silithus 51.96,38.16
step
  talk Bor Wildmane##15306
  accept Abyssal Crests##8362 |goto Silithus 48.57,37.78
step
  talk Caelestrasz##15379
  accept The Savior of Kalimdor##8802 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Marshal Bluewall##17080
  accept Scouring the Desert##9419 |goto Silithus 33.29,51.06
step
  only Druid
  note Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by the falls.
  collect Filled Cliffspring Falls Sampler##15845 |q 6122 |goto Moonglade 56.21,30.64
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to kill 15 Dredge Strikers.
  kill Dredge Striker##11740 |q 8280 |goto Silithus 56.37,29.6
step
  note Destroy 8 Diseased Grizzlies, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Grizzly##1816 |q 4985 |goto Western Plaguelands 59.01,51.68
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
  collect 3 Stonelash Flayer Stinger##20375 |q 8278 |goto Silithus 38.04,77.94 |tip {dropsfrom}Stonelash Flayer
step
  note Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade.
  collect Sealed Reliquary of Purity##18540 |q 5526 |goto Moonglade 51.69,45.1
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  collect Head of the Broodlord Lashlayer##20383 |q 8288 |goto Blackwing Lair - Raid -1,-1 |raid |tip {dropsfrom}Broodlord Lashlayer
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.
  kill Mistress Natalia Mar'alith##15215 |q 8306
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 41.28,88.45
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 48.5,41.14 |tip {dropsfrom}Hive'Ashi Stinger, Hive'Ashi Worker, Hive'Ashi Defender
step
  collect Encrypted Twilight Text##20404 |q 8319 |goto Silithus 40.86,42.22 |tip {dropsfrom}Twilight Keeper Havunth, Twilight Avenger, Twilight Geolord
step
  note Bring Vyral's Signet Ring to Huum Wildmane in Cenarion Hold.
  collect Vyral's Signet Ring##20466 |q 8321 |goto Silithus 72.39,15.58 |tip {dropsfrom}Vyral the Vile
step
  note Bring 1 Large Brilliant Shard and 3 Abyssal Crests to Aurel Goldleaf in Cenarion Hold.
  collect 1 Large Brilliant Shard##14344 |q 8332 |goto Silithus 51.96,38.16
step
  note Bring 5 Large Brilliant Shards and 3 Abyssal Signets to Aurel Goldleaf in Cenarion Hold.
  collect 5 Large Brilliant Shard##14344 |q 8341 |goto Silithus 51.96,38.16
step
  collect Abyssal Crest##20513 |q 8362 |goto Silithus 48.57,37.78 |tip {dropsfrom}Crimson Templar, Azure Templar, Hoary Templar
step
  note Find and deliver Silithyst to the Silithyst Extractor, then speak with Marshal Bluewall at the Alliance encampment near Hive'Zora.
  kill Silithus Dust Turnin Quest Doodad##17090 |q 9419 |goto Silithus 32.95,50.81
step
  only NightElf Druid
  talk Tajarri##11799
  turnin Trial of the Lake##29 |goto Moonglade 36.52,40.1
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Alanndarian Nightsong##3702
  turnin The Principal Source##6122 |goto Darkshore 37.69,40.66
step
  talk Rabine Saturna##11801
  turnin Rabine Saturna##6762 |goto Moonglade 51.69,45.1
step
  talk Windcaller Proudhorn##15191
  turnin Securing the Supply Lines##8280 |goto Silithus 51.15,38.29
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.73,64.66
step
  talk Beetix Ficklespragg##15189
  turnin Noggle's Last Hope##8278 |goto Silithus 51.61,38.63
step
  talk Calandrath##15174
  turnin Sharing the Knowledge##8313 |goto Silithus 51.89,39.16
step
  talk Hermit Ortell##15194
  turnin The Deserter##8285 |goto Silithus 67.19,69.76
step
  talk Rabine Saturna##11801
  turnin Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  talk Baristolth of the Shifting Sands##15180
  turnin Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Commander Mar'alith##15181
  turnin Into The Maw of Madness##8306 |goto Silithus 49.2,34.18
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Bor Wildmane##15306
  turnin Encrypted Twilight Texts##8319 |goto Silithus 48.57,37.78
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
  talk Bor Wildmane##15306
  turnin Abyssal Crests##8362 |goto Silithus 48.57,37.78
step
  talk Anachronos##15192
  turnin The Savior of Kalimdor##8802 |goto Tanaris 64.2,51.42
step
  talk Marshal Bluewall##17080
  turnin Scouring the Desert##9419 |goto Silithus 33.29,51.06
step
  only NightElf Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##272 |goto Moonglade 36.52,40.1
step
  only Druid
  talk Alanndarian Nightsong##3702
  accept Gathering the Cure##6123 |goto Darkshore 37.69,40.66
step
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
step
  talk Windcaller Proudhorn##15191
  accept Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  talk Calandrath##15174
  accept Kitchen Assistance##8317 |goto Silithus 51.89,39.16
step
  talk Noggle Ficklespragg##15190
  accept Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  talk Hermit Ortell##15194
  accept The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  talk Baristolth of the Shifting Sands##15180
  accept The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Aurel Goldleaf##15282
  accept Bor Wildmane##8349 |goto Silithus 51.96,38.16
step
  talk Aurel Goldleaf##15282
  accept Bor Wishes to Speak##8351 |goto Silithus 51.96,38.16
step
  only NightElf Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 272 |goto Moonglade 36.52,40.1
step
  only Druid
  note Bring 5 Earthroot and 12 Lunar Funguses to Alanndarian Nightsong in Auberdine so she may make a curative salve.
  collect 5 Earthroot##2449 |q 6123 |goto Westfall 31.27,61.14 |tip {dropsfrom}Riverpaw Herbalist, Swampwalker, Swampwalker Elder
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to slay 20 Dredge Crushers.
  kill Dredge Crusher##11741 |q 8281 |goto Silithus 37.84,53.47
step
  note Calandrath at Cenarion Hold needs a batch of 10 Smoked Desert Dumplings.
  collect Smoked Desert Dumplings##20452 |q 8317 |goto Silithus 51.89,39.16
step
  note Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
  collect Noggle's Satchel##20379 |q 8282 |goto Silithus 44.56,91.38
step
  note Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
  collect Twilight Lexicon - Chapter 1##20394 |q 8279 |goto Silithus 26.35,36.62 |tip {dropsfrom}Twilight Keeper Mayna
step
  note Collect 200 Silithid Carapace Fragments and return to Baristolth.
  collect 200 Silithid Carapace Fragment##20384 |q 8301 |goto Silithus 48.5,41.14 |tip {dropsfrom}Hive'Ashi Stinger, Hive'Ashi Worker, Hive'Ashi Defender
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##272 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Alanndarian Nightsong##3702
  turnin Gathering the Cure##6123 |goto Darkshore 37.69,40.66
step
  talk Layo Starstrike##13220
  turnin Wasteland##1124 |goto Silithus 81.87,18.93
step
  talk Windcaller Proudhorn##15191
  turnin Stepping Up Security##8281 |goto Silithus 51.15,38.29
step
  talk Calandrath##15174
  turnin Kitchen Assistance##8317 |goto Silithus 51.89,39.16
step
  talk Noggle Ficklespragg##15190
  turnin Noggle's Lost Satchel##8282 |goto Silithus 51.63,38.5
step
  talk Hermit Ortell##15194
  turnin The Twilight Lexicon##8279 |goto Silithus 67.19,69.76
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Bor Wildmane##15306
  turnin Bor Wildmane##8349 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  turnin Bor Wishes to Speak##8351 |goto Silithus 48.57,37.78
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##5061 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Alanndarian Nightsong##3702
  accept Curing the Sick##6124 |goto Darkshore 37.69,40.66
step
  talk Layo Starstrike##13220
  accept The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  talk Hermit Ortell##15194
  accept A Terrible Purpose##8287 |goto Silithus 67.19,69.76
step
  talk Baristolth of the Shifting Sands##15180
  accept Anachronos##8303 |goto Silithus 49.45,36.45
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Bor Wildmane##15306
  accept Signet of the Dukes##8348 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  accept Scepter of the Council##8352 |goto Silithus 48.57,37.78
step
  only Druid
  note Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore; doing so should cure them. Sickly Deer have been reported starting south of the Cliffspring River to the north of Auberdine and extending all the way into southern Darkshore where the edge of Ashenvale begins.
  use Cured Deer##12299 |q 6124 |tip {useit}
step
  note Free the spirits of 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village, and then return to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  kill Tortured Druid##12178 |q 1125 |goto Silithus 62.65,52.76
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 49.67,37.46 |tip {dropsfrom}Emissary Roman'khan
step
  note Bring the Abyssal Signet to Bor Wildmane in Cenarion Hold.
  collect Abyssal Signet##20514 |q 8348 |goto Silithus 48.57,37.78 |tip {dropsfrom}The Duke of Cynders, The Duke of Fathoms, The Duke of Shards
step
  note Bring an Abyssal Scepter to Bor Wildmane in Cenarion Hold.
  collect Abyssal Scepter##20515 |q 8352 |goto Silithus 48.57,37.78 |tip {dropsfrom}Prince Skaldrenox, High Marshal Whirlaxis, Baron Kazum
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Aquatic Form##5061 |goto Darnassus 35.37,8.4
step
  only Druid
  talk Dendrite Starblaze##11802
  turnin Curing the Sick##6124 |goto Moonglade 56.21,30.64
step
  talk Layo Starstrike##13220
  turnin The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
step
  talk Commander Mar'alith##15181
  turnin A Terrible Purpose##8287 |goto Silithus 49.2,34.18
step
  talk Anachronos##15192
  turnin Anachronos##8303 |goto Tanaris 64.2,51.42
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Bor Wildmane##15306
  turnin Signet of the Dukes##8348 |goto Silithus 48.57,37.78
step
  talk Bor Wildmane##15306
  turnin Scepter of the Council##8352 |goto Silithus 48.57,37.78
step
  only Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6125 |goto Moonglade 56.21,30.64
step
  talk Layo Starstrike##13220
  accept Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  talk Anachronos##15192
  accept Long Forgotten Memories##8305 |goto Tanaris 64.2,51.42
step
  only Warrior
  talk Geologist Larksbane##15183
  accept Armaments of War##8316 |goto Silithus 49.67,37.46
step
  talk Bor Wildmane##15306
  accept Abyssal Signets##8363 |goto Silithus 48.57,37.78
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
  note Scale the tower of Southwind Village and locate a means to stir the silithid hive into activity. Bring back anything unusual you may uncover when doing so to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  collect Encrusted Silithid Object##17346 |q 1126 |goto Silithus 81.87,18.93 |tip {dropsfrom}Hive'Ashi Ambusher
step
  collect Abyssal Signet##20514 |q 8363 |goto Silithus 48.57,37.78 |tip {dropsfrom}The Duke of Cynders, The Duke of Fathoms, The Duke of Shards
step
  only Druid
  talk Mathrengyl Bearwalker##4217
  turnin Power over Poison##6125 |goto Darnassus 35.37,8.4
step
  talk Layo Starstrike##13220
  turnin Hive in the Tower##1126 |goto Silithus 81.87,18.93
step
  turnin Long Forgotten Memories##8305 |goto Silithus 28.68,89.14
step
  only Warrior
  talk Geologist Larksbane##15183
  turnin Armaments of War##8316 |goto Silithus 49.67,37.46
step
  talk Bor Wildmane##15306
  turnin Abyssal Signets##8363 |goto Silithus 48.57,37.78
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
  talk Layo Starstrike##13220
  accept Umber, Archivist##6844 |goto Silithus 81.87,18.93
step
  click Crystalline Tear##180633
  accept A Pawn on the Eternal Board##8519 |goto Silithus 28.68,89.14
step
  talk Umber##11939
  turnin Umber, Archivist##6844 |goto Moonglade 44.88,35.6
step
  talk Anachronos##15192
  turnin A Pawn on the Eternal Board##8519 |goto Tanaris 64.2,51.42
step
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Rabine Saturna##11801
  turnin Uncovering Past Secrets##6845 |goto Moonglade 51.69,45.1
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Malfurion Stormrage##15362
  accept Eranikus, Tyrant of the Dream##8733
step
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Forest Wisp##15624
  turnin Eranikus, Tyrant of the Dream##8733 |goto Teldrassil 37.55,47.92
step
  talk Forest Wisp##15624
  accept Tyrande and Remulos##8734 |goto Teldrassil 37.55,47.92
step
  talk Keeper Remulos##11832
  turnin Tyrande and Remulos##8734 |goto Moonglade 36.18,41.79
]])
