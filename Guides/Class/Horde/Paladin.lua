-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Paladin", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  accept The Second Trial##9690 |goto Silvermoon City 89.26,35.2
step
  talk Magistrix Erona##15278
  accept Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Champion Cyssa Dawnrose##20406
  accept To The Bulwark##9601 |goto Undercity 58.0,90.45
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Armguards##8053 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Belt##8054 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Breastplate##8055 |goto Stranglethorn Vale 15.31,14.43
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Paladin
  talk Vethsera##15504
  accept Avenger's Breastplate##8627 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  accept Avenger's Crown##8628 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  accept Avenger's Legguards##8629 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  accept Avenger's Pauldrons##8630 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  accept Avenger's Greaves##8655 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Keyl Swiftclaw##15500
  accept Cape of Eternal Justice##8695 |goto Silithus 51.76,39.54
step
  only Paladin
  talk Windcaller Yessendra##15498
  accept Ring of Eternal Justice##8703 |goto Silithus 52.05,38.16
step
  only Paladin
  talk Warden Haro##15499
  accept Blade of Eternal Justice##8711 |goto Silithus 51.14,38.94
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Paladin
  talk Mokvar##16012
  accept An Earnest Proposition##10493 |goto Orgrimmar 34.95,38.29
step
  note Kill 8 Mana Wyrms; they are located close to the Burning Crystals that are adjacent to the tower and gazebo. Return to Magistrix Erona at the tower on Sunstrider Isle when you are done.
  kill Mana Wyrm##15274 |q 8325 |goto Eversong Woods 36.91,21.9
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  kill Frankal Invisible Trigger##15221 |q 8304 |goto Silithus 40.62,89.18
step
  only BloodElf Paladin
  talk Master Kelerun Bloodmourn##17807
  turnin The Second Trial##9690 |goto Eversong Woods 42.88,28.69
step
  talk Magistrix Erona##15278
  turnin Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin To The Bulwark##9601 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Lorekeeper Mykos##14382
  turnin The Light and How To Swing It##7501 |goto Dire Maul - Dungeon -1,-1
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Armguards##8053 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Belt##8054 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Breastplate##8055 |goto Stranglethorn Vale 15.31,14.43
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Paladin
  talk Vethsera##15504
  turnin Avenger's Breastplate##8627 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  turnin Avenger's Crown##8628 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  turnin Avenger's Legguards##8629 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  turnin Avenger's Pauldrons##8630 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  turnin Avenger's Greaves##8655 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Keyl Swiftclaw##15500
  turnin Cape of Eternal Justice##8695 |goto Silithus 51.76,39.54
step
  only Paladin
  talk Windcaller Yessendra##15498
  turnin Ring of Eternal Justice##8703 |goto Silithus 52.05,38.16
step
  only Paladin
  talk Warden Haro##15499
  turnin Blade of Eternal Justice##8711 |goto Silithus 51.14,38.94
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Paladin
  talk Mokvar##16012
  turnin An Earnest Proposition##10493 |goto Orgrimmar 34.95,38.29
step
  only BloodElf Paladin
  talk Master Kelerun Bloodmourn##17807
  accept The Second Trial##9686 |goto Eversong Woods 42.88,28.69
step
  only Warlock
  talk Magistrix Erona##15278
  accept Mage Training##8328 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Magistrix Erona##15278
  accept Paladin Training##9676 |goto Eversong Woods 38.21,20.83
step
  only Paladin
  talk Mehlar Dawnblade##17099
  accept Prove Your Hatred##10590 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  only BloodElf Paladin
  talk Master Kelerun Bloodmourn##17807
  turnin The Second Trial##9686 |goto Eversong Woods 42.88,28.69
step
  only Warlock
  talk Julia Sunstriker##15279
  turnin Mage Training##8328 |goto Eversong Woods 39.23,21.46
step
  only Paladin
  talk Jesthenis Sunstriker##15280
  turnin Paladin Training##9676 |goto Eversong Woods 39.47,20.56
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin Prove Your Hatred##10590 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  only BloodElf Paladin
  talk Master Kelerun Bloodmourn##17807
  accept Return to Silvermoon##9691 |goto Eversong Woods 42.88,28.69
