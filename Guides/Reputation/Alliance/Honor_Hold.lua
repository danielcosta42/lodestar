-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Honor Hold", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Lieutenant Amadi##16820
  accept Fel Orc Scavengers##10482 |goto Hellfire Peninsula 50.91,60.19
step
  talk Warrant Officer Tracy Proudwell##18266
  accept Hellfire Fortifications##10106 |goto Hellfire Peninsula 56.33,62.85
step
  talk Wing Commander Dabir'ee##19409
  accept Zeth'Gor Must Burn!##10895 |goto Hellfire Peninsula 71.4,62.48
step
  talk Honor Guard Wesilow##16827
  accept Unyielding Souls##10050 |goto Hellfire Peninsula 50.88,60.35
step
  talk Dumphry##21209
  accept Waste Not, Want Not##10055 |goto Hellfire Peninsula 51.12,60.3
step
  talk Father Malgor Devidicus##16825
  accept An Old Gift##10058 |goto Hellfire Peninsula 54.29,63.58
step
  talk Watch Commander Relthorn Netherwane##16841
  accept Through the Dark Portal##10119 |goto Blasted Lands 58.32,55.9
step
  talk Force Commander Danath Trollbane##16819
  accept The Legion Reborn##10141 |goto Hellfire Peninsula 56.64,66.7
step
  kill Warbringer Arix'Amal##19298 |goto Hellfire Peninsula 53.09,26.47 |tip Loot the quest item here — it starts the quest.
  accept The Dark Missive##10395 |goto Hellfire Peninsula 53.09,26.47
step
  talk Sid Limbardi##16826
  accept The Longbeards##9558 |goto Hellfire Peninsula 54.22,63.6
step
  talk Mirren Longbeard##16851
  accept Gaining Mirren's Trust##9563 |goto Hellfire Peninsula 23.97,72.35
step
  talk Gremni Longbeard##16850
  accept Rampaging Ravagers##9385 |goto Hellfire Peninsula 23.89,72.17
step
  talk Force Commander Danath Trollbane##16819
  accept Turning the Tide##9492 |goto Hellfire Peninsula 56.64,66.7
step
  talk Field Commander Romus##16830
  accept Pride of the Fel Horde##9493 |goto Hellfire Peninsula 56.84,62.72
step
  talk Magus Zabraxis##16829
  accept Fel Embers##9494 |goto Hellfire Peninsula 53.86,65.74
step
  talk Randy Whizzlesprocket##17288
  accept Imprisoned in the Citadel##9524
step
  kill Smith Gorlunk##22037 |goto Shadowmoon Valley 67.64,36.2 |tip Loot the quest item here — it starts the quest.
  accept Entry Into the Citadel##10754 |goto Shadowmoon Valley 67.64,36.2
step
  kill Magtheridon##17257 |goto Magtheridon's Lair - Raid -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Fall of Magtheridon##11002 |goto Magtheridon's Lair - Raid -1,-1
step
  note Capture the Overlook, the Stadium and Broken Hill, then return to Warrant Officer Tracy Proudwell in Honor Hold in Hellfire Peninsula.
  get Hellfire Fortifications |q 10106 |goto Hellfire Peninsula 39.94,48.39
step
  note Use the smoke beacon at each of Zeth'Gor's towers, and then return to Wing Commander Dabir'ee at Expedition Point.
  get Zeth'Gor Must Burn! |q 10895 |goto Hellfire Peninsula 67.98,66.73
step
  note Honor Guard Wesilow wants you to defeat 12 Unyielding Footmen, 10 Unyielding Sorcerers, and 5 Unyielding Knights at the Expedition Armory to the south.
  kill Unyielding Footman##16904 |q 10050 |goto Hellfire Peninsula 55.38,78.36
step
  note Bring 8 pieces of Salvaged Metal and 8 pieces of Salvaged Wood to Dumphry at Honor Hold.
  collect 8 Salvaged Metal##25912 |q 10055 |goto Hellfire Peninsula 57.71,53.38 |tip {dropsfrom}Salvageable Metal
step
  note Retrieve Mysteries of the Light and return it to Father Malgor Devidicus at Honor Hold.
  collect Mysteries of the Light##25938 |q 10058 |goto Hellfire Peninsula 54.96,86.81
step
  note Mirren Longbeard wants you to bring him 1 Nethergarde Bitter. You must also attain Friendly reputation with Honor Hold to complete this quest.
  collect Nethergarde Bitter##23848 |q 9563 |goto Hellfire Peninsula 23.97,72.35
