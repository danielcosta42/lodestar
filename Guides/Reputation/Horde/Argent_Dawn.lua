-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Argent Dawn", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "6296fcb8",
}, [[
step
  talk Leonid Barthalomew the Revered##267008
  accept A Righteous Cause##96896 |goto Tirisfal Glades 22.01,44.77
step
  talk Leonid Barthalomew the Revered##267008
  turnin A Righteous Cause##96896 |goto Tirisfal Glades 22.01,44.77
step
  talk Leonid Barthalomew the Revered##267008
  accept Leonid's Letter##98545 |goto Tirisfal Glades 22.01,44.77
step
  talk Glix Xizzix##272526
  turnin Leonid's Letter##98545 |goto Undercity 69.84,47.13
step
  talk Deathguard Terrence##1738
  accept The Argent Emissary##96895 |goto Tirisfal Glades 63.47,56.55
step
  talk Hadric Harlson##267009
  turnin The Argent Emissary##96895 |goto Tirisfal Glades 65.88,61.13
step
  talk Hadric Harlson##267009
  accept The Cult of the Damned##96897 |goto Tirisfal Glades 65.88,61.13
step
  note Kill 8 Dark Neophytes and 8 Dark Enforcers in Tirisfal Glades.
  kill Dark Neophyte##267006 |q 96897 |goto Tirisfal Glades 68.16,64.61
step
  talk Hadric Harlson##267009
  turnin The Cult of the Damned##96897 |goto Tirisfal Glades 65.88,61.13
step
  talk Hadric Harlson##267009
  accept Remnants of War##96898 |goto Tirisfal Glades 65.88,61.13
step
  note Gather 12 Necrotic Crystal Fragments in Tirisfal Glades.
  collect 12 Necrotic Crystal Fragment##275851 |q 96898 |goto Tirisfal Glades 68.16,64.61 |tip {dropsfrom}Dark Neophyte, Dark Enforcer, Naxxramas Crystal Fragment
step
  talk Hadric Harlson##267009
  turnin Remnants of War##96898 |goto Tirisfal Glades 65.88,61.13
step
  talk Hadric Harlson##267009
  accept Bandarion Keep##96899 |goto Tirisfal Glades 65.88,61.13
step
  talk Leonid Barthalomew the Revered##267008
  turnin Bandarion Keep##96899 |goto Tirisfal Glades 22.01,44.77
step
  talk Dawnwatcher Shaedlass##4786
  accept In Search of Thaelrid##1198 |goto Darnassus 55.36,25.03
step
  talk Argent Guard Thaelrid##4787
  turnin In Search of Thaelrid##1198 |goto Blackfathom Deeps - Dungeon -1,-1
step
  talk Argent Guard Thaelrid##4787
  accept Blackfathom Villainy##6561 |goto Blackfathom Deeps - Dungeon -1,-1
step
  note Bring the head of Twilight Lord Kelris to Bashana Runetotem in Thunder Bluff.
  collect Head of Kelris##5881 |q 6561 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Lord Kelris
step
  talk Bashana Runetotem##9087
  turnin Blackfathom Villainy##6561 |goto Thunder Bluff 71.06,34.19
step
  talk Azore Aldamort##11863
  accept Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  note Get the Sceptre of Light and then return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Sceptre of Light##15750 |q 5741 |goto Desolace 55.17,30.15 |tip {dropsfrom}Burning Blade Seer
step
  talk Azore Aldamort##11863
  turnin Sceptre of Light##5741 |goto Desolace 38.88,27.16
step
  talk Azore Aldamort##11863
  accept Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  note Get the Book of the Ancients and return it to Azore Aldamort at the tower in Ethel Rethor.
  collect Book of the Ancients##15803 |q 6027 |goto Desolace 28.24,6.67 |tip {dropsfrom}Lord Kragaru
step
  talk Azore Aldamort##11863
  turnin Book of the Ancients##6027 |goto Desolace 38.88,27.16
step
  talk Tinkee Steamboil##10267
  accept Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  note Bring 8 Broodling Essence and the Draco-Incarcinatrix 900 to Tinkee Steamboil at the Flame Crest in the Burning Steppes.
  collect 8 Broodling Essence##12283 |q 4726 |goto Burning Steppes 63.78,57.27
step
  talk Tinkee Steamboil##10267
  turnin Broodling Essence##4726 |goto Burning Steppes 65.24,24
step
  talk Tinkee Steamboil##10267
  accept Felnok Steelspring##4808 |goto Burning Steppes 65.24,24
step
  talk Felnok Steelspring##10468
  turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.88,42.22 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24
step
  talk Gregor Greystone##10431
  accept The Everlook Report##6029 |goto Winterspring 61.35,38.97
step
  talk Argent Officer Garush##10839
  turnin The Everlook Report##6029 |goto Tirisfal Glades 83.19,68.45
step
  talk Gregor Greystone##10431
  accept Duke Nicholas Zverenhoff##6030 |goto Winterspring 61.35,38.97
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Duke Nicholas Zverenhoff##6030 |goto Eastern Plaguelands 71.63,50.09
step
  talk High Executor Derrington##10837
  accept Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  turnin Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  accept The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.13,68.94
step
  talk Shadow Priestess Vandis##11055
  turnin The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.04,71.91
step
  talk Shadow Priestess Vandis##11055
  accept Target: Felstone Field##5229 |goto Tirisfal Glades 83.04,71.91
step
  note Go to Felstone Field in Western Plaguelands to locate and defeat the Cauldron Lord present there. It may have a key that will allow access to the cauldron. You must have the Empty Felstone Field Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Felstone Field Cauldron Key##13194 |q 5229 |goto Western Plaguelands 36.93,57.41 |tip {dropsfrom}Cauldron Lord Bilemaw
step
  turnin Target: Felstone Field##5229 |goto Western Plaguelands 37.25,56.78
step
  click Scourge Cauldron##176361
  accept Return to the Bulwark##5230 |goto Western Plaguelands 37.25,56.78
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5230 |goto Tirisfal Glades 83.04,71.91
step
  click Scourge Cauldron##176361
  accept Felstone Field Cauldron##5218 |goto Western Plaguelands 37.25,56.78
step
  buy Arcane Quickener##13320 |q 5218 |goto Western Plaguelands 42.66,83.77
step
  turnin Felstone Field Cauldron##5218 |goto Western Plaguelands 37.25,56.78
step
  talk Caretaker Alen##11038
  accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  note Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
  collect Zaeldarr's Head##15785 |q 6021 |goto Eastern Plaguelands 23.07,72.63 |tip {dropsfrom}Zaeldarr the Outcast
step
  talk Caretaker Alen##11038
  turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  talk Pamela Redpath##10926
  accept Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  note Find Pamela's doll.
  collect Pamela's Doll##12885 |q 5149 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  turnin Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Auntie Marlene##5152 |goto Eastern Plaguelands 31.15,77.98
step
  talk Marlene Redpath##10927
  turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.57
step
  talk Marlene Redpath##10927
  accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.57
step
  note Bring Joseph's Wedding Ring to Chromie.
  collect Joseph's Wedding Ring##12894 |q 5153 |goto Western Plaguelands 49.7,76.76 |tip {dropsfrom}Joseph Redpath's Monument
step
  talk Chromie##10667
  turnin A Strange Historian##5153 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  accept The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  note Bring the Annals of Darrowshire to Chromie in Andorhal.
  collect Annals of Darrowshire##12900 |q 5154 |goto Western Plaguelands 43.37,69.51 |tip {dropsfrom}Musty Tome
step
  talk Chromie##10667
  turnin The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  accept Brother Carlin##5210 |goto Western Plaguelands 39.46,66.76
step
  talk Carlin Redpath##11063
  turnin Brother Carlin##5210 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
  collect Davil's Libram##12954 |q 5168 |goto Western Plaguelands 42.52,18.99
step
  talk Carlin Redpath##11063
  turnin Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  talk Shadow Priestess Vandis##11055
  accept Target: Dalson's Tears##5231 |goto Tirisfal Glades 83.04,71.91
step
  note Go to Dalson's Tears in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Dalson's Tears Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Dalson's Tears Cauldron Key##13195 |q 5231 |goto Western Plaguelands 46.11,52.61 |tip {dropsfrom}Cauldron Lord Malvinious
step
  turnin Target: Dalson's Tears##5231 |goto Western Plaguelands 46.18,51.9
step
  click Scourge Cauldron##177289
  accept Return to the Bulwark##5232 |goto Western Plaguelands 46.18,51.9
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5232 |goto Tirisfal Glades 83.04,71.91
step
  talk Shadow Priestess Vandis##11055
  accept Target: Writhing Haunt##5233 |goto Tirisfal Glades 83.04,71.91
step
  note Go to the Writhing Haunt in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Writhing Haunt Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Writhing Haunt Cauldron Key##13197 |q 5233 |goto Western Plaguelands 52.88,66.08 |tip {dropsfrom}Cauldron Lord Razarch
step
  turnin Target: Writhing Haunt##5233 |goto Western Plaguelands 53.02,65.61
step
  click Scourge Cauldron##176393
  accept Return to the Bulwark##5234 |goto Western Plaguelands 53.02,65.61
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5234 |goto Tirisfal Glades 83.04,71.91
step
  click Scourge Cauldron##176393
  accept Writhing Haunt Cauldron##5224 |goto Western Plaguelands 53.02,65.61
step
  buy Arcane Quickener##13320 |q 5224 |goto Western Plaguelands 42.66,83.77
step
  turnin Writhing Haunt Cauldron##5224 |goto Western Plaguelands 53.02,65.61
step
  click Scourge Cauldron##177289
  accept Dalson's Tears Cauldron##5221 |goto Western Plaguelands 46.18,51.9
step
  buy Arcane Quickener##13320 |q 5221 |goto Western Plaguelands 42.66,83.77
step
  turnin Dalson's Tears Cauldron##5221 |goto Western Plaguelands 46.18,51.9
step
  only not completed(5405) not completed(5503) not haveq(5405) not haveq(5503)
  talk Argent Officer Pureheart##10840
  accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  only not completed(5405) not completed(5503) not haveq(5405) not haveq(5503)
  talk Argent Officer Pureheart##10840
  turnin Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55
step
  talk Duke Nicholas Zverenhoff##11039
  accept Corruptor's Scourgestones##5508 |goto Eastern Plaguelands 71.63,50.09
step
  kill Putridius##1850 |goto Western Plaguelands 48.05,67.39 |elite
  collect Corruptor's Scourgestone##12843 |q 5508 |goto Western Plaguelands 48.05,67.39
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Corruptor's Scourgestones##5508 |goto Eastern Plaguelands 71.63,50.09
step
  talk Duke Nicholas Zverenhoff##11039
  accept Invader's Scourgestones##5509 |goto Eastern Plaguelands 71.63,50.09
step
  kill Skeletal Warlord##1788 |goto Western Plaguelands 45.15,69.56 |elite
  collect Invader's Scourgestone##12841 |q 5509 |goto Western Plaguelands 45.15,69.56
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Invader's Scourgestones##5509 |goto Eastern Plaguelands 71.63,50.09
step
  talk Duke Nicholas Zverenhoff##11039
  accept Minion's Scourgestones##5510 |goto Eastern Plaguelands 71.63,50.09
step
  collect Minion's Scourgestone##12840 |q 5510 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Minion's Scourgestones##5510 |goto Eastern Plaguelands 71.63,50.09
step
  talk Argent Officer Garush##10839
  accept Corruptor's Scourgestones##5406 |goto Tirisfal Glades 83.19,68.45
step
  kill Putridius##1850 |goto Western Plaguelands 48.05,67.39 |elite
  collect Corruptor's Scourgestone##12843 |q 5406 |goto Western Plaguelands 48.05,67.39
step
  talk Argent Officer Garush##10839
  turnin Corruptor's Scourgestones##5406 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Officer Garush##10839
  accept Invader's Scourgestones##5407 |goto Tirisfal Glades 83.19,68.45
step
  kill Skeletal Warlord##1788 |goto Western Plaguelands 45.15,69.56 |elite
  collect Invader's Scourgestone##12841 |q 5407 |goto Western Plaguelands 45.15,69.56
step
  talk Argent Officer Garush##10839
  turnin Invader's Scourgestones##5407 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Officer Garush##10839
  accept Minion's Scourgestones##5408 |goto Tirisfal Glades 83.19,68.45
step
  collect Minion's Scourgestone##12840 |q 5408 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Argent Officer Garush##10839
  turnin Minion's Scourgestones##5408 |goto Tirisfal Glades 83.19,68.45
step
  talk Argent Officer Pureheart##10840
  accept Minion's Scourgestones##5402 |goto Western Plaguelands 42.97,83.55
step
  collect Minion's Scourgestone##12840 |q 5402 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Argent Officer Pureheart##10840
  turnin Minion's Scourgestones##5402 |goto Western Plaguelands 42.97,83.55
step
  talk Argent Officer Pureheart##10840
  accept Invader's Scourgestones##5403 |goto Western Plaguelands 42.97,83.55
step
  kill Skeletal Warlord##1788 |goto Western Plaguelands 45.15,69.56 |elite
  collect Invader's Scourgestone##12841 |q 5403 |goto Western Plaguelands 45.15,69.56
step
  talk Argent Officer Pureheart##10840
  turnin Invader's Scourgestones##5403 |goto Western Plaguelands 42.97,83.55
step
  talk Argent Officer Pureheart##10840
  accept Corruptor's Scourgestones##5404 |goto Western Plaguelands 42.97,83.55
step
  kill Putridius##1850 |goto Western Plaguelands 48.05,67.39 |elite
  collect Corruptor's Scourgestone##12843 |q 5404 |goto Western Plaguelands 48.05,67.39
step
  talk Argent Officer Pureheart##10840
  turnin Corruptor's Scourgestones##5404 |goto Western Plaguelands 42.97,83.55
step
  talk High Executor Derrington##10837
  accept All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  note Using the Beacon Torch, mark each tower in Andorhal; you will need to stand in the doorway of the tower to successfully mark it.
  talk Andorhal Tower One##10902 |q 5098 |goto Western Plaguelands 40.05,71.6
step
  talk High Executor Derrington##10837
  turnin All Along the Watchtowers##5098 |goto Tirisfal Glades 83.13,68.94
step
  talk Carlin Redpath##11063
  accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
  collect Skull of Horgus##12956 |q 5181 |goto Eastern Plaguelands 44.34,41.18 |tip {dropsfrom}Horgus' Skull
step
  talk Carlin Redpath##11063
  turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  talk Betina Bigglezink##11035
  accept Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  note Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel.
  kill Plagued Hatchling##10678 |q 5529 |goto Scholomance - Dungeon -1,-1
step
  talk Betina Bigglezink##11035
  turnin Plagued Hatchlings##5529 |goto Eastern Plaguelands 71.66,49.94
step
  kill Plagued Hatchling##10678 |goto Scholomance - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Healthy Dragon Scale##5582 |goto Scholomance - Dungeon -1,-1
step
  talk Betina Bigglezink##11035
  turnin Healthy Dragon Scale##5582 |goto Eastern Plaguelands 71.66,49.94
step
  talk Shadow Priestess Vandis##11055
  accept Target: Gahrron's Withering##5235 |goto Tirisfal Glades 83.04,71.91
step
  note Go to Gahrron's Withering in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Gahrron's Withering Bottle with you to secure a sample of the poisons used inside the cauldron.
  collect Gahrron's Withering Cauldron Key##13196 |q 5235 |goto Western Plaguelands 62.18,59.06 |tip {dropsfrom}Cauldron Lord Soulwrath
step
  turnin Target: Gahrron's Withering##5235 |goto Western Plaguelands 62.54,58.47
step
  click Scourge Cauldron##176392
  accept Return to the Bulwark##5236 |goto Western Plaguelands 62.54,58.47
step
  talk Shadow Priestess Vandis##11055
  turnin Return to the Bulwark##5236 |goto Tirisfal Glades 83.04,71.91
step
  talk High Executor Derrington##10837
  accept Mission Accomplished!##5238 |goto Tirisfal Glades 83.13,68.94
step
  talk High Executor Derrington##10837
  turnin Mission Accomplished!##5238 |goto Tirisfal Glades 83.13,68.94
step
  click Scourge Cauldron##176392
  accept Gahrron's Withering Cauldron##5227 |goto Western Plaguelands 62.54,58.47
step
  buy Arcane Quickener##13320 |q 5227 |goto Western Plaguelands 42.66,83.77
step
  turnin Gahrron's Withering Cauldron##5227 |goto Western Plaguelands 62.54,58.47
step
  talk Tinkee Steamboil##10267
  accept Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  note Use the Eggscilloscope Prototype on an egg in the Rookery.
  collect Rookery Egg##175124 |q 4734 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  turnin Egg Freezing##4734 |goto Burning Steppes 65.24,24
step
  talk Tinkee Steamboil##10267
  accept Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  note Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes.
  collect Rookery Egg##175124 |q 4735 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Tinkee Steamboil##10267
  turnin Egg Collection##4735 |goto Burning Steppes 65.24,24
step
  talk Tinkee Steamboil##10267
  accept Leonid Barthalomew##5522 |goto Burning Steppes 65.24,24
step
  talk Leonid Barthalomew the Revered##11036
  turnin Leonid Barthalomew##5522 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 71.89,48.29
step
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 71.66,49.94
step
  talk Betina Bigglezink##11035
  accept Dawn's Gambit##4771 |goto Eastern Plaguelands 71.66,49.94
step
  note Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink.
  talk Vectus##10432 |q 4771 |goto Scholomance - Dungeon -1,-1
step
  talk Betina Bigglezink##11035
  turnin Dawn's Gambit##4771 |goto Eastern Plaguelands 71.66,49.94
step
  talk Dispatch Commander Metz##16212
  accept They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 71.28,48.04
step
  note Dispatch Commander Metz at Light's Hope Chapel in the Eastern Plaguelands wants an Argent Dawn Valor Token.
  collect Argent Dawn Valor Token##12844 |q 9141 |goto Eastern Plaguelands 71.28,48.04
step
  talk Dispatch Commander Metz##16212
  turnin They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 71.28,48.04
step
  talk Dispatch Commander Metz##16212
  accept Craftsman's Writ##9142 |goto Eastern Plaguelands 71.28,48.04
step
  get Argent Dawn Valor Token##12844 |q 9142 |tip Craft this (or buy it), then deliver it.
step
  talk Dispatch Commander Metz##16212
  turnin Craftsman's Writ##9142 |goto Eastern Plaguelands 71.28,48.04
step
  talk Guard Didier##16226
  accept Writ of Safe Passage##9165 |goto Eastern Plaguelands 70.6,48.27
step
  note Deliver the signed Writ of Safe Passage to Dispatch Commander Metz at Light's Hope Chapel in the Eastern Plaguelands.
  talk Field Marshal Chambers##16254 |q 9165 |goto Eastern Plaguelands 40.82,34.58
step
  talk Dispatch Commander Metz##16212
  turnin Writ of Safe Passage##9165 |goto Eastern Plaguelands 71.28,48.04
step
  talk Leonid Barthalomew the Revered##11036
  accept Houses of the Holy##5243 |goto Eastern Plaguelands 71.89,48.29
step
  note Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid.
  collect Stratholme Holy Water##13180 |q 5243 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
step
  talk Leonid Barthalomew the Revered##11036
  turnin Houses of the Holy##5243 |goto Eastern Plaguelands 71.89,48.29
step
  talk Korfax, Champion of the Light##16112
  accept Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants 30 Dark Iron Scraps.
  collect Dark Iron Scraps##22528 |q 9131 |goto Searing Gorge 40.58,49.48 |tip {dropsfrom}Dark Iron Steamsmith, Dark Iron Slaver, Dark Iron Taskmaster
step
  talk Korfax, Champion of the Light##16112
  turnin Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  talk Korfax, Champion of the Light##16112
  accept Dark Iron Scraps##9132 |goto Eastern Plaguelands 71.95,48.52
step
  collect Dark Iron Scraps##22528 |q 9132 |goto Searing Gorge 40.58,49.48 |tip {dropsfrom}Dark Iron Steamsmith, Dark Iron Slaver, Dark Iron Taskmaster
step
  talk Korfax, Champion of the Light##16112
  turnin Dark Iron Scraps##9132 |goto Eastern Plaguelands 71.95,48.52
step
  talk Archmage Angela Dosantos##16116
  accept The Elemental Equation##9128 |goto Eastern Plaguelands 71.7,48.69
step
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 30 Core of Elements.
  collect Core of Elements##22527 |q 9128 |goto Un'Goro Crater 55.1,48.83 |tip {dropsfrom}Scorching Elemental, Living Blaze, Obsidian Elemental
step
  talk Archmage Angela Dosantos##16116
  turnin The Elemental Equation##9128 |goto Eastern Plaguelands 71.7,48.69
step
  talk Archmage Angela Dosantos##16116
  accept Core of Elements##9129 |goto Eastern Plaguelands 71.7,48.69
step
  collect Core of Elements##22527 |q 9129 |goto Un'Goro Crater 55.1,48.83 |tip {dropsfrom}Scorching Elemental, Living Blaze, Obsidian Elemental
step
  talk Archmage Angela Dosantos##16116
  turnin Core of Elements##9129 |goto Eastern Plaguelands 71.7,48.69
step
  talk Rohan the Assassin##16131
  accept Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands wants 30 Bone Fragments.
  collect Bone Fragments##22526 |q 9126 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Rohan the Assassin##16131
  turnin Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  talk Rohan the Assassin##16131
  accept Bone Fragments##9127 |goto Eastern Plaguelands 71.62,48.91
step
  collect Bone Fragments##22526 |q 9127 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  talk Rohan the Assassin##16131
  turnin Bone Fragments##9127 |goto Eastern Plaguelands 71.62,48.91
step
  talk Huntsman Leopold##16132
  accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands wants 30 Crypt Fiend Parts.
  collect Crypt Fiend Parts##22525 |q 9124 |goto Eastern Plaguelands 12.84,25.99 |tip {dropsfrom}Crypt Fiend, Crypt Walker, Crypt Horror
step
  talk Huntsman Leopold##16132
  turnin Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  talk Huntsman Leopold##16132
  accept Crypt Fiend Parts##9125 |goto Eastern Plaguelands 71.69,48.94
step
  collect Crypt Fiend Parts##22525 |q 9125 |goto Eastern Plaguelands 12.84,25.99 |tip {dropsfrom}Crypt Fiend, Crypt Walker, Crypt Horror
step
  talk Huntsman Leopold##16132
  turnin Crypt Fiend Parts##9125 |goto Eastern Plaguelands 71.69,48.94
step
  talk Rayne##16135
  accept Savage Flora##9136 |goto Eastern Plaguelands 71.41,49.35
step
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands wants 30 Savage Fronds.
  collect Savage Frond##22529 |q 9136 |goto Feralas 56.82,74.86 |tip {dropsfrom}Cursed Sycamore, Bloodpetal Lasher, Bloodpetal Flayer
step
  talk Rayne##16135
  turnin Savage Flora##9136 |goto Eastern Plaguelands 71.41,49.35
step
  talk Rayne##16135
  accept Savage Fronds##9137 |goto Eastern Plaguelands 71.41,49.35
step
  collect Savage Frond##22529 |q 9137 |goto Feralas 56.82,74.86 |tip {dropsfrom}Cursed Sycamore, Bloodpetal Lasher, Bloodpetal Flayer
step
  talk Rayne##16135
  turnin Savage Fronds##9137 |goto Eastern Plaguelands 71.41,49.35
step
  talk Betina Bigglezink##11035
  accept The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 71.66,49.94
step
  note Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample.
  collect Plagued Flesh Sample##13174 |q 5212 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Ravaged Cadaver, Mangled Cadaver, Plague Ghoul
step
  talk Betina Bigglezink##11035
  turnin The Flesh Does Not Lie##5212 |goto Eastern Plaguelands 71.66,49.94
step
  talk Betina Bigglezink##11035
  accept The Active Agent##5213 |goto Eastern Plaguelands 71.66,49.94
step
  note Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink.
  collect Scourge Data##13176 |q 5213 |goto Stratholme - Dungeon -1,-1
step
  talk Betina Bigglezink##11035
  turnin The Active Agent##5213 |goto Eastern Plaguelands 71.66,49.94
step
  talk Carlin Redpath##11063
  accept Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring 5 Resonating Skulls and the Mystic Crystal to Carlin Redpath in Eastern Plaguelands.
  collect 5 Resonating Skull##13155 |q 5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  turnin Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Return to Chromie##5941 |goto Eastern Plaguelands 71.7,50.04
step
  talk Chromie##10667
  turnin Return to Chromie##5941 |goto Western Plaguelands 39.46,66.76
step
  talk Chromie##10667
  accept The Battle of Darrowshire##5721 |goto Western Plaguelands 39.46,66.76
step
  note Place the Relic Bundle at the Darrowshire town square.
  talk Joseph Redpath##10936 |q 5721 |goto Eastern Plaguelands 33.62,78.46
step
  talk Pamela Redpath##10926
  turnin The Battle of Darrowshire##5721 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 31.15,77.98
step
  turnin Hidden Treasures##5942 |goto Eastern Plaguelands 30.92,77.78
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 71.63,50.09
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1 |elite
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Archivist##5251 |goto Eastern Plaguelands 71.63,50.09
step
  kill Grand Crusader Dathrohan##10812 |goto Stratholme - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Truth Comes Crashing Down##5262 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Truth Comes Crashing Down##5262 |goto Eastern Plaguelands 71.63,50.09
step
  talk Duke Nicholas Zverenhoff##11039
  accept Above and Beyond##5263 |goto Eastern Plaguelands 71.63,50.09
step
  note Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff.
  collect Head of Baron Rivendare##13251 |q 5263 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Baron Rivendare
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Above and Beyond##5263 |goto Eastern Plaguelands 71.63,50.09
step
  talk Duke Nicholas Zverenhoff##11039
  accept Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 71.63,50.09
step
  talk Lord Maxwell Tyrosus##11034
  turnin Lord Maxwell Tyrosus##5264 |goto Eastern Plaguelands 71.9,48.41
step
  talk Lord Maxwell Tyrosus##11034
  accept The Argent Hold##5265 |goto Eastern Plaguelands 71.9,48.41
step
  turnin The Argent Hold##5265 |goto Eastern Plaguelands 71.96,48.41
step
  only not completed(5521) not completed(5524) not haveq(5521) not haveq(5524)
  talk Quartermaster Miranda Breechlock##11536
  accept Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 71.79,50.25
step
  only not completed(5521) not completed(5524) not haveq(5521) not haveq(5524)
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  collect 25 Argent Dawn Valor Token##12844 |q 5517 |goto Eastern Plaguelands 71.79,50.25
step
  only not completed(5521) not completed(5524) not haveq(5521) not haveq(5524)
  talk Quartermaster Miranda Breechlock##11536
  turnin Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Superior Armaments of Battle - Friend of the Dawn##9221 |goto Eastern Plaguelands 71.79,50.25
step
  note For 30 Insignias of the Dawn and 30 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  collect Insignia of the Dawn##22523 |q 9221 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Superior Armaments of Battle - Friend of the Dawn##9221 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Epic Armaments of Battle - Friend of the Dawn##9222 |goto Eastern Plaguelands 71.79,50.25
step
  note For 110 Insignias of the Dawn and 110 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  collect Insignia of the Dawn##22523 |q 9222 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Epic Armaments of Battle - Friend of the Dawn##9222 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Superior Armaments of Battle - Honored Amongst the Dawn##9223 |goto Eastern Plaguelands 71.79,50.25
step
  note For 20 Insignias of the Dawn and 20 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  collect Insignia of the Dawn##22523 |q 9223 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Superior Armaments of Battle - Honored Amongst the Dawn##9223 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Epic Armaments of Battle - Honored Amongst the Dawn##9224 |goto Eastern Plaguelands 71.79,50.25
step
  note For 75 Insignias of the Dawn and 75 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  collect Insignia of the Dawn##22523 |q 9224 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Epic Armaments of Battle - Honored Amongst the Dawn##9224 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Epic Armaments of Battle - Revered Amongst the Dawn##9225 |goto Eastern Plaguelands 71.79,50.25
step
  note For 45 Insignias of the Dawn and 45 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  collect Insignia of the Dawn##22523 |q 9225 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Epic Armaments of Battle - Revered Amongst the Dawn##9225 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Superior Armaments of Battle - Revered Amongst the Dawn##9226 |goto Eastern Plaguelands 71.79,50.25
step
  note For 7 Insignias of the Dawn and 7 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  collect Insignia of the Dawn##22523 |q 9226 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Superior Armaments of Battle - Revered Amongst the Dawn##9226 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Superior Armaments of Battle - Exalted Amongst the Dawn##9227 |goto Eastern Plaguelands 71.79,50.25
step
  note For 6 Insignias of the Dawn and 6 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  collect Insignia of the Dawn##22523 |q 9227 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Superior Armaments of Battle - Exalted Amongst the Dawn##9227 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  accept Epic Armaments of Battle - Exalted Amongst the Dawn##9228 |goto Eastern Plaguelands 71.79,50.25
step
  note For 27 Insignias of the Dawn and 27 Insignias of the Crusade you may choose an item from the Argent Dawn's treasure cache.
  collect Insignia of the Dawn##22523 |q 9228 |goto Eastern Plaguelands 71.79,50.25
step
  talk Quartermaster Miranda Breechlock##11536
  turnin Epic Armaments of Battle - Exalted Amongst the Dawn##9228 |goto Eastern Plaguelands 71.79,50.25
step
  only Druid
  talk Mokvar##16012
  accept An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Wildheart Bracers to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8913 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Druid
  talk Mokvar##16012
  turnin An Earnest Proposition##8913 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
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
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Druid
  talk Mokvar##16012
  accept Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  only Druid
  note Bring a Wildheart Belt and a set of Wildheart Gloves to Mokvar in Orgrimmar.
  collect Wildheart Belt##16716 |q 8927 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Raider, Bloodaxe Raider, Bile Spewer
step
  only Druid
  talk Mokvar##16012
  turnin Just Compensation##8927 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
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
  talk Colossus Researcher Sophia##15797
  accept Secrets of the Colossus - Zora##8859 |goto Silithus 49.47,37.3
step
  talk Lord Maxwell Tyrosus##11034
  turnin Secrets of the Colossus - Zora##8859 |goto Eastern Plaguelands 71.9,48.41
step
  only not completed(5507) not completed(5513) not haveq(5507) not haveq(5513)
  talk Argent Quartermaster Hasana##10856
  accept Mantles of the Dawn##5504 |goto Tirisfal Glades 83.26,68.14
step
  only not completed(5507) not completed(5513) not haveq(5507) not haveq(5513)
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Hasana at the Bulwark, Western Plaguelands.
  collect 10 Argent Dawn Valor Token##12844 |q 5504 |goto Tirisfal Glades 83.26,68.14
step
  only not completed(5507) not completed(5513) not haveq(5507) not haveq(5513)
  talk Argent Quartermaster Hasana##10856
  turnin Mantles of the Dawn##5504 |goto Tirisfal Glades 83.26,68.14
step
  talk High Executor Derrington##10837
  accept Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  note Bring Araj's Phylactery Shard to High Executor Derrington at the Bulwark, Western Plaguelands.
  collect Araj's Phylactery Shard##17114 |q 105 |goto Western Plaguelands 45.27,69.21 |tip {dropsfrom}Araj's Phylactery
step
  talk High Executor Derrington##10837
  turnin Alas, Andorhal##105 |goto Tirisfal Glades 83.13,68.94
step
  talk Eva Sarkhoff##11216
  accept Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  note Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete.
  kill Doctor Theolen Krastinov##11261 |q 5382 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Eva Sarkhoff##11216
  turnin Doctor Theolen Krastinov, the Butcher##5382 |goto Western Plaguelands 70.22,73.71
step
  talk Eva Sarkhoff##11216
  accept Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  note Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff.
  collect Krastinov's Bag of Horrors##13725 |q 5515 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Jandice Barov
step
  talk Eva Sarkhoff##11216
  turnin Krastinov's Bag of Horrors##5515 |goto Western Plaguelands 70.22,73.71
step
  talk Eva Sarkhoff##11216
  accept Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  note Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul.
  kill Kirtonos the Herald##10506 |q 5384 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Eva Sarkhoff##11216
  turnin Kirtonos the Herald##5384 |goto Western Plaguelands 70.22,73.71
step
  talk Magistrate Marduke##11286
  accept The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  note Travel to the Arathi Highlands, to the ruins of Stromgarde. Search Stromgarde for a Keepsake of Remembrance. If you find such an item, return with it to Magistrate Marduke.
  collect Keepsake of Remembrance##13585 |q 5461 |goto Arathi Highlands 20.8,65.8
step
  talk Magistrate Marduke##11286
  turnin The Human, Ras Frostwhisper##5461 |goto Western Plaguelands 70.57,74.11
step
  talk Magistrate Marduke##11286
  accept The Dying, Ras Frostwhisper##5462 |goto Western Plaguelands 70.57,74.11
step
  talk Leonid Barthalomew the Revered##11036
  turnin The Dying, Ras Frostwhisper##5462 |goto Eastern Plaguelands 71.89,48.29
step
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 71.89,48.29
step
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1
step
  click Menethil's Gift##176631
  accept Menethil's Gift##5464 |goto Stratholme - Dungeon -1,-1
step
  talk Leonid Barthalomew the Revered##11036
  turnin Menethil's Gift##5464 |goto Eastern Plaguelands 71.89,48.29
step
  talk Mataus the Wrathcaster##16133
  accept The Ice Guard##9211 |goto Eastern Plaguelands 71.58,48.65
step
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands wants 10 Insignia of the Crusade and 30 gold.
  collect Insignia of the Crusade##22524 |q 9211 |goto Eastern Plaguelands 71.58,48.65
step
  talk Mataus the Wrathcaster##16133
  turnin The Ice Guard##9211 |goto Eastern Plaguelands 71.58,48.65
step
  talk Mataus the Wrathcaster##16133
  accept The Shadow Guard##9213 |goto Eastern Plaguelands 71.58,48.65
step
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands wants 10 Insignia of the Crusade and 30 gold.
  collect Insignia of the Crusade##22524 |q 9213 |goto Eastern Plaguelands 71.58,48.65
step
  talk Mataus the Wrathcaster##16133
  turnin The Shadow Guard##9213 |goto Eastern Plaguelands 71.58,48.65
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Dungeon -1,-1 |elite
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Breastplate if you bring him the following items: 1 Desecrated Breastplate, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Breastplate##22349 |q 9034 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Breastplate##9034 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Legplates##9036 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Legplates if you bring him the following items: 1 Desecrated Legplates, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Legplates##22352 |q 9036 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Legplates##9036 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Helmet##9037 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Helmet if you bring him the following items: 1 Desecrated Helmet, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 1 Nexus Crystal.
  collect Desecrated Helmet##22353 |q 9037 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Helmet##9037 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Pauldrons if you bring him the following items: 1 Desecrated Pauldrons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Pauldrons##22354 |q 9038 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Pauldrons##9038 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Sabatons if you bring him the following items: 1 Desecrated Sabatons, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Sabatons##22358 |q 9039 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Sabatons##9039 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Gauntlets if you bring him the following items: 1 Desecrated Gauntlets, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Gauntlets##22357 |q 9040 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Gauntlets##9040 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make a Dreadnaught Waistguard if you bring him the following items: 1 Desecrated Waistguard, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Waistguard##22356 |q 9041 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Waistguard##9041 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  accept Dreadnaught Bracers##9042 |goto Eastern Plaguelands 71.95,48.52
step
  only Warrior
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands will make Dreadnaught Bracers if you bring him the following items: 1 Desecrated Bracers, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 1 Nexus Crystal.
  collect Desecrated Bracers##22355 |q 9042 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Warrior
  talk Korfax, Champion of the Light##16112
  turnin Dreadnaught Bracers##9042 |goto Eastern Plaguelands 71.95,48.52
step
  talk Korfax, Champion of the Light##16112
  accept The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  note Enter Naxxramas and uncover the Fate of Ramaladni.
  collect Fate of Ramaladni##22708 |q 9229 |goto Naxxramas - Dungeon -1,-1 |elite |tip {dropsfrom}Dread Creeper, Carrion Spinner, Venom Stalker
step
  talk Korfax, Champion of the Light##16112
  turnin The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  talk Korfax, Champion of the Light##16112
  accept Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 1 Frozen Rune, 1 Blue Sapphire and 1 Arcanite Bar.
  collect Frozen Rune##22682 |q 9230 |goto Naxxramas - Dungeon -1,-1
step
  talk Korfax, Champion of the Light##16112
  turnin Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Robe of Faith##9111 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Robe of Faith if you bring him the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Robe##22351 |q 9111 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Robe of Faith##9111 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Leggings of Faith##9112 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Leggings of Faith if you bring him the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Leggings##22366 |q 9112 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Leggings of Faith##9112 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Circlet of Faith##9113 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Circlet of Faith if you bring him the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  collect Desecrated Circlet##22367 |q 9113 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Circlet of Faith##9113 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Shoulderpads of Faith##9114 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Shoulderpads of Faith if you bring him the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Shoulderpads##22368 |q 9114 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Shoulderpads of Faith##9114 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Sandals of Faith##9115 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Sandals of Faith if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Sandals##22372 |q 9115 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Sandals of Faith##9115 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Gloves of Faith##9116 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Gloves of Faith if you bring him the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  collect Desecrated Gloves##22371 |q 9116 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Gloves of Faith##9116 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Belt of Faith##9117 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make a Belt of Faith if you bring him the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  collect Desecrated Belt##22370 |q 9117 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Belt of Faith##9117 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  talk Father Inigo Montoy##16113
  accept Bindings of Faith##9118 |goto Eastern Plaguelands 71.66,48.58
step
  only Priest
  note Father Inigo Montoy at Light's Hope Chapel in the Eastern Plaguelands will make Bindings of Faith if you bring him the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  collect Desecrated Bindings##22369 |q 9118 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Priest
  talk Father Inigo Montoy##16113
  turnin Bindings of Faith##9118 |goto Eastern Plaguelands 71.66,48.58
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Tunic##9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Plate Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Tunic##9043 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Legguards##9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Plate Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Legguards##22359 |q 9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Legguards##9044 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Headpiece##9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Plate Scraps, 5 Arcanite Bars and 2 Cured Rugged Hides.
  collect Desecrated Headpiece##22360 |q 9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Headpiece##9045 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Spaulders##9046 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a pair of Redemption Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Spaulders##22361 |q 9046 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Spaulders##9046 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Boots##9047 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Plate Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Boots##22365 |q 9047 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Boots##9047 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Handguards##9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Handguards##9048 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Girdle##9049 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make a Redemption Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Plate Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9049 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Girdle##9049 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Wristguards##9050 |goto Eastern Plaguelands 71.72,48.59
step
  only Paladin
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands will make Redemption Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Plate Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9050 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Wristguards##9050 |goto Eastern Plaguelands 71.72,48.59
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Robe##9103 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Robe if you bring him the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Robe##22351 |q 9103 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Robe##9103 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Leggings##9104 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Leggings if you bring him the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Leggings##22366 |q 9104 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Leggings##9104 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Circlet##9105 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Circlet if you bring him the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  collect Desecrated Circlet##22367 |q 9105 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Circlet##9105 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Shoulderpads if you bring him the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Shoulderpads##22368 |q 9106 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Shoulderpads##9106 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Sandals##9107 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Sandals if you bring him the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Sandals##22372 |q 9107 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Sandals##9107 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Gloves##9108 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Gloves if you bring him the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  collect Desecrated Gloves##22371 |q 9108 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Gloves##9108 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Belt##9109 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make a Plagueheart Belt if you bring him the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  collect Desecrated Belt##22370 |q 9109 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Belt##9109 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  accept Plagueheart Bindings##9110 |goto Eastern Plaguelands 71.58,48.65
step
  only Warlock
  note Mataus the Wrathcaster at Light's Hope Chapel in the Eastern Plaguelands will make Plagueheart Bindings if you bring him the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  collect Desecrated Bindings##22369 |q 9110 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Warlock
  talk Mataus the Wrathcaster##16133
  turnin Plagueheart Bindings##9110 |goto Eastern Plaguelands 71.58,48.65
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Robe##9095 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Robe if you bring her the following: 1 Desecrated Robe, 25 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Robe##22351 |q 9095 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Robe##9095 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Leggings##9096 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Leggings if you bring her the following: 1 Desecrated Leggings, 20 Wartorn Cloth Scraps, 4 Mooncloth and 2 Nexus Crystals.
  collect Desecrated Leggings##22366 |q 9096 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Leggings##9096 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Circlet##9097 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Circlet if you bring her the following: 1 Desecrated Circlet, 15 Wartorn Cloth Scraps, 3 Mooncloth and 3 Nexus Crystals.
  collect Desecrated Circlet##22367 |q 9097 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Circlet##9097 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Shoulderpads if you bring her the following: 1 Desecrated Shoulderpads, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Shoulderpads##22368 |q 9098 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Shoulderpads##9098 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Sandals##9099 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Sandals if you bring her the following: 1 Desecrated Sandals, 12 Wartorn Cloth Scraps, 2 Mooncloth and 3 Cured Rugged Hides.
  collect Desecrated Sandals##22372 |q 9099 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Sandals##9099 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Gloves##9100 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Gloves if you bring her the following: 1 Desecrated Gloves, 8 Wartorn Cloth Scraps and 4 Mooncloth.
  collect Desecrated Gloves##22371 |q 9100 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Gloves##9100 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Belt##9101 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make a Frostfire Belt if you bring her the following: 1 Desecrated Belt, 8 Wartorn Cloth Scraps, 2 Arcane Crystals and 2 Mooncloth.
  collect Desecrated Belt##22370 |q 9101 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Belt##9101 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  talk Archmage Angela Dosantos##16116
  accept Frostfire Bindings##9102 |goto Eastern Plaguelands 71.7,48.69
step
  only Mage
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will make Frostfire Bindings if you bring her the following: 1 Desecrated Bindings, 6 Wartorn Cloth Scraps, 1 Arcane Crystal and 1 Nexus Crystal.
  collect Desecrated Bindings##22369 |q 9102 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Mage
  talk Archmage Angela Dosantos##16116
  turnin Frostfire Bindings##9102 |goto Eastern Plaguelands 71.7,48.69
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Breastplate##9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Breastplate if you bring him the following: 1 Desecrated Breastplate, 25 Wartorn Leather Scraps, 2 Arcanite Bars and 6 Cured Rugged Hides.
  collect Desecrated Breastplate##22349 |q 9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Breastplate##9077 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Legplates##9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Legplates if you bring him the following: 1 Desecrated Legplates, 20 Wartorn Leather Scraps, 1 Arcanite Bar, 8 Cured Rugged Hides and 100 gold pieces.
  collect Desecrated Legplates##22352 |q 9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Legplates##9078 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Helmet##9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Helmet if you bring him the following: 1 Desecrated Helmet, 15 Wartorn Leather Scraps, 8 Cured Rugged Hides, 1 Nexus Crystal and 75 gold pieces.
  collect Desecrated Helmet##22353 |q 9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Helmet##9079 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Pauldrons if you bring him the following: 1 Desecrated Pauldrons, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 50 gold pieces.
  collect Desecrated Pauldrons##22354 |q 9080 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Pauldrons##9080 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Sabatons##9081 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Sabatons if you bring him the following: 1 Desecrated Sabatons, 12 Wartorn Leather Scraps, 3 Cured Rugged Hides, 2 Nexus Crystals and 25 gold pieces.
  collect Desecrated Sabatons##22358 |q 9081 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Sabatons##9081 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Gauntlets if you bring him the following: 1 Desecrated Gauntlets, 8 Wartorn Leather Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Gauntlets##22357 |q 9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Gauntlets##9082 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Waistguard##9083 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make a Bonescythe Waistguard if you bring him the following: 1 Desecrated Waistguard, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides, 1 Nexus Crystal and 15 gold pieces.
  collect Desecrated Waistguard##22356 |q 9083 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Waistguard##9083 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  talk Rohan the Assassin##16131
  accept Bonescythe Bracers##9084 |goto Eastern Plaguelands 71.62,48.91
step
  only Rogue
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands will make Bonescythe Bracers if you bring him the following: 1 Desecrated Bracers, 6 Wartorn Leather Scraps, 1 Arcanite Bar, 2 Cured Rugged Hides and 10 gold pieces.
  collect Desecrated Bracers##22355 |q 9084 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Rogue
  talk Rohan the Assassin##16131
  turnin Bonescythe Bracers##9084 |goto Eastern Plaguelands 71.62,48.91
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Tunic##9054 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9054 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Tunic##9054 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Legguards##9055 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  collect Desecrated Legguards##22359 |q 9055 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Legguards##9055 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9056 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Spaulders##22361 |q 9057 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Boots##9058 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Boots##22365 |q 9058 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Boots##9058 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Handguards##9059 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9059 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Handguards##9059 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Girdle##9060 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make a Cryptstalker Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9060 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Girdle##9060 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 71.69,48.94
step
  only Hunter
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands will make Cryptstalker Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9061 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 71.69,48.94
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Tunic##9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Tunic if you bring her the following: 1 Desecrated Tunic, 25 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  collect Desecrated Tunic##22350 |q 9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Tunic##9086 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Legguards##9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Legguards if you bring her the following: 1 Desecrated Legguards, 20 Wartorn Leather Scraps, 8 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Legguards##22359 |q 9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Legguards##9087 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Headpiece if you bring her the following: 1 Desecrated Headpiece, 15 Wartorn Leather Scraps, 6 Cured Rugged Hides and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Headpiece##9088 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Spaulders if you bring her the following: 1 Desecrated Spaulders, 12 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Spaulders##22361 |q 9089 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Spaulders##9089 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Boots##9090 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Boots if you bring her the following: 1 Desecrated Boots, 12 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  collect Desecrated Boots##22365 |q 9090 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Boots##9090 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Handguards##9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Handguards if you bring her the following: 1 Desecrated Handguards, 8 Wartorn Leather Scraps, 5 Cured Rugged Hides and 1 Nexus Crystal.
  collect Desecrated Handguards##22364 |q 9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Handguards##9091 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Girdle##9092 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make a Dreamwalker Girdle if you bring her the following: 1 Desecrated Girdle, 8 Wartorn Leather Scraps, 3 Mooncloth and 2 Cured Rugged Hides.
  collect Desecrated Girdle##22363 |q 9092 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Girdle##9092 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  talk Rayne##16135
  accept Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 71.41,49.35
step
  only Druid
  note Rayne at Light's Hope Chapel in the Eastern Plaguelands will make Dreamwalker Wristguards if you bring her the following: 1 Desecrated Wristguards, 6 Wartorn Leather Scraps, 1 Arcane Crystal and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9093 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Druid
  talk Rayne##16135
  turnin Dreamwalker Wristguards##9093 |goto Eastern Plaguelands 71.41,49.35
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Tunic##9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Tunic if you bring him the following: 1 Desecrated Tunic, 25 Wartorn Chain Scraps, 4 Arcanite Bars and 3 Cured Rugged Hides.
  collect Desecrated Tunic##22350 |q 9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Tunic##9068 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Legguards##9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Legguards if you bring him the following: 1 Desecrated Legguards, 20 Wartorn Chain Scraps, 3 Arcanite Bars and 5 Cured Rugged Hides.
  collect Desecrated Legguards##22359 |q 9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Legguards##9069 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Headpiece##9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Headpiece if you bring him the following: 1 Desecrated Headpiece, 15 Wartorn Chain Scraps, 4 Arcanite Bars and 2 Nexus Crystals.
  collect Desecrated Headpiece##22360 |q 9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Headpiece##9070 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Spaulders##9071 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Spaulders if you bring him the following: 1 Desecrated Spaulders, 12 Wartorn Chain Scraps, 2 Arcanite Bars and 2 Mooncloth.
  collect Desecrated Spaulders##22361 |q 9071 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Grobbulus, Gluth, Patchwerk
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Spaulders##9071 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Boots##9072 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Boots if you bring him the following: 1 Desecrated Boots, 12 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Boots##22365 |q 9072 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Gothik the Harvester, Instructor Razuvious
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Boots##9072 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Handguards##9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Handguards if you bring him the following: 1 Desecrated Handguards, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 5 Cured Rugged Hides.
  collect Desecrated Handguards##22364 |q 9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Handguards##9073 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Girdle##9074 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make an Earthshatter Girdle if you bring him the following: 1 Desecrated Girdle, 8 Wartorn Chain Scraps, 1 Arcanite Bar and 3 Nexus Crystals.
  collect Desecrated Girdle##22363 |q 9074 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Heigan the Unclean, Noth the Plaguebringer
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Girdle##9074 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  talk Rimblat Earthshatter##16134
  accept Earthshatter Wristguards##9075 |goto Eastern Plaguelands 71.34,49.36
step
  only Shaman
  note Rimblat Earthshatter at Light's Hope Chapel in the Eastern Plaguelands will make Earthshatter Wristguards if you bring him the following: 1 Desecrated Wristguards, 6 Wartorn Chain Scraps, 1 Arcanite Bar and 2 Cured Rugged Hides.
  collect Desecrated Wristguards##22362 |q 9075 |goto Naxxramas - Dungeon -1,-1 |raid |tip {dropsfrom}Gluth, Grand Widow Faerlina, Anub'Rekhan
step
  only Shaman
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Wristguards##9075 |goto Eastern Plaguelands 71.34,49.36
step
  talk Craftsman Wilhelm##16376
  accept The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 2 Frozen Runes, 2 Essence of Water, 2 Blue Sapphires and 30 gold pieces.
  collect Frozen Rune##22682 |q 9232 |goto Naxxramas - Dungeon -1,-1
step
  talk Craftsman Wilhelm##16376
  turnin The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  kill Kel'Thuzad##15990 |goto Naxxramas - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Fall of Kel'Thuzad##9120 |goto Naxxramas - Dungeon -1,-1
step
  talk Father Inigo Montoy##16113
  turnin The Fall of Kel'Thuzad##9120 |goto Eastern Plaguelands 71.66,48.58
]])
