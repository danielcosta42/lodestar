-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Eastern Kingdoms - the continent map (60-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  kill Scarshield Quartermaster##9046 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip Loot the quest item here — it starts the quest.
  accept Blackhand's Command##7761 |goto Eastern Kingdoms - the continent map 49.12,64.1
step
  talk Bodley##16033
  accept Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather the Incendicite of Incendius, the Ember of Emberseer and the Cinder of Cynders, along with a Hallowed Brazier, and return them to Bodley inside Blackrock Mountain.
  collect Incendicite of Incendius##21987 |q 8961 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Lord Incendius
step
  talk Bodley##16033
  accept Back to the Beginning##8998 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29 |tip {turninat}Orgrimmar
step
  turnin Blackhand's Command##7761 |goto Blackrock Spire - Dungeon -1,-1 |tip {turninat}Blackrock Spire - Dungeon
step
  talk Bodley##16033
  turnin Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 61.05,86.89 |elite
  collect Druidical Remains##22226 |q 8962 |goto Silithus 61.05,86.89
step
  talk Bodley##16033
  accept Components of Importance##8963 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.28 |elite
  collect Starbreeze Village Relic##22227 |q 8963 |goto Winterspring 62.56,69.28
step
  talk Bodley##16033
  accept Components of Importance##8964 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Retrieve a Brilliant Sword of Zealotry and return it to Bodley inside Blackrock Mountain.
  kill Scarlet Praetorian##9448 |goto Eastern Plaguelands 76.12,72.73 |elite
  collect Brilliant Sword of Zealotry##22228 |q 8964 |goto Eastern Plaguelands 76.12,72.73
step
  talk Bodley##16033
  accept Components of Importance##8965 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Obtain Soul Ashes of the Banished and return them to Bodley inside Blackrock Mountain.
  kill Condemned Acolyte##7068 |goto Hillsbrad Foothills 19.7,77.93 |elite
  collect Soul Ashes of the Banished##22229 |q 8965 |goto Hillsbrad Foothills 19.7,77.93
step
  talk Bodley##16033
  turnin Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin Components of Importance##8963 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin Components of Importance##8964 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin Components of Importance##8965 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8967 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8968 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8969 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8966 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Isalien##16097 |q 8967 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Jarien##16101 |q 8968 |goto Stratholme - Dungeon -1,-1 |elite
step
  note Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Kormok##16118 |q 8969 |goto Scholomance - Dungeon -1,-1 |elite
step
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8967 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8968 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8969 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 20 Bloodkelp from the Strashaz naga and then return to Bodley inside Blackrock Mountain.
  kill Strashaz Warrior##4364 |goto Dustwallow Marsh 75.47,18.43 |elite
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 75.47,18.43
step
  talk Bodley##16033
  turnin I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.28 |elite
  collect Starbreeze Village Relic##22227 |q 8985 |goto Winterspring 62.56,69.28
step
  talk Bodley##16033
  accept More Components of Importance##8986 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 61.05,86.89 |elite
  collect Druidical Remains##22226 |q 8986 |goto Silithus 61.05,86.89
step
  talk Bodley##16033
  accept More Components of Importance##8987 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Retrieve a Brilliant Sword of Zealotry and return it to Bodley inside Blackrock Mountain.
  kill Scarlet Praetorian##9448 |goto Eastern Plaguelands 76.12,72.73 |elite
  collect Brilliant Sword of Zealotry##22228 |q 8987 |goto Eastern Plaguelands 76.12,72.73
step
  talk Bodley##16033
  accept More Components of Importance##8988 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Obtain Soul Ashes of the Banished and return them to Bodley inside Blackrock Mountain.
  kill Condemned Acolyte##7068 |goto Hillsbrad Foothills 19.7,77.93 |elite
  collect Soul Ashes of the Banished##22229 |q 8988 |goto Hillsbrad Foothills 19.7,77.93
step
  talk Bodley##16033
  turnin More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin More Components of Importance##8986 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin More Components of Importance##8987 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin More Components of Importance##8988 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8990 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8991 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8992 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Kormok##16118 |q 8992 |goto Scholomance - Dungeon -1,-1 |elite
step
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8989 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Isalien##16097 |q 8990 |goto Dire Maul - Dungeon -1,-1 |elite
step
  note Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Jarien##16101 |q 8991 |goto Stratholme - Dungeon -1,-1 |elite
step
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8992 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8990 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8991 |goto Eastern Kingdoms - the continent map 48.9,63.93
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
  turnin Mea Culpa, Lord Valthalak##8995 |goto Blackrock Spire - Dungeon -1,-1 |tip {turninat}Blackrock Spire - Dungeon
]])