step
  note Kill 10 Quillfang Ravagers and return to Gremni Longbeard in Hellfire Peninsula.
  kill Quillfang Ravager##16934 |q 9385 |goto Hellfire Peninsula 22.66,66.55
step
  note Bring Warchief Kargath's Fist to Force Commander Danath Trollbane in Honor Hold.
  collect Warchief Kargath's Fist##23723 |q 9492 |goto The Shattered Halls - Dungeon -1,-1 |elite |tip {dropsfrom}Warchief Kargath Bladefist, Warchief Kargath Bladefist (1)
step
  note Field Commander Romus at Honor Hold wants you to kill 8 Shattered Hand Legionnaires, 4 Shattered Hand Centurions, and 4 Shattered Hand Champions.
  kill Shattered Hand Legionnaire##16700 |q 9493 |goto The Shattered Halls - Dungeon -1,-1 |elite
step
  note Magus Zabraxis at Honor Hold wants you to bring her a Fel Ember.
  collect Fel Ember##23726 |q 9494 |goto Hellfire Peninsula 53.86,65.74
step
  note Rescue Captain Alina inside Hellfire Citadel before she is executed.
  kill Captain Alina##17290 |q 9524
step
  talk Lieutenant Amadi##16820
  turnin Fel Orc Scavengers##10482 |goto Hellfire Peninsula 50.91,60.19
step
  talk Warrant Officer Tracy Proudwell##18266
  turnin Hellfire Fortifications##10106 |goto Hellfire Peninsula 56.33,62.85
step
  talk Wing Commander Dabir'ee##19409
  turnin Zeth'Gor Must Burn!##10895 |goto Hellfire Peninsula 71.4,62.48
step
  talk Honor Guard Wesilow##16827
  turnin Unyielding Souls##10050 |goto Hellfire Peninsula 50.88,60.35
step
  talk Dumphry##21209
  turnin Waste Not, Want Not##10055 |goto Hellfire Peninsula 51.12,60.3
step
  talk Father Malgor Devidicus##16825
  turnin An Old Gift##10058 |goto Hellfire Peninsula 54.29,63.58
step
  talk Commander Duron##19229
  turnin Through the Dark Portal##10119 |goto Hellfire Peninsula 87.34,50.75
step
  talk Sergeant Altumus##19309
  turnin The Legion Reborn##10141 |goto Hellfire Peninsula 61.72,60.95
step
  talk Warp-Scryer Kryv##16839
  turnin The Dark Missive##10395 |goto Hellfire Peninsula 56.69,66.52
step
  talk Gremni Longbeard##16850
  turnin The Longbeards##9558 |goto Hellfire Peninsula 23.89,72.17
step
  talk Mirren Longbeard##16851
  turnin Gaining Mirren's Trust##9563 |goto Hellfire Peninsula 23.97,72.35
step
  talk Force Commander Danath Trollbane##16819
  turnin Dark Tidings##9587 |goto Hellfire Peninsula 56.64,66.7
step
  talk Gremni Longbeard##16850
  turnin Rampaging Ravagers##9385 |goto Hellfire Peninsula 23.89,72.17
step
  talk Force Commander Danath Trollbane##16819
  turnin Turning the Tide##9492 |goto Hellfire Peninsula 56.64,66.7
step
  talk Field Commander Romus##16830
  turnin Pride of the Fel Horde##9493 |goto Hellfire Peninsula 56.84,62.72
step
  talk Magus Zabraxis##16829
  turnin Fel Embers##9494 |goto Hellfire Peninsula 53.86,65.74
step
  talk Captain Alina##17290
  turnin Imprisoned in the Citadel##9524
step
  talk Force Commander Danath Trollbane##16819
  turnin Entry Into the Citadel##10754 |goto Hellfire Peninsula 56.64,66.7
step
  talk Force Commander Danath Trollbane##16819
  turnin The Fall of Magtheridon##11002 |goto Hellfire Peninsula 56.64,66.7
step
  talk Lieutenant Amadi##16820
  accept Ill Omens##10483 |goto Hellfire Peninsula 50.91,60.19
step
  talk Honor Guard Wesilow##16827
  accept Looking to the Leadership##10057 |goto Hellfire Peninsula 50.88,60.35
step
  talk Dumphry##21209
  accept Laying Waste to the Unwanted##10078 |goto Hellfire Peninsula 51.12,60.3
step
  talk Sergeant Altumus##19309
  accept The Path of Anguish##10142 |goto Hellfire Peninsula 61.72,60.95
