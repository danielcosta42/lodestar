-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Hunter", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Magistrix Erona##15278
  accept Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.88,77.07
step
  talk Gornek##3143
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Hunter
  talk Kary Thunderhorn##3038
  accept The Hunter's Charm##8151 |goto Thunder Bluff 58.49,88.33
step
  only Hunter
  talk Vartrus the Ancient##14524
  accept An Introduction##7633
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Bracers##8062 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Belt##8066 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Mantle##8067 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Hunter
  talk Kandrostrasz##15503
  accept Striker's Footguards##8626 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Vethsera##15504
  accept Striker's Hauberk##8656 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  accept Striker's Diadem##8657 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  accept Striker's Leggings##8658 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  accept Striker's Pauldrons##8659 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Keyl Swiftclaw##15500
  accept Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only Hunter
  talk Windcaller Yessendra##15498
  accept Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Hunter
  talk Warden Haro##15499
  accept Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  only Hunter
  talk Mokvar##16012
  accept An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  note Kill 8 Mana Wyrms; they are located close to the Burning Crystals that are adjacent to the tower and gazebo. Return to Magistrix Erona at the tower on Sunstrider Isle when you are done.
  kill Mana Wyrm##15274 |q 8325 |goto Eversong Woods 36.91,21.9
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  kill Mottled Boar##3098 |q 788 |goto Durotar 44.44,64.81
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  kill Frankal Invisible Trigger##15221 |q 8304 |goto Silithus 40.62,89.18
step
  talk Magistrix Erona##15278
  turnin Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.21,20.83
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.88,77.07
step
  talk Gornek##3143
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Hunter
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Lorekeeper Mykos##14382
  turnin The Greatest Race of Hunters##7503 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin The Ancient Leaf##7632
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin An Introduction##7633
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Bracers##8062 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Belt##8066 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Mantle##8067 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Hunter
  talk Kandrostrasz##15503
  turnin Striker's Footguards##8626 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Vethsera##15504
  turnin Striker's Hauberk##8656 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  turnin Striker's Diadem##8657 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  turnin Striker's Leggings##8658 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  turnin Striker's Pauldrons##8659 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Unseen Path##8696 |goto Silithus 51.76,39.54
step
  only Hunter
  talk Windcaller Yessendra##15498
  turnin Signet of the Unseen Path##8704 |goto Silithus 52.05,38.16
step
  only Hunter
  talk Warden Haro##15499
  turnin Scythe of the Unseen Path##8712 |goto Silithus 51.14,38.94
step
  only Hunter
  talk Mokvar##16012
  turnin An Earnest Proposition##8914 |goto Orgrimmar 34.95,38.29
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Troll Hunter
  talk Gornek##3143
  accept Etched Tablet##3082 |goto Durotar 42.06,68.33
step
  only Orc Hunter
  talk Gornek##3143
  accept Etched Parchment##3087 |goto Durotar 42.06,68.33
step
  only Hunter
  talk Grull Hawkwind##2980
  accept Etched Note##3092 |goto Mulgore 44.88,77.07
step
  only Priest
  talk Magistrix Erona##15278
  accept Priest Training##8564 |goto Eversong Woods 38.21,20.83
step
  only Hunter
  talk Magistrix Erona##15278
  accept Hunter Training##9393 |goto Eversong Woods 38.21,20.83
step
  only Hunter
  talk Ogtinc##8405
  accept Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Hastat the Ancient##14526
  accept Ancient Sinew Wrapped Lamina##7634
step
  only Hunter
  talk Stoma the Ancient##14525
  accept A Proper String##7635
step
  only Hunter
  talk Vartrus the Ancient##14524
  accept Stave of the Ancients##7636
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
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
  only Troll Hunter
  talk Jen'shan##3154
  turnin Etched Tablet##3082 |goto Durotar 42.84,69.33
step
  only Orc Hunter
  talk Jen'shan##3154
  turnin Etched Parchment##3087 |goto Durotar 42.84,69.33
step
  only Hunter
  talk Lanka Farshot##3061
  turnin Etched Note##3092 |goto Mulgore 44.26,75.69
step
  only Priest
  talk Matron Arena##15284
  turnin Priest Training##8564 |goto Eversong Woods 39.42,20.38
step
  only Hunter
  talk Ranger Sallina##15513
  turnin Hunter Training##9393 |goto Eversong Woods 39.05,20.01
step
  only Hunter
  talk Ogtinc##8405
  turnin Courser Antlers##8153 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Hastat the Ancient##14526
  turnin Ancient Sinew Wrapped Lamina##7634
step
  only Hunter
  talk Stoma the Ancient##14525
  turnin A Proper String##7635
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin Stave of the Ancients##7636
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
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
  only Hunter
  talk Matron Arena##15284
  accept Well Watcher Solanian##10070 |goto Eversong Woods 39.42,20.38
step
  only Hunter
  talk Ogtinc##8405
  accept Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Tunic##9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Legguards##9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Boots##9058 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Handguards##9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Girdle##9060 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  accept Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Well Watcher Solanian##15295
  turnin Well Watcher Solanian##10070 |goto Eversong Woods 38.76,19.36
step
  only Hunter
  talk Ogtinc##8405
  turnin Wavethrashing##8231 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Tunic##9054 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Legguards##9055 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Headpiece##9056 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Spaulders##9057 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Boots##9058 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Handguards##9059 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Girdle##9060 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Huntsman Leopold##16132
  turnin Cryptstalker Wristguards##9061 |goto Eastern Plaguelands 81.51,58.55
step
  only Hunter
  talk Ogtinc##8405
  accept The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Hunter
  talk Ogtinc##8405
  turnin The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Hunter
  talk Geologist Larksbane##15183
  accept Armaments of War##8377 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Hunter
  talk Geologist Larksbane##15183
  turnin Armaments of War##8377 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
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
  only Hunter
  talk Mokvar##16012
  accept Just Compensation##8938 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  turnin Just Compensation##8938 |goto Orgrimmar 34.95,38.29
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
  only Hunter
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9017 |goto Eastern Plaguelands 30.85,16.75
step
  only Hunter
  talk Mokvar##16012
  turnin Anthion's Parting Words##9017 |goto Orgrimmar 34.95,38.29
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
  only Hunter
  talk Mokvar##16012
  accept Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
step
  only Hunter
  talk Mokvar##16012
  turnin Saving the Best for Last##9008 |goto Orgrimmar 34.95,38.29
]])
