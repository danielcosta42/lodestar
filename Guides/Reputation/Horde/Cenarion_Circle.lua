-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Cenarion Circle", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Tauren
  talk Turak Runetotem##3033
  accept A Lesson to Learn##27 |goto Thunder Bluff 76.48,27.22
step
  only Tauren
  talk Turak Runetotem##3033
  accept Moonglade##5922 |goto Thunder Bluff 76.48,27.22
step
  only Tauren
  talk Gennia Runetotem##3064
  accept Heeding the Call##5926 |goto Mulgore 48.48,59.64
step
  talk Cavindra##13697
  accept Legends of Maraudon##7044 |goto Desolace 32.1,63.96
step
  talk Selendra##13699
  accept Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  talk Zaetar's Spirit##12238
  accept Seed of Life##7066
step
  talk Mulgris Deepriver##10739
  accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Rabine Saturna##1123 |goto Thunder Bluff 78.62,28.56
step
  talk Cenarion Emissary Blackhoof##15188
  accept Taking Back Silithus##8276 |goto Orgrimmar 47.64,65.76
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
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
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
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8595 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Windcaller Kaldon##15540
  accept Field Duty##8731 |goto Silithus 49.98,36.35
step
  talk Windcaller Kaldon##15540
  accept Cenarion Battlegear##8800 |goto Silithus 49.98,36.35
step
  talk Lunar Festival Herald##15891
  accept The Lunar Festival##8873 |goto Orgrimmar 41.46,31.74
step
  talk Lunar Festival Herald##15891
  accept The Lunar Festival##8874 |goto Orgrimmar 41.46,31.74
step
  talk Lunar Festival Herald##15891
  accept The Lunar Festival##8875 |goto Orgrimmar 41.46,31.74
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
  note Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
  get Legends of Maraudon |q 7044 |goto Desolace 32.1,63.96
step
  note Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace.
  kill Princess Theradras##12201 |q 7064 |goto Maraudon - Dungeon -1,-1
step
  note Destroy 8 Diseased Wolves, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Wolf##1817 |q 4984 |goto Western Plaguelands 47.28,44.91
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Return to her when you have completed the task.
  get Deadly Desert Venom |q 8277 |goto Silithus 51.61,38.63
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to collect 8 Twilight Tablet Fragments.
  get The Twilight Mystery |q 8284 |goto Silithus 49.67,37.46
step
  note Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard.
  get Wanted - Deathclasp, Terror of the Sands |q 8283
step
  note Travel to Silithus and search for a Reliquary of Purity within the ruins of Southwind Village. If you are able to find it, return with it to Rabine Saturna in Nighthaven, Moonglade.
  get A Reliquary of Purity |q 5527 |goto Moonglade 51.69,45.1
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  get Dearest Natalia |q 8304 |goto Silithus 40.62,89.18
step
  note Bring 10 Encrypted Twilight Texts to Bor Wildmane in Cenarion Hold.
  get Secret Communication |q 8318 |goto Silithus 48.57,37.78
step
  note Kill 10 Twilight Geolords, then return to Huum Wildmane in Cenarion Hold.
  kill Twilight Geolord##11881 |q 8320 |goto Silithus 26.97,43.89
step
  note Bor Wildmane at Cenarion Hold in Silithus wants you to destroy an Abyssal Templar and bring him an Abyssal Crest as proof of the deed.
  get Abyssal Contacts |q 8361 |goto Silithus 48.57,37.78
step
  note Obtain the Twilight Battle Orders and bring them Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Tactical Task Briefing X in order to complete this quest.
  get Twilight Battle Orders |q 8498
step
  note Kill 30 Hive'Ashi Stingers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing XII in order to complete this quest.
  kill Hive'Ashi Stinger##11698 |q 8501 |goto Silithus 48.5,41.14
step
  note Slay 30 Hive'Ashi Workers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing III in order to complete this quest.
  kill Hive'Ashi Worker##11721 |q 8502 |goto Silithus 45.66,22.96
step
  note Contact Cenarion Scout Azenel inside Hive'Zora and return the Hive'Zora Scout Report to Windcaller Proudhorn at Cenarion Hold. You must also bring Tactical Task Briefing VI in order to complete this quest.
  get Hive'Zora Scout Report |q 8534
step
  note Slay 30 Hive'Zora Hive Sisters and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing V in order to complete this quest.
  kill Hive'Zora Hive Sister##11729 |q 8539 |goto Silithus 25.33,64.22