step
  talk Commander Duron##19229
  accept Arrival in Outland##10288 |goto Hellfire Peninsula 87.34,50.75
step
  talk Warp-Scryer Kryv##16839
  accept The Heart of Darkness##10399 |goto Hellfire Peninsula 56.69,66.52
step
  talk Mirren Longbeard##16851
  accept The Finest Down##9420 |goto Hellfire Peninsula 23.97,72.35
step
  talk Gremni Longbeard##16850
  accept The Arakkoa Threat##9417 |goto Hellfire Peninsula 23.89,72.17
step
  talk Gunny##17479
  accept The Blood is Life##9589 |goto Hellfire Peninsula 56.4,66.66
step
  talk Force Commander Danath Trollbane##16819
  accept Overlord##10400 |goto Hellfire Peninsula 56.64,66.7
step
  talk Force Commander Danath Trollbane##16819
  accept Grand Master Dumphry##10762 |goto Hellfire Peninsula 56.64,66.7
step
  note Lieutenant Amadi in Honor Hold wants you to bring 1 Cursed Talisman to Corporal Ironridge at Expedition Point.
  collect 1 Cursed Talisman##30157 |q 10483 |goto Hellfire Peninsula 67.1,71.23 |tip {dropsfrom}Bleeding Hollow Grunt, Bleeding Hollow Dark Shaman, Bleeding Hollow Peon
step
  note Overcome the ghosts of Arch Mage Xintor and Lieutenant Commander Thalvos and return to Honor Guard Wesilow in the tower northwest of Honor Hold.
  kill Arch Mage Xintor##16977 |q 10057 |goto Hellfire Peninsula 53.67,81.1
step
  note Use the Flaming Torch to burn the Horde Blade Throwers overlooking the Path of Glory. Then, bring the Flaming Torch to Dumphry in Honor Hold.
  kill Invis Horde Siege Engine - East##18818 |q 10078 |goto Hellfire Peninsula 58.49,47.67
step
  note Sergeant Altumus at the East Supply Caravan east of Honor Hold in Hellfire Peninsula wants you to kill 4 Flamewaker Imps, 6 Infernal Warbringers and 1 Dreadcaller.
  kill Dreadcaller##19434 |q 10142 |goto Hellfire Peninsula 68.38,57.72
step
  note Kill 10 Terrorfiends in the Pools of Aggonar and return to Warp-Scryer Kryv in the main keep of Honor Hold.
  kill Terrorfiend##16951 |q 10399 |goto Hellfire Peninsula 40.05,32.89
step
  note Mirren Longbeard in Hellfire Peninsula wants you to bring him 8 Kaliri Feathers from the various kaliri found in the Den of Haal'esh.
  collect Kaliri Feather##23588 |q 9420 |goto Hellfire Peninsula 25.72,75.23 |tip {dropsfrom}Female Kaliri Hatchling, Kaliri Matriarch, Male Kaliri Hatchling
step
  note Gremni Longbeard in Hellfire Peninsula wants you to slay 4 Haal'eshi Windwalkers and 6 Haal'eshi Talonguards.
  kill Haal'eshi Windwalker##16966 |q 9417 |goto Hellfire Peninsula 26.34,76.47
step
  note Collect 10 Fel Orc Blood Vials and return them to Gunny at Honor Hold in Hellfire Peninsula.
  collect 10 Fel Orc Blood Vial##23894 |q 9589 |goto The Blood Furnace - Dungeon -1,-1 |elite |tip {dropsfrom}Laughing Skull Enforcer, Shadowmoon Warlock, Keli'dan the Breaker
step
  note Slay Arazzius the Cruel in the Pools of Aggonar and return to Force Commander Danath Trollbane in the keep of Honor Hold.
  kill Arazzius the Cruel##19191 |q 10400 |goto Hellfire Peninsula 43.82,31.55 |elite
step
  talk Corporal Ironridge##21133
  turnin Ill Omens##10483 |goto Hellfire Peninsula 70.96,63.37
step
  talk Honor Guard Wesilow##16827
  turnin Looking to the Leadership##10057 |goto Hellfire Peninsula 50.88,60.35
step
  talk Dumphry##21209
  turnin Laying Waste to the Unwanted##10078 |goto Hellfire Peninsula 51.12,60.3
step
  talk Sergeant Altumus##19309
  turnin The Path of Anguish##10142 |goto Hellfire Peninsula 61.72,60.95
step
  talk Amish Wildhammer##18931
  turnin Arrival in Outland##10288 |goto Hellfire Peninsula 87.36,52.42