step
  only Paladin
  talk Julia Sunstriker##15279
  accept Well Watcher Solanian##10069 |goto Eversong Woods 39.23,21.46
step
  only Paladin
  talk Mehlar Dawnblade##17099
  accept Wisdom of the Banshee Queen##10592 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Tunic##9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Legguards##9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Headpiece##9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Spaulders##9046 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Handguards##9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Girdle##9049 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  accept Redemption Wristguards##9050 |goto Eastern Plaguelands 81.54,58.16
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  turnin Return to Silvermoon##9691 |goto Silvermoon City 89.26,35.2
step
  only Paladin
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10069 |goto Eversong Woods 38.76,19.36
step
  only Paladin
  talk Lady Sylvanas Windrunner##10181
  turnin Wisdom of the Banshee Queen##10592 |goto Undercity 58.05,91.79
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Tunic##9043 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Legguards##9044 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Headpiece##9045 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Spaulders##9046 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Boots##9047 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Handguards##9048 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Girdle##9049 |goto Eastern Plaguelands 81.54,58.16
step
  only Paladin
  talk Commander Eligor Dawnbringer##16115
  turnin Redemption Wristguards##9050 |goto Eastern Plaguelands 81.54,58.16
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  accept The Path of the Adept##9692 |goto Silvermoon City 89.26,35.2
step
  only Paladin
  talk Lady Sylvanas Windrunner##10181
  accept Ancient Evil##10593 |goto Undercity 58.05,91.79
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  turnin The Path of the Adept##9692 |goto Silvermoon City 89.26,35.2
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin Ancient Evil##10593 |goto Tirisfal Glades 83.22,71.32
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  accept Forging the Weapon##9707 |goto Silvermoon City 89.26,35.2
step
  only Paladin
  talk Geologist Larksbane##15183
  accept Armaments of War##8376 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  talk Bemarrin##16669
  turnin Forging the Weapon##9707 |goto Silvermoon City 79.38,38.64
step
  only Paladin
  talk Geologist Larksbane##15183
  turnin Armaments of War##8376 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  talk Bemarrin##16669
  accept The Blood-Tempered Ranseur##9710 |goto Silvermoon City 79.38,38.64
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  only BloodElf Paladin
  talk Bemarrin##16669
  turnin The Blood-Tempered Ranseur##9710 |goto Silvermoon City 79.38,38.64
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
  only Paladin
  talk Mokvar##16012
  accept Just Compensation##10495 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  talk Mokvar##16012
  turnin Just Compensation##10495 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 30.85,16.75
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946
step
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 30.85,16.75
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 30.85,16.75
step
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 30.85,16.75
step
  only Paladin
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##10497 |goto Eastern Plaguelands 30.85,16.75
step
  only Paladin
  talk Mokvar##16012
  turnin Anthion's Parting Words##10497 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032
step
  talk Bodley##16033
  accept Three Kings of Flame##8961
step
  talk Bodley##16033
  turnin Three Kings of Flame##8961
step
  talk Bodley##16033
  accept Components of Importance##8965
step
  talk Bodley##16033
  turnin Components of Importance##8965
step
  talk Bodley##16033
  accept More Components of Importance##8986
step
  talk Bodley##16033
  turnin More Components of Importance##8986
step
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989
step
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989
step
  talk Bodley##16033
  accept Final Preparations##8994
step
  talk Bodley##16033
  turnin Final Preparations##8994
step
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995
step
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995
step
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996
step
  talk Bodley##16033
  turnin Return to Bodley##8996
step
  talk Bodley##16033
  accept Back to the Beginning##8998
step
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  talk Mokvar##16012
  accept Saving the Best for Last##10499 |goto Orgrimmar 34.95,38.29
step
  only Paladin
  talk Mokvar##16012
  turnin Saving the Best for Last##10499 |goto Orgrimmar 34.95,38.29
]])