step
  get Mortal Champions |q 8579 |goto Ahn'Qiraj - Raid -1,-1
step
  get Mortal Champions |q 8595 |goto Ahn'Qiraj - Raid -1,-1
step
  note Slay 30 Hive'Zora Tunnelers and report back to Commander Mar'alith at Cenarion Hold in Silithus. You must also bring Combat Task Briefing VII in order to complete this quest.
  kill Hive'Zora Tunneler##11726 |q 8687 |goto Silithus 23.17,64.15
step
  note Report to Krug Skullsplit at the Orgrimmar Legion post in front of Hive'Regal. Prepare your Unsigned Field Duty Papers, obtain Signed Field Duty Papers and bring them to Windcaller Kaldon in Cenarion Hold.
  get Field Duty |q 8731 |goto Silithus 49.98,36.35
step
  note Contact Cenarion Scout Landion inside Hive'Regal and return the Hive'Regal Scout Report to Windcaller Proudhorn at Cenarion Hold. You must also bring Tactical Task Briefing VII in order to complete this quest.
  get Hive'Regal Scout Report |q 8738
step
  note Contact Cenarion Scout Jalia inside Hive'Ashi and return the Hive'Ashi Scout Report to Windcaller Proudhorn at Cenarion Hold. You must also bring Tactical Task Briefing VIII in order to complete this quest.
  get Hive'Ashi Scout Report |q 8739
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
  note Bring 6 Powerful Mojo, 6 Flasks of Big Mojo and 8 Oils of Immolation to Shadow Priestess Shai near Hive'Regal in Silithus. You must also bring Logistics Task Briefing IV in order to complete this quest.
  get The Orgrimmar Legion Needs Mojo! |q 8785
step
  note Bring 3 Massive Iron Axes to Merok Longstride at the Orgrimmar Legion camp outside of Hive'Regal. You must also bring Logistics Task Briefing VI in order to complete this quest.
  get Arms for the Field |q 8786
step
  note Bring 8 Rugged Armor Kits and 8 Heavy Armor Kits to Merok Longstride near Hive'Regal. You must also bring Logistics Task Briefing VII in order to complete this quest.
  get Armor Kits for the Field |q 8787
step
  note Bring a Skin of Shadow, 3 Frayed Abomination Stitchings and 1 Twilight Cultist Robe to Aurel Goldleaf at Cenarion Hold in Silithus. You must also bring Logistics Task Briefing XI in order to complete this quest.
  get The Ultimate Deception |q 8829
step
  note Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac.
  get The Perfect Poison |q 9023 |goto Silithus 52.13,39.14
step
  note Aurel Goldleaf at Cenarion Hold in Silithus wants you to bring her 1 Abyssal Scepter. You must also be Honored with the Cenarion Circle.
  get A Humble Offering |q 9248 |goto Silithus 51.96,38.16
step
  get Allegiance to Cenarion Circle |q 9338 |goto Silithus 49.98,36.35
step
  only Tauren
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##27 |goto Moonglade 56.21,30.64
step
  only Tauren
  talk Dendrite Starblaze##11802
  turnin Moonglade##5922 |goto Moonglade 56.21,30.64
step
  only Tauren
  talk Turak Runetotem##3033
  turnin Heeding the Call##5926 |goto Thunder Bluff 76.48,27.22
step
  talk Celebras the Redeemed##13716
  turnin Legends of Maraudon##7044
step
  talk Selendra##13699
  turnin Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  talk Keeper Remulos##11832
  turnin Seed of Life##7066 |goto Moonglade 36.18,41.79
step
  talk Mulgris Deepriver##10739
  turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.73,64.66
step
  talk Rabine Saturna##11801
  turnin Rabine Saturna##1123 |goto Moonglade 51.69,45.1
step
  talk Windcaller Proudhorn##15191
  turnin Taking Back Silithus##8276 |goto Silithus 51.15,38.29
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
  talk Windcaller Kaldon##15540
  turnin Field Duty##8731 |goto Silithus 49.98,36.35
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
  talk Shadow Priestess Shai##15615
  turnin The Orgrimmar Legion Needs Mojo!##8785 |goto Silithus 51.34,68.8
step
  talk Merok Longstride##15613
  turnin Arms for the Field##8786 |goto Silithus 51.86,67.97
step
  talk Merok Longstride##15613
  turnin Armor Kits for the Field##8787 |goto Silithus 51.86,67.97
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
  turnin The Lunar Festival##8873 |goto Darnassus 33.89,13.87