step
  talk Warp-Scryer Kryv##16839
  turnin The Heart of Darkness##10399 |goto Hellfire Peninsula 56.69,66.52
step
  talk Mirren Longbeard##16851
  turnin The Finest Down##9420 |goto Hellfire Peninsula 23.97,72.35
step
  talk Gremni Longbeard##16850
  turnin The Arakkoa Threat##9417 |goto Hellfire Peninsula 23.89,72.17
step
  talk Gunny##17479
  turnin The Blood is Life##9589 |goto Hellfire Peninsula 56.4,66.66
step
  talk Force Commander Danath Trollbane##16819
  turnin Overlord##10400 |goto Hellfire Peninsula 56.64,66.7
step
  talk Dumphry##21209
  turnin Grand Master Dumphry##10762 |goto Hellfire Peninsula 51.12,60.3
step
  talk Corporal Ironridge##21133
  accept Cursed Talismans##10484 |goto Hellfire Peninsula 70.96,63.37
step
  talk Foreman Biggums##16837
  accept A Job for an Intelligent Man##9355 |goto Hellfire Peninsula 52.02,62.57
step
  talk Foreman Biggums##16837
  accept When This Mine's a-Rockin'##10079 |goto Hellfire Peninsula 52.02,62.57
step
  talk Amish Wildhammer##18931
  accept Journey to Honor Hold##10140 |goto Hellfire Peninsula 87.36,52.42
step
  talk Sergeant Altumus##19309
  accept Expedition Point##10143 |goto Hellfire Peninsula 61.72,60.95
step
  talk Lieutenant Chadwick##17557
  accept Weaken the Ramparts##9575 |goto Hellfire Peninsula 56.73,66.34
step
  talk Dumphry##21209
  accept Dumphry's Request##10763 |goto Hellfire Peninsula 51.12,60.3
step
  note Bring 12 Cursed Talismans to Corporal Ironridge at Expedition Point.
  collect 12 Cursed Talisman##30157 |q 10484 |goto Hellfire Peninsula 67.1,71.23 |tip {dropsfrom}Bleeding Hollow Grunt, Bleeding Hollow Dark Shaman, Bleeding Hollow Peon
step
  note Kill 15 Marauding Crust Bursters and return to Foreman Biggums at Honor Hold.
  kill Marauding Crust Burster##16857 |q 9355 |goto Hellfire Peninsula 47.92,63.19
step
  note Kill 12 Gan'arg Sappers and return to Foreman Biggums.
  kill Gan'arg Sapper##18827 |q 10079 |goto Hellfire Peninsula 53.89,61.12
step
  note Slay Watchkeeper Gargolmar, Omor the Unscarred and the drake, Nazan. Return Gargolmar's Hand, Omor's Hoof and Nazan's Head to Gunny at Honor Hold in Hellfire Peninsula.
  collect Gargolmar's Hand##23881 |q 9575 |goto Hellfire Ramparts - Dungeon -1,-1 |elite |tip {dropsfrom}Watchkeeper Gargolmar, Watchkeeper Gargolmar (1)
step
  note Bring 4 Fel Iron Bars, 2 Arcane Dust and 4 Motes of Fire to Dumphry at Honor Hold in Hellfire Peninsula.
  collect 4 Fel Iron Bar##23445 |q 10763 |goto Terokkar Forest 39.25,55.95 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Corporal Ironridge##21133
  turnin Cursed Talismans##10484 |goto Hellfire Peninsula 70.96,63.37
step
  talk Foreman Biggums##16837
  turnin A Job for an Intelligent Man##9355 |goto Hellfire Peninsula 52.02,62.57
step
  talk Foreman Biggums##16837
  turnin When This Mine's a-Rockin'##10079 |goto Hellfire Peninsula 52.02,62.57
step
  talk Marshal Isildor##19308
  turnin Journey to Honor Hold##10140 |goto Hellfire Peninsula 54.81,62.79
step
  talk Forward Commander Kingston##19310
  turnin Expedition Point##10143 |goto Hellfire Peninsula 71.34,62.77
step
  talk Gunny##17479
  turnin Weaken the Ramparts##9575 |goto Hellfire Peninsula 56.4,66.66
step
  talk Dumphry##21209
  turnin Dumphry's Request##10763 |goto Hellfire Peninsula 51.12,60.3
step
  talk Corporal Ironridge##21133
  accept Warlord of the Bleeding Hollow##10485 |goto Hellfire Peninsula 70.96,63.37
