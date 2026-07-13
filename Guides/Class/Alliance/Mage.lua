-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Mage", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only Mage
  talk Firmanvaar##17089
  accept Shaman Training##9421 |goto Azuremyst Isle 79.28,49.12
step
  only Draenei Mage
  talk Sulaa##17219
  accept Call of Water##9500 |goto The Exodar 32.25,23.87
step
  only Draenei Mage
  talk Farseer Nobundo##17204
  accept Call of Water##9501 |goto The Exodar 29.72,33.26
step
  only Mage
  talk Haromm##986
  accept Elemental Mastery##8410 |goto Swamp of Sorrows 48.19,57.94
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Mage
  talk Andorgos##15502
  accept Stormcaller's Pauldrons##8602 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  accept Stormcaller's Footguards##8621 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Vethsera##15504
  accept Stormcaller's Hauberk##8622 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Andorgos##15502
  accept Stormcaller's Diadem##8623 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  accept Stormcaller's Leggings##8624 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Keyl Swiftclaw##15500
  accept Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  only Mage
  talk Windcaller Yessendra##15498
  accept Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Mage
  talk Warden Haro##15499
  accept Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Mage
  talk Deliana##16013
  accept An Earnest Proposition##10492 |goto Ironforge 43.53,52.64
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  kill Frankal Invisible Trigger##15221 |q 8304 |goto Silithus 40.62,89.18
step
  only Mage
  talk Firmanvaar##17089
  turnin Shaman Training##9421 |goto Azuremyst Isle 79.28,49.12
step
  only Draenei Mage
  talk Farseer Nobundo##17204
  turnin Call of Water##9500 |goto The Exodar 29.72,33.26
step
  only Draenei Mage
  talk Aqueous##17275
  turnin Call of Water##9501 |goto Bloodmyst Isle 32.3,16.18
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Mastery##8410 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Lorekeeper Javon##14381
  turnin Frost Shock and You##7505 |goto Dire Maul - Dungeon -1,-1
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  only Mage
  talk Andorgos##15502
  turnin Stormcaller's Pauldrons##8602 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  turnin Stormcaller's Footguards##8621 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Vethsera##15504
  turnin Stormcaller's Hauberk##8622 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Andorgos##15502
  turnin Stormcaller's Diadem##8623 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  turnin Stormcaller's Leggings##8624 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Keyl Swiftclaw##15500
  turnin Cloak of the Gathering Storm##8690 |goto Silithus 51.76,39.54
step
  only Mage
  talk Windcaller Yessendra##15498
  turnin Ring of the Gathering Storm##8698 |goto Silithus 52.05,38.16
step
  only Mage
  talk Warden Haro##15499
  turnin Hammer of the Gathering Storm##8706 |goto Silithus 51.14,38.94
step
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 81.52,58.27
step
  only Mage
  talk Deliana##16013
  turnin An Earnest Proposition##10492 |goto Ironforge 43.53,52.64
step
  only Draenei Mage
  talk Aqueous##17275
  accept Call of Water##9503 |goto Bloodmyst Isle 32.3,16.18
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  accept Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Raid -1,-1
step
  only Draenei Mage
  talk Aqueous##17275
  turnin Call of Water##9503 |goto Bloodmyst Isle 32.3,16.18
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
step
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 81.54,58.16
step
  only Draenei Mage
  talk Aqueous##17275
  accept Call of Water##9504 |goto Bloodmyst Isle 32.3,16.18
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  accept Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Tunic##9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Headpiece##9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Spaulders##9071 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Boots##9072 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Handguards##9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  accept Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
step
  only Draenei Mage
  talk Aqueous##17275
  turnin Call of Water##9504 |goto Bloodmyst Isle 32.3,16.18
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Tunic##9068 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Legguards##9069 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Headpiece##9070 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Spaulders##9071 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Boots##9072 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Handguards##9073 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Girdle##9074 |goto Eastern Plaguelands 81.12,59.02
step
  only Mage
  talk Rimblat Earthshatter##16134
  turnin Earthshatter Wristguards##9075 |goto Eastern Plaguelands 81.12,59.02
step
  only Draenei Mage
  talk Aqueous##17275
  accept Call of Water##9508 |goto Bloodmyst Isle 32.3,16.18
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Draenei Mage
  talk Aqueous##17275
  turnin Call of Water##9508 |goto Bloodmyst Isle 32.3,16.18
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  only Draenei Mage
  talk Aqueous##17275
  accept Call of Water##9509 |goto Bloodmyst Isle 32.3,16.18
step
  only Mage
  talk Geologist Larksbane##15183
  accept Armaments of War##8380 |goto Silithus 49.67,37.46
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  only Draenei Mage
  talk Farseer Nobundo##17204
  turnin Call of Water##9509 |goto The Exodar 29.72,33.26
step
  only Mage
  talk Geologist Larksbane##15183
  turnin Armaments of War##8380 |goto Silithus 49.67,37.46
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
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  accept Just Compensation##10494 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  turnin Just Compensation##10494 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 30.85,16.75
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
  only Mage
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##10496 |goto Eastern Plaguelands 30.85,16.75
step
  only Mage
  talk Deliana##16013
  turnin Anthion's Parting Words##10496 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960
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
  accept Back to the Beginning##8997
step
  talk Deliana##16013
  turnin Back to the Beginning##8997 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  accept Saving the Best for Last##10498 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  turnin Saving the Best for Last##10498 |goto Ironforge 43.53,52.64
]])