step
  talk Lunar Festival Harbinger##15895
  turnin The Lunar Festival##8874 |goto Darnassus 33.89,13.87
step
  talk Lunar Festival Harbinger##15895
  turnin The Lunar Festival##8875 |goto Darnassus 33.89,13.87
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
  talk Thiah Redmane##16991
  turnin Missing Missive##9373 |goto Hellfire Peninsula 15.7,52.09
step
  only Tauren
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##28 |goto Moonglade 56.21,30.64
step
  only Tauren
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  talk Turak Runetotem##3033
  accept Lessons Anew##6126 |goto Thunder Bluff 76.48,27.22
step
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
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
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to kill 15 Dredge Strikers.
  kill Dredge Striker##11740 |q 8280 |goto Silithus 56.37,29.6
step
  note Destroy 8 Diseased Grizzlies, and then return to Mulgris Deepriver at the Writhing Haunt, Western Plaguelands.
  kill Diseased Grizzly##1816 |q 4985 |goto Western Plaguelands 59.01,51.68
step
  note Beetix Ficklespragg at Cenarion Hold in Silithus wants you to gather 3 Stonelash Pincer Stingers, 3 Stonelash Flayer Stingers and 3 Rock Stalker Fangs.
  get Noggle's Last Hope |q 8278 |goto Silithus 51.61,38.63
step
  note Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade.
  get Shards of the Felvine |q 5526 |goto Moonglade 51.69,45.1
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  get Only One May Rise |q 8288 |goto Silithus 49.45,36.45
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.
  kill Mistress Natalia Mar'alith##15215 |q 8306
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  get Glyph Chasing |q 8309 |goto Silithus 41.28,88.45
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  get Breaking the Code |q 8310 |goto Silithus 40.81,88.86
step
  get Encrypted Twilight Texts |q 8319 |goto Silithus 48.57,37.78
step
  note Bring Vyral's Signet Ring to Huum Wildmane in Cenarion Hold.
  get Vyral the Vile |q 8321 |goto Silithus 48.62,37.87
step
  note Bring 1 Large Brilliant Shard and 3 Abyssal Crests to Aurel Goldleaf in Cenarion Hold.
  get Dukes of the Council |q 8332 |goto Silithus 51.96,38.16
step
  note Bring 5 Large Brilliant Shards and 3 Abyssal Signets to Aurel Goldleaf in Cenarion Hold.
  get Lords of the Council |q 8341 |goto Silithus 51.96,38.16
step
  get Abyssal Crests |q 8362 |goto Silithus 48.57,37.78
step
  only Tauren
  talk Tajarri##11799
  turnin Trial of the Lake##28 |goto Moonglade 36.52,40.1
step
  only Tauren
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  talk Dendrite Starblaze##11802
  turnin Lessons Anew##6126 |goto Moonglade 56.21,30.64
step
  talk Layo Starstrike##13220
  turnin Wasteland##1124 |goto Silithus 81.87,18.93
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
  only Tauren
  talk Tajarri##11799
  accept Trial of the Sea Lion##30 |goto Moonglade 36.52,40.1
step
  talk Dendrite Starblaze##11802
  accept The Principal Source##6127 |goto Moonglade 56.21,30.64
step
  talk Layo Starstrike##13220
  accept The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
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
  only Tauren
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  get Trial of the Sea Lion |q 30 |goto Moonglade 36.52,40.1
step
  note Use the Empty Dreadmist Peak Sampler to draw a sample of water from a pool at the top of the peak.
  get The Principal Source |q 6127 |goto Moonglade 56.21,30.64
step
  note Free the spirits of 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village, and then return to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  kill Tortured Druid##12178 |q 1125 |goto Silithus 62.65,52.76
step
  note Windcaller Proudhorn at Cenarion Hold in Silithus wants you to slay 20 Dredge Crushers.
  kill Dredge Crusher##11741 |q 8281 |goto Silithus 37.84,53.47
step
  note Calandrath at Cenarion Hold needs a batch of 10 Smoked Desert Dumplings.
  get Kitchen Assistance |q 8317 |goto Silithus 51.89,39.16
step
  note Retrieve Noggle's Satchel from the mountains in the south of Silithus and return it to him at Cenarion Hold.
  get Noggle's Lost Satchel |q 8282 |goto Silithus 51.63,38.5
step
  note Bring the three chapters of the Twilight Lexicon to Hermit Ortell in Silithus.
  get The Twilight Lexicon |q 8279 |goto Silithus 67.19,69.76
