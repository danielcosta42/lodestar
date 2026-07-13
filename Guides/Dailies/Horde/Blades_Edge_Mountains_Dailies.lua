-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Horde/Blade's Edge Mountains (Dailies)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
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
  talk Sky Sergeant Vanderlip##23120
  accept Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.56,52.9
step
  note Recover the Salvaged Ethereum Prison Key for Commander Ameer at the Protectorate Watch Post in Netherstorm.
  kill Ethereum Assassin##20452 |q 10970 |goto Netherstorm 56.71,38.2
step
  note Retrieve Maggoc's Treasure Chest and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Maggoc##20600 |q 10996 |goto Blade's Edge Mountains 58.59,60.8
step
  note Retrieve Slaag's Standard and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Slaag##22199 |q 10997 |goto Terokkar Forest 20.17,18.1
step
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bomb Them Again! |q 11023 |goto Blade's Edge Mountains 27.56,52.9
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
  talk Sky Sergeant Vanderlip##23120
  turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Commander Ameer##20448
  accept Ethereum Secrets##10971 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  note Commander Ameer at the Protectorate Watch Post in Netherstorm wants you to bring him an Ethereum Prisoner I.D. Tag.
  get Ethereum Secrets |q 10971 |goto Netherstorm 59.5,32.38
step
  note Retrieve Grulloc's Dragon Skull and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Grulloc##20216 |q 10995 |goto Blade's Edge Mountains 60.92,47.61
step
  talk Commander Ameer##20448
  turnin Ethereum Secrets##10971 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Commander Ameer##20448
  accept A Thousand Worlds##10973 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  accept Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  note Commander Ameer at the Protectorate Watch Post in Netherstorm wants you to bring him 5 Ethereum Prison Keys.
  kill Ethereal Scavenger##18309 |q 10973 |goto Mana-Tombs - Dungeon -1,-1
step
  note You must retrieve Vim'gol's Vile Grimoire. Deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  get Grim(oire) Business |q 10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Commander Ameer##20448
  turnin A Thousand Worlds##10973 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Commander Ameer##20448
  accept Stasis Chambers of Bash'ir##10974 |goto Netherstorm 59.5,32.38
step
  talk Mog'dorg the Wizened##22941
  accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  note Use the Ethereum Key Tablet - Alpha to open Stasis Chamber Alpha at Bash'ir's Landing in Blade's Edge Mountains.
  get Stasis Chambers of Bash'ir |q 10974 |goto Netherstorm 59.5,32.38
step
  note Retrieve Skulloc's Soul and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  get Into the Soulgrinder |q 11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Image of Commander Ameer##22919
  turnin Stasis Chambers of Bash'ir##10974 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Mog'dorg the Wizened##22941
  turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Image of Commander Ameer##22919
  accept Purging the Chambers of Bash'ir##10975 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Image of Commander Ameer##22919
  accept The Mark of the Nexus-King##10976 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Mog'dorg the Wizened##22941
  accept Ogre Heaven##11009 |goto Blade's Edge Mountains 55.49,44.86
step
  kill Ethereal Scavenger##18309 |q 10975 |goto Mana-Tombs - Dungeon -1,-1
step
  note The Image of Commander Ameer at Bash'ir's Landing in the Blade's Edge Mountains wants you to bring him a Mark of the Nexus-King.
  get The Mark of the Nexus-King |q 10976 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Image of Commander Ameer##22919
  turnin Purging the Chambers of Bash'ir##10975 |goto Blade's Edge Mountains 52.85,14.99
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
  talk Kronk##23253
  accept Banish the Demons##11026 |goto Blade's Edge Mountains 28.9,57.92
step
  talk Skyguard Khatie##23335
  accept Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
step
  note Chu'a'lor has tasked you with gathering 5 Apexis Shards. Bring them to him at Ogri'la atop the Blade's Edge Mountains.
  kill Hemathion##18692 |q 11025 |goto Blade's Edge Mountains 31.1,71.08
step
  note Kronk has asked you to use the Banishing Crystal to banish 15 demons at Forge Camp: Wrath or Forge Camp: Terror atop the Blade's Edge Mountains. Return it to him once you have done so.
  get Banish the Demons |q 11026 |goto Blade's Edge Mountains 28.9,57.92
step
  note Skyguard Khatie has asked you to wrangle 5 Aether Rays. After you have done so, return them to her at the Skyguard Outpost atop the Blade's Edge Mountains.
  kill Wrangled Aether Ray##23343 |q 11065
step
  talk Image of Commander Ameer##22919
  turnin Stasis Chambers of the Mana-Tombs##10977 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Chu'a'lor##23233
  turnin The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Kronk##23253
  turnin Banish the Demons##11026 |goto Blade's Edge Mountains 28.9,57.92
step
  talk Skyguard Khatie##23335
  turnin Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Image of Commander Ameer##22919
  accept Nexus-Prince Shaffar's Personal Chamber##10981 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Kronk##23253
  accept Banish More Demons##11051 |goto Blade's Edge Mountains 28.9,57.92
step
  talk Chu'a'lor##23233
  accept An Apexis Relic##11058 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Gahk##23300
  accept A Crystalforged Darkrune##11060 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Skyguard Khatie##23335
  accept Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains 27.95,51.45
step
  get Nexus-Prince Shaffar's Personal Chamber |q 10981 |goto Blade's Edge Mountains 52.85,14.99
step
  note Kronk has asked you to use the Banishing Crystal to banish 15 demons at Forge Camp: Wrath or Forge Camp: Terror atop the Blade's Edge Mountains. Return it to him once you have done so.
  get Banish More Demons |q 11051 |goto Blade's Edge Mountains 28.9,57.92
step
  get A Crystalforged Darkrune |q 11060 |goto Blade's Edge Mountains 28.48,58.08
step
  note Skyguard Khatie has asked you to wrangle 5 Aether Rays. After you have done so, return them to her at the Skyguard Outpost atop the Blade's Edge Mountains.
  kill Wrangled Aether Ray##23343 |q 11066
step
  talk Image of Commander Ameer##22919
  turnin Nexus-Prince Shaffar's Personal Chamber##10981 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Kronk##23253
  turnin Banish More Demons##11051 |goto Blade's Edge Mountains 28.9,57.92
step
  talk Chu'a'lor##23233
  turnin An Apexis Relic##11058 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Gahk##23300
  turnin A Crystalforged Darkrune##11060 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Skyguard Khatie##23335
  turnin Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Gahk##23300
  accept Yous Have Da Darkrune?##11027 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Chu'a'lor##23233
  accept The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.76,57.36
step
  get Yous Have Da Darkrune? |q 11027 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Gahk##23300
  turnin Yous Have Da Darkrune?##11027 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Chu'a'lor##23233
  turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.76,57.36
]])
