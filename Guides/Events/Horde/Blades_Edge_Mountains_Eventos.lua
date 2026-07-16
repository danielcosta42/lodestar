-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Blade's Edge Mountains (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Tree Warden Chawn##22007
  accept A Time for Negotiation...##10682 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Commander Ameer##20448
  accept A Mission of Mercy##10970 |goto Netherstorm 59.5,32.38
step
  talk Grok##22940
  accept Mog'dorg the Wizened##10983 |goto Shattrath City 64.93,68.14
step
  talk Mog'dorg the Wizened##22941
  accept Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Even Gronn Have Standards##10997 |goto Blade's Edge Mountains 55.49,44.86
step
  note Retrieve the Thunderlord Clan Drum, Thunderlord Clan Arrow and the Thunderlord Clan Tablet. Return them, along with the Thunderlord Clan Artifact, to Rokgah Bloodgrip at Thunderlord Stronghold in the Blade's Edge Mountains.
  collect Thunderlord Clan Arrow##30433 |q 10524 |goto Blade's Edge Mountains 41.54,52.66 |tip {dropsfrom}Thunderlord Clan Arrow
step
  note Recover the Salvaged Ethereum Prison Key for Commander Ameer at the Protectorate Watch Post in Netherstorm.
  collect Salvaged Ethereum Prison Key##31956 |q 10970 |goto Netherstorm 56.71,38.2 |tip {dropsfrom}Ethereum Assassin, Ethereum Shocktrooper, Nexus-King Salhadaar
step
  note Retrieve Maggoc's Treasure Chest and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Maggoc's Treasure Chest##32380 |q 10996 |goto Blade's Edge Mountains 58.59,60.8 |tip {dropsfrom}Maggoc's Treasure Chest
step
  note Retrieve Slaag's Standard and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Slaag's Standard##32382 |q 10997 |goto Terokkar Forest 20.17,18.1 |tip {dropsfrom}Slaag's Standard
step
  talk Rokgah Bloodgrip##21311
  turnin Thunderlord Clan Artifacts##10524 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Tree Warden Chawn##22007
  turnin A Time for Negotiation...##10682 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Tree Warden Chawn##22007
  turnin Did You Get The Note?##10719 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Commander Ameer##20448
  turnin A Mission of Mercy##10970 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  turnin Mog'dorg the Wizened##10983 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Even Gronn Have Standards##10997 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Rokgah Bloodgrip##21311
  accept Vision Guide##10525 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Tree Warden Chawn##22007
  accept Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Commander Ameer##20448
  accept Ethereum Secrets##10971 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  note Commander Ameer at the Protectorate Watch Post in Netherstorm wants you to bring him an Ethereum Prisoner I.D. Tag.
  collect Ethereum Prisoner I.D. Tag##31957 |q 10971 |goto Netherstorm 59.5,32.38 |tip {dropsfrom}Porfus the Gem Gorger, Armbreaker Huffaz, Fel Tinkerer Zortan
step
  note Retrieve Grulloc's Dragon Skull and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Grulloc's Dragon Skull##32379 |q 10995 |goto Blade's Edge Mountains 60.92,47.61 |tip {dropsfrom}Grulloc, Grulloc's Dragon Skull
step
  talk Rokgah Bloodgrip##21311
  turnin Vision Guide##10525 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Watcher Moonshade##22386
  turnin Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Commander Ameer##20448
  turnin Ethereum Secrets##10971 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Watcher Moonshade##22386
  accept Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Commander Ameer##20448
  accept A Thousand Worlds##10973 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  accept Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  note Eliminate Draaca Longtail, the leader of the wyrmcultists in Wyrmskull Tunnel. Report back to Watcher Moonshade at the Wyrmskull Tunnel in the Blade's Edge Mountains once you have done so.
  kill Draaca Longtail##22396 |q 10893 |goto Blade's Edge Mountains 45.19,32.49
step
  note Commander Ameer at the Protectorate Watch Post in Netherstorm wants you to bring him 5 Ethereum Prison Keys.
  collect Ethereum Prison Key##29460 |q 10973 |goto Mana-Tombs - Dungeon -1,-1 |tip {dropsfrom}Ethereal Scavenger, Ethereal Crypt Raider, Ethereal Spellbinder
step
  note You must retrieve Vim'gol's Vile Grimoire. Deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Vim'gol's Vile Grimoire##32358 |q 10998 |goto Blade's Edge Mountains 55.49,44.86 |tip {dropsfrom}Vim'gol's Vile Grimoire
step
  talk Watcher Moonshade##22386
  turnin Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Commander Ameer##20448
  turnin A Thousand Worlds##10973 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Watcher Moonshade##22386
  accept Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Commander Ameer##20448
  accept Stasis Chambers of Bash'ir##10974 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  note Use the Ethereum Key Tablet - Alpha to open Stasis Chamber Alpha at Bash'ir's Landing in Blade's Edge Mountains.
  collect Evidence from Alpha##32061 |q 10974 |goto Netherstorm 59.5,32.38 |tip {dropsfrom}Thuk the Defiant
step
  note Retrieve Skulloc's Soul and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Skulloc's Soul##32383 |q 11000 |goto Blade's Edge Mountains 55.49,44.86 |tip {dropsfrom}Skulloc's Soul
step
  talk Tree Warden Chawn##22007
  turnin Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Image of Commander Ameer##22919
  turnin Stasis Chambers of Bash'ir##10974 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Mog'dorg the Wizened##22941
  turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Image of Commander Ameer##22919
  accept The Mark of the Nexus-King##10976 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Mog'dorg the Wizened##22941
  accept Ogre Heaven##11009 |goto Blade's Edge Mountains 55.49,44.86
step
  note The Image of Commander Ameer at Bash'ir's Landing in the Blade's Edge Mountains wants you to bring him a Mark of the Nexus-King.
  collect Mark of the Nexus-King##31941 |q 10976 |goto Blade's Edge Mountains 52.85,14.99 |tip {dropsfrom}Solus the Eternal, Matron Li-sahar, King Dorfbruiser
step
  talk Image of Commander Ameer##22919
  turnin The Mark of the Nexus-King##10976 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Chu'a'lor##23233
  turnin Ogre Heaven##11009 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Image of Commander Ameer##22919
  accept Stasis Chambers of the Mana-Tombs##10977 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Chu'a'lor##23233
  accept The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  note Chu'a'lor has tasked you with gathering 5 Apexis Shards. Bring them to him at Ogri'la atop the Blade's Edge Mountains.
  collect 5 Apexis Shard##32569 |q 11025 |goto Blade's Edge Mountains 28.84,81.09 |tip {dropsfrom}Abyssal Flamebringer, Wrath Hound, Hemathion
step
  talk Image of Commander Ameer##22919
  turnin Stasis Chambers of the Mana-Tombs##10977 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Chu'a'lor##23233
  turnin The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Chu'a'lor##23233
  accept An Apexis Relic##11058 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Chu'a'lor##23233
  turnin An Apexis Relic##11058 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Chu'a'lor##23233
  accept The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Chu'a'lor##23233
  turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.76,57.36
]])