step
  talk Foreman Biggums##16837
  accept The Mastermind##10099 |goto Hellfire Peninsula 52.02,62.57
step
  talk Forward Commander Kingston##19310
  accept Disrupt Their Reinforcements##10144 |goto Hellfire Peninsula 71.34,62.77
step
  talk Gunny##17479
  accept Heart of Rage##9607 |goto Hellfire Peninsula 56.4,66.66
step
  talk Dumphry##21209
  accept Hotter than Hell##10764 |goto Hellfire Peninsula 51.12,60.3
step
  note Bring Warlord Morkh's Shattered Armor to Corporal Ironridge in Expedition Point.
  collect Morkh's Shattered Armor##30158 |q 10485 |goto Hellfire Peninsula 70.08,77.09 |tip {dropsfrom}Warlord Morkh
step
  note Locate and kill Z'kral in the mines beneath Honor Hold, then report back to Foreman Biggums.
  kill Z'kral##18974 |q 10099 |goto Hellfire Peninsula 56.21,61.52
step
  note Defeat enemies around Portal Grimh and Portal Kaalez to gather Demonic Rune Stones.
  collect Portal Grimh##184414 |q 10144 |goto Hellfire Peninsula 71.46,55.16
step
  note Destroy a Fel Reaver in Hellfire Peninsula and plunge the Unfired Key Mold into its remains. Bring the Charred Key Mold to Dumphry in Honor Hold.
  collect Charred Key Mold##31252 |q 10764 |goto Hellfire Peninsula 51.12,60.3
step
  talk Corporal Ironridge##21133
  turnin Warlord of the Bleeding Hollow##10485 |goto Hellfire Peninsula 70.96,63.37
step
  talk Foreman Biggums##16837
  turnin The Mastermind##10099 |goto Hellfire Peninsula 52.02,62.57
step
  talk Forward Commander Kingston##19310
  turnin Disrupt Their Reinforcements##10144 |goto Hellfire Peninsula 71.34,62.77
step
  talk Force Commander Danath Trollbane##16819
  turnin Heart of Rage##9607 |goto Hellfire Peninsula 56.64,66.7
step
  talk Dumphry##21209
  turnin Hotter than Hell##10764 |goto Hellfire Peninsula 51.12,60.3
step
  talk Corporal Ironridge##21133
  accept Return to Honor Hold##10903 |goto Hellfire Peninsula 70.96,63.37
step
  talk Forward Commander Kingston##19310
  accept Mission: The Murketh and Shaadraz Gateways##10146 |goto Hellfire Peninsula 71.34,62.77
step
  note Speak with Wing Commander Dabir'ee, bomb Gateway Murketh and Gateway Shaadraz and then return to Forward Commander Kingston at Expedition Point.
  kill Legion Transporter: Alpha##19291 |q 10146 |goto Hellfire Peninsula 78.0,47.24
step
  talk Assistant Klatu##22430
  turnin Return to Honor Hold##10903 |goto Hellfire Peninsula 54.32,63.65
step
  talk Forward Commander Kingston##19310
  turnin Mission: The Murketh and Shaadraz Gateways##10146 |goto Hellfire Peninsula 71.34,62.77
step
  talk Forward Commander Kingston##19310
  accept Shatter Point##10340 |goto Hellfire Peninsula 71.34,62.77
step
  talk Assistant Klatu##22430
  accept Fel Spirits##10909 |goto Hellfire Peninsula 54.32,63.65
step
  talk Assistant Klatu##22430
  accept Digging for Prayer Beads##10916 |goto Hellfire Peninsula 54.32,63.65
step
  note Klatu in Honor Hold wants you to use the Anchorite Relic at Gor'gaz Outpost southwest of Honor Hold, slay Shattered Hand Berserkers near the relic, and then slay 10 released Fel Spirits to avenge Colonel Jules.
  kill Fel Spirit##22454 |q 10909
step
  note Recover the Draenei Prayer Beads and bring them to Assistant Klatu in Honor Hold.
  collect Draenei Prayer Beads##31795 |q 10916 |goto Hellfire Peninsula 54.02,63.3 |tip {dropsfrom}Fei Fei's Cache
step
  talk Runetog Wildhammer##20234
  turnin Shatter Point##10340 |goto Hellfire Peninsula 78.42,34.9
step
  talk Assistant Klatu##22430
  turnin Fel Spirits##10909 |goto Hellfire Peninsula 54.32,63.65