step
  note Collect 200 Silithid Carapace Fragments and return to Baristolth.
  get The Path of the Righteous |q 8301 |goto Silithus 49.45,36.45
step
  only Tauren
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##30 |goto Moonglade 56.21,30.64
step
  talk Tonga Runetotem##3448
  turnin The Principal Source##6127 |goto The Barrens 52.26,31.93
step
  talk Layo Starstrike##13220
  turnin The Spirits of Southwind##1125 |goto Silithus 81.87,18.93
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
  only Tauren
  talk Dendrite Starblaze##11802
  accept Aquatic Form##31 |goto Moonglade 56.21,30.64
step
  talk Tonga Runetotem##3448
  accept Gathering the Cure##6128 |goto The Barrens 52.26,31.93
step
  talk Layo Starstrike##13220
  accept Hive in the Tower##1126 |goto Silithus 81.87,18.93
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
  note Bring 5 Earthroot and 5 Kodo Horns to Tonga Runetotem at the Crossroads so he may make a curative salve.
  get Gathering the Cure |q 6128 |goto The Barrens 52.26,31.93
step
  note Scale the tower of Southwind Village and locate a means to stir the silithid hive into activity. Bring back anything unusual you may uncover when doing so to Layo Starstrike at the Valor's Rest graveyard of Silithus.
  get Hive in the Tower |q 1126 |goto Silithus 81.87,18.93
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  get The Calling |q 8315 |goto Silithus 49.67,37.46
step
  note Bring the Abyssal Signet to Bor Wildmane in Cenarion Hold.
  get Signet of the Dukes |q 8348 |goto Silithus 48.57,37.78
step
  note Bring an Abyssal Scepter to Bor Wildmane in Cenarion Hold.
  get Scepter of the Council |q 8352 |goto Silithus 48.57,37.78
step
  only Tauren
  talk Turak Runetotem##3033
  turnin Aquatic Form##31 |goto Thunder Bluff 76.48,27.22
step
  talk Tonga Runetotem##3448
  turnin Gathering the Cure##6128 |goto The Barrens 52.26,31.93
step
  talk Layo Starstrike##13220
  turnin Hive in the Tower##1126 |goto Silithus 81.87,18.93
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
  talk Tonga Runetotem##3448
  accept Curing the Sick##6129 |goto The Barrens 52.26,31.93
step
  talk Layo Starstrike##13220
  accept Umber, Archivist##6844 |goto Silithus 81.87,18.93
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
  only Mage
  talk Geologist Larksbane##15183
  accept Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only Warlock
  talk Geologist Larksbane##15183
  accept Armaments of War##8381 |goto Silithus 49.67,37.46
step
  talk Geologist Larksbane##15183
  accept Armaments of War##8382 |goto Silithus 49.67,37.46
step
  note Use the Curative Animal Salve on 10 Sickly Gazelles that are located throughout the northern part of the Barrens; doing so should cure them. Sickly Gazelles have been reported north of the east-west road that runs through the Crossroads.
  kill Cured Gazelle##12297 |q 6129
step
  get Abyssal Signets |q 8363 |goto Silithus 48.57,37.78
step
  talk Dendrite Starblaze##11802
  turnin Curing the Sick##6129 |goto Moonglade 56.21,30.64
step
  talk Umber##11939
  turnin Umber, Archivist##6844 |goto Moonglade 44.88,35.6
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
  only Mage
  talk Geologist Larksbane##15183
  turnin Armaments of War##8380 |goto Silithus 49.67,37.46
step
  only Warlock
  talk Geologist Larksbane##15183
  turnin Armaments of War##8381 |goto Silithus 49.67,37.46
step
  talk Geologist Larksbane##15183
  turnin Armaments of War##8382 |goto Silithus 49.67,37.46
step
  talk Dendrite Starblaze##11802
  accept Power over Poison##6130 |goto Moonglade 56.21,30.64
step
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  talk Turak Runetotem##3033
  turnin Power over Poison##6130 |goto Thunder Bluff 76.48,27.22
step
  talk Rabine Saturna##11801
  turnin Uncovering Past Secrets##6845 |goto Moonglade 51.69,45.1
step
  talk Anachronos##15192
  turnin A Pawn on the Eternal Board##8519 |goto Tanaris 64.2,51.42
step
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Malfurion Stormrage##15362
  accept Eranikus, Tyrant of the Dream##8733
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
