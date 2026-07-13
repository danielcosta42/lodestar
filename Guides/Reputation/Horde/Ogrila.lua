-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Ogri'la", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
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
  note Retrieve Maggoc's Treasure Chest and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Maggoc##20600 |q 10996 |goto Blade's Edge Mountains 58.59,60.8 |elite
step
  note Retrieve Slaag's Standard and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Slaag##22199 |q 10997 |goto Terokkar Forest 20.17,18.1 |elite
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
  talk Mog'dorg the Wizened##22941
  accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  note Retrieve Grulloc's Dragon Skull and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Grulloc##20216 |q 10995 |goto Blade's Edge Mountains 60.92,47.61 |elite
step
  talk Mog'dorg the Wizened##22941
  turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  note You must retrieve Vim'gol's Vile Grimoire. Deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  get Grim(oire) Business |q 10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  note Retrieve Skulloc's Soul and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  get Into the Soulgrinder |q 11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Ogre Heaven##11009 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Bladespire Supplicant##23053
  accept Speak with Mog'dorg##11022
step
  talk Chu'a'lor##23233
  turnin Ogre Heaven##11009 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Mog'dorg the Wizened##22941
  turnin Speak with Mog'dorg##11022 |goto Blade's Edge Mountains 55.49,44.86
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
  talk Chu'a'lor##23233
  accept A Special Thank You##11091 |goto Blade's Edge Mountains 28.76,57.36
step
  note Chu'a'lor has tasked you with gathering 5 Apexis Shards. Bring them to him at Ogri'la atop the Blade's Edge Mountains.
  kill Abyssal Flamebringer##19973 |q 11025 |goto Blade's Edge Mountains 28.84,81.09
step
  note Kronk has asked you to use the Banishing Crystal to banish 15 demons at Forge Camp: Wrath or Forge Camp: Terror atop the Blade's Edge Mountains. Return it to him once you have done so.
  get Banish the Demons |q 11026 |goto Blade's Edge Mountains 28.9,57.92
step
  note Skyguard Khatie has asked you to wrangle 5 Aether Rays. After you have done so, return them to her at the Skyguard Outpost atop the Blade's Edge Mountains.
  kill Wrangled Aether Ray##23343 |q 11065
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
  talk Jho'nass##23428
  turnin A Special Thank You##11091 |goto Blade's Edge Mountains 28.06,58.73
step
  talk Torkus##23316
  accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
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
  note Torkus has asked you to obtain an Unstable Flask of the Beast for him. Return with it to him at Ogri'la atop the Blade's Edge Mountains.
  get Our Boy Wants To Be A Skyguard Ranger |q 11030 |goto Blade's Edge Mountains 28.38,57.64
step
  note Kronk has asked you to use the Banishing Crystal to banish 15 demons at Forge Camp: Wrath or Forge Camp: Terror atop the Blade's Edge Mountains. Return it to him once you have done so.
  get Banish More Demons |q 11051 |goto Blade's Edge Mountains 28.9,57.92
step
  get A Crystalforged Darkrune |q 11060 |goto Blade's Edge Mountains 28.48,58.08
step
  note Skyguard Khatie has asked you to wrangle 5 Aether Rays. After you have done so, return them to her at the Skyguard Outpost atop the Blade's Edge Mountains.
  kill Wrangled Aether Ray##23343 |q 11066
step
  talk Torkus##23316
  turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
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
  talk Torkus##23316
  accept A Father's Duty##11061 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Chu'a'lor##23233
  accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Chu'a'lor##23233
  accept The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.76,57.36
step
  get Yous Have Da Darkrune? |q 11027 |goto Blade's Edge Mountains 28.48,58.08
step
  note Torkus has asked you to obtain an Unstable Flask of the Sorcerer for him. Return with it to him at Ogri'la atop the Blade's Edge Mountains.
  get A Father's Duty |q 11061 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Gahk##23300
  turnin Yous Have Da Darkrune?##11027 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Torkus##23316
  turnin A Father's Duty##11061 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Sky Commander Keller##23334
  turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains 27.38,52.68
step
  talk Chu'a'lor##23233
  turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11010 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Chu'a'lor##23233
  accept Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Gahk##23300
  accept A Fel Whip For Gahk##11079 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
step
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bombing Run |q 11010 |goto Blade's Edge Mountains 27.56,52.9
step
  note Chu'a'lor has asked you to obtain an Apexis Guardian's Head for him as proof. Return with it to him at Ogri'la atop the Blade's Edge Mountains once you have done so.
  get Guardian of the Monument |q 11059 |goto Blade's Edge Mountains 28.76,57.36
step
  note Gahk has asked you to acquire a Fel Whip. Bring it to him at Ogri'la atop the Blade's Edge Mountains.
  get A Fel Whip For Gahk |q 11079 |goto Blade's Edge Mountains 28.48,58.08
step
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bombing Run |q 11102 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11010 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Chu'a'lor##23233
  turnin Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Gahk##23300
  turnin A Fel Whip For Gahk##11079 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Sky Sergeant Vanderlip##23120
  accept Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.56,52.9
step
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bomb Them Again! |q 11023 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Sky Sergeant Vanderlip##23120
  turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.56,52.9
]])