step
  talk Assistant Klatu##22430
  turnin Digging for Prayer Beads##10916 |goto Hellfire Peninsula 54.32,63.65
step
  talk Runetog Wildhammer##20234
  accept Wing Commander Gryphongar##10344 |goto Hellfire Peninsula 78.42,34.9
step
  talk Assistant Klatu##22430
  accept The Exorcism of Colonel Jules##10935 |goto Hellfire Peninsula 54.32,63.65
step
  note Speak with Anchorite Barada. Use the prayer beads to help with the ritual, and then speak with Colonel Jules when he is saved. Finally, return to Assistant Klatu.
  kill Colonel Jules##22432 |q 10935 |goto Hellfire Peninsula 53.93,63.64
step
  talk Wing Commander Gryphongar##20232
  turnin Wing Commander Gryphongar##10344 |goto Hellfire Peninsula 79.34,33.86
step
  talk Assistant Klatu##22430
  turnin The Exorcism of Colonel Jules##10935 |goto Hellfire Peninsula 54.32,63.65
step
  talk Assistant Klatu##22430
  accept Trollbane is Looking for You##10936 |goto Hellfire Peninsula 54.32,63.65
step
  talk Wing Commander Gryphongar##20232
  accept Mission: The Abyssal Shelf##10163 |goto Hellfire Peninsula 79.34,33.86
step
  note Wing Commander Gryphongar at Shatter Point in Hellfire Peninsula has asked that you destroy 20 Gan'arg Peons, 5 Mo'arg Overseers and 5 Fel Cannons.
  kill Gan'arg Peon##19398 |q 10163 |goto Hellfire Peninsula 72.94,17.37 |elite
step
  talk Force Commander Danath Trollbane##16819
  turnin Trollbane is Looking for You##10936 |goto Hellfire Peninsula 56.64,66.7
step
  talk Wing Commander Gryphongar##20232
  turnin Mission: The Abyssal Shelf##10163 |goto Hellfire Peninsula 79.34,33.86
step
  talk Wing Commander Gryphongar##20232
  accept Go to the Front##10382 |goto Hellfire Peninsula 79.34,33.86
step
  talk Force Commander Danath Trollbane##16819
  accept Drill the Drillmaster##10937 |goto Hellfire Peninsula 56.64,66.7
step
  note Force Commander Danath Trollbane has ordered you to kill Drillmaster Zurok with all due haste. Return to the force commander at Honor Hold in the Hellfire Peninsula once the drillmaster is dead.
  kill Drillmaster Zurok##19312 |q 10937 |goto Hellfire Peninsula 48.07,56.17 |elite
step
  talk Field Marshal Brock##20793
  turnin Go to the Front##10382 |goto Hellfire Peninsula 68.29,28.55
step
  talk Force Commander Danath Trollbane##16819
  turnin Drill the Drillmaster##10937 |goto Hellfire Peninsula 56.64,66.7
step
  talk Field Marshal Brock##20793
  accept Disruption - Forge Camp: Mageddon##10394 |goto Hellfire Peninsula 68.29,28.55
step
  note Kill 10 Gan'arg Servants and Razorsaw at Forge Camp Mageddon and return to Forward Commander Brock at Honor Point.
  kill Gan'arg Servant##16947 |q 10394 |goto Hellfire Peninsula 58.98,31.64
step
  talk Field Marshal Brock##20793
  turnin Disruption - Forge Camp: Mageddon##10394 |goto Hellfire Peninsula 68.29,28.55
step
  talk Field Marshal Brock##20793
  accept Enemy of my Enemy...##10396 |goto Hellfire Peninsula 68.29,28.55
step
  note Destroy 3 Fel Cannon MKIs in Forge Camp: Rage and return to Field Marshal Brock at Honor Point.
  kill Fel Cannon MKI##22461 |q 10396 |goto Hellfire Peninsula 59.62,32.56
step
  talk Field Marshal Brock##20793
  turnin Enemy of my Enemy...##10396 |goto Hellfire Peninsula 68.29,28.55
step
  talk Field Marshal Brock##20793
  accept Invasion Point: Annihilator##10397 |goto Hellfire Peninsula 68.29,28.55
step
  note Slay Arix'Amal. Take the Burning Legion Gate Key. Use the Burning Legion Gate Key on the Rune of Spite.
  kill Warbringer Arix'Amal##19298 |q 10397 |goto Hellfire Peninsula 53.09,26.47
step
  talk Field Marshal Brock##20793
  turnin Invasion Point: Annihilator##10397 |goto Hellfire Peninsula 68.29,28.55
]])
